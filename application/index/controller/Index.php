<?php

namespace app\index\controller;

use think\Controller;
use think\Db;

/**
 * 应用入口控制器
 * @author Anyon <nijianqi@qq.com>
 */
class Index extends Controller
{

    public function initialize()
    {
        $nav_list = Db::table('company_nav')->order('sort asc')->select();
        $this->assign('nav_list', $nav_list);
    }

    public function index()
    {
        $slide_list = Db::table('company_slides')->order('sort asc')->select();
        $this->assign('slide_list', $slide_list);
        return $this->fetch('/index');
    }

    public function contact_us()
    {
        return $this->fetch('/contact-us');
    }

    public function bestsuppliers()
    {
        return $this->fetch('/bestsuppliers');
    }

    public function about_us()
    {
        return $this->fetch('/about-us');
    }

    public function join_us()
    {
        return $this->fetch('/join-us');
    }

    public function news()
    {
        return $this->fetch('/news');
    }

    public function news_info($id)
    {
        return $this->fetch('/news-info');
    }

}
