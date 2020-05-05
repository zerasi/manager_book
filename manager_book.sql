/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : manager_book

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2020-05-05 21:55:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_comments
-- ----------------------------
DROP TABLE IF EXISTS `cms_comments`;
CREATE TABLE `cms_comments` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `table_name` varchar(40) NOT NULL COMMENT '表名',
  `table_id` varchar(40) NOT NULL COMMENT '表编号',
  `comment_content` text NOT NULL COMMENT '评论内容',
  `comment_time` varchar(40) DEFAULT NULL COMMENT '评论时间',
  `comment_user` varchar(40) DEFAULT NULL COMMENT '评论用户',
  `parent_id` varchar(40) DEFAULT NULL COMMENT '父级编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_comments
-- ----------------------------
INSERT INTO `cms_comments` VALUES ('4EA60C0B262F4999905D191468FCE6EA', 'db_items', '69C6F5A2485A4E408A3AF9C0C7CD064F', '很好看', '2020-03-29 16:58:40', 'test', null);
INSERT INTO `cms_comments` VALUES ('8015A4EA46804750AB463AEB3AC67E61', 'db_items', '69C6F5A2485A4E408A3AF9C0C7CD064F', '好看', '2019-04-07 17:22:47', 'test', null);
INSERT INTO `cms_comments` VALUES ('8015A4EA46804750AB463AEBCAC67E61', 'db_items', '69C6F5A2485A4E408A3AF9C0C7CD064F', '好看', '2019-04-06 17:22:47', '水里的鱼', null);
INSERT INTO `cms_comments` VALUES ('CD8F8FE78A874DB9ABB1A7D4C586A03F', 'db_items', '20267003F2C3455A8B0CEB608B5DAA70', '四大名著，超级好看', '2020-03-30 00:37:39', 'admin', null);

-- ----------------------------
-- Table structure for db_category
-- ----------------------------
DROP TABLE IF EXISTS `db_category`;
CREATE TABLE `db_category` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_category
-- ----------------------------
INSERT INTO `db_category` VALUES ('A927723B894B495E9C240CB6E85D6C2A', '文学小说', null);
INSERT INTO `db_category` VALUES ('DE91DDB043FE46518DBEBBD3414E52F1', '少儿读物', null);

-- ----------------------------
-- Table structure for db_items
-- ----------------------------
DROP TABLE IF EXISTS `db_items`;
CREATE TABLE `db_items` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `item_type` varchar(40) NOT NULL COMMENT '商品类型',
  `name` varchar(20) NOT NULL COMMENT '商品名称',
  `content` longtext NOT NULL COMMENT '商品描述',
  `image` varchar(100) DEFAULT NULL COMMENT '商品图片的存储路径',
  `createsite` varchar(20) DEFAULT NULL COMMENT '发布地点',
  `createtime` varchar(40) DEFAULT NULL COMMENT '发布时间',
  `audit_statue` varchar(255) DEFAULT NULL COMMENT '审核状态 1通过 0不通过',
  `onsell` varchar(10) DEFAULT NULL COMMENT '0下架 1上架\r\n',
  `downselftime` varchar(40) DEFAULT NULL COMMENT '下架时间',
  `updatetime` varchar(40) DEFAULT NULL COMMENT '更新时间',
  `belong_user` varchar(40) DEFAULT NULL COMMENT '所属用户',
  `rent_type` varchar(40) DEFAULT NULL COMMENT '租用状态',
  `rent_price` double DEFAULT NULL COMMENT '租金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_items
