<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 2018/4/18
 * Time: 16:00
 */

namespace app\company\controller;

use controller\BasicAdmin;
use service\LogService;

class Info extends BasicAdmin
{

    /**
     * 当前默认数据模型
     * @var string
     */
    public $table = 'CompanyInfo';

    /**
     * 当前页面标题
     * @var string
     */
    public $title = '公司信息管理';

    /**
     * 显示公司信息配置
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function index()
    {
        if ($this->request->isGet()) {
            return $this->fetch('', ['title' => $this->title]);
        }
        if ($this->request->isPost()) {
            foreach ($this->request->post() as $key => $vo) {
                comconf($key, $vo);
            }
            LogService::write('企业管理', '公司信息配置成功');
            $this->success('公司信息配置成功！', '');
        }
    }
}