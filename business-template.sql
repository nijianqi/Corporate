/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : business-template

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-05-30 10:49:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company_address
-- ----------------------------
DROP TABLE IF EXISTS `company_address`;
CREATE TABLE `company_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `map_url` longtext,
  `is_deleted` int(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_address
-- ----------------------------
INSERT INTO `company_address` VALUES ('1', '杭州总部', 'HangzhouZongbu', '400-880-1735', '0571-86160915', 'info@bestsuppliers.com', '中国杭州余杭区文一西路1218号恒生科技园35号楼', 'China', '311121', 'http://uri.amap.com/marker?position=120.005154,30.277666&amp;name=%E6%B5%99%E6%B1%9F%E7%99%BE%E4%BD%B3%E8%8D%9F%E7%BD%91%E7%BB%9C%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;src=%E6%B5%99%E6%B1%9F%E7%99%BE%E4%BD%B3%E8%8D%9F%E7%BD%91%E7%BB%9C%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;coordinate=gaode&amp;callnative=0', '0', '2018-05-26 18:48:35', 'admin');

-- ----------------------------
-- Table structure for company_album
-- ----------------------------
DROP TABLE IF EXISTS `company_album`;
CREATE TABLE `company_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) DEFAULT '0',
  `sort` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_album
-- ----------------------------
INSERT INTO `company_album` VALUES ('1', '公司正面', 'Positive company', 'http://image.znmya.com//94dcf9c72c28eb4e/9f9789441221c828.jpg', 'admin', '2018-05-30 09:49:52', '0', '1');

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('1', 'email', 'rc@kingwaytrades.com');
INSERT INTO `company_info` VALUES ('2', 'phone', '400-800-1085');
INSERT INTO `company_info` VALUES ('3', 'wechat_img', 'http://company.znmya.com:8080/static/upload/f9aa506cee2acc52/76788b8fc14455bf.jpg');
INSERT INTO `company_info` VALUES ('4', 'weibo', 'https://weibo.com/bestsuppliers');
INSERT INTO `company_info` VALUES ('5', 'kewords', '百佳荟,中国外贸家,外贸B2B平台,外贸平台,外贸网站');
INSERT INTO `company_info` VALUES ('6', 'description', '中国外贸家着力打造外贸B2B领域全新模式的平台，以卓越的市场前瞻力和技术创新力推动中国互联网产业的发展，目前已经打造并且投入运营重点项目“中国外贸家”平台.中国外贸家是以三位一体的全球贸易B2B交易服务平台,跟着中国外贸家,简单做外贸');
INSERT INTO `company_info` VALUES ('7', 'title', '中国外贸家是外贸B2B交易服务平台-中国外贸家官网是外贸B2B全新模式');
INSERT INTO `company_info` VALUES ('8', 'title_en', 'China\'s foreign trade home is a foreign trade B2B trading service platform - China Foreign Trade official website is a new model of foreign trade B2B');
INSERT INTO `company_info` VALUES ('9', 'kewords_en', 'Baijiahui, China\'s foreign trade home, foreign trade B2B platform, foreign trade platform, foreign trade website');
INSERT INTO `company_info` VALUES ('10', 'description_en', 'hina’s foreign traders are striving to create a platform for a new model in the field of foreign trade B2B. They have promoted the development of China’s Internet industry with excellent market foresight and technological innovation. China’s foreign trade home platform has been built and put into operation. Trinity\'s global trade B2B trading service platform, followed by Chinese foreign traders, simply doing foreign trade');

-- ----------------------------
-- Table structure for company_message
-- ----------------------------
DROP TABLE IF EXISTS `company_message`;
CREATE TABLE `company_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_message
-- ----------------------------
INSERT INTO `company_message` VALUES ('1', '倪建起', '1198952901@qq.com', '13095676007', '水水水水水', null, '2018-05-28 20:08:12', null, '1');
INSERT INTO `company_message` VALUES ('2', '倪建起', '1198952901@qq.com', '13095676007', '水水水水水', null, '2018-05-28 20:08:15', null, '1');
INSERT INTO `company_message` VALUES ('3', '杀杀杀', '1198952901@qq.com', '13095676007', '222222', null, '2018-05-28 20:08:18', null, '1');

-- ----------------------------
-- Table structure for company_nav
-- ----------------------------
DROP TABLE IF EXISTS `company_nav`;
CREATE TABLE `company_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(20) NOT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_nav
-- ----------------------------
INSERT INTO `company_nav` VALUES ('1', '中国外贸家', null, 'bestsuppliers.html', '_self', 'admin', '2018-05-28 09:14:57', '1', '1');
INSERT INTO `company_nav` VALUES ('2', '关于我们', 'About us', 'about-us.html', '_self', 'admin', '2018-05-30 09:00:41', '4', '0');
INSERT INTO `company_nav` VALUES ('3', '新闻资讯', 'News', 'news.html', '_self', 'admin', '2018-05-30 09:00:19', '2', '0');
INSERT INTO `company_nav` VALUES ('4', '诚聘英才', 'Talents wanted', 'join-us.html', '_self', 'admin', '2018-05-30 09:00:53', '5', '0');
INSERT INTO `company_nav` VALUES ('5', '联系我们', 'Contact us', 'contact-us.html', '_self', 'admin', '2018-05-30 09:01:05', '6', '0');
INSERT INTO `company_nav` VALUES ('6', '测试', null, '#', '_bank', 'admin', '2018-04-19 09:45:39', '6', '1');
INSERT INTO `company_nav` VALUES ('7', '测试', null, '#', '_bank', 'admin', '2018-04-19 09:47:33', '6', '1');
INSERT INTO `company_nav` VALUES ('8', '产品中心', 'Products center', 'project.html', '_self', 'admin', '2018-05-30 09:00:29', '3', '0');

-- ----------------------------
-- Table structure for company_news
-- ----------------------------
DROP TABLE IF EXISTS `company_news`;
CREATE TABLE `company_news` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `local_url` varchar(255) DEFAULT NULL,
  `article_id` varchar(60) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_news
-- ----------------------------
INSERT INTO `company_news` VALUES ('4', null, '4', '1', '2018-05-28 15:26:40', 'admin');
INSERT INTO `company_news` VALUES ('5', null, '5', '1', '2018-05-28 15:29:16', 'admin');
INSERT INTO `company_news` VALUES ('6', null, '6', '0', '2018-05-28 15:28:24', 'admin');
INSERT INTO `company_news` VALUES ('7', null, '7', '0', '2018-05-28 15:49:49', 'admin');
INSERT INTO `company_news` VALUES ('8', null, '8', '0', '2018-05-28 15:50:25', 'admin');

-- ----------------------------
-- Table structure for company_news_article
-- ----------------------------
DROP TABLE IF EXISTS `company_news_article`;
CREATE TABLE `company_news_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `title_en` varchar(128) DEFAULT NULL,
  `content` longtext,
  `content_en` longtext,
  `local_url` varchar(300) DEFAULT NULL,
  `clicks` int(11) DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(20) DEFAULT NULL,
  `author_en` varchar(20) DEFAULT NULL,
  `show_cover_pic` tinyint(4) DEFAULT NULL,
  `digest` varchar(300) DEFAULT NULL,
  `digest_en` varchar(300) DEFAULT NULL,
  `content_source_url` varchar(255) DEFAULT NULL,
  `nav_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_news_article
