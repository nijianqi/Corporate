<?php

namespace app\company\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 招聘管理控制器
 * Created by PhpStorm.
 * User: admin
 * Date: 2018/4/18
 * Time: 16:00
 */

class Work extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'CompanyWork';

    /**
     * 招聘列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        $this->title = '招聘管理';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['title'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('create_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->where(['is_deleted' => '0'])->order('create_at','asc'));
    }

    /**
     * 招聘添加
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function add()
    {
        $data['create_by'] = session('user.username');
        return $this->_form($this->table, 'form','','',$data);
    }

    /**
     * 招聘编辑
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function edit()
    {
        $data['create_by'] = session('user.username');
        return $this->_form($this->table, 'form','','',$data);
    }

    /**
     * 表单数据默认处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function _form_filter(&$data)
    {
        if ($this->request->isPost()) {
            if (isset($data['id'])) {
                unset($data['title']);
            } elseif (Db::name($this->table)->where(['title' => $data['title'],'is_deleted'=>'0'])->count() > 0) {
                $this->error('招聘标题已经存在，请使用其它招聘标题！');
            }
        }
    }

    /**
     * 删除招聘
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止删除！');
        }
        if (DataService::update($this->table)) {
            $this->success("招聘信息删除成功！", '');
        }
        $this->error("招聘信息删除失败，请稍候再试！");
    }

}
