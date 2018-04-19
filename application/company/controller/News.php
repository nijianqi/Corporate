<?php

namespace app\company\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 新闻管理控制器
 * Created by PhpStorm.
 * User: admin
 * Date: 2018/4/18
 * Time: 16:00
 */

class News extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'CompanyNews';

    /**
     * 新闻列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        $this->title = '新闻列表';
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        return parent::_list($db->order('id desc'));
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
        foreach ($data as &$vo) {
            $vo = $this->getNewsById($vo['id']);
        }
    }

    /**
     * 文章选择器
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function select()
    {
        return $this->index();
    }

    /**
     * 文章列表数据处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _select_data_filter(&$data)
    {
        foreach ($data as &$vo) {
            $vo = $this->getNewsById($vo['id']);
        }
    }

    /**
     * 添加文章
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        if ($this->request->isGet()) {
            return $this->fetch('form', ['title' => '新建文章']);
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            if (($ids = $this->_apply_news_article($data['data'])) && !empty($ids)) {
                $post = ['article_id' => $ids, 'create_by' => session('user.username')];
                if (DataService::save($this->table, $post, 'id') !== false) {
                    $url = url('@admin') . '#' . url('@company/news/index') . '?spm=' . $this->request->get('spm');
                    $this->success('文章添加成功！', $url);
                }
            }
            $this->error('文章添加失败，请稍候再试！');
        }
    }

    /**
     * 编辑文章
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $id = $this->request->get('id', '');
        if ($this->request->isGet()) {
            empty($id) && $this->error('参数错误，请稍候再试！');
            return $this->fetch('form', ['title' => '编辑文章', 'vo' => $this->getNewsById($id)]);
        }
        $data = $this->request->post();
        $ids = $this->_apply_news_article($data['data']);
        if (!empty($ids)) {
            $post = ['id' => $id, 'article_id' => $ids, 'create_by' => session('user.id')];
            if (false !== DataService::save('company_news', $post, 'id')) {
                $url = url('@admin') . '#' . url('@company/news/index') . '?spm=' . $this->request->get('spm');
                $this->success('文章更新成功!', $url);
            }
        }
        $this->error('文章更新失败，请稍候再试！');
    }

    /**
     * 文章更新操作
     * @param array $data
     * @param array $ids
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    protected function _apply_news_article($data, $ids = [])
    {
        foreach ($data as &$vo) {
            $vo['create_by'] = session('user.id');
            $vo['create_at'] = date('Y-m-d H:i:s');
            if (empty($vo['digest'])) {
                $vo['digest'] = mb_substr(strip_tags(str_replace(["\s", '　'], '', $vo['content'])), 0, 120);
            }
            if (empty($vo['id'])) {
                $result = $id = Db::name('WechatNewsArticle')->insertGetId($vo);
            } else {
                $id = intval($vo['id']);
                $result = Db::name('WechatNewsArticle')->where('id', $id)->update($vo);
            }
            if ($result !== false) {
                $ids[] = $id;
            }
        }
        return join(',', $ids);
    }

    /**
     * 删除新闻
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止删除！');
        }
        if (DataService::update($this->table)) {
            $this->success("新闻删除成功！", '');
        }
        $this->error("新闻删除失败，请稍候再试！");
    }

    public static function getNewsById($id, $where = [])
    {
        $data = Db::name('CompanyNews')->where(['id' => $id])->where($where)->find();
        $article_ids = explode(',', $data['article_id']);
        $articles = Db::name('CompanyNewsArticle')->whereIn('id', $article_ids)->select();
        $data['articles'] = [];
        foreach ($article_ids as $article_id) {
            foreach ($articles as $article) {
                if (intval($article['id']) === intval($article_id)) {
                    unset($article['create_by'], $article['create_at']);
                    $data['articles'][] = $article;
                }
            }
        }
        return $data;
    }
}