-- ----------------------------
INSERT INTO `company_news_article` VALUES ('4', '中国外贸家新员工拓展训练，增强同事团队合作意识', null, '<p><img alt=\"中国外贸家集体图片1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg\" /></p>\n\n<p>在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"先锋队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg\" /><img alt=\"赤焰队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>大家纷纷喊着各自队伍的口号，以饱满的热情投入到了接下来的活动中。</p>\n\n<p>拓展训练共举行了破冰组建、激情节拍、鼓动人心、有轨电车、呼吸的力量和孤岛求生多个项目。</p>\n\n<p>破冰组建这个项目是打破人与人之间的间隔和拘谨，改变同事的常规心态和惯性思维，释放同事内向的激情，创造同事融入情景的集体氛围，从而提高同事对项目体验的积极心态和参与度。</p>\n\n<p>激情节拍是拓展训练比较有魅力的项目，它让先锋队和赤焰队的同事瞬间进入团队氛围，激发热情，协调一致，快速的完成任务。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg\" /><img alt=\"赤焰队激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg\" /></p>\n\n<p>半天的拓展活动在不知不觉中很快就过去了，大家似乎意犹未尽，当教练问起大家：今天最大的感受是什么时，大家异口同声的回答道：我们是最优秀的团队！</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"鼓动人心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg\" /><img alt=\"鼓动人心1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　活动结束后，大家欢聚一堂，有说有笑，团结一致，这是一个极为优秀的外贸团队，该克服了各种困难与挑战，创造了一个又一个奇迹。</p>\n\n<p>经过之前的拓展训练，大家纷纷意识到了团队合作的重要性，彼此的心更加贴近，感情也更加深厚，纷纷敞开心门，畅所欲言，讲述自己的过往，倾听同伴的心声，现场的气氛也越来越融洽。</p>\n\n<p><img alt=\"放松.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;拓展培训是养团队意识、团队合作等，正是这一次的拓展训练，使我受益匪浅，终生难忘。体会最深的有以下几点：</p>\n\n<p>　　一、明确责任，落实分工极其重要。每个人的岗位职责确定之后，各司其职，有利于明确责任，发挥个体的主观能动性，使其既知道自己应该做什么，又思考怎样做好。在做集体拓展项目时，每个人开始尚能听着队长安排，但后来有些混乱。因此，在具体工作中，我们要明确分工、落实责任，坚决杜绝&ldquo;政出多门&rdquo;和&ldquo;首尾失顾&rdquo;的现象。</p>\n\n<p>　　二、做事要先做计划，再开展行动。在做活动项目时，大家并没有先急于去做，而是每个人先找好自己的位置和思考自己的要做的事情，事实充分论证，项目一举通过。所以，在现实工作中，我们做任何事情，都需要有一个明确的目标，只有明确了前进的方向和最终需要达到的结果，才能确定过程中所要采取的方法与步骤。所以，只有规划好全局的目标和方向，我们才会事半功倍。</p>\n\n<p>　　三、应学会遇到问题换位思考。在工作中，我们要看到差异、容纳差异、协调差异、利用差异，在差异中取长补短，不要为表面的现象所困扰，有些印象其实是主观的臆想，需要你的耐心和智慧，通过分析、判断，充分了解它的本质，通过组织、协调达到目标，通过沟通交流，才能建立多赢的局面。</p>\n\n<p>　　四、知识和技能还只是有形的资本，意志和精神则是无形的力量。拓展训练的项目对人的体能的要求并不高，更多的则是对心理的挑战。因此有人形象地称它是&ldquo;小游戏、大道理&rdquo;。更确切地说，拓展是一种感悟和体验，是一种考验人的意志和智慧、挖掘人的潜能和培养团队协作精神的运动。它的每一项让每个人在心灵和精神上都有一个新的超越，重新认识自我、认识生命的活动。在拓展训练中，使我懂得应该怎样在逆境中求生存，更使我明白了一个人的能力有限，意志和精神的力量是无限的。</p>\n\n<p>五、团队需要核心和灵魂。没有灵魂的团队，就像盘散沙，不可想象。几个集体项目如果没有人指挥，没有简单的谋划，没有人付出和奉献，在有限的时间里将如何去完成？工作中又何尝不是如此呢？团队不仅仅是几个人，几十个人，甚至几百个人，几千个人站在一起就能称为团队，而且在团队中还需要成员之间的团结，协作和默契，相互的信任等一系列诸多因素的集合，才能称为团队。　　</p>\n\n<p>六、相互信任是团队建设的基石，离开信任的团队是松散的团队，是毫无战斗力的团队，建立一支相互信任的团队，比任何激励都重要。在&ldquo;呼吸的力量&rdquo;项目中，</p>\n\n<p><img alt=\"呼吸的力量.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>最能证明这一点，每个人沟通，信任的执行，配合好才能完成任务。</p>\n\n<p>七、学会沟通和理解。语言的沟通胜过任何肢体的表达。日常生活和工作中，我们需要沟通和理解，也需要相互配合和协调，只有形成力量的整合才能完成共同的任务。在工作中，我们面对各种问题与事情时，若能及时沟通，减少隔阂，减少矛盾，多些理解，多些支持，就会避免诸多不必要的麻烦。</p>\n\n<p><img alt=\"知识总结.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>八、懂得摆正自己的位置。在团队中既要发挥自己的长处与智慧，同时也要懂得自己优缺点。其身不正，无以自立。因此，在日常工作与学习中，我们要摆正自己的位置，不要提早给自己设限，也不要给自己戴高帽，我们要善于正视自己，摆正位置，善于挖掘自身潜力，善于脚踏实地、实实在在地做好本职工作。 拓展训练虽然结束了，但在训练中我们营造了团队氛围，培养了团队意识，同时挑战了自己。这次拓展训练让我时刻提醒自己，要相信自己，时时保持积极进取的人生态度和团队合作精神！</p>\n\n<p><img alt=\"中国外贸家集体图片.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　在今后工作中，我们要把拓展训练中的经验运用到实际工作中去，用拓展了的心灵、激情和意志重新面对崭新的每一天，面对每一项工作任务，我们要做的更好，一方面会根据全球采购商的需求挖掘和整合最佳的中国供应商资源，利用互联网+帮助全球采购商找到中国最佳供应商，采购到优质的中国制造产品;另一方面依靠专业的海外推广能力和外贸服务能力，解决中国制造企业海外推广难和外贸交易难的问题，帮助中国制造企业将优质产品销往全球，拓展海外市场。</p>\n\n<p>&ldquo;中国外贸家&ldquo;以&rdquo;让天下没有做不成的生意&ldquo;为使命，让中国制造企业更简单高效地参与全球采购，直达目标市场。</p>', null, 'http://image.znmya.com//2705b40fe19aff5d/0059158e093814e8.jpg', null, '10000', '2018-05-27 10:29:57', '中国外贸家', null, '1', '在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快“先锋队”队和“赤焰队”队就诞生了，\n\n&nbsp;\n\n\n\n&nbsp;', null, '', '1');
INSERT INTO `company_news_article` VALUES ('5', '热烈欢迎中国外贸家正式上线', null, '<p>经过近半年的精心筹备，中国外贸家平台（www.bestsuppliers.com）于2017年10月25日，在CEO王跃能先生的领导下，正式宣布上线运行。这标志着外贸行业即将迎来一次全新的时代。</p>\n\n<p>中国外贸家在成立之初确定了以&ldquo;让天下没有做不成的生意&rdquo;为使命，将开放、正直、责任、成长作为我们永恒的价值观。为让外贸出口变得更加简单高效而不懈努力奋斗。</p>\n\n<p>中国外贸家是三位一体的全球贸易B2B交易服务平台，它包含供应商优选平台、海外推广运营平台和外贸交易服务平台。</p>', null, 'http://image.znmya.com//19c83050a3f88504/566e041d2da2237b.jpg', null, '10000', '2018-05-28 15:28:53', 'admin', null, '1', 'Warmly welcome Bestsuppliers to go online.', null, '', '1');
INSERT INTO `company_news_article` VALUES ('6', '2018孟加拉国建材展览会，有着中国外贸工厂的巨大商机', '2018 Building materials exhibition in Bangladesh, with huge business opportunities in China\'s foreign trade factories', '<p>孟加拉国建材展2018已在孟加拉国际会展中心隆重举行。该展为当地最大的建材盛会，已成功举办了多届。展商来自孟加拉、印度、中国、泰国、马来西亚、土耳其等18个国家的400多企业参展。随着孟加拉经济的快速发展，人口数量的增长以及城市化进程的加速。2018年孟加拉国建材展将会受到当地的广泛关注，是企业对企业交流洽谈的最佳平台。</p>\n\n<p><img alt=\"孟加拉展会大门.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180518/1526633989392629.jpg\" /></p>\n\n<p><strong>据中国外贸家了解</strong><strong>展品范围</strong><strong>有</strong></p>\n\n<p><strong>&nbsp;</strong></p>\n\n<p><strong>玻璃制品：</strong>装饰艺术玻璃、玻璃马赛克、安全玻璃、防火玻璃、彩色玻璃、钢化玻璃、制镜玻璃等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>墙体材料：</strong>幕墙系统、外强挂板、隔热砖、墙艺装饰、壁纸、隔断、隔音材料、贴面板等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>木制品</strong>：木门、壁柜、移门、楼梯、地板、竹木制品、防腐木、木结构、板材、防火板、木工机械等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>室内装饰：</strong>橱柜、厨房电器、整体家居、家居饰品、壁炉、窗帘布艺、装饰画。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>化学建材：</strong>内外墙油漆涂料、防水防腐防锈涂料、保温隔热材料、粘胶剂等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>石材：</strong>大理石、花岗岩、人造石板及制品、砂岩雕塑、园林景观、石材加工设备</p>\n\n<p>&nbsp;</p>\n\n<p><strong>陶瓷卫浴：</strong>建筑及卫生陶瓷、卫浴设备及配件、陶瓷釉料、SPA泳池设备、其他生产与辅助设备工具。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>照明智能化：</strong>照明电器、建筑安全、智能化楼宇、通风设备与技术、地暖、水处理设备与技术等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>门窗遮阳：</strong>建筑门窗、旋转门、平开门、门控设备、五金、防火门、防盗门、车库门、金属门、卷帘门、遮阳产品、铝塑板、钢结构及其相关配件、铝型材、配件及加工设备等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>屋面材料</strong>：斜屋顶窗、屋顶防水材料、屋面瓦、天花、集成吊顶、金属吊顶、木隔栅吊顶等。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>采通风:&nbsp;</strong>空调、通风系统、供水和下水、供煤气、防火安全系统、采暖设施、通风网络、管道，电气设施、照明系统和仪表、工程管网、制冷系统、卫浴设施；</p>\n\n<p>&nbsp;</p>\n\n<p><strong>居家艺术：</strong>陈设配饰与家具、壁纸、家纺布艺、灯饰、家居挂饰等；</p>\n\n<p>&nbsp;</p>\n\n<p><strong>可再生及新能源建筑：</strong>生物能源、 光伏建筑一体化、热泵、热电联供、太阳能、风能、太阳-热能、微发电，综合供热供电，光伏能、风能、热泵、绝缘保温等。</p>\n\n<p><img alt=\"展会中心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180518/1526633968559765.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>中国外贸家</strong><strong>对</strong><strong>展会</strong><strong>的</strong><strong>优势</strong><strong>见解</strong></p>\n\n<p>&middot;展示安全、可持续建筑材料的平台;</p>\n\n<p>&middot;促进安全和可持续的产品和增值服务作为孟加拉国建筑的首选;</p>\n\n<p>&middot;强调建筑材料，特别是环境方面的安全;</p>\n\n<p>&middot;探索外国参展商在孟加拉市场渗透解决方案的机会; 此外，通过外汇收入，激发经济潜力;</p>\n\n<p>&middot;为参展商创造技术交流平台和展示业务机会。</p>\n\n<p><strong>中国外贸家</strong><strong>对孟加拉国的</strong><strong>市场分析</strong></p>\n\n<p>&nbsp; 孟加拉人民共和国，简称孟加拉国，南亚国家，位于孟加拉湾之北，东南山区一小部分与缅甸为邻，东、西、北三面与印度毗连，并在北方边境尚有大量飞地，全国总面积为147570平方公里。随着孟加拉国的经济快速发展，城市人口的快速增长，政府积极推行私有化政策、改善投资环境、吸引外国投资、创建出口加工区，加大了城市的基础设施，房地产的开发与投入。首都达卡的人口将达到大约2000万，由于人口的迅速增长，来自农村地区人口的大量涌入和不断增长的中产阶层，以及随着孟农村居民收入上升，很多农民已经抛弃原先的铁皮屋，而是使用钢筋混凝土材料修建房屋。同时，孟政府大力推进桥梁、公路等领域基础设施建设，新兴建材消费市场对水泥、钢材和其他建筑材料的需求在未来几年内仍将保持高位。因此可以预见建筑行业将在在未来几年里来大大增长，供需差距仍然巨大，市场价值仍然很高。</p>\n\n<p>　<strong>中国五金建材</strong>产品物美价廉，在孟加拉国很有市场，在其经济稳定发展后，商机处处可得，有无尽的市场潜力。针对孟加拉国这块建筑建材市场，预期<strong>建材、五金、陶瓷等</strong>将有大量商机涌现，中国企业如果要想产品出口，赶紧跟随中国外贸家，简单做外贸，从而抢占市场先机。</p>', '<p>Bangladesh Building Materials Exhibition 2018 has been held in Bangladesh International Convention and Exhibition Center.The exhibition is the largest building materials event in the region and has been successfully held many times.Exhibitors from more than 400 companies from 18 countries including Bangladesh, India, China, Thailand, Malaysia, and Turkey are exhibiting.With the rapid development of Bangladesh&#39;s economy, the growth of the population and the acceleration of the urbanization process.In 2018, the Bangladesh Building Materials Fair will receive extensive attention from the local community. It is the best platform for business-to-business exchanges.</p>\n\n<p><img alt=\"孟加拉展会大门.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180518/1526633989392629.jpg\" /></p>\n\n<p>孟加拉国建材展2018已在孟加拉国际会展中心隆重举行。该展为当地最大的建材盛会，已成功举办了多届。展商来自孟加拉、印度、中国、泰国、马来西亚、土耳其等18个国家的400多企业参展。</p>\n\n<p>According to the understanding of Chinese foreign traders, there are glass products in the exhibits: decorative art glass, glass mosaic, safety glass, fireproof glass, stained glass, tempered glass, and mirror glass.<br />\nWall material: curtain wall system, external strong hanging board, heat insulation brick, wall art decoration, wallpaper, partition, sound insulation material, plywood, etc.<br />\nWood products: wooden doors, wall cabinets, sliding doors, stairs, floors, bamboo products, wood, wood structures, plates, fire boards, woodworking machinery, etc.<br />\nInterior decoration: cabinets, kitchen appliances, home furnishings, home accessories, fireplaces, curtain fabrics, decorative paintings.<br />\nChemical building materials: internal and external wall paint coatings, waterproof anti-corrosion anti-rust coating, thermal insulation materials, adhesives and so on.<br />\nStone: marble, granite, artificial stone and products, sandstone sculpture, landscape, stone processing equipment Ceramic sanitary ware: construction and sanitary ceramics, sanitary equipment and accessories, ceramic glaze, SPA swimming pool equipment, and other production and ancillary equipment tools.<br />\nLighting intelligence: lighting appliances, building safety, intelligent buildings, ventilation equipment and technology, floor heating, water treatment equipment and technology.<br />\nDoors and windows shade: building doors and windows, revolving doors, swing doors, door control equipment, hardware, fire doors, security doors, garage doors, metal doors, shutter doors, sunshade products, aluminum plate, steel structure and related accessories, aluminum profiles, accessories<br />\nAnd processing equipment.<br />\nRoofing materials: Inclined roof windows, roof waterproofing materials, roof tiles, ceilings, integrated ceilings, metal suspended ceilings, wood sash ceilings, etc.<br />\nVentilation: Air conditioning, ventilation systems, water supply and sewerage, gas supply, fire safety systems, heating facilities, ventilation networks, pipelines, electrical installations, lighting systems and instruments, engineering pipe networks, refrigeration systems, sanitary facilities; Home Art: Furnishings<br />\nWith furniture, wallpaper, home textile fabrics, lighting, home hangings, etc.; renewable and new energy buildings: bio-energy, photovoltaic building integration, heat pump, combined heat and power, solar energy, wind energy, solar thermal energy, micro-power generation, integrated heating<br />\nPower supply, photovoltaic energy, wind energy, heat pump, insulation and insulation.</p>\n\n<p><img alt=\"展会中心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180518/1526633968559765.jpg\" /></p>\n\n<p>China&#39;s foreign traders&#39; views on the advantages of the show &bull; The platform for the display of safe and sustainable building materials; &bull; The promotion of safe and sustainable products and value-added services as the first choice for Bangladeshi architecture; &bull; Emphasis on building materials, especially environmental safety;Explore opportunities for foreign exhibitors to penetrate solutions in the Bangladesh market; in addition, stimulate economic potential through foreign exchange earnings; &bull; Create technical exchange platforms and showcase business opportunities for exhibitors.Market Analysis of China&#39;s Foreign Trade Houses in Bangladesh The Bangladesh People&#39;s Republic, referred to as Bangladesh and South Asia, is located in the north of the Bay of Bengal. A small part of the southeastern mountains is adjacent to Myanmar, and the east, west and north sides are adjacent to India and are bordered by the northern border.There are a large number of enclaves and the total area of ​​the country is 147,570 square kilometers.With the rapid economic development of Bangladesh and the rapid growth of urban population, the government has actively implemented privatization policies, improved the investment environment, attracted foreign investment, created export processing zones, and increased the city&rsquo;s infrastructure and real estate development and investment.The population of the capital, Dhaka, will reach about 20 million. Due to the rapid population growth, the influx of population from rural areas and the growing middle class, and with the increase in the income of rural residents in Bangladesh, many farmers have abandoned the original tin house.Instead, it uses reinforced concrete materials to build houses.At the same time, the Meng government has vigorously promoted infrastructure construction in areas such as bridges and highways. The demand for cement, steel, and other construction materials in the emerging building materials consumer market will remain high in the coming years.It can therefore be foreseen that the construction industry will grow substantially in the coming years, the gap between supply and demand will remain huge, and the market value will remain high.China&#39;s hardware and building materials are inexpensive, and they have a market in Bangladesh. After their stable economic development, business opportunities are available everywhere and they have endless market potential.For the construction and building materials market in Bangladesh, it is expected that there will be a large number of business opportunities for building materials, hardware, and ceramics. If Chinese companies want to export their products, they should quickly follow foreign traders in China and do foreign trade in order to seize market opportunities.</p>', 'http://image.znmya.com/19c83050a3f88504/566e041d2da2237b.jpg', null, '10000', '2018-05-30 10:23:34', '中国外贸家', 'Chinese foreign trad', '1', '孟加拉国建材展2018已在孟加拉国际会展中心隆重举行。该展为当地最大的建材盛会，已成功举办了多届。展商来自孟加拉、印度、中国、泰国、马来西亚、土耳其等18个国家的400多企业参展。随着孟加拉经济的快速发展，人口数量的增长以及城市化进程的加速', 'Bangladesh Building Materials Exhibition 2018 has been held in Bangladesh International Convention and Exhibition Center', '', '1');
INSERT INTO `company_news_article` VALUES ('7', '中国外贸家新员工拓展训练，增强同事团队合作意识', 'New employees of China’s foreign trade companies expand their training and enhance their teamwork awareness', '<p><img alt=\"中国外贸家集体图片1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg\" /></p>\n\n<p>在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"先锋队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg\" /><img alt=\"赤焰队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>大家纷纷喊着各自队伍的口号，以饱满的热情投入到了接下来的活动中。</p>\n\n<p>拓展训练共举行了破冰组建、激情节拍、鼓动人心、有轨电车、呼吸的力量和孤岛求生多个项目。</p>\n\n<p>破冰组建这个项目是打破人与人之间的间隔和拘谨，改变同事的常规心态和惯性思维，释放同事内向的激情，创造同事融入情景的集体氛围，从而提高同事对项目体验的积极心态和参与度。</p>\n\n<p>激情节拍是拓展训练比较有魅力的项目，它让先锋队和赤焰队的同事瞬间进入团队氛围，激发热情，协调一致，快速的完成任务。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg\" /><img alt=\"赤焰队激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg\" /></p>\n\n<p>半天的拓展活动在不知不觉中很快就过去了，大家似乎意犹未尽，当教练问起大家：今天最大的感受是什么时，大家异口同声的回答道：我们是最优秀的团队！</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"鼓动人心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg\" /><img alt=\"鼓动人心1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　活动结束后，大家欢聚一堂，有说有笑，团结一致，这是一个极为优秀的外贸团队，该克服了各种困难与挑战，创造了一个又一个奇迹。</p>\n\n<p>经过之前的拓展训练，大家纷纷意识到了团队合作的重要性，彼此的心更加贴近，感情也更加深厚，纷纷敞开心门，畅所欲言，讲述自己的过往，倾听同伴的心声，现场的气氛也越来越融洽。</p>\n\n<p><img alt=\"放松.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;拓展培训是养团队意识、团队合作等，正是这一次的拓展训练，使我受益匪浅，终生难忘。体会最深的有以下几点：</p>\n\n<p>　　一、明确责任，落实分工极其重要。每个人的岗位职责确定之后，各司其职，有利于明确责任，发挥个体的主观能动性，使其既知道自己应该做什么，又思考怎样做好。在做集体拓展项目时，每个人开始尚能听着队长安排，但后来有些混乱。因此，在具体工作中，我们要明确分工、落实责任，坚决杜绝&ldquo;政出多门&rdquo;和&ldquo;首尾失顾&rdquo;的现象。</p>\n\n<p>　　二、做事要先做计划，再开展行动。在做活动项目时，大家并没有先急于去做，而是每个人先找好自己的位置和思考自己的要做的事情，事实充分论证，项目一举通过。所以，在现实工作中，我们做任何事情，都需要有一个明确的目标，只有明确了前进的方向和最终需要达到的结果，才能确定过程中所要采取的方法与步骤。所以，只有规划好全局的目标和方向，我们才会事半功倍。</p>\n\n<p>　　三、应学会遇到问题换位思考。在工作中，我们要看到差异、容纳差异、协调差异、利用差异，在差异中取长补短，不要为表面的现象所困扰，有些印象其实是主观的臆想，需要你的耐心和智慧，通过分析、判断，充分了解它的本质，通过组织、协调达到目标，通过沟通交流，才能建立多赢的局面。</p>\n\n<p>　　四、知识和技能还只是有形的资本，意志和精神则是无形的力量。拓展训练的项目对人的体能的要求并不高，更多的则是对心理的挑战。因此有人形象地称它是&ldquo;小游戏、大道理&rdquo;。更确切地说，拓展是一种感悟和体验，是一种考验人的意志和智慧、挖掘人的潜能和培养团队协作精神的运动。它的每一项让每个人在心灵和精神上都有一个新的超越，重新认识自我、认识生命的活动。在拓展训练中，使我懂得应该怎样在逆境中求生存，更使我明白了一个人的能力有限，意志和精神的力量是无限的。</p>\n\n<p>五、团队需要核心和灵魂。没有灵魂的团队，就像盘散沙，不可想象。几个集体项目如果没有人指挥，没有简单的谋划，没有人付出和奉献，在有限的时间里将如何去完成？工作中又何尝不是如此呢？团队不仅仅是几个人，几十个人，甚至几百个人，几千个人站在一起就能称为团队，而且在团队中还需要成员之间的团结，协作和默契，相互的信任等一系列诸多因素的集合，才能称为团队。　　</p>\n\n<p>六、相互信任是团队建设的基石，离开信任的团队是松散的团队，是毫无战斗力的团队，建立一支相互信任的团队，比任何激励都重要。在&ldquo;呼吸的力量&rdquo;项目中，</p>\n\n<p><img alt=\"呼吸的力量.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>最能证明这一点，每个人沟通，信任的执行，配合好才能完成任务。</p>\n\n<p>七、学会沟通和理解。语言的沟通胜过任何肢体的表达。日常生活和工作中，我们需要沟通和理解，也需要相互配合和协调，只有形成力量的整合才能完成共同的任务。在工作中，我们面对各种问题与事情时，若能及时沟通，减少隔阂，减少矛盾，多些理解，多些支持，就会避免诸多不必要的麻烦。</p>\n\n<p><img alt=\"知识总结.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>八、懂得摆正自己的位置。在团队中既要发挥自己的长处与智慧，同时也要懂得自己优缺点。其身不正，无以自立。因此，在日常工作与学习中，我们要摆正自己的位置，不要提早给自己设限，也不要给自己戴高帽，我们要善于正视自己，摆正位置，善于挖掘自身潜力，善于脚踏实地、实实在在地做好本职工作。 拓展训练虽然结束了，但在训练中我们营造了团队氛围，培养了团队意识，同时挑战了自己。这次拓展训练让我时刻提醒自己，要相信自己，时时保持积极进取的人生态度和团队合作精神！</p>\n\n<p><img alt=\"中国外贸家集体图片.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　在今后工作中，我们要把拓展训练中的经验运用到实际工作中去，用拓展了的心灵、激情和意志重新面对崭新的每一天，面对每一项工作任务，我们要做的更好，一方面会根据全球采购商的需求挖掘和整合最佳的中国供应商资源，利用互联网+帮助全球采购商找到中国最佳供应商，采购到优质的中国制造产品;另一方面依靠专业的海外推广能力和外贸服务能力，解决中国制造企业海外推广难和外贸交易难的问题，帮助中国制造企业将优质产品销往全球，拓展海外市场。</p>\n\n<p>&ldquo;中国外贸家&ldquo;以&rdquo;让天下没有做不成的生意&ldquo;为使命，让中国制造企业更简单高效地参与全球采购，直达目标市场。</p>', '<p><img alt=\"中国外贸家集体图片1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg\" /></p>\n\n<p>Under the organization of the Chinese foreign trade home, all the new colleagues went to Bailongtan to develop training bases for outdoor outreach activities.The whole team, grouping, selection of team leader, starting team name, drawing team flag, soon the &quot;vanguard&quot; team and the &quot;Red Knight&quot; team were born,</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"先锋队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg\" /><img alt=\"赤焰队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Everyone shouted out the slogans of their respective teams and devoted themselves to the following activities with full enthusiasm.The development training held a number of projects including ice-breaking formation, passion beats, aspirations, trams, breathing power, and island survival.The establishment of this project through breaking ice is to break the gap between people and restraints, change the routine mentality and inertia of colleagues, free the introverted passion of colleagues, and create a collective atmosphere for the integration of colleagues, thus enhancing the positive attitude and participation of colleagues in the project experience.degree.Passion beat is an attractive project for outreach training. It allows the vanguard and colleagues of the Chiyan team to instantly enter the team atmosphere, inspire enthusiasm, coordinate, and complete tasks quickly.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg\" /><img alt=\"赤焰队激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg\" /></p>\n\n<p>朗读The half-day development activities soon passed without anyone&#39;s notice. Everyone seemed to be full of apprehension. When the coach asked everyone: What is the biggest feeling of today? Everyone replied in unison: We are the best team!</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"鼓动人心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg\" /><img alt=\"鼓动人心1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　After the event, everyone gathered together, talking and laughing together. This is a very good foreign trade team. It has overcome various difficulties and challenges and created one miracle after another.After the previous expansion training, everyone realized the importance of teamwork, their hearts were closer, their feelings were deeper, they all opened their hearts, spoke freely, talked about their past, listened to the voice of their peers, and the atmosphere of the scene also grew.The more harmonious.</p>\n\n<p><img alt=\"放松.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;Expanding training is to raise team awareness, teamwork, etc. It is this time of outreach training that has benefited me a lot and will never forget it.The following are the most profound experiences: First, clarify responsibilities and implement the division of labor is extremely important.After each person&rsquo;s job responsibilities have been determined, his or her duties will be helpful in clarifying responsibilities and giving full play to the subject&rsquo;s initiative so that he can know what he should do and how he can do it.While doing the group expansion project, everyone started listening to the captain&#39;s arrangement but it was a bit confusing.Therefore, in the specific work, we must clarify the division of labor, the implementation of responsibilities, and resolutely put an end to the &quot;political out of many doors&quot; and &quot;losing the head and tail&quot; phenomenon.Second, to do things first plan, then proceed.When doing activities, everyone did not rush to do it first. Instead, everyone first found their own position and thought about what they wanted to do. The facts were fully demonstrated and the project passed.Therefore, in the real work, we need to have a clear goal when we do anything. Only by clarifying the direction of progress and the final result we need to achieve can we determine the methods and steps to be taken in the process.Therefore, we can only do more with less when we plan the overall goals and directions.Third, we should learn to encounter problems and empathy.In our work, we need to see differences, accommodate differences, coordinate differences, and use differences. We should learn from each other&#39;s differences and not plagued by superficial phenomena. Some impressions are actually subjective delusions and require your patience and wisdom through analysis.Judging, fully understanding its essence, achieving goals through organization and coordination, and establishing a win-win situation through communication and exchange.Fourth, knowledge and skills are only tangible capital, and will and spirit are intangible forces.The project of outreach training does not require high physical fitness. More often, it is a psychological challenge.Therefore, it was vividly called &quot;small game, big truth.&quot;More precisely, expansion is a sentiment and experience, a movement that tests the will and wisdom of people, taps into people&#39;s potential, and fosters teamwork.Each of its items gives everyone a new transcendence in mind and spirit, a new understanding of self and life-conscious activities.In outreach training, I learned how to survive in adversity, and made me understand that one&#39;s ability is limited, and the power of will and spirit is unlimited.Fifth, the team needs the core and soul.A soulless team is like untidy and unthinkable.If there are few people in charge of collective projects, there is no simple plan, no one to pay and dedication, in a limited time will be how to complete?Isn&#39;t this true at work?The team is not just a few people, dozens of people, even hundreds of people, and thousands of people standing together can be called teams, and the team needs solidarity among members, collaboration and understanding, mutual trust and a series ofA collection of factors can be called a team.6. Mutual trust is the cornerstone of team building. A team that leaves trust is a loose team. It is a team with no fighting power. Establishing a team of mutual trust is more important than any incentive.In the &quot;power of breathing&quot; project,</p>\n\n<p><img alt=\"呼吸的力量.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>The best proof of this point is that each person communicates and trusts the execution and cooperates well to complete the task.VII. Learn to communicate and understand.Communication of language is superior to the expression of any body.In daily life and work, we need to communicate and understand. We also need to coordinate and coordinate with each other. Only the integration of forces can accomplish common tasks.When we are faced with various issues and issues at work, we will avoid unnecessary problems if we can communicate in a timely manner, reduce barriers, reduce conflicts, understand more, and provide more support.</p>\n\n<p><img alt=\"知识总结.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Eight, know how to correct their position.In the team, we must not only exert our strengths and wisdom, but also understand our own strengths and weaknesses.His body is not correct, no independence.Therefore, in our daily work and study, we must correct our position, do not set limits on ourselves, and don&rsquo;t give ourselves top hats. We must be good at facing up to ourselves, position ourselves, be good at tapping our potential, and be good at down-to-earth,Really do their job.Although the outreach training is over, we have created a team atmosphere in training, cultivated team awareness, and challenged ourselves.This extended training reminds me to remind myself that I must believe in myself and always maintain a positive attitude and team spirit.</p>\n\n<p><img alt=\"中国外贸家集体图片.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　In the future work, we must apply the experience of outreach training to practical work, and re-face each new day with expanded mind, passion, and will. In the face of every task, we must do more.Well, on the one hand, it will tap and integrate the best Chinese supplier resources according to the needs of global buyers, use the Internet+ to help global buyers find the best suppliers in China, and purchase high-quality Chinese-made products; on the other hand, rely on professionalOverseas promotion capabilities and foreign trade service capabilities to solve the difficulties of overseas promotion of Chinese manufacturing enterprises and difficulties in foreign trade transactions, help Chinese manufacturing companies sell quality products to the world and expand overseas markets.&quot;China&#39;s foreign trade homes&quot; is the mission to &quot;make the world do not do business&quot;, so that Chinese manufacturing companies can more easily and efficiently participate in global procurement and reach the target market.</p>', 'http://image.znmya.com/2705b40fe19aff5d/0059158e093814e8.jpg', null, '10000', '2018-05-30 10:26:04', '中国外贸家', 'Chinese foreign trad', '1', '在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快“先锋队”队和“赤焰队”队就诞生了，\n\n&nbsp;\n\n\n\n&nbsp;', '\n\nUnder the organization of the Chinese foreign trade home, all the new colleagues went to Bailongtan to develop trainin', '', '2');
INSERT INTO `company_news_article` VALUES ('8', '拓市场、增订单，就选中国外贸家平台', 'Expand the market, increase orders, choose the Chinese foreign trade home platform', '<p>常言之，经营要有法有道，交往以信以诚。</p>\n\n<p>深以为然。</p>\n\n<p>我是海宁做抽屉导轨的，这些年下来，工厂效益一般。海宁有多少做五金的工厂？我不知道；有多少做和我一样的抽屉导轨产品？我也没办法统计。别人做什么，销量多少这不是我最要关心的。怎么样让我自己的产品卖的比别人多，别人快，这是我一直在研究的。</p>\n\n<p><img alt=\"中国外贸家图标.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180516/1526453590670684.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>我一直认为世界是动态的、随时可变的，道德经有言：&ldquo;万物并作，吾以观复&rdquo;，如果有一天你觉得世界不变了，那么一定是你出了问题。所以必须抓住这微小的动态点，去抢占更多的赢利点，所以，当外贸B2B交易服务平台越来越火的时候，我就一直想尝试。</p>\n\n<p>但是，其一，市面上大多数平台操作太繁琐，其二，企业招不到专门的运营人员。这就导致了工厂转型做出口的脚步一直处于停滞状态。</p>\n\n<p>后来，和一些朋友聚餐的时候，听到他们说起中国外贸家平台，听完之后，觉得这个外贸B2B平台还蛮优质的，因为他们操作便捷，而且主打一条龙的出口服务，所以，回去我就联系了朋友给我的联系电话，他们服务效率也很高，第二天我们就签约了。</p>\n\n<p><img alt=\"中国外贸家 (4).jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180516/1526453600437563.jpg\" /></p>\n\n<p>在他们的贴心服务下，我了解到，中国外贸家平台包含供应商优选平台、海外推广运营平台和外贸交易服务平台。一方面根据全球采购商的需求挖掘和整合最佳的中国供应商资源（我方），利用互联网+帮助全球采购商找到中国最佳供应商（我方），采购到优质的中国制造产品；另一方面，他们会依靠专业的海外推广能力和外贸服务能力，解决我们海外推广难和外贸交易难的问题，帮助我们将旗下优质的产品销往全球，拓展海外市场。</p>\n\n<p>去年1月底，我都准备回家过年了，中国外贸家的业务部联系到我说有个订单要抽屉导轨，我就给他们报了我的生产价格，过了两天的时间，就通知我生产了。中国外贸家第一次把我们生产的抽屉导轨出口到新的市场，又多一个国家用过我们厂里的产品。</p>\n\n<p>正是因为其本着交往&ldquo;以信以诚&rdquo;的原则，我们的合作才会这么顺利，或许你也是和我一样想做出口的生意人，希望我这篇文章能帮到你。总之一句话，拓市场、增订单，就选中国外贸家平台！</p>', '<p>In other words, there must be a proper approach to business, and sincere communication.Deep down.I am a Haining drawer guide, and these years, the factory benefits.How many Haining hardware factory?I don&#39;t know; how many drawer guide products do I like?I can&#39;t count.What others do and how much sales this is not my most concern.How do I make my own product sell more than others, others fast, this is what I have been studying.</p>\n\n<p><img alt=\"中国外贸家图标.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180516/1526453590670684.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>I have always believed that the world is dynamic and changeable at all times. The morals say: &quot;All things work together, I have to observe.&quot; If one day you think the world is the same, then you must have a problem.Therefore, we must seize this tiny dynamic point and seize more profit points. Therefore, when the foreign trade B2B trading service platform is getting hotter, I always want to try.However, for one thing, most of the platforms on the market are too cumbersome to operate, and second, companies cannot recruit specialized operators.This has led to the stagnation of the factory&#39;s transition to export.Later, when dining with some friends, I heard that they talked about the platform of the Chinese foreign trade home. After listening to this, I felt that the foreign trade B2B platform was quite high-quality, because they were easy to operate and they mainly served as a one-stop export service. So, go back to me.I contacted my friend&#39;s contact number and they were very efficient. The next day we signed the contract.</p>\n\n<p><img alt=\"中国外贸家 (4).jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180516/1526453600437563.jpg\" /></p>\n\n<p>With their caring services, I learned that China&rsquo;s foreign trade home platform includes a supplier optimization platform, an overseas promotion operation platform, and a foreign trade transaction service platform.On the one hand, based on the needs of global buyers, tap and integrate the best Chinese supplier resources (ours), use the Internet+ to help global buyers find the best suppliers in China (ours), and purchase quality Chinese-made products;On the one hand, they will rely on professional overseas promotion capabilities and foreign trade service capabilities to solve our overseas promotion difficulties and difficult foreign trade transactions, helping us sell our high-quality products globally and expanding overseas markets.At the end of January last year, I was ready to go home for the New Year. The business department of the Chinese foreign trade home contacted me and said that I had an order for drawer guides. I gave them my production price. Two days later, I notified me.Produced.For the first time, Chinese foreign traders have exported our drawer rails to new markets, and one more country has used the products in our factory.It is precisely because of its principle of &quot;sincerity with faith&quot; in its communication that our cooperation will be so smooth. Perhaps you are also a businessman who wants to be an exporter like me. I hope this article can help you.In a word, expand the market, increase orders, choose the Chinese foreign trade home platform!</p>', 'http://image.znmya.com//22dac7b50bcd0b58/9d8efc2289631d95.jpg', null, '10000', '2018-05-30 10:27:11', '中国外贸家', 'Chinese foreign trad', '0', '常言之，经营要有法有道，交往以信以诚。\n\n深以为然。\n\n我是海宁做抽屉导轨的，这些年下来，工厂效益一般。海宁有多少做五金的工厂？我不知道；有多少做和我一样的抽屉导轨产品？我也没办法统计。别人做什么，销量多少这不是我最要关心的。怎么样让我自己', 'In other words, there must be a proper approach to business, and sincere communication.Deep down.I am a Haining drawer g', '', '3');

