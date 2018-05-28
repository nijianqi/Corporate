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
        $nav_list = Db::table('company_nav')->where('is_deleted','0')->order('sort asc')->select();
        $this->assign('nav_list', $nav_list);
    }

    public function index()
    {
        $slide_list = Db::table('company_slides')->where('is_deleted','0')->order('sort asc')->select(); //幻灯片
        $new_list = Db::table('company_news')   //大事记
            ->alias('a')
            ->join('company_news_article b','a.article_id = b.id','left')
            ->join('company_news_nav c','b.nav_id = c.id','left')
            ->where('a.is_deleted','0')
            ->field('a.id,b.title,b.local_url,a.create_at,b.digest,b.nav_id,c.title as nav_title,c.title_en as nav_title_en')
            ->order('a.create_at asc')
            ->select();
        $partner_list = Db::table('company_partner')->where('is_deleted','0')->order('create_at asc')->select(); //合作伙伴
        $new_nav = Db::table('company_news_nav')->where('is_deleted','0')->order('create_at asc')->select();
        $data = [];
        foreach ($new_nav as $value){
            foreach ($new_list as $val){
                if($value['id'] == $val['nav_id']){
                    $data[$value['title']][] = $val;
                }
            }
        }
        $this->assign('slide_list', $slide_list);
        $this->assign('new_list', $new_list);
        $this->assign('partner_list', $partner_list);
        $this->assign('data_list', $data);
        return $this->fetch('/index');
    }

    public function contact_us()
    {
        return $this->fetch('/contact-us');
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
        $new_nav= Db::table('company_news_nav')->where('is_deleted','0')->order('create_at asc')->select();
        $this->assign('new_nav', $new_nav);
        return $this->fetch('/news');
    }

    public function info($id)
    {
        $new_info = Db::table('company_news')   //大事记
        ->alias('a')
            ->join('company_news_article b','a.article_id = b.id','left')
            ->where(['a.id'=>$id,'a.is_deleted'=>'0'])
            ->field('a.*,b.*')
            ->order('a.create_at asc')
            ->find();
        if (empty($new_info)){
            $this->error('新闻不存在');
        }
        $new_list = Db::table('company_news')   //大事记
        ->alias('a')
        ->join('company_news_article b','a.article_id = b.id','left')
        ->where('a.is_deleted','0')
        ->field('a.id,b.title,b.local_url,a.create_at,b.digest,b.nav_id')
        ->order('a.create_at asc')
        ->select();
        $this->assign('new_list', $new_list);
        $this->assign('new_info', $new_info);
        return $this->fetch('/news-info');
    }

}
