<?php

namespace app\company\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 产品管理控制器
 * Created by PhpStorm.
 * User: admin
 * Date: 2018/4/18
 * Time: 16:00
 */

class Project extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'CompanyProject';

    /**
     * 产品列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        $this->title = '产品列表';
        $get = $this->request->get();
        $db = Db::name($this->table)
            ->alias('a')
            ->join('company_project b','b.id = a.type_id and b.is_deleted = 0','left')
            ->where(['a.is_deleted' => '0'])
            ->field('a.*,b.title as type_title');
        foreach (['title'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike('a.title', "%{$get[$key]}%");
        }
        if (isset($get['tag']) && $get['tag'] !== '') {
            $db->where(['a.type_id' => $get['tag']]);
        }
        if (isset($get['create_at']) && $get['create_at'] !== '') {
            list($start, $end) = explode(' - ', $get['create_at']);
            $db->whereBetween('a.create_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->where(['a.is_deleted' => '0'])->order('a.create_at','asc'));
    }


    /**
     * 文章列表数据处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _index_data_filter(&$data)
    {
        $tags = Db::name('company_project_type')->where(['is_deleted' => '0'])->column('id,title');
        $this->assign('tags', $tags);
    }


    /**
     * 产品添加
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
     * 产品编辑
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
                $this->error('产品账号已经存在，请使用其它账号！');
            }
        }else{
            $types = Db::name('company_project_type')->where(['is_deleted' => '0'])->order('sort asc,id asc')->select();
            $this->assign('types',$types);
        }
    }

    /**
     * 删除产品
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止删除！');
        }
        if (DataService::update($this->table)) {
            $this->success("产品删除成功！", '');
        }
        $this->error("产品删除失败，请稍候再试！");
    }

}