-- ----------------------------
-- Table structure for company_news_nav
-- ----------------------------
DROP TABLE IF EXISTS `company_news_nav`;
CREATE TABLE `company_news_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `sort` int(20) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_news_nav
-- ----------------------------
INSERT INTO `company_news_nav` VALUES ('1', '公司新闻', 'company-news', '1', 'admin', '2018-05-28 17:14:40', '0');
INSERT INTO `company_news_nav` VALUES ('2', '电商资讯', 'internation-info', '2', 'admin', '2018-05-28 17:14:52', '0');
INSERT INTO `company_news_nav` VALUES ('3', '财经资讯', 'domestic-info', '3', 'admin', '2018-05-28 17:15:01', '0');
INSERT INTO `company_news_nav` VALUES ('4', '大事记', 'MEMORABILIA', '4', 'admin', '2018-05-28 15:26:44', '1');

-- ----------------------------
-- Table structure for company_partner
-- ----------------------------
DROP TABLE IF EXISTS `company_partner`;
CREATE TABLE `company_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `title_en` varchar(20) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_partner
-- ----------------------------
INSERT INTO `company_partner` VALUES ('1', '兰溪市曼吉克画材有限公司', 'english', 'http://image.znmya.com/bba4bc6cc9aee1cd/ea9af48156d38d59.jpg', '兰溪市曼吉克画材有限公司', '2018-05-28 09:41:47', 'admin', '0');

