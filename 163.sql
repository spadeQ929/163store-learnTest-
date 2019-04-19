

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `163_index_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `163_index_carousel`;
CREATE TABLE `163_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_index_carousel
-- ----------------------------
INSERT INTO `163_index_carousel` VALUES ('1', 'assets/img/bunner/bunner(1).jpg', '轮播广告商品1', 'https://music.163.com/m/at/5c94d73438066ae3d6917860');
INSERT INTO `163_index_carousel` VALUES ('2', 'assets/img/bunner/bunner(2).jpg', '轮播广告商品2', 'https://music.163.com/m/at/5c9333b138066ae3d6917169');
INSERT INTO `163_index_carousel` VALUES ('3', 'assets/img/bunner/bunner(3).jpg', '轮播广告商品3', 'https://music.163.com/m/at/folkmusic');
INSERT INTO `163_index_carousel` VALUES ('4', 'assets/img/bunner/bunner(4).jpg', '轮播广告商品4', 'https://music.163.com/m/at/5c8f744c1a2935e2d57c9b6f');
INSERT INTO `163_index_carousel` VALUES ('5', 'assets/img/bunner/bunner(5).jpg', '轮播广告商品5', 'https://music.163.com/m/at/czdebhxsf');
INSERT INTO `163_index_carousel` VALUES ('6', 'assets/img/bunner/bunner(6).jpg', '轮播广告商品6', 'https://music.163.com/m/at/bulusikouqin');

