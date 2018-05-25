-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-25 08:39:40
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business-template`
--

-- --------------------------------------------------------

--
-- 表的结构 `company_address`
--

CREATE TABLE `company_address` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `map_url` varchar(255) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `company_album`
--

CREATE TABLE `company_album` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) DEFAULT '0',
  `sort` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_album`
--

INSERT INTO `company_album` (`id`, `title`, `img_url`, `create_by`, `create_at`, `is_deleted`, `sort`) VALUES
(1, '公司正面', 'http://company.znmya.com:8080/static/upload/cec6a0aa758bf704/161aab739b019adb.jpg', 'admin', '2018-04-19 02:24:11', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_info`
--

INSERT INTO `company_info` (`id`, `name`, `value`) VALUES
(1, 'email', 'rc@kingwaytrades.com'),
(2, 'phone', '400-800-1085'),
(3, 'wechat_img', 'http://company.znmya.com:8080/static/upload/f9aa506cee2acc52/76788b8fc14455bf.jpg'),
(4, 'weibo', 'https://weibo.com/bestsuppliers'),
(5, 'kewords', '百佳荟,中国外贸家,外贸B2B平台,外贸平台,外贸网站'),
(6, 'description', '中国外贸家着力打造外贸B2B领域全新模式的平台，以卓越的市场前瞻力和技术创新力推动中国互联网产业的发展，{:sysconf(\'site_name\')}目前已经打造并且投入运营重点项目“中国外贸家”平台.中国外贸家是以三位一体的全球贸易B2B交易服务平台,跟着中国外贸家,简单做外贸.'),
(7, 'title', '中国外贸家是外贸B2B交易服务平台-中国外贸家官网是外贸B2B全新模式');

-- --------------------------------------------------------

--
-- 表的结构 `company_job`
--

CREATE TABLE `company_job` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `work_type` varchar(20) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `contacts` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telphone` int(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `work_content` longtext,
  `qualifications` longtext,
  `email` varchar(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `sort` int(20) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `company_message`
--

CREATE TABLE `company_message` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `company_nav`
--

CREATE TABLE `company_nav` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(20) NOT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_nav`
--

INSERT INTO `company_nav` (`id`, `title`, `url`, `target`, `create_by`, `create_at`, `sort`, `is_deleted`) VALUES
(1, '中国外贸家', 'bestsuppliers.html', '_self', '0', '2018-04-19 01:32:40', 1, 0),
(2, '关于我们', 'about-us.html', '_self', '0', '2018-04-19 01:32:41', 2, 0),
(3, '新闻资讯', 'news.html', '_self', '0', '2018-04-19 01:32:41', 3, 0),
(4, '诚聘英才', 'join-us.html', '_self', '0', '2018-04-19 01:32:42', 4, 0),
(5, '联系我们', 'contact-us.html', '_self', '0', '2018-04-19 01:32:44', 5, 0),
(6, '测试', '#', '_bank', 'admin', '2018-04-19 01:45:39', 6, 1),
(7, '测试', '#', '_bank', 'admin', '2018-04-19 01:47:33', 6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `company_news`
--

CREATE TABLE `company_news` (
  `id` int(20) NOT NULL,
  `local_url` varchar(255) DEFAULT NULL,
  `article_id` varchar(60) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  `nav_id` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_news`
--

INSERT INTO `company_news` (`id`, `local_url`, `article_id`, `is_deleted`, `create_at`, `create_by`, `nav_id`) VALUES
(4, NULL, '4', 0, '2018-05-25 07:37:26', '10000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `company_news_article`
--

CREATE TABLE `company_news_article` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` longtext,
  `local_url` varchar(300) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(20) DEFAULT NULL,
  `show_cover_pic` tinyint(4) DEFAULT NULL,
  `digest` varchar(300) DEFAULT NULL,
  `content_source_url` varchar(255) DEFAULT NULL,
  `nav_id` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_news_article`
--

INSERT INTO `company_news_article` (`id`, `title`, `content`, `local_url`, `create_by`, `create_at`, `author`, `show_cover_pic`, `digest`, `content_source_url`, `nav_id`) VALUES
(4, '中国外贸家新员工拓展训练，增强同事团队合作意识', '<p><img alt="中国外贸家集体图片1.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg" /></p>\n\n<p>在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="先锋队集体照.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg" /><img alt="赤焰队集体照.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>大家纷纷喊着各自队伍的口号，以饱满的热情投入到了接下来的活动中。</p>\n\n<p>拓展训练共举行了破冰组建、激情节拍、鼓动人心、有轨电车、呼吸的力量和孤岛求生多个项目。</p>\n\n<p>破冰组建这个项目是打破人与人之间的间隔和拘谨，改变同事的常规心态和惯性思维，释放同事内向的激情，创造同事融入情景的集体氛围，从而提高同事对项目体验的积极心态和参与度。</p>\n\n<p>激情节拍是拓展训练比较有魅力的项目，它让先锋队和赤焰队的同事瞬间进入团队氛围，激发热情，协调一致，快速的完成任务。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="激情节拍.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg" /><img alt="赤焰队激情节拍.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg" /></p>\n\n<p>半天的拓展活动在不知不觉中很快就过去了，大家似乎意犹未尽，当教练问起大家：今天最大的感受是什么时，大家异口同声的回答道：我们是最优秀的团队！</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="鼓动人心.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg" /><img alt="鼓动人心1.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　活动结束后，大家欢聚一堂，有说有笑，团结一致，这是一个极为优秀的外贸团队，该克服了各种困难与挑战，创造了一个又一个奇迹。</p>\n\n<p>经过之前的拓展训练，大家纷纷意识到了团队合作的重要性，彼此的心更加贴近，感情也更加深厚，纷纷敞开心门，畅所欲言，讲述自己的过往，倾听同伴的心声，现场的气氛也越来越融洽。</p>\n\n<p><img alt="放松.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;拓展培训是养团队意识、团队合作等，正是这一次的拓展训练，使我受益匪浅，终生难忘。体会最深的有以下几点：</p>\n\n<p>　　一、明确责任，落实分工极其重要。每个人的岗位职责确定之后，各司其职，有利于明确责任，发挥个体的主观能动性，使其既知道自己应该做什么，又思考怎样做好。在做集体拓展项目时，每个人开始尚能听着队长安排，但后来有些混乱。因此，在具体工作中，我们要明确分工、落实责任，坚决杜绝&ldquo;政出多门&rdquo;和&ldquo;首尾失顾&rdquo;的现象。</p>\n\n<p>　　二、做事要先做计划，再开展行动。在做活动项目时，大家并没有先急于去做，而是每个人先找好自己的位置和思考自己的要做的事情，事实充分论证，项目一举通过。所以，在现实工作中，我们做任何事情，都需要有一个明确的目标，只有明确了前进的方向和最终需要达到的结果，才能确定过程中所要采取的方法与步骤。所以，只有规划好全局的目标和方向，我们才会事半功倍。</p>\n\n<p>　　三、应学会遇到问题换位思考。在工作中，我们要看到差异、容纳差异、协调差异、利用差异，在差异中取长补短，不要为表面的现象所困扰，有些印象其实是主观的臆想，需要你的耐心和智慧，通过分析、判断，充分了解它的本质，通过组织、协调达到目标，通过沟通交流，才能建立多赢的局面。</p>\n\n<p>　　四、知识和技能还只是有形的资本，意志和精神则是无形的力量。拓展训练的项目对人的体能的要求并不高，更多的则是对心理的挑战。因此有人形象地称它是&ldquo;小游戏、大道理&rdquo;。更确切地说，拓展是一种感悟和体验，是一种考验人的意志和智慧、挖掘人的潜能和培养团队协作精神的运动。它的每一项让每个人在心灵和精神上都有一个新的超越，重新认识自我、认识生命的活动。在拓展训练中，使我懂得应该怎样在逆境中求生存，更使我明白了一个人的能力有限，意志和精神的力量是无限的。</p>\n\n<p>五、团队需要核心和灵魂。没有灵魂的团队，就像盘散沙，不可想象。几个集体项目如果没有人指挥，没有简单的谋划，没有人付出和奉献，在有限的时间里将如何去完成？工作中又何尝不是如此呢？团队不仅仅是几个人，几十个人，甚至几百个人，几千个人站在一起就能称为团队，而且在团队中还需要成员之间的团结，协作和默契，相互的信任等一系列诸多因素的集合，才能称为团队。　　</p>\n\n<p>六、相互信任是团队建设的基石，离开信任的团队是松散的团队，是毫无战斗力的团队，建立一支相互信任的团队，比任何激励都重要。在&ldquo;呼吸的力量&rdquo;项目中，</p>\n\n<p><img alt="呼吸的力量.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>最能证明这一点，每个人沟通，信任的执行，配合好才能完成任务。</p>\n\n<p>七、学会沟通和理解。语言的沟通胜过任何肢体的表达。日常生活和工作中，我们需要沟通和理解，也需要相互配合和协调，只有形成力量的整合才能完成共同的任务。在工作中，我们面对各种问题与事情时，若能及时沟通，减少隔阂，减少矛盾，多些理解，多些支持，就会避免诸多不必要的麻烦。</p>\n\n<p><img alt="知识总结.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>八、懂得摆正自己的位置。在团队中既要发挥自己的长处与智慧，同时也要懂得自己优缺点。其身不正，无以自立。因此，在日常工作与学习中，我们要摆正自己的位置，不要提早给自己设限，也不要给自己戴高帽，我们要善于正视自己，摆正位置，善于挖掘自身潜力，善于脚踏实地、实实在在地做好本职工作。 拓展训练虽然结束了，但在训练中我们营造了团队氛围，培养了团队意识，同时挑战了自己。这次拓展训练让我时刻提醒自己，要相信自己，时时保持积极进取的人生态度和团队合作精神！</p>\n\n<p><img alt="中国外贸家集体图片.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　在今后工作中，我们要把拓展训练中的经验运用到实际工作中去，用拓展了的心灵、激情和意志重新面对崭新的每一天，面对每一项工作任务，我们要做的更好，一方面会根据全球采购商的需求挖掘和整合最佳的中国供应商资源，利用互联网+帮助全球采购商找到中国最佳供应商，采购到优质的中国制造产品;另一方面依靠专业的海外推广能力和外贸服务能力，解决中国制造企业海外推广难和外贸交易难的问题，帮助中国制造企业将优质产品销往全球，拓展海外市场。</p>\n\n<p>&ldquo;中国外贸家&ldquo;以&rdquo;让天下没有做不成的生意&ldquo;为使命，让中国制造企业更简单高效地参与全球采购，直达目标市场。</p>', 'http://company.znmya.com:8080/static/upload/2705b40fe19aff5d/0059158e093814e8.jpg', '10000', '2018-05-25 07:51:02', '中国外贸家', 1, '在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快“先锋队”队和“赤焰队”队就诞生了，\n\n&nbsp;\n\n\n\n&nbsp;', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `company_news_nav`
--

CREATE TABLE `company_news_nav` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sort` int(20) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_news_nav`
--

INSERT INTO `company_news_nav` (`id`, `title`, `sort`, `create_by`, `create_at`, `is_deleted`) VALUES
(1, '公司新闻', 1, '', '2018-04-19 02:10:22', 0),
(2, '电商资讯', 2, NULL, '2018-04-19 02:10:24', 0),
(3, '财经资讯', 3, NULL, '2018-04-19 02:10:26', 0);

-- --------------------------------------------------------

--
-- 表的结构 `company_partner`
--

CREATE TABLE `company_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `img_url` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `company_slides`
--

CREATE TABLE `company_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) NOT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `company_slides`
--

INSERT INTO `company_slides` (`id`, `title`, `img_url`, `url`, `target`, `create_by`, `create_at`, `sort`, `is_deleted`) VALUES
(1, '中国外贸家', 'uploads/obo/20171218/a447a08213e3e4e51cf5124b3f8ff087.jpg', 'bestsuppliers.html', '_blank', '0', '2018-04-18 06:50:58', 1, 0),
(2, '加入我们', 'uploads/obo/20180122/a2249073dee226a3bb6d3baf6a8bf787.jpg', 'join-us.html', '_blank', '0', '2018-04-18 06:50:59', 2, 0),
(3, '关于我们', 'uploads/obo/20180122/4a266476202629c0b0de6345edbb9d01.png.jpeg', 'about-us.html', '_blank', '0', '2018-04-18 06:51:01', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `system_auth`
--

CREATE TABLE `system_auth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) UNSIGNED DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) UNSIGNED DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- --------------------------------------------------------

--
-- 表的结构 `system_auth_node`
--

CREATE TABLE `system_auth_node` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth` bigint(20) UNSIGNED DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与节点绑定';

-- --------------------------------------------------------

--
-- 表的结构 `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数配置' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `system_config`
--

INSERT INTO `system_config` (`id`, `name`, `value`) VALUES
(1, 'app_name', 'Business-template'),
(2, 'site_name', '百佳荟'),
(3, 'app_version', '1.0 dev'),
(4, 'site_copy', 'Copyright ©2017'),
(5, 'browser_icon', 'http://company.znmya.com:8080/static/upload/3889e4b0acd782f9/70c6272e89529d77.ico'),
(6, 'tongji_baidu_key', ''),
(7, 'miitbeian', '浙ICP备17052780号-2'),
(8, 'storage_type', 'local'),
(9, 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4,ico'),
(10, 'storage_qiniu_bucket', ''),
(11, 'storage_qiniu_domain', ''),
(12, 'storage_qiniu_access_key', ''),
(13, 'storage_qiniu_secret_key', ''),
(14, 'storage_oss_bucket', 'cuci'),
(15, 'storage_oss_endpoint', 'oss-cn-beijing.aliyuncs.com'),
(16, 'storage_oss_domain', 'cuci.oss-cn-beijing.aliyuncs.com'),
(17, 'storage_oss_keyid', '用你自己的吧'),
(18, 'storage_oss_secret', '用你自己的吧'),
(34, 'wechat_appid', 'wx60a43dd8161666d4'),
(35, 'wechat_appkey', '9890a0d7c91801a609d151099e95b61a'),
(36, 'storage_oss_is_https', 'http'),
(37, 'wechat_type', 'api'),
(38, 'wechat_token', 'test'),
(39, 'wechat_appsecret', 'a041bec98ed015d52b99acea5c6a16ef'),
(40, 'wechat_encodingaeskey', 'BJIUzE0gqlWy0GxfPp4J1oPTBmOrNDIGPNav1YFH5Z5'),
(41, 'wechat_thr_appid', 'wx60a43dd8161666d4'),
(42, 'wechat_thr_appkey', '05db2aa335382c66ab56d69b1a9ad0ee'),
(43, 'Title', '中国外贸家是外贸B2B交易服务平台-中国外贸家官网是外贸B2B全新模式'),
(44, 'kewords', '百佳荟,中国外贸家,外贸B2B平台,外贸平台,外贸网站'),
(45, 'description', '中国外贸家着力打造外贸B2B领域全新模式的平台，以卓越的市场前瞻力和技术创新力推动中国互联网产业的发展，{:sysconf(\'site_name\')}目前已经打造并且投入运营重点项目“中国外贸家”平台.中国外贸家是以三位一体的全球贸易B2B交易服务平台,跟着中国外贸家,简单做外贸.'),
(46, 'email', 'rc@kingwaytrades.com'),
(47, 'wechat_img', ''),
(48, 'phone', '400-800-1085'),
(49, 'weibo', '101111');

-- --------------------------------------------------------

--
-- 表的结构 `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

--
-- 转存表中的数据 `system_log`
--

INSERT INTO `system_log` (`id`, `ip`, `node`, `username`, `action`, `content`, `create_at`) VALUES
(1, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-08 08:22:42'),
(2, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 08:26:13'),
(3, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 08:26:26'),
(4, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 08:26:53'),
(5, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-18 00:53:37'),
(6, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-18 01:33:21'),
(7, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:34:10'),
(8, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:36:49'),
(9, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:37:10'),
(10, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:39:58'),
(11, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:41:24'),
(12, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:41:52'),
(13, '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:42:49'),
(14, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 01:43:03'),
(15, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:14:09'),
(16, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:15:20'),
(17, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:16:01'),
(18, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:16:29'),
(19, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:17:03'),
(20, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:17:16'),
(21, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:17:39'),
(22, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:17:51'),
(23, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:17:54'),
(24, '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 08:19:28'),
(25, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-19 01:00:08'),
(26, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-23 03:05:30'),
(27, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-08 00:38:51'),
(28, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-10 01:59:51'),
(29, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-23 10:54:10'),
(30, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-25 06:32:44'),
(31, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-25 07:17:10');

-- --------------------------------------------------------

--
-- 表的结构 `system_menu`
--

CREATE TABLE `system_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) UNSIGNED DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

--
-- 转存表中的数据 `system_menu`
--

INSERT INTO `system_menu` (`id`, `pid`, `title`, `node`, `icon`, `url`, `params`, `target`, `sort`, `status`, `create_by`, `create_at`) VALUES
(1, 0, '系统设置', '', '', '#', '', '_self', 9000, 1, 10000, '2018-01-19 07:27:00'),
(2, 10, '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', 10, 1, 10000, '2018-01-19 07:27:17'),
(3, 10, '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', 20, 1, 10000, '2018-01-19 07:27:57'),
(4, 11, '访问授权', '', 'fa fa-group', 'admin/auth/index', '', '_self', 20, 1, 10000, '2018-01-22 03:13:02'),
(5, 11, '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', 10, 1, 0, '2018-01-23 04:15:12'),
(6, 11, '访问节点', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', 30, 1, 0, '2018-01-23 04:36:54'),
(7, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 1000, 1, 0, '2018-01-23 05:42:30'),
(8, 16, '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', 10, 1, 0, '2018-01-24 05:52:58'),
(9, 10, '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', 30, 1, 0, '2018-01-25 02:54:28'),
(10, 1, '系统管理', '', 'fa fa-scribd', '#', '', '_self', 200, 1, 0, '2018-01-25 10:14:28'),
(11, 1, '访问权限', '', 'fa fa-anchor', '#', '', '_self', 300, 1, 0, '2018-01-25 10:15:08'),
(16, 1, '日志管理', '', 'fa fa-hashtag', '#', '', '_self', 400, 1, 0, '2018-02-10 08:31:15'),
(17, 0, '微信管理', '', '', '#', '', '_self', 8000, 1, 0, '2018-03-06 06:42:49'),
(18, 17, '公众号配置', '', 'fa fa-cogs', '#', '', '_self', 0, 1, 0, '2018-03-06 06:43:05'),
(19, 18, '微信授权绑定', '', 'fa fa-cog', 'wechat/config/index', '', '_self', 0, 1, 0, '2018-03-06 06:43:26'),
(20, 18, '关注默认回复', '', 'fa fa-comment-o', 'wechat/keys/subscribe', '', '_self', 0, 1, 0, '2018-03-06 06:44:45'),
(21, 18, '无反馈默认回复', '', 'fa fa-commenting', 'wechat/keys/defaults', '', '_self', 0, 1, 0, '2018-03-06 06:45:55'),
(22, 18, '微信关键字管理', '', 'fa fa-hashtag', 'wechat/keys/index', '', '_self', 0, 1, 0, '2018-03-06 06:46:23'),
(23, 17, '微信服务定制', '', 'fa fa-cubes', '#', '', '_self', 0, 1, 0, '2018-03-06 06:47:11'),
(24, 23, '微信菜单管理', '', 'fa fa-gg-circle', 'wechat/menu/index', '', '_self', 0, 1, 0, '2018-03-06 06:47:39'),
(25, 23, '微信图文管理', '', 'fa fa-map-o', 'wechat/news/index', '', '_self', 0, 1, 0, '2018-03-06 06:48:14'),
(26, 17, '微信粉丝管理', '', 'fa fa-user', '#', '', '_self', 0, 1, 0, '2018-03-06 06:48:33'),
(27, 26, '微信粉丝列表', '', 'fa fa-users', 'wechat/fans/index', '', '_self', 20, 1, 0, '2018-03-06 06:49:04'),
(28, 26, '微信黑名单管理', '', 'fa fa-user-times', 'wechat/block/index', '', '_self', 30, 1, 0, '2018-03-06 06:49:22'),
(29, 26, '微信标签管理', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', 10, 1, 0, '2018-03-06 06:49:39'),
(30, 0, '企业管理', '', '', '#', '', '_self', 10000, 1, 0, '2018-04-18 02:01:51'),
(35, 39, '导航管理', '', 'fa fa-fort-awesome', '/company/nav/index', '', '_self', 20, 1, 0, '2018-04-18 07:17:19'),
(36, 39, '新闻管理', '', 'fa fa-reddit-alien', '/company/news/index', '', '_self', 50, 1, 0, '2018-04-18 07:18:05'),
(38, 39, '栏目管理', '', 'fa fa-heart', '/company/news_nav/index', '', '_self', 40, 1, 0, '2018-04-18 07:19:40'),
(39, 30, '前台管理', '', 'fa fa-shopping-bag', '#', '', '_self', 0, 1, 0, '2018-04-18 07:20:35'),
(40, 39, '幻灯片管理', '', 'fa fa-archive', '/company/slides/index', '', '_self', 30, 1, 0, '2018-04-18 07:21:42'),
(41, 39, '相册管理', '', 'fa fa-asterisk', '/company/album/index', '', '_self', 60, 1, 0, '2018-04-18 07:24:35'),
(42, 39, '招聘管理', '', 'fa fa-automobile', '/company/work/index', '', '_self', 70, 1, 0, '2018-04-18 07:25:47'),
(43, 39, '留言管理', '', 'fa fa-bullhorn', '/company/message/index', '', '_self', 90, 1, 0, '2018-04-18 07:26:39'),
(44, 39, '地址管理', '', 'fa fa-product-hunt', '/company/address/index', '', '_self', 80, 1, 0, '2018-04-18 07:28:19'),
(45, 39, '网站管理', '', 'fa fa-codiepie', '/company/info/index', '', '_self', 10, 1, 0, '2018-04-18 07:29:52'),
(46, 39, '合作管理', '', 'fa fa-shopping-basket', '/company/cooperate/index', '', '_self', 100, 1, 0, '2018-04-18 07:57:11');

-- --------------------------------------------------------

--
-- 表的结构 `system_node`
--

CREATE TABLE `system_node` (
  `id` int(11) UNSIGNED NOT NULL,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统节点表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `system_node`
--

INSERT INTO `system_node` (`id`, `node`, `title`, `is_menu`, `is_auth`, `is_login`, `create_at`) VALUES
(1, 'admin', '系统管理', 0, 1, 1, '2018-01-23 04:39:13'),
(2, 'admin/auth', '权限管理', 0, 1, 1, '2018-01-23 04:39:14'),
(3, 'admin/auth/index', '权限列表', 1, 1, 1, '2018-01-23 04:39:14'),
(4, 'admin/auth/apply', '访问授权', 0, 1, 1, '2018-01-23 04:39:19'),
(5, 'admin/auth/add', '添加权限', 0, 1, 1, '2018-01-23 04:39:22'),
(6, 'admin/auth/edit', '编辑权限', 0, 1, 1, '2018-01-23 04:39:23'),
(7, 'admin/auth/forbid', '禁用权限', 0, 1, 1, '2018-01-23 04:39:23'),
(8, 'admin/auth/resume', '启用权限', 0, 1, 1, '2018-01-23 04:39:24'),
(9, 'admin/auth/del', '删除权限', 0, 1, 1, '2018-01-23 04:39:25'),
(10, 'admin/config/index', '系统参数', 1, 1, 1, '2018-01-23 04:39:25'),
(11, 'admin/config/file', '文件存储', 0, 1, 1, '2018-01-23 04:39:26'),
(13, 'admin/log/index', '日志记录', 1, 1, 1, '2018-01-23 04:39:28'),
(14, 'admin/log/sms', '短信记录', 0, 1, 1, '2018-01-23 04:39:29'),
(15, 'admin/log/del', '日志删除', 0, 1, 1, '2018-01-23 04:39:29'),
(16, 'admin/menu/index', '系统菜单列表', 1, 1, 1, '2018-01-23 04:39:31'),
(17, 'admin/menu/add', '添加系统菜单', 0, 1, 1, '2018-01-23 04:39:31'),
(18, 'admin/menu/edit', '编辑系统菜单', 0, 1, 1, '2018-01-23 04:39:32'),
(19, 'admin/menu/del', '删除系统菜单', 0, 1, 1, '2018-01-23 04:39:33'),
(20, 'admin/menu/forbid', '禁用系统菜单', 0, 1, 1, '2018-01-23 04:39:33'),
(21, 'admin/menu/resume', '启用系统菜单', 0, 1, 1, '2018-01-23 04:39:34'),
(22, 'admin/node/index', '系统节点列表', 1, 1, 1, '2018-01-23 04:39:36'),
(23, 'admin/node/save', '保存节点信息', 0, 1, 1, '2018-01-23 04:39:36'),
(24, 'admin/user/index', '系统用户列表', 1, 1, 1, '2018-01-23 04:39:37'),
(25, 'admin/user/auth', '用户授权操作', 0, 1, 1, '2018-01-23 04:39:38'),
(26, 'admin/user/add', '添加系统用户', 0, 1, 1, '2018-01-23 04:39:39'),
(27, 'admin/user/edit', '编辑系统用户', 0, 1, 1, '2018-01-23 04:39:39'),
(28, 'admin/user/pass', '修改用户密码', 0, 1, 1, '2018-01-23 04:39:40'),
(29, 'admin/user/del', '删除系统用户', 0, 1, 1, '2018-01-23 04:39:41'),
(30, 'admin/user/forbid', '禁用系统用户', 0, 1, 1, '2018-01-23 04:39:41'),
(31, 'admin/user/resume', '启用系统用户', 0, 1, 1, '2018-01-23 04:39:42'),
(32, 'admin/config', '系统配置', 0, 1, 1, '2018-01-23 05:34:37'),
(33, 'admin/log', '日志管理', 0, 1, 1, '2018-01-23 05:34:48'),
(34, 'admin/menu', '系统菜单管理', 0, 1, 1, '2018-01-23 05:34:58'),
(35, 'admin/node', '系统节点管理', 0, 1, 1, '2018-01-23 05:35:17'),
(36, 'admin/user', '系统用户管理', 0, 1, 1, '2018-01-23 05:35:26'),
(37, 'wechat', '微信管理', 0, 1, 1, '2018-02-06 03:53:21'),
(38, 'wechat/config', '公众号对接', 0, 1, 1, '2018-02-06 03:53:32'),
(39, 'wechat/config/index', '公众号对接', 1, 1, 1, '2018-02-06 03:53:32'),
(45, 'wechat/block', '黑名单', 0, 1, 1, '2018-03-06 06:37:37'),
(46, 'wechat/block/index', '黑名单列表', 1, 1, 1, '2018-03-06 06:37:47'),
(47, 'wechat/block/backdel', '移出黑名单', 0, 1, 1, '2018-03-06 06:37:49'),
(48, 'wechat/fans', '粉丝管理', 0, 1, 1, '2018-03-06 06:38:06'),
(49, 'wechat/fans/index', '粉丝列表', 1, 1, 1, '2018-03-06 06:38:25'),
(50, 'wechat/fans/backadd', '移入黑名单', 0, 1, 1, '2018-03-06 06:38:35'),
(51, 'wechat/fans/tagset', '标签设置', 0, 1, 1, '2018-03-06 06:38:36'),
(52, 'wechat/fans/tagadd', '添加标签', 0, 1, 1, '2018-03-06 06:38:37'),
(53, 'wechat/fans/tagdel', '删除标签', 0, 1, 1, '2018-03-06 06:38:38'),
(54, 'wechat/fans/sync', '同步粉丝', 0, 1, 1, '2018-03-06 06:38:38'),
(55, 'wechat/keys', '关键字管理', 0, 1, 1, '2018-03-06 06:39:21'),
(56, 'wechat/keys/index', '关键字列表', 1, 1, 1, '2018-03-06 06:39:25'),
(57, 'wechat/keys/add', '添加关键字', 0, 1, 1, '2018-03-06 06:39:27'),
(58, 'wechat/keys/edit', '编辑关键字', 0, 1, 1, '2018-03-06 06:39:28'),
(59, 'wechat/keys/del', '删除关键字', 0, 1, 1, '2018-03-06 06:39:42'),
(60, 'wechat/keys/forbid', '禁用关键字', 0, 1, 1, '2018-03-06 06:39:55'),
(61, 'wechat/keys/resume', '启用关键字', 0, 1, 1, '2018-03-06 06:40:01'),
(62, 'wechat/keys/subscribe', '关注默认回复', 1, 1, 1, '2018-03-06 06:40:12'),
(63, 'wechat/keys/defaults', '无反馈默认回复', 1, 1, 1, '2018-03-06 06:40:27'),
(64, 'wechat/menu', '微信菜单管理', 0, 1, 1, '2018-03-06 06:40:37'),
(65, 'wechat/menu/index', '微信菜单管理', 1, 1, 1, '2018-03-06 06:40:41'),
(66, 'wechat/menu/edit', '编辑发布菜单', 0, 1, 1, '2018-03-06 06:40:53'),
(67, 'wechat/menu/cancel', '取消发布菜单', 0, 1, 1, '2018-03-06 06:41:01'),
(68, 'wechat/news', '图文内容管理', 0, 1, 1, '2018-03-06 06:41:13'),
(69, 'wechat/news/index', '图文内容管理', 1, 1, 1, '2018-03-06 06:41:20'),
(70, 'wechat/news/select', '图文选择器', 0, 1, 1, '2018-03-06 06:41:22'),
(71, 'wechat/news/image', '图文选择器', 0, 1, 1, '2018-03-06 06:41:22'),
(72, 'wechat/news/add', '添加图文', 0, 1, 1, '2018-03-06 06:41:23'),
(73, 'wechat/news/del', '删除图文', 0, 1, 1, '2018-03-06 06:41:23'),
(74, 'wechat/news/push', '推荐图文', 0, 1, 1, '2018-03-06 06:41:24'),
(75, 'wechat/news/edit', '编辑图文', 0, 1, 1, '2018-03-06 06:41:25'),
(76, 'wechat/tags', '标签管理', 0, 1, 1, '2018-03-06 06:42:06'),
(77, 'wechat/tags/index', '标签列表', 1, 1, 1, '2018-03-06 06:42:09'),
(78, 'wechat/tags/add', '添加标签', 0, 1, 1, '2018-03-06 06:42:14'),
(79, 'wechat/tags/edit', '编辑标签', 0, 1, 1, '2018-03-06 06:42:17'),
(80, 'wechat/tags/del', '删除标签', 0, 1, 1, '2018-03-06 06:42:20'),
(81, 'wechat/tags/sync', '同步标签', 0, 1, 1, '2018-03-06 06:42:23'),
(229, 'admin/node/clear', '清理无效记录', 0, 1, 1, '2018-03-09 04:24:31');

-- --------------------------------------------------------

--
-- 表的结构 `system_sequence`
--

CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- --------------------------------------------------------

--
-- 表的结构 `system_user`
--

CREATE TABLE `system_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) UNSIGNED DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

--
-- 转存表中的数据 `system_user`
--

INSERT INTO `system_user` (`id`, `username`, `password`, `qq`, `mail`, `phone`, `desc`, `login_num`, `login_at`, `status`, `authorize`, `is_deleted`, `create_by`, `create_at`) VALUES
(10000, 'admin', '21232f297a57a5a743894a0e4a801fc3', '22222222', '', '18993368867', '', 23296, '2018-03-23 17:05:40', 1, '2,4', 0, NULL, '2015-11-13 07:14:22');

-- --------------------------------------------------------

--
-- 表的结构 `wechat_fans`
--

CREATE TABLE `wechat_fans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appid` char(50) DEFAULT '' COMMENT '公众号Appid',
  `unionid` char(100) DEFAULT '' COMMENT 'unionid',
  `openid` char(100) DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) DEFAULT '' COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL COMMENT '推荐时间',
  `tagid_list` varchar(100) DEFAULT '' COMMENT '标签id',
  `is_black` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '用户是否关注该公众号(0:未关注, 1:已关注)',
  `nickname` varchar(200) DEFAULT '' COMMENT '用户的昵称',
  `sex` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) DEFAULT '' COMMENT '用户所在国家',
  `province` varchar(50) DEFAULT '' COMMENT '用户所在省份',
  `city` varchar(50) DEFAULT '' COMMENT '用户所在城市',
  `language` varchar(50) DEFAULT '' COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) DEFAULT '' COMMENT '用户头像',
  `subscribe_time` bigint(20) UNSIGNED DEFAULT '0' COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `remark` varchar(50) DEFAULT '' COMMENT '备注',
  `expires_in` bigint(20) UNSIGNED DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) DEFAULT '' COMMENT '刷新token',
  `access_token` varchar(200) DEFAULT '' COMMENT '访问token',
  `subscribe_scene` varchar(200) DEFAULT '' COMMENT '扫码关注场景',
  `qr_scene` varchar(100) DEFAULT '' COMMENT '二维码场景值',
  `qr_scene_str` varchar(200) DEFAULT '' COMMENT '二维码场景内容',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信粉丝';

-- --------------------------------------------------------

--
-- 表的结构 `wechat_fans_tags`
--

CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) UNSIGNED DEFAULT NULL COMMENT '总数',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信会员标签';

-- --------------------------------------------------------

--
-- 表的结构 `wechat_keys`
--

CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL,
  `appid` char(100) DEFAULT '' COMMENT '公众号APPID',
  `type` varchar(20) DEFAULT '' COMMENT '类型，text 文件消息，image 图片消息，news 图文消息',
  `keys` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '文本内容',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片链接',
  `voice_url` varchar(255) DEFAULT '' COMMENT '语音链接',
  `music_title` varchar(100) DEFAULT '' COMMENT '音乐标题',
  `music_url` varchar(255) DEFAULT '' COMMENT '音乐链接',
  `music_image` varchar(255) DEFAULT '' COMMENT '音乐缩略图链接',
  `music_desc` varchar(255) DEFAULT '' COMMENT '音乐描述',
  `video_title` varchar(100) DEFAULT '' COMMENT '视频标题',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频URL',
  `video_desc` varchar(255) DEFAULT '' COMMENT '视频描述',
  `news_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) UNSIGNED DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '0 禁用，1 启用',
  `create_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信关键字';

-- --------------------------------------------------------

--
-- 表的结构 `wechat_menu`
--

CREATE TABLE `wechat_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text NOT NULL COMMENT '文字内容',
  `sort` bigint(20) UNSIGNED DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单配置';

-- --------------------------------------------------------

--
-- 表的结构 `wechat_news`
--

CREATE TABLE `wechat_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT '' COMMENT '关联图文ID，用，号做分割',
  `is_deleted` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信图文表';

--
-- 转存表中的数据 `wechat_news`
--

INSERT INTO `wechat_news` (`id`, `media_id`, `local_url`, `article_id`, `is_deleted`, `create_at`, `create_by`) VALUES
(1, '', '', '5', 1, '2018-05-25 07:01:00', 10000);

-- --------------------------------------------------------

--
-- 表的结构 `wechat_news_article`
--

CREATE TABLE `wechat_news_article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT '' COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) UNSIGNED DEFAULT '0' COMMENT '是否显示封面 0不显示，1 显示',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `digest` varchar(300) DEFAULT '' COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT '' COMMENT '图文消息原文地址',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

--
-- 转存表中的数据 `wechat_news_article`
--

INSERT INTO `wechat_news_article` (`id`, `title`, `local_url`, `show_cover_pic`, `author`, `digest`, `content`, `content_source_url`, `create_at`, `create_by`) VALUES
(5, '中国外贸家新员工拓展训练，增强同事团队合作意识', 'http://company.znmya.com:8080/static/upload/2705b40fe19aff5d/0059158e093814e8.jpg', 1, '中国外贸家', '\n\n在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，\n\n&nbsp;\n\n\n\n&nbsp;\n', '<p><img alt="中国外贸家集体图片1.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg" /></p>\n\n<p>在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="先锋队集体照.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg" /><img alt="赤焰队集体照.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>大家纷纷喊着各自队伍的口号，以饱满的热情投入到了接下来的活动中。</p>\n\n<p>拓展训练共举行了破冰组建、激情节拍、鼓动人心、有轨电车、呼吸的力量和孤岛求生多个项目。</p>\n\n<p>破冰组建这个项目是打破人与人之间的间隔和拘谨，改变同事的常规心态和惯性思维，释放同事内向的激情，创造同事融入情景的集体氛围，从而提高同事对项目体验的积极心态和参与度。</p>\n\n<p>激情节拍是拓展训练比较有魅力的项目，它让先锋队和赤焰队的同事瞬间进入团队氛围，激发热情，协调一致，快速的完成任务。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="激情节拍.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg" /><img alt="赤焰队激情节拍.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg" /></p>\n\n<p>半天的拓展活动在不知不觉中很快就过去了，大家似乎意犹未尽，当教练问起大家：今天最大的感受是什么时，大家异口同声的回答道：我们是最优秀的团队！</p>\n\n<p>&nbsp;</p>\n\n<p><img alt="鼓动人心.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg" /><img alt="鼓动人心1.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　活动结束后，大家欢聚一堂，有说有笑，团结一致，这是一个极为优秀的外贸团队，该克服了各种困难与挑战，创造了一个又一个奇迹。</p>\n\n<p>经过之前的拓展训练，大家纷纷意识到了团队合作的重要性，彼此的心更加贴近，感情也更加深厚，纷纷敞开心门，畅所欲言，讲述自己的过往，倾听同伴的心声，现场的气氛也越来越融洽。</p>\n\n<p><img alt="放松.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;拓展培训是养团队意识、团队合作等，正是这一次的拓展训练，使我受益匪浅，终生难忘。体会最深的有以下几点：</p>\n\n<p>　　一、明确责任，落实分工极其重要。每个人的岗位职责确定之后，各司其职，有利于明确责任，发挥个体的主观能动性，使其既知道自己应该做什么，又思考怎样做好。在做集体拓展项目时，每个人开始尚能听着队长安排，但后来有些混乱。因此，在具体工作中，我们要明确分工、落实责任，坚决杜绝&ldquo;政出多门&rdquo;和&ldquo;首尾失顾&rdquo;的现象。</p>\n\n<p>　　二、做事要先做计划，再开展行动。在做活动项目时，大家并没有先急于去做，而是每个人先找好自己的位置和思考自己的要做的事情，事实充分论证，项目一举通过。所以，在现实工作中，我们做任何事情，都需要有一个明确的目标，只有明确了前进的方向和最终需要达到的结果，才能确定过程中所要采取的方法与步骤。所以，只有规划好全局的目标和方向，我们才会事半功倍。</p>\n\n<p>　　三、应学会遇到问题换位思考。在工作中，我们要看到差异、容纳差异、协调差异、利用差异，在差异中取长补短，不要为表面的现象所困扰，有些印象其实是主观的臆想，需要你的耐心和智慧，通过分析、判断，充分了解它的本质，通过组织、协调达到目标，通过沟通交流，才能建立多赢的局面。</p>\n\n<p>　　四、知识和技能还只是有形的资本，意志和精神则是无形的力量。拓展训练的项目对人的体能的要求并不高，更多的则是对心理的挑战。因此有人形象地称它是&ldquo;小游戏、大道理&rdquo;。更确切地说，拓展是一种感悟和体验，是一种考验人的意志和智慧、挖掘人的潜能和培养团队协作精神的运动。它的每一项让每个人在心灵和精神上都有一个新的超越，重新认识自我、认识生命的活动。在拓展训练中，使我懂得应该怎样在逆境中求生存，更使我明白了一个人的能力有限，意志和精神的力量是无限的。</p>\n\n<p>五、团队需要核心和灵魂。没有灵魂的团队，就像盘散沙，不可想象。几个集体项目如果没有人指挥，没有简单的谋划，没有人付出和奉献，在有限的时间里将如何去完成？工作中又何尝不是如此呢？团队不仅仅是几个人，几十个人，甚至几百个人，几千个人站在一起就能称为团队，而且在团队中还需要成员之间的团结，协作和默契，相互的信任等一系列诸多因素的集合，才能称为团队。　　</p>\n\n<p>六、相互信任是团队建设的基石，离开信任的团队是松散的团队，是毫无战斗力的团队，建立一支相互信任的团队，比任何激励都重要。在&ldquo;呼吸的力量&rdquo;项目中，</p>\n\n<p><img alt="呼吸的力量.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>最能证明这一点，每个人沟通，信任的执行，配合好才能完成任务。</p>\n\n<p>七、学会沟通和理解。语言的沟通胜过任何肢体的表达。日常生活和工作中，我们需要沟通和理解，也需要相互配合和协调，只有形成力量的整合才能完成共同的任务。在工作中，我们面对各种问题与事情时，若能及时沟通，减少隔阂，减少矛盾，多些理解，多些支持，就会避免诸多不必要的麻烦。</p>\n\n<p><img alt="知识总结.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>八、懂得摆正自己的位置。在团队中既要发挥自己的长处与智慧，同时也要懂得自己优缺点。其身不正，无以自立。因此，在日常工作与学习中，我们要摆正自己的位置，不要提早给自己设限，也不要给自己戴高帽，我们要善于正视自己，摆正位置，善于挖掘自身潜力，善于脚踏实地、实实在在地做好本职工作。 拓展训练虽然结束了，但在训练中我们营造了团队氛围，培养了团队意识，同时挑战了自己。这次拓展训练让我时刻提醒自己，要相信自己，时时保持积极进取的人生态度和团队合作精神！</p>\n\n<p><img alt="中国外贸家集体图片.jpg" src="http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　在今后工作中，我们要把拓展训练中的经验运用到实际工作中去，用拓展了的心灵、激情和意志重新面对崭新的每一天，面对每一项工作任务，我们要做的更好，一方面会根据全球采购商的需求挖掘和整合最佳的中国供应商资源，利用互联网+帮助全球采购商找到中国最佳供应商，采购到优质的中国制造产品;另一方面依靠专业的海外推广能力和外贸服务能力，解决中国制造企业海外推广难和外贸交易难的问题，帮助中国制造企业将优质产品销往全球，拓展海外市场。</p>\n\n<p>&ldquo;中国外贸家&ldquo;以&rdquo;让天下没有做不成的生意&ldquo;为使命，让中国制造企业更简单高效地参与全球采购，直达目标市场。</p>', '', '2018-05-25 07:01:00', 10000);

-- --------------------------------------------------------

--
-- 表的结构 `wechat_news_image`
--

CREATE TABLE `wechat_news_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信服务器图片';

-- --------------------------------------------------------

--
-- 表的结构 `wechat_news_media`
--

CREATE TABLE `wechat_news_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appid` varchar(100) DEFAULT '' COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `type` varchar(20) DEFAULT '' COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_address`
--
ALTER TABLE `company_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_album`
--
ALTER TABLE `company_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_job`
--
ALTER TABLE `company_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_message`
--
ALTER TABLE `company_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_nav`
--
ALTER TABLE `company_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_news`
--
ALTER TABLE `company_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_news_article`
--
ALTER TABLE `company_news_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_news_nav`
--
ALTER TABLE `company_news_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_partner`
--
ALTER TABLE `company_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_slides`
--
ALTER TABLE `company_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_auth`
--
ALTER TABLE `system_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  ADD KEY `index_system_auth_status` (`status`) USING BTREE;

--
-- Indexes for table `system_auth_node`
--
ALTER TABLE `system_auth_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_auth_auth` (`auth`) USING BTREE,
  ADD KEY `index_system_auth_node` (`node`) USING BTREE;

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_config_name` (`name`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_menu_node` (`node`) USING BTREE;

--
-- Indexes for table `system_node`
--
ALTER TABLE `system_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_node_node` (`node`);

--
-- Indexes for table `system_sequence`
--
ALTER TABLE `system_sequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  ADD KEY `index_system_sequence_type` (`type`),
  ADD KEY `index_system_sequence_number` (`sequence`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_user_username` (`username`) USING BTREE;

--
-- Indexes for table `wechat_fans`
--
ALTER TABLE `wechat_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  ADD KEY `index_wechat_fans_openid` (`openid`) USING BTREE,
  ADD KEY `index_wechat_fans_unionid` (`unionid`),
  ADD KEY `index_wechat_fans_is_back` (`is_black`),
  ADD KEY `index_wechat_fans_subscribe` (`subscribe`);

--
-- Indexes for table `wechat_fans_tags`
--
ALTER TABLE `wechat_fans_tags`
  ADD KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  ADD KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE;

--
-- Indexes for table `wechat_keys`
--
ALTER TABLE `wechat_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_keys_appid` (`appid`);

--
-- Indexes for table `wechat_menu`
--
ALTER TABLE `wechat_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_menu_pindex` (`pindex`) USING BTREE;

--
-- Indexes for table `wechat_news`
--
ALTER TABLE `wechat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_news_artcle_id` (`article_id`) USING BTREE;

--
-- Indexes for table `wechat_news_article`
--
ALTER TABLE `wechat_news_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechat_news_image`
--
ALTER TABLE `wechat_news_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_news_image_md5` (`md5`);

--
-- Indexes for table `wechat_news_media`
--
ALTER TABLE `wechat_news_media`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `company_address`
--
ALTER TABLE `company_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `company_album`
--
ALTER TABLE `company_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `company_job`
--
ALTER TABLE `company_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `company_message`
--
ALTER TABLE `company_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `company_nav`
--
ALTER TABLE `company_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `company_news`
--
ALTER TABLE `company_news`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `company_news_article`
--
ALTER TABLE `company_news_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `company_news_nav`
--
ALTER TABLE `company_news_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `company_partner`
--
ALTER TABLE `company_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `company_slides`
--
ALTER TABLE `company_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `system_auth`
--
ALTER TABLE `system_auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `system_auth_node`
--
ALTER TABLE `system_auth_node`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- 使用表AUTO_INCREMENT `system_node`
--
ALTER TABLE `system_node`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- 使用表AUTO_INCREMENT `system_sequence`
--
ALTER TABLE `system_sequence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;
--
-- 使用表AUTO_INCREMENT `wechat_fans`
--
ALTER TABLE `wechat_fans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wechat_fans_tags`
--
ALTER TABLE `wechat_fans_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签ID';
--
-- 使用表AUTO_INCREMENT `wechat_keys`
--
ALTER TABLE `wechat_keys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wechat_menu`
--
ALTER TABLE `wechat_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wechat_news`
--
ALTER TABLE `wechat_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `wechat_news_article`
--
ALTER TABLE `wechat_news_article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `wechat_news_image`
--
ALTER TABLE `wechat_news_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wechat_news_media`
--
ALTER TABLE `wechat_news_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