-- ----------------------------
-- Table structure for company_project
-- ----------------------------
DROP TABLE IF EXISTS `company_project`;
CREATE TABLE `company_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `title_en` varchar(50) DEFAULT NULL,
  `format` varchar(50) DEFAULT NULL,
  `format_en` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `level_en` varchar(50) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `packing_en` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_project
-- ----------------------------
INSERT INTO `company_project` VALUES ('1', 'RDMO230型振弦式位移计', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'RDMO230 type vibrating wire displacement meter', 'http://image.znmya.com/c28328c2535e06ec/29e4d0474741a827.jpg', '2', '0', '2018-05-30 10:37:23', 'admin');
INSERT INTO `company_project` VALUES ('2', 'RTCO250 型爆破测振仪', 'RTCO250 Blast Vibration Meter', 'RTCO250 型爆破测振仪', 'RTCO250 Blast Vibration Meter', 'RTCO250 型爆破测振仪', 'RTCO250 Blast Vibration Meter', 'RTCO250 型爆破测振仪', 'RTCO250 Blast Vibration Meter', 'http://image.znmya.com/c30a8ce7237ed0bd/45c6ae103d0ccb02.png', '1', '0', '2018-05-30 09:31:52', 'admin');

-- ----------------------------
-- Table structure for company_project_type
-- ----------------------------
DROP TABLE IF EXISTS `company_project_type`;
CREATE TABLE `company_project_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `sort` int(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_project_type
-- ----------------------------
INSERT INTO `company_project_type` VALUES ('1', 'POY', 'POY', '1', '0', '2018-05-30 09:30:48', 'admin');
INSERT INTO `company_project_type` VALUES ('2', 'FDY', 'FDY', '2', '0', '2018-05-30 09:30:54', 'admin');
INSERT INTO `company_project_type` VALUES ('3', 'DTY', 'DTY', '3', '0', '2018-05-30 09:30:59', 'admin');

-- ----------------------------
-- Table structure for company_slides
-- ----------------------------
DROP TABLE IF EXISTS `company_slides`;
CREATE TABLE `company_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) NOT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_slides
-- ----------------------------
INSERT INTO `company_slides` VALUES ('1', '中国外贸家', 'Chinawaimao', 'http://image.znmya.com//1e3a49372b1b2b1b/d16b30fd0e7ef67c.jpg', 'contact-us.html', '_blank', 'admin', '2018-05-29 09:50:02', '1', '0');
INSERT INTO `company_slides` VALUES ('2', '加入我们', 'join_us', 'http://image.znmya.com//f88324f0f7ac02b7/a8aa7c64b3ecc9a3.jpg', 'join-us.html', '_blank', 'admin', '2018-05-29 09:50:51', '2', '0');
INSERT INTO `company_slides` VALUES ('3', '关于我们', 'aboutus', 'http://image.znmya.com//c30a8ce7237ed0bd/45c6ae103d0ccb02.png', 'about-us.html', '_blank', 'admin', '2018-05-29 09:50:38', '3', '0');

-- ----------------------------
-- Table structure for company_work
-- ----------------------------
DROP TABLE IF EXISTS `company_work`;
CREATE TABLE `company_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `money_en` varchar(20) DEFAULT NULL,
  `work_type` varchar(20) DEFAULT NULL,
  `work_type_en` varchar(20) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `contacts` varchar(20) DEFAULT NULL,
  `contacts_en` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address_en` varchar(100) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `work_content` longtext,
  `work_content_en` longtext,
  `qualifications` longtext,
  `qualifications_en` longtext,
  `email` varchar(20) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of company_work
-- ----------------------------
INSERT INTO `company_work` VALUES ('2', '招商经理/客户经理/销售经理', 'Investment Manager / Account Manager / Sales Manager', '5~8k+提成', '5~8k+ commission', '全职', 'full time', '10', '梁小姐', 'Miss Liang', '浙江省杭州市余杭区文一西路恒生科技园', 'Hang Seng Science Park, Wenyi West Road, Yuhang District, Hangzhou City, Zhejiang Province, China', '15257864293', '2018-05-30 10:47:09', '1.负责开发客户，在全国范围内完成外贸工厂的招商对接\r\n2.负责入驻工厂的日常维护，根据客户需求做出有效反馈，及时解决问题\r\n3.负责收集市场信息，制定并善产品的销售策略并执行实施\r\n4.负责组织线下招商会类的活动，完成销售目标', '1. Responsible for the development of customers, complete the investment docking of the foreign trade factories nationwide 2. Responsible for the daily maintenance of the factory, effective feedback according to customer needs, timely solve the problem 3. Responsible for collecting market information and formulating the sales strategy of the good products\r\nAnd implement the implementation 4. Responsible for organizing the activities of the offline investment promotion group to complete the sales target', '1.大专以上学历，要求24-32岁之间，了解外贸工厂或电商平台者加分\r\n2.有2年以上销售经验，销售功底过硬，抗压能力强，有B端销售经验加分\r\n3.目标感强，执行力强，要性强，过硬的自我驱动力\r\n4.性格外向，乐观开朗，情商高，做事灵活，乐于分享，团队协作能力强\r\n5.适应出差，服从分配，有车老司机加分', '1. College degree or above, requiring 24-32 years of age, understanding of foreign trade factories or e-commerce platforms plus 2 points. 2 years of sales experience, excellent sales skills, strong compressive ability, 3 points of B-side sales experience\r\nStrong sense of purpose, strong execution, strong personality, strong self-driven ability 4. Outgoing personality, optimistic and cheerful, high emotional intelligence, flexible work, willing to share, strong teamwork ability 5. Adapt to travel, obey the distribution, there are old cars\r\nDriver bonus points', 'rc@kingwaytrades.com', '0', 'admin');

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_config_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', 'Business-template');
INSERT INTO `system_config` VALUES ('2', 'site_name', '百佳荟');
INSERT INTO `system_config` VALUES ('3', 'app_version', '1.0 dev');
INSERT INTO `system_config` VALUES ('4', 'site_copy', 'Copyright ©2017');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://company.com/static/upload/3889e4b0acd782f9/70c6272e89529d77.ico');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '浙ICP备17052780号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'qiniu');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4,ico');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', 'smart-campus');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', 'image.znmya.com');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', 'Mlh42q9Vlu4ornetjH1uhaF-58jSAN9vixnlGOre');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', 'zyveNEa76P5Uu6ON-BO5HZ8TLTLBqLucfQ506FKk');
INSERT INTO `system_config` VALUES ('14', 'storage_oss_bucket', 'cuci');
INSERT INTO `system_config` VALUES ('15', 'storage_oss_endpoint', 'oss-cn-beijing.aliyuncs.com');
INSERT INTO `system_config` VALUES ('16', 'storage_oss_domain', 'cuci.oss-cn-beijing.aliyuncs.com');
INSERT INTO `system_config` VALUES ('17', 'storage_oss_keyid', '用你自己的吧');
INSERT INTO `system_config` VALUES ('18', 'storage_oss_secret', '用你自己的吧');
INSERT INTO `system_config` VALUES ('34', 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('35', 'wechat_appkey', '9890a0d7c91801a609d151099e95b61a');
INSERT INTO `system_config` VALUES ('36', 'storage_oss_is_https', 'http');
INSERT INTO `system_config` VALUES ('37', 'wechat_type', 'api');
INSERT INTO `system_config` VALUES ('38', 'wechat_token', 'test');
INSERT INTO `system_config` VALUES ('39', 'wechat_appsecret', 'a041bec98ed015d52b99acea5c6a16ef');
INSERT INTO `system_config` VALUES ('40', 'wechat_encodingaeskey', 'BJIUzE0gqlWy0GxfPp4J1oPTBmOrNDIGPNav1YFH5Z5');
INSERT INTO `system_config` VALUES ('41', 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('42', 'wechat_thr_appkey', '05db2aa335382c66ab56d69b1a9ad0ee');
INSERT INTO `system_config` VALUES ('43', 'Title', '中国外贸家是外贸B2B交易服务平台-中国外贸家官网是外贸B2B全新模式');
INSERT INTO `system_config` VALUES ('44', 'kewords', '百佳荟,中国外贸家,外贸B2B平台,外贸平台,外贸网站');
INSERT INTO `system_config` VALUES ('45', 'description', '中国外贸家着力打造外贸B2B领域全新模式的平台，以卓越的市场前瞻力和技术创新力推动中国互联网产业的发展，{:sysconf(\'site_name\')}目前已经打造并且投入运营重点项目“中国外贸家”平台.中国外贸家是以三位一体的全球贸易B2B交易服务平台,跟着中国外贸家,简单做外贸.');
INSERT INTO `system_config` VALUES ('46', 'email', 'rc@kingwaytrades.com');
INSERT INTO `system_config` VALUES ('47', 'wechat_img', '');
INSERT INTO `system_config` VALUES ('48', 'phone', '400-800-1085');
INSERT INTO `system_config` VALUES ('49', 'weibo', '101111');
INSERT INTO `system_config` VALUES ('50', 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES ('51', 'storage_qiniu_is_https', 'http');
INSERT INTO `system_config` VALUES ('52', 'site_name_en', 'Baijiahui');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-08 16:22:42');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 16:26:13');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 16:26:26');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-08 16:26:53');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-18 08:53:37');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-18 09:33:21');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:34:10');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:36:49');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:37:10');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:39:58');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:41:24');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:41:52');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:42:49');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-04-18 09:43:03');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:14:09');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:15:20');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:16:01');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:16:29');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:17:03');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:17:16');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:17:39');
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:17:51');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:17:54');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-04-18 16:19:28');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-19 09:00:08');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-04-23 11:05:30');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-08 08:38:51');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-10 09:59:51');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-23 18:54:10');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-25 14:32:44');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-25 15:17:10');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:21:53');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:56:04');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 17:58:30');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:59:02');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 18:00:24');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 18:00:34');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 18:00:45');
INSERT INTO `system_log` VALUES ('39', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 18:01:15');
INSERT INTO `system_log` VALUES ('40', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-05-26 18:05:14');
INSERT INTO `system_log` VALUES ('41', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-27 10:16:35');
INSERT INTO `system_log` VALUES ('42', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-05-27 10:28:56');
INSERT INTO `system_log` VALUES ('43', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-27 12:03:00');
INSERT INTO `system_log` VALUES ('44', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-05-27 12:03:46');
INSERT INTO `system_log` VALUES ('45', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 08:19:16');
INSERT INTO `system_log` VALUES ('46', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-05-28 09:30:20');
INSERT INTO `system_log` VALUES ('47', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 15:17:51');
INSERT INTO `system_log` VALUES ('48', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 15:18:45');
INSERT INTO `system_log` VALUES ('49', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 19:43:38');
INSERT INTO `system_log` VALUES ('50', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 08:38:57');
INSERT INTO `system_log` VALUES ('51', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:43:30');
INSERT INTO `system_log` VALUES ('52', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 09:00:00');
INSERT INTO `system_log` VALUES ('53', '127.0.0.1', 'company/info/index', 'admin', '企业管理', '公司信息配置成功', '2018-05-30 09:21:35');
INSERT INTO `system_log` VALUES ('54', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-30 09:23:47');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '9000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('3', '10', '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', '20', '1', '10000', '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES ('4', '11', '访问授权', '', 'fa fa-group', 'admin/auth/index', '', '_self', '20', '1', '10000', '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES ('5', '11', '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '10', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('6', '11', '访问节点', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '30', '1', '0', '2018-01-23 12:36:54');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '1', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('8', '16', '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', '10', '1', '0', '2018-01-24 13:52:58');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '30', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', 'fa fa-scribd', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '访问权限', '', 'fa fa-anchor', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('16', '1', '日志管理', '', 'fa fa-hashtag', '#', '', '_self', '400', '1', '0', '2018-02-10 16:31:15');
INSERT INTO `system_menu` VALUES ('17', '0', '微信管理', '', '', '#', '', '_self', '8000', '1', '0', '2018-03-06 14:42:49');
INSERT INTO `system_menu` VALUES ('18', '17', '公众号配置', '', 'fa fa-cogs', '#', '', '_self', '0', '1', '0', '2018-03-06 14:43:05');
INSERT INTO `system_menu` VALUES ('19', '18', '微信授权绑定', '', 'fa fa-cog', 'wechat/config/index', '', '_self', '0', '1', '0', '2018-03-06 14:43:26');
INSERT INTO `system_menu` VALUES ('20', '18', '关注默认回复', '', 'fa fa-comment-o', 'wechat/keys/subscribe', '', '_self', '0', '1', '0', '2018-03-06 14:44:45');
INSERT INTO `system_menu` VALUES ('21', '18', '无反馈默认回复', '', 'fa fa-commenting', 'wechat/keys/defaults', '', '_self', '0', '1', '0', '2018-03-06 14:45:55');
INSERT INTO `system_menu` VALUES ('22', '18', '微信关键字管理', '', 'fa fa-hashtag', 'wechat/keys/index', '', '_self', '0', '1', '0', '2018-03-06 14:46:23');
INSERT INTO `system_menu` VALUES ('23', '17', '微信服务定制', '', 'fa fa-cubes', '#', '', '_self', '0', '1', '0', '2018-03-06 14:47:11');
INSERT INTO `system_menu` VALUES ('24', '23', '微信菜单管理', '', 'fa fa-gg-circle', 'wechat/menu/index', '', '_self', '0', '1', '0', '2018-03-06 14:47:39');
INSERT INTO `system_menu` VALUES ('25', '23', '微信图文管理', '', 'fa fa-map-o', 'wechat/news/index', '', '_self', '0', '1', '0', '2018-03-06 14:48:14');
INSERT INTO `system_menu` VALUES ('26', '17', '微信粉丝管理', '', 'fa fa-user', '#', '', '_self', '0', '1', '0', '2018-03-06 14:48:33');
INSERT INTO `system_menu` VALUES ('27', '26', '微信粉丝列表', '', 'fa fa-users', 'wechat/fans/index', '', '_self', '20', '1', '0', '2018-03-06 14:49:04');
INSERT INTO `system_menu` VALUES ('28', '26', '微信黑名单管理', '', 'fa fa-user-times', 'wechat/block/index', '', '_self', '30', '1', '0', '2018-03-06 14:49:22');
INSERT INTO `system_menu` VALUES ('29', '26', '微信标签管理', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', '10', '1', '0', '2018-03-06 14:49:39');
INSERT INTO `system_menu` VALUES ('30', '0', '企业管理', '', '', '#', '', '_self', '10000', '1', '0', '2018-04-18 10:01:51');
INSERT INTO `system_menu` VALUES ('35', '39', '导航管理', '', 'fa fa-fort-awesome', '/company/nav/index', '', '_self', '20', '1', '0', '2018-04-18 15:17:19');
INSERT INTO `system_menu` VALUES ('36', '39', '新闻管理', '', 'fa fa-reddit-alien', '/company/news/index', '', '_self', '50', '1', '0', '2018-04-18 15:18:05');
INSERT INTO `system_menu` VALUES ('38', '39', '新闻栏目管理', '', 'fa fa-heart', '/company/news_nav/index', '', '_self', '40', '1', '0', '2018-04-18 15:19:40');
INSERT INTO `system_menu` VALUES ('39', '30', '前台管理', '', 'fa fa-shopping-bag', '#', '', '_self', '0', '1', '0', '2018-04-18 15:20:35');
INSERT INTO `system_menu` VALUES ('40', '39', '幻灯片管理', '', 'fa fa-archive', '/company/slides/index', '', '_self', '30', '1', '0', '2018-04-18 15:21:42');
INSERT INTO `system_menu` VALUES ('41', '39', '相册管理', '', 'fa fa-asterisk', '/company/album/index', '', '_self', '60', '1', '0', '2018-04-18 15:24:35');
INSERT INTO `system_menu` VALUES ('42', '39', '招聘管理', '', 'fa fa-automobile', '/company/work/index', '', '_self', '70', '1', '0', '2018-04-18 15:25:47');
INSERT INTO `system_menu` VALUES ('43', '39', '留言管理', '', 'fa fa-bullhorn', '/company/message/index', '', '_self', '90', '1', '0', '2018-04-18 15:26:39');
INSERT INTO `system_menu` VALUES ('44', '39', '地址管理', '', 'fa fa-product-hunt', '/company/address/index', '', '_self', '80', '1', '0', '2018-04-18 15:28:19');
INSERT INTO `system_menu` VALUES ('45', '39', '网站管理', '', 'fa fa-codiepie', '/company/info/index', '', '_self', '10', '1', '0', '2018-04-18 15:29:52');
INSERT INTO `system_menu` VALUES ('46', '39', '合作管理', '', 'fa fa-shopping-basket', '/company/partner/index', '', '_self', '100', '1', '0', '2018-04-18 15:57:11');
INSERT INTO `system_menu` VALUES ('47', '39', '产品分类管理', '', 'fa fa-automobile', '/company/project_type/index', '', '_self', '51', '1', '0', '2018-05-28 08:27:25');
INSERT INTO `system_menu` VALUES ('48', '39', '产品管理', '', 'fa fa-headphones', '/company/project/index', '', '_self', '52', '1', '0', '2018-05-28 08:28:03');

-- ----------------------------
-- Table structure for system_node
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('1', 'admin', '系统管理', '0', '1', '1', '2018-01-23 12:39:13');
INSERT INTO `system_node` VALUES ('2', 'admin/auth', '权限管理', '0', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('3', 'admin/auth/index', '权限列表', '1', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('4', 'admin/auth/apply', '访问授权', '0', '1', '1', '2018-01-23 12:39:19');
INSERT INTO `system_node` VALUES ('5', 'admin/auth/add', '添加权限', '0', '1', '1', '2018-01-23 12:39:22');
INSERT INTO `system_node` VALUES ('6', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('7', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('8', 'admin/auth/resume', '启用权限', '0', '1', '1', '2018-01-23 12:39:24');
INSERT INTO `system_node` VALUES ('9', 'admin/auth/del', '删除权限', '0', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('10', 'admin/config/index', '系统参数', '1', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('11', 'admin/config/file', '文件存储', '0', '1', '1', '2018-01-23 12:39:26');
INSERT INTO `system_node` VALUES ('13', 'admin/log/index', '日志记录', '1', '1', '1', '2018-01-23 12:39:28');
INSERT INTO `system_node` VALUES ('14', 'admin/log/sms', '短信记录', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('15', 'admin/log/del', '日志删除', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('16', 'admin/menu/index', '系统菜单列表', '1', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('17', 'admin/menu/add', '添加系统菜单', '0', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('18', 'admin/menu/edit', '编辑系统菜单', '0', '1', '1', '2018-01-23 12:39:32');
INSERT INTO `system_node` VALUES ('19', 'admin/menu/del', '删除系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('20', 'admin/menu/forbid', '禁用系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('21', 'admin/menu/resume', '启用系统菜单', '0', '1', '1', '2018-01-23 12:39:34');
INSERT INTO `system_node` VALUES ('22', 'admin/node/index', '系统节点列表', '1', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('23', 'admin/node/save', '保存节点信息', '0', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('24', 'admin/user/index', '系统用户列表', '1', '1', '1', '2018-01-23 12:39:37');
INSERT INTO `system_node` VALUES ('25', 'admin/user/auth', '用户授权操作', '0', '1', '1', '2018-01-23 12:39:38');
INSERT INTO `system_node` VALUES ('26', 'admin/user/add', '添加系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('27', 'admin/user/edit', '编辑系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('28', 'admin/user/pass', '修改用户密码', '0', '1', '1', '2018-01-23 12:39:40');
INSERT INTO `system_node` VALUES ('29', 'admin/user/del', '删除系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('30', 'admin/user/forbid', '禁用系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('31', 'admin/user/resume', '启用系统用户', '0', '1', '1', '2018-01-23 12:39:42');
INSERT INTO `system_node` VALUES ('32', 'admin/config', '系统配置', '0', '1', '1', '2018-01-23 13:34:37');
INSERT INTO `system_node` VALUES ('33', 'admin/log', '日志管理', '0', '1', '1', '2018-01-23 13:34:48');
INSERT INTO `system_node` VALUES ('34', 'admin/menu', '系统菜单管理', '0', '1', '1', '2018-01-23 13:34:58');
INSERT INTO `system_node` VALUES ('35', 'admin/node', '系统节点管理', '0', '1', '1', '2018-01-23 13:35:17');
INSERT INTO `system_node` VALUES ('36', 'admin/user', '系统用户管理', '0', '1', '1', '2018-01-23 13:35:26');
INSERT INTO `system_node` VALUES ('37', 'wechat', '微信管理', '0', '1', '1', '2018-02-06 11:53:21');
INSERT INTO `system_node` VALUES ('38', 'wechat/config', '公众号对接', '0', '1', '1', '2018-02-06 11:53:32');
INSERT INTO `system_node` VALUES ('39', 'wechat/config/index', '公众号对接', '1', '1', '1', '2018-02-06 11:53:32');
INSERT INTO `system_node` VALUES ('45', 'wechat/block', '黑名单', '0', '1', '1', '2018-03-06 14:37:37');
INSERT INTO `system_node` VALUES ('46', 'wechat/block/index', '黑名单列表', '1', '1', '1', '2018-03-06 14:37:47');
INSERT INTO `system_node` VALUES ('47', 'wechat/block/backdel', '移出黑名单', '0', '1', '1', '2018-03-06 14:37:49');
INSERT INTO `system_node` VALUES ('48', 'wechat/fans', '粉丝管理', '0', '1', '1', '2018-03-06 14:38:06');
INSERT INTO `system_node` VALUES ('49', 'wechat/fans/index', '粉丝列表', '1', '1', '1', '2018-03-06 14:38:25');
INSERT INTO `system_node` VALUES ('50', 'wechat/fans/backadd', '移入黑名单', '0', '1', '1', '2018-03-06 14:38:35');
INSERT INTO `system_node` VALUES ('51', 'wechat/fans/tagset', '标签设置', '0', '1', '1', '2018-03-06 14:38:36');
INSERT INTO `system_node` VALUES ('52', 'wechat/fans/tagadd', '添加标签', '0', '1', '1', '2018-03-06 14:38:37');
INSERT INTO `system_node` VALUES ('53', 'wechat/fans/tagdel', '删除标签', '0', '1', '1', '2018-03-06 14:38:38');
INSERT INTO `system_node` VALUES ('54', 'wechat/fans/sync', '同步粉丝', '0', '1', '1', '2018-03-06 14:38:38');
INSERT INTO `system_node` VALUES ('55', 'wechat/keys', '关键字管理', '0', '1', '1', '2018-03-06 14:39:21');
INSERT INTO `system_node` VALUES ('56', 'wechat/keys/index', '关键字列表', '1', '1', '1', '2018-03-06 14:39:25');
INSERT INTO `system_node` VALUES ('57', 'wechat/keys/add', '添加关键字', '0', '1', '1', '2018-03-06 14:39:27');
INSERT INTO `system_node` VALUES ('58', 'wechat/keys/edit', '编辑关键字', '0', '1', '1', '2018-03-06 14:39:28');
INSERT INTO `system_node` VALUES ('59', 'wechat/keys/del', '删除关键字', '0', '1', '1', '2018-03-06 14:39:42');
INSERT INTO `system_node` VALUES ('60', 'wechat/keys/forbid', '禁用关键字', '0', '1', '1', '2018-03-06 14:39:55');
INSERT INTO `system_node` VALUES ('61', 'wechat/keys/resume', '启用关键字', '0', '1', '1', '2018-03-06 14:40:01');
INSERT INTO `system_node` VALUES ('62', 'wechat/keys/subscribe', '关注默认回复', '1', '1', '1', '2018-03-06 14:40:12');
INSERT INTO `system_node` VALUES ('63', 'wechat/keys/defaults', '无反馈默认回复', '1', '1', '1', '2018-03-06 14:40:27');
INSERT INTO `system_node` VALUES ('64', 'wechat/menu', '微信菜单管理', '0', '1', '1', '2018-03-06 14:40:37');
INSERT INTO `system_node` VALUES ('65', 'wechat/menu/index', '微信菜单管理', '1', '1', '1', '2018-03-06 14:40:41');
INSERT INTO `system_node` VALUES ('66', 'wechat/menu/edit', '编辑发布菜单', '0', '1', '1', '2018-03-06 14:40:53');
INSERT INTO `system_node` VALUES ('67', 'wechat/menu/cancel', '取消发布菜单', '0', '1', '1', '2018-03-06 14:41:01');
INSERT INTO `system_node` VALUES ('68', 'wechat/news', '图文内容管理', '0', '1', '1', '2018-03-06 14:41:13');
INSERT INTO `system_node` VALUES ('69', 'wechat/news/index', '图文内容管理', '1', '1', '1', '2018-03-06 14:41:20');
INSERT INTO `system_node` VALUES ('70', 'wechat/news/select', '图文选择器', '0', '1', '1', '2018-03-06 14:41:22');
INSERT INTO `system_node` VALUES ('71', 'wechat/news/image', '图文选择器', '0', '1', '1', '2018-03-06 14:41:22');
INSERT INTO `system_node` VALUES ('72', 'wechat/news/add', '添加图文', '0', '1', '1', '2018-03-06 14:41:23');
INSERT INTO `system_node` VALUES ('73', 'wechat/news/del', '删除图文', '0', '1', '1', '2018-03-06 14:41:23');
INSERT INTO `system_node` VALUES ('74', 'wechat/news/push', '推荐图文', '0', '1', '1', '2018-03-06 14:41:24');
INSERT INTO `system_node` VALUES ('75', 'wechat/news/edit', '编辑图文', '0', '1', '1', '2018-03-06 14:41:25');
INSERT INTO `system_node` VALUES ('76', 'wechat/tags', '标签管理', '0', '1', '1', '2018-03-06 14:42:06');
INSERT INTO `system_node` VALUES ('77', 'wechat/tags/index', '标签列表', '1', '1', '1', '2018-03-06 14:42:09');
INSERT INTO `system_node` VALUES ('78', 'wechat/tags/add', '添加标签', '0', '1', '1', '2018-03-06 14:42:14');
INSERT INTO `system_node` VALUES ('79', 'wechat/tags/edit', '编辑标签', '0', '1', '1', '2018-03-06 14:42:17');
INSERT INTO `system_node` VALUES ('80', 'wechat/tags/del', '删除标签', '0', '1', '1', '2018-03-06 14:42:20');
INSERT INTO `system_node` VALUES ('81', 'wechat/tags/sync', '同步标签', '0', '1', '1', '2018-03-06 14:42:23');
INSERT INTO `system_node` VALUES ('229', 'admin/node/clear', '清理无效记录', '0', '1', '1', '2018-03-09 12:24:31');
INSERT INTO `system_node` VALUES ('230', 'company/address/index', '', '1', '1', '1', '2018-05-26 17:59:14');
INSERT INTO `system_node` VALUES ('231', 'company/address/add', '', '0', '1', '1', '2018-05-26 17:59:15');
INSERT INTO `system_node` VALUES ('232', 'company/address/edit', '', '0', '1', '1', '2018-05-26 17:59:15');
INSERT INTO `system_node` VALUES ('233', 'company/address/del', '', '0', '1', '1', '2018-05-26 17:59:15');
INSERT INTO `system_node` VALUES ('234', 'company/album/edit', '', '0', '1', '1', '2018-05-26 17:59:19');
INSERT INTO `system_node` VALUES ('235', 'company/album/index', '', '1', '1', '1', '2018-05-26 17:59:19');
INSERT INTO `system_node` VALUES ('236', 'company/album/del', '', '0', '1', '1', '2018-05-26 17:59:19');
INSERT INTO `system_node` VALUES ('237', 'company/album/add', '', '0', '1', '1', '2018-05-26 17:59:20');
INSERT INTO `system_node` VALUES ('238', 'company/collaborate/add', '', '0', '1', '1', '2018-05-26 17:59:21');
INSERT INTO `system_node` VALUES ('239', 'company/collaborate/index', '', '1', '1', '1', '2018-05-26 17:59:21');
INSERT INTO `system_node` VALUES ('240', 'company/collaborate/del', '', '0', '1', '1', '2018-05-26 17:59:22');
INSERT INTO `system_node` VALUES ('241', 'company/collaborate/edit', '', '0', '1', '1', '2018-05-26 17:59:22');
INSERT INTO `system_node` VALUES ('242', 'company/info/index', '', '1', '1', '1', '2018-05-26 17:59:22');
INSERT INTO `system_node` VALUES ('243', 'company/message/del', '', '0', '1', '1', '2018-05-26 17:59:25');
INSERT INTO `system_node` VALUES ('244', 'company/message/index', '', '1', '1', '1', '2018-05-26 17:59:25');
INSERT INTO `system_node` VALUES ('245', 'company/message/add', '', '0', '1', '1', '2018-05-26 17:59:25');
INSERT INTO `system_node` VALUES ('246', 'company/message/edit', '', '0', '1', '1', '2018-05-26 17:59:26');
INSERT INTO `system_node` VALUES ('247', 'company/nav/add', '', '0', '1', '1', '2018-05-26 17:59:27');
INSERT INTO `system_node` VALUES ('248', 'company/nav/del', '', '0', '1', '1', '2018-05-26 17:59:27');
INSERT INTO `system_node` VALUES ('249', 'company/nav/index', '', '1', '1', '1', '2018-05-26 17:59:27');
INSERT INTO `system_node` VALUES ('250', 'company/nav/edit', '', '0', '1', '1', '2018-05-26 17:59:27');
INSERT INTO `system_node` VALUES ('251', 'company/news/add', '', '0', '1', '1', '2018-05-26 17:59:30');
INSERT INTO `system_node` VALUES ('252', 'company/news/index', '', '1', '1', '1', '2018-05-26 17:59:30');
INSERT INTO `system_node` VALUES ('253', 'company/news/edit', '', '0', '1', '1', '2018-05-26 17:59:30');
INSERT INTO `system_node` VALUES ('254', 'company/news/select', '', '0', '1', '1', '2018-05-26 17:59:30');
INSERT INTO `system_node` VALUES ('255', 'company/news/del', '', '0', '1', '1', '2018-05-26 17:59:31');
INSERT INTO `system_node` VALUES ('256', 'company/news/getnewsbyid', '', '0', '1', '1', '2018-05-26 17:59:31');
INSERT INTO `system_node` VALUES ('257', 'company/newsnav/index', '', '1', '1', '1', '2018-05-26 18:00:04');
INSERT INTO `system_node` VALUES ('258', 'company/newsnav/edit', '', '0', '1', '1', '2018-05-26 18:00:04');
INSERT INTO `system_node` VALUES ('259', 'company/newsnav/add', '', '0', '1', '1', '2018-05-26 18:00:04');
INSERT INTO `system_node` VALUES ('260', 'company/newsnav/del', '', '0', '1', '1', '2018-05-26 18:00:04');
INSERT INTO `system_node` VALUES ('261', 'company/slides/edit', '', '0', '1', '1', '2018-05-26 18:00:07');
INSERT INTO `system_node` VALUES ('262', 'company/slides/del', '', '0', '1', '1', '2018-05-26 18:00:08');
INSERT INTO `system_node` VALUES ('263', 'company/slides/index', '', '1', '1', '1', '2018-05-26 18:00:08');
INSERT INTO `system_node` VALUES ('264', 'company/slides/add', '', '0', '1', '1', '2018-05-26 18:00:08');
INSERT INTO `system_node` VALUES ('265', 'company/work/del', '', '0', '1', '1', '2018-05-26 18:00:12');
INSERT INTO `system_node` VALUES ('266', 'company/work/add', '', '0', '1', '1', '2018-05-26 18:00:12');
INSERT INTO `system_node` VALUES ('267', 'company/work/edit', '', '0', '1', '1', '2018-05-26 18:00:12');
INSERT INTO `system_node` VALUES ('268', 'company/work/index', '', '1', '1', '1', '2018-05-26 18:00:12');
INSERT INTO `system_node` VALUES ('269', 'company', '', '0', '1', '1', '2018-05-26 18:02:29');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`) USING BTREE,
  KEY `index_system_sequence_number` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '21232f297a57a5a743894a0e4a801fc3', '22222222', '1198952901@qq.com', '17805858309', '', '23296', '2018-03-23 17:05:40', '1', '2,4', '0', null, '2015-11-13 15:14:22');