-- ----------------------------
-- Table structure for `163_index_product`
-- ----------------------------
DROP TABLE IF EXISTS `163_index_product`;
CREATE TABLE `163_index_product` (
  `pid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `details` varchar(128) default NULL,
  `pic` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `orig` decimal(10,2) default NULL,
  `href` varchar(128) default NULL,
  `ishot` tinyint(1) default NULL,
  `issale` tinyint(1) default NULL,
  `limitsale` tinyint(1) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_index_product
-- ----------------------------
INSERT INTO `163_index_product` VALUES ('1', '1', 'JBL T120A 立体声入耳式耳机  手机音乐耳机 游戏耳机 耳机耳麦 带麦可通话',  'assets/img/projectmain/109951163637530017.jpg', '128', NULL, '/store/detail/1', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('2', '2', '正义联盟变形金刚个性创意防摔咖啡随手杯pp杯',  'assets/img/projectmain/109951163749587503.jpg', '9.9', '58', '/store/detail/2', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('3', '2', '网易云音乐 运动斜挎包',  'assets/img/projectmain/109951163679756618.jpg', '56', NULL, '/store/detail/3', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('4', '1', '网易云音乐定制款W800X头戴式蓝牙耳机',  'assets/img/projectmain/109951163667583989.jpg', '199', '259', '/store/detail/4', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('5', '1', '网易云音乐联名款漫步者W280X蓝牙耳机',  'assets/img/projectmain/109951163679726913.jpg', '169', NULL, '/store/detail/5', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('6', '2', '哆啦A梦Cloudlele系列·记忆尤克里里D1款23寸',  'assets/img/projectmain/109951163520346009.jpg', '458', NULL, '/store/detail/6', '0', '0', '1');
INSERT INTO `163_index_product` VALUES ('7', '2', '哆啦A梦正版蓝色直柄雨伞（大）',  'assets/img/projectmain/109951163615449744.jpg', '129', NULL, '/store/detail/7', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('8', '1', '伯朗 BS01真无线蓝牙耳机触控蓝牙5.0安卓苹果通用',  'assets/img/projectmain/109951163940557156.jpg', '299', '399', '/store/detail/8', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('9', '2', '网易云音乐&本来设计 原木创意手机支架手机座扩音器',  'assets/img/projectmain/18905002928382973.jpg', '149', '179', '/store/detail/9', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('10', '1', '击音【触控级】降噪防水手势识别蓝牙运动耳机',  'assets/img/projectmain/109951162986512458.jpg', '149', '199', '/store/detail/10', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('11', '2', '本来设计 原创木质冰箱磁贴 创意礼品生日礼物',  'assets/img/projectmain/18984167765584687.jpg', '59', NULL, '/store/detail/11', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('12', '1', '网易云音乐氧气蓝牙耳机Pro版',  'assets/img/projectmain/109951163679752096.jpg', '399', NULL, '/store/detail/12', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('13', '1', '漫步者（EDIFIER）W2 真无线 入耳式立体声蓝牙耳机 蓝牙5.0 左右可独立使用',  'assets/img/projectmain/109951163725394326.jpg', '299', NULL, '/store/detail/13', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('14', '1', '网易云音乐氧气蓝牙耳机青春版',  'assets/img/projectmain/109951163679747713.jpg', '299', NULL, '/store/detail/14', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('15', '1', '漫步者（EDIFIER） H230P 入耳式立体声线控耳机',  'assets/img/projectmain/18903903416702874.jpg', '69', NULL, '/store/detail/15', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('16', '1', '云音乐联名款JBL W30BT蓝牙耳机',  'assets/img/projectmain/109951163679762110.jpg', '399', NULL, '/store/detail/16', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('17', '1', '弯头数据线快充2.4A苹果安卓Type-C 玩游戏充电线',  'assets/img/projectmain/109951163618674656.jpg', '29', NULL, '/store/detail/17', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('18', '1', '击音听键A1 蓝牙音频接收器 4+种佩戴 苹果安卓必备新配件',  'assets/img/projectmain/19100715998038101.jpg', '69', '89', '/store/detail/18', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('19', '1', '先锋（Pioneer）SEC-CL32S 入耳式HiFi耳机 三键线控',  'assets/img/projectmain/109951163117063836.jpg', '69', NULL, '/store/detail/19', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('20', '1', '苹果安卓快充线数据线2.4A小米三星华为手机数据线（1米）',  'assets/img/projectmain/109951163618870351.jpg', '29', NULL, '/store/detail/20', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('21', '1', 'Beats X 蓝牙无线 入耳式运动耳机 带麦可通话',  'assets/img/projectmain/109951163766489818.jpg', '899', '1188', '/store/detail/21', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('22', '1', '本来设计 原木质音乐盒八音盒',  'assets/img/projectmain/109951163003565895.jpg', '179', '199', '/store/detail/22', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('23', '1', '击音K5降噪头戴[一键降噪] 头戴蓝牙Hi-Fi耳机 影音娱乐游戏安卓ios全兼容',  'assets/img/projectmain/109951163469830341.jpg', '499', NULL, '/store/detail/23', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('24', '1', '漫步者（EDIFIER）W580BT 漫威合作款 头戴式蓝牙耳机',  'assets/img/projectmain/109951163291622583.jpg', '299', '399', '/store/detail/24', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('25', '1', '击音(iGene)Super HDⅡ【全触摸】进口HIFI降噪无线有线双模蓝牙头戴',  'assets/img/projectmain/109951162986578319.jpg', '249', '299', '/store/detail/25', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('26', '1', '华为/荣耀honor AM115 高保真 原装半入耳式  带麦可通话 手机通用有线耳机',  'assets/img/projectmain/109951163378352915.jpg', '49', NULL, '/store/detail/26', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('27', '1', '听键 让耳机秒变无线 五种音效+功放芯片 有线耳机必备配件 网易专享苹果安卓通用',  'assets/img/projectmain/109951163290388638.jpg', '109', NULL, '/store/detail/27', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('28', '1', 'Beats Solo3 Wireless 无线蓝牙头戴式耳机 带麦可通话 内置Apple W1 芯片',  'assets/img/projectmain/109951163799602745.jpg', '2268', NULL, '/store/detail/28', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('29', '1', '击音 小静T3 年轻人的降噪耳机[轻至180g/40小时降噪] 寝室/自习/游戏静享',  'assets/img/projectmain/109951163720176931.jpg', '399', NULL, '/store/detail/29', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('30', '1', '漫步者（EDIFIER）W293BT OXYGEN 音乐氧气瓶 无线蓝牙运动耳机',  'assets/img/projectmain/109951163446211730.jpg', '299', '399', '/store/detail/30', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('31', '2', '本来设计 原木质笔实木头签字笔鱼笔',  'assets/img/projectmain/19124905253840538.jpg', '149', '159', '/store/detail/31', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('32', '1', '漫步者（EDIFIER）W800BT 立体声头戴式蓝牙耳机',  'assets/img/projectmain/18498183627738283.jpg', '199', NULL, '/store/detail/32', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('33', '1', '爱国者（aigo） A691动铁圈铁手机耳机入耳式高清降噪带麦线控耳塞式',  'assets/img/projectmain/109951163069162738.jpg', '299', NULL, '/store/detail/33', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('34', '1', '铁三角 CLR100is 入耳式线控带麦手机耳机',  'assets/img/projectmain/109951162978724678.jpg', '138', NULL, '/store/detail/34', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('35', '1', '漫步者（EDIFIER）BIG BUN 立体声蓝牙便携音箱',  'assets/img/projectmain/109951163209910078.jpg', '399', NULL, '/store/detail/35', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('36', '1', 'skullcandy Inkd 2骷髅头入耳式重低音耳机手机线控通话男女通用',  'assets/img/projectmain/19134800858739942.jpg', '169', NULL, '/store/detail/36', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('37', '1', '铁三角 CK330IS 手机专用带麦通话入耳式耳机',  'assets/img/projectmain/109951162978711071.jpg', '189', NULL, '/store/detail/37', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('38', '1', '先锋（Pioneer）SEC-E322BT 无线蓝牙入耳式耳机',  'assets/img/projectmain/109951163117821103.jpg', '299', NULL, '/store/detail/38', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('39', '1', '漫步者（EDIFIER）W295 DSP 薛之谦潮牌 联名款 运动蓝牙耳机',  'assets/img/projectmain/109951163520191107.jpg', '299', NULL, '/store/detail/39', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('40', '1', '实木吉他U盘32g个性签名定制珍藏版',  'assets/img/projectmain/109951163689849663.jpg', '99', NULL, '/store/detail/40', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('41', '1', '网易云音乐无线蓝牙音箱MB1',  'assets/img/projectmain/109951163677001816.jpg', '399', NULL, '/store/detail/41', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('42', '1', 'JBL T120 BT 入耳式耳机 无线蓝牙耳机 运动耳机 音乐耳机 苹果安卓通用',  'assets/img/projectmain/109951163461763235.jpg', '399', NULL, '/store/detail/42', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('43', '1', '爱国者(aigo)MP3播放器105 HIFI音乐播放器无损发烧级便携8G可扩容',  'assets/img/projectmain/18887410742499587.jpg', '499', NULL, '/store/detail/43', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('44', '1', '爱国者（aigo）播放器M1无损hifi音乐播放器触屏mp3学生随身听便携播放器',  'assets/img/projectmain/109951163693470454.jpg', '299', NULL, '/store/detail/44', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('45', '1', '华为/荣耀honor AM116 金属 高保真 原装半入耳式  三键线控可通话 手机通用有线耳机',  'assets/img/projectmain/109951163378350986.jpg', '69', NULL, '/store/detail/45', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('46', '1', '漫步者（EDIFIER）W280BT 无线蓝牙入耳式运动耳机磁吸耳塞',  'assets/img/projectmain/109951163304126489.jpg', '149', NULL, '/store/detail/46', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('47', '1', '硕美科（SOMIC）G941 电竞游戏吃鸡耳机 降噪震动耳机',  'assets/img/projectmain/109951163265750312.jpg', '249', NULL, '/store/detail/47', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('48', '1', 'skullcandy Smokin Buds 2骷髅头入耳式重低音耳机塞线控男女通用',  'assets/img/projectmain/18568552372067744.jpg', '229', NULL, '/store/detail/48', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('49', '1', '漫步者（EDIFIER）W435BT 挂耳式运动蓝牙带麦耳机',  'assets/img/projectmain/18646617697527241.jpg', '159', '249', '/store/detail/49', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('50', '1', '铁三角 IM70 双动圈入耳式耳机',  'assets/img/projectmain/109951162978746847.jpg', '549', NULL, '/store/detail/50', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('51', '1', 'JBL GO 2  音乐金砖二代 便携蓝牙音箱',  'assets/img/projectmain/109951163400481501.jpg', '299', NULL, '/store/detail/51', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('52', '1', '漫步者（EDIFIER）H270P 高保真入耳式手机耳机 带麦克风',  'assets/img/projectmain/19027048719243386.jpg', '99', '109', '/store/detail/52', '0', '1', '0');
INSERT INTO `163_index_product` VALUES ('53', '1', '漫步者（EDIFIER）H841P 高性能立体声头戴式线控手机耳机',  'assets/img/projectmain/18527870441687791.jpg', '179', NULL, '/store/detail/53', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('54', '1', '网易云音乐氧气有线入耳式耳机',  'assets/img/projectmain/109951163678579000.jpg', '129', NULL, '/store/detail/54', '1', '0', '0');
INSERT INTO `163_index_product` VALUES ('55', '1', '漫步者（EDIFIER）TWS3 真无线 入耳式蓝牙带麦耳机',  'assets/img/projectmain/109951163335643980.jpg', '399', NULL, '/store/detail/55', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('56', '1', 'JBL Pulse3 音乐脉动3 炫彩蓝牙小音箱 低音炮 便携迷你音响 可免提通话 防水设计',  'assets/img/projectmain/109951163340789250.jpg', '1599', NULL, '/store/detail/56', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('57', '1', '漫步者（EDIFIER）H185 高性能立体声耳塞式耳机',  'assets/img/projectmain/109951163094564294.jpg', '59', NULL, '/store/detail/57', '0', '0', '0');
INSERT INTO `163_index_product` VALUES ('58', '1', '爱国者（aigo） S18蓝牙耳机运动跑步头戴式无线双耳塞挂耳式耳机',  'assets/img/projectmain/109951163069291996.jpg', '119', NULL, '/store/detail/58', '0', '0', '0');


-- ----------------------------
-- Table structure for `163_product`
-- ----------------------------
DROP TABLE IF EXISTS `163_product`;
CREATE TABLE `163_product` (
  `did` int(11) NOT NULL auto_increment,
  `product_id` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `saleitem` varchar(64) default NULL,
  `spec` varchar(64) default NULL,
  `ipic` varchar(128) default NULL,
  `dpic` varchar(128) default NULL,
  `servise` varchar(128) default NULL,
  `promise` varchar(128) default NULL,
  `shelf_time` bigint(20) default NULL,
  `sold_count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_product
-- ----------------------------
INSERT INTO `163_product` VALUES ('1', '1', 'JBL T120A 立体声入耳式耳机 手机音乐耳机 游戏耳机 耳机耳麦 带麦可通话', '佩戴舒适 强劲低音 一键式线控 音乐通话耳机', '128', NULL, '红色', 'assets/img/productdetail/1/1-normal/sm/109951163304336887.jpg', 'assets/img/productdetail/1/109951163689815069.jpg', '满119包邮/商家发货/网易自营', '正品低价 品质保证：云音乐商城所有产品均由品牌方直供，杜绝假货。/装箱清单：耳机× 1，包装× 1，保修卡× 1。/该产品一经拆封，非质量问题不接受7天无理由退货。', '商品交易成功后会在2个工作日内由北京恒远恒信科技发展有限公司发货，法定节假日顺延（包含周六日），请在确认商品完好后再签收。若存在质量问题，请务必在7天之内联系客服：/·客服账号：私信 @云音乐客服/·温馨提示：完整的包装、配件和保修卡是电子产品进行售后的基础，请务必查看齐全后签收并妥善保管。','99');
INSERT INTO `163_product` VALUES ('2', '1', 'JBL T120A 立体声入耳式耳机 手机音乐耳机 游戏耳机 耳机耳麦 带麦可通话', '佩戴舒适 强劲低音 一键式线控 音乐通话耳机', '128', NULL, '黑色', 'assets/img/productdetail/1/1-normal/sm/109951163304335952.jpg', 'assets/img/productdetail/1/109951163689815069.jpg', '满119包邮/商家发货/网易自营', '正品低价 品质保证：云音乐商城所有产品均由品牌方直供，杜绝假货。/装箱清单：耳机× 1，包装× 1，保修卡× 1。/该产品一经拆封，非质量问题不接受7天无理由退货。', '商品交易成功后会在2个工作日内由北京恒远恒信科技发展有限公司发货，法定节假日顺延（包含周六日），请在确认商品完好后再签收。若存在质量问题，请务必在7天之内联系客服：/·客服账号：私信 @云音乐客服/·温馨提示：完整的包装、配件和保修卡是电子产品进行售后的基础，请务必查看齐全后签收并妥善保管。','99');
INSERT INTO `163_product` VALUES ('3', '1', 'JBL T120A 立体声入耳式耳机 手机音乐耳机 游戏耳机 耳机耳麦 带麦可通话', '佩戴舒适 强劲低音 一键式线控 音乐通话耳机', '128', NULL, '白色', 'assets/img/productdetail/1/1-normal/sm/109951163637530017.jpg', 'assets/img/productdetail/1/109951163689815069.jpg', '满119包邮/商家发货/网易自营', '正品低价 品质保证：云音乐商城所有产品均由品牌方直供，杜绝假货。/装箱清单：耳机× 1，包装× 1，保修卡× 1。/该产品一经拆封，非质量问题不接受7天无理由退货。', '商品交易成功后会在2个工作日内由北京恒远恒信科技发展有限公司发货，法定节假日顺延（包含周六日），请在确认商品完好后再签收。若存在质量问题，请务必在7天之内联系客服：/·客服账号：私信 @云音乐客服/·温馨提示：完整的包装、配件和保修卡是电子产品进行售后的基础，请务必查看齐全后签收并妥善保管。','99');

-- ----------------------------
-- Table structure for `163_product_family`
-- ----------------------------
DROP TABLE IF EXISTS `163_product_family`;
CREATE TABLE `163_product_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_product_family
-- ----------------------------
INSERT INTO `163_product_family` VALUES ('1', '数码影音');
INSERT INTO `163_product_family` VALUES ('2', '礼物');

-- ----------------------------
-- Table structure for `163_product_pic`
-- ----------------------------
DROP TABLE IF EXISTS `163_product_pic`;
CREATE TABLE `163_product_pic` (
  `ppid` int(11) NOT NULL auto_increment,
  `detail_id` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_product_pic
-- ----------------------------
INSERT INTO `163_product_pic` VALUES 
('1','0','assets/img/productdetail/1/1-normal/sm/109951163304335952.jpg','assets/img/productdetail/1/1-normal/md/109951163304335952.jpg','assets/img/productdetail/1/1-normal/lg/109951163304335952.jpg'),
('2','0','assets/img/productdetail/1/1-normal/sm/109951163304336887.jpg','assets/img/productdetail/1/1-normal/md/109951163304336887.jpg','assets/img/productdetail/1/1-normal/lg/109951163304336887.jpg'),
('3','0','assets/img/productdetail/1/1-normal/sm/109951163637530017.jpg','assets/img/productdetail/1/1-normal/md/109951163637530017.jpg','assets/img/productdetail/1/1-normal/lg/109951163637530017.jpg'),
('4','1','assets/img/productdetail/1/1-red/sm/109951163303130519.jpg','assets/img/productdetail/1/1-red/md/109951163303130519.jpg','assets/img/productdetail/1/1-red/lg/109951163303130519.jpg'),
('5','1','assets/img/productdetail/1/1-red/sm/109951163303129618.jpg','assets/img/productdetail/1/1-red/md/109951163303129618.jpg','assets/img/productdetail/1/1-red/lg/109951163303129618.jpg'),
('6','1','assets/img/productdetail/1/1-red/sm/109951163303128153.jpg','assets/img/productdetail/1/1-red/md/109951163303128153.jpg','assets/img/productdetail/1/1-red/lg/109951163303128153.jpg'),
('7','1','assets/img/productdetail/1/1-red/sm/109951163303122468.jpg','assets/img/productdetail/1/1-red/md/109951163303122468.jpg','assets/img/productdetail/1/1-red/lg/109951163303122468.jpg'),
('8','2','assets/img/productdetail/1/1-black/sm/109951163303129169.jpg','assets/img/productdetail/1/1-black/md/109951163303129169.jpg','assets/img/productdetail/1/1-black/lg/109951163303129169.jpg'),
('9','2','assets/img/productdetail/1/1-black/sm/109951163303121947.jpg','assets/img/productdetail/1/1-black/md/109951163303121947.jpg','assets/img/productdetail/1/1-black/lg/109951163303121947.jpg'),
('10','2','assets/img/productdetail/1/1-black/sm/109951163303121948.jpg','assets/img/productdetail/1/1-black/md/109951163303121948.jpg','assets/img/productdetail/1/1-black/lg/109951163303121948.jpg'),
('11','2','assets/img/productdetail/1/1-black/sm/109951163303121952.jpg','assets/img/productdetail/1/1-black/md/109951163303121952.jpg','assets/img/productdetail/1/1-black/lg/109951163303121952.jpg'),
('12','3','assets/img/productdetail/1/1-white/sm/109951163303124833.jpg','assets/img/productdetail/1/1-white/md/109951163303124833.jpg','assets/img/productdetail/1/1-white/lg/109951163303124833.jpg');



-- ----------------------------
-- Table structure for `163_order`
-- ----------------------------
DROP TABLE IF EXISTS `163_order`;
CREATE TABLE `163_order` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_order
-- ----------------------------

-- ----------------------------
-- Table structure for `163_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `163_order_detail`;
CREATE TABLE `163_order_detail` (
  `did` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `163_receiver_address`
-- ----------------------------
DROP TABLE IF EXISTS `163_receiver_address`;
CREATE TABLE `163_receiver_address` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `receiver` varchar(16) default NULL,
  `province` varchar(16) default NULL,
  `city` varchar(16) default NULL,
  `county` varchar(16) default NULL,
  `address` varchar(128) default NULL,
  `cellphone` varchar(16) default NULL,
  `fixedphone` varchar(16) default NULL,
  `postcode` char(6) default NULL,
  `tag` varchar(16) default NULL,
  `is_default` tinyint(1) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for `163_shoppingcart_item`
-- ----------------------------
DROP TABLE IF EXISTS `163_shoppingcart_item`;
CREATE TABLE `163_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `detail_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_shoppingcart_item
-- ----------------------------
INSERT INTO `163_shoppingcart_item` VALUES ('1', '10', '17', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('2', '11', '11', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('3', '12', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('4', '13', '3', '9', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('5', '14', '1', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('13', '20', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('14', '22', '17', '11', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('15', '20', '28', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('16', '25', '2', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('17', '3', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('18', '3', '14', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('19', '28', '1', '99997', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('20', '29', '31', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('25', '3', '18', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('26', '32', '13', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('27', '32', '5', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('28', '32', '19', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('29', '33', '1', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('31', '3', '1', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('32', '35', '20', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('33', '2', '19', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('34', '39', '19', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('35', '1', '5', '15', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('36', '1', '28', '2', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('37', '1', '9', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('38', '45', '22', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('39', '46', '1', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('40', '48', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('41', '1', '1', '6', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('42', '50', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('43', '52', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('44', '51', '5', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('45', '54', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('46', '56', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('47', '59', '5', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('48', '59', '9', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('49', '59', '19', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('50', '31', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('51', '59', '1', '2', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('52', '60', '28', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('53', '46', '21', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('54', '1', '12', '2', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('55', '61', '5', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('56', '61', '6', '1', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('57', '70', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('58', '71', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('59', '1', '4', '3', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('60', '36', '17', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('61', '35', '17', '7', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('62', '35', '5', '13', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('63', '72', '9', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('64', '82', '1', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('65', '83', '17', '1', '1');
INSERT INTO `163_shoppingcart_item` VALUES ('66', '35', '28', '4', '0');
INSERT INTO `163_shoppingcart_item` VALUES ('67', '65', '40', '2', '0');

-- ----------------------------
-- Table structure for `163_user`
-- ----------------------------
DROP TABLE IF EXISTS `163_user`;
CREATE TABLE `163_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 163_user
-- ----------------------------
INSERT INTO `163_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `163_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `163_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `163_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `163_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `163_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `163_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `163_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `163_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `163_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO `163_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO `163_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO `163_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO `163_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO `163_user` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null);
INSERT INTO `163_user` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null);
INSERT INTO `163_user` VALUES ('17', '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', null, null, null);
INSERT INTO `163_user` VALUES ('18', '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null, null, null);
INSERT INTO `163_user` VALUES ('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null, null, null);
INSERT INTO `163_user` VALUES ('20', '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null);
INSERT INTO `163_user` VALUES ('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null);
INSERT INTO `163_user` VALUES ('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null);
INSERT INTO `163_user` VALUES ('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null);
INSERT INTO `163_user` VALUES ('24', '123456', '123456', '123456@1.com', '13815668132', null, null, null);
INSERT INTO `163_user` VALUES ('25', '1234', '111111', '734713428@qq.com', '18061920422', null, null, null);
INSERT INTO `163_user` VALUES ('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null, null, null);
INSERT INTO `163_user` VALUES ('27', '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', null, null, null);
INSERT INTO `163_user` VALUES ('28', 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', null, null, null);
INSERT INTO `163_user` VALUES ('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null, null, null);
INSERT INTO `163_user` VALUES ('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null, null, null);
INSERT INTO `163_user` VALUES ('31', 'tom', '123456', 'tom@tedu.cn', '13801234568', null, null, null);
INSERT INTO `163_user` VALUES ('32', 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', null, null, null);
INSERT INTO `163_user` VALUES ('33', 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', null, null, null);
INSERT INTO `163_user` VALUES ('34', 'yangtao', '123456', '250737026@qq.com', '18256953222', null, null, null);
INSERT INTO `163_user` VALUES ('35', 'tarena', '123456', '783664829@qq.com', '17711625897', null, null, null);
INSERT INTO `163_user` VALUES ('36', 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', null, 'lulu', '0');
INSERT INTO `163_user` VALUES ('37', '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', null, null, null);
INSERT INTO `163_user` VALUES ('38', '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', null, '', '0');
INSERT INTO `163_user` VALUES ('39', 'Yeye ', '123456', '1610608370@qq.com', '15062394551', null, null, null);
INSERT INTO `163_user` VALUES ('40', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `163_user` VALUES ('41', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `163_user` VALUES ('42', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `163_user` VALUES ('43', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `163_user` VALUES ('44', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `163_user` VALUES ('45', 'hjh', '958030', 'hjh@126.com', '17812344567', null, null, null);
INSERT INTO `163_user` VALUES ('46', 'ewq', '123456', '1234567890@qq.com', '12345678909', null, null, null);
INSERT INTO `163_user` VALUES ('47', 'pipi', '123456', '78@qq.com', '12367889993', null, null, null);
INSERT INTO `163_user` VALUES ('48', 'Lovica', '309418727', '1684707021@qq.com', '18435130456', null, null, null);
INSERT INTO `163_user` VALUES ('49', 'htt0908', '19920908', '418720482@qq.com', '15244691033', null, null, null);
INSERT INTO `163_user` VALUES ('50', 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', null, null, null);
INSERT INTO `163_user` VALUES ('51', 'zhong', '123456', '123456789@126.com', '13120211111', null, null, null);
INSERT INTO `163_user` VALUES ('52', '金豆豆', '123456789', '1170363143@qq.com', '15738619097', null, null, null);
INSERT INTO `163_user` VALUES ('53', 'wangjunfei', '123456', '396225880@qq.com', '13205935797', null, null, null);
INSERT INTO `163_user` VALUES ('54', 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', null, null, null);
INSERT INTO `163_user` VALUES ('55', 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', null, null, null);
INSERT INTO `163_user` VALUES ('56', 'xiaoming123', '123456', '54646@qq.com', '13553688534', null, null, null);
INSERT INTO `163_user` VALUES ('57', 'yuanzhi', '123456', '270096123@qq.com', '15962573639', null, null, null);
INSERT INTO `163_user` VALUES ('58', 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', null, null, null);
INSERT INTO `163_user` VALUES ('59', 'fengkuang', '123456', '113577976@qq.com', '18559132248', null, null, null);
INSERT INTO `163_user` VALUES ('60', 'y163aaa', '123456', '2280517552@qq.com', '13716225357', null, null, null);
INSERT INTO `163_user` VALUES ('61', 'linlei0001', '58874439', '876056078@qq.com', '13390922939', null, null, null);
INSERT INTO `163_user` VALUES ('62', 'superman', '1314520', '904202099@qq.com', '12345678910', null, null, null);
INSERT INTO `163_user` VALUES ('63', 'tom222', '123456', '1@163.com', '13456789012', null, null, null);
INSERT INTO `163_user` VALUES ('64', 'tom1234', '123456', '2@163.com', '13423456789', null, null, null);
INSERT INTO `163_user` VALUES ('65', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, '左天', '1');
INSERT INTO `163_user` VALUES ('66', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null);
INSERT INTO `163_user` VALUES ('67', '李白李白', '123456', '125365@163.com', '13986273022', null, null, null);
INSERT INTO `163_user` VALUES ('68', 'dingdong', '123456', '15194898156@qq.com', '15112316516', null, null, null);
INSERT INTO `163_user` VALUES ('69', 'wenjinhua', '236239', '461677613@qq.com', '13516574786', null, null, null);
INSERT INTO `163_user` VALUES ('70', 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', null, null, null);
INSERT INTO `163_user` VALUES ('71', 'zhangsan', 'add123456', 'add@qq.com', '12234324223', null, null, null);
INSERT INTO `163_user` VALUES ('72', '高渐离', '123456', '935263676@qq.com', '18352501250', null, null, null);
INSERT INTO `163_user` VALUES ('73', 'lifan', '123456', '18092034652@163.com', '18092933456', null, null, null);
INSERT INTO `163_user` VALUES ('74', 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', null, null, null);
INSERT INTO `163_user` VALUES ('75', 'tingDING', '123456', '12345678@qq.com', '13548525468', null, null, null);
INSERT INTO `163_user` VALUES ('76', 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', null, null, null);
INSERT INTO `163_user` VALUES ('77', 'weiyiwei', '123456', '598475405@qq.com', '15923741956', null, '韦祎伟', '1');
INSERT INTO `163_user` VALUES ('78', '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', null, null, null);
INSERT INTO `163_user` VALUES ('79', 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', null, null, null);
INSERT INTO `163_user` VALUES ('80', 'loonchao', '123456', '850248873@qq.com', '13548729051', null, null, null);
INSERT INTO `163_user` VALUES ('81', 'hushuang', '123456', '850248813@qq.com', '15802507525', null, null, null);
INSERT INTO `163_user` VALUES ('82', 'test713', '2017713', '12458148@qq.com', '13596542654', null, null, null);
INSERT INTO `163_user` VALUES ('83', 'fhr9588', '000009588', '111111111@qq.com', '12345666666', null, null, null);
INSERT INTO `163_user` VALUES ('84', 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', null, null, null);
INSERT INTO `163_user` VALUES ('85', 'tom10', '123456', '123@163.com', '12323456', null, null, null);
INSERT INTO `163_user` VALUES ('86', '12121', '121212', '516898@qq.com', '15163222922', null, null, null);
INSERT INTO `163_user` VALUES ('87', 'qwer', 'qwer123', '519808982@qq.com', '15163222923', null, null, null);
INSERT INTO `163_user` VALUES ('88', '芳芳。。', '111111', '627265@qq.com', '17704622223', null, null, null);
INSERT INTO `163_user` VALUES ('89', 'smm123456', '963852741', '974255093@qq.com', '15098807312', null, null, null);
INSERT INTO `163_user` VALUES ('90', 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', null, null, null);