-- ----------------------------
INSERT INTO `db_items` VALUES ('021D1D6329EF4940AC4641535175CFD0', 'DE91DDB043FE46518DBEBBD3414E52F1', '少年探索发现系列(全5册)宇宙之谜', '<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">少年探索发现系列(全5册)宇宙之谜 地球之谜 世界之谜 海洋之谜 科学之谜 中小学生少儿科普书籍青少年版读物百科全书7-10-12-15岁</span></p>', '/upload/2020sharegoods/itemsImage/2020-03-29/3E30D92EC52C47439A0DA894DD1EDE61.jpg', '天津师范大学23号楼201', '2020-04-07 00:39:40', '1', '1', null, null, 'admin', '0', '20');
INSERT INTO `db_items` VALUES ('20267003F2C3455A8B0CEB608B5DAA70', 'A927723B894B495E9C240CB6E85D6C2A', '红楼梦', '<p>《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主思想的萌动。结构宏大、情节委婉、细节精致，人物形象栩栩如生，声口毕现，堪称中国古代小说中的经 典。\r\n由红楼梦研究所校注、人民文学出版社出版的《红楼梦》以庚辰（1760）本《脂砚斋重评石头记》为底本，以甲戌（1754）本、已卯（1759）本、蒙古王府本、戚蓼生序本、舒元炜序本、郑振铎藏本、红楼梦稿本、列宁格勒藏本（俄藏本）、程甲本、程乙本等众多版本为参校本，是一个博采众长、非常适合大众阅读的本子；同时，对底本的重要修改，皆出校记，读者可因以了解《红楼梦》的不同版本状况。\r\n红学所的校注本已印行二十五年，其间1994年曾做过一次修订，又十几年过去，2008年推出修订第三版，体现了新的校注成果和科研成果。\r\n关于《红楼梦》的作者，原本就有多种说法及推想，“前八十回曹雪芹著、后四十回高鹗续”的说法只是其中之一，这次修订中校注者改为“前八十回曹雪芹著；后四十回无名氏续，程伟元、高鹗整理”，应当是一种更科学的表述，体现了校注者对这一问题的新的认识。\r\n现在这个修订后的《红楼梦》是更加完善。</p>', '/upload/2020sharegoods/itemsImage/2020-03-29/719154AC3C9543ADBF14866202BCF42F.jpg', '北京市朝阳区计通大厦', '2020-03-29 19:30:09', '1', '1', null, null, 'admin', '0', '59.7');
INSERT INTO `db_items` VALUES ('28DE04053E964D0D809932FEB465CB3D', 'DE91DDB043FE46518DBEBBD3414E52F1', 'C程序设计语言', '<p>在计算机发展的历史上，没有哪一种程序设计语言像C语言这样应用广泛。本书原著即为C语言的设计者之一Dennis M.Ritchie和著名计算机科学家Brian W.Kernighan合著的一本介绍C语言的权威经典著作。我们现在见到的大量论述C语言程序设计的教材和专著均以此书为蓝本。原著第1版中介绍的C语言成为后来广泛使用的C语言版本——标准C的基础。人们熟知的“hello,World&quot;程序就是由本书首次引入的，现在，这一程序已经成为众多程序设计语言入门的第一课。\r\n原著第2版根据1987年制定的ANSIC标准做了适当的修订．引入了最新的语言形式，并增加了新的示例，通过简洁的描述、典型的示例，作者全面、系统、准确地讲述了C语言的各个特性以及程序设计的基本方法。对于计算机从业人员来说，《C程序设计语言》是一本必读的程序设计语 言方面的参考书。</p>', '/upload/2020sharegoods/itemsImage/2020-03-29/032FBE5EBF4F43619FE7108EE8AE94D5.jpg', '北京市朝阳区计通大厦', '2020-03-29 19:25:30', '1', '1', null, null, 'admin', '0', '30');
INSERT INTO `db_items` VALUES ('69C6F5A2485A4E408A3AF9C0C7CD064F', 'A927723B894B495E9C240CB6E85D6C2A', '战争与和平', '<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">世界二十大名著 全20册精装 世界文学名著战争与和平巴黎圣母院 童年在人间悲惨世</span></p>', '/upload/2020sharegoods/itemsImage/2020-03-29/F3D3F868102A498EAE113F23E3DD3A9A.jpg', '天津师范大学23号楼205', '2020-04-07 00:14:34', '1', '1', null, null, 'admin', '0', '30');
INSERT INTO `db_items` VALUES ('FE2E8E80BA144AC6A8E3E9A579137296', 'A927723B894B495E9C240CB6E85D6C2A', '川端康成：雪国（全新精装版）', '<p><span style=\"color: rgb(102, 102, 102); font-family: PingFang-SC-Regular, &quot;Microsoft Yahei&quot;, 微软雅黑, 冬青黑, 黑体; background-color: rgb(255, 255, 255);\">《川端康成：雪国（全新精装版）》包括诺贝尔奖获奖作《雪国》与川端康成经典作品《湖》。故事由驶往雪国的列车开始，窗外不停掠过的暮景，映着玻璃上照出的少女的双眸，扑朔迷离。舞蹈艺术研究者岛村前后三次前往白雪皑皑的北国山村，与当地的艺伎驹子，以及萍水相逢的少女叶子，陷入爱恋纠葛，簌簌落下的雪掩盖了一切爱与徒劳……</span><br/><span style=\"color: rgb(102, 102, 102); font-family: PingFang-SC-Regular, &quot;Microsoft Yahei&quot;, 微软雅黑, 冬青黑, 黑体; background-color: rgb(255, 255, 255);\">　　《川端康成：雪国（全新精装版）》是川端康成代表作，其间描绘的虚无之美、洁净之美与悲哀之美达到成熟，令人怦然心动，又惆怅不已。</span></p>', '/upload/2020sharegoods/itemsImage/2020-03-29/B01883F75635493299EA4C1BDD10ADBF.jpg', '天津师范大学23号楼206', '2020-04-07 08:40:16', '1', '1', null, null, 'admin', '0', '20');
INSERT INTO `db_items` VALUES ('FFBAB1F4079F49108A7CE65634489FBC', 'A927723B894B495E9C240CB6E85D6C2A', '简爱', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">幼小的简·爱寄养在舅父母家里。舅父里德先生去世后，简·爱过了10年倍受尽歧视和虐待的生活。舅母把她视作眼中钉，并把她和自己的孩子隔离开来，从此，她与舅母的对抗更加公开和坚决了，简被送进了罗沃德孤儿院。</span></p>', '/upload/2020sharegoods/itemsImage/2020-03-29/9301EDF4DAEE4306BE5FADF5CFCB3C68.jpg', '天津财经大学5号楼309', '2020-04-07 00:38:40', '1', '1', null, null, 'admin', '0', '100');

-- ----------------------------
-- Table structure for share_order_info
-- ----------------------------
DROP TABLE IF EXISTS `share_order_info`;
CREATE TABLE `share_order_info` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `item_id` varchar(40) NOT NULL COMMENT '商品编号',
  `user_id` varchar(40) NOT NULL COMMENT '用户编号',
  `order_time` varchar(40) NOT NULL COMMENT '订单时间',
  `rent_times` int(11) DEFAULT NULL COMMENT '租用时间',
  `should_back_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '截止归还时间',
  `is_back` varchar(20) DEFAULT NULL COMMENT '是否归还',
  `back_time` varchar(40) DEFAULT NULL COMMENT '归还时间',
  `is_comment` varchar(20) DEFAULT NULL,
  `is_report` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_order_info
-- ----------------------------
INSERT INTO `share_order_info` VALUES ('88B7CA498F294A078A6D3AA819F75986', '20267003F2C3455A8B0CEB608B5DAA70', 'sky', '2020-05-05 19:43:10', '1', null, '1', '2020-05-05 19:43:39', null, null);

-- ----------------------------
-- Table structure for share_to_report
-- ----------------------------
DROP TABLE IF EXISTS `share_to_report`;
CREATE TABLE `share_to_report` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `order_id` varchar(40) NOT NULL COMMENT '订单编号',
  `repot_user` varchar(40) NOT NULL COMMENT '举报用户',
  `report_content` text NOT NULL COMMENT '举报说明',
  `report_time` varchar(40) NOT NULL COMMENT '举报时间',
  `reporter` varchar(40) NOT NULL COMMENT '举报者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_to_report
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `notice_type` varchar(40) DEFAULT NULL COMMENT '通知类型',
  `content` longtext NOT NULL COMMENT '内容',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `publish_time` varchar(40) NOT NULL COMMENT '发布时间',
  `looks` int(11) NOT NULL COMMENT '查看次数',
  `notice_statue` varchar(40) DEFAULT NULL COMMENT '通知状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('530FD963ED254DB3946BF0E449B2A7BA', '图书共享系统上线啦', null, '图书共享系统上线啦，号外号外', 'admin', '2020-04-06 23:14:37', '0', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `role_type` varchar(64) DEFAULT NULL COMMENT '角色标识',
  `data_scores` varchar(100) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(10) DEFAULT NULL COMMENT '是否系统角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'sysadmin', '1', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` varchar(64) DEFAULT NULL COMMENT '角色',
  `is_block` varchar(10) DEFAULT NULL COMMENT '是否锁定',
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lend_point` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '1', '0', null, null, '130.82');
INSERT INTO `sys_user` VALUES ('14C712DCC716420E8D5A9EB32120F1F9', 'sky', 'sky', '2', '0', '13245677654', '123434@qq.com', '10.81');

-- ----------------------------
-- Table structure for user_ex
-- ----------------------------
DROP TABLE IF EXISTS `user_ex`;
CREATE TABLE `user_ex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usermine` varchar(255) DEFAULT NULL,
  `userto` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `bak1` varchar(255) DEFAULT NULL,
  `bak2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ex
-- ----------------------------

-- ----------------------------
-- Table structure for user_fav
-- ----------------------------
DROP TABLE IF EXISTS `user_fav`;
CREATE TABLE `user_fav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itId` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `bak1` varchar(255) DEFAULT NULL,
  `bak2` varchar(255) DEFAULT NULL,
  `bak3` varchar(255) DEFAULT NULL,
  `bak4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_fav
-- ----------------------------
INSERT INTO `user_fav` VALUES ('2', '20267003F2C3455A8B0CEB608B5DAA70', null, null, null, null, null);
INSERT INTO `user_fav` VALUES ('3', '20267003F2C3455A8B0CEB608B5DAA70', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_link
-- ----------------------------
DROP TABLE IF EXISTS `user_link`;
CREATE TABLE `user_link` (
  `usermine` varchar(255) NOT NULL,
  `userto` varchar(255) NOT NULL,
  `creattime` varchar(255) DEFAULT NULL,
  `bak1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usermine`,`userto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_link
-- ----------------------------
INSERT INTO `user_link` VALUES ('test', 'admin', '2020-03-30', '红楼梦');