-- ----------------------------
-- Table structure for wechat_fans
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans`;
CREATE TABLE `wechat_fans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT '' COMMENT '公众号Appid',
  `unionid` char(100) DEFAULT '' COMMENT 'unionid',
  `openid` char(100) DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) DEFAULT '' COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL COMMENT '推荐时间',
  `tagid_list` varchar(100) DEFAULT '' COMMENT '标签id',
  `is_black` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) unsigned DEFAULT '0' COMMENT '用户是否关注该公众号(0:未关注, 1:已关注)',
  `nickname` varchar(200) DEFAULT '' COMMENT '用户的昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) DEFAULT '' COMMENT '用户所在国家',
  `province` varchar(50) DEFAULT '' COMMENT '用户所在省份',
  `city` varchar(50) DEFAULT '' COMMENT '用户所在城市',
  `language` varchar(50) DEFAULT '' COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) DEFAULT '' COMMENT '用户头像',
  `subscribe_time` bigint(20) unsigned DEFAULT '0' COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `remark` varchar(50) DEFAULT '' COMMENT '备注',
  `expires_in` bigint(20) unsigned DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) DEFAULT '' COMMENT '刷新token',
  `access_token` varchar(200) DEFAULT '' COMMENT '访问token',
  `subscribe_scene` varchar(200) DEFAULT '' COMMENT '扫码关注场景',
  `qr_scene` varchar(100) DEFAULT '' COMMENT '二维码场景值',
  `qr_scene_str` varchar(200) DEFAULT '' COMMENT '二维码场景内容',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  KEY `index_wechat_fans_openid` (`openid`) USING BTREE,
  KEY `index_wechat_fans_unionid` (`unionid`) USING BTREE,
  KEY `index_wechat_fans_is_back` (`is_black`) USING BTREE,
  KEY `index_wechat_fans_subscribe` (`subscribe`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信粉丝';

-- ----------------------------
-- Records of wechat_fans
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_fans_tags
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans_tags`;
CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) unsigned DEFAULT NULL COMMENT '总数',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信会员标签';

-- ----------------------------
-- Records of wechat_fans_tags
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_keys
-- ----------------------------
DROP TABLE IF EXISTS `wechat_keys`;
CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `news_id` bigint(20) unsigned DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '0 禁用，1 启用',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_keys_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信关键字';

-- ----------------------------
-- Records of wechat_keys
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text NOT NULL COMMENT '文字内容',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_menu_pindex` (`pindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信菜单配置';

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news`;
CREATE TABLE `wechat_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT '' COMMENT '关联图文ID，用，号做分割',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '是否删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_news_artcle_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信图文表';

-- ----------------------------
-- Records of wechat_news
-- ----------------------------
INSERT INTO `wechat_news` VALUES ('1', '', '', '5', '1', '2018-05-25 15:01:00', '10000');

-- ----------------------------
-- Table structure for wechat_news_article
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_article`;
CREATE TABLE `wechat_news_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '' COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) unsigned DEFAULT '0' COMMENT '是否显示封面 0不显示，1 显示',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `digest` varchar(300) DEFAULT '' COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT '' COMMENT '图文消息原文地址',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_article
-- ----------------------------
INSERT INTO `wechat_news_article` VALUES ('5', '中国外贸家新员工拓展训练，增强同事团队合作意识', 'http://company.znmya.com:8080/static/upload/2705b40fe19aff5d/0059158e093814e8.jpg', '1', '中国外贸家', '\n\n在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，\n\n&nbsp;\n\n\n\n&nbsp;\n', '<p><img alt=\"中国外贸家集体图片1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644463621817.jpg\" /></p>\n\n<p>在中国外贸家的组织下，全体新同事前往白龙潭拓展训练基地进行了户外拓展活动。整队、分组、选队长、起队名、画队旗，很快&ldquo;先锋队&rdquo;队和&ldquo;赤焰队&rdquo;队就诞生了，</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"先锋队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644577857504.jpg\" /><img alt=\"赤焰队集体照.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524644587473215.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>大家纷纷喊着各自队伍的口号，以饱满的热情投入到了接下来的活动中。</p>\n\n<p>拓展训练共举行了破冰组建、激情节拍、鼓动人心、有轨电车、呼吸的力量和孤岛求生多个项目。</p>\n\n<p>破冰组建这个项目是打破人与人之间的间隔和拘谨，改变同事的常规心态和惯性思维，释放同事内向的激情，创造同事融入情景的集体氛围，从而提高同事对项目体验的积极心态和参与度。</p>\n\n<p>激情节拍是拓展训练比较有魅力的项目，它让先锋队和赤焰队的同事瞬间进入团队氛围，激发热情，协调一致，快速的完成任务。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645073884222.jpg\" /><img alt=\"赤焰队激情节拍.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645085800023.jpg\" /></p>\n\n<p>半天的拓展活动在不知不觉中很快就过去了，大家似乎意犹未尽，当教练问起大家：今天最大的感受是什么时，大家异口同声的回答道：我们是最优秀的团队！</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"鼓动人心.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645135912306.jpg\" /><img alt=\"鼓动人心1.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645143919284.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　活动结束后，大家欢聚一堂，有说有笑，团结一致，这是一个极为优秀的外贸团队，该克服了各种困难与挑战，创造了一个又一个奇迹。</p>\n\n<p>经过之前的拓展训练，大家纷纷意识到了团队合作的重要性，彼此的心更加贴近，感情也更加深厚，纷纷敞开心门，畅所欲言，讲述自己的过往，倾听同伴的心声，现场的气氛也越来越融洽。</p>\n\n<p><img alt=\"放松.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645166257985.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;拓展培训是养团队意识、团队合作等，正是这一次的拓展训练，使我受益匪浅，终生难忘。体会最深的有以下几点：</p>\n\n<p>　　一、明确责任，落实分工极其重要。每个人的岗位职责确定之后，各司其职，有利于明确责任，发挥个体的主观能动性，使其既知道自己应该做什么，又思考怎样做好。在做集体拓展项目时，每个人开始尚能听着队长安排，但后来有些混乱。因此，在具体工作中，我们要明确分工、落实责任，坚决杜绝&ldquo;政出多门&rdquo;和&ldquo;首尾失顾&rdquo;的现象。</p>\n\n<p>　　二、做事要先做计划，再开展行动。在做活动项目时，大家并没有先急于去做，而是每个人先找好自己的位置和思考自己的要做的事情，事实充分论证，项目一举通过。所以，在现实工作中，我们做任何事情，都需要有一个明确的目标，只有明确了前进的方向和最终需要达到的结果，才能确定过程中所要采取的方法与步骤。所以，只有规划好全局的目标和方向，我们才会事半功倍。</p>\n\n<p>　　三、应学会遇到问题换位思考。在工作中，我们要看到差异、容纳差异、协调差异、利用差异，在差异中取长补短，不要为表面的现象所困扰，有些印象其实是主观的臆想，需要你的耐心和智慧，通过分析、判断，充分了解它的本质，通过组织、协调达到目标，通过沟通交流，才能建立多赢的局面。</p>\n\n<p>　　四、知识和技能还只是有形的资本，意志和精神则是无形的力量。拓展训练的项目对人的体能的要求并不高，更多的则是对心理的挑战。因此有人形象地称它是&ldquo;小游戏、大道理&rdquo;。更确切地说，拓展是一种感悟和体验，是一种考验人的意志和智慧、挖掘人的潜能和培养团队协作精神的运动。它的每一项让每个人在心灵和精神上都有一个新的超越，重新认识自我、认识生命的活动。在拓展训练中，使我懂得应该怎样在逆境中求生存，更使我明白了一个人的能力有限，意志和精神的力量是无限的。</p>\n\n<p>五、团队需要核心和灵魂。没有灵魂的团队，就像盘散沙，不可想象。几个集体项目如果没有人指挥，没有简单的谋划，没有人付出和奉献，在有限的时间里将如何去完成？工作中又何尝不是如此呢？团队不仅仅是几个人，几十个人，甚至几百个人，几千个人站在一起就能称为团队，而且在团队中还需要成员之间的团结，协作和默契，相互的信任等一系列诸多因素的集合，才能称为团队。　　</p>\n\n<p>六、相互信任是团队建设的基石，离开信任的团队是松散的团队，是毫无战斗力的团队，建立一支相互信任的团队，比任何激励都重要。在&ldquo;呼吸的力量&rdquo;项目中，</p>\n\n<p><img alt=\"呼吸的力量.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645197150118.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>最能证明这一点，每个人沟通，信任的执行，配合好才能完成任务。</p>\n\n<p>七、学会沟通和理解。语言的沟通胜过任何肢体的表达。日常生活和工作中，我们需要沟通和理解，也需要相互配合和协调，只有形成力量的整合才能完成共同的任务。在工作中，我们面对各种问题与事情时，若能及时沟通，减少隔阂，减少矛盾，多些理解，多些支持，就会避免诸多不必要的麻烦。</p>\n\n<p><img alt=\"知识总结.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645223239683.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>八、懂得摆正自己的位置。在团队中既要发挥自己的长处与智慧，同时也要懂得自己优缺点。其身不正，无以自立。因此，在日常工作与学习中，我们要摆正自己的位置，不要提早给自己设限，也不要给自己戴高帽，我们要善于正视自己，摆正位置，善于挖掘自身潜力，善于脚踏实地、实实在在地做好本职工作。 拓展训练虽然结束了，但在训练中我们营造了团队氛围，培养了团队意识，同时挑战了自己。这次拓展训练让我时刻提醒自己，要相信自己，时时保持积极进取的人生态度和团队合作精神！</p>\n\n<p><img alt=\"中国外贸家集体图片.jpg\" src=\"http://www.bestsuppliers.com.cn/neditor/php/upload/image/20180425/1524645256593030.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>　　在今后工作中，我们要把拓展训练中的经验运用到实际工作中去，用拓展了的心灵、激情和意志重新面对崭新的每一天，面对每一项工作任务，我们要做的更好，一方面会根据全球采购商的需求挖掘和整合最佳的中国供应商资源，利用互联网+帮助全球采购商找到中国最佳供应商，采购到优质的中国制造产品;另一方面依靠专业的海外推广能力和外贸服务能力，解决中国制造企业海外推广难和外贸交易难的问题，帮助中国制造企业将优质产品销往全球，拓展海外市场。</p>\n\n<p>&ldquo;中国外贸家&ldquo;以&rdquo;让天下没有做不成的生意&ldquo;为使命，让中国制造企业更简单高效地参与全球采购，直达目标市场。</p>', '', '2018-05-25 15:01:00', '10000');

-- ----------------------------
-- Table structure for wechat_news_image
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_image`;
CREATE TABLE `wechat_news_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_news_image_md5` (`md5`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信服务器图片';

-- ----------------------------
-- Records of wechat_news_image
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_news_media
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_media`;
CREATE TABLE `wechat_news_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) DEFAULT '' COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `type` varchar(20) DEFAULT '' COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_media
-- ----------------------------
