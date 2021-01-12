-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.32-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 shop 的数据库结构
CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shop`;

-- 导出  表 shop.car 结构
CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.car 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
REPLACE INTO `car` (`id`, `item_id`, `user_id`, `num`, `price`, `total`) VALUES
	(10, 27, 27, 1, 49.41, '49.41');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- 导出  表 shop.comment 结构
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.comment 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
REPLACE INTO `comment` (`id`, `user_id`, `item_id`, `content`, `addTime`) VALUES
	(7, 3, 35, '真的很不错', '2018-03-20 19:23:03'),
	(8, 3, 28, '真好吃', '2018-03-20 19:32:31'),
	(9, 67, 36, '1213123', '2020-12-20 14:59:07');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 导出  表 shop.item 结构
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `scNum` int(11) DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(11) DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `url3` varchar(255) DEFAULT NULL,
  `url4` varchar(255) DEFAULT NULL,
  `url5` varchar(255) DEFAULT NULL,
  `ms` text,
  `pam1` varchar(255) DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) DEFAULT NULL COMMENT '值1',
  `type` int(11) DEFAULT NULL,
  `zk` int(10) DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.item 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
REPLACE INTO `item` (`id`, `name`, `price`, `scNum`, `gmNum`, `url1`, `url2`, `url3`, `url4`, `url5`, `ms`, `pam1`, `pam2`, `pam3`, `val3`, `val2`, `val1`, `type`, `zk`, `category_id_one`, `category_id_two`, `isDelete`) VALUES
	(27, '山西运城新鲜水果苹果红富士', '54.9', 3, 14, '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/upload/3ca705602c1e11e865b6dc2da7582a7a1.jpg" title="" alt="1.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0),
	(28, '黄河古道安徽砀山红富士 丑苹果 不打蜡，无农药', '66.5', 5, 21, '\\test1_war_exploded\\resource\\ueditor\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/a730e2c02c1e11e865b6dc2da7582a7a1.jpg" title="" alt="1.jpg"/></p><p><img src="/test1_war_exploded/resource/ueditor/a93984002c1e11e865b6dc2da7582a7a2.png" title="" alt="2.png"/></p><p><br/></p><p><img src="/test1_war_exploded/resource/ueditor/upload/ab62cca02c1e11e865b6dc2da7582a7a3.jpg" title="" alt="3.jpg"/></p><p><img src="/test1_war_exploded/resource/ueditor/upload/ad2368602c1e11e865b6dc2da7582a7a4.png" title="" alt="4.png"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0),
	(29, '2017山东新鲜红富士苹果', '49.9', 2, 8, '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/29418c102c1f11e865b6dc2da7582a7a1.jpg" title="" alt="1.jpg"/></p><p><img src="/test1_war_exploded/resource/ueditor/upload/2bb683b02c1f11e865b6dc2da7582a7a2.jpg" title="" alt="2.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 75, 76, 0),
	(30, '陕西新鲜石榴现摘时令水果贵妃大石榴农家特产薄皮酸石榴', '85', 1, 7, '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/upload/d89212202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg" title=""/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0),
	(31, '【现货】蒙自甜石榴云南特产薄皮 新鲜水果9个装 单果4.5两左右', '36', 0, 3, '\\test1_war_exploded\\resource\\ueditor\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '<p>品牌名称：<span class="J_EbrandLogo" style="margin: 0px; padding: 0px; color: rgb(51, 51, 51);">绿养道</span></p><p class="attr-list-hd tm-clear" style="margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-weight: 700; float: left;">产品参数：</span></p><ul style="list-style-type: none;" class=" list-paddingleft-2"><li><p>厂名：绿养道农产品产销合作社</p></li><li><p>厂址：云南蒙自攀枝村花石榴园</p></li><li><p>厂家联系方式：13521676858</p></li><li><p>保质期：60 天</p></li><li><p>净含量:&nbsp;1900g</p></li><li><p>包装方式:&nbsp;包装</p></li><li><p>品牌:&nbsp;绿养道</p></li><li><p>售卖方式:&nbsp;单品</p></li><li><p>生鲜储存温度:&nbsp;8-15℃</p></li><li><p>热卖时间:&nbsp;1月&nbsp;2月&nbsp;8月&nbsp;9月&nbsp;10月&nbsp;11月&nbsp;12月</p></li><li><p>产地:&nbsp;中国大陆</p></li><li><p>省份:&nbsp;云南省</p></li><li><p>城市:&nbsp;红河哈尼族彝族自治州</p></li><li><p>特产品类:&nbsp;蒙自石榴</p></li><li><p>净含量:&nbsp;2.5kg(含）-5kg(不含)</p></li><li><p>价格:&nbsp;51-100元</p></li></ul><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 71, 72, 0),
	(32, '现货突尼斯软籽石榴2个超大果软子甜酸石榴新鲜水果非蒙自石榴', '99', 1, 14, '\\test1_war_exploded\\resource\\ueditor\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/upload/8bbe4bc02c2011e865b6dc2da7582a7a1.jpg" title="" alt="1.jpg"/><img src="/test1_war_exploded/resource/ueditor/upload/8d8947c02c2011e865b6dc2da7582a7a2.jpg" title="" alt="2.jpg"/></p><p><img src="/test1_war_exploded/resource/ueditor/upload/8fd310b02c2011e865b6dc2da7582a7a77.jpg" title="" alt="77.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0),
	(33, '荥阳突尼斯陈氏河阴软籽石榴软子新鲜水果非会理蒙自临潼甜新鲜', '80', 1, 0, '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/upload/dbbc33802c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg" title="" alt="TB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0),
	(34, '正宗陕西红心石榴水果新鲜', '85', 0, 5, '\\test1_war_exploded\\resource\\ueditor\\upload\\012eb0202c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\012f25502c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\012fc1902c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\013036c02c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\0130abf02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '<p><img src="/test1_war_exploded/resource/ueditor/upload/004f73b02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg" title="" alt="TB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0),
	(35, '新鲜油桃5斤 新鲜孕妇水果非水蜜桃黄桃毛桃子樱桃当季时令鲜果', '25', 1, 13, '/test1_war_exploded\\resource\\ueditor\\upload\\a4d9ef5042b211ebcd1b44ed858366483.png', '/test1_war_exploded\\resource\\ueditor\\upload\\a4db75f042b211ebcd1b44ed85836648', '/test1_war_exploded\\resource\\ueditor\\upload\\a4def86042b211ebcd1b44ed85836648', '/test1_war_exploded\\resource\\ueditor\\upload\\a4df1f7042b211ebcd1b44ed85836648', '/test1_war_exploded\\resource\\ueditor\\upload\\a4df468042b211ebcd1b44ed85836648', '<p><img src="/test1_war_exploded/resource/ueditor/upload/407173802c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg" title="" alt="TB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 73, 74, 0),
	(36, '现摘3斤 桃子水蜜桃 新鲜水果包邮脆桃硬桃现货新摘桃子非油桃黄', '89', 1, 17, '\\test1_war_exploded\\resource\\ueditor\\upload\\ac136c50429011eb2eb5513a8c9be71a', '\\test1_war_exploded\\resource\\ueditor\\upload\\ac139360429011eb2eb5513a8c9be71a', '/test1_war_exploded\\resource\\ueditor\\upload\\ac13e180429011eb2eb5513a8c9be71a', '/test1_war_exploded\\resource\\ueditor\\upload\\ac140890429011eb2eb5513a8c9be71a', '/test1_war_exploded\\resource\\ueditor\\upload\\ac142fa0429011eb2eb5513a8c9be71a', '<p><img src="/test1_war_exploded/resource/ueditor/upload/87d387902c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg" title="" alt="TB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 73, 74, 1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

-- 导出  表 shop.item_category 结构
CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.item_category 的数据：~21 rows (大约)
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
REPLACE INTO `item_category` (`id`, `name`, `pid`, `isDelete`) VALUES
	(50, ' 礼帽', 44, 1),
	(69, '梨', NULL, 0),
	(70, '湾里酥梨', 69, 0),
	(71, '石榴', NULL, 0),
	(72, '肖山御石榴', 71, 0),
	(73, '桃子', NULL, 0),
	(74, '史德镇御桃', 73, 0),
	(75, '苹果', NULL, 0),
	(76, '日本红富士', 75, 0),
	(77, '秦冠', 75, 0),
	(78, '嘎拉', 75, 1),
	(79, '黄元帅', 75, 0),
	(80, '菠菜', NULL, 0),
	(82, '哈密瓜', NULL, 0),
	(83, '新疆哈密瓜', 82, 0),
	(84, '大石榴', 71, 0),
	(85, '火龙果', NULL, 1),
	(86, '红心火龙果', 85, 1),
	(87, '白心火龙果', 85, 1),
	(88, '梨', NULL, 0),
	(89, '苹果', NULL, 1);
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;

-- 导出  表 shop.item_order 结构
CREATE TABLE IF NOT EXISTS `item_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `isDelete` int(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.item_order 的数据：~19 rows (大约)
/*!40000 ALTER TABLE `item_order` DISABLE KEYS */;
REPLACE INTO `item_order` (`id`, `item_id`, `user_id`, `code`, `addTime`, `total`, `isDelete`, `status`) VALUES
	(27, NULL, 3, '2020121817080001', '2020-12-18 17:08:56', '54.9', 0, 3),
	(28, NULL, 3, '2020121817380001', '2020-12-18 17:38:52', '653.59', 0, 3),
	(29, NULL, 3, '20201218017390001', '2020-12-18 17:39:28', '976.5', 0, 3),
	(30, NULL, 3, '2020121819220001', '2020-12-18 19:22:25', '364.5', 0, 3),
	(31, NULL, 3, '2020121819310001', '2020-12-18 19:31:23', '359.15999999999997', 0, 1),
	(32, NULL, 3, '2018032019310002', '2020-12-18 19:31:50', '59.86', 0, 3),
	(33, NULL, 18, '2020121708170001', '2020-12-17 08:17:30', '136.36', 0, 1),
	(34, NULL, 25, '2020121715520001', '2020-12-17 15:52:32', '310.14', 0, 2),
	(35, NULL, 27, '2020121810260001', '2020-12-18 10:26:54', '277.02', 0, 2),
	(36, NULL, 27, '2020121810270001', '2020-12-18 10:27:05', '39.93', 0, 2),
	(37, NULL, 27, '2020121810270002', '2020-12-18 10:27:17', '60.00', 0, 1),
	(38, NULL, 27, '2020121810510001', '2020-12-18 10:51:52', '237.57', 0, 2),
	(39, NULL, 63, '2020121910150001', '2020-12-19 10:15:51', '180.00', 0, 0),
	(40, NULL, 63, '2020121910160001', '2020-12-19 10:16:58', '564.06', 0, 2),
	(41, NULL, 65, '2020121914280001', '2020-12-19 14:28:49', '359.23', 0, 0),
	(42, NULL, 67, '2020122014550001', '2020-12-20 14:55:31', '600.00', 0, 3),
	(43, NULL, 68, '2020122020010001', '2020-12-20 20:01:08', '279.37', 0, 2),
	(44, NULL, 66, '2020122909250001', '2020-12-29 09:25:36', '75.60', 0, 0),
	(45, NULL, 66, '2020122909250002', '2020-12-29 09:25:57', '239.44', 0, 0);
/*!40000 ALTER TABLE `item_order` ENABLE KEYS */;

-- 导出  表 shop.manage 结构
CREATE TABLE IF NOT EXISTS `manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.manage 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
REPLACE INTO `manage` (`id`, `userName`, `passWord`, `realName`) VALUES
	(1, 'admin', '111111', '管理员');
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;

-- 导出  表 shop.message 结构
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.message 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
REPLACE INTO `message` (`id`, `name`, `phone`, `content`) VALUES
	(4, '咋整啊', '15211111111', '递四方速递发顺丰we\'lrkf'),
	(5, '啊啊啊', '13644444444', '书读百遍是大家发布v'),
	(6, '飞鸟', '13966666666', '发货慢死了！'),
	(7, '哈哈哈', '13655555555', '能快点发货吗？冬天买的，夏天到了？？？'),
	(8, '放你那呢', '13611111111', '每次收货都是非常愉快的，可是只要一想到还要给评价，头就大了。幸好万能的网友总结出来一套通用的网购模板，如果你是想看评论决定买不买这个宝贝，你可以打住了。因为我说的你不一定信，但是我自己却坚定不移的要给好评，为啥呢？我来评价下这个宝贝，价格不错，质量不错，快递不错，老板不错。'),
	(9, '大幅度', '13812223566', '先说商品质量：产品总体不错，包装严实。再说商家服务：点赞啦。最后点评快递：发货很快。其他就是感谢店家打折送券活动，毕竟便宜好货更实在。希望店家多多优惠，及时通知老客户，促成回购。祝生意兴隆。'),
	(10, '敦刻尔克', '13845678945', '在？退货能快点处理吗？');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- 导出  表 shop.news 结构
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.news 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
REPLACE INTO `news` (`id`, `name`, `content`, `addTime`) VALUES
	(3, '双十一', '<p style="margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal;widows: 1; background-color: rgb(255, 255, 255);">尊敬的用户您好：</p><p style="margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);">再见</p>', '2020-12-21 14:02:28'),
	(4, '双十二', '<p>《抓住我的手》——<a target="_blank" href="https://baike.baidu.com/item/IU/12013444" style="color: rgb(19, 110, 194); text-decoration-line: none;">IU</a></p><p>明明你也有感觉，明明你也在心动<br/>你要看眼色看到什么时候<br/>说出你的心不要再假装不知道<br/>就按照你心中所想<br/>就这样抓住我的手<br/>快点抓住我的手</p><p><br/></p>', '2020-12-21 15:02:28'),
	(5, '延迟发货', '<p style="margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal;widows: 1; background-color: rgb(255, 255, 255);">尊敬的用户您好： &nbsp;.</p><p style="margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; 受中秋、十一双节影响，目前订单量较大，订单发货预计延迟24小时左右，库房的小伙伴们已经在加班加点的发货啦~给您带来的不便，我们携全体小伙伴深表歉意，同时感谢您对我们的理解与支持！</p><p><br/></p>', '2020-12-21 14:02:37'),
	(8, '缺货', '<p>产品太火爆了&nbsp;</p>', '2020-12-19 11:13:28');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- 导出  表 shop.order_detail 结构
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.order_detail 的数据：~36 rows (大约)
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
REPLACE INTO `order_detail` (`id`, `item_id`, `order_id`, `status`, `num`, `total`) VALUES
	(54, 27, 27, 0, 1, '1'),
	(55, 32, 28, 0, 5, '25'),
	(56, 27, 28, 0, 3, '9'),
	(57, 28, 28, 0, 1, '1'),
	(58, 35, 29, 0, 2, '4'),
	(59, 34, 29, 0, 4, '16'),
	(60, 32, 29, 0, 3, '9'),
	(61, 36, 29, 0, 3, '9'),
	(62, 32, 29, 0, 2, '4'),
	(63, 35, 30, 0, 6, '36'),
	(64, 30, 30, 0, 3, '9'),
	(65, 28, 31, 0, 4, '16'),
	(66, 28, 31, 0, 2, '4'),
	(67, 28, 32, 0, 1, '1'),
	(68, 28, 33, 0, 1, '59.86'),
	(69, 34, 33, 0, 1, '76.5'),
	(70, 27, 34, 0, 4, '197.64'),
	(71, 35, 34, 0, 5, '112.5'),
	(72, 32, 35, 0, 2, '178.2'),
	(73, 27, 35, 0, 2, '98.82'),
	(74, 29, 36, 0, 1, '39.93'),
	(75, 36, 37, 0, 1, '60.0'),
	(76, 29, 38, 0, 1, '39.93'),
	(77, 27, 38, 0, 4, '197.64'),
	(78, 36, 39, 0, 3, '180.0'),
	(79, 32, 40, 0, 2, '178.2'),
	(80, 29, 40, 0, 2, '79.86'),
	(81, 30, 40, 0, 4, '306.0'),
	(82, 29, 41, 0, 3, '119.78999999999999'),
	(83, 28, 41, 0, 4, '239.44'),
	(84, 36, 42, 0, 6, '360.0'),
	(85, 36, 42, 0, 4, '240.0'),
	(86, 29, 43, 0, 1, '39.93'),
	(87, 28, 43, 0, 4, '239.44'),
	(88, 31, 44, 0, 3, '75.6'),
	(89, 28, 45, 0, 4, '239.44');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- 导出  表 shop.sc 结构
CREATE TABLE IF NOT EXISTS `sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.sc 的数据：~12 rows (大约)
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
REPLACE INTO `sc` (`id`, `item_id`, `user_id`) VALUES
	(17, 27, 3),
	(18, 28, 3),
	(19, 35, 25),
	(20, 28, 27),
	(21, 29, 27),
	(22, 27, 27),
	(23, 30, 27),
	(24, 32, 63),
	(26, 29, 63),
	(27, 28, 65),
	(28, 36, 67),
	(29, 28, 68);
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;

-- 导出  表 shop.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.user 的数据：~17 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `userName`, `passWord`, `phone`, `realName`, `sex`, `address`, `email`) VALUES
	(18, 'ma', '1234567', '13611111111', '马嘉祺', '男', '长江国际18楼', '13611111111@163.com'),
	(33, 'ding', '1234567', '13622222222', '丁程鑫', '男', '长江国际18楼', '13622222222@163.com'),
	(34, 'song', '1234567', '13633333333', '宋亚轩', '男', '长江国际18楼', '13633333333@163.com'),
	(35, 'liu', '1234567', '13644444444', '刘耀文', '男', '长江国际18楼', '13644444444@163.com'),
	(36, 'zhang', '1234567', '13655555555', '张真源', '男', '长江国际18楼', '13655555555@163.com'),
	(37, 'yan', '1234567', '13666666666', '严浩翔', '男', '长江国际18楼', '13666666666@163.com'),
	(38, 'he', '1234567', '13677777777', '贺峻霖', '男', '长江国际18楼', '13677777777@163.com'),
	(39, 'lifei', '1234567', '13811111110', '李飞', '男', '长江国际18楼', '13811111110@163.com'),
	(40, 'test1', '1234567', '13811111111', '测试1', '男', '长江国际18楼', '13811111111@163.com'),
	(41, 'test2', '1234567', '13811111112', '测试2', '男', NULL, '13811111112@163.com'),
	(42, 'test', '1234567', '13811111113', '测试3', '男', NULL, '13811111113@163.com'),
	(63, 'test1111', '1234567', '13812345678', '暖暖', '女', '苏州', '13622222222@163.com'),
	(64, '东方闪电', '1234567', '15369852222', NULL, NULL, NULL, '15369852222@163.com'),
	(65, '成都那边', '1234567', '13958746985', 'DDS', '男', '水电费附属设施所所', '13958746985@129.com'),
	(66, 'www', '1234567', '13966666666', '暖暖', '男', '复旦复华个', '13611111111@139.com'),
	(67, 'TTT', '11111111', '13655555555', '王铁柱', '男', '规划局', '13611111111@139.com'),
	(68, 'qqq', '1234567', '13689568956', '校长', '男', '复旦复华个', '13689568956@163.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
