/*
Navicat MySQL Data Transfer

Source Server         : lvpeng
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : juanpi-mall

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2022-10-08 09:31:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dt_address`
-- ----------------------------
DROP TABLE IF EXISTS `dt_address`;
CREATE TABLE `dt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `receiveName` varchar(10) NOT NULL,
  `receivePhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiveRegion` varchar(255) NOT NULL,
  `receiveDetail` varchar(255) NOT NULL,
  `isDefault` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_address_name` (`name`),
  CONSTRAINT `fk_address_name` FOREIGN KEY (`name`) REFERENCES `dt_user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_address
-- ----------------------------
INSERT INTO `dt_address` VALUES ('20', 'zhangsan', '李四a', '13999999999', '山东省 青岛市 城阳区 城阳街道', '', '1');
INSERT INTO `dt_address` VALUES ('32', 'zhangsan', '王五', '13888888888', '基材柑槈克格勃', '上的微软微软', '0');
INSERT INTO `dt_address` VALUES ('54', 'lvpeng', '刘馨泽', '15753309231', '山东省 淄博市 张店区', '尚文苑', '0');
INSERT INTO `dt_address` VALUES ('58', 'lvpeng', '吕晓妮', '15288788721', '江苏省 徐州市 鼓楼区', '九里街道 万科城', '0');
INSERT INTO `dt_address` VALUES ('73', 'user1', 'sadas', 'dasdsad', 'sadsa', 'asd', '1');
INSERT INTO `dt_address` VALUES ('87', 'lvpeng', '吕鹏大帅哥', '15288788721', '山东省 烟台市 蓬莱区', '11', '1');
INSERT INTO `dt_address` VALUES ('99', 'liuxinze', '刘馨泽', '15756609231', '山东省 淄博市 张店区', '尚文苑', '1');
INSERT INTO `dt_address` VALUES ('100', 'liuxinze', '刘馨泽', '15753309231', '河北省 秦皇岛市 北戴河区 抚宁区 青龙满族自治县', '尚文苑', '0');
INSERT INTO `dt_address` VALUES ('129', 'lvpeng', '劳业炟', '15288788721', '天津市 天津市 和平区 河东区', '2222', '0');
INSERT INTO `dt_address` VALUES ('139', 'lvpeng', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `dt_cart`
-- ----------------------------
DROP TABLE IF EXISTS `dt_cart`;
CREATE TABLE `dt_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_name` (`name`),
  KEY `fk_pid` (`pid`),
  CONSTRAINT `fk_name` FOREIGN KEY (`name`) REFERENCES `dt_user` (`name`),
  CONSTRAINT `fk_pid` FOREIGN KEY (`pid`) REFERENCES `dt_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_cart
-- ----------------------------
INSERT INTO `dt_cart` VALUES ('22', 'user1', '1', '2');
INSERT INTO `dt_cart` VALUES ('114', 'lvpeng', '21', '2');
INSERT INTO `dt_cart` VALUES ('115', 'lvpeng', '6', '1');
INSERT INTO `dt_cart` VALUES ('116', 'lvpeng', '12', '1');
INSERT INTO `dt_cart` VALUES ('117', 'lvpeng', '18', '1');
INSERT INTO `dt_cart` VALUES ('118', 'lvpeng', '11', '1');

-- ----------------------------
-- Table structure for `dt_category`
-- ----------------------------
DROP TABLE IF EXISTS `dt_category`;
CREATE TABLE `dt_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_category
-- ----------------------------
INSERT INTO `dt_category` VALUES ('1', '0', '新品', '/images/category/1.jpg');
INSERT INTO `dt_category` VALUES ('2', '0', '手机', '/images/category/2.jpg');
INSERT INTO `dt_category` VALUES ('3', '0', '笔记本', '/images/category/3.jpg');
INSERT INTO `dt_category` VALUES ('4', '0', '台显打印', '/images/category/4.jpg');
INSERT INTO `dt_category` VALUES ('5', '0', '平板', '/images/category/5.jpg');
INSERT INTO `dt_category` VALUES ('6', '0', '穿戴', '/images/category/6.jpg');
INSERT INTO `dt_category` VALUES ('7', '0', '耳机音箱', '/images/category/7.jpg');
INSERT INTO `dt_category` VALUES ('8', '0', '智慧屏', '/images/category/8.jpg');
INSERT INTO `dt_category` VALUES ('9', '0', '门锁路由', '/images/category/9.jpg');
INSERT INTO `dt_category` VALUES ('10', '0', '数码配件', '/images/category/10.jpg');
INSERT INTO `dt_category` VALUES ('11', '0', '华为智选', '/images/category/11.jpg');
INSERT INTO `dt_category` VALUES ('12', '0', '出行车品', '/images/category/12.jpg');
INSERT INTO `dt_category` VALUES ('13', '0', '甄选美酒', '/images/category/13.jpg');
INSERT INTO `dt_category` VALUES ('14', '0', '家用电器', '/images/category/14.jpg');
INSERT INTO `dt_category` VALUES ('15', '0', '智能家居', '/images/category/15.jpg');
INSERT INTO `dt_category` VALUES ('16', '0', '个护健康', '/images/category/16.jpg');
INSERT INTO `dt_category` VALUES ('17', '0', '生活旅行', '/images/category/17.jpg');
INSERT INTO `dt_category` VALUES ('18', '0', '教育玩具', '/images/category/18.jpg');
INSERT INTO `dt_category` VALUES ('19', '0', '影音娱乐', '/images/category/19.jpg');
INSERT INTO `dt_category` VALUES ('20', '0', '运动户外', '/images/category/20.jpg');
INSERT INTO `dt_category` VALUES ('21', '0', '医疗保健', '/images/category/21.jpg');
INSERT INTO `dt_category` VALUES ('22', '0', '华为服务', '/images/category/22.jpg');
INSERT INTO `dt_category` VALUES ('23', '0', '企业商用', '/images/category/23.jpg');
INSERT INTO `dt_category` VALUES ('24', '0', '良食好物', '/images/category/24.jpg');
INSERT INTO `dt_category` VALUES ('25', '1', '女士裙装', '/images/category/25.png');
INSERT INTO `dt_category` VALUES ('26', '1', '大衣外套', '/images/category/26.png');
INSERT INTO `dt_category` VALUES ('27', '1', '衬衫雪纺', '/images/category/27.png');
INSERT INTO `dt_category` VALUES ('28', '1', 'WATCH FIT 2 雅致款', '/images/category/28.png');
INSERT INTO `dt_category` VALUES ('29', '1', 'WATCH FIT 2  活力款', '/images/category/29.png');
INSERT INTO `dt_category` VALUES ('30', '1', 'WATCH FIT 2  时尚款', '/images/category/30.png');
INSERT INTO `dt_category` VALUES ('31', '1', 'WATCH FIT mini 摩卡棕', '/images/category/31.png');
INSERT INTO `dt_category` VALUES ('32', '1', 'WATCH FIT mini 凝霜白', '/images/category/32.png');
INSERT INTO `dt_category` VALUES ('33', '1', 'WATCH FIT mini 香芋紫', '/images/category/33.png');
INSERT INTO `dt_category` VALUES ('34', '1', '华为路由 Q6', '/images/category/34.png');
INSERT INTO `dt_category` VALUES ('35', '1', '华为随行WIFI 3 Pro', '/images/category/35.png');
INSERT INTO `dt_category` VALUES ('36', '1', 'MateBook 16s', '/images/category/36.png');
INSERT INTO `dt_category` VALUES ('37', '2', 'HUAWEI P50', '/images/category/37.png');
INSERT INTO `dt_category` VALUES ('38', '2', 'HUAWEI P50 Pro', '/images/category/38.png');
INSERT INTO `dt_category` VALUES ('39', '2', 'HUAWEI P50 Pocket', '/images/category/39.png');
INSERT INTO `dt_category` VALUES ('40', '2', 'HUAWEI P50E', '/images/category/40.png');
INSERT INTO `dt_category` VALUES ('41', '2', 'Mate Xs 2', '/images/category/41.png');
INSERT INTO `dt_category` VALUES ('42', '2', 'Mate X2 5G', '/images/category/42.png');
INSERT INTO `dt_category` VALUES ('43', '2', 'nova 9 Pro', '/images/category/43.png');
INSERT INTO `dt_category` VALUES ('44', '2', 'nova 8 SE', '/images/category/44.png');
INSERT INTO `dt_category` VALUES ('45', '2', 'nova 9 SE ', '/images/category/45.png');
INSERT INTO `dt_category` VALUES ('46', '2', '华为畅享 50', '/images/category/46.png');
INSERT INTO `dt_category` VALUES ('47', '2', 'HUAWEI Mate 30 RS保时捷', '/images/category/47.png');
INSERT INTO `dt_category` VALUES ('48', '2', 'Mate 30 Pro 5G', '/images/category/48.jpg');

-- ----------------------------
-- Table structure for `dt_order`
-- ----------------------------
DROP TABLE IF EXISTS `dt_order`;
CREATE TABLE `dt_order` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `account` int(11) NOT NULL,
  `orderTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay` int(1) NOT NULL DEFAULT '0',
  `addressId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_addressId` (`addressId`),
  KEY `fk_order_name` (`name`),
  CONSTRAINT `fk_order_addressId` FOREIGN KEY (`addressId`) REFERENCES `dt_address` (`id`),
  CONSTRAINT `fk_order_name` FOREIGN KEY (`name`) REFERENCES `dt_user` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_order
-- ----------------------------
INSERT INTO `dt_order` VALUES ('MI12260162', 'lvpeng', '48', '2022-09-03 13:57:11.281', '0', '129');
INSERT INTO `dt_order` VALUES ('MI13643958', 'lvpeng', '192', '2022-08-05 16:09:31.085', '0', '58');
INSERT INTO `dt_order` VALUES ('MI16123788', 'zhangsan', '32', '2022-09-02 14:05:55.472', '0', '20');
INSERT INTO `dt_order` VALUES ('MI41930688', 'lvpeng', '22', '2022-09-02 09:46:57.279', '1', '129');
INSERT INTO `dt_order` VALUES ('MI56313651', 'zhangsan', '22', '2022-08-31 16:27:59.508', '0', '20');
INSERT INTO `dt_order` VALUES ('MI59210712', 'lvpeng', '32', '2022-09-03 14:44:07.458', '1', '129');
INSERT INTO `dt_order` VALUES ('MI71873840', 'lvpeng', '32', '2022-09-03 11:26:30.227', '1', '129');
INSERT INTO `dt_order` VALUES ('MI766825', 'lvpeng', '22', '2022-09-02 09:47:51.821', '0', '129');
INSERT INTO `dt_order` VALUES ('MI7726278', 'lvpeng', '158', '2022-09-03 13:56:37.515', '1', '129');
INSERT INTO `dt_order` VALUES ('MI77556838', 'lvpeng', '44', '2022-09-03 11:16:00.384', '0', '129');
INSERT INTO `dt_order` VALUES ('MI85686384', 'zhangsan', '316', '2022-08-31 16:26:39.103', '1', '20');
INSERT INTO `dt_order` VALUES ('MI86130003', 'zhangsan', '32', '2022-09-02 14:03:11.181', '0', '20');
INSERT INTO `dt_order` VALUES ('MI86814938', 'lvpeng', '32', '2022-08-05 16:33:53.845', '0', '58');
INSERT INTO `dt_order` VALUES ('MI87891561', 'lvpeng', '22', '2022-08-05 19:05:21.897', '1', '58');
INSERT INTO `dt_order` VALUES ('MI95972299', 'lvpeng', '64', '2022-08-05 18:27:50.430', '1', '58');

-- ----------------------------
-- Table structure for `dt_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `dt_order_detail`;
CREATE TABLE `dt_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(10) NOT NULL,
  `pid` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_detail_orderId` (`orderId`),
  KEY `fk_order_detail_pid` (`pid`),
  CONSTRAINT `fk_order_detail_orderId` FOREIGN KEY (`orderId`) REFERENCES `dt_order` (`id`),
  CONSTRAINT `fk_order_detail_pid` FOREIGN KEY (`pid`) REFERENCES `dt_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_order_detail
-- ----------------------------
INSERT INTO `dt_order_detail` VALUES ('57', 'MI85686384', '1', '4');
INSERT INTO `dt_order_detail` VALUES ('58', 'MI56313651', '11', '1');
INSERT INTO `dt_order_detail` VALUES ('65', 'MI41930688', '11', '1');
INSERT INTO `dt_order_detail` VALUES ('66', 'MI766825', '11', '1');
INSERT INTO `dt_order_detail` VALUES ('67', 'MI86130003', '12', '1');
INSERT INTO `dt_order_detail` VALUES ('68', 'MI16123788', '26', '1');
INSERT INTO `dt_order_detail` VALUES ('69', 'MI77556838', '11', '2');
INSERT INTO `dt_order_detail` VALUES ('70', 'MI71873840', '12', '1');
INSERT INTO `dt_order_detail` VALUES ('71', 'MI7726278', '1', '2');
INSERT INTO `dt_order_detail` VALUES ('72', 'MI12260162', '6', '2');
INSERT INTO `dt_order_detail` VALUES ('73', 'MI59210712', '12', '1');

-- ----------------------------
-- Table structure for `dt_product`
-- ----------------------------
DROP TABLE IF EXISTS `dt_product`;
CREATE TABLE `dt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sale` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `bannerImgs` text,
  `otherImgs` text,
  PRIMARY KEY (`id`),
  KEY `fk_cid` (`cid`),
  CONSTRAINT `fk_cid` FOREIGN KEY (`cid`) REFERENCES `dt_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_product
-- ----------------------------
INSERT INTO `dt_product` VALUES ('1', '25', ' 法式复古收腰连衣裙', '/images/product/details/01.png', '素衣琳2022夏新款法式复古收腰显瘦温柔风V领连衣裙', '79.00', '2080', '2747', '/images/product/banner/banner001.jpeg,/images/product/banner/banner002.jpeg,/images/product/banner/banner003.jpeg,/images/product/banner/banner004.jpeg,/images/product/banner/banner005.jpeg,images/product/banner/banner006.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('2', '25', ' 印花圆领无袖连衣裙', '/images/product/details/02.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '69.00', '2022', '2887', '/images/product/banner/banner012.jpeg,/images/product/banner/banner013.jpeg,/images/product/banner/banner014.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('3', '25', ' 法式复古碎花连衣裙', '/images/product/details/03.png', '素衣琳夏新法式复古碎花文艺小清新泡泡袖连衣裙', '69.00', '1682', '688', '/images/product/banner/banner015.jpeg,/images/product/banner/banner016.jpeg,/images/product/banner/banner017.jpeg,/images/product/banner/banner018.jpeg,/images/product/banner/banner019.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('4', '25', ' 西装法式连衣裙女Y844', '/images/product/details/04.png', 'Y844超美  好品质 时尚拼接波点优雅气质款西装法式连衣裙女', '55.00', '1000', '2738', '/images/product/banner/banner088.jpeg,/images/product/banner/banner089.jpeg,/images/product/banner/banner090.jpeg,/images/product/banner/banner091.jpeg,/images/product/banner/banner092.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('5', '25', ' 碎花连衣裙L1116', '/images/product/details/05.png', '好品质 度假风小众设计仙女风ins裙子碎花雪纺连衣裙L1116', '55.00', '666', '2912', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('6', '25', ' 夏季连衣裙Y2115025', '/images/product/details/06.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '24.00', '46', '2319', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('7', '25', ' 法式优雅初恋旗袍Y862', '/images/product/details/07.png', '三亚海边沙滩裙度假粉色温柔碎花雪纺a字连衣裙荡领吊带露背长裙', '56.00', '4', '2399', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('8', '25', ' 女西装连衣裙两件套装', '/images/product/details/08.png', '西装连衣裙2022年夏季新款短裤修身炸街网红减龄两件套职业套装女', '45.00', '523', '226', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('9', '25', ' 碎花雪纺连衣裙Y881', '/images/product/details/09.png', '黑色v领中袖连衣裙宽松休闲风适合胖人穿的大码打底裙韩版中袖裙', '75.00', '224', '1340', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('10', '25', ' 名媛优雅时尚旗袍Y857', '/images/product/details/10.png', '雪纺套装2022春夏新款女装时尚减龄修身收腰开衫印花背心裙两件套', '84.00', '27', '333', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('11', '25', ' 欧式拼接连衣裙Y837', '/images/product/details/11.png', '夏装蕾丝套装裙女夏季轻熟风气质两件套连衣裙长款收腰女', '22.00', '795', '29', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('12', '25', ' 气质优雅连衣裙Y817', '/images/product/details/12.png', '连衣裙女2020新款女装夏装中长款韩版显瘦运动休闲裙子', '32.00', '88', '1725', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('13', '25', ' 名媛时尚连衣裙Y814', '/images/product/details/13.png', '连衣裙女2020新款女装夏装中长款韩版显瘦运动休闲裙子', '87.00', '676', '2667', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('14', '25', ' 时尚优雅拼接裙Y876', '/images/product/details/14.png', '素衣琳2022新款轻盈夏日五分泡泡袖修身连衣裙', '96.00', '1232', '1099', '/images/product/banner/banner031.jpeg,/images/product/banner/banner032.jpeg,/images/product/banner/banner033.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('15', '25', ' 优雅气质连衣裙Y852', '/images/product/details/15.png', '素衣琳2022新款时尚修身气质显瘦连衣裙', '54.00', '976', '917', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('16', '25', ' 优雅气质连衣裙Y852', '/images/product/details/16.png', '素衣琳2022新款减龄显白圆领修身连衣裙', '45.00', '576', '432', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('17', '25', ' 女西装连衣裙两件套装', '/images/product/details/17.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '67.00', '1212', '323', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('18', '25', ' 碎花雪纺连衣裙露背潮', '/images/product/details/18.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '45.00', '121', '212', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('19', '25', ' 连衣裙女碎花甜美春夏', '/images/product/details/19.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '67.00', '212', '223', '/images/product/banner/banner007.jpeg,/images/product/banner/banner008.jpeg,/images/product/banner/banner009.jpeg,/images/product/banner/banner010.jpeg,/images/product/banner/banner011.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('20', '25', ' 连衣裙女碎花甜美春夏', '/images/product/details/20.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '76.00', '2121', '121', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('21', '25', ' 连衣裙斜肩性感短裙女', '/images/product/details/21.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '56.00', '121', '2121', '/images/product/banner/banner026.jpeg,/images/product/banner/banner027.jpeg,/images/product/banner/banner028.jpeg,/images/product/banner/banner029.jpeg,/images/product/banner/banner030.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('22', '25', ' 显瘦雪纺连衣裙v领', '/images/product/details/22.png', 'Y844超美  好品质 时尚拼接波点优雅气质款西装法式连衣裙', '67.00', '121', '212', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('23', '25', ' 轻熟风辣妹打底连衣裙', '/images/product/details/23.png', 'Y844超美  好品质 时尚拼接波点优雅气质款西装法式连衣裙', '78.00', '212', '121', '/images/product/banner/banner020.jpeg,/images/product/banner/banner021.jpeg,/images/product/banner/banner022.jpeg,/images/product/banner/banner023.jpeg,/images/product/banner/banner024.jpeg,/images/product/banner/banner025.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('24', '25', ' 连衣裙宽松莱卡棉长裙', '/images/product/details/24.png', 'Y844超美  好品质 时尚拼接波点优雅气质款西装法式连衣裙', '67.00', '121', '221', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('25', '26', ' 牛仔外套女短款外穿', '/images/product/details/25.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '57.00', '2323', '323', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('26', '26', ' 网红小西装七分袖外套', '/images/product/details/26.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '32.00', '2', '2', '/images/product/banner/banner034.jpeg,/images/product/banner/banner035.jpeg,/images/product/banner/banner036.jpeg,/images/product/banner/banner037.jpeg,/images/product/banner/banner038.jpeg,/images/product/banner/banner039.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('27', '26', ' 防晒衣女长袖薄款外套', '/images/product/details/27.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '34.00', '1', '1', '/images/product/banner/banner040.jpeg,/images/product/banner/banner041.jpeg,/images/product/banner/banner042.jpeg,/images/product/banner/banner043.jpeg,/images/product/banner/banner044.jpeg,/images/product/banner/banner045.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('28', '26', ' 韩版休闲棒球服小外套', '/images/product/details/28.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '86.00', '1', '1', '/images/product/banner/banner046.jpeg,/images/product/banner/banner047.jpeg,/images/product/banner/banner048.jpeg,/images/product/banner/banner049.jpeg,/images/product/banner/banner050.jpeg,/images/product/banner/banner051.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('29', '26', ' 短款修身小西装外套女', '/images/product/details/29.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '75.00', '1', '11', '/images/product/banner/banner052.jpeg,/images/product/banner/banner053.jpeg,/images/product/banner/banner054.jpeg,/images/product/banner/banner055.jpeg,/images/product/banner/banner056.jpeg,/images/product/banner/banner057.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('30', '26', ' 防晒衣女短款防晒衫', '/images/product/details/30.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '23.00', '2', '2', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('31', '26', ' 夏季冰丝纳米丝防晒衣', '/images/product/details/31.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '67.00', '1', '1', '/images/product/banner/banner058.jpeg,/images/product/banner/banner059.jpeg,/images/product/banner/banner060.jpeg,/images/product/banner/banner061.jpeg,/images/product/banner/banner062.jpeg,/images/product/banner/banner063.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('32', '26', ' 夏季冰丝纳米丝防晒衣', '/images/product/details/32.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '56.00', '1', '1', '/images/product/banner/banner064.jpeg,/images/product/banner/banner065.jpeg,/images/product/banner/banner066.jpeg,/images/product/banner/banner067.jpeg,/images/product/banner/banner068.jpeg,/images/product/banner/banner069.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('33', '26', ' 夏季冰丝纳米丝防晒衣', '/images/product/details/33.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '46.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('34', '26', ' 夏季冰丝纳米丝防晒衣', '/images/product/details/34.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '35.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('35', '26', ' 夏季冰丝纳米丝防晒衣', '/images/product/details/35.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '54.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('36', '26', ' 针织开衫女夏季防晒衣', '/images/product/details/36.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '65.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('37', '26', ' 秋冬妈妈装外套女', '/images/product/details/37.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '86.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('38', '26', ' 老年人冬装中长款棉服', '/images/product/details/38.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '87.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('39', '26', ' 妈妈冬装外套棉衣', '/images/product/details/39.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '45.00', '2', '2', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('40', '26', ' 防晒衣女夏中长款', '/images/product/details/40.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '65.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('41', '26', ' 时尚潮搭拼色外套L978', '/images/product/details/41.png', '素衣琳2022夏新款法式复古收腰显瘦温柔风V领连衣裙', '35.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('42', '26', ' 复古港风百搭外套L982', '/images/product/details/42.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '86.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('43', '26', ' 夏季短外套Y2102006', '/images/product/details/43.png', '咏仕女装2022夏季新款时尚潮流花色蕾丝V领中袖连衣裙', '54.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('44', '26', ' 时尚毛绒外套Y1034', '/images/product/details/44.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '87.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('45', '26', ' 时尚毛呢气质外套Y650', '/images/product/details/45.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '35.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('46', '26', ' 温暖时尚收腰棉袄Y810', '/images/product/details/46.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '45.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('47', '26', ' 时尚拼色棉袄外套Y793', '/images/product/details/47.png', '素衣琳新款印花圆领无袖高腰系带连衣裙', '75.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('48', '26', ' 名媛气质格子外套Y735', '/images/product/details/48.png', '素衣琳2022夏新款法式复古收腰显瘦温柔风V领连衣裙', '76.00', '1', '1', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('49', '27', ' 条纹衬衫马甲两件套', '/images/product/details/49.png', '夏季新款短袖t恤女上衣时尚蕾丝荷叶边V领衬衣气质雪纺小衫', '76.00', '22', '22', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('50', '27', ' 衬衣女职业正装衬衫', '/images/product/details/50.png', '【两件套】2020春季新款条纹衬衫马甲两件套女针织毛衣马甲套装', '56.00', '3', '3', '/images/product/banner/banner070.jpeg,/images/product/banner/banner071.jpeg,/images/product/banner/banner072.jpeg,/images/product/banner/banner073.jpeg,/images/product/banner/banner074.jpeg,/images/product/banner/banner075.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('51', '27', ' 短袖t恤女荷叶边衬衣', '/images/product/details/51.png', '长袖七分袖衬衣女秋新款韩版修身工作服工装职业正装大码灰色衬衫', '38.00', '3', '3', '/images/product/banner/banner076.jpeg,/images/product/banner/banner077.jpeg,/images/product/banner/banner078.jpeg,/images/product/banner/banner079.jpeg,/images/product/banner/banner080.jpeg,/images/product/banner/banner081.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('52', '27', ' 衬衫女冬中长款打底衫', '/images/product/details/54.png', '夏季新款短袖t恤女上衣时尚蕾丝荷叶边V领衬衣气质雪纺小衫', '67.00', '2', '3', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('53', '27', ' 雪纺衬衫女刺绣小衫', '/images/product/details/52.png', '夏季新款短袖t恤女上衣时尚蕾丝荷叶边V领衬衣气质雪纺小衫', '56.00', '3', '2', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');
INSERT INTO `dt_product` VALUES ('54', '27', ' 新款女雪纺衫减龄显瘦', '/images/product/details/53.png', '长袖七分袖衬衣女秋新款韩版修身工作服工装职业正装大码灰色衬衫', '65.00', '3', '32', '/images/product/banner/banner082.jpeg,/images/product/banner/banner083.jpeg,/images/product/banner/banner084.jpeg,/images/product/banner/banner085.jpeg,/images/product/banner/banner086.jpeg,/images/product/banner/banner087.jpeg', '/images/product/other001.jpg,/images/product/other002.jpg,/images/product/other003.jpg,/images/product/other004.jpg,/images/product/other005.jpg,/images/product/other006.jpg,/images/product/other007.jpg,/images/product/other008.jpg,/images/product/other009.jpg,/images/product/other010.jpg');

-- ----------------------------
-- Table structure for `dt_user`
-- ----------------------------
DROP TABLE IF EXISTS `dt_user`;
CREATE TABLE `dt_user` (
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_user
-- ----------------------------
INSERT INTO `dt_user` VALUES ('lao123', '123', '12345678910');
INSERT INTO `dt_user` VALUES ('liuxinze', '123', '15753309231');
INSERT INTO `dt_user` VALUES ('lvpeng', '123', '15288788721');
INSERT INTO `dt_user` VALUES ('user1', '123', '13888888999');
INSERT INTO `dt_user` VALUES ('user2', '123', '13777777777');
INSERT INTO `dt_user` VALUES ('user3', '123', '13666666666');
INSERT INTO `dt_user` VALUES ('user4', '123', '13555555555');
INSERT INTO `dt_user` VALUES ('yuhao', '123', '12345678911');
INSERT INTO `dt_user` VALUES ('zhangsan', '123', '13888888888');

-- ----------------------------
-- View structure for `order_product_address`
-- ----------------------------
DROP VIEW IF EXISTS `order_product_address`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_product_address` AS select `t1`.`id` AS `orderId`,`t1`.`name` AS `uName`,`t1`.`account` AS `account`,`t1`.`orderTime` AS `orderTime`,`t1`.`addressId` AS `addressId`,`t1`.`pay` AS `pay`,`t4`.`receiveName` AS `receiveName`,`t4`.`receivePhone` AS `receivePhone`,`t4`.`receiveRegion` AS `receiveRegion`,`t4`.`receiveDetail` AS `receiveDetail`,`t2`.`count` AS `count`,`t3`.`id` AS `id`,`t3`.`cid` AS `cid`,`t3`.`name` AS `name`,`t3`.`avatar` AS `avatar`,`t3`.`brief` AS `brief`,`t3`.`price` AS `price`,`t3`.`sale` AS `sale`,`t3`.`rate` AS `rate`,`t3`.`bannerImgs` AS `bannerImgs`,`t3`.`otherImgs` AS `otherImgs` from ((((select `dt_order`.`id` AS `id`,`dt_order`.`name` AS `name`,`dt_order`.`account` AS `account`,`dt_order`.`orderTime` AS `orderTime`,`dt_order`.`pay` AS `pay`,`dt_order`.`addressId` AS `addressId` from `dt_order`) `t1` join (select `dt_order_detail`.`id` AS `id`,`dt_order_detail`.`orderId` AS `orderId`,`dt_order_detail`.`pid` AS `pid`,`dt_order_detail`.`count` AS `count` from `dt_order_detail`) `t2` on((`t1`.`id` = `t2`.`orderId`))) join (select `dt_product`.`id` AS `id`,`dt_product`.`cid` AS `cid`,`dt_product`.`name` AS `name`,`dt_product`.`avatar` AS `avatar`,`dt_product`.`brief` AS `brief`,`dt_product`.`price` AS `price`,`dt_product`.`sale` AS `sale`,`dt_product`.`rate` AS `rate`,`dt_product`.`bannerImgs` AS `bannerImgs`,`dt_product`.`otherImgs` AS `otherImgs` from `dt_product`) `t3` on((`t2`.`pid` = `t3`.`id`))) join (select `dt_address`.`id` AS `id`,`dt_address`.`name` AS `name`,`dt_address`.`receiveName` AS `receiveName`,`dt_address`.`receivePhone` AS `receivePhone`,`dt_address`.`receiveRegion` AS `receiveRegion`,`dt_address`.`receiveDetail` AS `receiveDetail`,`dt_address`.`isDefault` AS `isDefault` from `dt_address`) `t4` on((`t1`.`addressId` = `t4`.`id`))) ;

-- ----------------------------
-- Procedure structure for `p_addProductToCart`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_addProductToCart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_addProductToCart`(
	_name varchar(20),
	_pid int,
	_count int
)
BEGIN
  DECLARE _curCount INT DEFAULT NULL;
	SELECT `count` INTO _curCount FROM `dt_cart` WHERE `pid` = _pid AND `name` = _name;
	IF _curCount IS NULL THEN	-- 如果没有在购物车中存在
		IF _count > 5 THEN
			SELECT '单个商品购买上限为5个' AS 'result';
		ELSE 
			INSERT `dt_cart`(`name`,`pid`,`count`) 
			VALUES(_name, _pid, _count);
			SELECT '' AS 'result';
		END IF;
	ELSE 											-- 如果已经在购物车中存在
		IF _curCount + _count > 5 THEN
			SELECT '单个商品购买上限为5个' AS 'result';
		ELSE
			UPDATE `dt_cart` SET `count` = `count` + _count 
			WHERE `pid` = _pid AND `name` = _name;
			SELECT '' AS 'result';
		END IF;
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_getProduct`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getProduct`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_getProduct`(
	_name VARCHAR(20),
	_cid INT,
	_orderCol VARCHAR(20),
	_orderDir VARCHAR(10),
  _begin INT,
  _pageSize INT
)
BEGIN
	SET @whereSql = 'where 1 = 1';
	
	IF _name != '' THEN 
		SET @whereSql = CONCAT(@whereSql, ' AND `name` LIKE ''%', _name, '%''');
	ELSEIF _cid != 0 THEN
		SET @whereSql = CONCAT(@whereSql, ' AND `cid` = ', _cid);
	END IF;

-- 	SET @selectSql = 'SELECT * FROM `dt_product` ';
	SET @selectSql = CONCAT(
		'SELECT * FROM `dt_product` ', 
		@whereSql, 
		' ORDER BY ', _orderCol, ' ', _orderDir,
		' LIMIT ', _begin, ',', _pageSize
	);

	PREPARE selectStmt FROM @selectSql;
	EXECUTE selectStmt;
	DEALLOCATE PREPARE selectStmt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_orderConfirm`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_orderConfirm`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_orderConfirm`(
	_ids varchar(50),						-- 要结算的购物记录id
	_account int,								-- 结算的总金额
	_orderTime varchar(30),	    -- 订单产生时间
	_name varchar(20),					-- 用户名
	_addressId int              -- 订单地址id
)
BEGIN
	DECLARE _pid INT;
	DECLARE _count INT;
	DECLARE _id varchar(10) DEFAULT '';
	-- 0. 生成一个随机的有效的课单编号id
	DECLARE _orderId varchar(10);
  SET _orderId = CONCAT('MI', CONVERT(FLOOR(RAND() * 100000000),CHAR));
	-- 1. 向dt_order表插入数据
	INSERT `dt_order`(`id`,`name`,`account`,`orderTime`,`addressId`) 
	VALUES (_orderId,_name,_account,_orderTime,_addressId);
	-- 2. 向dt_order_detail表插入数据
  -- 3. 删除dt_cart表的相关数据
	SET _id = substring_index(_ids, ',', 1);
	WHILE LENGTH(_id) > 0 DO
			SELECT `pid`,`count` INTO _pid,_count FROM `dt_cart` WHERE `id` = CONVERT(_id, SIGNED);
			INSERT `dt_order_detail`(`orderId`,`pid`,`count`) VALUES (_orderId,_pid,_count);

			DELETE FROM `dt_cart` WHERE `id` = CONVERT(_id, SIGNED);
			SET _ids = substring(_ids, length(_id) + 2);
			SET _id = substring_index(_ids, ',', 1);
	END WHILE;
	SELECT _orderId as 'orderId';
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_register`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_register`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_register`(
	_name varchar(50),		-- 用户名
	_pwd int,							-- 密码
	_phone varchar(30)	  -- 电话号码
)
BEGIN
	DECLARE temp INT DEFAULT 0;
	DECLARE result varchar(20) DEFAULT '';

	SELECT count(*) INTO temp FROM `dt_user` WHERE `name` = _name;
	IF temp != 0 THEN
		SET result = '用户名已存在';
	END IF;
	SELECT count(*) INTO temp FROM `dt_user` WHERE `phone` = _phone;
	IF temp != 0 THEN
		SET result = '手机号已被使用';
	END IF;
	IF result = '' THEN
		insert into `dt_user`(`name`,`pwd`,`phone`) values(_name,_pwd,_phone);
	END IF;
	SELECT result as result;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_removeAddress`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_removeAddress`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_removeAddress`(
	_id INT
)
BEGIN
	DECLARE temp INT DEFAULT 0;
	DECLARE result varchar(50) DEFAULT '';
	-- 统计出有没有其它分类依赖于当前要删除的分类
	SELECT COUNT(*) INTO temp FROM `dt_order` WHERE `addressId` = _id;
	IF temp > 0 THEN
		SET result = '有订单与要删除的地址相关，无法删除..';
	ELSE 
		DELETE FROM `dt_address` WHERE `id` = _id;
	END IF;
	SELECT result;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_removeOrder`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_removeOrder`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_removeOrder`(
	_id varchar(10)
)
BEGIN
	DELETE FROM `dt_order_detail` WHERE `orderId` = _id;
	DELETE FROM `dt_order` WHERE `id` = _id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `p_setDefaultAddress`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_setDefaultAddress`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_setDefaultAddress`(
	_id int,					-- 默认地址id
	_name varchar(20) -- 用户名
)
BEGIN
	UPDATE `dt_address` SET `isDefault` = 0 WHERE `name` = _name;
	UPDATE `dt_address` SET `isDefault` = 1 WHERE `id` = _id;
END
;;
DELIMITER ;
