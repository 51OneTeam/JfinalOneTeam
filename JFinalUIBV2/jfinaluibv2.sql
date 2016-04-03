/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : jfinaluibv2

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-04-03 19:52:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pt_department`
-- ----------------------------
DROP TABLE IF EXISTS `pt_department`;
CREATE TABLE `pt_department` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `allchildnodeids` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `departmentlevel` bigint(20) DEFAULT NULL,
  `depttype` char(1) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `parentdepartmentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `principaluserids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_department
-- ----------------------------
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', null, '-1', null, '根节点', '1_open.png', 'true', '公司部门组织结构', '1', '#', null, null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', null, '0', null, '系统平台部', '2.png', 'true', '系统平台部', '0', null, '8a40c0353fa828a6013fa898d4ac0026', null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', null, '0', null, '运维部', '3.png', 'false', '运维部', '0', null, '8a40c0353fa828a6013fa898d4ac0027', '03a44ba0aa4e4905bea726d4da976ba5');
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0029', '0', null, '0', null, '测试账户', '4.png', 'true', '测试部门', '0', null, '8a40c0353fa828a6013fa898d4ac0026', null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0030', '0', null, '0', null, '子部门2', '5.png', 'true', '平台组', '0', null, '8a40c0353fa828a6013fa898d4ac0029', '03a44ba0aa4e4905bea726d4da976ba5');

-- ----------------------------
-- Table structure for `pt_dict`
-- ----------------------------
DROP TABLE IF EXISTS `pt_dict`;
CREATE TABLE `pt_dict` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `paths` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `zhuangtai` char(1) COLLATE utf8_bin DEFAULT NULL,
  `parentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `val` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `i18n` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否国际化',
  `val_zhcn` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhhk` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhtw` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_ja` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_enus` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_dict
-- ----------------------------
INSERT INTO `pt_dict` VALUES ('039b23de27ea40cea3eda44934dd3814', '0', null, '6.png', '性感妩媚', '6', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/039b23de27ea40cea3eda44934dd3814', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'xinggan', null, null, '性感妩媚', '性感妩媚', '性感妩媚', '性感妩媚', '性感妩媚', '1');
INSERT INTO `pt_dict` VALUES ('0b408161c7bb4cc09406968caa3b2f82', '0', null, '2.png', '少女时代', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/7a604aa5d2fe416cbd015b40d02e83a5/0b408161c7bb4cc09406968caa3b2f82', null, '7a604aa5d2fe416cbd015b40d02e83a5', 'false', '4', 'tenager', null, null, '少女时代', '少女时代', '少女时代', '少女时代', '少女时代', '1');
INSERT INTO `pt_dict` VALUES ('0c78f87750a745bbb59005a6ca0f744a', '0', null, '3.png', 'weixinToken', '3', '100103root/83f4b0ee56904cbeb5f91696ad804c29/0c78f87750a745bbb59005a6ca0f744a', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinToken', '123', '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('0ccc0a4b333349c18ac5692f1039f67f', '0', null, '2.png', '货源档次', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/0ccc0a4b333349c18ac5692f1039f67f', null, 'f299ecd107ad4aabae5628c72cca48fa', 'true', '3', 'dangci', null, null, '货源档次', '货源档次', '货源档次', '货源档次', '货源档次', '1');
INSERT INTO `pt_dict` VALUES ('106cea80edf64172b5078fb7c5568bc6', '0', null, '4.png', '上装', '4', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6', null, 'f299ecd107ad4aabae5628c72cca48fa', 'true', '3', 'shang', null, null, '上装', '上装', '上装', '上装', '上装', '1');
INSERT INTO `pt_dict` VALUES ('1070d455f55a4b08b6b5bff15f3eeedb', '0', null, '4.png', '中老年', '4', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/7a604aa5d2fe416cbd015b40d02e83a5/1070d455f55a4b08b6b5bff15f3eeedb', null, '7a604aa5d2fe416cbd015b40d02e83a5', 'false', '4', 'oldwoman', null, null, '中老年', '中老年', '中老年', '中老年', '中老年', '1');
INSERT INTO `pt_dict` VALUES ('10c3fc9a884a4cfc91f47e197913fd50', '1', null, '2.png', '钟祥市', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50', '1', 'a1f14efbb8cb4e44a30bd32194d0f24b', 'true', '3', 'zhongXiangShi', null, null, '钟祥市', '钟祥市', '钟祥市', '钟祥市', '钟祥市', '1');
INSERT INTO `pt_dict` VALUES ('1133dc88da8f48b2bba91354a90f9bf4', '0', null, '5.png', '连衣裙', '5', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/1133dc88da8f48b2bba91354a90f9bf4', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'liany', null, null, '连衣裙', '连衣裙', '连衣裙', '连衣裙', '连衣裙', '1');
INSERT INTO `pt_dict` VALUES ('12dc5cf5a1a341749b61262420152e8b', '0', null, '5.png', '下装', '5', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b', null, 'f299ecd107ad4aabae5628c72cca48fa', 'true', '3', 'xiazhuang', null, null, '下装', '下装', '下装', '下装', '下装', '1');
INSERT INTO `pt_dict` VALUES ('130abcf1504044cab8e4c0ab23091fb6', '0', null, '2.png', '中老端庄', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/130abcf1504044cab8e4c0ab23091fb6', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'duanzhuang', null, null, '中老端庄', '中老端庄', '中老端庄', '中老端庄', '中老端庄', '1');
INSERT INTO `pt_dict` VALUES ('18a137a0b92944ba857b5dec39b4fa69', '0', null, '2.png', '河南省', '2', '100103root/31b6516f36d44fc280b82affc270c479/18a137a0b92944ba857b5dec39b4fa69', '1', '31b6516f36d44fc280b82affc270c479', 'false', '2', 'heNanSheng', null, '1', '河南省', '河南省', '河南省', '河南省', '河南省', '1');
INSERT INTO `pt_dict` VALUES ('1b8458e8eb0d4e999fd6ac9819fde64e', '0', null, '3.png', '高端货源', '3', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/0ccc0a4b333349c18ac5692f1039f67f/1b8458e8eb0d4e999fd6ac9819fde64e', null, '0ccc0a4b333349c18ac5692f1039f67f', 'false', '4', 'gaoduan', null, null, '高端货源', '高端货源', '高端货源', '高端货源', '高端货源', '1');
INSERT INTO `pt_dict` VALUES ('208af1146b594611aeffba1a556fa010', '0', null, '2.png', '精致高贵', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/208af1146b594611aeffba1a556fa010', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'gaogui', null, null, '精致高贵', '精致高贵', '精致高贵', '精致高贵', '精致高贵', '1');
INSERT INTO `pt_dict` VALUES ('274f262c19864f3a812c876dcdf4e4eb', '0', null, '5.png', '类目', '5', '100103root/274f262c19864f3a812c876dcdf4e4eb', null, '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'leimu', null, null, '类目', '类目', '类目', '类目', '类目', '1');
INSERT INTO `pt_dict` VALUES ('3082e48992104e3ca8c2f542bbcfbe63', '0', null, '2.png', '三室一厅', '1', '100103root/56e8bdbc8d77460da17e473ee30906b0/3082e48992104e3ca8c2f542bbcfbe63', '1', '56e8bdbc8d77460da17e473ee30906b0', 'false', '2', 'sanShiYiTing', null, '1', '三室一厅', '三室一厅', '三室一厅', '三室一厅', '三室一厅', '1');
INSERT INTO `pt_dict` VALUES ('31425aea9a7846b0a510d67536a17eda', '0', null, '4.png', '半身裙', '4', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/31425aea9a7846b0a510d67536a17eda', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'banshenqun', null, null, '半身裙', '半身裙', '半身裙', '半身裙', '半身裙', '1');
INSERT INTO `pt_dict` VALUES ('31b6516f36d44fc280b82affc270c479', '2', null, '2.png', '省市区', '1', '100103root/31b6516f36d44fc280b82affc270c479', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'shengShiQu', null, null, '省市区', '省市区', '省市区', '省市区', '省市区', '1');
INSERT INTO `pt_dict` VALUES ('325acbd77f5b43a894ec4ef53ba20914', '0', null, '2.png', '洪山区', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902/325acbd77f5b43a894ec4ef53ba20914', '1', '64659405a79a4ecb9f116ae84ec55902', 'false', '4', 'hongShanQu', null, '1', '洪山区', '洪山区', '洪山区', '洪山区', '洪山区', '1');
INSERT INTO `pt_dict` VALUES ('370a8366e5754209a752424de2b602de', '0', null, '3.png', '棉衣/棉服', '3', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/370a8366e5754209a752424de2b602de', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'miany', null, null, '棉衣/棉服', '棉衣/棉服', '棉衣/棉服', '棉衣/棉服', '棉衣/棉服', '1');
INSERT INTO `pt_dict` VALUES ('3f60346f86ac4bccabf4940eb6c7f7af', '0', null, '6.png', '打底裤', '6', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/3f60346f86ac4bccabf4940eb6c7f7af', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'dadik', null, null, '打底裤', '打底裤', '打底裤', '打底裤', '打底裤', '1');
INSERT INTO `pt_dict` VALUES ('405dc683656a4b328de5d5a19d1662d3', '0', null, '2.png', '胡集镇', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50/405dc683656a4b328de5d5a19d1662d3', null, '10c3fc9a884a4cfc91f47e197913fd50', 'false', '4', 'huJiZhen', null, '1', '胡集镇', '胡集镇', '胡集镇', '胡集镇', '胡集镇', '1');
INSERT INTO `pt_dict` VALUES ('41ee2a51a06e4dafa49cab5b9401a07f', '1', null, '2.png', '风格', '3', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f', null, 'f299ecd107ad4aabae5628c72cca48fa', 'true', '3', 'fengeg', null, null, '风格', '风格', '风格', '风格', '风格', '1');
INSERT INTO `pt_dict` VALUES ('46c60917e4fc4a6f8dfe54e61893217f', '0', null, '8.png', '文艺个性', '8', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/46c60917e4fc4a6f8dfe54e61893217f', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'wenyi', null, null, '文艺个性', '文艺个性', '文艺个性', '文艺个性', '文艺个性', '1');
INSERT INTO `pt_dict` VALUES ('56e8bdbc8d77460da17e473ee30906b0', '0', null, '2.png', '房屋结构', '2', '100103root/56e8bdbc8d77460da17e473ee30906b0', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'fangWuJieGou', null, '1', '房屋结构', '房屋结构', '房屋结构', '房屋结构', '房屋结构', '1');
INSERT INTO `pt_dict` VALUES ('64659405a79a4ecb9f116ae84ec55902', '0', null, '2.png', '武汉市', '2', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902', '1', 'a1f14efbb8cb4e44a30bd32194d0f24b', 'true', '3', 'wuHanShi', null, '1', '武汉市', '武汉市', '武汉市', '武汉市', '武汉市', '1');
INSERT INTO `pt_dict` VALUES ('67eb7c701da346319af0602f9a4d4243', '0', null, '4.png', '通勤OL', '4', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/67eb7c701da346319af0602f9a4d4243', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'tongqing', null, null, '通勤OL', '通勤OL', '通勤OL', '通勤OL', '通勤OL', '1');
INSERT INTO `pt_dict` VALUES ('68f748a656794400a26904b3742b4c5a', '0', null, '5.png', '大码装', '5', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/68f748a656794400a26904b3742b4c5a', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'damaz', null, null, '大码装', '大码装', '大码装', '大码装', '大码装', '1');
INSERT INTO `pt_dict` VALUES ('6da6edefa17245499039c84592874dde', '0', null, '2.png', '小脚裤', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/6da6edefa17245499039c84592874dde', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'xiaojiao', null, null, '小脚裤', '小脚裤', '小脚裤', '小脚裤', '小脚裤', '1');
INSERT INTO `pt_dict` VALUES ('70c1531b576d47e2b11ec0a07e40f8be', '1', null, '2.png', '平价货源', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/0ccc0a4b333349c18ac5692f1039f67f/70c1531b576d47e2b11ec0a07e40f8be', null, '0ccc0a4b333349c18ac5692f1039f67f', 'false', '4', 'pingjia', null, null, '平价货源区', '平价货源区', '平价货源区', '平价货源区', '平价货源区', '1');
INSERT INTO `pt_dict` VALUES ('7381008292054bccba20224bc33774d7', '6', null, '2.png', 'weixinAppID', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29/7381008292054bccba20224bc33774d7', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppID', '123', '1', '1234', '1234', '1234', '1234', '1234', '1');
INSERT INTO `pt_dict` VALUES ('7625624b74f94cb185b773c05eff4da4', '0', null, '2.png', '青年时代', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/7a604aa5d2fe416cbd015b40d02e83a5/7625624b74f94cb185b773c05eff4da4', null, '7a604aa5d2fe416cbd015b40d02e83a5', 'false', '4', 'young', null, null, '青年时代', '青年时代', '青年时代', '青年时代', '青年时代', '1');
INSERT INTO `pt_dict` VALUES ('76ef629aead44809baa4eaea984f29b8', '0', null, '2.png', '休闲裤', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/76ef629aead44809baa4eaea984f29b8', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'xiuxianku', null, null, '休闲裤', '休闲裤', '休闲裤', '休闲裤', '休闲裤', '1');
INSERT INTO `pt_dict` VALUES ('7a604aa5d2fe416cbd015b40d02e83a5', '0', null, '2.png', '人群', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/7a604aa5d2fe416cbd015b40d02e83a5', null, 'f299ecd107ad4aabae5628c72cca48fa', 'true', '3', 'people', null, null, '人群', '人群', '人群', '人群', '人群', '1');
INSERT INTO `pt_dict` VALUES ('8094c60d7a594b36bb0187cbce9c4188', '0', null, '2.png', 'weixinAppSecret', '2', '100103root/83f4b0ee56904cbeb5f91696ad804c29/8094c60d7a594b36bb0187cbce9c4188', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppSecret', '123', '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('816d7595b2014af1867fd16f2fc0e256', '0', null, '2.png', '呢子外套', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/816d7595b2014af1867fd16f2fc0e256', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'niziw', null, null, '呢子外套', '呢子外套', '呢子外套', '呢子外套', '呢子外套', '1');
INSERT INTO `pt_dict` VALUES ('83f4b0ee56904cbeb5f91696ad804c29', '0', null, '2.png', '微信配置', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'weixinConfig', null, '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('86f2eacd76484e97abec77587e396dfd', '0', null, '9.png', '前卫潮女', '9', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/86f2eacd76484e97abec77587e396dfd', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'caonv', null, null, '前卫潮女', '前卫潮女', '前卫潮女', '前卫潮女', '前卫潮女', '1');
INSERT INTO `pt_dict` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '字典树', '1_open.png', '字典树', '1', '100103root', '1', null, 'true', '0', null, null, '0', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('8dac7e24f70d47a6957170f11272dd50', '0', null, '3.png', '大龄熟女', '3', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/7a604aa5d2fe416cbd015b40d02e83a5/8dac7e24f70d47a6957170f11272dd50', null, '7a604aa5d2fe416cbd015b40d02e83a5', 'false', '4', 'oldgile', null, null, '大龄熟女', '大龄熟女', '大龄熟女', '大龄熟女', '大龄熟女', '1');
INSERT INTO `pt_dict` VALUES ('a0c50a09b21e448f93390cb72f16bce5', '0', null, '2.png', '男装货源', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/a0c50a09b21e448f93390cb72f16bce5', null, '274f262c19864f3a812c876dcdf4e4eb', 'false', '2', 'nanzhuang', null, null, '男装货源', '男装货源', '男装货源', '男装货源', '男装货源', '1');
INSERT INTO `pt_dict` VALUES ('a1f14efbb8cb4e44a30bd32194d0f24b', '0', null, '2.png', '湖北省', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b', '1', '31b6516f36d44fc280b82affc270c479', 'true', '2', 'huBeiSheng', null, '1', '湖北省', '湖北省', '湖北省', '湖北省', '湖北省', '1');
INSERT INTO `pt_dict` VALUES ('a929cbf789a74107a74aec88c0bcc8fe', '0', null, '2.png', '柴湖镇', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50/a929cbf789a74107a74aec88c0bcc8fe', null, '10c3fc9a884a4cfc91f47e197913fd50', 'false', '4', 'chaiHuZhen', null, '1', '柴湖镇', '柴湖镇', '柴湖镇', '柴湖镇', '柴湖镇', '1');
INSERT INTO `pt_dict` VALUES ('af0b5ecd559c40d88bc52e16d51f32e9', '0', null, '2.png', '甜美装', '10', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/af0b5ecd559c40d88bc52e16d51f32e9', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'tianmei', null, null, '甜美装', '甜美装', '甜美装', '甜美装', '甜美装', '1');
INSERT INTO `pt_dict` VALUES ('bf1bf96a123447c58b7f181d3e4e6099', '0', null, '2.png', '两室一厅', '2', '100103root/56e8bdbc8d77460da17e473ee30906b0/bf1bf96a123447c58b7f181d3e4e6099', '1', '56e8bdbc8d77460da17e473ee30906b0', 'false', '2', 'laingshiyiting', null, '1', '两室一厅', '两室一厅', '两室一厅', '两室一厅', '两室一厅', '1');
INSERT INTO `pt_dict` VALUES ('c0c75fead3d8441aa0d8f9a2977cac00', '0', null, '2.png', '淑女装', '12', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/c0c75fead3d8441aa0d8f9a2977cac00', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'shunv', null, null, '淑女装', '淑女装', '淑女装', '淑女装', '淑女装', '1');
INSERT INTO `pt_dict` VALUES ('c3757af63f8941dc98ebe331f45b399a', '0', null, '6.png', '打底衫', '6', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/c3757af63f8941dc98ebe331f45b399a', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'dadis', null, null, '打底衫', '打底衫', '打底衫', '打底衫', '打底衫', '1');
INSERT INTO `pt_dict` VALUES ('c47a1c4bafbe43a5948a5ffbcfbb2985', '0', null, '2.png', '羽绒服', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/c47a1c4bafbe43a5948a5ffbcfbb2985', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'yurong', null, null, '羽绒服', '羽绒服', '羽绒服', '羽绒服', '羽绒服', '1');
INSERT INTO `pt_dict` VALUES ('c9e8f6bd0b5a4a71a778840324c4edd4', '0', null, '4.png', '毛衣/针织衫', '4', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/106cea80edf64172b5078fb7c5568bc6/c9e8f6bd0b5a4a71a778840324c4edd4', null, '106cea80edf64172b5078fb7c5568bc6', 'false', '4', 'zhenzhi', null, null, '毛衣/针织衫', '毛衣/针织衫', '毛衣/针织衫', '毛衣/针织衫', '毛衣/针织衫', '1');
INSERT INTO `pt_dict` VALUES ('ddbe84891d8b4632ac0dc2bd36f7f323', '0', null, '2.png', '江岸区', '2', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902/ddbe84891d8b4632ac0dc2bd36f7f323', '1', '64659405a79a4ecb9f116ae84ec55902', 'false', '4', 'jiangAnQu', null, '1', '江岸区', '江岸区', '江岸区', '江岸区', '江岸区', '1');
INSERT INTO `pt_dict` VALUES ('e7c1e190654d4784bb10814eff55be37', '0', null, '2.png', '中档货源', '2', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/0ccc0a4b333349c18ac5692f1039f67f/e7c1e190654d4784bb10814eff55be37', null, '0ccc0a4b333349c18ac5692f1039f67f', 'false', '4', 'zhongdang', null, null, '中档货源', '中档货源', '中档货源', '中档货源', '中档货源', '1');
INSERT INTO `pt_dict` VALUES ('eac7e19b5908497888f3c8f129cdeecb', '0', null, '2.png', '羽绒裤', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/eac7e19b5908497888f3c8f129cdeecb', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'yurongku', null, null, '羽绒裤', '羽绒裤', '羽绒裤', '羽绒裤', '羽绒裤', '1');
INSERT INTO `pt_dict` VALUES ('f299ecd107ad4aabae5628c72cca48fa', '0', null, '2.png', '女装货源', '1', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa', null, '274f262c19864f3a812c876dcdf4e4eb', 'true', '2', 'nvzhuang', null, null, '女装货源', '女装货源', '女装货源', '女装货源', '女装货源', '1');
INSERT INTO `pt_dict` VALUES ('f3a965e1e74b404bb48c2dfdbd9b6992', '0', null, '5.png', '牛仔裤', '5', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/12dc5cf5a1a341749b61262420152e8b/f3a965e1e74b404bb48c2dfdbd9b6992', null, '12dc5cf5a1a341749b61262420152e8b', 'false', '4', 'niuzai', null, null, '牛仔裤', '牛仔裤', '牛仔裤', '牛仔裤', '牛仔裤', '1');
INSERT INTO `pt_dict` VALUES ('f4fa86fc827e4a79b99b294c4b7c37c8', '0', null, '7.png', '休闲随意', '7', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/f4fa86fc827e4a79b99b294c4b7c37c8', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'xiuxian', null, null, '休闲随意', '休闲随意', '休闲随意', '休闲随意', '休闲随意', '1');
INSERT INTO `pt_dict` VALUES ('fb4989697a504c4a9d690e306fe7cab3', '0', null, '3.png', '牛仔女装', '3', '100103root/274f262c19864f3a812c876dcdf4e4eb/f299ecd107ad4aabae5628c72cca48fa/41ee2a51a06e4dafa49cab5b9401a07f/fb4989697a504c4a9d690e306fe7cab3', null, '41ee2a51a06e4dafa49cab5b9401a07f', 'false', '4', 'niuzai', null, null, '牛仔女装', '牛仔女装', '牛仔女装', '牛仔女装', '牛仔女装', '1');

-- ----------------------------
-- Table structure for `pt_group`
-- ----------------------------
DROP TABLE IF EXISTS `pt_group`;
CREATE TABLE `pt_group` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `roleids` text COLLATE utf8_bin,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_group
-- ----------------------------
INSERT INTO `pt_group` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '4', '系统管理员组', '超级管理员', 0x38613430633033353366613832386136303133666138393864346163303032332C, 'SuperAdmin');

-- ----------------------------
-- Table structure for `pt_menu`
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu`;
CREATE TABLE `pt_menu` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `operatorids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `parentmenuids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `systemsids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names_zhcn` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_zhhk` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_zhtw` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_enus` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_ja` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `param` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_menu
-- ----------------------------
INSERT INTO `pt_menu` VALUES ('017173f642e545b8a7b02fc6f5246b2f', '0', '2.png', null, '2', 'dfe9d74fe0ef4220bfcfe6d7bb2f9436', '625f1e0e951a4199a7262e064512e2c7', null, 'false', '用户管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('0b5defd198154139b9dcf664ab91fb6c', '0', '2.png', null, '2', null, '2dff23b9d5ee4f2ca64114d2bfea60b4', '8a40c0353fa828a6013fa898d4ac0020', 'false', '分类管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('0f6615a795b94d918fb65335a42c3d02', '0', '2.png', null, '2', '550118dc89b9439eb0cd0d9aeb1d59a4', '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '模板管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('19402831b276476ab38683e3f107cc66', '0', '4.png', null, '4', null, '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '一件网站更新', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('294ab73cc8274f1fa0663bf9c1bbe4d4', '1', '2.png', null, '3', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '配置项', '配置项', '配置项', 'Configuration item', '構成項目', null);
INSERT INTO `pt_menu` VALUES ('297e0cf944f8cce70144f8dce1540069', '2', '8.png', '0', '8', '74aa20442105408d90f9e6469a3a92b5', '294ab73cc8274f1fa0663bf9c1bbe4d4', '8a40c0353fa828a6013fa898d4ac0020', 'false', '字典管理', '字典管理', '字典管理', 'dictionary management', '辞書の管理', null);
INSERT INTO `pt_menu` VALUES ('2dff23b9d5ee4f2ca64114d2bfea60b4', '0', '5.png', null, '5', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '商品管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('3272e2e0a7cd4d7f8e1e88abe9d70ae4', '1', '2.png', null, '2', '06244cf3520c49e8a45cbde82a53fa5e', '294ab73cc8274f1fa0663bf9c1bbe4d4', null, 'false', '参数管理', '参数管理', '参数管理', 'Parameter management', 'パラメータの管理', null);
INSERT INTO `pt_menu` VALUES ('3ffaf784ef95497b803d7a9f43c9e7a8', '0', '5.png', null, '5', '0773a58c4bdb4858ab062c4a2a4da69a', '625f1e0e951a4199a7262e064512e2c7', null, 'false', '自动回复', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('4600e755ec5f4dc6a5783a4d097a42f2', '0', '4.png', null, '4', '420d8ebc68ad44dc8188d4c27dc585d1', '625f1e0e951a4199a7262e064512e2c7', null, 'false', '位置管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('460247f60ee1409f8222037594d8d391', '0', '2.png', null, '2', 'e3aac1af3cb84561b97018cf5c546d49', '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '静态模板管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('4bae83d582744c928cb8c8f419586a31', '1', '2.png', null, '1', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'false', '用户权限', '用户权限', '用户权限', 'User privilege', 'ユーザの権限', null);
INSERT INTO `pt_menu` VALUES ('51928f212fbd467191e5d381dd934200', '0', '2.png', null, '2', '99b53514199f4ceaa070764ec5b76c75', '2dff23b9d5ee4f2ca64114d2bfea60b4', '8a40c0353fa828a6013fa898d4ac0020', 'false', '商品列表', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('5cf8d05ba10f42088ab6457a20e153a5', '0', '6.png', null, '6', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '模板管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('625f1e0e951a4199a7262e064512e2c7', '0', '5.png', null, '5', null, '8a40c0353fa828a6013fa898d4ac1100', null, 'true', '微信管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('75e3b493276146eb839ed9fb3285e829', '1', '4.png', null, '4', '15495beebe984cd19dc30d65676c4c4d', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '资源负载', '资源负载', '资源负载', '资源负载', '资源负载', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '1', '3.png', '-1', '1', null, null, '8a40c0353fa828a6013fa898d4ac0020', 'true', '菜单管理', '菜单管理', '菜单管理', 'Menu management', '管理メニュー', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '1', '3.png', '2', '1', '91baed789bc14efdbebb10b49c69ee5b', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '用户管理', '用户管理', '用户管理', 'User management', 'ユーザーの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '1', '3.png', '2', '2', '1b0d7476974e4bf9b52f75fb82f87330', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '分组管理', '分组管理', '分组管理', 'Group management', 'グループの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '1', '3.png', '2', '3', '7ae62737df444d619f8fd376360d160c', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '角色管理', '角色管理', '角色管理', 'Role management', 'キャラクターの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '1', '3.png', '2', '5', '7eab5f800bab4efb8df1b2e8a0575f73', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '系统管理', '系统管理', '系统管理', 'System management', 'システム管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '1', '3.png', '2', '6', '0da15c49299d41a4b720f787d053e3cb', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '功能管理', '功能管理', '功能管理', 'Functional management', '機能管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '1', '8.png', '2', '4', '233356b63d8e477fb6e948b703232809', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '岗位管理', '岗位管理', '岗位管理', 'Post management', 'ポストの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '1', '3.png', '2', '7', 'ad09a1b897744812875c752c2d70f11a', 'a5bf1c38a2ea4b6085d15b830cb80518', '8a40c0353fa828a6013fa898d4ac0020', 'false', '部门管理', '部门管理', '部门管理', 'Department management', '部門の管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac1100', '0', '3.png', '-1', '1', null, null, 'd3a5c976c4c24751b6b00ec775692683', 'true', '后台菜单组织结构', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac2200', '0', '3.png', '-1', '1', null, null, '0c1230c98ef34e58947903fab5a4fa85', 'true', '后台菜单组织结构', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('8eef1395910f4f37b8d78845010896db', '0', '5.png', null, '5', null, '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '文章更新', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('9fd1692ae1fc4f3dab4f0fca7c2a6d68', '1', '3.png', null, '3', '36d3b89e378b451ca89d1a41a3c53e10', 'ed90c7b40be74552bbfa7ac58efdc5fe', null, 'false', '在线Log4j', '在线Log4j', '在线Log4j', 'Online Log4j', 'オンラインLog4j', null);
INSERT INTO `pt_menu` VALUES ('a5bf1c38a2ea4b6085d15b830cb80518', '1', '2.png', null, '2', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'false', '组织机构', '组织机构', '组织机构', 'Organization', '組織機構', null);
INSERT INTO `pt_menu` VALUES ('aa2b382e85b348e6a9cd0cb967ff4006', '0', '3.png', null, '3', null, '625f1e0e951a4199a7262e064512e2c7', null, 'false', '消息管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('afaa228cc65d4d21ab4a3f153487757b', '0', '6.png', null, '6', null, '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '商品更新', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('bbf768bd984943feaa61eadca7cc5532', '0', '3.png', null, '3', '581d94d5e040453fabb965b200073828', '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '邮件模板管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('bd5d741147f74a058a03bbb5164f392b', '1', '2.png', null, '9', 'd496b161d2564111992687b948862244', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '数据源', '数据源', '数据源', 'Data source', 'データソース', null);
INSERT INTO `pt_menu` VALUES ('c693d4dacf3c4dbb9d33bd2d7251d6ea', '0', '4.png', null, '4', '1f1b83ab99724acb814ec48c1092aefc', '5cf8d05ba10f42088ab6457a20e153a5', '8a40c0353fa828a6013fa898d4ac0020', 'false', '动态模板管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('cdfd617ec645490f98a64bf36102d44f', '6', '6.png', null, '6', null, '625f1e0e951a4199a7262e064512e2c7', null, 'false', '新增菜单12', '新增菜单13', '新增菜单14', '222', '111', null);
INSERT INTO `pt_menu` VALUES ('ed30f3cd2e9f4e0aa0b950c147035b67', '0', '2.png', null, '2', '2c91467f905a4f5ba9f52830131c8ad9', '625f1e0e951a4199a7262e064512e2c7', null, 'false', '分组管理', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('ed90c7b40be74552bbfa7ac58efdc5fe', '1', '2.png', null, '2', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '系统维护', '系统维护', '系统维护', 'System maintenance', 'システムのメンテナンス', null);
INSERT INTO `pt_menu` VALUES ('f353e484ce074b86b0210f66346d9a80', '1', '9.png', null, '10', '235d855d7b914d728e434f0f309aa04d', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '系统日志', '系统日志', '系统日志', 'The system log', 'システムログ', null);

-- ----------------------------
-- Table structure for `pt_module`
-- ----------------------------
DROP TABLE IF EXISTS `pt_module`;
CREATE TABLE `pt_module` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `parentmoduleids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `systemsids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_module
-- ----------------------------
INSERT INTO `pt_module` VALUES ('297e0cf944e9762e0144e97dfd6e00c9', '0', '数据源', '2.png', 'true', '数据源', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('3bf4c1829bf447979865fc4d2ab75801', '0', null, '2.png', 'true', 'Log4j', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('3dec44186175424cbee2d05ffbb690dd', '0', null, '2.png', 'true', 'Upload', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('3e048ee263c344318e9c4995a5cd35e0', '0', null, '2.png', 'true', '验证码', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('4090cac06e15459789bc5154eef67e4e', '0', null, '2.png', 'true', 'Ueditor', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('417ed3d3cf4d4b7a939613829e8db17d', '0', null, '3.png', 'true', '消息管理', '3', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('58a33495466b466496de45dc116e577e', '0', null, '2.png', 'true', '资源负载', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('7a35846a305c42abb68601b4f7347289', '0', null, '4.png', 'true', '主页管理', '4', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('8a1b51bb6fae4fac8591f4f387d250ff', '0', null, '2.png', 'true', '参数', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '根节点', '3.png', 'true', '根节点', '1', null, '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '0', '后台登陆', '8.png', 'true', '登陆', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '0', '字典', '2.png', 'true', '字典', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '0', '用户分组管理', '2.png', 'true', '分组', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '0', '角色管理', '2.png', 'true', '角色', '3', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '0', '岗位管理', '5.png', 'true', '岗位', '4', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', '系统管理', '5.png', 'true', '系统', '5', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', '功能管理', '7.png', 'true', '功能', '6', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', '部门管理', '3.png', 'true', '部门', '7', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0029', '0', '日志管理', '6.png', 'true', '日志', '11', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0030', '0', '用户管理', '3.png', 'true', '用户', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0031', '0', '公共功能', '5.png', 'true', '公共', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0032', '0', '菜单管理', '8.png', 'true', '菜单', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0033', '0', '模块管理', '7.png', 'true', '模块', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac1100', '0', '根节点', '3.png', 'true', '根节点', '1', null, 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac2200', '0', '根节点', '3.png', 'true', '根节点', '1', null, '0c1230c98ef34e58947903fab5a4fa85');
INSERT INTO `pt_module` VALUES ('8f53706d4af541588bde334d99d44727', '0', null, '6.png', 'true', '自动回复', '6', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('8f6e7e8c18334392b10f4a821589848f', '0', null, '2.png', 'true', '商品', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('c4e63c4171db4ae2a83f7dfcc2656b0e', '0', null, '2.png', 'true', '用户管理', '2', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('c87c35097a2d4bc898fe6e9b1e280a3d', '0', null, '5.png', 'true', '位置管理', '5', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('e6eb0165223447218410f867a9614300', '0', null, '2.png', 'true', '分组管理', '2', '8a40c0353fa828a6013fa898d4ac1100', 'd3a5c976c4c24751b6b00ec775692683');
INSERT INTO `pt_module` VALUES ('e86e5bc9ae5d44e78a48543cf348ca82', '0', null, '2.png', 'true', 'test', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('f1056bdb6fe94a5591530b7c34df3d0d', '0', null, '2.png', 'true', '模板引擎', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');

-- ----------------------------
-- Table structure for `pt_operator`
-- ----------------------------
DROP TABLE IF EXISTS `pt_operator`;
CREATE TABLE `pt_operator` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `onemany` char(1) COLLATE utf8_bin DEFAULT NULL,
  `returnparamkeys` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `returnurl` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rowfilter` char(1) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `moduleids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `splitpage` char(1) COLLATE utf8_bin DEFAULT NULL,
  `formtoken` char(1) COLLATE utf8_bin DEFAULT NULL,
  `ipblack` char(1) COLLATE utf8_bin DEFAULT NULL,
  `privilegess` char(1) COLLATE utf8_bin DEFAULT NULL,
  `ispv` char(1) COLLATE utf8_bin DEFAULT NULL,
  `pvtype` char(1) COLLATE utf8_bin DEFAULT NULL,
  `modulenames` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `onemanyindex` (`onemany`) USING BTREE,
  KEY `returnparamkeysindex` (`returnparamkeys`) USING BTREE,
  KEY `returnurlindex` (`returnurl`) USING BTREE,
  KEY `rowfilterindex` (`rowfilter`) USING BTREE,
  KEY `urlindex` (`url`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_operator
-- ----------------------------
INSERT INTO `pt_operator` VALUES ('01aa0c85c8b84ae8aca7f5484336b203', '1', null, '保存', null, null, null, '0', '/jf/platform/dict/save', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('05114c0cbe1f4c2095b3216f13cfb681', '0', null, '保存', null, null, null, '0', '/jf/wx/keyword/save', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('053d330462e1459ca1012c9d29113bc4', '0', null, '获取部门负责人', null, null, null, '0', '/jf/platform/dept/getPrincipal', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('06244cf3520c49e8a45cbde82a53fa5e', '0', null, 'treeTableIframe', null, null, null, '0', '/platform/param/treeTableIframe.html', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('0773a58c4bdb4858ab062c4a2a4da69a', '0', null, '默认主页', null, null, null, '0', '/jf/wx/keyword', '8f53706d4af541588bde334d99d44727', '1', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('091855dd809b418fae88a7fec6d9f246', '0', null, '准备更新', null, null, null, '0', '/jf/platform/dict/edit', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('09b6ce29313c4051ba765de516a9b283', '0', null, 'treeData', null, null, null, '0', '/jf/platform/station/treeData', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('0da15c49299d41a4b720f787d053e3cb', '0', null, '默认列表', null, null, null, '0', '/jf/platform/operator', '8a40c0353fa828a6013fa898d4ac0027', '1', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('0fb7938c7d614fc389568eb67b442303', '0', null, '单选', null, null, null, '0', '/platform/module/radio.html', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('1046389d8525451697f2793185e7d6ee', '0', null, '更新', null, null, null, '0', '/jf/platform/dept/update', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('10499bc7f9cb4adf99beba00343b4ea6', '0', null, '获取菜单功能', null, null, null, '0', '/jf/platform/menu/getOperator', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('12141c1c3be241ca8a868bce9cd610d5', '0', null, '准备添加', null, null, null, '0', '/platform/dict/add.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('15495beebe984cd19dc30d65676c4c4d', '0', null, '负载', null, null, null, '0', '/jf/platform/resources', '58a33495466b466496de45dc116e577e', '0', '0', '0', '1', null, null, '资源负载');
INSERT INTO `pt_operator` VALUES ('1553d9a97a4b4063a46f4be41e7adedd', '0', null, 'lucene', null, null, null, '0', '/jf/platform/test/lucene', 'e86e5bc9ae5d44e78a48543cf348ca82', '1', '0', '0', '1', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('15566e63f3104c73b4a0b4a784dd11ca', '0', null, '保存', null, null, null, '0', '/jf/platform/role/save', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('1a8b4d8e4411412fa8bb561393563a85', '0', null, '准备添加', null, null, null, '0', '/platform/user/add.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('1b0d7476974e4bf9b52f75fb82f87330', '0', null, '分组默认列表', null, null, null, '0', '/jf/platform/group', '8a40c0353fa828a6013fa898d4ac0023', '1', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('1b1a809815574b2a9c1d0e18d692de17', '0', null, '更新', null, null, null, '0', '/jf/platform/operator/update', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('1f1b83ab99724acb814ec48c1092aefc', '0', null, '动态模板列表', null, null, null, '0', '/jf/platform/templatedynamic', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('21141da4febe4c929abe37126b37fd12', '0', null, '多选', null, null, null, '0', '/platform/station/checkbox.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('21b0a910ef6e4c60a325d5e57e6e6f65', '0', null, '单选', null, null, null, '0', '/platform/dict/radio.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('22926eb196a14b48be775f4880b5ba94', '0', null, '保存', null, null, null, '0', '/jf/platform/group/save', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('233356b63d8e477fb6e948b703232809', '0', null, '默认树', null, null, null, '0', '/jf/platform/station', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('235d855d7b914d728e434f0f309aa04d', '0', null, '默认列表', null, null, null, '0', '/jf/platform/sysLog', '8a40c0353fa828a6013fa898d4ac0029', '1', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('24793c15219a4fc9a15060f8654dbbe9', '0', null, '接口测试', null, null, null, '0', '/jf/platform/test/jiekou', 'e86e5bc9ae5d44e78a48543cf348ca82', '0', '0', '0', '0', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('271a4ae9860341e6a30602070268e1e4', '0', null, '锁屏', null, null, null, '0', '/platform/login/lock_screen.html', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('29c18b3394924c30882da049da14ad99', '0', null, '更新', null, null, null, '0', '/jf/platform/role/update', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('2b7f6e28f9a74854b7399e8740b765fd', '0', null, 'log4jServlet', null, null, null, '0', '/se/log4j', '3bf4c1829bf447979865fc4d2ab75801', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('2be34991827e4e8da8e92f9b9e8bce25', '0', null, 'treeTableSub', null, null, null, '0', '/jf/platform/dict/treeTable', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('2c91467f905a4f5ba9f52830131c8ad9', '0', null, '默认分组列表', null, null, null, '0', '/jf/wx/group', 'e6eb0165223447218410f867a9614300', '1', '0', '0', '1', null, null, '分组管理');
INSERT INTO `pt_operator` VALUES ('2fbbc9cfb0bf4b5bb504ead155c3423c', '0', null, '保存', null, null, null, '0', '/jf/platform/station/save', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('2fee901117c64e18873f60e8f800713d', '0', null, '单选', null, null, null, '0', '/platform/station/radio.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('32a3e59964204a3c8848e84b864306ae', '0', null, '删除', null, null, null, '0', '/jf/platform/systems/delete', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('335d1f8f46eb47a18001889f8cc21348', '0', null, '删除', null, null, null, '0', '/jf/platform/role/delete', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('3514e40fcc7744b58d7bdb9d71558d09', '0', null, '动态模板更新', null, null, null, '0', '/jf/platform/template/update', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('362cf247241c4d12b6242301e4a73516', '0', null, '删除', null, null, null, '0', '/jf/platform/station/delete', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('36d3b89e378b451ca89d1a41a3c53e10', '1', null, 'iframe', null, null, null, '0', '/platform/log4j/iframe.html', '3bf4c1829bf447979865fc4d2ab75801', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('37218fb52ec94fb4bf76209a17916094', '0', null, '默认树', null, null, null, '0', '/jf/platform/module', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('378b023bfb7848119a7a57f4927dbef2', '0', null, '查看商品', null, null, null, '0', '/jf/platform/good/view', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('37a9a6966448469f9d9abe2e8aeb1b9e', '0', null, 'Upload', null, null, null, '0', '/jf/platform/upload', '3dec44186175424cbee2d05ffbb690dd', '0', '0', '0', '1', null, null, 'Upload');
INSERT INTO `pt_operator` VALUES ('38f3871f789c4936b37d17ea4823da58', '0', null, '锁屏密码验证', null, null, null, '0', '/jf/platform/login/pass', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('3b1e7c5d5e0e461c90e1f0032f679a25', '0', null, '查看', null, null, null, '0', '/jf/platform/dict/view', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('3b6a8f61e20e4bf2943421af2119e9b9', '0', null, '准备添加', null, null, null, '0', '/platform/param/add.html', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('3bfc62720fef4706b22c78d69d27a275', '0', null, '刷新缓存', null, null, null, '0', '/jf/platform/resources/refreshParamCache', '58a33495466b466496de45dc116e577e', '0', '0', '0', '1', null, null, '资源负载');
INSERT INTO `pt_operator` VALUES ('3dd486cd58da467dbd83ae420db14815', '0', null, '准备添加', null, null, null, '0', '/weiXin/keyword/add.html', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('3ee5f986289d4a1990f4e42c9a0caadb', '0', null, '准备添加', null, null, null, '0', '/platform/group/add.html', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('420d8ebc68ad44dc8188d4c27dc585d1', '0', null, '位置默认列表', null, null, null, '0', '/jf/wx/location', 'c87c35097a2d4bc898fe6e9b1e280a3d', '1', '0', '0', '1', null, null, '位置管理');
INSERT INTO `pt_operator` VALUES ('4376888fd74f4247a926529e5da03442', '0', null, 'treeData', null, null, null, '0', '/jf/platform/user/treeData', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('437e05d09dd94720b67c4f230cdebe58', '0', null, '更新', null, null, null, '0', '/jf/platform/module/update', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('45cf6e8f9c254e509399deda080f0e20', '0', null, '功能列表', null, null, null, '0', '/jf/platform/test/operator', 'e86e5bc9ae5d44e78a48543cf348ca82', '1', '0', '0', '1', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('46e00ef0fd234e9dbf68ed9bbb437d0f', '0', null, '多选', null, null, null, '0', '/platform/department/checkbox.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('473c717f89a447ddb243f420e993d2f1', '0', null, '查看模板', null, null, null, '0', '/jf/platform/template/view', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('4742f3095850456d9cdd9078c074b6b6', '0', null, '保存模板', null, null, null, '0', '/jf/platform/template/save', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('481d4d5c0a634c4085c72c990260e58d', '0', null, '微信管理主页', null, null, null, '0', '/jf/wx/index/content', '7a35846a305c42abb68601b4f7347289', '0', '0', '0', '1', null, null, '主页管理');
INSERT INTO `pt_operator` VALUES ('48db51f20b504c4ab489b1dcfd3ecbd9', '0', null, '密码变更', null, null, null, '0', '/platform/user/passChange.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('4a05ffcfe351476391a036937eaf733f', '0', null, '删除', null, null, null, '0', '/jf/platform/param/delete', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('4a6544ae7a2548ad81c0e3994999023c', '0', null, '准备设置菜单功能', null, null, null, '0', '/platform/menu/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('4c501cf7b83f4b058a05be15127c8edb', '0', null, '授权后的回调请求处理', null, null, null, '0', '/jf/wx/message/oauth2', '417ed3d3cf4d4b7a939613829e8db17d', '0', '0', '0', '0', null, null, '消息管理');
INSERT INTO `pt_operator` VALUES ('4df80521e66447618796c3cfe02bf239', '0', null, '默认treeTable', null, null, null, '0', '/jf/platform/dict', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('4f7a5bd18e1e4ed3849a94c48c14c5a1', '0', null, '验证邮箱是否存在', null, null, null, '0', '/jf/platform/login/valiMailBox', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('5148ea207b974ee197f0bc57060ab1ad', '0', null, '删除', null, null, null, '0', '/jf/wx/location/delete', 'c87c35097a2d4bc898fe6e9b1e280a3d', '0', '0', '0', '1', null, null, '位置管理');
INSERT INTO `pt_operator` VALUES ('550118dc89b9439eb0cd0d9aeb1d59a4', '1', null, '模板列表', null, null, null, '0', '/jf/platform/template', 'f1056bdb6fe94a5591530b7c34df3d0d', '1', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('581d94d5e040453fabb965b200073828', '0', null, '邮件模板列表', null, null, null, '0', '/jf/platform/templatemail', 'f1056bdb6fe94a5591530b7c34df3d0d', '1', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('58a85040aa9f40cca0bdba6e23e30363', '0', null, '保存', null, null, null, '0', '/jf/platform/dept/save', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('5982350f7d0e4b2ca72de64300d75223', '0', null, 'treeTable', null, null, null, '0', '/jf/platform/param/treeTable', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('5b249ad344d948b99f58768c323f5f71', '0', null, '准备添加', null, null, null, '0', '/platform/systems/add.html', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('5c15cf5c3761419a9029e4e094c8f53c', '0', null, '验证手机号是否存在', null, null, null, '0', '/jf/platform/login/valiMobile', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('5fb706b8a0e842a685d1bfeb8ebc9897', '0', null, '删除商品', null, null, null, '0', '/jf/platform/good/delete', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('5fcac107c80d493d91b53a815d4b297a', '0', null, '保存', null, null, null, '0', '/jf/platform/user/save', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('6131942dd2644790b80df13c14fb3ae8', '0', null, '保存', null, null, null, '0', '/jf/platform/param/save', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('6569e0d9f2cd4e3a97af4e1b0cd8d2f7', '0', null, '删除', null, null, null, '0', '/jf/platform/dict/delete', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('666f50e0f3b04f4ba43bcb4e719c1e8d', '0', null, '验证码', null, null, null, '0', '/jf/platform/authImg', '3e048ee263c344318e9c4995a5cd35e0', '0', '0', '0', '0', null, null, '验证码');
INSERT INTO `pt_operator` VALUES ('6805669b79c942d2b59cafc17be52d3f', '1', null, '测试接口页面', null, null, null, '0', '/platform/login/test.html', 'e86e5bc9ae5d44e78a48543cf348ca82', '0', '0', '0', '0', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('6b527ed138c343a89ddf73cf16fef565', '0', null, '更新', null, null, null, '0', '/jf/wx/keyword/update', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('6daed51284f94923b1c8a6414e646959', '0', null, 'treeData', null, null, null, '0', '/jf/platform/operator/treeData', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('7068022c09cb4b68b3d47dd9b8eb1e3b', '0', null, '编辑动态模板', null, null, null, '0', '/jf/platform/template/edit', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('74aa20442105408d90f9e6469a3a92b5', '0', null, 'treeTableIframe', null, null, null, '0', '/platform/dict/treeTableIframe.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('77823e12391a47729a1f82a00bc15c5b', '0', null, '准备更新', null, null, null, '0', '/jf/wx/keyword/edit', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('78c6026c6af44b41a6bef4cdb4cfb414', '0', null, '获取角色功能', null, null, null, '0', '/jf/platform/role/getOperator', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('79039a2260da46b0aabb5a62e8db6c87', '0', null, '查看', null, null, null, '0', '/jf/platform/user/view', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('7ae62737df444d619f8fd376360d160c', '0', null, '默认列表', null, null, null, '0', '/jf/platform/role', '8a40c0353fa828a6013fa898d4ac0024', '1', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('7b4281dd247c4624bee0d8f84c2c2715', '0', null, '保存', null, null, null, '0', '/jf/platform/systems/save', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('7cc12b5c154a4a9782c518c57e8ab3aa', '0', null, '准备更新', null, null, null, '0', '/jf/platform/role/edit', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('7eab5f800bab4efb8df1b2e8a0575f73', '0', null, '默认列表', null, null, null, '0', '/jf/platform/systems', '8a40c0353fa828a6013fa898d4ac0026', '1', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('7ed5eefbbf3d4aa78d0c5b99f3b7010c', '0', null, '登陆验证', null, null, null, '0', '/jf/platform/login/vali', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('83ef85fd17804bb195d0ad3c07f88c30', '0', null, '准备更新', null, null, null, '0', '/jf/platform/operator/edit', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('848f21e099994f749fd37a8581c13960', '0', null, '保存动态模板', null, null, null, '0', '/jf/platform/templatedynamic/save', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('86a502729bda46f0b607c2b4c6531bd3', '0', null, '自动补全', null, null, null, '0', '/jf/platform/test/autoComplete', 'e86e5bc9ae5d44e78a48543cf348ca82', '0', '0', '0', '1', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('886bd497064b4c9f87d8461ebba421d1', '0', null, '首页', null, null, null, '0', '/jf/platform/index', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('8bd9c0e14df941cdaf6253cd08dbd9cd', '0', null, '准备更新', null, null, null, '0', '/jf/platform/systems/edit', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('8ca8af501522439d8c9249e00db5d78d', '0', null, '查看', null, null, null, '0', '/jf/platform/sysLog/view', '8a40c0353fa828a6013fa898d4ac0029', '0', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('8f79857b31d4475a94c712e997e89c99', '0', null, '更新', null, null, null, '0', '/jf/platform/dict/update', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('910955c2192a418995eeab8bf15372e9', '0', null, '准备添加', null, null, null, '0', '/platform/operator/add.html', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('91baed789bc14efdbebb10b49c69ee5b', '0', null, '默认主页列表', null, null, null, '0', '/jf/platform/user', '8a40c0353fa828a6013fa898d4ac0030', '1', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('91f78713c3084b6e9b7419e2a97c7dac', '0', null, '查看', null, null, null, '0', '/jf/platform/param/view', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('9332b7d5f2af4d6abfab6d7b26a40e7e', '1', null, '更新商品', null, null, null, '0', '/jf/platform/good/update', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('966add811aa94f97a12faceb5dff4773', '0', null, '注册', null, '{     \"error\": \"测试内容2b4x\",     \"info\": \"测试内容mpx4\",     \"status\": 51743,     \"url\": \"测试内容44t3\" }', '/jf/platform/index', '0', '/jf/platform/user/req', '8a40c0353fa828a6013fa898d4ac0030', '0', '1', '0', '0', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('9765e6bb76eb40ab800cb8954822190e', '0', null, '删除', null, null, null, '0', '/jf/wx/keyword/delete', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('99a42a467bbf4e829fd0706507c9f7a7', '0', null, 'log4jHtml', null, null, null, '0', '/platform/log4j/log4j.html', '3bf4c1829bf447979865fc4d2ab75801', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('99b53514199f4ceaa070764ec5b76c75', '0', null, '商品列表', null, null, null, '0', '/jf/platform/good', '8f6e7e8c18334392b10f4a821589848f', '1', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('9a708f39e123455e84b6125774bab1ea', '0', null, 'treeData', null, null, null, '0', '/jf/platform/module/treeData', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('9ee4ee562eaa475a95f45d3daeb0220a', '0', null, '单选', null, null, null, '0', '/platform/param/radio.html', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('9f75b47bdc0249e2b493c47384785a72', '0', null, '保存', null, null, null, '0', '/jf/platform/menu/save', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('a0c01a5248cd4bf38e57945dbb2b98c5', '0', null, '更新', null, null, null, '0', '/jf/platform/group/update', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('a14abbcbffee4e58a698247dd2c800b8', '0', null, '删除动态模板', null, null, null, '0', '/jf/platform/templatedynamic/delete', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('a1ff68acf9b24c34b347ff21e333cb70', '0', null, '设置菜单功能', null, null, null, '0', '/jf/platform/menu/setOperator', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('a5289b2638d845fbb06dedbcdd517f97', '0', null, '删除', null, null, null, '0', '/jf/platform/group/delete', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('a64d2d70e8d74bd7827c8a4936d072ad', '0', null, '新增商品', null, null, null, '0', '/jf/platform/good/save', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('a6623c65480f4f2cb63a4d7673f81e3a', '0', null, 'treeData', null, null, null, '0', '/jf/platform/menu/treeData', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('aa126932641f4e068ed8278a332de85d', '0', null, '默认主页', null, null, null, '0', '/jf/platform/index/content', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('acbceb432b5849aca9e9b284240281ec', '0', null, '分组角色下拉选择', null, null, null, '0', '/jf/platform/role/select', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('ad09a1b897744812875c752c2d70f11a', '0', null, '默认树', null, null, null, '0', '/jf/platform/dept', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('ad51a6ca95c646ce9c03778eda715734', '0', null, '保存', null, null, null, '0', '/jf/platform/operator/save', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('af0af4a542d74e17bd7750219902031f', '0', null, '编辑商品', null, null, null, '0', '/jf/platform/good/edit', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('afe893c6be744c4f98187b084ac832e7', '0', null, '编辑更新菜单', null, null, null, '0', '/jf/platform/menu/edit', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('b13b002e2fad4e95bbe0e4dbc9fbdfe1', '0', null, '保存', null, null, null, '0', '/jf/platform/module/save', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('b23b17d4c83242e8a1a8ee8cfcde9907', '0', null, '查看', null, null, null, '0', '/jf/platform/operator/view', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('b352e4246e754a9691bcc9011f445665', '0', null, 'treeData', null, null, null, '0', '/jf/platform/param/treeData', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('b3af8fb65a00418c966b8f2a5ac97400', '0', null, '验证身份证是否存在', null, null, null, '0', '/jf/platform/login/valiIdcard', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('b4ee4ae4391f4243be69e838545d2131', '0', null, 'treeData', null, null, null, '0', '/jf/platform/dept/treeData', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('b6f88c3ea5844ccf834b4cf14ebe365c', '0', null, '删除商品', null, null, null, '0', '/jf/platform/good/delete', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('b8218945b8e743f29651569950014511', '0', null, '单选', null, null, null, '0', '/platform/department/radio.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('b82d86fb7b64498a9c2b8b9a99b3fbeb', '0', null, '删除', null, null, null, '0', '/jf/platform/menu/delete', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('b8339f29d8d84a4ead6454295f87b79c', '0', null, '人员分组设置', null, null, null, '0', '/jf/platform/group/select', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('bbf11f9a48fa4dad99687197c5176294', '0', null, '查看动态模板', null, null, null, '0', '/jf/platform/templatedynamic/view', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('bc2c865be6af42cf861294d446fb1c6f', '0', null, '单选', null, null, null, '0', '/platform/user/radio.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('bcf8cf5ad0734dc785cba716ab437c93', '0', null, '验证账号是否存在', null, null, null, '0', '/jf/platform/login/valiUserName', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('beeaa7f4b2444430a6732ecc83c453a2', '0', null, '编辑', null, null, null, '0', '/jf/platform/param/edit', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('c04adcd019e04cf3ba7c66af721a18dc', '0', null, '删除', null, null, null, '0', '/jf/platform/user/delete', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('c05642442e0a468ebe4f0b7771a803ae', '0', null, '更新', null, null, null, '0', '/jf/platform/systems/update', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('c081c50918f4459f8e36ab8cb4151a61', '0', null, '准备岗位功能设置', null, null, null, '0', '/platform/station/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c0ccfcd127c347a8b9db140e5aa62188', '0', null, '准备添加', null, null, null, '0', '/platform/role/add.html', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('c1e991d1f56749298c18ff69d7777e0b', '0', null, '删除', null, null, null, '0', '/jf/platform/module/delete', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('c29ea4cbd9044bc786e9f4584ad840ff', '0', null, '获取岗位功能', null, null, null, '0', '/jf/platform/station/getOperator', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c7132250f5054b808bb119122a6ecb52', '0', null, '设置岗位功能', null, null, null, '0', '/jf/platform/station/setOperator', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c7f0ad3818324e64a16c26eb5ba869cc', '0', null, '删除模板', null, null, null, '0', '/jf/platform/template/delete', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('c9d013d14cbd4f148fb4562c91803ee8', '0', null, '准备更新', null, null, null, '0', '/jf/platform/group/edit', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('ca0f6da01ada419eaa7739d9790e5b88', '0', null, '准备角色功能设置', null, null, null, '0', '/platform/role/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('cc6bcbee40ab43b2bd5aff6d9385e1fc', '0', null, '删除', null, null, null, '0', '/jf/platform/operator/delete', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('cf26c1d2baa24a8791b3d264154b80d4', '0', null, '默认树', null, null, null, '0', '/jf/platform/menu', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('d115d08591ef4c0eaebef15f8294b287', '0', null, '准备设置部门负责人', null, null, null, '0', '/platform/department/userTree.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('d1b453799d62485b82e027b96b596ccd', '0', null, 'ueditor', null, null, null, '0', '/jf/platform/ueditor', '4090cac06e15459789bc5154eef67e4e', '0', '0', '0', '1', null, null, 'Ueditor');
INSERT INTO `pt_operator` VALUES ('d247aee3d45c4c5cb9fe01e787c7a444', '0', null, '更新动态模板', null, null, null, '0', '/jf/platform/templatedynamic/update', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('d247fb45be724ed2a2bb5c92d73bf6cf', '0', null, '设置用户的组', null, null, null, '0', '/jf/platform/user/setGroup', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('d479dbdc901f4d85a207b9bace6465ac', '0', null, '更新', null, null, null, '0', '/jf/platform/user/update', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('d496b161d2564111992687b948862244', '0', null, 'iframe', null, null, null, '0', '/platform/druid/iframe.html', '297e0cf944e9762e0144e97dfd6e00c9', '0', '0', '0', '1', null, null, '数据源');
INSERT INTO `pt_operator` VALUES ('d5c8bdf7a49a4e46b776c05dc9ead484', '0', null, 'treeData', null, null, null, '0', '/jf/platform/dict/treeData', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('d646da8707ae41838fd2ec9bf0d467ee', '0', null, '设置角色功能', null, null, null, '0', '/jf/platform/role/setOperator', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('dad107c1aeb0419b8004d57f9d70223e', '0', null, '更新', null, null, null, '0', '/jf/platform/param/update', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('dc750e57b54f4baca78d66969321ee51', '0', null, '更新', null, null, null, '0', '/jf/platform/station/update', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('df0aa534655242e4a0bcd638b51a4e03', '0', null, '更新', null, null, null, '0', '/jf/platform/menu/update', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('dfa8256651a84269869c35ca1f10cae5', '0', null, '日之分页', null, null, null, '0', '/jf/platform/test/sysLog', 'e86e5bc9ae5d44e78a48543cf348ca82', '1', '0', '0', '1', null, null, 'test');
INSERT INTO `pt_operator` VALUES ('dfc7af0979a54e8e9a3f18b7a5d66030', '0', null, '查看', null, null, null, '0', '/jf/wx/keyword/view', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('dfe9d74fe0ef4220bfcfe6d7bb2f9436', '0', null, '默认用户列表', null, null, null, '0', '/jf/wx/user', 'c4e63c4171db4ae2a83f7dfcc2656b0e', '1', '0', '0', '1', null, null, '用户管理');
INSERT INTO `pt_operator` VALUES ('e037e0bae9a94e549d6b647db49a64a1', '0', null, '角色设置', null, null, null, '0', '/jf/platform/group/setRole', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('e3aac1af3cb84561b97018cf5c546d49', '1', null, '静态模板列表', null, null, null, '0', '/jf/platform/templatehtml', 'f1056bdb6fe94a5591530b7c34df3d0d', '1', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('e754dfdb794d4e7db6023c9b089a340c', '0', null, '多选', null, null, null, '0', '/platform/user/checkbox.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('ee781545af7144a18f30b5492ee49fc8', '0', null, '刷新SQL', null, null, null, '0', '/jf/platform/resources/refreshSqlCache', '58a33495466b466496de45dc116e577e', '0', '0', '0', '1', null, null, '资源负载');
INSERT INTO `pt_operator` VALUES ('f1f6f2c8f026498c8ee64b7a918d06df', '0', null, '准备更新', null, null, null, '0', '/jf/platform/user/edit', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('f3087b9709e74ed1b42c72d42b1b7196', '0', null, '新增模板', null, null, null, '0', '/platform/template/add.html', 'f1056bdb6fe94a5591530b7c34df3d0d', '0', '0', '0', '1', null, null, '模板引擎');
INSERT INTO `pt_operator` VALUES ('f57388d139034099932c36a955df625a', '0', null, '准备编辑菜单', null, null, null, '0', '/jf/platform/menu/toEdit', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('f771691134c34174a819b5990310d000', '0', null, '首页', null, null, null, '0', '/jf/platform/', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('f771691134c34174a819b5990310da56', '0', null, '注销', null, null, null, '0', '/jf/platform/login/logout', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('f7c220a81ba843938f8ccb108bec9c03', '0', null, '参数主页', null, null, null, '0', '/jf/platform/param', '8a1b51bb6fae4fac8591f4f387d250ff', '0', '0', '0', '1', null, null, '参数');
INSERT INTO `pt_operator` VALUES ('f82c021dc443419fb2469032af73bf3e', '0', null, '删除', null, null, null, '0', '/jf/platform/dept/delete', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('fb6a0c1e618041bcbbf8cfd41311b1fa', '0', null, '准备登陆', null, null, null, '0', '/jf/platform/login', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('fcb0a298c7da4d7581c190d55dc25b95', '0', null, '商品添加', null, null, null, '0', '/platform/good/add.html', '8f6e7e8c18334392b10f4a821589848f', '0', '0', '0', '1', null, null, '商品');
INSERT INTO `pt_operator` VALUES ('fd9978df5c5a47f298e2d28e21e70b15', '0', null, '删除', null, null, null, '0', '/jf/platform/sysLog/delete', '8a40c0353fa828a6013fa898d4ac0029', '0', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('fe0be0443cba4a5993b6d5f91eae8e89', '0', null, '接收消息', null, null, null, '0', '/jf/wx/message', '417ed3d3cf4d4b7a939613829e8db17d', '0', '0', '0', '0', null, null, '消息管理');

-- ----------------------------
-- Table structure for `pt_param`
-- ----------------------------
DROP TABLE IF EXISTS `pt_param`;
CREATE TABLE `pt_param` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `paths` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `zhuangtai` char(1) COLLATE utf8_bin DEFAULT NULL,
  `parentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `val` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `i18n` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否国际化',
  `val_zhcn` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhhk` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhtw` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_ja` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_enus` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_param
-- ----------------------------
INSERT INTO `pt_param` VALUES ('0c78f87750a745bbb59005a6ca0f744a', '1', null, '3.png', 'weixinToken', '3', '100103root/83f4b0ee56904cbeb5f91696ad804c29/0c78f87750a745bbb59005a6ca0f744a', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinToken', 'weixinchat', '0', 'weixinchat', 'weixinchat', 'weixinchat', 'weixinchat', 'weixinchat', '1');
INSERT INTO `pt_param` VALUES ('7381008292054bccba20224bc33774d7', '7', null, '2.png', 'weixinAppID', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29/7381008292054bccba20224bc33774d7', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppID', '123', '0', '1234', '1234', '1234', '1234', '1234', '1');
INSERT INTO `pt_param` VALUES ('8094c60d7a594b36bb0187cbce9c4188', '0', null, '2.png', 'weixinAppSecret', '2', '100103root/83f4b0ee56904cbeb5f91696ad804c29/8094c60d7a594b36bb0187cbce9c4188', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppSecret', '123', '0', null, null, null, null, null, '1');
INSERT INTO `pt_param` VALUES ('83f4b0ee56904cbeb5f91696ad804c29', '0', null, '2.png', '微信配置', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29', null, '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'weixinConfig', null, '0', null, null, null, null, null, '1');
INSERT INTO `pt_param` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '参数树', '1_open.png', '参数树', '1', '100103root', '1', null, 'true', '0', null, null, '0', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `pt_resources`
-- ----------------------------
DROP TABLE IF EXISTS `pt_resources`;
CREATE TABLE `pt_resources` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `osname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ips` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hostname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `cpunumber` bigint(20) DEFAULT NULL,
  `cpuratio` decimal(20,10) DEFAULT NULL,
  `phymemory` bigint(20) DEFAULT NULL,
  `phyfreememory` bigint(20) DEFAULT NULL,
  `jvmtotalmemory` bigint(20) DEFAULT NULL,
  `jvmfreememory` bigint(20) DEFAULT NULL,
  `jvmmaxmemory` bigint(20) DEFAULT NULL,
  `gccount` bigint(20) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_resources
-- ----------------------------
INSERT INTO `pt_resources` VALUES ('00395b7438284a519f3ec467be659777', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9686050251', '8129', '2884', '881', '512', '1808', '23', '2015-11-22 05:11:55');
INSERT INTO `pt_resources` VALUES ('00b883b89b1f4757974e0e05038ca546', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9960343756', '8129', '2780', '763', '270', '1808', '31', '2015-11-22 11:51:56');
INSERT INTO `pt_resources` VALUES ('00ef03cb10f5440c87858270627ec0f9', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0957857114', '3964', '549', '512', '101', '882', '39', '2015-12-04 13:27:59');
INSERT INTO `pt_resources` VALUES ('0124ecb080814fa18419ed70c946af63', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9608372047', '8129', '2870', '887', '641', '1808', '25', '2015-11-22 06:37:56');
INSERT INTO `pt_resources` VALUES ('01a64dd554dc42989032f38a80931829', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0982882101', '8126', '3569', '371', '280', '371', '9', '2016-04-03 19:31:31');
INSERT INTO `pt_resources` VALUES ('01c3fa5dbf634f8284562be883369a73', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9662655892', '8129', '2723', '829', '605', '1808', '28', '2015-11-22 09:05:56');
INSERT INTO `pt_resources` VALUES ('02a16be11e484f169397e66341011d66', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9809875152', '8129', '2871', '874', '610', '1808', '22', '2015-11-22 04:15:55');
INSERT INTO `pt_resources` VALUES ('02fe34ccf1574a19a3990af4e4fa0e1a', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1895873914', '8126', '4111', '371', '256', '371', '23', '2016-01-05 23:57:57');
INSERT INTO `pt_resources` VALUES ('038b764107ce483a95cd18fcf2719ce7', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.2375151885', '3964', '689', '852', '300', '882', '115', '2015-12-04 13:56:55');
INSERT INTO `pt_resources` VALUES ('044389ffa65349b8811cca5aa74424ce', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1335506821', '8126', '3575', '371', '249', '371', '7', '2016-04-03 18:37:23');
INSERT INTO `pt_resources` VALUES ('0534a3bb2b714f66874e05008ae1abf0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9441000440', '8129', '2975', '651', '133', '1808', '37', '2015-11-22 15:47:56');
INSERT INTO `pt_resources` VALUES ('056898a2c2c44f93b68d4863e184d365', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0782357261', '8126', '3133', '371', '319', '371', '6', '2016-01-03 13:58:11');
INSERT INTO `pt_resources` VALUES ('057a83559ee64c2e942fa289bc77a74c', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1173997122', '8126', '3553', '371', '259', '371', '12', '2016-04-03 18:53:12');
INSERT INTO `pt_resources` VALUES ('058a7d483f034dbd8b52829d1436b125', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0545511236', '3964', '1102', '587', '244', '882', '46', '2015-12-04 15:14:59');
INSERT INTO `pt_resources` VALUES ('05c5226eb2df4a2bbcdd47c2f5e44155', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9479350414', '8129', '2771', '724', '368', '1808', '33', '2015-11-22 13:03:56');
INSERT INTO `pt_resources` VALUES ('05d783e2bb5a4cd2ba35ceb3998916a2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9436775445', '8129', '2996', '622', '241', '1808', '39', '2015-11-22 16:41:56');
INSERT INTO `pt_resources` VALUES ('05fe8033a772410db4d4dc9cf3e33701', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9988299229', '8129', '2782', '763', '355', '1808', '31', '2015-11-22 11:43:56');
INSERT INTO `pt_resources` VALUES ('061fa06640ad41ddbdc61bb3d6add969', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9606422028', '8129', '2799', '699', '214', '1808', '36', '2015-11-22 15:09:56');
INSERT INTO `pt_resources` VALUES ('062372b983af4fada3397b3110f2de51', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1178031817', '8126', '3546', '371', '239', '371', '17', '2016-04-03 18:01:07');
INSERT INTO `pt_resources` VALUES ('067aba792736499682f6a9d6a9a1cc16', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9717252575', '8129', '2870', '874', '255', '1808', '22', '2015-11-22 04:47:55');
INSERT INTO `pt_resources` VALUES ('06ba1be62b7f450e9b3c058aee68874b', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2325195003', '8129', '3356', '1108', '613', '1808', '37', '2015-12-02 23:46:31');
INSERT INTO `pt_resources` VALUES ('06e1590756e34d68bc12fe3dd8a42274', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1170480530', '8126', '3514', '371', '237', '371', '26', '2016-04-03 18:10:35');
INSERT INTO `pt_resources` VALUES ('074e70f68d4b482cbf776675a8a68e16', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9584684934', '8129', '2710', '894', '483', '1808', '27', '2015-11-22 08:31:56');
INSERT INTO `pt_resources` VALUES ('07aa6d53704b4fcda0fc1916b4534b59', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9656150267', '8129', '2705', '816', '543', '1808', '29', '2015-11-22 09:59:56');
INSERT INTO `pt_resources` VALUES ('07c800a50a034da6a8c3e219771b9a3b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0397882553', '3964', '1135', '559', '192', '882', '47', '2015-12-04 15:34:59');
INSERT INTO `pt_resources` VALUES ('07fbd259bc9241e6ae2561509a7e6d10', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '2975', '371', '184', '371', '41', '2015-12-16 01:08:28');
INSERT INTO `pt_resources` VALUES ('0833189c3e7845b6b152fa9ed52c4c25', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2011506289', '8129', '4665', '647', '363', '1808', '31', '2015-12-02 21:11:50');
INSERT INTO `pt_resources` VALUES ('085900be53064529860cf9ad5b5c7565', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9998374936', '8129', '3746', '585', '160', '1808', '44', '2015-11-22 19:09:56');
INSERT INTO `pt_resources` VALUES ('087c762536534513b9b4419894710ba5', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3612', '371', '284', '371', '3', '2016-04-03 18:37:53');
INSERT INTO `pt_resources` VALUES ('0887e0e8e5c74946ad5ca7676bae69c4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9565150338', '8129', '3038', '610', '362', '1808', '42', '2015-11-22 17:59:56');
INSERT INTO `pt_resources` VALUES ('0892aa511a5e42678db52a5574c4b086', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9482600407', '8129', '2793', '705', '255', '1808', '34', '2015-11-22 13:51:56');
INSERT INTO `pt_resources` VALUES ('0899e3977a8941eea22fcb3bbf22a9ff', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0903257157', '3964', '731', '536', '221', '882', '42', '2015-12-04 13:49:59');
INSERT INTO `pt_resources` VALUES ('08eb08af673d4cd9a7178c7f1b47907b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7721101792', '8129', '2841', '872', '176', '1808', '20', '2015-11-22 03:23:55');
INSERT INTO `pt_resources` VALUES ('08f4788bd0f343d4ac4c7e92151fa822', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9566775343', '8129', '2718', '894', '570', '1808', '27', '2015-11-22 08:23:56');
INSERT INTO `pt_resources` VALUES ('0920872dda004ac586cf2cc32140836a', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0924208403', '8126', '3696', '371', '63', '371', '50', '2015-12-15 22:48:43');
INSERT INTO `pt_resources` VALUES ('09501e1fbc544dff9ffb028e5c668d19', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9443600438', '8129', '2815', '682', '259', '1808', '35', '2015-11-22 14:27:56');
INSERT INTO `pt_resources` VALUES ('09575da935bb4622877f2be6a0c86fdc', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1219156901', '8126', '3570', '371', '351', '371', '6', '2016-04-03 19:17:31');
INSERT INTO `pt_resources` VALUES ('09589ac9018d4189865508b9bf46f3a4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8760450971', '8129', '2770', '870', '230', '1808', '19', '2015-11-22 02:39:55');
INSERT INTO `pt_resources` VALUES ('099e514a85d342faa847ffdd9d7f6f3e', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3618', '371', '283', '371', '3', '2016-04-03 18:41:30');
INSERT INTO `pt_resources` VALUES ('09cf7e7238864256b8db02e6a3d18e7c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9949620428', '8129', '2713', '816', '184', '1808', '29', '2015-11-22 10:31:56');
INSERT INTO `pt_resources` VALUES ('0a1b80f8b1854056b88b95b87933efa2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9556050345', '8129', '2721', '829', '256', '1808', '28', '2015-11-22 09:37:56');
INSERT INTO `pt_resources` VALUES ('0a2fc758575e467084b64fa8958d462f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1477602735', '3964', '744', '593', '335', '882', '43', '2015-12-04 14:52:59');
INSERT INTO `pt_resources` VALUES ('0a53c7f6bdae41d4acba8f2af0087a0e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.2041287775', '3964', '225', '364', '232', '882', '24', '2015-12-22 14:51:47');
INSERT INTO `pt_resources` VALUES ('0ac15e24bcd243db8635d66a537b4efa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8092576504', '8129', '2746', '872', '531', '1808', '20', '2015-11-22 02:51:55');
INSERT INTO `pt_resources` VALUES ('0aed0d21024648eea48827311abe8871', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '744', '482', '266', '882', '48', '2015-12-22 10:25:56');
INSERT INTO `pt_resources` VALUES ('0b1caa7f9d094714b587c5139ce9c6cb', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.6766911056', '8129', '3038', '1279', '563', '1808', '58', '2015-12-03 00:18:05');
INSERT INTO `pt_resources` VALUES ('0b9cdee28ae446a4af5dd7c43f185eb8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3551', '371', '283', '371', '3', '2016-04-03 19:42:02');
INSERT INTO `pt_resources` VALUES ('0be53a0c1f704bacbaa7427a41e8c2ac', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1867531400', '8126', '4529', '371', '281', '371', '13', '2016-01-05 23:07:57');
INSERT INTO `pt_resources` VALUES ('0beffc3cfaa94a43a1e3006d42bd5579', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9931764835', '8129', '2776', '763', '535', '1808', '31', '2015-11-22 11:27:56');
INSERT INTO `pt_resources` VALUES ('0c15521909814eaa926847226d676b33', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9576860908', '8129', '2760', '888', '350', '1808', '26', '2015-11-22 07:53:56');
INSERT INTO `pt_resources` VALUES ('0c2a6ceded8646b3a3e9e5628f87defe', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9453025428', '8129', '2811', '682', '185', '1808', '35', '2015-11-22 14:33:56');
INSERT INTO `pt_resources` VALUES ('0c35067387a946999a17f9d5f5a7e514', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9456925425', '8129', '2783', '724', '500', '1808', '33', '2015-11-22 12:51:56');
INSERT INTO `pt_resources` VALUES ('0c453a39be8243e5aab34b4b2d1484ce', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3152912629', '8129', '3715', '865', '230', '1808', '19', '2015-12-02 23:37:43');
INSERT INTO `pt_resources` VALUES ('0c4adf1d97d04690878b8d2db889e14e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9602200313', '8129', '2769', '743', '352', '1808', '32', '2015-11-22 12:25:56');
INSERT INTO `pt_resources` VALUES ('0c9eee2423d349e3b34a38edd60ea368', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2570118930', '8129', '3822', '673', '513', '1808', '21', '2015-12-02 22:55:42');
INSERT INTO `pt_resources` VALUES ('0cad7e4b85674e2a8f523a6d5c4e2cf0', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1603956599', '8126', '4786', '371', '272', '371', '8', '2016-01-05 22:43:57');
INSERT INTO `pt_resources` VALUES ('0cb2c59695bd46528f8a44451c1154c7', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1687875811', '8126', '3155', '371', '334', '371', '4', '2016-01-03 13:48:11');
INSERT INTO `pt_resources` VALUES ('0cc07e802cb1491d916e8059a0b69511', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9558654021', '8129', '2711', '829', '102', '1808', '28', '2015-11-22 09:51:56');
INSERT INTO `pt_resources` VALUES ('0cfc0108b6274e56964bb98ec42b321c', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1676942822', '8126', '4603', '371', '344', '371', '12', '2016-01-05 22:59:57');
INSERT INTO `pt_resources` VALUES ('0d0ba01f876841c5b852712ea44e2a6a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9570061175', '8129', '3007', '637', '337', '1808', '40', '2015-11-22 17:05:56');
INSERT INTO `pt_resources` VALUES ('0d13baee8f6f4f0880350c2330a4460e', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1242158904', '3964', '738', '593', '256', '882', '43', '2015-12-04 14:54:59');
INSERT INTO `pt_resources` VALUES ('0d1eeb55ef8549c188bcbd40b9f6fb08', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603530048', '8129', '2841', '887', '368', '1808', '25', '2015-11-22 07:01:56');
INSERT INTO `pt_resources` VALUES ('0dc60c976d6546559ff7d270cb55b39c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9704575226', '8129', '2841', '887', '278', '1808', '25', '2015-11-22 07:09:56');
INSERT INTO `pt_resources` VALUES ('0dc8fb0d19374890b87f2b689fe6084c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9480325415', '8129', '2737', '763', '128', '1808', '31', '2015-11-22 12:03:56');
INSERT INTO `pt_resources` VALUES ('0de5f96b52a9437b99dd089f212dc19e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9669483525', '8129', '2710', '829', '563', '1808', '28', '2015-11-22 09:09:56');
INSERT INTO `pt_resources` VALUES ('0df70eb79433408fa14442b8907e682b', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1164010406', '8126', '3485', '371', '307', '371', '14', '2016-04-03 17:53:33');
INSERT INTO `pt_resources` VALUES ('0e4cf7af08854b148a8b9e647182934d', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1340706810', '3964', '649', '106', '56', '882', '11', '2015-12-22 10:49:11');
INSERT INTO `pt_resources` VALUES ('0e77b2ed4d65408ebf7b4c7b82de63c1', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1634181588', '8126', '4026', '371', '321', '371', '29', '2016-01-06 00:23:57');
INSERT INTO `pt_resources` VALUES ('0e7908f1155947548ff54f496a65fbcb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9801426817', '8129', '2838', '873', '341', '1808', '21', '2015-11-22 03:53:55');
INSERT INTO `pt_resources` VALUES ('0eb4e1b4262c48b7abcfc309c6400d54', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1112231996', '8126', '3592', '371', '333', '371', '6', '2016-04-03 18:45:30');
INSERT INTO `pt_resources` VALUES ('0eef9421e95d4e05b05e8feadcf3bff6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9801443356', '8129', '2830', '873', '586', '1808', '21', '2015-11-22 03:31:55');
INSERT INTO `pt_resources` VALUES ('0ef3eed31b5e4f70ac0f9c7943dcf40b', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1051473630', '8126', '3518', '371', '273', '371', '30', '2016-04-03 18:17:56');
INSERT INTO `pt_resources` VALUES ('0f348438ca6041bb99718f080e2a9ed1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9566778953', '8129', '2723', '894', '647', '1808', '27', '2015-11-22 08:17:56');
INSERT INTO `pt_resources` VALUES ('101ac41abc3c4d08b11e3b7c427ce839', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0500257475', '3964', '1105', '587', '295', '882', '46', '2015-12-04 15:10:59');
INSERT INTO `pt_resources` VALUES ('101b6692403247a5a28d09b84a02d69e', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1146356966', '8126', '3738', '371', '44', '371', '48', '2015-12-15 22:42:43');
INSERT INTO `pt_resources` VALUES ('101d16a5e59748a9af4cce853d0d7894', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0000000000', '8126', '3889', '371', '276', '371', '2', '2016-01-03 11:49:08');
INSERT INTO `pt_resources` VALUES ('1091d349d64147cea87039cbe41bdf1f', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1292383404', '8126', '3507', '371', '287', '371', '8', '2016-04-03 19:46:29');
INSERT INTO `pt_resources` VALUES ('11133cfe546144e6979be48a55036145', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.2337494152', '3964', '444', '866', '195', '882', '118', '2015-12-04 15:40:15');
INSERT INTO `pt_resources` VALUES ('1149f46b24da447b835bf6294f10caac', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1236541402', '8126', '3507', '371', '299', '371', '26', '2016-04-03 18:06:35');
INSERT INTO `pt_resources` VALUES ('11e4f8ebe959489b9827308fbaecdf42', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9582375331', '8129', '2994', '622', '373', '1808', '39', '2015-11-22 16:29:56');
INSERT INTO `pt_resources` VALUES ('11f3d5c932b54e7699ea6973baf99ffe', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9682800250', '8129', '2736', '894', '396', '1808', '27', '2015-11-22 08:39:56');
INSERT INTO `pt_resources` VALUES ('11fee85bf69044db9bfa57a58cad2b38', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1296569582', '8126', '3572', '371', '139', '371', '43', '2015-12-16 00:35:12');
INSERT INTO `pt_resources` VALUES ('12927543f00147c49c6f0964bc8c8dd2', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0875383221', '8126', '3691', '371', '62', '371', '49', '2015-12-15 23:14:27');
INSERT INTO `pt_resources` VALUES ('130aec6cc4604e6aa0ac88759d75ab20', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0352382589', '3964', '702', '506', '276', '882', '42', '2015-12-04 15:45:44');
INSERT INTO `pt_resources` VALUES ('13540cbd1f4b4db298d94b9d8ed8ddb3', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3110897902', '8129', '2576', '1751', '645', '1808', '113', '2015-12-02 21:54:33');
INSERT INTO `pt_resources` VALUES ('139b506df39e4290bc01ded884b1ae30', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9744875203', '8129', '2876', '874', '542', '1808', '22', '2015-11-22 04:21:55');
INSERT INTO `pt_resources` VALUES ('13dce74d7afe4efd9dde4d44dd6fe6f0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9754952239', '8129', '2873', '874', '588', '1808', '22', '2015-11-22 04:17:55');
INSERT INTO `pt_resources` VALUES ('140e2e3fefc04e31a87d6da2ac8e8f78', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1464856723', '8126', '3239', '371', '348', '371', '8', '2016-01-03 14:06:11');
INSERT INTO `pt_resources` VALUES ('14522cc0a0ae4287bd871ebbc4c9af92', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '2981', '371', '106', '371', '40', '2015-12-16 00:52:46');
INSERT INTO `pt_resources` VALUES ('14647afee3a4479583c057ddb6b80b78', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1639056586', '8126', '4014', '371', '334', '371', '25', '2016-01-06 00:03:57');
INSERT INTO `pt_resources` VALUES ('14e301d9e9b14dc292264df2fd2b22b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9896649216', '8129', '4636', '585', '382', '1808', '44', '2015-11-22 18:49:56');
INSERT INTO `pt_resources` VALUES ('15339c09f0614a7ea0e96f042d2c68f9', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1026656410', '8126', '3669', '371', '80', '371', '51', '2015-12-15 22:52:43');
INSERT INTO `pt_resources` VALUES ('1559c5bb895d495ba29e6cbd989b7803', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9717250227', '8129', '2888', '874', '323', '1808', '22', '2015-11-22 04:41:55');
INSERT INTO `pt_resources` VALUES ('165ce3ae1bfb4544a24b738f8ebc0ea7', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2873510716', '8129', '3576', '1122', '391', '1808', '31', '2015-12-02 22:36:03');
INSERT INTO `pt_resources` VALUES ('1669ff684f524a5db76f186558364840', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1925215374', '8126', '4646', '371', '291', '371', '9', '2016-01-05 22:47:57');
INSERT INTO `pt_resources` VALUES ('16af2b67fd4944729f1389962908c382', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9452370861', '8129', '2989', '637', '270', '1808', '40', '2015-11-22 17:11:56');
INSERT INTO `pt_resources` VALUES ('1794d32b7509469c81deb05d2210b5a3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9577503853', '8129', '3010', '622', '192', '1808', '39', '2015-11-22 16:45:56');
INSERT INTO `pt_resources` VALUES ('17cce4aac0d447d78b5527114cddcb67', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9710422813', '8129', '2877', '882', '627', '1808', '24', '2015-11-22 05:49:55');
INSERT INTO `pt_resources` VALUES ('17fe1413834d400cbd16feea45444949', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9596675320', '8129', '3021', '610', '139', '1808', '42', '2015-11-22 18:19:56');
INSERT INTO `pt_resources` VALUES ('1935b96776f244ea9afa1a7563addb5d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9601251896', '8129', '2800', '699', '253', '1808', '36', '2015-11-22 15:05:56');
INSERT INTO `pt_resources` VALUES ('19cc266ef07849ed9d762148cd881c13', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9527775373', '8129', '2715', '816', '338', '1808', '29', '2015-11-22 10:17:56');
INSERT INTO `pt_resources` VALUES ('19efd3b43a0f49f6b0c6b3f8376b5c7c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9884949136', '8129', '3541', '585', '245', '1808', '44', '2015-11-22 19:01:56');
INSERT INTO `pt_resources` VALUES ('1a4af90340a24a80ab197393ceef8545', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3555', '371', '116', '371', '40', '2015-12-16 00:22:46');
INSERT INTO `pt_resources` VALUES ('1a827f571efc4db4bf34ebc618345836', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9715625230', '8129', '2888', '874', '187', '1808', '22', '2015-11-22 04:53:55');
INSERT INTO `pt_resources` VALUES ('1a84c494f8444bf8a056a0021905b623', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2760162300', '8129', '3880', '856', '343', '1808', '19', '2015-12-02 22:43:50');
INSERT INTO `pt_resources` VALUES ('1a8d595cb3514a5d87399ea4c077d55b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9593100320', '8129', '2775', '705', '323', '1808', '34', '2015-11-22 13:45:56');
INSERT INTO `pt_resources` VALUES ('1ac1b147e7324e22b8644a2e520d7540', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '640', '553', '179', '882', '31', '2015-12-22 10:28:11');
INSERT INTO `pt_resources` VALUES ('1b01b6e3412542c1aea46de78adad0ab', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9455625426', '8129', '3284', '573', '256', '1808', '43', '2015-11-22 18:33:56');
INSERT INTO `pt_resources` VALUES ('1b54237ba869424cb17fce73e99a0aad', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.7134883112', '8129', '2096', '1877', '368', '1877', '158', '2015-12-02 23:14:37');
INSERT INTO `pt_resources` VALUES ('1b6da6e442274340a37724e525af7de6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9949651472', '8129', '2753', '784', '435', '1808', '30', '2015-11-22 10:53:56');
INSERT INTO `pt_resources` VALUES ('1bbe6de99af046f6b4ebf4b476b70787', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9581403818', '8129', '2977', '651', '110', '1808', '37', '2015-11-22 15:49:56');
INSERT INTO `pt_resources` VALUES ('1c0eedb185af455fa6ae4a4624122cc3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9693200241', '8129', '2891', '874', '300', '1808', '22', '2015-11-22 04:43:55');
INSERT INTO `pt_resources` VALUES ('1c7eacfb6d094f6795813a8326b1023b', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3953', '669', '327', '1808', '20', '2015-12-02 22:51:42');
INSERT INTO `pt_resources` VALUES ('1c9ab81727de4a08bfcc6ea7c2e29359', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9613250300', '8129', '2754', '743', '187', '1808', '32', '2015-11-22 12:39:56');
INSERT INTO `pt_resources` VALUES ('1cce14cd1f434291bb9a1563df5d8cac', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0934132135', '8126', '3727', '371', '152', '371', '43', '2015-12-15 23:41:48');
INSERT INTO `pt_resources` VALUES ('1cfef0d15e3f4b888332fbc246016861', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2531053959', '8129', '3844', '689', '159', '1808', '29', '2015-12-02 22:58:09');
INSERT INTO `pt_resources` VALUES ('1d1eaf1ce8544011962361a564ad820f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9517375382', '8129', '2763', '743', '508', '1808', '32', '2015-11-22 12:11:56');
INSERT INTO `pt_resources` VALUES ('1d8330031f1946dfa3d9b5f7197c85d7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9473460922', '8129', '2792', '699', '237', '1808', '36', '2015-11-22 15:07:56');
INSERT INTO `pt_resources` VALUES ('1d9118fc899842ef9462f695fba8303b', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1750462740', '8126', '3275', '371', '350', '371', '8', '2016-01-03 12:13:08');
INSERT INTO `pt_resources` VALUES ('1d9486cb2cff4a2cb33df79131ff8165', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1584966368', '8126', '5013', '371', '342', '371', '4', '2016-01-05 22:21:57');
INSERT INTO `pt_resources` VALUES ('1e46e503c7304f42a1b945d25fcd12a9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9681825248', '8129', '2717', '894', '178', '1808', '27', '2015-11-22 08:59:56');
INSERT INTO `pt_resources` VALUES ('1e63c2e3ac254ccdb132855f65fc9c21', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9595087442', '8129', '2808', '651', '268', '1808', '37', '2015-11-22 15:35:56');
INSERT INTO `pt_resources` VALUES ('1f0861af8cb749868e2de77f4915add1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9481560598', '8129', '2772', '705', '416', '1808', '34', '2015-11-22 13:37:56');
INSERT INTO `pt_resources` VALUES ('1f616cf539b8437c9bdefd5733f33b74', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.3323855260', '8126', '4952', '371', '316', '371', '5', '2016-01-05 22:27:57');
INSERT INTO `pt_resources` VALUES ('1f75964b6e844cafbe1bea4f12abf5d6', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1331313424', '3964', '821', '153', '55', '882', '9', '2015-12-22 11:43:39');
INSERT INTO `pt_resources` VALUES ('1f956b3d2fb744c1a522e3119b05c7d4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9959357083', '8129', '2761', '763', '204', '1808', '31', '2015-11-22 11:57:56');
INSERT INTO `pt_resources` VALUES ('1f9ebedc1d92489b957bae74b7ad2a9f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8524513457', '8129', '2851', '872', '153', '1808', '20', '2015-11-22 03:25:55');
INSERT INTO `pt_resources` VALUES ('1f9f863b4ced48e1935db2ccbb0ad8a7', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0221407698', '3964', '1148', '883', '79', '883', '108', '2015-12-04 16:52:29');
INSERT INTO `pt_resources` VALUES ('1ffe15f25c154c12aeb12732c009a76c', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1316187099', '8126', '3563', '371', '330', '371', '6', '2016-04-03 19:36:46');
INSERT INTO `pt_resources` VALUES ('2029a52b0db0451984dd40b32ed0a1ce', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1960481331', '8126', '4802', '371', '340', '371', '7', '2016-01-05 22:35:57');
INSERT INTO `pt_resources` VALUES ('2042400efc284fcab69b2fb6e42805ef', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9802395215', '8129', '2883', '874', '346', '1808', '22', '2015-11-22 04:39:55');
INSERT INTO `pt_resources` VALUES ('2063df772309403c8c0dd5487bcedc46', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0852155960', '8126', '3306', '371', '277', '371', '6', '2016-01-03 14:00:11');
INSERT INTO `pt_resources` VALUES ('207415251f1b44c19fa30d9d92a572be', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1935848551', '8126', '3121', '371', '304', '371', '17', '2016-01-03 12:59:08');
INSERT INTO `pt_resources` VALUES ('20b13ac1ab7a47149204b7308c5b3228', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9581417771', '8129', '3033', '596', '404', '1808', '41', '2015-11-22 17:25:56');
INSERT INTO `pt_resources` VALUES ('20e92c9fc03e4a45bd77678ee8de8dd8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1366040922', '8126', '3562', '371', '258', '371', '6', '2016-04-03 18:38:38');
INSERT INTO `pt_resources` VALUES ('21221ea9e8ea4682b0f78310eb1aadf0', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1723231507', '8126', '2777', '371', '304', '371', '24', '2016-01-03 13:33:08');
INSERT INTO `pt_resources` VALUES ('2137ca2b6be046ff8e3bcd05ea956b4b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0530482457', '3964', '477', '887', '186', '887', '106', '2015-12-04 16:24:29');
INSERT INTO `pt_resources` VALUES ('2152a58b9d3c474ebce5fdbb62680a02', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9610936391', '8129', '2760', '743', '526', '1808', '32', '2015-11-22 12:09:56');
INSERT INTO `pt_resources` VALUES ('217f15cff61747f6a2f3034ab8b54ec8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1344426074', '8126', '3511', '371', '313', '371', '7', '2016-04-03 19:40:46');
INSERT INTO `pt_resources` VALUES ('2193b25557d546e3b69c958c798cc57a', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2805159967', '8129', '3909', '673', '537', '1808', '21', '2015-12-02 22:53:42');
INSERT INTO `pt_resources` VALUES ('21d7ad5a28fd431ca4ee7682b9589562', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9559300347', '8129', '2988', '637', '223', '1808', '40', '2015-11-22 17:15:56');
INSERT INTO `pt_resources` VALUES ('21d7ff305a044db68d75e6aeb8a0efaa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9684742362', '8129', '2766', '888', '548', '1808', '26', '2015-11-22 07:35:56');
INSERT INTO `pt_resources` VALUES ('229756fcf88d4289af9fe1f8c61c6722', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9682150246', '8129', '2712', '829', '499', '1808', '28', '2015-11-22 09:15:56');
INSERT INTO `pt_resources` VALUES ('22fac55b0abb496faf94c6a709c3a6d8', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0566959313', '3964', '739', '104', '71', '882', '10', '2015-12-22 10:45:11');
INSERT INTO `pt_resources` VALUES ('231d13e43ea848608f52405b01d2d88e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9682475252', '8129', '2724', '829', '118', '1808', '28', '2015-11-22 09:49:56');
INSERT INTO `pt_resources` VALUES ('23ad5cc61a3f4fe3b14b052799248539', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1807731440', '8126', '3215', '371', '345', '371', '17', '2016-01-03 12:57:08');
INSERT INTO `pt_resources` VALUES ('23d127cf8bef4adc9eb0568cb2fd9c62', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9817664500', '8129', '2819', '873', '278', '1808', '21', '2015-11-22 03:59:55');
INSERT INTO `pt_resources` VALUES ('23d5a86a8e3046efa150878b452277c4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9437095752', '8129', '2823', '651', '291', '1808', '37', '2015-11-22 15:33:56');
INSERT INTO `pt_resources` VALUES ('2415b585e86841639b8043fcca66c1c8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9544667771', '8129', '2710', '829', '542', '1808', '28', '2015-11-22 09:11:56');
INSERT INTO `pt_resources` VALUES ('244c72870e2244fa99c889e130f69644', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0514522103', '3964', '813', '566', '150', '882', '45', '2015-12-04 15:06:59');
INSERT INTO `pt_resources` VALUES ('24616b270e684bc4bfdccea4c95b9b87', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9493017299', '8129', '2751', '743', '435', '1808', '32', '2015-11-22 12:17:56');
INSERT INTO `pt_resources` VALUES ('249d56d9397444218a137d6f03f51b9f', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1440806738', '3964', '1003', '508', '227', '882', '57', '2015-12-21 16:58:46');
INSERT INTO `pt_resources` VALUES ('24a0f73ac5b6465c81534fd3749ff8e5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9578150336', '8129', '3018', '622', '415', '1808', '39', '2015-11-22 16:25:56');
INSERT INTO `pt_resources` VALUES ('251d13fefbc14886a0f7f5e639a33fca', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9960672739', '8129', '2744', '784', '455', '1808', '30', '2015-11-22 10:51:56');
INSERT INTO `pt_resources` VALUES ('25405ef8cc6a4ccc95bc44668debae6d', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0998879360', '3964', '1111', '175', '102', '882', '7', '2015-12-22 11:17:00');
INSERT INTO `pt_resources` VALUES ('2551583d56a84823a4ba2f1a4ab6b8af', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1972114417', '8126', '4539', '371', '322', '371', '13', '2016-01-05 23:05:57');
INSERT INTO `pt_resources` VALUES ('2556d29332e1441299653fdffbd32392', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9807923548', '8129', '2879', '874', '565', '1808', '22', '2015-11-22 04:19:55');
INSERT INTO `pt_resources` VALUES ('257a877541b14962bb3586ae83db1548', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9692550238', '8129', '2847', '887', '167', '1808', '25', '2015-11-22 07:19:56');
INSERT INTO `pt_resources` VALUES ('26178933ba6546ab922292655f6cb109', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9694500240', '8129', '2761', '888', '277', '1808', '26', '2015-11-22 07:59:56');
INSERT INTO `pt_resources` VALUES ('2681d332e3214621918d8e6b73b447a3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9641525280', '8129', '2835', '888', '663', '1808', '26', '2015-11-22 07:25:56');
INSERT INTO `pt_resources` VALUES ('27285ffb47d64f19a04bb229b1a56959', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1889631383', '8126', '3913', '371', '286', '371', '4', '2016-01-03 11:57:08');
INSERT INTO `pt_resources` VALUES ('2743a7d2b3924ce18eb2d380a28ceada', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9678572576', '8129', '2757', '888', '433', '1808', '26', '2015-11-22 07:45:56');
INSERT INTO `pt_resources` VALUES ('27a1f3ec56c64599acd39e418f7df68e', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.0775532260', '8126', '4717', '371', '77', '371', '43', '2016-01-24 16:54:15');
INSERT INTO `pt_resources` VALUES ('27f4baf37cc64a98b783787ac19f960c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9454325427', '8129', '3034', '610', '158', '1808', '42', '2015-11-22 18:17:56');
INSERT INTO `pt_resources` VALUES ('280b090a7a324d499a30c08588ebc5ef', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1662201058', '8126', '2852', '371', '298', '371', '19', '2016-01-03 13:09:08');
INSERT INTO `pt_resources` VALUES ('280b883460fd48d9bd50189f13d7003b', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3571', '854', '363', '1808', '19', '2015-12-03 00:03:47');
INSERT INTO `pt_resources` VALUES ('284dcefde13842e99e5a661c35acd825', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2274495465', '8129', '4330', '653', '213', '1808', '32', '2015-12-02 21:31:50');
INSERT INTO `pt_resources` VALUES ('284dd9f2dcae4c68aa9b7e13dd377b30', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0808235976', '8126', '3665', '371', '75', '371', '46', '2015-12-15 23:00:27');
INSERT INTO `pt_resources` VALUES ('286c031af41a4034b7b810a2ad40c999', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9722450214', '8129', '2875', '882', '336', '1808', '24', '2015-11-22 06:15:55');
INSERT INTO `pt_resources` VALUES ('287c2d492d96427eb2d3a3031171dc13', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9594071939', '8129', '2765', '743', '306', '1808', '32', '2015-11-22 12:29:56');
INSERT INTO `pt_resources` VALUES ('28afe862e8f14e9588a516574584d62e', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1011956875', '8126', '3549', '371', '134', '371', '44', '2015-12-16 00:19:51');
INSERT INTO `pt_resources` VALUES ('29004d44496a4de6857dc201308b628c', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0527273448', '3964', '875', '587', '320', '882', '46', '2015-12-04 15:08:59');
INSERT INTO `pt_resources` VALUES ('294eb0397fe94291a494f84c8a440d04', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0928769191', '3964', '454', '726', '287', '882', '78', '2015-12-04 15:52:48');
INSERT INTO `pt_resources` VALUES ('29c8bbd77ea14e6294a278e2648b66ad', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1715756519', '8126', '4449', '371', '295', '371', '16', '2016-01-05 23:21:57');
INSERT INTO `pt_resources` VALUES ('29cb8f2aa3af4e2897d5f20be3509119', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8571301124', '8129', '2798', '872', '601', '1808', '20', '2015-11-22 02:45:55');
INSERT INTO `pt_resources` VALUES ('29d326ff8fcb438ba4429a22e9a441d7', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3613', '371', '282', '371', '3', '2016-04-03 19:05:32');
INSERT INTO `pt_resources` VALUES ('29fe2e9ce412466482e26ab9f2d7274d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9757552215', '8129', '2868', '881', '356', '1808', '23', '2015-11-22 05:25:55');
INSERT INTO `pt_resources` VALUES ('2a5e20edb3b648d6b7419bbc754a08e7', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1571272111', '8126', '3600', '371', '318', '371', '7', '2016-04-03 18:33:23');
INSERT INTO `pt_resources` VALUES ('2abb620f586f455f9f1ff8fd1dcc5880', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9604797017', '8129', '2863', '887', '529', '1808', '25', '2015-11-22 06:47:56');
INSERT INTO `pt_resources` VALUES ('2b1f5ad1ae0e485f97b76ff581683b17', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9592460514', '8129', '2801', '699', '433', '1808', '36', '2015-11-22 14:49:56');
INSERT INTO `pt_resources` VALUES ('2b33d254ab2c4edab09406451cf03c33', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9572985918', '8129', '3027', '610', '294', '1808', '42', '2015-11-22 18:05:56');
INSERT INTO `pt_resources` VALUES ('2b4394b73f1d473bb2632836a8886e3d', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0731161784', '8126', '3721', '371', '101', '371', '43', '2015-12-16 00:02:19');
INSERT INTO `pt_resources` VALUES ('2b6cc30952d048ada23cbf15b93a03c8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9434495732', '8129', '2999', '622', '172', '1808', '39', '2015-11-22 16:47:56');
INSERT INTO `pt_resources` VALUES ('2b7ef709ef704128a11c9a51033637bc', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1439110386', '3964', '709', '589', '195', '882', '44', '2015-12-04 15:00:59');
INSERT INTO `pt_resources` VALUES ('2bf067037edd4fada0936354321de66c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9600900314', '8129', '2752', '888', '454', '1808', '26', '2015-11-22 07:43:56');
INSERT INTO `pt_resources` VALUES ('2bf1ed4357db4bc2bfcf2d7d3dbfb907', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9601225312', '8129', '2863', '887', '238', '1808', '25', '2015-11-22 07:13:56');
INSERT INTO `pt_resources` VALUES ('2bf9265a0fb649229a271e417373e2e3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603539960', '8129', '2783', '724', '341', '1808', '33', '2015-11-22 13:05:56');
INSERT INTO `pt_resources` VALUES ('2c28b91215aa48229937e81c813f0ebb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9776093838', '8129', '2815', '873', '253', '1808', '21', '2015-11-22 04:01:55');
INSERT INTO `pt_resources` VALUES ('2c64fda8527646d79c5284ad4e6e5eb8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9702300234', '8129', '2888', '874', '209', '1808', '22', '2015-11-22 04:51:55');
INSERT INTO `pt_resources` VALUES ('2cb461253e6649d0918bbd213d60c5fd', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.2188041614', '3964', '609', '510', '177', '882', '58', '2015-12-21 17:12:46');
INSERT INTO `pt_resources` VALUES ('2cca5e885d6d4723972e1c884f527678', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9721452008', '8129', '2886', '874', '414', '1808', '22', '2015-11-22 04:33:55');
INSERT INTO `pt_resources` VALUES ('2cf29ed279034ec7a7a96c79a2cb3d4e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0738157287', '3964', '665', '479', '151', '882', '61', '2015-12-21 17:30:46');
INSERT INTO `pt_resources` VALUES ('2d11e5674cec4333bca720b11cd28748', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9437425441', '8129', '3013', '622', '109', '1808', '39', '2015-11-22 16:53:56');
INSERT INTO `pt_resources` VALUES ('2d773a677b7f458da6fbb1181c270d99', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2475868214', '8129', '3313', '994', '437', '1808', '44', '2015-12-03 00:17:56');
INSERT INTO `pt_resources` VALUES ('2d85962be37c41449f96b07c8b5334d3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9740650200', '8129', '2878', '882', '674', '1808', '24', '2015-11-22 05:45:55');
INSERT INTO `pt_resources` VALUES ('2d88830101904330a2791be0910ace38', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1644001209', '8126', '3036', '371', '301', '371', '10', '2016-01-03 12:25:08');
INSERT INTO `pt_resources` VALUES ('2dd948c56b644688831bb307865ff7da', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9444895811', '8129', '3042', '610', '380', '1808', '42', '2015-11-22 17:57:56');
INSERT INTO `pt_resources` VALUES ('2e3f2532a1634f6aa673467cb782abd6', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1142959349', '8126', '3517', '371', '311', '371', '27', '2016-04-03 18:12:35');
INSERT INTO `pt_resources` VALUES ('2e835789941c433b9b7e221ccaa3ce4a', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1274731867', '3964', '721', '510', '228', '882', '58', '2015-12-21 17:08:46');
INSERT INTO `pt_resources` VALUES ('2ec9e3506316466ebba6a8443c31cb93', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0820698349', '3964', '850', '538', '154', '882', '31', '2015-12-04 12:58:47');
INSERT INTO `pt_resources` VALUES ('2ee185c3426744a882f835714c9c2371', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9707500230', '8129', '2857', '882', '185', '1808', '24', '2015-11-22 06:29:56');
INSERT INTO `pt_resources` VALUES ('2f2255613092436c97fabe0ffd131969', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9869021826', '8129', '4562', '573', '119', '1808', '43', '2015-11-22 18:45:56');
INSERT INTO `pt_resources` VALUES ('2fe331587ebd4334a4110cbfb80c4e76', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9652221287', '8129', '2882', '881', '267', '1808', '23', '2015-11-22 05:33:55');
INSERT INTO `pt_resources` VALUES ('308e87336b7f4b3bbbc1a3da043c7aba', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1285529476', '8126', '3529', '371', '254', '371', '5', '2016-04-03 19:46:02');
INSERT INTO `pt_resources` VALUES ('30a01d4751ea43fda3f9fb99a4730e40', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9539879959', '8129', '3393', '573', '280', '1808', '43', '2015-11-22 18:31:56');
INSERT INTO `pt_resources` VALUES ('30a229f6cb96494ba4d6ff828750d2fb', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1222228215', '8126', '3596', '371', '317', '371', '5', '2016-04-03 19:13:31');
INSERT INTO `pt_resources` VALUES ('30a561af630b4b67a957179cd21b6bfa', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0766432259', '8126', '3106', '371', '290', '371', '14', '2016-01-03 14:38:11');
INSERT INTO `pt_resources` VALUES ('30d0161779bd45bd97897ada331d8cad', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1167156958', '8126', '3552', '371', '275', '371', '13', '2016-04-03 18:57:12');
INSERT INTO `pt_resources` VALUES ('312f66c413ef4101b0da5240984e1c35', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1156127315', '8126', '3513', '371', '305', '371', '30', '2016-04-03 18:15:56');
INSERT INTO `pt_resources` VALUES ('3130f72d441847f38c9869f7a6e0e089', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0872458250', '3964', '747', '191', '142', '882', '14', '2015-12-22 12:01:39');
INSERT INTO `pt_resources` VALUES ('3188b42f04124a79afdd06b92bcd8271', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9663953061', '8129', '2880', '881', '180', '1808', '23', '2015-11-22 05:41:55');
INSERT INTO `pt_resources` VALUES ('319517660ff246b896eb1b2a61e23e9a', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1741576797', '8126', '3245', '371', '306', '371', '8', '2016-01-03 14:08:11');
INSERT INTO `pt_resources` VALUES ('31df42be604f41109a6d2c3ae9d1c526', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9631389472', '8129', '3037', '573', '298', '1808', '43', '2015-11-22 18:29:56');
INSERT INTO `pt_resources` VALUES ('31fa3eb54a8a48e5957197c44cc1d42e', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1149281962', '8126', '3259', '371', '289', '371', '7', '2016-01-03 14:04:11');
INSERT INTO `pt_resources` VALUES ('32285fa65ffd4d48a9d7ffb040810ece', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0939332131', '3964', '616', '514', '192', '882', '59', '2015-12-21 17:16:46');
INSERT INTO `pt_resources` VALUES ('322bd338cec84438a337c189a0a88e73', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1630861837', '8126', '4739', '371', '266', '371', '35', '2016-01-06 00:55:57');
INSERT INTO `pt_resources` VALUES ('3231e50e69b64df3a6e370f5a2aca447', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2651105779', '8129', '3973', '774', '323', '1808', '25', '2015-12-02 22:33:34');
INSERT INTO `pt_resources` VALUES ('3238814bd0ed4a568df9b451d85f0d94', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '762', '105', '37', '882', '8', '2015-12-22 10:56:56');
INSERT INTO `pt_resources` VALUES ('3281d38d98e4413996ad89a9bb79b8eb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9472200415', '8129', '2775', '705', '297', '1808', '34', '2015-11-22 13:47:56');
INSERT INTO `pt_resources` VALUES ('32913430bd214d65b45e9c7cc86a9992', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9672400258', '8129', '2729', '894', '440', '1808', '27', '2015-11-22 08:35:56');
INSERT INTO `pt_resources` VALUES ('331bc4120e2f4f4daf453075bb7a63d5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9562550340', '8129', '2715', '894', '200', '1808', '27', '2015-11-22 08:57:56');
INSERT INTO `pt_resources` VALUES ('337ab2e8d77d4878b9acdef1330da995', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0527153516', '3964', '729', '512', '161', '882', '39', '2015-12-04 13:23:59');
INSERT INTO `pt_resources` VALUES ('340e3e0992f545b3aa2abf0c3bdb35f2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9588550320', '8129', '2816', '699', '480', '1808', '36', '2015-11-22 14:45:56');
INSERT INTO `pt_resources` VALUES ('3429071dac6f47e59a55c24a967a7580', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9765994334', '8129', '2866', '881', '425', '1808', '23', '2015-11-22 05:19:55');
INSERT INTO `pt_resources` VALUES ('34373e241bad4ae681c37f6908214e66', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0627982372', '8126', '3588', '371', '189', '371', '44', '2015-12-16 00:30:19');
INSERT INTO `pt_resources` VALUES ('3445a43b829e463f90cb7136ba37fc2b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1431128157', '3964', '706', '566', '297', '882', '45', '2015-12-04 15:02:59');
INSERT INTO `pt_resources` VALUES ('3476863420a54f23b3d72c2fae4e6db6', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2547755865', '8129', '3765', '856', '318', '1808', '19', '2015-12-02 22:45:50');
INSERT INTO `pt_resources` VALUES ('34881f35292541a9815dc37e2f68c728', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9618447116', '8129', '2872', '882', '252', '1808', '24', '2015-11-22 06:23:55');
INSERT INTO `pt_resources` VALUES ('348dc76a0a1b4a279cf0ed053e163904', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9931747774', '8129', '3739', '585', '177', '1808', '44', '2015-11-22 19:07:56');
INSERT INTO `pt_resources` VALUES ('34bac8c8714045f392bfff765952cea7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9683125247', '8129', '2717', '894', '505', '1808', '27', '2015-11-22 08:29:56');
INSERT INTO `pt_resources` VALUES ('3549cacda33f4a91b0939c15770e643b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9953195356', '8129', '2752', '784', '102', '1808', '30', '2015-11-22 11:23:56');
INSERT INTO `pt_resources` VALUES ('35a9719626fd44ea924d5aca1510787d', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3589', '371', '109', '371', '40', '2015-12-16 00:33:13');
INSERT INTO `pt_resources` VALUES ('360ad6551e8f4e3681c16562ae0540c7', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0660898858', '8126', '3746', '371', '124', '371', '42', '2015-12-15 23:50:32');
INSERT INTO `pt_resources` VALUES ('3652dd4fc8bd43ba8b3b41437b1b794f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0415027663', '3964', '1123', '587', '219', '882', '46', '2015-12-04 15:16:59');
INSERT INTO `pt_resources` VALUES ('3655a285273d4e1ebce76914672b147b', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1280411446', '8126', '3554', '371', '262', '371', '5', '2016-04-03 19:34:46');
INSERT INTO `pt_resources` VALUES ('3664957d41f348bd9671ef9be42f2e30', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9812475150', '8129', '2835', '873', '209', '1808', '21', '2015-11-22 04:05:55');
INSERT INTO `pt_resources` VALUES ('367332d31daf4ba4832e4cb02343345e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9570025336', '8129', '2829', '888', '684', '1808', '26', '2015-11-22 07:23:56');
INSERT INTO `pt_resources` VALUES ('36a49e3469fb434f974491eb080dcab3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9424100453', '8129', '2818', '699', '503', '1808', '36', '2015-11-22 14:43:56');
INSERT INTO `pt_resources` VALUES ('36c35100b0f747078ac4707b0f28e702', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8522551166', '8129', '2589', '872', '328', '1808', '20', '2015-11-22 03:09:55');
INSERT INTO `pt_resources` VALUES ('370cd7550ee84cfaaa54e146789c529d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9653225279', '8129', '2724', '816', '431', '1808', '29', '2015-11-22 10:09:56');
INSERT INTO `pt_resources` VALUES ('376c96d157f94a5ea58892af57c17cda', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9571975339', '8129', '2791', '699', '323', '1808', '36', '2015-11-22 14:59:56');
INSERT INTO `pt_resources` VALUES ('37c78bcbc5154a13b7f44e480350d584', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1945206334', '8126', '4537', '371', '304', '371', '12', '2016-01-05 23:01:57');
INSERT INTO `pt_resources` VALUES ('37d4546bb7454c34a62cdd2baa8fd028', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3723', '371', '116', '371', '40', '2015-12-16 00:11:51');
INSERT INTO `pt_resources` VALUES ('3823e0a4819340d496c857811668364f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9449171344', '8129', '2985', '667', '234', '1808', '38', '2015-11-22 16:13:56');
INSERT INTO `pt_resources` VALUES ('38260d3f6b1d40d8b983309516e06c31', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2085540271', '8126', '2932', '371', '257', '371', '19', '2016-01-03 13:11:08');
INSERT INTO `pt_resources` VALUES ('387c39c1c0874ec68bd31081c977eb48', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9451047985', '8129', '2999', '622', '130', '1808', '39', '2015-11-22 16:51:56');
INSERT INTO `pt_resources` VALUES ('3896e40a8716481380f46629d3b4381e', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3040345848', '8129', '2905', '1198', '462', '1808', '78', '2015-12-02 23:07:49');
INSERT INTO `pt_resources` VALUES ('389e36fedd63459d9e71ad2c4ddc083f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9607741651', '8129', '2768', '724', '412', '1808', '33', '2015-11-22 12:59:56');
INSERT INTO `pt_resources` VALUES ('38f53b79240341f091a70edd9b1d3125', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1037007663', '3964', '855', '884', '183', '884', '105', '2015-12-04 16:14:29');
INSERT INTO `pt_resources` VALUES ('3914dca301d94957ae15e6393e9cc90d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9769900181', '8129', '2879', '874', '520', '1808', '22', '2015-11-22 04:23:55');
INSERT INTO `pt_resources` VALUES ('395decc764874408907d927855a14577', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0765457266', '3964', '771', '163', '52', '882', '11', '2015-12-22 11:49:39');
INSERT INTO `pt_resources` VALUES ('39ba7a8d8ced46ef834e63aaa2544e02', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9479025408', '8129', '2752', '743', '151', '1808', '32', '2015-11-22 12:43:56');
INSERT INTO `pt_resources` VALUES ('39c044ba262d4814a7a25df21cfa5e3e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9715952586', '8129', '2867', '887', '610', '1808', '25', '2015-11-22 06:39:56');
INSERT INTO `pt_resources` VALUES ('39cc4d8a7c93417ebb06dc68e08a463c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9459507406', '8129', '2954', '667', '371', '1808', '38', '2015-11-22 16:01:56');
INSERT INTO `pt_resources` VALUES ('3a2812bcb7cd4bdaa970aff0d4966137', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9755925198', '8129', '2878', '881', '642', '1808', '23', '2015-11-22 04:59:55');
INSERT INTO `pt_resources` VALUES ('3a407084a74e41a893a99a13aaf500cb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9615525301', '8129', '2812', '682', '275', '1808', '35', '2015-11-22 14:25:56');
INSERT INTO `pt_resources` VALUES ('3a7ef7f5fe1445b8b23a523af7c52c31', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0870107187', '3964', '1079', '747', '325', '882', '70', '2015-12-04 16:10:17');
INSERT INTO `pt_resources` VALUES ('3a89ff7ebe064a1daae91814d9aa1100', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0299732643', '3964', '634', '506', '192', '882', '42', '2015-12-04 15:51:44');
INSERT INTO `pt_resources` VALUES ('3accd8761cd64182aaa9337fd8b27586', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1931298597', '8126', '2920', '371', '333', '371', '21', '2016-01-03 13:17:08');
INSERT INTO `pt_resources` VALUES ('3bb1d5858e97496aa2a631f38128f52a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.3627818136', '3964', '927', '884', '331', '884', '105', '2015-12-04 16:12:29');
INSERT INTO `pt_resources` VALUES ('3bc6f1d3cf3d492f801b6012fa758aad', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9607725306', '8129', '2782', '682', '348', '1808', '35', '2015-11-22 14:19:56');
INSERT INTO `pt_resources` VALUES ('3bea7eaac10e4957b758db7d36c2220f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1504831686', '3964', '330', '892', '191', '892', '116', '2015-12-04 16:01:07');
INSERT INTO `pt_resources` VALUES ('3c60d8847cf048a7bbb1e703a1c5748a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9700025234', '8129', '2858', '887', '328', '1808', '25', '2015-11-22 07:05:56');
INSERT INTO `pt_resources` VALUES ('3cf7d84d8d95414589f67a36b4eb473e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9619100300', '8129', '2719', '816', '318', '1808', '29', '2015-11-22 10:19:56');
INSERT INTO `pt_resources` VALUES ('3d1064bed4c64f27922e5e395a59341e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9569368155', '8129', '2725', '894', '353', '1808', '27', '2015-11-22 08:43:56');
INSERT INTO `pt_resources` VALUES ('3d3429e5965346e8a56e6a45705168ba', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9455300428', '8129', '2777', '705', '458', '1808', '34', '2015-11-22 13:33:56');
INSERT INTO `pt_resources` VALUES ('3d76082e6be444c0872771969ee8f44e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9538500363', '8129', '2720', '816', '605', '1808', '29', '2015-11-22 09:53:56');
INSERT INTO `pt_resources` VALUES ('3d7723a4982e40bb9a4cee2e06b14d96', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9566125348', '8129', '2994', '637', '444', '1808', '40', '2015-11-22 16:55:56');
INSERT INTO `pt_resources` VALUES ('3d9f8d7a58c44f6e88b67f9122eebc5e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0866608299', '3964', '447', '108', '78', '882', '16', '2015-12-22 11:08:56');
INSERT INTO `pt_resources` VALUES ('3de9dfb0b474415097bc7e3d7faa5285', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9567103948', '8129', '2750', '888', '194', '1808', '26', '2015-11-22 08:07:56');
INSERT INTO `pt_resources` VALUES ('3e1e7c90805c48dd9655d9e217175ec3', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0676732338', '3964', '733', '512', '214', '882', '39', '2015-12-04 13:19:59');
INSERT INTO `pt_resources` VALUES ('3e2a0a51155c4489aafeb77e356704db', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9769898263', '8129', '2877', '874', '232', '1808', '22', '2015-11-22 04:49:55');
INSERT INTO `pt_resources` VALUES ('3e5a7b9c5d1441699f11afa15e364a06', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8568701126', '8129', '2782', '872', '553', '1808', '20', '2015-11-22 02:49:55');
INSERT INTO `pt_resources` VALUES ('3e7bb65493664e2ab7fb749e4d9bf27e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9799455104', '8129', '2824', '873', '568', '1808', '21', '2015-11-22 03:33:55');
INSERT INTO `pt_resources` VALUES ('3eb74f78444640ee97aedd3045f8ca87', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9842050120', '8129', '2822', '873', '542', '1808', '21', '2015-11-22 03:35:55');
INSERT INTO `pt_resources` VALUES ('3ecc0d6d02ab48158be2e09bf8c34f03', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0295994378', '3964', '1203', '559', '293', '882', '47', '2015-12-04 15:26:59');
INSERT INTO `pt_resources` VALUES ('3f5c60f1682648fcbcc11ff8019480a0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9497875397', '8129', '2789', '724', '209', '1808', '33', '2015-11-22 13:17:56');
INSERT INTO `pt_resources` VALUES ('3f5c770145fa49149f2bdfa7dcf2fbff', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1732656504', '8126', '4265', '371', '266', '371', '19', '2016-01-05 23:37:57');
INSERT INTO `pt_resources` VALUES ('3fb97641c7914ed5bb6f0eabc7775264', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1673254445', '8126', '4816', '371', '289', '371', '34', '2016-01-06 00:49:57');
INSERT INTO `pt_resources` VALUES ('400a3073fa154e52ab2b7360e06e4053', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9436125442', '8129', '2955', '667', '342', '1808', '38', '2015-11-22 16:03:56');
INSERT INTO `pt_resources` VALUES ('40407a632d7e4f3cb6943fcc09bad3d1', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0715407301', '3964', '790', '536', '246', '882', '42', '2015-12-04 13:47:59');
INSERT INTO `pt_resources` VALUES ('4087dc8e974d461288f63e615298ef68', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '1.0000000000', '8126', '3564', '371', '105', '371', '40', '2015-12-16 00:39:48');
INSERT INTO `pt_resources` VALUES ('40b41ca2131945e3812219894f4d68f9', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1147258187', '8126', '3552', '371', '208', '371', '17', '2016-04-03 18:03:07');
INSERT INTO `pt_resources` VALUES ('40c152b8a24142c5bfb86b6ae60219dc', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3540760348', '8129', '3139', '1092', '721', '1808', '34', '2015-12-03 00:10:15');
INSERT INTO `pt_resources` VALUES ('40c190c7d68d4fa994c77579805a3feb', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3600', '371', '282', '371', '3', '2016-04-03 19:32:46');
INSERT INTO `pt_resources` VALUES ('4158fbae7f1e4bd0882db96bbea82a3d', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2407816161', '8129', '3581', '1124', '724', '1808', '32', '2015-12-02 22:38:03');
INSERT INTO `pt_resources` VALUES ('41b459ea2d37402d87feb6fd49a19b8d', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1994447117', '8126', '4452', '371', '338', '371', '16', '2016-01-05 23:19:57');
INSERT INTO `pt_resources` VALUES ('42963bcbc0c0470dae51cd310c22d769', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9619138388', '8129', '2768', '743', '233', '1808', '32', '2015-11-22 12:35:56');
INSERT INTO `pt_resources` VALUES ('42c64173327649c0b2e0817f234dcc57', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0833229432', '8126', '3681', '371', '12', '371', '48', '2015-12-15 23:12:27');
INSERT INTO `pt_resources` VALUES ('42d0159931514e0d92fdea2c806777cc', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0980206931', '3964', '678', '536', '166', '882', '42', '2015-12-04 13:53:59');
INSERT INTO `pt_resources` VALUES ('42de39681acf4e04af8f4921a1a6ecef', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '860', '513', '219', '882', '38', '2015-12-04 13:07:59');
INSERT INTO `pt_resources` VALUES ('42dea328a0374f7bba34153dd3f0c08c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9551743166', '8129', '2709', '829', '637', '1808', '28', '2015-11-22 09:03:56');
INSERT INTO `pt_resources` VALUES ('42eb2ad3b8754aa88acda2021c63d530', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1685600830', '8126', '2817', '371', '285', '371', '23', '2016-01-03 13:29:08');
INSERT INTO `pt_resources` VALUES ('42ef118a8c9248f58e9b0eca0a5f06e3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7919351634', '8129', '2674', '872', '462', '1808', '20', '2015-11-22 02:57:55');
INSERT INTO `pt_resources` VALUES ('4317e645c893478baa938ca45d94ee3d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9956131979', '8129', '2743', '784', '544', '1808', '30', '2015-11-22 10:43:56');
INSERT INTO `pt_resources` VALUES ('438d7c1183cd4b8dbd92a576677f4ff7', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1473773820', '8126', '3132', '371', '345', '371', '5', '2016-01-03 13:52:11');
INSERT INTO `pt_resources` VALUES ('43cec864cd4a42c0925d9d8341dd2f73', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1266713528', '8126', '3579', '371', '264', '371', '9', '2016-04-03 18:51:20');
INSERT INTO `pt_resources` VALUES ('4411cda9251f4e0b9cce76b62389c1e2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9694477325', '8129', '2859', '881', '599', '1808', '23', '2015-11-22 05:03:55');
INSERT INTO `pt_resources` VALUES ('443a35fc4add42168973200251a06a27', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9589528742', '8129', '2792', '705', '170', '1808', '34', '2015-11-22 13:59:56');
INSERT INTO `pt_resources` VALUES ('44490bc9b3e04a34b94461e445aea51e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9967530062', '8129', '2724', '816', '143', '1808', '29', '2015-11-22 10:35:56');
INSERT INTO `pt_resources` VALUES ('454e86decec04e7a82047f361030c2aa', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1861613583', '8126', '4601', '371', '266', '371', '10', '2016-01-05 22:53:57');
INSERT INTO `pt_resources` VALUES ('460374eb4b83453288b426bea6e7cfe5', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1523620271', '8126', '3534', '371', '250', '371', '20', '2016-04-03 18:03:23');
INSERT INTO `pt_resources` VALUES ('465b769b20dc4cbf9e90a14b8ebcb943', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0877257186', '3964', '1052', '141', '93', '882', '11', '2015-12-22 11:33:37');
INSERT INTO `pt_resources` VALUES ('470de05bf9f740698fd925d0c8c72222', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1911013956', '8126', '4688', '371', '283', '371', '36', '2016-01-06 00:59:57');
INSERT INTO `pt_resources` VALUES ('4722068f732b41779b479b6dcd68445e', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3755', '371', '122', '371', '40', '2015-12-15 23:46:32');
INSERT INTO `pt_resources` VALUES ('474157b519e940d3899dffb7844f1627', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.0000000000', '8126', '5070', '371', '128', '371', '40', '2016-01-24 16:48:16');
INSERT INTO `pt_resources` VALUES ('478df62a572e4081a8782627213b7143', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9573635868', '8129', '2964', '667', '321', '1808', '38', '2015-11-22 16:05:56');
INSERT INTO `pt_resources` VALUES ('4805f326fc1b4878b3a25636836cdaca', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9574282269', '8129', '3033', '596', '294', '1808', '41', '2015-11-22 17:35:56');
INSERT INTO `pt_resources` VALUES ('48654191048d4e0cafb3296c75f9d051', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1049981217', '8126', '3581', '371', '341', '371', '9', '2016-04-03 19:27:31');
INSERT INTO `pt_resources` VALUES ('48a4716fcafc4b9486872c9853eac1e4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9441961490', '8129', '2979', '667', '191', '1808', '38', '2015-11-22 16:17:56');
INSERT INTO `pt_resources` VALUES ('48b0810299a546b39b0f1c2748eab0d8', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0313382620', '3964', '1056', '891', '204', '891', '107', '2015-12-04 16:32:29');
INSERT INTO `pt_resources` VALUES ('48d48b6130a94ebbb0eb5aa07d2fccaf', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9443600438', '8129', '2775', '724', '104', '1808', '33', '2015-11-22 13:27:56');
INSERT INTO `pt_resources` VALUES ('4931438b03c44f6ea776d93ce57f1e06', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9827430886', '8129', '3574', '585', '268', '1808', '44', '2015-11-22 18:59:56');
INSERT INTO `pt_resources` VALUES ('494a18e819884cfd9253d454954e67c6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9754950197', '8129', '2839', '873', '190', '1808', '21', '2015-11-22 04:07:55');
INSERT INTO `pt_resources` VALUES ('49673234de394fac9973155a062ef357', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1716800553', '8126', '4781', '371', '314', '371', '8', '2016-01-05 22:41:57');
INSERT INTO `pt_resources` VALUES ('49b1b823360141358ca05af6b6a701f5', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1697336344', '8126', '2970', '371', '351', '371', '22', '2016-01-03 13:21:08');
INSERT INTO `pt_resources` VALUES ('49c5458cc4054504b23ddd3ba6d4258e', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1306906836', '8126', '3600', '371', '352', '371', '5', '2016-04-03 19:11:31');
INSERT INTO `pt_resources` VALUES ('49d93e4589fb4fe599dda6e92226ac5f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1739732384', '8126', '4662', '371', '311', '371', '3', '2016-01-03 11:51:08');
INSERT INTO `pt_resources` VALUES ('49f596190f3c4f2d981a8dac870e4ef9', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1278234178', '8126', '3450', '371', '351', '371', '15', '2016-01-03 12:47:08');
INSERT INTO `pt_resources` VALUES ('4a0f8ccf25f14272820b04ee3f57815e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1776462936', '3964', '998', '500', '186', '882', '55', '2015-12-21 16:54:46');
INSERT INTO `pt_resources` VALUES ('4a2a600dd42746faa734d18e017d6b89', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9410440633', '8129', '3004', '622', '331', '1808', '39', '2015-11-22 16:33:56');
INSERT INTO `pt_resources` VALUES ('4a37b8dfb5084efc973e11dc06d052ef', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1804344847', '8126', '3240', '371', '266', '371', '8', '2016-01-03 12:17:08');
INSERT INTO `pt_resources` VALUES ('4a4e459292b74ec2a32e8bc0ca3e8d97', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7989712434', '8129', '2778', '870', '209', '1808', '19', '2015-11-22 02:41:55');
INSERT INTO `pt_resources` VALUES ('4a8e2a70862d482a9fdc218f3927bf99', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9604150316', '8129', '2781', '724', '121', '1808', '33', '2015-11-22 13:25:56');
INSERT INTO `pt_resources` VALUES ('4adf542ea0e84c529e60cde10e389263', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3949306694', '8129', '3314', '1118', '454', '1808', '36', '2015-12-02 23:24:09');
INSERT INTO `pt_resources` VALUES ('4ae68bf2670541bb99c9bc85a26f783c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9601550318', '8129', '2861', '887', '459', '1808', '25', '2015-11-22 06:53:56');
INSERT INTO `pt_resources` VALUES ('4b3352b8df7d444e962968ac3e7420b7', '0', 'Windows 7', '174.0.10.138', 'jalin-flatworld', '4', '0.0000000000', '8126', '3430', '371', '144', '371', '47', '2016-01-18 22:17:50');
INSERT INTO `pt_resources` VALUES ('4b4a395d8a4f4463afa43871bc3e4171', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8243701381', '8129', '2819', '872', '241', '1808', '20', '2015-11-22 03:17:55');
INSERT INTO `pt_resources` VALUES ('4b4e98782a434f918a670414ad2eab1b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9577175335', '8129', '2760', '888', '527', '1808', '26', '2015-11-22 07:37:56');
INSERT INTO `pt_resources` VALUES ('4b7e153d980e4d5ba08425c32e79896e', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1741175332', '8126', '4786', '371', '257', '371', '7', '2016-01-05 22:39:57');
INSERT INTO `pt_resources` VALUES ('4bc7ea0b29d844208b3a491391ab56db', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0287057651', '3964', '875', '582', '335', '882', '43', '2015-12-04 11:43:56');
INSERT INTO `pt_resources` VALUES ('4bdac87330e74e65bb4dda7f0804ba65', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2367056007', '8129', '3875', '689', '131', '1808', '29', '2015-12-02 23:00:09');
INSERT INTO `pt_resources` VALUES ('4c2f28757fab4a2493fa9e80d301f1df', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0911382157', '3964', '696', '106', '29', '882', '11', '2015-12-22 10:51:11');
INSERT INTO `pt_resources` VALUES ('4d0bf6fd13c3459d91abd131b576a3b2', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0358557586', '3964', '411', '887', '134', '887', '106', '2015-12-04 16:28:29');
INSERT INTO `pt_resources` VALUES ('4d15a80693a04a619f4d305cf90ee979', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9433478231', '8129', '3055', '610', '269', '1808', '42', '2015-11-22 18:07:56');
INSERT INTO `pt_resources` VALUES ('4d2a9fdd75b84179a4b24942baf81838', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1295531843', '3964', '1065', '750', '310', '882', '71', '2015-12-04 16:12:17');
INSERT INTO `pt_resources` VALUES ('4d406d9181c7483a91bbd71adc28b716', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1687806537', '8126', '4741', '371', '313', '371', '33', '2016-01-06 00:43:57');
INSERT INTO `pt_resources` VALUES ('4d78b9af406b4c40b3c63f1ef7ced706', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9656478135', '8129', '2877', '882', '646', '1808', '24', '2015-11-22 05:47:55');
INSERT INTO `pt_resources` VALUES ('4d850d56cf3c4c6e968fd9b58e194e8f', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1604351575', '8126', '4739', '371', '326', '371', '36', '2016-01-06 00:57:57');
INSERT INTO `pt_resources` VALUES ('4da76e8c436840e1ae2addcd8f67270b', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0607585664', '8126', '3749', '371', '184', '371', '43', '2015-12-15 23:52:32');
INSERT INTO `pt_resources` VALUES ('4daead69121e4325a6db06458b81bf0a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9656150275', '8129', '2714', '829', '383', '1808', '28', '2015-11-22 09:25:56');
INSERT INTO `pt_resources` VALUES ('4de90bc34117498f928021b959c30626', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1604606602', '8126', '3454', '371', '289', '371', '14', '2016-01-03 12:45:08');
INSERT INTO `pt_resources` VALUES ('4e2976c0ecc644e19e021ee5b66764c1', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1230531902', '8126', '3429', '371', '238', '371', '9', '2016-04-03 17:42:31');
INSERT INTO `pt_resources` VALUES ('4e7cc41d4a174256aff06c0894f81bce', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0892835753', '8126', '3707', '371', '195', '371', '43', '2015-12-15 23:30:12');
INSERT INTO `pt_resources` VALUES ('4f3146af892b4324a24a3989056f3d3d', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0757982270', '3964', '888', '508', '199', '882', '57', '2015-12-21 17:00:46');
INSERT INTO `pt_resources` VALUES ('4f384e7b9a124894975589d8c572f252', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0742695436', '3964', '1192', '141', '55', '882', '10', '2015-12-22 11:31:37');
INSERT INTO `pt_resources` VALUES ('4f61fd626d7349c68dadccac5709c328', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9495296429', '8129', '2774', '705', '365', '1808', '34', '2015-11-22 13:41:56');
INSERT INTO `pt_resources` VALUES ('5009cb88abff45dcb40309c265a7dc5b', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2099322054', '8129', '4383', '653', '291', '1808', '32', '2015-12-02 21:25:50');
INSERT INTO `pt_resources` VALUES ('50849a4b7319479fab42e56c95ec440c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9958728814', '8129', '2743', '784', '524', '1808', '30', '2015-11-22 10:45:56');
INSERT INTO `pt_resources` VALUES ('50cee6bf73b4475ca54d93b9f11c791d', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0623757377', '8126', '3584', '371', '128', '371', '43', '2015-12-16 00:28:19');
INSERT INTO `pt_resources` VALUES ('50e698fbe9974c1c9392256c466d2610', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0855558396', '8126', '3688', '371', '50', '371', '48', '2015-12-15 23:10:27');
INSERT INTO `pt_resources` VALUES ('512c540aa44041ea87263982fd09324e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9804995278', '8129', '2834', '873', '454', '1808', '21', '2015-11-22 03:43:55');
INSERT INTO `pt_resources` VALUES ('51360cb6803640d2aece1087073b8b13', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9441650444', '8129', '2993', '637', '156', '1808', '40', '2015-11-22 17:21:56');
INSERT INTO `pt_resources` VALUES ('5157d33a03a34c65b581a4955816f78a', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0917814035', '8126', '3740', '371', '122', '371', '42', '2015-12-15 23:39:48');
INSERT INTO `pt_resources` VALUES ('51591009e48f46c1baf7c14f2ea3d850', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0289738567', '3964', '709', '506', '245', '882', '42', '2015-12-04 15:47:44');
INSERT INTO `pt_resources` VALUES ('518b665dfa1742f294ac3f480bf2d74c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9570675331', '8129', '3034', '596', '179', '1808', '41', '2015-11-22 17:45:56');
INSERT INTO `pt_resources` VALUES ('5198009f2fe24616a840998004b23460', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0764884229', '3964', '866', '541', '317', '882', '32', '2015-12-04 13:00:47');
INSERT INTO `pt_resources` VALUES ('51d4925d559241719917373628a3ec92', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9597975319', '8129', '2848', '651', '381', '1808', '37', '2015-11-22 15:25:56');
INSERT INTO `pt_resources` VALUES ('527c2c42be8c4f4ba82d675a5de27ff1', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3151055884', '8129', '3757', '788', '317', '1808', '24', '2015-12-02 23:23:41');
INSERT INTO `pt_resources` VALUES ('529391e880864609becc2d7a21414d06', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0347507599', '3964', '327', '891', '232', '891', '107', '2015-12-04 16:30:29');
INSERT INTO `pt_resources` VALUES ('52b5f3f931c44e0c860bc97ec70a1192', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0723857307', '8126', '3548', '371', '93', '371', '44', '2015-12-16 00:21:51');
INSERT INTO `pt_resources` VALUES ('52e3203404984e659ed6ba6c958df999', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2861725349', '8129', '3410', '1007', '403', '1808', '46', '2015-12-02 21:51:19');
INSERT INTO `pt_resources` VALUES ('5337522eeae748b7bbff3a21cbace839', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1348460806', '8126', '3565', '371', '304', '371', '8', '2016-04-03 18:40:29');
INSERT INTO `pt_resources` VALUES ('5343f862d59e44d8a09fc3f7022bc946', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9546606462', '8129', '2708', '829', '520', '1808', '28', '2015-11-22 09:13:56');
INSERT INTO `pt_resources` VALUES ('535d553c99a44b19b3599d011c252579', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1067572810', '3964', '516', '556', '341', '882', '32', '2015-12-22 10:30:11');
INSERT INTO `pt_resources` VALUES ('5360218bed5b4335b63111e10a640341', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9646072331', '8129', '2887', '881', '155', '1808', '23', '2015-11-22 05:43:55');
INSERT INTO `pt_resources` VALUES ('5361a815be5f40fba28876ecb94c1b96', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1432559484', '8126', '3527', '371', '140', '371', '42', '2015-12-16 00:13:51');
INSERT INTO `pt_resources` VALUES ('536a84c05d5140c48a9519496dfbfd99', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2577233145', '8129', '2764', '1396', '285', '1808', '95', '2015-12-02 23:09:21');
INSERT INTO `pt_resources` VALUES ('538a6d05ef064674a4565822b3bb1c49', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9616172105', '8129', '2864', '887', '590', '1808', '25', '2015-11-22 06:41:56');
INSERT INTO `pt_resources` VALUES ('53a96e4190684957b0e2c6e68d5b39b0', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2084240261', '8126', '4357', '371', '289', '371', '18', '2016-01-05 23:31:57');
INSERT INTO `pt_resources` VALUES ('53b1cbda53854ef98d379658fcc1f731', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9488775404', '8129', '2759', '743', '105', '1808', '32', '2015-11-22 12:47:56');
INSERT INTO `pt_resources` VALUES ('54323e4a1da34cfea16d1b63bb0b25a6', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2241216448', '8129', '4538', '644', '182', '1808', '30', '2015-12-02 21:01:50');
INSERT INTO `pt_resources` VALUES ('5447c3fb6484469f9d4fb7b584011541', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9684747617', '8129', '2718', '894', '549', '1808', '27', '2015-11-22 08:25:56');
INSERT INTO `pt_resources` VALUES ('54d2cfd3130e456d93c7fda8ebe7ba72', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0996132049', '8126', '3572', '371', '310', '371', '9', '2016-04-03 19:29:31');
INSERT INTO `pt_resources` VALUES ('55f6311634e14005a1bf3e6da0c22e8c', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.3118022469', '3964', '211', '276', '155', '882', '21', '2015-12-22 14:49:48');
INSERT INTO `pt_resources` VALUES ('5616d4502b34423dab1daf4eaad8351d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1114609837', '8126', '3524', '371', '220', '371', '20', '2016-04-03 18:05:23');
INSERT INTO `pt_resources` VALUES ('56347cd888d944879d43c1f64e95d43b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9951251668', '8129', '2749', '784', '208', '1808', '30', '2015-11-22 11:13:56');
INSERT INTO `pt_resources` VALUES ('567a5664fdf744a3bfbee5469843f01d', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0126750478', '3964', '522', '876', '296', '882', '114', '2015-12-04 15:57:07');
INSERT INTO `pt_resources` VALUES ('56cbcf91795e40ec973912e4cb6347d5', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0476532487', '3964', '846', '541', '225', '882', '32', '2015-12-04 13:06:59');
INSERT INTO `pt_resources` VALUES ('56d1deb9d0764a97a2ac636a84072168', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9741298048', '8129', '2875', '874', '634', '1808', '22', '2015-11-22 04:13:55');
INSERT INTO `pt_resources` VALUES ('5787b859c6e74e578fb4a2f99126d399', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9579125329', '8129', '3038', '596', '249', '1808', '41', '2015-11-22 17:39:56');
INSERT INTO `pt_resources` VALUES ('57f73d05f29b47cca2817e5b469c9857', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1947089222', '8126', '4110', '371', '279', '371', '22', '2016-01-05 23:51:57');
INSERT INTO `pt_resources` VALUES ('582c788b04d24b3f9fbff7a783607ba3', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1416613699', '8126', '3077', '371', '349', '371', '15', '2016-01-03 14:40:11');
INSERT INTO `pt_resources` VALUES ('58a5e85f82ed40189c697813866dc896', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2770830723', '8129', '2349', '1861', '413', '1861', '128', '2015-12-02 23:11:06');
INSERT INTO `pt_resources` VALUES ('58f2ab48499e43ae9d7466ebd6fca48f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1996814595', '8126', '2926', '371', '273', '371', '20', '2016-01-03 13:15:08');
INSERT INTO `pt_resources` VALUES ('5917f83740d740e4b4a7c84f8c451ce7', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1694306539', '8126', '3003', '371', '261', '371', '10', '2016-01-03 12:27:08');
INSERT INTO `pt_resources` VALUES ('5934d974e3744b0283e64fd8fc2af3fe', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1810588191', '8126', '4086', '371', '316', '371', '24', '2016-01-05 23:59:57');
INSERT INTO `pt_resources` VALUES ('5954093b486b4fc58d56b4ad9b775578', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9450100432', '8129', '3034', '596', '339', '1808', '41', '2015-11-22 17:31:56');
INSERT INTO `pt_resources` VALUES ('595b17b1d66846deae054735a60e95b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9457250423', '8129', '2779', '724', '482', '1808', '33', '2015-11-22 12:53:56');
INSERT INTO `pt_resources` VALUES ('596793e4199141d5b456a41c016a80f3', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2175371365', '8129', '4301', '653', '139', '1808', '32', '2015-12-02 21:37:50');
INSERT INTO `pt_resources` VALUES ('59b8fffaa4b24a87800a801a11c23035', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9714327604', '8129', '2869', '882', '515', '1808', '24', '2015-11-22 05:59:55');
INSERT INTO `pt_resources` VALUES ('59bc3ad6f59141ae92e7181cd5b7120e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9588581186', '8129', '3011', '622', '304', '1808', '39', '2015-11-22 16:35:56');
INSERT INTO `pt_resources` VALUES ('59d0e7feee2842eda30ed29867d2b7a3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9558332707', '8129', '2687', '829', '584', '1808', '28', '2015-11-22 09:07:56');
INSERT INTO `pt_resources` VALUES ('5a19e537d6894857b4fb53c2398e1908', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1096624717', '8126', '3499', '371', '232', '371', '35', '2016-04-03 18:20:34');
INSERT INTO `pt_resources` VALUES ('5a2b2602307b4fd98df419f29f8b13ab', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9957418644', '8129', '2760', '784', '139', '1808', '30', '2015-11-22 11:19:56');
INSERT INTO `pt_resources` VALUES ('5a4087ea7da44fddb25f92eea7f4a778', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1365984836', '8126', '3535', '371', '300', '371', '9', '2016-04-03 17:38:31');
INSERT INTO `pt_resources` VALUES ('5a44973ed7d3497abbf91e716287bc34', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9475450417', '8129', '2792', '699', '300', '1808', '36', '2015-11-22 15:01:56');
INSERT INTO `pt_resources` VALUES ('5a94d2f375e44443b44067c5ba50b1db', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9656153132', '8129', '2718', '829', '340', '1808', '28', '2015-11-22 09:29:56');
INSERT INTO `pt_resources` VALUES ('5aa515019c4649cda20b58158fe28f39', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0515532465', '3964', '517', '600', '351', '882', '41', '2015-12-04 13:33:59');
INSERT INTO `pt_resources` VALUES ('5ab39f88a316467f847b8af0fae59907', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9697425236', '8129', '2839', '887', '389', '1808', '25', '2015-11-22 06:59:56');
INSERT INTO `pt_resources` VALUES ('5b36630b57ee4e5c90fb40522413292a', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1709000616', '8126', '4129', '371', '317', '371', '31', '2016-01-06 00:33:57');
INSERT INTO `pt_resources` VALUES ('5b4e615721a14fb4bcf3a7d433b983ea', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9939200226', '8129', '2756', '784', '119', '1808', '30', '2015-11-22 11:21:56');
INSERT INTO `pt_resources` VALUES ('5b97f322e30e4e318d8c1272c12e6ba3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9468304850', '8129', '2808', '682', '437', '1808', '35', '2015-11-22 14:11:56');
INSERT INTO `pt_resources` VALUES ('5bcc58baa25946a4a0644eea597f856b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9609356814', '8129', '2817', '682', '120', '1808', '35', '2015-11-22 14:39:56');
INSERT INTO `pt_resources` VALUES ('5c0a655a34454d55908fc3790015e998', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9467975413', '8129', '2786', '705', '230', '1808', '34', '2015-11-22 13:53:56');
INSERT INTO `pt_resources` VALUES ('5c151c79b31f4118aa5c2cbb839fc45d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1128471224', '8126', '3517', '371', '294', '371', '33', '2016-04-03 18:19:43');
INSERT INTO `pt_resources` VALUES ('5c27f6ad87014d9b983314417b9451a7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9598625322', '8129', '2788', '705', '213', '1808', '34', '2015-11-22 13:55:56');
INSERT INTO `pt_resources` VALUES ('5c49f77aac544e97a872fe2b58103975', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9423125452', '8129', '3063', '573', '321', '1808', '43', '2015-11-22 18:27:56');
INSERT INTO `pt_resources` VALUES ('5c6a64b8d27e4abfa8803241c1356d3f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '955', '549', '186', '882', '30', '2015-12-04 12:06:36');
INSERT INTO `pt_resources` VALUES ('5ca61547ee7b4d489fe1203394e6f0c7', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '473', '180', '148', '882', '6', '2015-12-22 11:15:00');
INSERT INTO `pt_resources` VALUES ('5cbd50b56b2e420eb458b55c629be7ed', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0975732102', '3964', '697', '104', '44', '882', '10', '2015-12-22 10:47:11');
INSERT INTO `pt_resources` VALUES ('5cece2b452124a18905e7084f38ed1d1', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1663176036', '8126', '5105', '371', '299', '371', '4', '2016-01-05 22:23:57');
INSERT INTO `pt_resources` VALUES ('5d003762f70c472788703402238f87a1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9469925415', '8129', '2842', '651', '463', '1808', '37', '2015-11-22 15:17:56');
INSERT INTO `pt_resources` VALUES ('5d45ed4ab59e4fc9a621bf2ce402952d', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1687481546', '8126', '4772', '371', '355', '371', '33', '2016-01-06 00:41:57');
INSERT INTO `pt_resources` VALUES ('5d4ba28983c84b6b93b5352432f318ac', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0737182286', '8126', '3671', '371', '35', '371', '46', '2015-12-15 23:02:27');
INSERT INTO `pt_resources` VALUES ('5d57bdba64214bacb9a6460c80a98667', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9483250402', '8129', '2747', '743', '261', '1808', '32', '2015-11-22 12:33:56');
INSERT INTO `pt_resources` VALUES ('5db5f264fdee411c8749f65ac5a8ff17', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.2072082367', '8126', '3622', '371', '12', '371', '99', '2015-12-15 23:35:22');
INSERT INTO `pt_resources` VALUES ('5dec8d5b9df34f089559a657fefc0e8b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9443284719', '8129', '2999', '637', '377', '1808', '40', '2015-11-22 17:01:56');
INSERT INTO `pt_resources` VALUES ('5e6eb473633a402b807bbbeb6ffb40c7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9957129330', '8129', '2741', '784', '366', '1808', '30', '2015-11-22 10:59:56');
INSERT INTO `pt_resources` VALUES ('5e743c4ed2f84817bee745034a933987', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1278161496', '8126', '3703', '371', '23', '371', '50', '2015-12-15 22:50:43');
INSERT INTO `pt_resources` VALUES ('5ed3ecaee0c64b9e9e2f5b2c6aec081d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1244436597', '8126', '3512', '371', '272', '371', '23', '2016-04-03 18:05:55');
INSERT INTO `pt_resources` VALUES ('5ee412da05454e13877adeddd68331a4', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '783', '503', '153', '882', '41', '2015-12-04 15:41:44');
INSERT INTO `pt_resources` VALUES ('5eedc7cfd7454b3a8ce6e47266981876', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0895782169', '3964', '418', '880', '293', '882', '115', '2015-12-04 15:59:07');
INSERT INTO `pt_resources` VALUES ('5ef929614cfd4e07b4943b41020ff6f3', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2337481028', '8129', '3327', '1108', '584', '1808', '37', '2015-12-02 23:48:31');
INSERT INTO `pt_resources` VALUES ('5f30c0814a5742629cdadd3651c1cbf7', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1868506401', '8126', '4736', '371', '307', '371', '35', '2016-01-06 00:53:57');
INSERT INTO `pt_resources` VALUES ('5f42085264eb416a9e3ce6aadeb43ea2', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1499952429', '8126', '3164', '371', '263', '371', '8', '2016-01-03 14:10:11');
INSERT INTO `pt_resources` VALUES ('5fc26d8627e1476ca15676a95fb20603', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9559972345', '8129', '2996', '622', '151', '1808', '39', '2015-11-22 16:49:56');
INSERT INTO `pt_resources` VALUES ('5fdd2e01bae74a11aa4d4c01a303bc1b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0842581116', '3964', '920', '541', '249', '882', '32', '2015-12-04 13:04:59');
INSERT INTO `pt_resources` VALUES ('5ff09e2785d94f1ab49ad5e7e6bbcace', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1295279399', '8126', '3096', '371', '330', '371', '14', '2016-01-03 14:36:11');
INSERT INTO `pt_resources` VALUES ('6007b1fda87048ce9d48140ca57ba372', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9570346753', '8129', '2761', '888', '298', '1808', '26', '2015-11-22 07:57:56');
INSERT INTO `pt_resources` VALUES ('602214f6fb45485085fd53548fec0ea7', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0601007399', '3964', '1089', '592', '266', '882', '41', '2015-12-04 14:40:59');
INSERT INTO `pt_resources` VALUES ('60d20f9e37014f3c8aa3f11257d0cd4c', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1619881592', '3964', '677', '514', '220', '882', '59', '2015-12-21 17:14:46');
INSERT INTO `pt_resources` VALUES ('615a88cde8f444de841d37459d18d034', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9588926712', '8129', '2781', '705', '433', '1808', '34', '2015-11-22 13:35:56');
INSERT INTO `pt_resources` VALUES ('6188859ced7a4c8783bba2526ae91e69', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9433200446', '8129', '3039', '596', '224', '1808', '41', '2015-11-22 17:41:56');
INSERT INTO `pt_resources` VALUES ('61add53ac6844e43866f970e75d5cca7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9607406852', '8129', '2786', '724', '192', '1808', '33', '2015-11-22 13:19:56');
INSERT INTO `pt_resources` VALUES ('625f1f0aa6ee491abbdc822550a5ebaa', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0868807188', '3964', '656', '887', '237', '887', '106', '2015-12-04 16:20:29');
INSERT INTO `pt_resources` VALUES ('6308622bcd19427095e275a40b3a1841', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0918532147', '8126', '3534', '371', '94', '371', '42', '2015-12-16 00:15:51');
INSERT INTO `pt_resources` VALUES ('63405794b8b44051b02b43de34b99fc0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9593428706', '8129', '3041', '610', '405', '1808', '42', '2015-11-22 17:55:56');
INSERT INTO `pt_resources` VALUES ('634d9a686c7a448aab5c1eb33223772a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9854400115', '8129', '2828', '873', '435', '1808', '21', '2015-11-22 03:45:55');
INSERT INTO `pt_resources` VALUES ('63c75ae0e0104c89afcc4a697b275efb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9672725256', '8129', '2739', '894', '657', '1808', '27', '2015-11-22 08:15:56');
INSERT INTO `pt_resources` VALUES ('63cfdd0219874cc99113d50fe42bbaa4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9865832132', '8129', '2710', '816', '256', '1808', '29', '2015-11-22 10:25:56');
INSERT INTO `pt_resources` VALUES ('63e0f80c2e274193a97942f01d1e82f9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9580463796', '8129', '2825', '888', '590', '1808', '26', '2015-11-22 07:31:56');
INSERT INTO `pt_resources` VALUES ('6438fa5ff9f74d059aa1a311497f9908', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1271662449', '8126', '3600', '371', '308', '371', '4', '2016-04-03 19:07:31');
INSERT INTO `pt_resources` VALUES ('646a9923333c40859fedcec40faeccf2', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.1876306395', '8126', '4532', '371', '97', '371', '45', '2016-01-24 17:04:15');
INSERT INTO `pt_resources` VALUES ('646ccf7e48fb4d4481cdf39a0009e223', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.1459910551', '8126', '4649', '371', '169', '371', '45', '2016-01-24 17:00:15');
INSERT INTO `pt_resources` VALUES ('646ec8a7558e4f2ebb292aa74ed695ef', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1377900500', '8126', '3676', '371', '11', '371', '47', '2015-12-15 22:40:43');
INSERT INTO `pt_resources` VALUES ('64adeb5200bb4ea18b5459e2e91f5d24', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1019607062', '3964', '1112', '906', '187', '906', '109', '2015-12-04 16:54:29');
INSERT INTO `pt_resources` VALUES ('64c79af7305844afb032699f754f5bfb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9478696066', '8129', '2820', '682', '413', '1808', '35', '2015-11-22 14:13:56');
INSERT INTO `pt_resources` VALUES ('65171c537c1245a39f13c3c638026ee1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9605122018', '8129', '2994', '622', '262', '1808', '39', '2015-11-22 16:39:56');
INSERT INTO `pt_resources` VALUES ('65384c6a53dc4097ad0c8c2b7c6e5b00', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9425730244', '8129', '2989', '667', '458', '1808', '38', '2015-11-22 15:53:56');
INSERT INTO `pt_resources` VALUES ('6553fb3a835540c083563a7462608dcc', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0691929753', '3964', '898', '508', '133', '882', '57', '2015-12-21 17:04:46');
INSERT INTO `pt_resources` VALUES ('65540a3558e84609809ad221016ab734', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1194383541', '8126', '3610', '371', '283', '371', '7', '2016-04-03 18:35:23');
INSERT INTO `pt_resources` VALUES ('656f2525c44340ab988b46cc5e2ae432', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1859352777', '8126', '2818', '371', '269', '371', '22', '2016-01-03 13:25:08');
INSERT INTO `pt_resources` VALUES ('660287bebf844c388ae493667b721439', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9481959046', '8129', '2754', '743', '545', '1808', '32', '2015-11-22 12:07:56');
INSERT INTO `pt_resources` VALUES ('6611332d1ee84e38b9a0abd66631f5fc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9675333379', '8129', '2727', '894', '331', '1808', '27', '2015-11-22 08:45:56');
INSERT INTO `pt_resources` VALUES ('661a7dc6fc97412ea77f7a03e59511cb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9746806207', '8129', '2810', '873', '234', '1808', '21', '2015-11-22 04:03:55');
INSERT INTO `pt_resources` VALUES ('661db4a78efc4a8b9b29ad923a289006', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9587246889', '8129', '2835', '887', '419', '1808', '25', '2015-11-22 06:57:56');
INSERT INTO `pt_resources` VALUES ('6654599972654a5e98e6c9734f26e0a5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9769250177', '8129', '2877', '881', '529', '1808', '23', '2015-11-22 05:09:55');
INSERT INTO `pt_resources` VALUES ('66dc883abfb9495a9a004ccbabb951da', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9582700329', '8129', '2993', '651', '155', '1808', '37', '2015-11-22 15:45:56');
INSERT INTO `pt_resources` VALUES ('67b82fc39f7f421dbd76297d4fcec9b2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9974630150', '8129', '2743', '784', '297', '1808', '30', '2015-11-22 11:05:56');
INSERT INTO `pt_resources` VALUES ('68146c5d8cc44fd2a7410885b09f213a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9470250421', '8129', '2749', '743', '169', '1808', '32', '2015-11-22 12:41:56');
INSERT INTO `pt_resources` VALUES ('681835db65854b58964306378db2287e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9605447027', '8129', '2839', '887', '298', '1808', '25', '2015-11-22 07:07:56');
INSERT INTO `pt_resources` VALUES ('690ef82c579146faa68b6357d1642f65', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7903216959', '8129', '2696', '872', '351', '1808', '20', '2015-11-22 03:07:55');
INSERT INTO `pt_resources` VALUES ('693a0ee14d4e4ca8ac5e356ce073c4c0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9953208616', '8129', '2785', '763', '554', '1808', '31', '2015-11-22 11:25:56');
INSERT INTO `pt_resources` VALUES ('6a15f285a40646ca8e94df301268bd1c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9477023113', '8129', '2764', '743', '215', '1808', '32', '2015-11-22 12:37:56');
INSERT INTO `pt_resources` VALUES ('6a3d14e731934d8692dbe48b81e2a818', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9782250167', '8129', '2874', '874', '391', '1808', '22', '2015-11-22 04:35:55');
INSERT INTO `pt_resources` VALUES ('6a9abbbb62c4443088efb02b6728ac11', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9506325395', '8129', '2716', '816', '390', '1808', '29', '2015-11-22 10:13:56');
INSERT INTO `pt_resources` VALUES ('6ab9409ac7974d548df279ca2dadf13a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0109256861', '3964', '1066', '891', '178', '891', '107', '2015-12-04 16:34:29');
INSERT INTO `pt_resources` VALUES ('6acd0c046bbd47dfa2ce0cc5d79fa816', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1667765972', '3964', '733', '656', '199', '882', '80', '2015-12-04 13:56:34');
INSERT INTO `pt_resources` VALUES ('6aea1eae22114bffb1ed3f2dfd330673', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0765782263', '3964', '818', '512', '240', '882', '39', '2015-12-04 13:17:59');
INSERT INTO `pt_resources` VALUES ('6b0f9d1952994e7c951dcaba6d2c7534', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0676732338', '3964', '843', '584', '289', '882', '45', '2015-12-04 11:49:56');
INSERT INTO `pt_resources` VALUES ('6b1f25ee69f447caa7922e6b9f53b4cb', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1372231783', '3964', '824', '163', '109', '882', '11', '2015-12-22 11:45:39');
INSERT INTO `pt_resources` VALUES ('6b200d54d6914b628b926947f03d604b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9955824701', '8129', '2774', '763', '222', '1808', '31', '2015-11-22 11:55:56');
INSERT INTO `pt_resources` VALUES ('6b4747fd3b0f45ae84e8890083c948c3', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3101148056', '8129', '3420', '1128', '617', '1808', '43', '2015-12-02 23:54:35');
INSERT INTO `pt_resources` VALUES ('6be3b810fcda427f9e705aacf4c4c9e7', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0835657219', '3964', '919', '592', '189', '882', '41', '2015-12-04 14:44:59');
INSERT INTO `pt_resources` VALUES ('6c90aa36a11c4939813ebf426e1f5a91', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3606', '371', '283', '371', '3', '2016-04-03 18:39:39');
INSERT INTO `pt_resources` VALUES ('6cc5ba2ae35043f78932b4ec7a78db4c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9700027742', '8129', '2856', '887', '217', '1808', '25', '2015-11-22 07:15:56');
INSERT INTO `pt_resources` VALUES ('6cf60556adb34efd8366609ba11c078c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9467650423', '8129', '2807', '682', '364', '1808', '35', '2015-11-22 14:17:56');
INSERT INTO `pt_resources` VALUES ('6d70462246c2477f88f7ae833cc144ac', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9484550401', '8129', '2789', '724', '148', '1808', '33', '2015-11-22 13:23:56');
INSERT INTO `pt_resources` VALUES ('6da70cadb10c46799546f1c9c33790c7', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2481581235', '8129', '4045', '654', '384', '1808', '33', '2015-12-02 21:43:50');
INSERT INTO `pt_resources` VALUES ('6de6c47b10ea42fe9fb76bb8b7d28cbf', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0286732645', '3964', '1121', '587', '138', '882', '46', '2015-12-04 15:22:59');
INSERT INTO `pt_resources` VALUES ('6e0f311303aa445cb2acada76e201744', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9442630082', '8129', '3031', '596', '314', '1808', '41', '2015-11-22 17:33:56');
INSERT INTO `pt_resources` VALUES ('6e4358cef9e74dddba379cbb450f4be6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9675655657', '8129', '2877', '881', '443', '1808', '23', '2015-11-22 05:17:55');
INSERT INTO `pt_resources` VALUES ('6e746705e4fc400d824f36160a7dd5e8', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0740432280', '3964', '675', '512', '133', '882', '39', '2015-12-04 13:25:59');
INSERT INTO `pt_resources` VALUES ('6f16d987fa6a462fbed1111bfa00c40e', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1886056392', '8126', '4409', '371', '312', '371', '17', '2016-01-05 23:25:57');
INSERT INTO `pt_resources` VALUES ('6fac37aab59041c68eb827c64a10a3fe', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9576560619', '8129', '3302', '573', '232', '1808', '43', '2015-11-22 18:35:56');
INSERT INTO `pt_resources` VALUES ('701c415a2eb749d6abc0d44af9f38943', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3629', '371', '284', '371', '3', '2016-04-03 18:59:54');
INSERT INTO `pt_resources` VALUES ('70379221ccf3426190bf99b5f167def5', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0932182141', '3964', '462', '108', '61', '882', '14', '2015-12-22 11:06:56');
INSERT INTO `pt_resources` VALUES ('703cc4bd6f0141cc85ec878f8bc792b3', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0737277803', '8126', '3739', '371', '177', '371', '42', '2015-12-15 23:48:32');
INSERT INTO `pt_resources` VALUES ('70836d61b1d3483390994e55cd431969', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9714652598', '8129', '2875', '882', '448', '1808', '24', '2015-11-22 06:05:55');
INSERT INTO `pt_resources` VALUES ('70aafba9ab7f47028d382591d27b5961', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1919598704', '8126', '3775', '371', '341', '371', '5', '2016-01-03 11:59:08');
INSERT INTO `pt_resources` VALUES ('71106874380540528ef489cfb17c3a40', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1784262995', '8126', '4504', '371', '259', '371', '14', '2016-01-05 23:13:57');
INSERT INTO `pt_resources` VALUES ('71af1263dd004afe94b8f26f5798b2ac', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '490', '108', '73', '882', '8', '2015-12-22 11:12:48');
INSERT INTO `pt_resources` VALUES ('71d357b292dc4334bef1a877675ffd63', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.1857781405', '8129', '4595', '647', '392', '1808', '31', '2015-12-02 21:09:50');
INSERT INTO `pt_resources` VALUES ('72963cc40e2b414cb6633c3951d4f6e8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9739025203', '8129', '2876', '881', '311', '1808', '23', '2015-11-22 05:29:55');
INSERT INTO `pt_resources` VALUES ('7299458f4f23412fbb209d362e4cf77d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9449450429', '8129', '2822', '699', '167', '1808', '36', '2015-11-22 15:13:56');
INSERT INTO `pt_resources` VALUES ('72e7c78390194764927063806b5cf53c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9461150428', '8129', '2816', '699', '191', '1808', '36', '2015-11-22 15:11:56');
INSERT INTO `pt_resources` VALUES ('73be8ca2d3684e91b1832ff99f0353b2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9951543542', '8129', '2758', '763', '469', '1808', '31', '2015-11-22 11:33:56');
INSERT INTO `pt_resources` VALUES ('7431a6b4ed834b738b3f83a1df08b037', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603818706', '8129', '2853', '882', '204', '1808', '24', '2015-11-22 06:27:55');
INSERT INTO `pt_resources` VALUES ('7433eb03b4d9483f9b2ad292fd389439', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9596062354', '8129', '2805', '705', '102', '1808', '34', '2015-11-22 14:05:56');
INSERT INTO `pt_resources` VALUES ('7450fa69bbde42ff813a6f1bc0a738b3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9966529487', '8129', '2739', '784', '584', '1808', '30', '2015-11-22 10:39:56');
INSERT INTO `pt_resources` VALUES ('745684192a094bf4ac76acf32811bcd9', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0530807455', '3964', '583', '600', '297', '882', '41', '2015-12-04 13:37:59');
INSERT INTO `pt_resources` VALUES ('74594265bffd449aa1c585d9ea64f87f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9443600438', '8129', '2963', '651', '178', '1808', '37', '2015-11-22 15:43:56');
INSERT INTO `pt_resources` VALUES ('74954201d3384486b85c2d3c6e4154d5', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2315642007', '8129', '3795', '692', '383', '1808', '30', '2015-12-02 23:04:09');
INSERT INTO `pt_resources` VALUES ('74ce4531a82649a7a198f783757347bc', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1636526283', '8126', '4007', '371', '330', '371', '27', '2016-01-06 00:13:57');
INSERT INTO `pt_resources` VALUES ('74e3792f68cb4e54bb07c273a9d96ac9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9681172588', '8129', '2739', '894', '614', '1808', '27', '2015-11-22 08:19:56');
INSERT INTO `pt_resources` VALUES ('751b72fbf1694ee7ba862df25dfceaf1', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3785', '792', '306', '1808', '23', '2015-12-02 23:21:41');
INSERT INTO `pt_resources` VALUES ('752342d8bc2c483db66a606684185bbb', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '673', '513', '194', '882', '32', '2015-12-22 10:24:17');
INSERT INTO `pt_resources` VALUES ('75482ff28ab24f3583c0508175af5bbc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9772825177', '8129', '2869', '874', '278', '1808', '22', '2015-11-22 04:45:55');
INSERT INTO `pt_resources` VALUES ('756e49721f9f475faeb3b6111905ff47', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9555725356', '8129', '2712', '829', '478', '1808', '28', '2015-11-22 09:17:56');
INSERT INTO `pt_resources` VALUES ('75b18319f03e4f66a86202fe4cfc1895', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1635668945', '8126', '4029', '371', '345', '371', '28', '2016-01-06 00:17:57');
INSERT INTO `pt_resources` VALUES ('75b3e072e68f4d32a76d97372792758f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0308182624', '3964', '1124', '559', '319', '882', '47', '2015-12-04 15:24:59');
INSERT INTO `pt_resources` VALUES ('75c18f9fd28844b4a6d97aefc70efa67', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9562553994', '8129', '2733', '894', '592', '1808', '27', '2015-11-22 08:21:56');
INSERT INTO `pt_resources` VALUES ('75ec5b600b3048b09cbebf75149f4ca6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7721445780', '8129', '2646', '872', '310', '1808', '20', '2015-11-22 03:11:55');
INSERT INTO `pt_resources` VALUES ('75ff66f6c2904f4db9be5981d84c1b0a', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0775130381', '8126', '3688', '371', '89', '371', '47', '2015-12-15 23:04:27');
INSERT INTO `pt_resources` VALUES ('7618b2a318664696ab4f033a1883ec44', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9597355514', '8129', '2975', '667', '277', '1808', '38', '2015-11-22 16:09:56');
INSERT INTO `pt_resources` VALUES ('763ebbe2cd3e4258b67f5eefdd31876e', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0373507578', '3964', '1066', '883', '133', '883', '108', '2015-12-04 16:48:29');
INSERT INTO `pt_resources` VALUES ('767adcbf21ae4d4d8a3ea8719e3438ad', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8465351211', '8129', '2656', '872', '439', '1808', '20', '2015-11-22 02:59:55');
INSERT INTO `pt_resources` VALUES ('76ae2ba687714f1db66187384f658a0d', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1097688364', '8126', '3442', '371', '266', '371', '15', '2016-01-03 12:51:08');
INSERT INTO `pt_resources` VALUES ('778f562b68a2491e81b2fa5b7c34e3e0', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1717246335', '8126', '3112', '371', '282', '371', '9', '2016-01-03 14:14:11');
INSERT INTO `pt_resources` VALUES ('7832afdcb87b464385c3e6fa90e98030', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9439050437', '8129', '2966', '667', '126', '1808', '38', '2015-11-22 16:23:56');
INSERT INTO `pt_resources` VALUES ('785dc19a36a54cf288ccda33a94e5184', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9596025316', '8129', '2862', '887', '479', '1808', '25', '2015-11-22 06:51:56');
INSERT INTO `pt_resources` VALUES ('78e1b191c715445aa9c61bd7f412b4eb', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.2499935897', '3964', '853', '527', '296', '882', '35', '2015-12-22 10:18:51');
INSERT INTO `pt_resources` VALUES ('78e21dc3ef5a4fc3995c92a5a50f4cba', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9575225332', '8129', '2713', '829', '436', '1808', '28', '2015-11-22 09:21:56');
INSERT INTO `pt_resources` VALUES ('796dacbe4fa645b39a68110eb7ed547e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9471875409', '8129', '2792', '699', '347', '1808', '36', '2015-11-22 14:57:56');
INSERT INTO `pt_resources` VALUES ('79f79821387443849cea84633f49355d', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0000000000', '8126', '2814', '371', '276', '371', '2', '2016-01-03 13:42:11');
INSERT INTO `pt_resources` VALUES ('7a768a6c2375498886c20ec86ffb1795', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0943156647', '8126', '3702', '371', '11', '371', '49', '2015-12-15 22:46:43');
INSERT INTO `pt_resources` VALUES ('7a837750bfe94f19b3d0c4f44d4c82d8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1265161289', '8126', '3643', '371', '249', '371', '10', '2016-04-03 17:48:31');
INSERT INTO `pt_resources` VALUES ('7aab04c54918414ea8373efec1f86b37', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9926937775', '8129', '2742', '784', '317', '1808', '30', '2015-11-22 11:03:56');
INSERT INTO `pt_resources` VALUES ('7b0e52466eda43a693a079b918cb6bc3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9597017109', '8129', '2814', '682', '234', '1808', '35', '2015-11-22 14:29:56');
INSERT INTO `pt_resources` VALUES ('7b4702d657be48998f558b8e44a8d276', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '4888', '644', '283', '1808', '30', '2015-12-02 20:55:51');
INSERT INTO `pt_resources` VALUES ('7b499abfd9b8467982b91e2065607b4b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9683122615', '8129', '2714', '894', '222', '1808', '27', '2015-11-22 08:55:56');
INSERT INTO `pt_resources` VALUES ('7b674110f7ae47229b8facf472882647', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2455455944', '8129', '4384', '653', '376', '1808', '32', '2015-12-02 21:21:50');
INSERT INTO `pt_resources` VALUES ('7bc2a89dc7ca48e3b2e8b1fb2c9a57b0', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0346857595', '3964', '1138', '559', '218', '882', '47', '2015-12-04 15:32:59');
INSERT INTO `pt_resources` VALUES ('7bd54b4a8f9a4028a3a064d0c9f3aeb8', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0891542207', '8126', '3717', '371', '177', '371', '42', '2015-12-15 23:26:12');
INSERT INTO `pt_resources` VALUES ('7c03a8cec6cd4c598a803c92a83470c5', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0776832251', '3964', '745', '113', '53', '882', '15', '2015-12-22 10:53:11');
INSERT INTO `pt_resources` VALUES ('7c2898424e534092a50699d086686732', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9658097420', '8129', '2712', '816', '584', '1808', '29', '2015-11-22 09:55:56');
INSERT INTO `pt_resources` VALUES ('7c2c131b7c3343ffbb6adb9bb504b8d5', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2627969370', '8129', '3621', '856', '261', '1808', '19', '2015-12-02 22:49:50');
INSERT INTO `pt_resources` VALUES ('7c501c3bd26e4eae8f54ae66eaa535ff', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1850374336', '8126', '4502', '371', '299', '371', '14', '2016-01-05 23:11:57');
INSERT INTO `pt_resources` VALUES ('7cc0edc6c62a4155ac14782ca8ea55e2', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1635156581', '8126', '2925', '371', '291', '371', '21', '2016-01-03 13:19:08');
INSERT INTO `pt_resources` VALUES ('7cd2e7889eea4a1b87bfe10896668177', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1235406900', '3964', '622', '100', '16', '882', '10', '2015-12-22 10:39:00');
INSERT INTO `pt_resources` VALUES ('7d3f9c2b047d4b5ba0c3828782c01024', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9478371057', '8129', '2776', '705', '119', '1808', '34', '2015-11-22 14:03:56');
INSERT INTO `pt_resources` VALUES ('7d66300fa82742b4a6282cd9db8c1454', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9862527406', '8129', '2827', '873', '612', '1808', '21', '2015-11-22 03:29:55');
INSERT INTO `pt_resources` VALUES ('7d80b76cb1694d05ad1e91f4c6e91771', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2530855876', '8129', '4142', '654', '440', '1808', '33', '2015-12-02 21:41:50');
INSERT INTO `pt_resources` VALUES ('7da6e99eabff49b79b782a5d1e9d5823', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1263901503', '8126', '3649', '371', '320', '371', '6', '2016-04-03 18:27:23');
INSERT INTO `pt_resources` VALUES ('7e12ce3ea8c5437ca2428425d0fc3289', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9719838551', '8129', '2856', '882', '289', '1808', '24', '2015-11-22 06:19:55');
INSERT INTO `pt_resources` VALUES ('7e85ddd428a94d4ab356bf72c2b5296a', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1777437945', '8126', '3093', '371', '269', '371', '13', '2016-01-03 14:34:11');
INSERT INTO `pt_resources` VALUES ('7ee245c0602549b8b9132f653c756bd0', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1295964240', '8126', '3594', '371', '277', '371', '4', '2016-04-03 19:09:31');
INSERT INTO `pt_resources` VALUES ('7ee39a4a56154bceb388a16c1a6fb7c1', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0587682396', '3964', '848', '513', '149', '882', '38', '2015-12-04 13:11:59');
INSERT INTO `pt_resources` VALUES ('7ef5f097471147a58d8bb9758f5123b5', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1916412458', '8126', '2946', '371', '308', '371', '22', '2016-01-03 13:23:08');
INSERT INTO `pt_resources` VALUES ('7f731e648341452a9c36921a0470cd54', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0923505217', '8126', '3676', '371', '37', '371', '51', '2015-12-15 22:54:43');
INSERT INTO `pt_resources` VALUES ('7f80f1f3ffb241f5a3e25659d3b8403a', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2473980921', '8129', '3453', '858', '354', '1808', '20', '2015-12-03 00:09:47');
INSERT INTO `pt_resources` VALUES ('7f9a02b9d880400abec1fd829c098a51', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '739', '108', '86', '882', '9', '2015-12-22 10:33:11');
INSERT INTO `pt_resources` VALUES ('7fcdf087ff0a437b8efe5a5e273d9007', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9960012033', '8129', '2756', '763', '441', '1808', '31', '2015-11-22 11:35:56');
INSERT INTO `pt_resources` VALUES ('7feb38380b11438b859b1702f46c31e8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9445550432', '8129', '3003', '622', '394', '1808', '39', '2015-11-22 16:27:56');
INSERT INTO `pt_resources` VALUES ('800b85bf46d04595b4e23f8387d0e8a7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9469595997', '8129', '2768', '724', '438', '1808', '33', '2015-11-22 12:57:56');
INSERT INTO `pt_resources` VALUES ('803cf9912fde4b49ac874566fb7e22d3', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1437303094', '8126', '3257', '371', '330', '371', '7', '2016-01-03 14:02:11');
INSERT INTO `pt_resources` VALUES ('8044c296dbcc47c38349eff53eb9f6c3', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1184607984', '3964', '682', '95', '60', '882', '13', '2015-12-22 10:34:41');
INSERT INTO `pt_resources` VALUES ('808cf26449934ee0a861a21f401f36dc', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0909107149', '3964', '686', '887', '289', '887', '106', '2015-12-04 16:18:29');
INSERT INTO `pt_resources` VALUES ('809979d478624e4582e67d53cd3798fa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9974979192', '8129', '2742', '784', '564', '1808', '30', '2015-11-22 10:41:56');
INSERT INTO `pt_resources` VALUES ('809fb2f4a35a4922a69fd473ce6d3021', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9961027313', '8129', '2710', '816', '205', '1808', '29', '2015-11-22 10:29:56');
INSERT INTO `pt_resources` VALUES ('80b177b36b6144b0be81d5c84a4e7dd7', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0795357250', '3964', '879', '513', '119', '882', '38', '2015-12-04 13:13:59');
INSERT INTO `pt_resources` VALUES ('80db7e5fa0a94a5a80d0125fcdf496af', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0907482160', '8126', '3123', '371', '304', '371', '5', '2016-01-03 13:54:11');
INSERT INTO `pt_resources` VALUES ('814d4373fed541779fabbc046d2afde1', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1791806455', '8126', '4138', '371', '299', '371', '30', '2016-01-06 00:29:57');
INSERT INTO `pt_resources` VALUES ('81888fde0f31402f8713737f0002c85e', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3859', '371', '286', '371', '3', '2016-04-03 17:24:31');
INSERT INTO `pt_resources` VALUES ('81d797a84ff141738a51594696aa5012', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9997725227', '8129', '3743', '585', '137', '1808', '44', '2015-11-22 19:11:56');
INSERT INTO `pt_resources` VALUES ('81f4abe4a72349cfb94c412d3d517229', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.2237056101', '3964', '436', '887', '211', '887', '106', '2015-12-04 16:22:29');
INSERT INTO `pt_resources` VALUES ('8279f4660b17414cbf11db394f88e702', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9485525403', '8129', '2765', '743', '371', '1808', '32', '2015-11-22 12:23:56');
INSERT INTO `pt_resources` VALUES ('829510f40b37485ebd979fa24b60df71', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.4712005527', '8129', '2795', '1414', '512', '1808', '96', '2015-12-02 21:53:30');
INSERT INTO `pt_resources` VALUES ('82c62679e717481980e8d5e4a5eb92ef', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8020923256', '8129', '2797', '870', '188', '1808', '19', '2015-11-22 02:43:55');
INSERT INTO `pt_resources` VALUES ('82d4813de5b748568e29dcb1d26101c1', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.2965705538', '3964', '564', '479', '125', '882', '61', '2015-12-21 17:32:46');
INSERT INTO `pt_resources` VALUES ('831151cfef2c48059b16ce8932143346', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2368815210', '8129', '3345', '1108', '667', '1808', '37', '2015-12-02 23:44:31');
INSERT INTO `pt_resources` VALUES ('838ebcd419a2490c90f98adea6961fac', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1233003408', '8126', '3428', '371', '326', '371', '16', '2016-01-03 12:53:08');
INSERT INTO `pt_resources` VALUES ('83918680b9df4cd5a7c6ccf739a0e4b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9464725427', '8129', '2797', '682', '299', '1808', '35', '2015-11-22 14:23:56');
INSERT INTO `pt_resources` VALUES ('839e14123fa14bf184e325648da999ca', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1344069260', '8126', '3138', '371', '343', '371', '10', '2016-01-03 12:23:08');
INSERT INTO `pt_resources` VALUES ('83c997f2bcb84a5e87fa97700b61ead1', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1227606906', '8126', '3576', '371', '282', '371', '5', '2016-04-03 19:15:31');
INSERT INTO `pt_resources` VALUES ('83db1c4bb9c74cdf9182cf0e2abe35bf', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1744277044', '3964', '1224', '124', '23', '882', '12', '2015-12-22 11:23:15');
INSERT INTO `pt_resources` VALUES ('841f2be2ac0b43a58f1bdd8f5954003b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1468177815', '3964', '722', '593', '153', '882', '43', '2015-12-04 14:56:59');
INSERT INTO `pt_resources` VALUES ('843c276e8a7d492ebca4498eee28c030', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9607075311', '8129', '2843', '887', '258', '1808', '25', '2015-11-22 07:11:56');
INSERT INTO `pt_resources` VALUES ('848159a16c1c42afb099c866ae66a695', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9582700329', '8129', '3058', '573', '345', '1808', '43', '2015-11-22 18:25:56');
INSERT INTO `pt_resources` VALUES ('84aba9eda05444c38fd97f4908f775a2', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1623966987', '8126', '4957', '371', '325', '371', '6', '2016-01-05 22:31:57');
INSERT INTO `pt_resources` VALUES ('84fb73aff23643118fa80eb0e618619f', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1279534188', '8126', '3526', '371', '294', '371', '6', '2016-04-03 19:38:46');
INSERT INTO `pt_resources` VALUES ('855565ded48f4c3ea6d5125b80ced49f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0186632715', '3964', '1071', '891', '101', '891', '107', '2015-12-04 16:40:29');
INSERT INTO `pt_resources` VALUES ('8566da88f0a14ac098cd8bdaa208a175', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1042955655', '8126', '3714', '371', '122', '371', '42', '2015-12-15 23:56:19');
INSERT INTO `pt_resources` VALUES ('861b1270404d4c9caa77e71c33872536', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9600575316', '8129', '2820', '699', '144', '1808', '36', '2015-11-22 15:15:56');
INSERT INTO `pt_resources` VALUES ('862b3d2883ae45f08686ee3903d4dee8', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0618882387', '3964', '781', '600', '186', '882', '41', '2015-12-04 13:45:59');
INSERT INTO `pt_resources` VALUES ('87f9c01edcfa4efa9b3dc1776bbb8520', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1304175222', '8126', '3116', '371', '267', '371', '15', '2016-01-03 14:44:11');
INSERT INTO `pt_resources` VALUES ('88952a0b27ae479386824a0b055aae80', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9651925272', '8129', '2881', '881', '224', '1808', '23', '2015-11-22 05:37:55');
INSERT INTO `pt_resources` VALUES ('88b38e07c74045a9aabaa400a8a0e37c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9767963723', '8129', '2826', '873', '297', '1808', '21', '2015-11-22 03:57:55');
INSERT INTO `pt_resources` VALUES ('88ebcf0c37b84bdbad74a93ff81ac3d8', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.5655899493', '8129', '2180', '1877', '242', '1877', '140', '2015-12-02 23:11:46');
INSERT INTO `pt_resources` VALUES ('88f2273ab92943ec90f8dcf4411f3475', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1139783137', '8126', '3541', '371', '319', '371', '6', '2016-04-03 19:19:31');
INSERT INTO `pt_resources` VALUES ('890403a87ae94208900d3213998c181a', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3538', '371', '283', '371', '3', '2016-04-03 19:41:03');
INSERT INTO `pt_resources` VALUES ('895a13a22d084dae991e6938cd97c3d7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8037651541', '8129', '2772', '872', '578', '1808', '20', '2015-11-22 02:47:55');
INSERT INTO `pt_resources` VALUES ('8970d0295d4d49e8980f1d68ed271ccc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7851316571', '8129', '2703', '872', '421', '1808', '20', '2015-11-22 03:01:55');
INSERT INTO `pt_resources` VALUES ('8a0cdaf91a234f83966504933d302a58', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2111865467', '8129', '4380', '653', '317', '1808', '32', '2015-12-02 21:23:50');
INSERT INTO `pt_resources` VALUES ('8a19afa276b444c5be10064e9909d37e', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1430596766', '8126', '3794', '371', '277', '371', '7', '2016-04-03 17:26:31');
INSERT INTO `pt_resources` VALUES ('8a9a084ff5524024823e2c1f5e4e26ba', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9542687246', '8129', '2718', '829', '298', '1808', '28', '2015-11-22 09:33:56');
INSERT INTO `pt_resources` VALUES ('8abe5d40022e4be6826ad862f5fa1716', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3748', '371', '119', '371', '40', '2015-12-15 23:54:19');
INSERT INTO `pt_resources` VALUES ('8b267b3946224ebba5a62ef9536eda1a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9627878396', '8129', '2864', '887', '570', '1808', '25', '2015-11-22 06:43:56');
INSERT INTO `pt_resources` VALUES ('8bdbc1fb40cc4f6297ad23b4119c908d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9569371744', '8129', '2988', '667', '212', '1808', '38', '2015-11-22 16:15:56');
INSERT INTO `pt_resources` VALUES ('8c93abba00af4c9c8b2ce8d57c40ec1e', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2345669811', '8129', '4068', '654', '316', '1808', '33', '2015-12-02 21:47:50');
INSERT INTO `pt_resources` VALUES ('8cb24c4238af4407a2b6b7ea84577be9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9639250288', '8129', '2878', '882', '364', '1808', '24', '2015-11-22 06:13:55');
INSERT INTO `pt_resources` VALUES ('8ccb667e24954d9cad722a5eeb1ef8e8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9446172743', '8129', '3033', '596', '384', '1808', '41', '2015-11-22 17:27:56');
INSERT INTO `pt_resources` VALUES ('8d0abaef92324743820bbb5a90f94803', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.1172209802', '8126', '4676', '371', '145', '371', '44', '2016-01-24 16:56:15');
INSERT INTO `pt_resources` VALUES ('8d6a3e517a484121865244cee6b77b69', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1894181383', '8126', '2968', '371', '162', '371', '45', '2015-12-16 00:43:48');
INSERT INTO `pt_resources` VALUES ('8d789984eaea4c489b43f5f7a5866bd1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9444575439', '8129', '2993', '622', '220', '1808', '39', '2015-11-22 16:43:56');
INSERT INTO `pt_resources` VALUES ('8d7bbc4885474e79a9a7efbccc746aa0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9636325284', '8129', '2863', '882', '533', '1808', '24', '2015-11-22 05:57:55');
INSERT INTO `pt_resources` VALUES ('8dac53f79fe244159bf25d5c51dfa5a3', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1295279392', '3964', '1010', '500', '96', '882', '55', '2015-12-21 16:56:46');
INSERT INTO `pt_resources` VALUES ('8de7a88bd53148229786c5d517bde0d3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9590825320', '8129', '2843', '651', '336', '1808', '37', '2015-11-22 15:29:56');
INSERT INTO `pt_resources` VALUES ('8e5a87f7650e4e67b5a0a5439b493503', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9753973145', '8129', '2884', '881', '582', '1808', '23', '2015-11-22 05:05:55');
INSERT INTO `pt_resources` VALUES ('8eaada4cb201443c96b049195598c649', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0855807199', '3964', '805', '185', '76', '882', '12', '2015-12-22 11:55:39');
INSERT INTO `pt_resources` VALUES ('8ed8b2b57dc14d95aad5bd63571ced60', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9729925210', '8129', '2864', '881', '469', '1808', '23', '2015-11-22 05:15:55');
INSERT INTO `pt_resources` VALUES ('8edf7328cc1a4976b80d32722ccee184', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0719229959', '3964', '456', '105', '35', '882', '11', '2015-12-22 11:00:56');
INSERT INTO `pt_resources` VALUES ('8ef18310654a47d7a2be5a313ee8b4db', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9596350314', '8129', '2786', '705', '390', '1808', '34', '2015-11-22 13:39:56');
INSERT INTO `pt_resources` VALUES ('8f030eb446264ec8b278dff60e7a55a9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9947349598', '8129', '2747', '784', '228', '1808', '30', '2015-11-22 11:11:56');
INSERT INTO `pt_resources` VALUES ('8f29a71680b548ae9ddafee50d6ff17e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0779432265', '3964', '834', '185', '103', '882', '12', '2015-12-22 11:53:39');
INSERT INTO `pt_resources` VALUES ('8f42a3f728334b54afaf03bc4787a26b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7767251762', '8129', '3149', '870', '301', '1808', '19', '2015-11-22 02:33:55');
INSERT INTO `pt_resources` VALUES ('8f44f0f807d64497a1b33b55fa36aab6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9595375312', '8129', '2778', '724', '236', '1808', '33', '2015-11-22 13:15:56');
INSERT INTO `pt_resources` VALUES ('8f8ebb47d6814ca0a2cc773d98a7299c', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1716987485', '8126', '2959', '371', '278', '371', '11', '2016-01-03 12:31:08');
INSERT INTO `pt_resources` VALUES ('8fb1b51082b645f5a8f9be4766ee9743', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '1.0000000000', '8126', '5004', '371', '277', '371', '2', '2016-01-05 22:15:57');
INSERT INTO `pt_resources` VALUES ('8fc97c57d4804204a5ab61eb39a5d8df', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0374157582', '3964', '1143', '559', '242', '882', '47', '2015-12-04 15:30:59');
INSERT INTO `pt_resources` VALUES ('904e8d3c240945dfb3457d8551edcc76', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9952469632', '8129', '2720', '816', '123', '1808', '29', '2015-11-22 10:37:56');
INSERT INTO `pt_resources` VALUES ('9050fafec86c4dbb9335b0db56d5e864', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9939235680', '8129', '2754', '784', '168', '1808', '30', '2015-11-22 11:17:56');
INSERT INTO `pt_resources` VALUES ('90d632b3bb7b499a895dd21bc166a05e', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1043984492', '3964', '1253', '551', '255', '882', '33', '2015-12-04 16:04:53');
INSERT INTO `pt_resources` VALUES ('90fa279f9b0f47a0a77a90687134f19f', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0894807160', '3964', '806', '185', '130', '882', '12', '2015-12-22 11:51:39');
INSERT INTO `pt_resources` VALUES ('90fd606afa744be3bfb4267813a67c56', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9440944532', '8129', '2758', '724', '324', '1808', '33', '2015-11-22 13:07:56');
INSERT INTO `pt_resources` VALUES ('910a211bf4f446d8a55f1ccec7f6e062', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9619116171', '8129', '2864', '882', '317', '1808', '24', '2015-11-22 06:17:56');
INSERT INTO `pt_resources` VALUES ('9134e9ba68a84434b60a49507f65c999', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9676958335', '8129', '2726', '829', '234', '1808', '28', '2015-11-22 09:39:56');
INSERT INTO `pt_resources` VALUES ('91417c450c9e403ab047320d4c407f71', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1589006621', '8126', '3464', '371', '332', '371', '14', '2016-01-03 12:43:08');
INSERT INTO `pt_resources` VALUES ('918fd79a3d1349a782a81d8d9a74cc10', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1231181905', '8126', '3482', '371', '245', '371', '37', '2016-04-03 18:24:34');
INSERT INTO `pt_resources` VALUES ('91f4471bd69b47818f030ec984ad1002', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0903582163', '8126', '3129', '371', '335', '371', '12', '2016-01-03 14:26:11');
INSERT INTO `pt_resources` VALUES ('925989db57784d87bdb9f34a8f379b5d', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0726055009', '3964', '704', '100', '15', '882', '17', '2015-12-22 10:42:52');
INSERT INTO `pt_resources` VALUES ('9282ca4ad06b4fc9937189a7d09c15cb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9797200160', '8129', '2825', '873', '524', '1808', '21', '2015-11-22 03:37:55');
INSERT INTO `pt_resources` VALUES ('931487a1d6fa44798e8ef11aab22d1a2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9599275317', '8129', '2823', '888', '631', '1808', '26', '2015-11-22 07:27:56');
INSERT INTO `pt_resources` VALUES ('931a62ed9eb1411ea60d91b9815ce59e', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0767005322', '8126', '3733', '371', '201', '371', '44', '2015-12-15 23:34:12');
INSERT INTO `pt_resources` VALUES ('935ba6c99cfd420a989d47eff10b9eac', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0668958706', '3964', '471', '588', '231', '882', '40', '2015-12-04 14:36:59');
INSERT INTO `pt_resources` VALUES ('93dc1247f65248b78a6b0d97a3b0b7bd', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9475094798', '8129', '2815', '682', '104', '1808', '35', '2015-11-22 14:41:56');
INSERT INTO `pt_resources` VALUES ('942454c4afa446a59192f8329eb7d136', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1448281734', '3964', '711', '589', '292', '882', '44', '2015-12-04 14:58:59');
INSERT INTO `pt_resources` VALUES ('9443b675fc234dffb176754027d2569a', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3787', '612', '203', '1808', '30', '2015-12-03 00:15:05');
INSERT INTO `pt_resources` VALUES ('944a2a36279848d5a949667e291f20c5', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2510380898', '8129', '3429', '1124', '700', '1808', '32', '2015-12-02 22:40:03');
INSERT INTO `pt_resources` VALUES ('94582400dad741fca50e44ff3bbfc444', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9562210749', '8129', '2745', '894', '309', '1808', '27', '2015-11-22 08:47:56');
INSERT INTO `pt_resources` VALUES ('94a5b3c78ab145d9b623d663d945da7c', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0956307481', '3964', '648', '536', '193', '882', '42', '2015-12-04 13:51:59');
INSERT INTO `pt_resources` VALUES ('94cd33528a6946a6987fc1dc27eb2e8d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3161', '870', '591', '1808', '19', '2015-11-22 02:29:56');
INSERT INTO `pt_resources` VALUES ('94edeb0f6c7941e7ac0d7c50afc6e89f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9696775241', '8129', '2739', '894', '287', '1808', '27', '2015-11-22 08:49:56');
INSERT INTO `pt_resources` VALUES ('951bb535b59b44b08f553721d4c24667', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2230556106', '8126', '2958', '371', '320', '371', '18', '2016-01-03 13:03:08');
INSERT INTO `pt_resources` VALUES ('95346913c38441bbb2a0c5f43a64ee57', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9744548076', '8129', '2862', '882', '561', '1808', '24', '2015-11-22 05:55:55');
INSERT INTO `pt_resources` VALUES ('955cb2264d77427e9909729c49547651', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0831107218', '8126', '3144', '371', '259', '371', '10', '2016-01-03 14:20:11');
INSERT INTO `pt_resources` VALUES ('95b6a045dbd44f6e8b663c3418928349', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.3842409124', '3964', '878', '538', '294', '882', '31', '2015-12-04 12:56:47');
INSERT INTO `pt_resources` VALUES ('95b8e265aa504c1ab18852c7c98ba917', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9528789644', '8129', '2705', '816', '523', '1808', '29', '2015-11-22 10:01:56');
INSERT INTO `pt_resources` VALUES ('95f3cb4d2571444db701803182e8c0de', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9449432085', '8129', '3039', '596', '95', '1808', '41', '2015-11-22 17:53:56');
INSERT INTO `pt_resources` VALUES ('962838f577554dc2936ae2adaaa48969', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9486833955', '8129', '2795', '699', '277', '1808', '36', '2015-11-22 15:03:56');
INSERT INTO `pt_resources` VALUES ('9637f54c7fc4442eb886cd2bbd621ab5', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1579396974', '8126', '4030', '371', '342', '371', '30', '2016-01-06 00:27:57');
INSERT INTO `pt_resources` VALUES ('963dc297fbd34f96be4c68ab18bd3ffb', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1004934220', '3964', '679', '527', '249', '882', '35', '2015-12-22 10:20:50');
INSERT INTO `pt_resources` VALUES ('964348126fc24b9d89f5d0a3f2b3695b', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '752', '104', '70', '882', '9', '2015-12-22 10:43:12');
INSERT INTO `pt_resources` VALUES ('96af0d7f93d64b14b218f62588e553bf', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9951904046', '8129', '3664', '585', '200', '1808', '44', '2015-11-22 19:05:56');
INSERT INTO `pt_resources` VALUES ('974268e5d0ef4d699bcbabb68104e2d7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9467650423', '8129', '2774', '705', '145', '1808', '34', '2015-11-22 14:01:56');
INSERT INTO `pt_resources` VALUES ('9750932f992e4e298e2e880405459ecc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9716597861', '8129', '2844', '882', '401', '1808', '24', '2015-11-22 06:09:55');
INSERT INTO `pt_resources` VALUES ('97d89fa753db4feb9053dfff0be78d8d', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0614982382', '8126', '3720', '371', '182', '371', '43', '2015-12-15 23:58:19');
INSERT INTO `pt_resources` VALUES ('97e79a06bce84944b3a3859f5c282237', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1066156491', '8126', '3541', '371', '289', '371', '11', '2016-04-03 17:52:31');
INSERT INTO `pt_resources` VALUES ('97f8048950534045abfa64fefedf57e0', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3104739573', '8129', '3585', '858', '464', '1808', '20', '2015-12-03 00:05:47');
INSERT INTO `pt_resources` VALUES ('9856eabd4c2b4b9583a34b7ac5643142', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1106267894', '8126', '3503', '371', '276', '371', '14', '2016-04-03 17:55:33');
INSERT INTO `pt_resources` VALUES ('987f6c0956434c8581ec79fd0e9b7be1', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2453830947', '8129', '3030', '1092', '556', '1808', '34', '2015-12-03 00:14:15');
INSERT INTO `pt_resources` VALUES ('9881a0635fb94a7facf7285e16d4578a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9622678443', '8129', '2857', '882', '270', '1808', '24', '2015-11-22 06:21:56');
INSERT INTO `pt_resources` VALUES ('98a628aea8c943f28b0285f117cf16b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9856352511', '8129', '4615', '573', '95', '1808', '43', '2015-11-22 18:47:56');
INSERT INTO `pt_resources` VALUES ('9903a88a642b40458cadd072d3f0e419', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9608700308', '8129', '2757', '743', '123', '1808', '32', '2015-11-22 12:45:56');
INSERT INTO `pt_resources` VALUES ('99755b84831146239cef952a3157aa0d', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1680448552', '8126', '2821', '371', '328', '371', '23', '2016-01-03 13:27:08');
INSERT INTO `pt_resources` VALUES ('997c5dba93084d5381d33ae4b66fd975', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3146559047', '8129', '2145', '1877', '266', '1877', '141', '2015-12-02 23:13:46');
INSERT INTO `pt_resources` VALUES ('998f9abfb61545ed99e3be0fbdc69655', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0722232302', '8126', '3579', '371', '141', '371', '44', '2015-12-16 00:32:19');
INSERT INTO `pt_resources` VALUES ('999c6dc968624d00bdad8a02b4a76214', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9820275135', '8129', '2870', '873', '165', '1808', '21', '2015-11-22 04:09:55');
INSERT INTO `pt_resources` VALUES ('99e185edfd724e7ba16fd4b55abaf8bf', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1638986896', '3964', '725', '566', '197', '882', '45', '2015-12-04 15:04:59');
INSERT INTO `pt_resources` VALUES ('9a112f6d269442a38ef81bbf5aeb9978', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '973', '74', '47', '882', '9', '2015-12-22 14:12:06');
INSERT INTO `pt_resources` VALUES ('9a4ea7371ac44b188a1f9b13509f9df5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8068542614', '8129', '2745', '872', '508', '1808', '20', '2015-11-22 02:53:55');
INSERT INTO `pt_resources` VALUES ('9a69a10f15ef49749746bef37e353fe8', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1641401248', '8126', '4098', '371', '340', '371', '23', '2016-01-05 23:53:57');
INSERT INTO `pt_resources` VALUES ('9a93e163a641411eb05ed8545a60bc30', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1623731253', '8126', '4030', '371', '304', '371', '28', '2016-01-06 00:19:57');
INSERT INTO `pt_resources` VALUES ('9b2826b169e34fe4a64e512518a0afd7', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3887', '632', '236', '1808', '29', '2015-12-02 23:53:03');
INSERT INTO `pt_resources` VALUES ('9b290bc8e4134afd8d496af74e884a5e', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1199006928', '3964', '380', '104', '77', '882', '13', '2015-12-22 11:02:56');
INSERT INTO `pt_resources` VALUES ('9b877266b66449ecaee578e76af8a82f', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1225006901', '8126', '3555', '371', '242', '371', '13', '2016-04-03 18:59:12');
INSERT INTO `pt_resources` VALUES ('9c0afe7fca284b7fab578e10bc74b766', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9439394131', '8129', '2843', '651', '426', '1808', '37', '2015-11-22 15:21:56');
INSERT INTO `pt_resources` VALUES ('9c3acc070bdd4dd88b8dda0319ac65a6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9963283284', '8129', '2709', '816', '164', '1808', '29', '2015-11-22 10:33:56');
INSERT INTO `pt_resources` VALUES ('9cadbe77b9ec4672a22b4597844c6236', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9416251811', '8129', '2981', '667', '256', '1808', '38', '2015-11-22 16:11:56');
INSERT INTO `pt_resources` VALUES ('9cafa06e706247ec923d0be2f25be462', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9448749900', '8129', '2822', '682', '478', '1808', '35', '2015-11-22 14:07:56');
INSERT INTO `pt_resources` VALUES ('9cee49bedc5c4201bb2708e38cfd255c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9945073664', '8129', '2735', '763', '156', '1808', '31', '2015-11-22 12:01:56');
INSERT INTO `pt_resources` VALUES ('9d2c6d2406e24fd884ff8ab4261e9f67', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9588550319', '8129', '2728', '829', '415', '1808', '28', '2015-11-22 09:23:56');
INSERT INTO `pt_resources` VALUES ('9dadc4b746434e94af6aa27bb5943f68', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0820394590', '3964', '844', '513', '178', '882', '38', '2015-12-04 13:09:59');
INSERT INTO `pt_resources` VALUES ('9e0c66a25ce045328fa7e68c6db83dc1', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1438638692', '3964', '1042', '742', '300', '882', '69', '2015-12-04 16:06:17');
INSERT INTO `pt_resources` VALUES ('9e1e7a3e957340ba819813b976ba3f6a', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1275960666', '8126', '3552', '371', '305', '371', '12', '2016-04-03 19:32:17');
INSERT INTO `pt_resources` VALUES ('9e32e7d5eda041dabd8d767c333599be', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9444900437', '8129', '3031', '610', '319', '1808', '42', '2015-11-22 18:03:56');
INSERT INTO `pt_resources` VALUES ('9e475ccddb3648ce901a4e6b9cecf70b', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1168058344', '8126', '3561', '371', '335', '371', '7', '2016-04-03 19:21:31');
INSERT INTO `pt_resources` VALUES ('9e671c97167f456a8cac43f0501bdaa9', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2722930721', '8126', '4055', '371', '270', '371', '3', '2016-01-03 11:53:08');
INSERT INTO `pt_resources` VALUES ('9ef572ea56ab49d287c8e10a45730423', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9461484402', '8129', '3008', '622', '352', '1808', '39', '2015-11-22 16:31:56');
INSERT INTO `pt_resources` VALUES ('9f2a336f0d44430ca9195ffb0fb1c779', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1035457344', '3964', '725', '191', '168', '882', '14', '2015-12-22 11:59:39');
INSERT INTO `pt_resources` VALUES ('9f3ac59b8e2a48429edca45d7399b479', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9848548853', '8129', '2827', '873', '322', '1808', '21', '2015-11-22 03:55:55');
INSERT INTO `pt_resources` VALUES ('9f73176703b64eed97ea85ee8163ef7c', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1456091760', '8126', '3635', '371', '24', '371', '100', '2015-12-15 23:44:25');
INSERT INTO `pt_resources` VALUES ('9fca88fbd44f41dca1cab51aed801062', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1269856869', '3964', '760', '591', '192', '882', '42', '2015-12-04 14:50:59');
INSERT INTO `pt_resources` VALUES ('9fea412052f64ab0b629dd9afe25b76a', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '1116', '181', '152', '882', '6', '2015-12-22 14:16:27');
INSERT INTO `pt_resources` VALUES ('9ffb9a9ebbdb45b594462184fc7ac20a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9966192138', '8129', '2749', '784', '257', '1808', '30', '2015-11-22 11:09:56');
INSERT INTO `pt_resources` VALUES ('9ffedecc30984e0f93366eb7b29d66e0', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0716304939', '8126', '3685', '371', '1', '371', '47', '2015-12-15 23:08:27');
INSERT INTO `pt_resources` VALUES ('a00b2d38b637436fa2a4316386c3a113', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9939890078', '8129', '2762', '763', '422', '1808', '31', '2015-11-22 11:37:56');
INSERT INTO `pt_resources` VALUES ('a017614af4534a54944daf7076220d0d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1313262053', '8126', '3619', '371', '254', '371', '6', '2016-04-03 18:31:23');
INSERT INTO `pt_resources` VALUES ('a078b2e78e40410d989936fed62a6e23', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1144480774', '8126', '3429', '371', '283', '371', '16', '2016-01-03 12:55:08');
INSERT INTO `pt_resources` VALUES ('a0b71f201fd8464181786e25d8513c44', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1762798890', '8126', '4718', '371', '332', '371', '34', '2016-01-06 00:47:57');
INSERT INTO `pt_resources` VALUES ('a0d86d69787943c3b64fbc27e6454fc2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9568725345', '8129', '3051', '610', '250', '1808', '42', '2015-11-22 18:09:56');
INSERT INTO `pt_resources` VALUES ('a1069fb693f24ea6ae5b44332c593d52', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0798282238', '3964', '890', '583', '237', '882', '44', '2015-12-04 11:47:56');
INSERT INTO `pt_resources` VALUES ('a14143ce69a547719f791d88cdeceeaa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9580096831', '8129', '2978', '667', '436', '1808', '38', '2015-11-22 15:55:56');
INSERT INTO `pt_resources` VALUES ('a14f5e3ec46b4ba79f3a9c4bffb8f1aa', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2135850103', '8126', '2972', '371', '339', '371', '19', '2016-01-03 13:07:08');
INSERT INTO `pt_resources` VALUES ('a1971e84e83a4716817b9887f1f76c49', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9426380225', '8129', '2996', '637', '130', '1808', '40', '2015-11-22 17:23:56');
INSERT INTO `pt_resources` VALUES ('a1994693395a4f4da4e5eb81b5531095', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1680006550', '8126', '2978', '371', '296', '371', '12', '2016-01-03 12:35:08');
INSERT INTO `pt_resources` VALUES ('a1c52b1dc30d4a05a8b401a14925f58c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9422102290', '8129', '3037', '596', '269', '1808', '41', '2015-11-22 17:37:56');
INSERT INTO `pt_resources` VALUES ('a23275f5351342c98027a264ca07e13b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9718227568', '8129', '2848', '887', '439', '1808', '25', '2015-11-22 06:55:56');
INSERT INTO `pt_resources` VALUES ('a23a2025ed1b4fba819d08eebb9b5bdc', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0195082721', '3964', '1139', '883', '182', '883', '108', '2015-12-04 16:44:29');
INSERT INTO `pt_resources` VALUES ('a2817b0acae547e3ac759a7b9909dc28', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9480975411', '8129', '2764', '743', '481', '1808', '32', '2015-11-22 12:13:56');
INSERT INTO `pt_resources` VALUES ('a2b0c0c3e7eb4d868004005417320490', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2366081003', '8129', '3772', '692', '418', '1808', '30', '2015-12-02 23:02:09');
INSERT INTO `pt_resources` VALUES ('a2f09549716e4171894b2cf2fe207cce', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1296831849', '3964', '613', '511', '234', '882', '60', '2015-12-21 17:22:46');
INSERT INTO `pt_resources` VALUES ('a348156ab9fa471cb778afc7a6fafb7c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9710755053', '8129', '2878', '882', '223', '1808', '24', '2015-11-22 06:25:55');
INSERT INTO `pt_resources` VALUES ('a39522ed251042f0bd06616c80a2a0bd', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9644146037', '8129', '2713', '816', '472', '1808', '29', '2015-11-22 10:05:56');
INSERT INTO `pt_resources` VALUES ('a39dfedcf9334898a748fc1761c1cbf6', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0794630528', '8126', '3722', '371', '151', '371', '43', '2015-12-15 23:32:12');
INSERT INTO `pt_resources` VALUES ('a42533c8f5194a5bbd469b228b8e5eb6', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1173405501', '8126', '3643', '371', '309', '371', '10', '2016-04-03 17:44:31');
INSERT INTO `pt_resources` VALUES ('a43b10123eb04a6798a80b758e804170', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9550200354', '8129', '2711', '829', '139', '1808', '28', '2015-11-22 09:47:56');
INSERT INTO `pt_resources` VALUES ('a47b6cc047bb48988c981aecd46343b4', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0743682281', '3964', '831', '512', '267', '882', '39', '2015-12-04 13:15:59');
INSERT INTO `pt_resources` VALUES ('a492412d355c49f6b4d483e7a4c88ef4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9631805976', '8129', '2886', '881', '285', '1808', '23', '2015-11-22 05:31:55');
INSERT INTO `pt_resources` VALUES ('a4f3e0b43c4f4d179492add180822108', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0847605930', '3964', '1168', '175', '73', '882', '7', '2015-12-22 11:19:00');
INSERT INTO `pt_resources` VALUES ('a511e75e30a547e2b7f8012a7ecc2c01', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9448466235', '8129', '3005', '637', '357', '1808', '40', '2015-11-22 17:03:56');
INSERT INTO `pt_resources` VALUES ('a594a66c32c449b6ab5746c1e2f0adb1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9630800290', '8129', '2858', '882', '383', '1808', '24', '2015-11-22 06:11:55');
INSERT INTO `pt_resources` VALUES ('a5a38a19af4c4af7b5bf82bc39e20ffc', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0880182182', '3964', '595', '514', '166', '882', '59', '2015-12-21 17:18:46');
INSERT INTO `pt_resources` VALUES ('a655405d23cb4259a0f56053eef1d755', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2860186990', '8129', '2974', '1382', '659', '1808', '79', '2015-12-02 21:53:19');
INSERT INTO `pt_resources` VALUES ('a65d8bd7cf1548b888c26c41da3324aa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9585625324', '8129', '2725', '651', '223', '1808', '37', '2015-11-22 15:39:56');
INSERT INTO `pt_resources` VALUES ('a662480081704bccb452e42c1c49b17b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0411777635', '3964', '425', '726', '255', '882', '78', '2015-12-04 15:54:48');
INSERT INTO `pt_resources` VALUES ('a6966c29c1924793b3a03511e91e391a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9449125431', '8129', '2996', '637', '203', '1808', '40', '2015-11-22 17:17:56');
INSERT INTO `pt_resources` VALUES ('a70b177dfb1d4cab88e089f2c27c0704', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9443925436', '8129', '2847', '651', '358', '1808', '37', '2015-11-22 15:27:56');
INSERT INTO `pt_resources` VALUES ('a76a5ead696c487792f79d7d651053bf', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0209626113', '3964', '932', '582', '299', '882', '43', '2015-12-04 11:45:56');
INSERT INTO `pt_resources` VALUES ('a783acbf61374d1e89d13cd0add5e528', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1996694603', '8126', '3996', '371', '353', '371', '26', '2016-01-06 00:07:57');
INSERT INTO `pt_resources` VALUES ('a788135101764644b50303266e12eedc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9637950289', '8129', '2872', '882', '608', '1808', '24', '2015-11-22 05:51:55');
INSERT INTO `pt_resources` VALUES ('a7a7096ce838455e96875735bd9910f9', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3770', '804', '469', '1808', '23', '2015-12-02 23:38:24');
INSERT INTO `pt_resources` VALUES ('a7e4897230f946bc8f81ef361ddc2799', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3867', '878', '410', '1808', '19', '2015-12-02 22:34:17');
INSERT INTO `pt_resources` VALUES ('a83b9b028fc145178e5c732bcd12ea20', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9597636908', '8129', '2992', '637', '404', '1808', '40', '2015-11-22 16:59:56');
INSERT INTO `pt_resources` VALUES ('a83eae5f519546209b3f07a845460931', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1840300381', '8126', '4667', '371', '350', '371', '10', '2016-01-05 22:49:57');
INSERT INTO `pt_resources` VALUES ('a871606400424e02bd5337ffb6e79e7c', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1436042634', '8126', '3373', '371', '279', '371', '3', '2016-01-03 13:46:11');
INSERT INTO `pt_resources` VALUES ('a89449f186dc49029dc0c5705f26f496', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7972907456', '8129', '3133', '870', '322', '1808', '19', '2015-11-22 02:31:55');
INSERT INTO `pt_resources` VALUES ('a8a62b8866134fa6a3c791847f4b5abe', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2210991213', '8126', '3766', '371', '301', '371', '5', '2016-01-03 12:01:08');
INSERT INTO `pt_resources` VALUES ('a8da15096bc14eb2b62b09b4c23d02fe', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9677275256', '8129', '2862', '887', '499', '1808', '25', '2015-11-22 06:49:56');
INSERT INTO `pt_resources` VALUES ('a8fa2f7d268f4b11a730bc77003e6e17', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1811956443', '8126', '3002', '371', '320', '371', '11', '2016-01-03 12:29:08');
INSERT INTO `pt_resources` VALUES ('a91217806e4d4c31a10dae2c102cd112', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9561564386', '8129', '2951', '667', '393', '1808', '38', '2015-11-22 15:59:56');
INSERT INTO `pt_resources` VALUES ('aa0351a924724b7185ed5957beac6067', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0665032339', '3964', '1076', '592', '241', '882', '41', '2015-12-04 14:42:59');
INSERT INTO `pt_resources` VALUES ('aac2ae356f1742f8a6b32c080ed1a5d2', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0688107323', '3964', '522', '512', '70', '882', '39', '2015-12-04 13:29:59');
INSERT INTO `pt_resources` VALUES ('aaef9484aeb9470885eba8793d91880c', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2962464217', '8129', '3251', '1118', '344', '1808', '43', '2015-12-03 00:15:56');
INSERT INTO `pt_resources` VALUES ('ab01ffc52ce0466db0562588f5749630', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3712', '371', '119', '371', '40', '2015-12-16 00:08:00');
INSERT INTO `pt_resources` VALUES ('ab5b101001a74300bf11724296d9df93', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0816807222', '8126', '3142', '371', '299', '371', '10', '2016-01-03 14:18:11');
INSERT INTO `pt_resources` VALUES ('ab60d77d986b4bd29af24a0706567b8c', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1646856565', '8126', '4934', '371', '283', '371', '6', '2016-01-05 22:33:57');
INSERT INTO `pt_resources` VALUES ('abad26ea8bd6417a927c25a39e6c3ad9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9851475119', '8129', '2822', '873', '498', '1808', '21', '2015-11-22 03:39:55');
INSERT INTO `pt_resources` VALUES ('abed3302254041ecb18559983731a1c4', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1900778916', '8126', '4122', '371', '320', '371', '22', '2016-01-05 23:49:57');
INSERT INTO `pt_resources` VALUES ('abee2edfeb5b43eb8ca4d5ccff4f26bc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9646400278', '8129', '2886', '881', '556', '1808', '23', '2015-11-22 05:07:55');
INSERT INTO `pt_resources` VALUES ('ac584fb3d6c1449d90ffac9005482ebd', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1642561925', '8126', '4029', '371', '287', '371', '27', '2016-01-06 00:15:57');
INSERT INTO `pt_resources` VALUES ('ad20533cd11b4a838631236dc9445ee9', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '4024', '761', '471', '1808', '24', '2015-12-02 22:29:34');
INSERT INTO `pt_resources` VALUES ('ad900a91e15a44269030f7a0458ecd62', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9609382856', '8129', '2858', '882', '157', '1808', '24', '2015-11-22 06:31:56');
INSERT INTO `pt_resources` VALUES ('ad90735586214458b37fcdd927a50dc3', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1838606418', '8126', '3658', '371', '258', '371', '5', '2016-01-03 12:03:08');
INSERT INTO `pt_resources` VALUES ('ae1acf84f3924c17bf8fa92452a9c110', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9557029038', '8129', '2752', '894', '243', '1808', '27', '2015-11-22 08:53:56');
INSERT INTO `pt_resources` VALUES ('ae2dd4a5bdfd485c9f7e68e11be22d27', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1750925232', '8126', '4737', '371', '272', '371', '33', '2016-01-06 00:45:57');
INSERT INTO `pt_resources` VALUES ('ae3deb176224463f996398cc70b7afa5', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1228078109', '8126', '3544', '371', '260', '371', '8', '2016-04-03 17:34:31');
INSERT INTO `pt_resources` VALUES ('aed79a9f168149a794e9214eb048e163', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9971395970', '8129', '2774', '763', '175', '1808', '31', '2015-11-22 11:59:56');
INSERT INTO `pt_resources` VALUES ('aee4ff56cb1f4a3e8ca1447c50d25d3c', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0955257117', '3964', '1145', '478', '145', '882', '51', '2015-12-21 16:48:46');
INSERT INTO `pt_resources` VALUES ('af0f3d15f4fb461b82313c8f22c357d9', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2391692577', '8126', '5041', '371', '258', '371', '4', '2016-01-05 22:25:57');
INSERT INTO `pt_resources` VALUES ('af11b15df19c4306984bb4e7556839e8', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0360182583', '3964', '1148', '587', '269', '882', '46', '2015-12-04 15:12:59');
INSERT INTO `pt_resources` VALUES ('af21509fc48e42c1b1f1d406e90b4747', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2197081137', '8129', '3347', '1108', '542', '1808', '37', '2015-12-02 23:50:31');
INSERT INTO `pt_resources` VALUES ('af369d7f8cb047bf9f2fa51be825cfec', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7910367663', '8129', '2709', '872', '398', '1808', '20', '2015-11-22 03:03:55');
INSERT INTO `pt_resources` VALUES ('af49e0985ada4b16bcbb104ee5bd738b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9473179799', '8129', '2795', '699', '394', '1808', '36', '2015-11-22 14:53:56');
INSERT INTO `pt_resources` VALUES ('af51853be20d4cfe8ebb476a66f6a2a6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9951927280', '8129', '2760', '763', '488', '1808', '31', '2015-11-22 11:31:56');
INSERT INTO `pt_resources` VALUES ('af939fa42eb0447e8b87ed6f37d4f34e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9558967998', '8129', '2709', '829', '213', '1808', '28', '2015-11-22 09:41:56');
INSERT INTO `pt_resources` VALUES ('afa8ca6f0c1f4d44bd6d3e67c441bafb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7736701782', '8129', '2807', '872', '287', '1808', '20', '2015-11-22 03:13:55');
INSERT INTO `pt_resources` VALUES ('b0000b9a248b4f56904b938c9c170b79', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1859217090', '8126', '4624', '371', '346', '371', '37', '2016-01-06 01:01:57');
INSERT INTO `pt_resources` VALUES ('b01b2a59e5aa4511b7783028d92667a1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9649351574', '8129', '2873', '882', '496', '1808', '24', '2015-11-22 06:01:55');
INSERT INTO `pt_resources` VALUES ('b04944c4745c43eeb5b8a405fe791725', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9746825205', '8129', '2876', '881', '198', '1808', '23', '2015-11-22 05:39:55');
INSERT INTO `pt_resources` VALUES ('b04b9b58f26241379524bd408f8e5227', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '1.0000000000', '8126', '2992', '371', '182', '371', '42', '2015-12-16 01:04:32');
INSERT INTO `pt_resources` VALUES ('b06cc395c7dc4567abd903a2bcb636d9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9670152746', '8129', '2867', '881', '625', '1808', '23', '2015-11-22 05:01:55');
INSERT INTO `pt_resources` VALUES ('b09883ed92754c98b805e402aaf468f0', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2634599262', '8129', '3341', '1113', '452', '1808', '36', '2015-12-02 23:42:31');
INSERT INTO `pt_resources` VALUES ('b0b5d161d3a7497bbb8aaa8630a8efc5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9857650108', '8129', '2829', '873', '391', '1808', '21', '2015-11-22 03:49:55');
INSERT INTO `pt_resources` VALUES ('b0fbda74503b49e3a166de1c15bd7c1c', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2218206126', '8126', '3408', '371', '316', '371', '6', '2016-01-03 12:05:08');
INSERT INTO `pt_resources` VALUES ('b1031fe14a814607ab8c1b17924950b4', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2274106076', '8129', '4326', '653', '189', '1808', '32', '2015-12-02 21:33:50');
INSERT INTO `pt_resources` VALUES ('b12272e26466485bbf4daee54f9cdf39', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3742', '371', '128', '371', '40', '2015-12-15 23:37:48');
INSERT INTO `pt_resources` VALUES ('b155d9455869407996dfa8ebab9ffd6b', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.6100233986', '3964', '970', '111', '51', '882', '7', '2015-12-22 11:39:52');
INSERT INTO `pt_resources` VALUES ('b18efca6b3ef4a8aa9c909b33ea2888b', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1183459014', '8126', '3619', '371', '309', '371', '4', '2016-04-03 19:01:54');
INSERT INTO `pt_resources` VALUES ('b1bd1568f6af46489ceb79f6ff8b6bad', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9569985916', '8129', '2743', '888', '235', '1808', '26', '2015-11-22 08:03:56');
INSERT INTO `pt_resources` VALUES ('b2017f510e834caa975f91f890f2f5fd', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0802274204', '3964', '632', '600', '240', '882', '41', '2015-12-04 13:41:59');
INSERT INTO `pt_resources` VALUES ('b203b5f40eb7497487ee8ab8797c189c', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2244791477', '8129', '4323', '653', '164', '1808', '32', '2015-12-02 21:35:50');
INSERT INTO `pt_resources` VALUES ('b2255c9525f24610a3bd893cafb50b57', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0423283550', '3964', '1108', '559', '168', '882', '47', '2015-12-04 15:36:59');
INSERT INTO `pt_resources` VALUES ('b2311463ad76450aa00caedb91452284', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1016032071', '8126', '3655', '371', '289', '371', '6', '2016-04-03 18:29:23');
INSERT INTO `pt_resources` VALUES ('b26b538606494f0caa506213c096f823', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9580100331', '8129', '2724', '894', '418', '1808', '27', '2015-11-22 08:37:56');
INSERT INTO `pt_resources` VALUES ('b29ba55f1ee54ed59cc6ab9fdbc227ce', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9445188445', '8129', '2990', '622', '283', '1808', '39', '2015-11-22 16:37:56');
INSERT INTO `pt_resources` VALUES ('b29d9ec87e494edd866d9c25a5d0d9a0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9453977678', '8129', '2815', '682', '210', '1808', '35', '2015-11-22 14:31:56');
INSERT INTO `pt_resources` VALUES ('b2bf684c0f734f0d8d266969b50a0efa', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1348903900', '3964', '758', '508', '108', '882', '57', '2015-12-21 17:06:46');
INSERT INTO `pt_resources` VALUES ('b3e234c160344aca9dc75c3433df07d9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9427364763', '8129', '3025', '596', '114', '1808', '41', '2015-11-22 17:51:56');
INSERT INTO `pt_resources` VALUES ('b431112e0050410ba77e9afc251047e2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9969120133', '8129', '2783', '763', '289', '1808', '31', '2015-11-22 11:49:56');
INSERT INTO `pt_resources` VALUES ('b469f776bb7d481c95233ae8ac5f10da', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1316584472', '8126', '3541', '371', '229', '371', '8', '2016-04-03 17:36:31');
INSERT INTO `pt_resources` VALUES ('b47490dffbf14a4b9395030ce359c563', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9968817176', '8129', '2783', '763', '336', '1808', '31', '2015-11-22 11:45:56');
INSERT INTO `pt_resources` VALUES ('b4ab09745ec84a2d9545c8caa8bff46d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1326570516', '8126', '3519', '371', '304', '371', '5', '2016-04-03 19:44:02');
INSERT INTO `pt_resources` VALUES ('b4b2050b1d3b46fca4dc8a1d843f9aab', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1962240296', '8126', '3245', '371', '306', '371', '8', '2016-01-03 12:15:08');
INSERT INTO `pt_resources` VALUES ('b5270f73978a479981eb363a4fbbc2dc', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2465143135', '8129', '3009', '1279', '460', '1808', '58', '2015-12-03 00:20:05');
INSERT INTO `pt_resources` VALUES ('b52bd1cf11384bc9b4ef278b151c6d9e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9449125439', '8129', '2986', '637', '243', '1808', '40', '2015-11-22 17:13:56');
INSERT INTO `pt_resources` VALUES ('b5997bfc9f804100b7e51a4b24680cc9', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.8733892540', '8129', '2080', '1826', '345', '1826', '173', '2015-12-02 21:57:04');
INSERT INTO `pt_resources` VALUES ('b5a27815a4b24ced87102cb8de829515', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9567750344', '8129', '2724', '894', '527', '1808', '27', '2015-11-22 08:27:56');
INSERT INTO `pt_resources` VALUES ('b63095bcf9414c1cb18b3c5998d3eb59', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.1991356294', '8129', '4447', '647', '246', '1808', '31', '2015-12-02 21:19:50');
INSERT INTO `pt_resources` VALUES ('b67604ab8f3b4750a9abd11cd64d626d', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1978098162', '8126', '4280', '371', '349', '371', '19', '2016-01-05 23:33:57');
INSERT INTO `pt_resources` VALUES ('b6810c96dacd4d00a9282d02ec8f67b2', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2242645745', '8126', '4392', '371', '271', '371', '17', '2016-01-05 23:27:57');
INSERT INTO `pt_resources` VALUES ('b6e17191652f4064b0a2a75a710bff8f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1467202821', '8126', '3101', '371', '305', '371', '15', '2016-01-03 14:42:11');
INSERT INTO `pt_resources` VALUES ('b70bf29476514a3aa2b3e0219152008f', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0793502069', '8126', '3720', '371', '133', '371', '42', '2015-12-15 23:28:12');
INSERT INTO `pt_resources` VALUES ('b70dc04ac25040079a04fc45fe9408cc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603175314', '8129', '2781', '724', '526', '1808', '33', '2015-11-22 12:49:56');
INSERT INTO `pt_resources` VALUES ('b724ca109c684df4a493d1148ff42152', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '1.0000000000', '8129', '3685', '865', '528', '1808', '19', '2015-12-02 23:35:44');
INSERT INTO `pt_resources` VALUES ('b7686ff8c2ca4734950b11b94d4625fb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9710752634', '8129', '2863', '887', '550', '1808', '25', '2015-11-22 06:45:56');
INSERT INTO `pt_resources` VALUES ('b78d0f3d55944aa4897c926f46af173f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9605450314', '8129', '2841', '887', '149', '1808', '25', '2015-11-22 07:21:56');
INSERT INTO `pt_resources` VALUES ('b7b3d3a6ea8b4cd7ac8474e943136a5d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1119188910', '8126', '3524', '371', '268', '371', '26', '2016-04-03 18:08:35');
INSERT INTO `pt_resources` VALUES ('b800dc1413d34fafa6d838f79b31d4cf', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1751814593', '8126', '3996', '371', '293', '371', '25', '2016-01-06 00:05:57');
INSERT INTO `pt_resources` VALUES ('b80bacf38531489e9ec62899a0d71949', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1083869653', '3964', '532', '105', '63', '882', '11', '2015-12-22 10:58:56');
INSERT INTO `pt_resources` VALUES ('b8113f7b26fc494dbe998c1275b0a12f', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.1605581610', '8129', '4461', '647', '415', '1808', '31', '2015-12-02 21:07:50');
INSERT INTO `pt_resources` VALUES ('b82432d6061949aa999e788ca6246750', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9450059185', '8129', '2990', '637', '310', '1808', '40', '2015-11-22 17:07:56');
INSERT INTO `pt_resources` VALUES ('b86999fc73f04f0a867108364ad357e3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8254736833', '8129', '2801', '872', '264', '1808', '20', '2015-11-22 03:15:55');
INSERT INTO `pt_resources` VALUES ('b86c5e9c1a8b44a2b5c8e93051ddf584', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1613311700', '8126', '3581', '371', '246', '371', '7', '2016-04-03 17:28:31');
INSERT INTO `pt_resources` VALUES ('b8cbd41de4af4900bc2bdb8e64b2f555', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9571325335', '8129', '2766', '888', '150', '1808', '26', '2015-11-22 08:11:56');
INSERT INTO `pt_resources` VALUES ('b8d40a018c5541a495a14c06ea011990', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9616793372', '8129', '2868', '882', '468', '1808', '24', '2015-11-22 06:03:55');
INSERT INTO `pt_resources` VALUES ('b8d40d58ebdf4136ba6481c527eb3efa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9798500158', '8129', '2843', '873', '366', '1808', '21', '2015-11-22 03:51:55');
INSERT INTO `pt_resources` VALUES ('b8d7206151fa466fa16e0c72a136367a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9710752634', '8129', '2861', '887', '661', '1808', '25', '2015-11-22 06:35:56');
INSERT INTO `pt_resources` VALUES ('b93ab8023bf64344b7c3af816ec4e086', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9953530843', '8129', '2768', '763', '507', '1808', '31', '2015-11-22 11:29:56');
INSERT INTO `pt_resources` VALUES ('b95a6331bf17495bb8e3c36ca9feae67', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9974644953', '8129', '2756', '784', '406', '1808', '30', '2015-11-22 10:55:56');
INSERT INTO `pt_resources` VALUES ('b9ae2de4c00d4475b8da0a68438887a6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9627228406', '8129', '2783', '724', '456', '1808', '33', '2015-11-22 12:55:56');
INSERT INTO `pt_resources` VALUES ('b9e5380fcf1446f699d5f05561f577c6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9596350322', '8129', '2842', '651', '448', '1808', '37', '2015-11-22 15:19:56');
INSERT INTO `pt_resources` VALUES ('ba927863752643b09f71ea3d81a37ab9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9668500261', '8129', '2707', '829', '457', '1808', '28', '2015-11-22 09:19:56');
INSERT INTO `pt_resources` VALUES ('babc9f60e24b42af83eb7f3c81d81414', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3327899090', '8129', '3353', '1085', '599', '1808', '43', '2015-12-02 23:06:51');
INSERT INTO `pt_resources` VALUES ('bad25ccac5754f0e9f5d29e50a38ccd3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9692877803', '8129', '2756', '888', '392', '1808', '26', '2015-11-22 07:49:56');
INSERT INTO `pt_resources` VALUES ('bad61f91b07640b2b8bd31f026f69875', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1168456949', '8126', '3583', '371', '261', '371', '8', '2016-04-03 19:25:31');
INSERT INTO `pt_resources` VALUES ('baf81e41c8c14cef95fd2bd9c59b2924', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9739369749', '8129', '2871', '874', '436', '1808', '22', '2015-11-22 04:31:55');
INSERT INTO `pt_resources` VALUES ('bb0f9c36ddfa4f808f4275114bbae1a1', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0824010352', '3964', '608', '547', '279', '882', '32', '2015-12-04 16:02:54');
INSERT INTO `pt_resources` VALUES ('bb1c2f0d81eb49c4b0f38fe3aed6cde3', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1749556491', '8126', '4642', '371', '308', '371', '10', '2016-01-05 22:51:57');
INSERT INTO `pt_resources` VALUES ('bb99f7d3ea6d4f6ab6483033e9cce337', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9642503261', '8129', '2877', '881', '486', '1808', '23', '2015-11-22 05:13:55');
INSERT INTO `pt_resources` VALUES ('bbbc680b44a44afdb8465b3e176c19d4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9662000266', '8129', '2712', '829', '160', '1808', '28', '2015-11-22 09:45:56');
INSERT INTO `pt_resources` VALUES ('bc6ab45d251a494db9514a12c3013107', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2014106287', '8129', '4538', '647', '273', '1808', '31', '2015-12-02 21:17:50');
INSERT INTO `pt_resources` VALUES ('bc9355b29a464ae5b5fadd74c5fbe9f1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9777048313', '8129', '2832', '873', '632', '1808', '21', '2015-11-22 03:27:55');
INSERT INTO `pt_resources` VALUES ('bca4d9698b504dcfb40271092b114d00', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9479346075', '8129', '2752', '743', '279', '1808', '32', '2015-11-22 12:31:56');
INSERT INTO `pt_resources` VALUES ('bcbc20275820423d865d2fe77873305f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9586925323', '8129', '2760', '888', '475', '1808', '26', '2015-11-22 07:41:56');
INSERT INTO `pt_resources` VALUES ('bcf7f602d68041d381ecf6565a3144af', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1498656690', '8126', '3478', '371', '269', '371', '9', '2016-04-03 17:40:31');
INSERT INTO `pt_resources` VALUES ('bd08dca6e7724c90821f020ce0d81fff', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9545986710', '8129', '2731', '894', '374', '1808', '27', '2015-11-22 08:41:56');
INSERT INTO `pt_resources` VALUES ('bd38e36d5f9e4eebbd83d98d06cb6ad5', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2091197139', '8126', '3354', '371', '291', '371', '7', '2016-01-03 12:11:08');
INSERT INTO `pt_resources` VALUES ('bd6b385a7d734dfeb47b35c09b39381b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0543482438', '3964', '540', '600', '325', '882', '41', '2015-12-04 13:35:59');
INSERT INTO `pt_resources` VALUES ('bd6d77b87b584b50b9f078b53ab852fa', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.1050927331', '8126', '4908', '371', '151', '371', '43', '2016-01-24 16:50:15');
INSERT INTO `pt_resources` VALUES ('bd6fe31c27aa42e98e6d0c7d9324545e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9564865238', '8129', '2749', '888', '256', '1808', '26', '2015-11-22 08:01:56');
INSERT INTO `pt_resources` VALUES ('bd990f19bc5b4041befdcdb4031cbbe6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9463741488', '8129', '2785', '724', '165', '1808', '33', '2015-11-22 13:21:56');
INSERT INTO `pt_resources` VALUES ('bdcee1fb927d45d8b69396e5a1570bd0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9795255276', '8129', '2827', '873', '480', '1808', '21', '2015-11-22 03:41:55');
INSERT INTO `pt_resources` VALUES ('be0e920b0a7f403eb0a53488e4ca8761', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1527342785', '8126', '3129', '371', '341', '371', '10', '2016-01-03 14:16:11');
INSERT INTO `pt_resources` VALUES ('becab174b7f4498db9fe72b9f0f72c2c', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0800060582', '8126', '3688', '371', '45', '371', '47', '2015-12-15 23:06:27');
INSERT INTO `pt_resources` VALUES ('bedbf01ca5ca4a688d73c2251a2ba7be', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1729081506', '8126', '4147', '371', '303', '371', '21', '2016-01-05 23:45:57');
INSERT INTO `pt_resources` VALUES ('c05d2b298eb947cf9df54174dc415ba3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9999024649', '8129', '3719', '551', '344', '1808', '45', '2015-11-22 19:15:56');
INSERT INTO `pt_resources` VALUES ('c08ac8b2276a481e9ef9ae7854d626a6', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1982772679', '8126', '3364', '371', '333', '371', '7', '2016-01-03 12:09:08');
INSERT INTO `pt_resources` VALUES ('c1939f43700c4d3e8ca7842b8250d192', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9605122026', '8129', '2807', '699', '370', '1808', '36', '2015-11-22 14:55:56');
INSERT INTO `pt_resources` VALUES ('c199dd5f49f549579cf7f42795478b53', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1853488523', '8126', '4170', '371', '345', '371', '21', '2016-01-05 23:43:57');
INSERT INTO `pt_resources` VALUES ('c1cac6c139a14df5b269e3879fc61d48', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9444250441', '8129', '3057', '573', '363', '1808', '43', '2015-11-22 18:23:56');
INSERT INTO `pt_resources` VALUES ('c23031c56b62471f84fab21399a89f60', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9857978665', '8129', '4450', '573', '143', '1808', '43', '2015-11-22 18:43:56');
INSERT INTO `pt_resources` VALUES ('c24455accbc94692814dcd41d39ed3f6', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9607374133', '8129', '2849', '887', '348', '1808', '25', '2015-11-22 07:03:56');
INSERT INTO `pt_resources` VALUES ('c24c1335b7344f54a273aa880d2c0b44', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0975331892', '3964', '784', '163', '79', '882', '11', '2015-12-22 11:47:39');
INSERT INTO `pt_resources` VALUES ('c2519a0f58a6490a8f66b0cd1ef6545c', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.0815832229', '8126', '4807', '371', '113', '371', '43', '2016-01-24 16:52:15');
INSERT INTO `pt_resources` VALUES ('c2df636135d34007980cfc2b5db54d52', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3731', '371', '130', '371', '40', '2015-12-15 23:24:12');
INSERT INTO `pt_resources` VALUES ('c3477e97a97e41a990b7bb1817efffe1', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1107357005', '8126', '3450', '371', '307', '371', '15', '2016-01-03 12:49:08');
INSERT INTO `pt_resources` VALUES ('c3cfbe17e9f54c86bd855eb3ffee84a1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9662000266', '8129', '2858', '881', '382', '1808', '23', '2015-11-22 05:23:55');
INSERT INTO `pt_resources` VALUES ('c4098ef9106542e9be33592521c62bb2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9692547676', '8129', '2753', '888', '173', '1808', '26', '2015-11-22 08:09:56');
INSERT INTO `pt_resources` VALUES ('c45b73efd703433f8ecde1e19029e81c', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1752156489', '8126', '4005', '371', '312', '371', '26', '2016-01-06 00:09:57');
INSERT INTO `pt_resources` VALUES ('c47e74fd53534c7092e6d9c5602479fe', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1504846489', '8126', '3592', '371', '279', '371', '5', '2016-04-03 18:43:30');
INSERT INTO `pt_resources` VALUES ('c4a5dab9135845e0a4228f4915e2555c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9586603770', '8129', '3005', '637', '290', '1808', '40', '2015-11-22 17:09:56');
INSERT INTO `pt_resources` VALUES ('c4da213d16404811a62d04e86ce7a70f', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0412832537', '3964', '1163', '883', '156', '883', '108', '2015-12-04 16:46:29');
INSERT INTO `pt_resources` VALUES ('c4de205c8a724fb9bb0f8d968c1559b2', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '2995', '371', '186', '371', '41', '2015-12-16 01:03:35');
INSERT INTO `pt_resources` VALUES ('c518ecc3d47345bc96e18cf99119f8ae', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0252526769', '3964', '966', '559', '144', '882', '47', '2015-12-04 15:38:59');
INSERT INTO `pt_resources` VALUES ('c5248c1d65584c0196b97523f747d0bd', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9998700348', '8129', '3727', '551', '366', '1808', '45', '2015-11-22 19:13:56');
INSERT INTO `pt_resources` VALUES ('c53795fd04844cc8b320591c7c79b331', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2217295989', '8129', '3783', '692', '356', '1808', '30', '2015-12-02 23:06:09');
INSERT INTO `pt_resources` VALUES ('c569452b7a214a92b059c79889c90c9a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9451395860', '8129', '2990', '667', '480', '1808', '38', '2015-11-22 15:51:56');
INSERT INTO `pt_resources` VALUES ('c56f2cba3aed44dd9763b28cd91a4104', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8235901389', '8129', '2826', '872', '195', '1808', '20', '2015-11-22 03:21:55');
INSERT INTO `pt_resources` VALUES ('c5791473c4544739b0b34cefd1276552', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3859', '689', '317', '1808', '29', '2015-12-02 22:56:09');
INSERT INTO `pt_resources` VALUES ('c623546ed67d400294d1027beacf5e47', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1709256516', '8126', '4801', '371', '299', '371', '7', '2016-01-05 22:37:57');
INSERT INTO `pt_resources` VALUES ('c6753c3fc0994911bc89a216c29429aa', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1315356825', '3964', '1025', '141', '37', '882', '11', '2015-12-22 11:37:37');
INSERT INTO `pt_resources` VALUES ('c6d3cd5101624ff1a65017468e0c15e9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9944438933', '8129', '2739', '784', '277', '1808', '30', '2015-11-22 11:07:56');
INSERT INTO `pt_resources` VALUES ('c6e900a1ab824cc793af9b681f11516f', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2364978748', '8129', '4066', '654', '349', '1808', '33', '2015-12-02 21:45:50');
INSERT INTO `pt_resources` VALUES ('c71f4a4751ee4d709c6fc92a962c95ae', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3557', '371', '113', '371', '40', '2015-12-16 00:24:19');
INSERT INTO `pt_resources` VALUES ('c7b2f15dbff34f2c9a1f5505dd842696', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0990682095', '3964', '801', '884', '157', '884', '105', '2015-12-04 16:16:29');
INSERT INTO `pt_resources` VALUES ('c8845191474c4b518e6cbc22202b67f1', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1523031671', '8126', '4817', '371', '350', '371', '35', '2016-01-06 00:51:57');
INSERT INTO `pt_resources` VALUES ('c915b3d7f4b443668c69efb9c53976c0', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.0749361466', '8126', '4685', '371', '107', '371', '44', '2016-01-24 16:58:15');
INSERT INTO `pt_resources` VALUES ('c93491fcbc264469b9444e05a99b26a0', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2012046685', '8126', '4116', '371', '260', '371', '21', '2016-01-05 23:47:57');
INSERT INTO `pt_resources` VALUES ('c97841cdd700438eab067d36ab1bae82', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603825310', '8129', '3043', '610', '182', '1808', '42', '2015-11-22 18:15:56');
INSERT INTO `pt_resources` VALUES ('c993dd09c222485e84d4b7941efa22e8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1198493474', '8126', '3550', '371', '307', '371', '13', '2016-04-03 18:55:12');
INSERT INTO `pt_resources` VALUES ('c99b9aaf8e9f4f839bb35188aa750777', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9477677527', '8129', '2714', '651', '246', '1808', '37', '2015-11-22 15:37:56');
INSERT INTO `pt_resources` VALUES ('c9c5069c452245b4bb439b80db0df87f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9547275358', '8129', '2707', '816', '564', '1808', '29', '2015-11-22 09:57:56');
INSERT INTO `pt_resources` VALUES ('ca0d31f237db4a0dbf34a60a59768d60', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1671162141', '8126', '4095', '371', '299', '371', '23', '2016-01-05 23:55:57');
INSERT INTO `pt_resources` VALUES ('ca14b77bd9c740bba687581a4e0d8280', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0779432249', '3964', '410', '104', '49', '882', '13', '2015-12-22 11:04:56');
INSERT INTO `pt_resources` VALUES ('ca160717278f40f184af7306b9fd00e5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9568728940', '8129', '3024', '596', '140', '1808', '41', '2015-11-22 17:49:56');
INSERT INTO `pt_resources` VALUES ('ca448e16275d42c4a746321f2f942222', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3133967777', '8129', '2538', '1741', '504', '1808', '113', '2015-12-02 23:10:09');
INSERT INTO `pt_resources` VALUES ('caa1302ec5934a53af1234b6fa794f95', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0523657448', '3964', '584', '514', '138', '882', '59', '2015-12-21 17:20:46');
INSERT INTO `pt_resources` VALUES ('cab8c41f12d84966bf6f20f50f1ee8f0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.7836801703', '8129', '3148', '870', '256', '1808', '19', '2015-11-22 02:37:55');
INSERT INTO `pt_resources` VALUES ('cae7ba4e1b2d40e786491fc86694852d', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9428980210', '8129', '2845', '651', '313', '1808', '37', '2015-11-22 15:31:56');
INSERT INTO `pt_resources` VALUES ('caf63bb07db9455eb7267a0cf8746ced', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1177053994', '8126', '3643', '371', '320', '371', '11', '2016-04-03 17:50:31');
INSERT INTO `pt_resources` VALUES ('cb37c7328cbc4ee9988bf633c8a7a5ed', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0654307357', '3964', '954', '508', '173', '882', '57', '2015-12-21 17:02:46');
INSERT INTO `pt_resources` VALUES ('cb57ac7a2c7d4fb39da27155e6e71670', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9523221400', '8129', '2709', '829', '192', '1808', '28', '2015-11-22 09:43:56');
INSERT INTO `pt_resources` VALUES ('cb5e02bc18ab4a6e818c2f26dedae9f9', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1697625726', '8126', '2972', '371', '314', '371', '13', '2016-01-03 12:39:08');
INSERT INTO `pt_resources` VALUES ('cb92de71f605496db0944ee1790c043d', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1076807017', '8126', '3528', '371', '282', '371', '27', '2016-04-03 18:14:35');
INSERT INTO `pt_resources` VALUES ('cbe689be5fde438b82323c91d3cb85b7', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1651220720', '8126', '4962', '371', '276', '371', '5', '2016-01-05 22:29:57');
INSERT INTO `pt_resources` VALUES ('cbf19af80f6148968a0c235b615d2949', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9534890479', '8129', '2704', '816', '492', '1808', '29', '2015-11-22 10:03:56');
INSERT INTO `pt_resources` VALUES ('cc2965d6ff7a4f148c52a4f8194d6f28', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0341171606', '3964', '1127', '559', '269', '882', '47', '2015-12-04 15:28:59');
INSERT INTO `pt_resources` VALUES ('cc9ff0cd7672461bbdc63970bb99f517', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '527', '587', '314', '882', '39', '2015-12-04 14:35:00');
INSERT INTO `pt_resources` VALUES ('cccb8d094d8c463d9303014bfe6744c5', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1729406511', '3964', '1092', '484', '134', '882', '52', '2015-12-21 16:50:46');
INSERT INTO `pt_resources` VALUES ('cd69c6427ff24f2bb7bd7731facb4b0e', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0872769314', '8126', '3576', '371', '183', '371', '43', '2015-12-16 00:26:19');
INSERT INTO `pt_resources` VALUES ('cdde6da4da6e46b0b2115b6a60f547d4', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1771963244', '8126', '2985', '371', '142', '371', '42', '2015-12-16 00:54:46');
INSERT INTO `pt_resources` VALUES ('cdf5955b7f5b45f3aae555de753afea2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9956440600', '8129', '2779', '763', '374', '1808', '31', '2015-11-22 11:41:56');
INSERT INTO `pt_resources` VALUES ('ce1f3c4c48f840e98d7e79785f87f9bf', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3792', '371', '37', '371', '44', '2015-12-15 22:36:44');
INSERT INTO `pt_resources` VALUES ('ce50f158330041a895415014b60a1b57', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9439027070', '8129', '2816', '682', '145', '1808', '35', '2015-11-22 14:37:56');
INSERT INTO `pt_resources` VALUES ('ce65ad176ad74f258d8fc779ea29733f', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2442591990', '8129', '3118', '1092', '613', '1808', '34', '2015-12-03 00:12:15');
INSERT INTO `pt_resources` VALUES ('cec09e458adc446286faa0ec90ba7953', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '880', '108', '31', '882', '6', '2015-12-22 10:32:39');
INSERT INTO `pt_resources` VALUES ('ceee87f29c36406082cec1ec80270f0e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9565150338', '8129', '2743', '894', '265', '1808', '27', '2015-11-22 08:51:56');
INSERT INTO `pt_resources` VALUES ('cf216b0a3ca745cdb56563e294c260ea', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0701679823', '3964', '860', '541', '289', '882', '32', '2015-12-04 13:02:47');
INSERT INTO `pt_resources` VALUES ('cf3e291034f443cda21772ea64ed5e96', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9716275225', '8129', '2871', '874', '474', '1808', '22', '2015-11-22 04:27:55');
INSERT INTO `pt_resources` VALUES ('cf6a90ee28374ccaa97046ace97095fb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9589196900', '8129', '2758', '888', '371', '1808', '26', '2015-11-22 07:51:56');
INSERT INTO `pt_resources` VALUES ('cfacb1c6913e43978186ffd429a49214', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9602498809', '8129', '2824', '888', '569', '1808', '26', '2015-11-22 07:33:56');
INSERT INTO `pt_resources` VALUES ('cfc18effa8de49008cbfba2fce9db0a4', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1259130166', '3964', '705', '98', '35', '882', '16', '2015-12-22 10:40:52');
INSERT INTO `pt_resources` VALUES ('d03cdeee4cf04cb8b9aabe4afc7afc9f', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1925448646', '8126', '4537', '371', '263', '371', '12', '2016-01-05 23:03:57');
INSERT INTO `pt_resources` VALUES ('d06e5d3cab594754ac1751aef16e1c2f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1625686426', '8126', '3406', '371', '321', '371', '3', '2016-01-03 13:44:11');
INSERT INTO `pt_resources` VALUES ('d06e7b1b671e451b919cb6277e88de31', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2047581263', '8126', '4218', '371', '326', '371', '20', '2016-01-05 23:39:57');
INSERT INTO `pt_resources` VALUES ('d0b329780f924b62b690952de1a797a0', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0280259156', '3964', '783', '503', '107', '882', '41', '2015-12-04 15:43:44');
INSERT INTO `pt_resources` VALUES ('d0bd99dbbc9649c5873dd1efa9556aaf', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '1240', '95', '38', '882', '10', '2015-12-22 11:21:16');
INSERT INTO `pt_resources` VALUES ('d10d2b49a3544ae8b21f6a719b5ee729', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9469925424', '8129', '2774', '724', '253', '1808', '33', '2015-11-22 13:13:56');
INSERT INTO `pt_resources` VALUES ('d11e858ab48248c4aadde19e8309885a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9671750263', '8129', '2729', '829', '277', '1808', '28', '2015-11-22 09:35:56');
INSERT INTO `pt_resources` VALUES ('d17d5ad65b5043c99a03b7055d2b7c0f', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2510443302', '8129', '3731', '856', '286', '1808', '19', '2015-12-02 22:47:50');
INSERT INTO `pt_resources` VALUES ('d1b81348744348be8ac39941b57a8f2b', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0742950204', '3964', '550', '600', '266', '882', '41', '2015-12-04 13:39:59');
INSERT INTO `pt_resources` VALUES ('d1d04501ddce4bab89156972c30b7065', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1950798411', '8126', '4171', '371', '285', '371', '20', '2016-01-05 23:41:57');
INSERT INTO `pt_resources` VALUES ('d1d24fd5b6c9470eb015cb8513125d7a', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2597155817', '8129', '4642', '647', '336', '1808', '31', '2015-12-02 21:13:50');
INSERT INTO `pt_resources` VALUES ('d1d8661f729c41468804e24e4d316c8e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9514125380', '8129', '2702', '816', '297', '1808', '29', '2015-11-22 10:21:56');
INSERT INTO `pt_resources` VALUES ('d1fd7bda5f624f7bbe72797e3c2553c6', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1268013559', '8126', '3560', '371', '176', '371', '44', '2015-12-16 00:17:51');
INSERT INTO `pt_resources` VALUES ('d240e5957c9542348fcde56b83bd6c3c', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1251656876', '8126', '3116', '371', '294', '371', '12', '2016-01-03 14:28:11');
INSERT INTO `pt_resources` VALUES ('d277cd6cd4784e5d8a7703f2478daf7a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8665539933', '8129', '2673', '872', '485', '1808', '20', '2015-11-22 02:55:55');
INSERT INTO `pt_resources` VALUES ('d2785d682e594d3f86ee2585c38beaaa', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9582015499', '8129', '2704', '894', '461', '1808', '27', '2015-11-22 08:33:56');
INSERT INTO `pt_resources` VALUES ('d28497f379c542db8e56a26fb72b1d7a', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3760', '371', '131', '371', '40', '2015-12-15 23:20:33');
INSERT INTO `pt_resources` VALUES ('d31e1ac05cb84ec0a20d70131a931226', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1313483130', '8126', '3705', '371', '3', '371', '46', '2015-12-15 22:38:43');
INSERT INTO `pt_resources` VALUES ('d364adb43cdc4303b19da0da4edfc9dc', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2249081104', '8126', '3960', '371', '329', '371', '4', '2016-01-03 11:55:08');
INSERT INTO `pt_resources` VALUES ('d36d502585be4d329e9a2e44b58dea4f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9790375159', '8129', '2883', '874', '172', '1808', '22', '2015-11-22 04:55:55');
INSERT INTO `pt_resources` VALUES ('d3e34f65dd97452f99fe7cfa8bb6735b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9494625396', '8129', '2775', '705', '187', '1808', '34', '2015-11-22 13:57:56');
INSERT INTO `pt_resources` VALUES ('d42fe76278b54f5696a707e696c869ff', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1824001997', '8126', '3112', '371', '284', '371', '9', '2016-01-03 12:21:08');
INSERT INTO `pt_resources` VALUES ('d44aaeeb447d489684d0f0c587dcb221', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9467334295', '8129', '2765', '743', '325', '1808', '32', '2015-11-22 12:27:56');
INSERT INTO `pt_resources` VALUES ('d476dc825ebd46a9b6d1b6b8b34211b3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9452050427', '8129', '2777', '724', '280', '1808', '33', '2015-11-22 13:11:56');
INSERT INTO `pt_resources` VALUES ('d52cfd9db9734b2a93ae0ae72d0df0a9', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2525330891', '8129', '4589', '647', '303', '1808', '31', '2015-12-02 21:15:50');
INSERT INTO `pt_resources` VALUES ('d59a286fd0ca4b398aa6956a9530e9b3', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1749556499', '8126', '4753', '371', '332', '371', '9', '2016-01-05 22:45:57');
INSERT INTO `pt_resources` VALUES ('d5b78b45b39e4a1992394fd1e48c2a01', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9439013045', '8129', '2967', '667', '147', '1808', '38', '2015-11-22 16:21:56');
INSERT INTO `pt_resources` VALUES ('d62d18014e0b4a11b82e7c17ee70dc0b', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2062338542', '8126', '2943', '371', '316', '371', '20', '2016-01-03 13:13:08');
INSERT INTO `pt_resources` VALUES ('d668b0a57f8f4b47ae4c7f87ea035845', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9573925333', '8129', '2992', '637', '177', '1808', '40', '2015-11-22 17:19:56');
INSERT INTO `pt_resources` VALUES ('d6a114763a4c4acea923371d3e5ec0e7', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1821381434', '8126', '4001', '371', '275', '371', '24', '2016-01-06 00:01:57');
INSERT INTO `pt_resources` VALUES ('d6d390ca7ef040f4a0a7c6a4286681f7', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1679217861', '8126', '4159', '371', '276', '371', '31', '2016-01-06 00:35:57');
INSERT INTO `pt_resources` VALUES ('d6d9adb3a06b4bd78bf426c88908ead7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9677600254', '8129', '2880', '881', '669', '1808', '23', '2015-11-22 04:57:55');
INSERT INTO `pt_resources` VALUES ('d6fd7935429945c4a6bf6b47f4b3e35b', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0472307501', '3964', '602', '504', '231', '882', '62', '2015-12-21 17:36:46');
INSERT INTO `pt_resources` VALUES ('d7048c9d6eef4bf1bd9b9c82fed47b53', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.2040275885', '8126', '2806', '371', '137', '371', '42', '2015-12-16 01:10:28');
INSERT INTO `pt_resources` VALUES ('d774d2893c994938acc746f2b19eeeb9', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0139182757', '3964', '1103', '883', '105', '883', '108', '2015-12-04 16:50:29');
INSERT INTO `pt_resources` VALUES ('d7a622af3b6d493da2e2275cc27cb1d5', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3215966166', '8129', '3988', '774', '449', '1808', '25', '2015-12-02 22:31:34');
INSERT INTO `pt_resources` VALUES ('d7a9902c7fbd479890bedee97d1daa8f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9600900314', '8129', '2844', '887', '197', '1808', '25', '2015-11-22 07:17:56');
INSERT INTO `pt_resources` VALUES ('d86759ab3b414711922a4fd162f948e8', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0472878096', '3964', '614', '506', '219', '882', '42', '2015-12-04 15:49:44');
INSERT INTO `pt_resources` VALUES ('d8d85563bdb3454ead94510a28ab1180', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9420525454', '8129', '3045', '610', '207', '1808', '42', '2015-11-22 18:13:56');
INSERT INTO `pt_resources` VALUES ('d96d1ab837a54297b8067ac980a9ee8c', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1936665911', '8126', '4467', '371', '274', '371', '15', '2016-01-05 23:17:57');
INSERT INTO `pt_resources` VALUES ('d9cdd7ec24cf44c992b5aabd6954c755', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9869628386', '8129', '3593', '573', '166', '1808', '43', '2015-11-22 18:41:56');
INSERT INTO `pt_resources` VALUES ('da13e871f6024ed485edc6a6af1efafc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9729281983', '8129', '2877', '874', '368', '1808', '22', '2015-11-22 04:37:55');
INSERT INTO `pt_resources` VALUES ('da3b15dca48e402e895027a4c89b7994', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9655175273', '8129', '2863', '881', '399', '1808', '23', '2015-11-22 05:21:55');
INSERT INTO `pt_resources` VALUES ('da4af614c999452898a95503038446fc', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.1835613378', '8129', '4465', '644', '131', '1808', '30', '2015-12-02 21:05:50');
INSERT INTO `pt_resources` VALUES ('da54caf3395145fa81f72e19f6aa22e2', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1178930457', '8126', '3659', '371', '280', '371', '10', '2016-04-03 17:46:31');
INSERT INTO `pt_resources` VALUES ('da5dd68417bf4ed8a9d85e821879a9e5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9673375259', '8129', '2757', '888', '215', '1808', '26', '2015-11-22 08:05:56');
INSERT INTO `pt_resources` VALUES ('db1e429043e745989e17fb4087d9971a', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1639381577', '8126', '3028', '371', '84', '371', '43', '2015-12-16 01:01:58');
INSERT INTO `pt_resources` VALUES ('db223862b4ad436f9777ca5b8e31ba2e', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1473773820', '8126', '3142', '371', '325', '371', '9', '2016-01-03 14:12:11');
INSERT INTO `pt_resources` VALUES ('db4ef581cb434818b27cf8ad8f92c011', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1663826034', '8126', '4612', '371', '286', '371', '11', '2016-01-05 22:57:57');
INSERT INTO `pt_resources` VALUES ('db7ecdc2199f427e8565050f71d17663', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '1.0000000000', '3964', '898', '111', '50', '882', '7', '2015-12-22 11:41:39');
INSERT INTO `pt_resources` VALUES ('db85973995e148759e2df90d24ac78aa', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0813710339', '8126', '3539', '371', '94', '371', '52', '2015-12-15 22:56:43');
INSERT INTO `pt_resources` VALUES ('dc15290930084c1b86d767b987cbc16d', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3709', '371', '188', '371', '41', '2015-12-16 00:09:27');
INSERT INTO `pt_resources` VALUES ('dcdd3a57fca64643ab43c2b0a6f56cd1', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0803482234', '3964', '478', '479', '176', '882', '61', '2015-12-21 17:28:46');
INSERT INTO `pt_resources` VALUES ('dcdd59cc5edb4e50b0853f07454ab3c3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9598283577', '8129', '4561', '585', '291', '1808', '44', '2015-11-22 18:57:56');
INSERT INTO `pt_resources` VALUES ('dcf53992812d4038aa668a905123cc76', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9948321593', '8129', '2766', '763', '241', '1808', '31', '2015-11-22 11:53:56');
INSERT INTO `pt_resources` VALUES ('dd256f982731416e8eb81ca9304337af', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1171020664', '3964', '756', '591', '281', '882', '42', '2015-12-04 14:48:59');
INSERT INTO `pt_resources` VALUES ('dd9e7669ff9a46469e62a54e985b1848', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1722581511', '8126', '4026', '371', '261', '371', '28', '2016-01-06 00:21:57');
INSERT INTO `pt_resources` VALUES ('dda1702866e242209659e9f09fcc5172', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2486068531', '8129', '4711', '644', '213', '1808', '30', '2015-12-02 20:59:50');
INSERT INTO `pt_resources` VALUES ('ddc2e5e30ea047509e18621345778ddd', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.2351574430', '3964', '520', '876', '326', '882', '114', '2015-12-04 15:55:07');
INSERT INTO `pt_resources` VALUES ('de97991ff15049619d91a0df1c741401', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0458332502', '3964', '1101', '592', '317', '882', '41', '2015-12-04 14:38:59');
INSERT INTO `pt_resources` VALUES ('deebf47d29c14bfca1009a29830a69fc', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9438033295', '8129', '2967', '667', '299', '1808', '38', '2015-11-22 16:07:56');
INSERT INTO `pt_resources` VALUES ('df349dd987d94c54a90877fbe1c4c179', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1872663662', '8126', '4429', '371', '355', '371', '17', '2016-01-05 23:23:57');
INSERT INTO `pt_resources` VALUES ('df499d37508e424f9ca9bd936c60a4e8', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9479025408', '8129', '2960', '651', '201', '1808', '37', '2015-11-22 15:41:56');
INSERT INTO `pt_resources` VALUES ('dfa4516cf9764aad86426ae6362841c2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9421500455', '8129', '3053', '610', '226', '1808', '42', '2015-11-22 18:11:56');
INSERT INTO `pt_resources` VALUES ('dfa7db2b04b144699a7d1b45f38bbda7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9959714468', '8129', '2761', '784', '188', '1808', '30', '2015-11-22 11:15:56');
INSERT INTO `pt_resources` VALUES ('dff6f6bd5b394a4689bf0cee5c2b2c93', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1680183512', '8126', '3021', '371', '128', '371', '43', '2015-12-16 00:59:58');
INSERT INTO `pt_resources` VALUES ('e0028de121f44f8b8f7f1ce2f5445430', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1390828516', '8126', '3591', '371', '283', '371', '6', '2016-04-03 18:47:30');
INSERT INTO `pt_resources` VALUES ('e011e669dacd44fd83e30ae8fbd193bf', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1307502130', '3964', '772', '591', '351', '882', '42', '2015-12-04 14:46:59');
INSERT INTO `pt_resources` VALUES ('e07b972403164752b30f19b98c0b4374', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.5647631728', '8129', '3140', '1243', '446', '1808', '59', '2015-12-02 23:07:02');
INSERT INTO `pt_resources` VALUES ('e0a1d782cc95449f87316d0b3e2f3fbd', '0', 'Windows 7', '174.0.8.136', 'jalin-flatworld', '4', '0.1467202821', '8126', '4651', '371', '134', '371', '45', '2016-01-24 17:02:15');
INSERT INTO `pt_resources` VALUES ('e0f1da7c714a434488222505c7c8df3c', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1588751717', '8126', '5024', '371', '279', '371', '3', '2016-01-05 22:19:57');
INSERT INTO `pt_resources` VALUES ('e1084f6359194c9fb3bacef3c778a2f4', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1272199195', '8126', '3578', '371', '304', '371', '9', '2016-04-03 18:49:20');
INSERT INTO `pt_resources` VALUES ('e14965b47f3a46c797b7de99e08ef95e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9948961431', '8129', '2752', '784', '495', '1808', '30', '2015-11-22 10:47:56');
INSERT INTO `pt_resources` VALUES ('e187c711c7514452ab7a49b6d013adbb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9760800188', '8129', '2873', '874', '657', '1808', '22', '2015-11-22 04:11:55');
INSERT INTO `pt_resources` VALUES ('e19f7c265e534a64b35d8ac3adb10734', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0535357447', '3964', '874', '584', '148', '882', '45', '2015-12-04 11:51:56');
INSERT INTO `pt_resources` VALUES ('e1a4c7b073f04065b5c90cf48aca0793', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '906', '95', '46', '882', '10', '2015-12-22 10:30:52');
INSERT INTO `pt_resources` VALUES ('e1b09123762a482b9346ea69845ee106', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '4034', '741', '389', '1808', '24', '2015-12-02 22:40:23');
INSERT INTO `pt_resources` VALUES ('e1e4c828d8794654bc5dabd8dfb5be38', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0000000000', '8126', '3035', '371', '105', '371', '40', '2015-12-16 00:57:58');
INSERT INTO `pt_resources` VALUES ('e20ba85048d441ae8646402d020134e5', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9812542317', '8129', '3764', '573', '190', '1808', '43', '2015-11-22 18:39:56');
INSERT INTO `pt_resources` VALUES ('e219aee98d7d4eb2a01ed9eb0e2358c0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9458225424', '8129', '2795', '682', '324', '1808', '35', '2015-11-22 14:21:56');
INSERT INTO `pt_resources` VALUES ('e22f4e1c00bc45658758546d8cf3d7b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9864472841', '8129', '5013', '585', '337', '1808', '44', '2015-11-22 18:53:56');
INSERT INTO `pt_resources` VALUES ('e283789a4c704a0ab8975c83997ccf52', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1435931733', '3964', '1004', '492', '122', '882', '53', '2015-12-21 16:52:46');
INSERT INTO `pt_resources` VALUES ('e335a008827a4977b4437e8e74dc3dec', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9958365335', '8129', '2745', '784', '346', '1808', '30', '2015-11-22 11:01:56');
INSERT INTO `pt_resources` VALUES ('e36a1dd50c484aad8e37b2bff9dff103', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0923558418', '8126', '3682', '371', '20', '371', '49', '2015-12-15 23:16:27');
INSERT INTO `pt_resources` VALUES ('e3cdd34d83f94092b8e6e99d1105749f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9445550441', '8129', '2790', '705', '483', '1808', '34', '2015-11-22 13:31:56');
INSERT INTO `pt_resources` VALUES ('e3f172c93de4404d933a369bbecf0f48', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9582451885', '8129', '2718', '894', '146', '1808', '27', '2015-11-22 09:01:56');
INSERT INTO `pt_resources` VALUES ('e3fa989ebb384a06b3779f1fc78e76e3', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1668700984', '8126', '4607', '371', '328', '371', '11', '2016-01-05 22:55:57');
INSERT INTO `pt_resources` VALUES ('e549a2bcc85241abb04aea2a9ef4ac27', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9575514963', '8129', '3158', '573', '208', '1808', '43', '2015-11-22 18:37:56');
INSERT INTO `pt_resources` VALUES ('e5b034b7dea04e6bb4a2fbf293a6a03f', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.1914073748', '8129', '4498', '644', '158', '1808', '30', '2015-12-02 21:03:50');
INSERT INTO `pt_resources` VALUES ('e5b190f8b5f44cd78bf6adb5cc936c58', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1416106750', '3964', '570', '527', '220', '882', '35', '2015-12-22 10:22:50');
INSERT INTO `pt_resources` VALUES ('e5f354c06f3348668c49952474dcf7c3', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9467303220', '8129', '2774', '705', '348', '1808', '34', '2015-11-22 13:43:56');
INSERT INTO `pt_resources` VALUES ('e5f4a30cacd44e1cbe4222e8710114af', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1249700572', '8126', '3484', '371', '207', '371', '36', '2016-04-03 18:22:34');
INSERT INTO `pt_resources` VALUES ('e617c6cee55d4eacaec95540080fa7eb', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2601319157', '8129', '3863', '654', '292', '1808', '33', '2015-12-02 21:49:50');
INSERT INTO `pt_resources` VALUES ('e64f0e82b63b4bf88a57c85c533c4606', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9622025295', '8129', '2877', '882', '429', '1808', '24', '2015-11-22 06:07:55');
INSERT INTO `pt_resources` VALUES ('e67b423486c6494388d1a11bb6ba1619', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0966648653', '3964', '1135', '742', '231', '882', '69', '2015-12-04 16:08:17');
INSERT INTO `pt_resources` VALUES ('e699568b649c420ab65941cee59c72a2', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9590500322', '8129', '2811', '682', '454', '1808', '35', '2015-11-22 14:09:56');
INSERT INTO `pt_resources` VALUES ('e704e77fec814e39ae0e1d9688661da9', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0949911933', '3964', '1200', '92', '51', '882', '13', '2015-12-22 14:14:06');
INSERT INTO `pt_resources` VALUES ('e72627681a864f8bba4872c9043a2e4c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9454000429', '8129', '2815', '699', '456', '1808', '36', '2015-11-22 14:47:56');
INSERT INTO `pt_resources` VALUES ('e74fef7efc1046fb92b3bc2743511ab0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9448132033', '8129', '2844', '651', '403', '1808', '37', '2015-11-22 15:23:56');
INSERT INTO `pt_resources` VALUES ('e750ef1410ad430986a1b904b27cf53d', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2640315992', '8129', '4677', '644', '237', '1808', '30', '2015-12-02 20:57:50');
INSERT INTO `pt_resources` VALUES ('e78fd567a03d4845b3cd268d91e6209e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9418900457', '8129', '3042', '596', '159', '1808', '41', '2015-11-22 17:47:56');
INSERT INTO `pt_resources` VALUES ('e7e35d327a9249dd99640b1d43b510e4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9569700338', '8129', '2710', '829', '361', '1808', '28', '2015-11-22 09:27:56');
INSERT INTO `pt_resources` VALUES ('e806273314fd4cb98d38881700b0abcb', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0117762029', '3964', '1058', '891', '151', '891', '107', '2015-12-04 16:36:29');
INSERT INTO `pt_resources` VALUES ('e89a90f2005e40078035d190a3e99db9', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2139687203', '8126', '3040', '371', '279', '371', '18', '2016-01-03 13:05:08');
INSERT INTO `pt_resources` VALUES ('e8cdf77b77664fe58051e6c9d1e89f93', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1100200288', '8126', '3521', '371', '245', '371', '14', '2016-04-03 17:57:33');
INSERT INTO `pt_resources` VALUES ('e8ea452358214e8192d06514b8603f2e', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2532217957', '8129', '3790', '804', '280', '1808', '23', '2015-12-02 23:40:24');
INSERT INTO `pt_resources` VALUES ('e9368079c1cb435ab0db65563d6589d8', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2161984373', '8129', '4348', '653', '267', '1808', '32', '2015-12-02 21:27:50');
INSERT INTO `pt_resources` VALUES ('e936b5b4c1074598ba31ddd624c44d6a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0491807477', '3964', '442', '887', '160', '887', '106', '2015-12-04 16:26:29');
INSERT INTO `pt_resources` VALUES ('e95ff9db6a1f4585912a8cc22e5ba165', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8329826311', '8129', '3158', '870', '277', '1808', '19', '2015-11-22 02:35:55');
INSERT INTO `pt_resources` VALUES ('e99f5bcd0f01401bb5d79e0d541cb2b5', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2267216644', '8129', '4294', '653', '114', '1808', '32', '2015-12-02 21:39:50');
INSERT INTO `pt_resources` VALUES ('e9a7e75079334e8dab8a099abd3a3dbe', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0386182562', '3964', '1113', '587', '194', '882', '46', '2015-12-04 15:18:59');
INSERT INTO `pt_resources` VALUES ('e9af349bbc6748e291f34ecbeec6c449', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '1.0000000000', '8126', '3667', '371', '12', '371', '44', '2015-12-15 22:58:27');
INSERT INTO `pt_resources` VALUES ('e9ef286c4d32430ebff58c8a4ad84daf', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9616825299', '8129', '2773', '724', '297', '1808', '33', '2015-11-22 13:09:56');
INSERT INTO `pt_resources` VALUES ('ea6075b963894f99ad424e34c65f8e7b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9788751931', '8129', '2868', '874', '459', '1808', '22', '2015-11-22 04:29:55');
INSERT INTO `pt_resources` VALUES ('ead28cce41004810954d9bb40173136a', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2228543690', '8129', '4336', '653', '242', '1808', '32', '2015-12-02 21:29:50');
INSERT INTO `pt_resources` VALUES ('eb46c6d3f8f14b2788fa02f1ca9ba430', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1225331906', '3964', '562', '479', '204', '882', '61', '2015-12-21 17:26:46');
INSERT INTO `pt_resources` VALUES ('eb5c3695863f47bd90303d2d5863412c', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9952226230', '8129', '2738', '784', '475', '1808', '30', '2015-11-22 10:49:56');
INSERT INTO `pt_resources` VALUES ('eb6c93c7eba74a8eaf649080d33e997c', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.2672388213', '8126', '2970', '371', '116', '371', '43', '2015-12-16 00:41:48');
INSERT INTO `pt_resources` VALUES ('eb97f90c23e04a369e46377498d8f24a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.1049507046', '3964', '853', '531', '192', '882', '44', '2015-12-04 13:55:59');
INSERT INTO `pt_resources` VALUES ('ec26d6f891864485924a009eab262956', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9951892821', '8129', '2776', '763', '308', '1808', '31', '2015-11-22 11:47:56');
INSERT INTO `pt_resources` VALUES ('ec5223b774464d56b3d23e59fca67260', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3690', '371', '283', '371', '3', '2016-04-03 18:25:24');
INSERT INTO `pt_resources` VALUES ('ec72caf1ba704fdaa38417fe8e8856db', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0516261498', '3964', '736', '512', '187', '882', '39', '2015-12-04 13:21:59');
INSERT INTO `pt_resources` VALUES ('ec80b65862c64c98a36f6217a6459dd9', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9864151243', '8129', '4703', '585', '359', '1808', '44', '2015-11-22 18:51:56');
INSERT INTO `pt_resources` VALUES ('ecbc820894cc487b990061452b558d4c', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0923171226', '3964', '726', '88', '40', '882', '20', '2015-12-22 10:53:42');
INSERT INTO `pt_resources` VALUES ('ecd1e97f7d724d79a22b13bfb9cb2285', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0125532771', '3964', '1045', '883', '208', '883', '108', '2015-12-04 16:42:29');
INSERT INTO `pt_resources` VALUES ('ed1f020fb25841439aa23a4712d044ca', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2372058141', '8126', '3432', '371', '273', '371', '6', '2016-01-03 12:07:08');
INSERT INTO `pt_resources` VALUES ('ed9df88e50e4479a81a49cd58669c324', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1015781941', '3964', '822', '185', '49', '882', '12', '2015-12-22 11:57:39');
INSERT INTO `pt_resources` VALUES ('edb54835555c4f7ca45b54803fde8beb', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9980825812', '8129', '2772', '763', '403', '1808', '31', '2015-11-22 11:39:56');
INSERT INTO `pt_resources` VALUES ('edd2fa0dc9c4414d844261d36cd64427', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.2154050407', '8126', '3041', '371', '261', '371', '17', '2016-01-03 13:01:08');
INSERT INTO `pt_resources` VALUES ('ee4f65db17e149d0a3372d63aa4243df', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9615557339', '8129', '2817', '682', '169', '1808', '35', '2015-11-22 14:35:56');
INSERT INTO `pt_resources` VALUES ('ee811b68c32b45bcb83447f11c012753', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0832082219', '8126', '3130', '371', '319', '371', '11', '2016-01-03 14:22:11');
INSERT INTO `pt_resources` VALUES ('eeb1c99b849c4e038f297386af3160f7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9547570192', '8129', '2709', '816', '451', '1808', '29', '2015-11-22 10:07:56');
INSERT INTO `pt_resources` VALUES ('eeb43989f86e4220bc2874a255253e46', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9451725438', '8129', '3032', '610', '337', '1808', '42', '2015-11-22 18:01:56');
INSERT INTO `pt_resources` VALUES ('eecd99a08bc14c5ba23d1fff44e33bdc', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1198602054', '3964', '709', '105', '25', '882', '10', '2015-12-22 10:34:39');
INSERT INTO `pt_resources` VALUES ('ef5266cb0ad44a5aa606b99df8a4f308', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9591475315', '8129', '2836', '682', '389', '1808', '35', '2015-11-22 14:15:56');
INSERT INTO `pt_resources` VALUES ('ef80ea5f961345f4b8e202a58eb25996', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9454302689', '8129', '2772', '724', '386', '1808', '33', '2015-11-22 13:01:56');
INSERT INTO `pt_resources` VALUES ('ef8242e82f624867ba45eb0c616ff4c2', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1816181438', '8126', '4470', '371', '340', '371', '14', '2016-01-05 23:09:57');
INSERT INTO `pt_resources` VALUES ('efa82d3e140341989af0f5a5fff789da', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1699181530', '8126', '3131', '371', '312', '371', '13', '2016-01-03 14:32:11');
INSERT INTO `pt_resources` VALUES ('efdc38ba151c4daeb086345ebf305f48', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0940632122', '8126', '3135', '371', '262', '371', '5', '2016-01-03 13:56:11');
INSERT INTO `pt_resources` VALUES ('eff3439fa66e4f94b63a7610929d6517', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9741300203', '8129', '2876', '881', '241', '1808', '23', '2015-11-22 05:35:55');
INSERT INTO `pt_resources` VALUES ('f0047eac65be44af9392009e15c1b4c0', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '1220', '105', '37', '882', '8', '2015-12-22 11:29:38');
INSERT INTO `pt_resources` VALUES ('f00b835565a34ea3be882c3e7e6e58bc', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.0000000000', '8129', '3929', '856', '565', '1808', '19', '2015-12-02 22:41:50');
INSERT INTO `pt_resources` VALUES ('f07b4ee7cb5f46348a50896492f9828f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1536286121', '8126', '3133', '371', '291', '371', '4', '2016-01-03 13:50:11');
INSERT INTO `pt_resources` VALUES ('f07d15d483d942b3abd58d9e06c38d52', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.2008581293', '8126', '4347', '371', '332', '371', '18', '2016-01-05 23:29:57');
INSERT INTO `pt_resources` VALUES ('f0913d9e81f649afacd9da39705740f1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9590500322', '8129', '2760', '888', '413', '1808', '26', '2015-11-22 07:47:56');
INSERT INTO `pt_resources` VALUES ('f16d01fe3dd14e09a16095737b07f325', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9952855386', '8129', '2709', '816', '225', '1808', '29', '2015-11-22 10:27:56');
INSERT INTO `pt_resources` VALUES ('f16fdbbefe3b498eb129499796968df1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9590175316', '8129', '2789', '705', '500', '1808', '34', '2015-11-22 13:29:56');
INSERT INTO `pt_resources` VALUES ('f19466a730534bf28bf710966d376e11', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9576850337', '8129', '3036', '596', '359', '1808', '41', '2015-11-22 17:29:56');
INSERT INTO `pt_resources` VALUES ('f1c27d125bef4e94a97e5b51aad1a77a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0615632386', '3964', '1076', '587', '168', '882', '46', '2015-12-04 15:20:59');
INSERT INTO `pt_resources` VALUES ('f1d444afcf6d4394b1d40431dffe44d2', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0606857391', '3964', '654', '600', '214', '882', '41', '2015-12-04 13:43:59');
INSERT INTO `pt_resources` VALUES ('f1d573ff655b4d1b96dc3ccf8a76fc08', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9973340019', '8129', '2721', '784', '386', '1808', '30', '2015-11-22 10:57:56');
INSERT INTO `pt_resources` VALUES ('f1dab3d21de24a33a8d71ccb00596f0b', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1647761973', '8126', '4130', '371', '258', '371', '30', '2016-01-06 00:31:57');
INSERT INTO `pt_resources` VALUES ('f2088421247846cba203c3b156e70d3d', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1728106505', '8126', '4492', '371', '317', '371', '15', '2016-01-05 23:15:57');
INSERT INTO `pt_resources` VALUES ('f21a8e84be4b41118e76331a44b7cfde', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8294726340', '8129', '2817', '872', '218', '1808', '20', '2015-11-22 03:19:55');
INSERT INTO `pt_resources` VALUES ('f267fb5c070846bab95c977554b3ffb0', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9440025447', '8129', '3038', '596', '204', '1808', '41', '2015-11-22 17:43:56');
INSERT INTO `pt_resources` VALUES ('f298f55a6e774198a8c0a75815a8437e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9799483515', '8129', '4537', '585', '314', '1808', '44', '2015-11-22 18:55:56');
INSERT INTO `pt_resources` VALUES ('f2999283b7434d6195ba2e491ed9678a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9428683774', '8129', '2967', '667', '415', '1808', '38', '2015-11-22 15:57:56');
INSERT INTO `pt_resources` VALUES ('f30b546ca0d6475a899bf6b8c8c11057', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1846146320', '3964', '575', '510', '202', '882', '58', '2015-12-21 17:10:46');
INSERT INTO `pt_resources` VALUES ('f30ea4c5a314465cbe197a7f7d780b6b', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.1779131471', '3964', '657', '511', '124', '882', '60', '2015-12-21 17:24:46');
INSERT INTO `pt_resources` VALUES ('f3453adf056b441ea0a99061cf716c1f', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1921223678', '8126', '2982', '371', '271', '371', '13', '2016-01-03 12:41:08');
INSERT INTO `pt_resources` VALUES ('f364b28eb4af47b59e6b4ca0f3fdd90f', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0714432300', '3964', '577', '479', '99', '882', '61', '2015-12-21 17:34:46');
INSERT INTO `pt_resources` VALUES ('f4148814e2ab4e01bafa72ea76a590c8', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1831713357', '8126', '2968', '371', '255', '371', '12', '2016-01-03 12:37:08');
INSERT INTO `pt_resources` VALUES ('f41f4cdaba7a467992b30d15c5574b47', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9442286495', '8129', '2800', '699', '410', '1808', '36', '2015-11-22 14:51:56');
INSERT INTO `pt_resources` VALUES ('f4417732cd994aa78af649c2b0a18580', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1797263093', '8126', '2800', '371', '345', '371', '24', '2016-01-03 13:31:08');
INSERT INTO `pt_resources` VALUES ('f47af97cf53148378ccdf96baae8dcce', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9634047234', '8129', '2725', '816', '369', '1808', '29', '2015-11-22 10:15:56');
INSERT INTO `pt_resources` VALUES ('f4ad8a0cddf948f69451d0868a09593b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9606750305', '8129', '2767', '743', '462', '1808', '32', '2015-11-22 12:15:56');
INSERT INTO `pt_resources` VALUES ('f4dac5301d32435493202f69c118f57d', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1984273108', '8126', '2971', '371', '337', '371', '12', '2016-01-03 12:33:08');
INSERT INTO `pt_resources` VALUES ('f4f627a062aa4d668bf951504cd7942e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9695145163', '8129', '2745', '888', '319', '1808', '26', '2015-11-22 07:55:56');
INSERT INTO `pt_resources` VALUES ('f51813e2af774fcca898a104ce315e25', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1652381567', '8126', '4003', '371', '271', '371', '26', '2016-01-06 00:11:57');
INSERT INTO `pt_resources` VALUES ('f561a14444d1425186ca78c5b9022ee0', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1980421641', '8126', '4769', '371', '295', '371', '32', '2016-01-06 00:39:57');
INSERT INTO `pt_resources` VALUES ('f5969572a282483e805c08945cc0eac8', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1157081956', '8126', '3545', '371', '291', '371', '8', '2016-04-03 17:32:31');
INSERT INTO `pt_resources` VALUES ('f5bf758ae13d47edaaab99674c842d9d', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0000000000', '3964', '925', '111', '80', '882', '7', '2015-12-22 10:35:00');
INSERT INTO `pt_resources` VALUES ('f5e3bd9733a147039a7993044ba971a1', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0925931519', '3964', '508', '103', '44', '882', '17', '2015-12-22 11:10:56');
INSERT INTO `pt_resources` VALUES ('f607fde5aad946b3a82d27704f90c4f4', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1729012574', '8126', '4641', '371', '303', '371', '37', '2016-01-06 01:03:57');
INSERT INTO `pt_resources` VALUES ('f6c5a86c15964fd3a2f664e53937143a', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.0768707260', '8126', '3133', '371', '276', '371', '11', '2016-01-03 14:24:11');
INSERT INTO `pt_resources` VALUES ('f77657bcc1684f33b25e0d3dc8f1ec40', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9812476704', '8129', '2886', '874', '497', '1808', '22', '2015-11-22 04:25:55');
INSERT INTO `pt_resources` VALUES ('f7b096a1da834d7aa4a363eb135c405f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9653228161', '8129', '2875', '882', '580', '1808', '24', '2015-11-22 05:53:55');
INSERT INTO `pt_resources` VALUES ('f7c09e97a2f8439e8c2c632e17c4ddcf', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2979220018', '8129', '2350', '1792', '313', '1808', '127', '2015-12-02 21:55:34');
INSERT INTO `pt_resources` VALUES ('f7d20ae88eef4665a56f16ebc1352c28', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1391406777', '8126', '3575', '371', '292', '371', '8', '2016-04-03 19:23:31');
INSERT INTO `pt_resources` VALUES ('f819b148cdcd4e2e9f266fbbb70cfb9f', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9604183294', '8129', '2739', '763', '109', '1808', '31', '2015-11-22 12:05:56');
INSERT INTO `pt_resources` VALUES ('f87985ad648945deb62a2d2991f8e7b7', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1717283732', '8126', '4126', '371', '336', '371', '32', '2016-01-06 00:37:57');
INSERT INTO `pt_resources` VALUES ('f87b862a6c254d4c84952f7c37d181f4', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9810848577', '8129', '2826', '873', '410', '1808', '21', '2015-11-22 03:47:55');
INSERT INTO `pt_resources` VALUES ('f8931cfeed544fcabdef32d0bbb48c24', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '1.0000000000', '8126', '3731', '371', '116', '371', '40', '2015-12-16 00:05:22');
INSERT INTO `pt_resources` VALUES ('f8b72b582ee8404585f7f0859f21d7da', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.0995732005', '8126', '3725', '371', '140', '371', '43', '2015-12-16 00:00:19');
INSERT INTO `pt_resources` VALUES ('f8de734f4d7344129972e1472a6438d7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9571332480', '8129', '2983', '667', '169', '1808', '38', '2015-11-22 16:19:56');
INSERT INTO `pt_resources` VALUES ('f923f79be243470c998afcb180fd8740', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9427694521', '8129', '2987', '637', '424', '1808', '40', '2015-11-22 16:57:56');
INSERT INTO `pt_resources` VALUES ('f94b507ae5dc4aa199411de7c2c73868', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9699702739', '8129', '2758', '888', '507', '1808', '26', '2015-11-22 07:39:56');
INSERT INTO `pt_resources` VALUES ('f9b2826d05304ee891232bee9d98ff9b', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9603812111', '8129', '2752', '743', '416', '1808', '32', '2015-11-22 12:19:56');
INSERT INTO `pt_resources` VALUES ('f9dda7253f4146d59674d88579788571', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1958856328', '8126', '4264', '371', '307', '371', '19', '2016-01-05 23:35:57');
INSERT INTO `pt_resources` VALUES ('fa3a3d90d07e4eae8ad672f58d96e439', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9692550238', '8129', '2825', '888', '611', '1808', '26', '2015-11-22 07:29:56');
INSERT INTO `pt_resources` VALUES ('fa3bb1b3e1fb463182e2ab0d0cd55f24', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1869806400', '8126', '3203', '371', '325', '371', '9', '2016-01-03 12:19:08');
INSERT INTO `pt_resources` VALUES ('fa83588c4a444f909017a063a0c687ad', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0586707411', '3964', '510', '600', '376', '882', '41', '2015-12-04 13:31:59');
INSERT INTO `pt_resources` VALUES ('fb2dcb0ba752489a8fa9c57e656f8723', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1348434708', '8126', '3554', '371', '216', '371', '7', '2016-04-03 17:30:31');
INSERT INTO `pt_resources` VALUES ('fb2ffe420a274d80a2b1c2f540c92722', '0', 'Windows 7', '174.0.2.143', 'jalin-flatworld', '4', '0.1584131623', '8126', '3199', '371', '355', '371', '13', '2016-01-03 14:30:11');
INSERT INTO `pt_resources` VALUES ('fb5c639959c94224932ca61a7c4d554c', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0989413408', '3964', '838', '100', '48', '882', '10', '2015-12-22 10:36:59');
INSERT INTO `pt_resources` VALUES ('fb721dc669a34ec5b2c52c701c8a5198', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2399619315', '8129', '3515', '858', '417', '1808', '20', '2015-12-03 00:07:47');
INSERT INTO `pt_resources` VALUES ('fbb7f9ccac744c21909858b439a276ec', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9512175386', '8129', '2710', '816', '277', '1808', '29', '2015-11-22 10:23:56');
INSERT INTO `pt_resources` VALUES ('fbd58b7c74f542d9b0ff0381aea61f7c', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.2224316320', '8129', '3010', '1279', '432', '1808', '58', '2015-12-03 00:22:05');
INSERT INTO `pt_resources` VALUES ('fc3f174ea8714620950a3a27b7582c37', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.8430759325', '8129', '2708', '872', '375', '1808', '20', '2015-11-22 03:05:55');
INSERT INTO `pt_resources` VALUES ('fca02357e8e14a4b98cb1e2d9c5797a4', '0', 'Windows 7', '192.168.56.1', 'XS-20150604BDJI', '4', '0.0880507179', '3964', '1060', '141', '64', '882', '11', '2015-12-22 11:35:37');
INSERT INTO `pt_resources` VALUES ('fd124826841d4b348e851946e9281ddd', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9997074980', '8129', '3595', '585', '223', '1808', '44', '2015-11-22 19:03:56');
INSERT INTO `pt_resources` VALUES ('fd32448067f74a6b92cd6d948f8f0e24', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9623293909', '8129', '2847', '887', '681', '1808', '25', '2015-11-22 06:33:55');
INSERT INTO `pt_resources` VALUES ('fd6e45d5a76b44fc99ddf389163e322e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9560275340', '8129', '2723', '816', '410', '1808', '29', '2015-11-22 10:11:56');
INSERT INTO `pt_resources` VALUES ('fd7c194e15434637b9a91b01a1fa51ea', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9581725335', '8129', '2756', '894', '690', '1808', '27', '2015-11-22 08:13:56');
INSERT INTO `pt_resources` VALUES ('fdc972e64b444bed8b04e7024f4a274b', '0', 'Windows 7', '174.0.5.167', 'SKY-20151114TOA', '4', '0.3613436961', '8129', '3158', '1249', '677', '1808', '61', '2015-12-02 21:51:51');
INSERT INTO `pt_resources` VALUES ('fde1e1caff0f433d8e07af6d044c41c7', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9440025439', '8129', '3045', '573', '387', '1808', '43', '2015-11-22 18:21:56');
INSERT INTO `pt_resources` VALUES ('fdff2b1055c14587ad70aae567b8552e', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9577825339', '8129', '2783', '705', '280', '1808', '34', '2015-11-22 13:49:56');
INSERT INTO `pt_resources` VALUES ('fe414577ae144ca496c43fba443d3fff', '0', 'Windows 7', '174.0.6.36', 'jalin-flatworld', '4', '0.1399785099', '8126', '3710', '371', '53', '371', '49', '2015-12-15 22:44:43');
INSERT INTO `pt_resources` VALUES ('fe4d0e2068184a5995d67378f9eef54f', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1659067538', '8126', '4032', '371', '280', '371', '29', '2016-01-06 00:25:57');
INSERT INTO `pt_resources` VALUES ('feee854c76b747f593a77590ff0095ce', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9477725409', '8129', '2764', '743', '389', '1808', '32', '2015-11-22 12:21:56');
INSERT INTO `pt_resources` VALUES ('fefb47debbfd4aa9b49d31f679f985b1', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9547305540', '8129', '2724', '829', '319', '1808', '28', '2015-11-22 09:31:56');
INSERT INTO `pt_resources` VALUES ('fefc2db1ed684d14a3d4249411aafcb3', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.0000000000', '8126', '3352', '371', '212', '371', '11', '2016-04-03 19:48:41');
INSERT INTO `pt_resources` VALUES ('ff03a959a6ea49d5ad0d661dace6e843', '0', 'Windows 7', '172.25.68.1', 'jalin-flatworld', '4', '0.1096956997', '8126', '3540', '371', '215', '371', '14', '2016-04-03 17:59:33');
INSERT INTO `pt_resources` VALUES ('ff3d6065a4f4451d87598a2d789455e0', '0', 'Windows 7', '174.0.7.40', 'jalin-flatworld', '4', '0.1800389705', '8126', '5017', '371', '322', '371', '3', '2016-01-05 22:17:57');
INSERT INTO `pt_resources` VALUES ('ffa8bdcc239c4cd29bd312aed46cc06a', '0', 'Windows 7', '174.0.8.248', 'SKY-20151114TOA', '4', '0.9642497302', '8129', '2876', '881', '330', '1808', '23', '2015-11-22 05:27:55');
INSERT INTO `pt_resources` VALUES ('fff8a51d32144ecfb452f0f6d156ec6a', '0', 'Windows 7', '192.168.1.8', 'XS-20150604BDJI', '4', '0.0120657782', '3964', '1073', '891', '128', '891', '107', '2015-12-04 16:38:29');

-- ----------------------------
-- Table structure for `pt_role`
-- ----------------------------
DROP TABLE IF EXISTS `pt_role`;
CREATE TABLE `pt_role` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `operatorids` text COLLATE utf8_bin,
  `moduleids` text COLLATE utf8_bin,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_role
-- ----------------------------
INSERT INTO `pt_role` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '2', 'SuperAdmin', '超级管理员', '超级管理员', 0x6F70657261746F725F38663961623731643532366334353335396334343736663935373938376536642C6F70657261746F725F33373231386662353265633934666234626637363230396131373931363039342C6F70657261746F725F63316539393164316635363734393239386331386666363964373737376530622C6F70657261746F725F62313362303032653266616434653935626265306534646263396662646665312C6F70657261746F725F39613730386633396531323334353565383462363132353737346261623165612C6F70657261746F725F34333765303564303964643934373230623637633466323330636465626535382C6F70657261746F725F30666237393338633764363134666333383935363865623637623434323330332C6F70657261746F725F39316261656437383962633134656664626562623130623439633639656535622C6F70657261746F725F63303461646364303139653034636633626137633636616637323161313864632C6F70657261746F725F66316636663263386630323634393863386565363462376139313864303664662C6F70657261746F725F35666361633130376338306434393364393162353361383135643462323937612C6F70657261746F725F64323437666234356265373234656432613262623563393264373362663663662C6F70657261746F725F34333736383838666437346634323437613932363532396535646130333434322C6F70657261746F725F64343739646264633930316634643835613230376239626163653634363561632C6F70657261746F725F37393033396132323630646134366230616162623561363265386462366338372C6F70657261746F725F31613862346438653434313134313266613862623536313339333536336138352C6F70657261746F725F65373534646664623739346434653764623630323363396230383961333430632C6F70657261746F725F34386462353166323062353034633461623438396231646366643365636264392C6F70657261746F725F62633263383635626536616634326366383631323934643434366662316336662C6F70657261746F725F63663236633164326261613234613837393162336432363431353462383064342C6F70657261746F725F62383264383666623762363434393861396332623862396139396233666265622C6F70657261746F725F31303439396263376639636234616466393962656261303033343362346561362C6F70657261746F725F39663735623437626463303234396532623439336334373338343738356137322C6F70657261746F725F61316666363861636639623234633334623334376666323165333333636237302C6F70657261746F725F61363632336336353438306634663263623633613464373637336638316533612C6F70657261746F725F64663061613533343635353234326534613062636436333862353161346530332C6F70657261746F725F34613635343461653761323534386164383163306533393934393939303233632C6F70657261746F725F66373731363931313334633334313734613831396235393930333130643030302C6F70657261746F725F38383662643439373036346234633966383764383436316562626134323164312C6F70657261746F725F61613132363933323634316634653036386564383237386133333264653835642C6F70657261746F725F66623661306331653631383034316263626266386366643431333131623166612C6F70657261746F725F66373731363931313334633334313734613831396235393930333130646135362C6F70657261746F725F37656435656566626266336434616137386430633562393966336237303130632C6F70657261746F725F31623064373437363937346534626639623532663735666238326638373333302C6F70657261746F725F61353238396232363338643834356662623036646564626364643531376639372C6F70657261746F725F63396430313364313463626434663134386662343536326339313830336565382C6F70657261746F725F32323932366562313936613134623438626537373566343838306235626139342C6F70657261746F725F62383333396632396438643834613465616436343534323935663837623739632C6F70657261746F725F65303337653062616539613934653534396436623634376462343961363461312C6F70657261746F725F61306330316135323438636434626633386535373934356462623262393863352C6F70657261746F725F33656535663938363238396434613139393066346534326339613063616164622C6F70657261746F725F64343936623136316432353634313131393932363837623934383836323234342C6F70657261746F725F34646638303532316536363434373631383739366333636665303262663233392C6F70657261746F725F36353639653064396632636434653361393761663465316230636438643266372C6F70657261746F725F66313663616464386638316534626566393236653039663731386462386665322C6F70657261746F725F30393138353564643830396234313866616538386137666563366439663234362C6F70657261746F725F30316161306338356338623834616538616361376635343834333336623230332C6F70657261746F725F64356338626466376134396134653436623737366330356463396561643438342C6F70657261746F725F32626533343939313832376534653864613865393266396239653862636532352C6F70657261746F725F38663739383537623331643434373561393463373132653939376538396339392C6F70657261746F725F31323134316331633362653234316361386138363862636539636436313064352C6F70657261746F725F32316230613931306566366534633630613332356435653537653665366636352C6F70657261746F725F64316531346530623766363934373833393438353064323233383231343639322C6F70657261746F725F37346161323034343231303534303864393066396536343639613361393262352C6F70657261746F725F38383937646265383562336534653639383964363632343935323732636632362C6F70657261746F725F37616536323733376466343434643631396638666433373633363064313630632C6F70657261746F725F33333564316638663436656234376131383030313838396638636332313334382C6F70657261746F725F37636331326235633135346134613937383263353138633537653861623361612C6F70657261746F725F37386336303236633661663434623431613662656634636462346366623431342C6F70657261746F725F31353536366536336633313034633733623461306234613738346464313163612C6F70657261746F725F61636263656234333262353834396163613965396232383432343032383165632C6F70657261746F725F64363436646138373037616534313833386664326563396266306434363765652C6F70657261746F725F32396331386233333934393234633330383832646130343964613134616439392C6F70657261746F725F63306363666364313237633334376138623964623134306535616136323138382C6F70657261746F725F63613066366461303161646134313965616137373339643937393065356238382C6F70657261746F725F32333333353662363364386534373766623665393438623730333233323830392C6F70657261746F725F33363263663234373234316334643132623632343233303165346137333531362C6F70657261746F725F63323965613463626439303434626337383665396634353834616438343066662C6F70657261746F725F32666262633963666230626634623562623530346561643135356333343233632C6F70657261746F725F63373133323235306635303534623830386262313139313232613665636235322C6F70657261746F725F30396236636532393331336334303531626137363564653531366139623238332C6F70657261746F725F64633735306535376235346634626163613738643636393639333231656535312C6F70657261746F725F32313134316461346665626534633932396162653337313236623337666431322C6F70657261746F725F63303831633530393138663434353966386533366162386362343135316136312C6F70657261746F725F32666565393031313137633634653138383733663630653866383030373133642C6F70657261746F725F37656162356638303062616234656662386466316232653861303537356637332C6F70657261746F725F33326133653539393634323034613363383834386538346238363433303661652C6F70657261746F725F38626439633065313464663934316364616636323533636430386462643963642C6F70657261746F725F37623432383164643234376334363234626565306438663834633263323731352C6F70657261746F725F63303536343234343265306134363865626534663062373737316138303361652C6F70657261746F725F35623234396164333434643934386239396635383736386333323366356637312C6F70657261746F725F30646131356334393239396434316134623732306637383764303533653363622C6F70657261746F725F63633662636265653430616234336232626435616666366439333835653166632C6F70657261746F725F38336566383566643137383034626231393564306164336330376638386333302C6F70657261746F725F61643531613663613935633634366365396330333737386564613731353733342C6F70657261746F725F36646165643531323834663934393233623163386136343134653634363935392C6F70657261746F725F31623161383039383135353734623261396331643065313864363932646531372C6F70657261746F725F62323362313764346338333234326538613161386565386366636465393930372C6F70657261746F725F39313039353563323139326134313839393565656162386266313533373265392C6F70657261746F725F61643039613162383937373434383132383735633735326332643730663131612C6F70657261746F725F66383263303231646334343334313966623234363930333261663733626633652C6F70657261746F725F30353364333330343632653134353963613130313263396432393131336263342C6F70657261746F725F35386138353034306161396634306363613062646261366532336533303336332C6F70657261746F725F62346565346165343339316634323433626536396538333835343564323133312C6F70657261746F725F31303436333839643835323534353136393766323739333138356537643665652C6F70657261746F725F34366530306566306664323334653964626636386564396262623433376430662C6F70657261746F725F62383231383934356238653734336632393635313536393935303031343531312C6F70657261746F725F64313135643038353931656634633065616562656631356638323934623238372C6F70657261746F725F32333564383535643762393134643732386534333466306633303961613034642C6F70657261746F725F66643939373864663563356134376632393865326432386532316537306231352C6F70657261746F725F38636138616635303135323234333964386339323439653030646235643738642C6F70657261746F725F64666539643734666530656634323230626663666536643762623266393433362C6F70657261746F725F32633931343637663930356134663562613966353238333031333163386164392C6F70657261746F725F34383164346435633061363334633430383563373263393930323630653538642C6F70657261746F725F34323064386562633638616434346463383138386434633237646335383564312C6F70657261746F725F35313438656132303762393734656531393766306263353730363061623161642C6F70657261746F725F30373733613538633462646234383538616230363263346132613464613639612C6F70657261746F725F39373635653662623736656234306162383030636238393534383232313930652C6F70657261746F725F37373832336531323339316134373732396131663832613030626331356335622C6F70657261746F725F30353131346330636265316634633230393562333231366631336366623638312C6F70657261746F725F36623532376564313338633334336138396464663733636631366665663536352C6F70657261746F725F64666337616630393739613534653865396133663138623761356436363033302C6F70657261746F725F33646434383663643538646134363764626438336165343230646231343831352C6F70657261746F725F33366433623839653337386234353163613839643161343161336335336531302C6F70657261746F725F39396134326134363762626634653832396664303730363530376339663761372C6F70657261746F725F32623766366532386639613734383534623733393965383734306237363566642C6F70657261746F725F64316234353337393964363234383562383265303237623936623539366363642C6F70657261746F725F33376139613639363634343834363966396439616265326538616562316239652C6F70657261746F725F33623165376335643565306534363163393065316630303332663637396132352C6F70657261746F725F61666538393363366265373434633466393831383762303834616338333265372C6F70657261746F725F66353733383864313339303334303939393332633336613935356466363235612C6F70657261746F725F66376332323061383162613834333933386638636362313038626563396330332C6F70657261746F725F34613035666663666533353134373633393161303336393337656166373333662C6F70657261746F725F62656561613766346232343434343330613637333265636338336334353361322C6F70657261746F725F36313331393432646432363434373930623830646631336331346662336165382C6F70657261746F725F62333532653432343665373534613936393162636339303131663434353636352C6F70657261746F725F35393832333530663764306534623263613732646536343330306437353232332C6F70657261746F725F64616431303763316165623034313962383030346435376639643730323233652C6F70657261746F725F39316637383731336333303834623665396237343139653261393763376461632C6F70657261746F725F33623661386636316532306534626632393433343231616632313139653962392C6F70657261746F725F39656534656535363265616134373561393566343564336461656230323230612C6F70657261746F725F30363234346366333532306334396538613435636264653832613533666135652C6F70657261746F725F36363666353065306633623034663462613433626362346537313963316538642C6F70657261746F725F34356366366538663963323534653530393339396465646130383066306532302C6F70657261746F725F64666138323536363531613834323639383639633335636131663130636165352C6F70657261746F725F31353533643961393761346234303633613436663462653431653761646564642C6F70657261746F725F38366135303237323962646134366630623630376332623463363533316264332C6F70657261746F725F31353439356265656265393834636431396463333064363536373663346334642C6F70657261746F725F33386633383731663738396334393336623337643137656134383233646135382C6F70657261746F725F62336166386662363561303034313863393636623866326135616339373430302C6F70657261746F725F34663761356264313865316534656433383439613934633438633134633561312C6F70657261746F725F35633135636635633337363134313961393032396534653039346338663533632C6F70657261746F725F32373161346165393836303334316536613330363032303730323638653165342C6F70657261746F725F62636638636635616430373334646337383563626137313661623433376339332C6F70657261746F725F33626663363237323066656634373036623232633738643639643237613237352C6F70657261746F725F65653738313534356166373134346131386633306235343932656534396663382C6F70657261746F725F66653062653034343363626134613539393362366435663931656165386538392C6F70657261746F725F34633530316366376238336634623035386130356265313531323763386564622C6F70657261746F725F35353031313864633839623934333965623063643064396165623164353961342C6F70657261746F725F65336161633161663363623834353631623937303138636635633534366434392C6F70657261746F725F35383164393464356530343034353366616262393635623230303037333832382C6F70657261746F725F37303638303232633039636234623638623364343764643962386562316533622C6F70657261746F725F33353134653430666363373734346235386437626462396437313535386430392C6F70657261746F725F39396235333531343139396634636561613037303736346563356237366337352C6F70657261746F725F66636230613239386337646134643735383163313930643535646332356239352C6F70657261746F725F62366638386333656135383434636366383334623463663134656265333635632C6F70657261746F725F61363464326437306538643734626437383237633861343933366430373261642C6F70657261746F725F33373862303233626662373834383131396137613537663439323764626566322C6F70657261746F725F35666237303662386130653834326136383564316266656238656263393839372C6F70657261746F725F39333332623764356632616634643661626661623664376232366134306537652C6F70657261746F725F61663061663461353432643734653137626437373530323139393032303331662C6F70657261746F725F34373363373137663839613434376464623234336634323065393933643266312C6F70657261746F725F34373432663330393538353034353664396364643930373863303734623662362C6F70657261746F725F63376630616433383138333234653634613136633236656235626138363963632C6F70657261746F725F61313461626263626666656534653538613639383234376464326338303062382C6F70657261746F725F31663162383361623939373234616362383134656334386331303932616566632C6F70657261746F725F38343866323165303939393934663734396664333761383538316331333936302C6F70657261746F725F64323437616565336434356334633563623966653031653738376337613434342C6F70657261746F725F62626631316639613438666134646164393936383731393763353137363239342C6F70657261746F725F66333038376239373039653734656431623432633732643432623162373139362C, 0x6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033332C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033302C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032332C6D6F64756C655F32393765306366393434653937363265303134346539376466643665303063392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032342C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032352C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032362C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032382C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163313130302C6D6F64756C655F63346536336334313731646234616532613833663764666363323635366230652C6D6F64756C655F65366562303136353232333434373231383431306638363761393631343330302C6D6F64756C655F34313765643364336366346434623761393339363133383239653864623137642C6D6F64756C655F37613335383436613330356334326162623638363031623466373334373238392C6D6F64756C655F63383763333530393761326434626338393866653665396231653238306133642C6D6F64756C655F38663533373036643461663534313538386264653333346439396434343732372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163323230302C6D6F64756C655F33626634633138323962663434373937393836356663346432616237353830312C6D6F64756C655F34303930636163303665313534353937383962633531353465656636376534652C6D6F64756C655F33646563343431383631373534323463626565326430356666626236393064642C6D6F64756C655F38613162353162623666616534666163383539316634663338376432353066662C6D6F64756C655F33653034386565323633633334343331386539633439393561356364333565302C6D6F64756C655F65383665356263396165356434346537386134383534336366333438636138322C);

-- ----------------------------
-- Table structure for `pt_station`
-- ----------------------------
DROP TABLE IF EXISTS `pt_station`;
CREATE TABLE `pt_station` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `parentstationids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `operatorids` text COLLATE utf8_bin,
  `moduleids` text COLLATE utf8_bin,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_station
-- ----------------------------
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '根节点', '1_open.png', 'true', '岗位组织结构', '1', null, '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '0', '人事经理', '2.png', 'false', '人事经理', '6', '8a40c0353fa828a6013fa898d4ac0020', 0x6F70657261746F725F3532302C6F70657261746F725F3532362C6F70657261746F725F3533302C6F70657261746F725F3532372C, 0x6D6F64756C655F38613430633033353366653035363562303133303030312C6D6F64756C655F38613430633033353366653035363562303133303030322C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '0', '财务经理', '3.png', 'false', '财务经理', '8', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '0', '行政经理', '4.png', 'false', '行政经理', '7', '8a40c0353fa828a6013fa898d4ac0020', 0x6F70657261746F725F3532302C6F70657261746F725F3532362C6F70657261746F725F3533302C6F70657261746F725F3532392C, 0x6D6F64756C655F38613430633033353366653035363562303133303030312C6D6F64756C655F38613430633033353366653035363562303133303030322C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '0', '测试经理', '5.png', 'false', '测试经理111', '9', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '0', '研发经理', '6.png', 'false', '研发经理', '1', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', '应用Java', '8.png', 'false', '应用Java', '3', '8a40c0353fa828a6013fa898d4ac0027', 0x6F70657261746F725F33373231386662353265633934666234626637363230396131373931363039342C6F70657261746F725F63316539393164316635363734393239386331386666363964373737376530622C6F70657261746F725F62313362303032653266616434653935626265306534646263396662646665312C6F70657261746F725F39613730386633396531323334353565383462363132353737346261623165612C6F70657261746F725F34333765303564303964643934373230623637633466323330636465626535382C6F70657261746F725F30666237393338633764363134666333383935363865623637623434323330332C6F70657261746F725F66373731363931313334633334313734613831396235393930333130643030302C6F70657261746F725F38383662643439373036346234633966383764383436316562626134323164312C6F70657261746F725F61613132363933323634316634653036386564383237386133333264653835642C6F70657261746F725F66623661306331653631383034316263626266386366643431333131623166612C6F70657261746F725F66373731363931313334633334313734613831396235393930333130646135362C6F70657261746F725F37656435656566626266336434616137386430633562393966336237303130632C6F70657261746F725F63663236633164326261613234613837393162336432363431353462383064342C6F70657261746F725F62383264383666623762363434393861396332623862396139396233666265622C6F70657261746F725F31303439396263376639636234616466393962656261303033343362346561362C6F70657261746F725F39663735623437626463303234396532623439336334373338343738356137322C6F70657261746F725F61316666363861636639623234633334623334376666323165333333636237302C6F70657261746F725F61363632336336353438306634663263623633613464373637336638316533612C6F70657261746F725F64663061613533343635353234326534613062636436333862353161346530332C6F70657261746F725F34613635343461653761323534386164383163306533393934393939303233632C6F70657261746F725F39316261656437383962633134656664626562623130623439633639656535622C6F70657261746F725F63303461646364303139653034636633626137633636616637323161313864632C6F70657261746F725F66316636663263386630323634393863386565363462376139313864303664662C6F70657261746F725F35666361633130376338306434393364393162353361383135643462323937612C6F70657261746F725F64323437666234356265373234656432613262623563393264373362663663662C6F70657261746F725F34333736383838666437346634323437613932363532396535646130333434322C6F70657261746F725F64343739646264633930316634643835613230376239626163653634363561632C6F70657261746F725F37393033396132323630646134366230616162623561363265386462366338372C6F70657261746F725F31613862346438653434313134313266613862623536313339333536336138352C6F70657261746F725F65373534646664623739346434653764623630323363396230383961333430632C6F70657261746F725F34386462353166323062353034633461623438396231646366643365636264392C6F70657261746F725F62633263383635626536616634326366383631323934643434366662316336662C6F70657261746F725F64343936623136316432353634313131393932363837623934383836323234342C6F70657261746F725F31623064373437363937346534626639623532663735666238326638373333302C6F70657261746F725F61353238396232363338643834356662623036646564626364643531376639372C6F70657261746F725F63396430313364313463626434663134386662343536326339313830336565382C6F70657261746F725F32323932366562313936613134623438626537373566343838306235626139342C6F70657261746F725F62383333396632396438643834613465616436343534323935663837623739632C6F70657261746F725F65303337653062616539613934653534396436623634376462343961363461312C6F70657261746F725F61306330316135323438636434626633386535373934356462623262393863352C6F70657261746F725F33656535663938363238396434613139393066346534326339613063616164622C6F70657261746F725F34646638303532316536363434373631383739366333636665303262663233392C6F70657261746F725F36353639653064396632636434653361393761663465316230636438643266372C6F70657261746F725F66313663616464386638316534626566393236653039663731386462386665322C6F70657261746F725F30393138353564643830396234313866616538386137666563366439663234362C6F70657261746F725F30316161306338356338623834616538616361376635343834333336623230332C6F70657261746F725F64356338626466376134396134653436623737366330356463396561643438342C6F70657261746F725F32626533343939313832376534653864613865393266396239653862636532352C6F70657261746F725F38663739383537623331643434373561393463373132653939376538396339392C6F70657261746F725F31323134316331633362653234316361386138363862636539636436313064352C6F70657261746F725F32316230613931306566366534633630613332356435653537653665366636352C6F70657261746F725F64316531346530623766363934373833393438353064323233383231343639322C6F70657261746F725F37346161323034343231303534303864393066396536343639613361393262352C6F70657261746F725F38383937646265383562336534653639383964363632343935323732636632362C6F70657261746F725F37616536323733376466343434643631396638666433373633363064313630632C6F70657261746F725F33333564316638663436656234376131383030313838396638636332313334382C6F70657261746F725F37636331326235633135346134613937383263353138633537653861623361612C6F70657261746F725F37386336303236633661663434623431613662656634636462346366623431342C6F70657261746F725F31353536366536336633313034633733623461306234613738346464313163612C6F70657261746F725F61636263656234333262353834396163613965396232383432343032383165632C6F70657261746F725F64363436646138373037616534313833386664326563396266306434363765652C6F70657261746F725F32396331386233333934393234633330383832646130343964613134616439392C6F70657261746F725F63306363666364313237633334376138623964623134306535616136323138382C6F70657261746F725F63613066366461303161646134313965616137373339643937393065356238382C6F70657261746F725F32333333353662363364386534373766623665393438623730333233323830392C6F70657261746F725F33363263663234373234316334643132623632343233303165346137333531362C6F70657261746F725F63323965613463626439303434626337383665396634353834616438343066662C6F70657261746F725F32666262633963666230626634623562623530346561643135356333343233632C6F70657261746F725F63373133323235306635303534623830386262313139313232613665636235322C6F70657261746F725F30396236636532393331336334303531626137363564653531366139623238332C6F70657261746F725F64633735306535376235346634626163613738643636393639333231656535312C6F70657261746F725F32313134316461346665626534633932396162653337313236623337666431322C6F70657261746F725F63303831633530393138663434353966386533366162386362343135316136312C6F70657261746F725F32666565393031313137633634653138383733663630653866383030373133642C6F70657261746F725F37656162356638303062616234656662386466316232653861303537356637332C6F70657261746F725F33326133653539393634323034613363383834386538346238363433303661652C6F70657261746F725F38626439633065313464663934316364616636323533636430386462643963642C6F70657261746F725F37623432383164643234376334363234626565306438663834633263323731352C6F70657261746F725F63303536343234343265306134363865626534663062373737316138303361652C6F70657261746F725F35623234396164333434643934386239396635383736386333323366356637312C6F70657261746F725F30646131356334393239396434316134623732306637383764303533653363622C6F70657261746F725F63633662636265653430616234336232626435616666366439333835653166632C6F70657261746F725F38336566383566643137383034626231393564306164336330376638386333302C6F70657261746F725F61643531613663613935633634366365396330333737386564613731353733342C6F70657261746F725F36646165643531323834663934393233623163386136343134653634363935392C6F70657261746F725F31623161383039383135353734623261396331643065313864363932646531372C6F70657261746F725F62323362313764346338333234326538613161386565386366636465393930372C6F70657261746F725F39313039353563323139326134313839393565656162386266313533373265392C6F70657261746F725F61643039613162383937373434383132383735633735326332643730663131612C6F70657261746F725F66383263303231646334343334313966623234363930333261663733626633652C6F70657261746F725F30353364333330343632653134353963613130313263396432393131336263342C6F70657261746F725F35386138353034306161396634306363613062646261366532336533303336332C6F70657261746F725F62346565346165343339316634323433626536396538333835343564323133312C6F70657261746F725F31303436333839643835323534353136393766323739333138356537643665652C6F70657261746F725F34366530306566306664323334653964626636386564396262623433376430662C6F70657261746F725F62383231383934356238653734336632393635313536393935303031343531312C6F70657261746F725F64313135643038353931656634633065616562656631356638323934623238372C6F70657261746F725F32333564383535643762393134643732386534333466306633303961613034642C6F70657261746F725F66643939373864663563356134376632393865326432386532316537306231352C6F70657261746F725F38636138616635303135323234333964386339323439653030646235643738642C6F70657261746F725F64666539643734666530656634323230626663666536643762623266393433362C6F70657261746F725F32633931343637663930356134663562613966353238333031333163386164392C6F70657261746F725F34383164346435633061363334633430383563373263393930323630653538642C6F70657261746F725F34323064386562633638616434346463383138386434633237646335383564312C6F70657261746F725F35313438656132303762393734656531393766306263353730363061623161642C6F70657261746F725F30373733613538633462646234383538616230363263346132613464613639612C6F70657261746F725F39373635653662623736656234306162383030636238393534383232313930652C6F70657261746F725F37373832336531323339316134373732396131663832613030626331356335622C6F70657261746F725F30353131346330636265316634633230393562333231366631336366623638312C6F70657261746F725F36623532376564313338633334336138396464663733636631366665663536352C6F70657261746F725F64666337616630393739613534653865396133663138623761356436363033302C6F70657261746F725F33646434383663643538646134363764626438336165343230646231343831352C6F70657261746F725F33366433623839653337386234353163613839643161343161336335336531302C6F70657261746F725F39396134326134363762626634653832396664303730363530376339663761372C6F70657261746F725F32623766366532386639613734383534623733393965383734306237363566642C6F70657261746F725F64316234353337393964363234383562383265303237623936623539366363642C6F70657261746F725F33376139613639363634343834363966396439616265326538616562316239652C6F70657261746F725F33623165376335643565306534363163393065316630303332663637396132352C6F70657261746F725F66376332323061383162613834333933386638636362313038626563396330332C6F70657261746F725F34613035666663666533353134373633393161303336393337656166373333662C6F70657261746F725F62656561613766346232343434343330613637333265636338336334353361322C6F70657261746F725F36313331393432646432363434373930623830646631336331346662336165382C6F70657261746F725F62333532653432343665373534613936393162636339303131663434353636352C6F70657261746F725F35393832333530663764306534623263613732646536343330306437353232332C6F70657261746F725F64616431303763316165623034313962383030346435376639643730323233652C6F70657261746F725F39316637383731336333303834623665396237343139653261393763376461632C6F70657261746F725F33623661386636316532306534626632393433343231616632313139653962392C6F70657261746F725F39656534656535363265616134373561393566343564336461656230323230612C6F70657261746F725F30363234346366333532306334396538613435636264653832613533666135652C6F70657261746F725F36363666353065306633623034663462613433626362346537313963316538642C6F70657261746F725F66353733383864313339303334303939393332633336613935356466363235612C6F70657261746F725F61666538393363366265373434633466393831383762303834616338333265372C6F70657261746F725F62336166386662363561303034313863393636623866326135616339373430302C6F70657261746F725F34663761356264313865316534656433383439613934633438633134633561312C6F70657261746F725F35633135636635633337363134313961393032396534653039346338663533632C6F70657261746F725F62636638636635616430373334646337383563626137313661623433376339332C6F70657261746F725F38366135303237323962646134366630623630376332623463363533316264332C6F70657261746F725F31353533643961393761346234303633613436663462653431653761646564642C6F70657261746F725F34356366366538663963323534653530393339396465646130383066306532302C6F70657261746F725F64666138323536363531613834323639383639633335636131663130636165352C6F70657261746F725F31353439356265656265393834636431396463333064363536373663346334642C6F70657261746F725F33626663363237323066656634373036623232633738643639643237613237352C6F70657261746F725F65653738313534356166373134346131386633306235343932656534396663382C6F70657261746F725F66653062653034343363626134613539393362366435663931656165386538392C6F70657261746F725F34633530316366376238336634623035386130356265313531323763386564622C6F70657261746F725F32373161346165393836303334316536613330363032303730323638653165342C6F70657261746F725F33386633383731663738396334393336623337643137656134383233646135382C, 0x6D6F64756C655F38613430633033353433323865353237303134333238653838346265303031362C6D6F64756C655F70696E675461692C6D6F64756C655F70696E6754616930303032302C6D6F64756C655F70696E67546169303030342C6D6F64756C655F70696E6754616930303031362C6D6F64756C655F70696E67546169303030372C6D6F64756C655F70696E6754616930303031322C6D6F64756C655F32393765306366393434663863636537303134346638653136366134303136372C6D6F64756C655F70696E6754616930303031352C6D6F64756C655F70696E6754616930303032322C6D6F64756C655F70696E6754616930303031302C6D6F64756C655F70696E6754616930303031382C6D6F64756C655F70696E67546169303030362C6D6F64756C655F70696E6754616930303032332C6D6F64756C655F70696E6754616930303031312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032302C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033332C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033302C6D6F64756C655F32393765306366393434653937363265303134346539376466643665303063392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032332C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032342C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032352C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032362C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032382C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163313130302C6D6F64756C655F63346536336334313731646234616532613833663764666363323635366230652C6D6F64756C655F65366562303136353232333434373231383431306638363761393631343330302C6D6F64756C655F34313765643364336366346434623761393339363133383239653864623137642C6D6F64756C655F37613335383436613330356334326162623638363031623466373334373238392C6D6F64756C655F63383763333530393761326434626338393866653665396231653238306133642C6D6F64756C655F38663533373036643461663534313538386264653333346439396434343732372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163323230302C6D6F64756C655F33626634633138323962663434373937393836356663346432616237353830312C6D6F64756C655F34303930636163303665313534353937383962633531353465656636376534652C6D6F64756C655F33646563343431383631373534323463626565326430356666626236393064642C6D6F64756C655F38613162353162623666616534666163383539316634663338376432353066662C6D6F64756C655F33653034386565323633633334343331386539633439393561356364333565302C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', '应用经理', '7.png', 'true', '应用经理', '2', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', '应用C++', '2.png', 'false', '应用C++', '5', '8a40c0353fa828a6013fa898d4ac0027', '', '');

-- ----------------------------
-- Table structure for `pt_syslog`
-- ----------------------------
DROP TABLE IF EXISTS `pt_syslog`;
CREATE TABLE `pt_syslog` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `actionenddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `actionendtime` bigint(20) DEFAULT NULL,
  `actionhaoshi` bigint(20) DEFAULT NULL,
  `actionstartdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actionstarttime` bigint(20) DEFAULT NULL,
  `cause` char(1) COLLATE utf8_bin DEFAULT NULL,
  `cookie` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` bigint(20) DEFAULT NULL,
  `haoshi` bigint(20) DEFAULT NULL,
  `ips` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `referer` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `requestpath` text COLLATE utf8_bin,
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `starttime` bigint(20) DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  `useragent` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `viewhaoshi` bigint(20) DEFAULT NULL,
  `operatorids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `accept` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `acceptencoding` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `acceptlanguage` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `connection` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `host` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xrequestedwith` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `pvids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `userids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_syslog
-- ----------------------------

-- ----------------------------
-- Table structure for `pt_systems`
-- ----------------------------
DROP TABLE IF EXISTS `pt_systems`;
CREATE TABLE `pt_systems` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `numbers` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_systems
-- ----------------------------
INSERT INTO `pt_systems` VALUES ('0c1230c98ef34e58947903fab5a4fa85', '0', null, '易信平台', 'yiXin', '3');
INSERT INTO `pt_systems` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '基础平台', '基础平台', 'platform', '1');
INSERT INTO `pt_systems` VALUES ('d3a5c976c4c24751b6b00ec775692683', '0', null, '微信平台', 'weiXin', '2');

-- ----------------------------
-- Table structure for `pt_upload`
-- ----------------------------
DROP TABLE IF EXISTS `pt_upload`;
CREATE TABLE `pt_upload` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `parametername` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `contenttype` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `originalfilename` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_upload
-- ----------------------------
INSERT INTO `pt_upload` VALUES ('0f2cc2d5c8ea4181bd6e257ee944a125', '0', 'file', '290036efa2384bdb85d4d5d2a4f642fe.png', 'image/png', 'IP.png', 'webRoot');
INSERT INTO `pt_upload` VALUES ('1226549a9de748d9add36dfed9160369', '0', 'file', '1ffa644236054ec190d7fc0ac33e3033.jpg', 'image/jpeg', '20130519_122955_8208.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('282f52e6af2743c1971afe2b25b22dbd', '0', 'file', 'c739d3b2155642b5876a4b61ca30f405.jpg', 'image/jpeg', 'yy.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('3e6243bce6d34d78a85ba6c907de3b0d', '0', 'file', '6e43b4a0b16043aaa55f970202644482.bmp', 'image/bmp', 'ip.bmp', 'webRoot');
INSERT INTO `pt_upload` VALUES ('9c9c66b2796341b19327228e257d1ca9', '0', 'file', '99eb488c98274390b33d6b35b9b4e57b.jpg', 'image/jpeg', 'code.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('a2e07cd887524aa9b8737a6b803c88ab', '0', 'file', '866006669c6f4d118d2a2593866ee027.jpg', 'image/jpeg', 'code.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('ebf38b8979fd4116a66176a1ba8a9acd', '0', 'file', 'bd8b6cb6a41e4f73b5bfbdcf1f90f3ff.png', 'image/png', 'XXX.png', 'webRoot');

-- ----------------------------
-- Table structure for `pt_user`
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `errorcount` bigint(20) DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `password` blob,
  `salt` blob,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  `stopdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `departmentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `userinfoids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `stationids` text COLLATE utf8_bin,
  `deptids` text COLLATE utf8_bin,
  `userids` text COLLATE utf8_bin,
  `groupids` text COLLATE utf8_bin,
  `departmentnames` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `stationnames` text COLLATE utf8_bin,
  `deptnames` text COLLATE utf8_bin,
  `usernames` text COLLATE utf8_bin,
  `groupnames` text COLLATE utf8_bin,
  PRIMARY KEY (`ids`),
  KEY `usernameindex` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('03a44ba0aa4e4905bea726d4da976ba5', '6', '1', '0', 0xF1F086AE167055D1183C2CF37EEB10EF41EFFCD6, 0x87FFE243576B1A8C, '1', '2016-01-24 16:49:44', 'admins', '8a40c0353fa828a6013fa898d4ac0028', '03a44ba0aa4e4905bea726d4da976ba5', 0x3861343063303335336661383238613630313366613839386434616330303236, 0x646570745F342C646570745F322C, 0x757365725F30336134346261306161346534393035626561373236643464613937366261352C, 0x38613430633033353366613832386136303133666138393864346163303032382C, '运维部', 0xE5BA94E794A84A617661, 0xE8BF90E7BBB4E983A82CE7B3BBE7BB9FE5B9B3E58FB0E983A82C, 0x61646D696E73, null);
INSERT INTO `pt_user` VALUES ('526bd23b6ad74ae09ea7fdcc3d563e23', '0', '0', null, 0x9058602769A9E4E981BD3254120864CFAC93A389, 0x51E72CF9A7EAA33E, '1', '2016-04-03 19:00:13', null, null, '0dc1565e17f04483a5ed88bae9bf20bc', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `pt_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `pt_userinfo`;
CREATE TABLE `pt_userinfo` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `addressinfo` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `avoirdupois` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `bloodgroup` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `clientlevelend` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clientlevelstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `culture` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `finishschooldate` date DEFAULT NULL,
  `folk` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `government` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `homepage` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `householder` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `idcard` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `marriage` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `msn` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `nativityaddress` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `postboy` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `qq` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `schoolname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `speciality` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `stature` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `bloodgroupindex` (`bloodgroup`) USING BTREE,
  KEY `emailindex` (`email`) USING BTREE,
  KEY `msnindex` (`msn`) USING BTREE,
  KEY `nativityaddressindex` (`nativityaddress`) USING BTREE,
  KEY `postboyindex` (`postboy`) USING BTREE,
  KEY `schoolnameindex` (`schoolname`) USING BTREE,
  KEY `specialityindex` (`speciality`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_userinfo
-- ----------------------------
INSERT INTO `pt_userinfo` VALUES ('03a44ba0aa4e4905bea726d4da976ba5', '6', '湖北钟祥', null, '55', '2012-03-07', 'bloodGroup_A', '2015-03-26 19:16:26', '2014-06-09 11:21:13', 'wenHuaChenDu_chuZhong', '湖北钟祥', 'dongcb678@163.com', '2010-10-25', 'folk_han', 'government_dangYuan', 'http://www.4bu4.com', '湖北钟祥', '420881198609285832', 'marriage_no', '13871558042', null, '董华健', '湖北钟祥', '431924', '150584428', '西安外事学院', 'man', '电子商务', '165', '027-65155060');
INSERT INTO `pt_userinfo` VALUES ('0dc1565e17f04483a5ed88bae9bf20bc', '0', null, null, null, null, null, '2016-04-03 19:00:13', '0000-00-00 00:00:00', null, null, '497259869@qq.com', null, null, null, null, null, null, null, '13381200212', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `test_blog`
-- ----------------------------
DROP TABLE IF EXISTS `test_blog`;
CREATE TABLE `test_blog` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_blog
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_article`
-- ----------------------------
DROP TABLE IF EXISTS `wx_article`;
CREATE TABLE `wx_article` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `messageids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Description` text COLLATE utf8_bin,
  `PicUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接，支持JPG、PNG格式，较好的效果为大图640*320，小图80*80',
  `Url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '点击图文消息跳转链接',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_article
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_file`
-- ----------------------------
DROP TABLE IF EXISTS `wx_file`;
CREATE TABLE `wx_file` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_file
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_group`
-- ----------------------------
DROP TABLE IF EXISTS `wx_group`;
CREATE TABLE `wx_group` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `count` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_group
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `wx_keyword`;
CREATE TABLE `wx_keyword` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `question` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '问题',
  `questionkey` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '问题关键字',
  `answer` text COLLATE utf8_bin COMMENT '答案',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_keyword
-- ----------------------------
INSERT INTO `wx_keyword` VALUES ('d0465d02b6da472384e1277ea6b05a64', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d04bb9cdbe5b4e9cab55a46ddb791d85', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d07216b54c5e42159d59c28f9ca7680a', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d0a9bd3fe58545a79739cebd768dc28d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d0ea8bbc5d2342c98ea50f56c7c637e7', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d156978a81f0499e9a2377aa91c164ce', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d1dacee0f0dc43fcace54ed1cd807312', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d2ae9f12b349417db0f8e2feef1f7e41', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d2d0e1ab8f6d426c96626b3af00dd061', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d2fe6d7b162640aab87c559d479b7364', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d3173412b4e9449fb5d4a6100fa88e64', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d36a51a11762415d8ab1601ca0ea7c73', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d43a300e10cb4f5786a6fbbfac3979b5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d4574ae832f148328e12655014cacd8f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d487657970bf4b1b9bbec24d2fffb462', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d4a5060fdea6471699acd4a44d078e2a', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d4e700cae3e64fd9be2ee5b25c0046ca', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d55623185ccd4bd1af0d09c53883842a', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d556fdc4a682400cb9abbdd70f7d962b', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d55861b7abd8444e99d69f9fc15ee2ee', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d590732d60f849f58477e775a70b6eab', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d5938dcab21f450d8aeb283cc5a833a0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d59471330444431081de2dc7452a9bb9', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d5ba696a563642a2aa2e8894b50f1bcc', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d63d44985f1a459cb29c035955bde7c0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d63e31802a4149aba7335d5eae46516f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d76d06035f3c4c97a645e3752e8e4354', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d7ab7af4a9f04c0f9a58a332aa1ce0e4', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d8132da103b4459492f5b339e14af263', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d8370a1ebe454c5bb3f843d64f8f34ae', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d88c1b100e4944b6ad1e671ff19190bd', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d977193bffa94f8294d5cfc4c9f7d0c4', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('d9cce2394ac54765836a2221b231b659', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('da8d914da42d4d1a9f1b448409c669c5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('daaf053cdf7b4a5b81112b61e331fb87', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dabd93cd69be489e8c092e8a2933eb53', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('db065cf0d9be450e97461bfb392a1b70', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('db093d5b8b9849a0a6888d9290d76ad2', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('db890bb0b8cd4da0b9c29c0fcd9fe566', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dbb4fa4c8b9644ed8c88cf0c1870bfc7', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dbcdbf25b4fe49638da79ae480ecff66', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dc29fef018684e138917417b1978e8f2', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dc3e0102270c4e44b671b5b91f72964e', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dca540de56fb47b690f9764bb0f0e8a9', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dcf15d9b1e7e4f929f4b3e6c60781d86', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dd18750450de41c6ba2c1ba51475cf3d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dd61e2a4dde14bbba4006281389e7206', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ddcdba43ed6e433fa2b40d9497c2999d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ddd124ea2fca498a92098f3455dc589f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('de18ecef51aa406d91c97c489e0add6c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('dec221a58dbf4054b36d85d13b769f9f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df1a365f2c8b4cbab12f1161881614a8', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df24f6b8a7374e1fbb33e689b40d9114', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df65ce6281e647c5bcffdfdcf6d9b248', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df74fd59822a4bc98c4e48792b51d4c2', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df82a35489b44bcdb812c521e116752a', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df8789088a0a42f3bdc625b15e44caff', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df89f4bc15ee409497c068b0679d0d4c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('df90cd6fcbfd42078467af9cbd7a1ad6', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e01fe5b573c14be08c228d46b0f3a3de', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e02c0e9511e14462905f03e749718ffb', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e1262c0e2cf04c3c8723dd362560ba46', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e1e6625d6b9148c6ad88d0ba3a3556f1', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e28ea734ea5c40ca8efc3c1b5a985b07', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e305c4ea8d9e4601bb0ac1fcda094ab5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e370a3ea1a944897af434c4854ec1494', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e3db3b2d7ac142f693a7b8668b4b8fa4', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e3f88e8f4769471cbd1290ea47a32a1b', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e42a30eabb2847fbb20ce558aaa8bf16', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e4376336a0f84c63bdf62e178baf19ec', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e4858b3ec34743d78403a1d16a26dc8d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e4b23a07f43c409cb8df06518426053b', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e4fac0c633b149629a816d5a2630d0c2', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e5041c5062e8424badf601eaadcf3e90', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e514b84d445f489e9a715c27586930ad', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e53c31e45a324f00bbc15c4c39e5fda7', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e547a7db67b44e76bcbd37a809c188a5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e54c894f4e4b4a9f915a4dc12f8fd3e6', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e5590e79868f4efa8c5607a18aeabe26', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e58d3fe4d54c4cda924151cb860736d0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e5bb712385a7407ea7b91c7eb6671617', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e5e7cfe78ca941198f6aabcad0bc0d45', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e5fe35adb7384578ac691ab103cb5f70', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e63a4efdd723484badc69a98c9cf6234', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e6c3caf7a6dd4b30b8d6e452e41102fd', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e702d20c01ae42d4bbcb2db668912827', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e73cc519e7fb47d3b9606c97fae80a03', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e75659f3d6be45c78b675d15037232f7', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e770307d1c8c492ca732119055c79ce1', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e8021daeab8e4dd3bd56267d16352cff', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e82b975efa93474b9c77dfce7f2944ed', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e83089880d5046448925e9bf0c5c7601', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e8860bc98adb4ccbb2d8a1f4f63f7112', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e8a987179dd541a1bd002e0dfc68910d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e9125d95fdd74f27bf04df688bcfbaf1', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('e99b33c4dabc4cbd8a6a70f07fd54006', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eaa10d2075ae40d0b497b8cb39b6072f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eabd6e2e9e644afeab6cb59ba2ea239d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eb0ce7df9c334b758224d2c560b47159', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eb19c44684b34435a71630895928fa01', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eb6a65d6aabd4c6b82dc81c86b8b463f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eb7e3f2d9a92438491c3264ff5b7b70d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eba18837dae74ab986b2873bc7f7908f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eba7a15fcb5d4fecba6a4a9a188d0fb8', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ebe51815e29947ba90c3ef03013f387d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec1481801a28444f8d5ec0cc8222ae7d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec2b285b4e9b489283199d425d241fca', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec2d6ecccb6643cab0ed49825b25ead0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec67877a28a74efca0a995f83caafd55', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec7e9b4ffb194cd09ad3cd001892de51', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ec95f843e99146478f17333647a94ba4', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('eca4946ef8ab48dfa337aad393a89253', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ecaa3e3ffbd54ab484b21102d2eb856e', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ecac123a72074daaa347ce806d6d8549', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ed04f9800b5444e9b12513bceb379af5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ed92783986ad4482b99f1784e397e69e', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ed92e0bea91244e19fe64019a863bc7c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('edf61b0df87a41af94f04569a3dcfecc', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ee880a8f65904049a94af237d4d51853', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ef5383f91a75451fb3fe0cd9854006ab', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('efaaef70e2ac44db9eaca05765a24d88', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f06facbf4e5347fdb991fab522880545', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f0b8f2c5f1b4482bb54b6b797b86c5cc', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f146c3b5783f4fa08aaefd2adeb44d56', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f188c562b1284c6483655b7c16616733', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f18c48807e4f45e0883bb3adb775bff1', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f20088d74b2442da99b8188c385949de', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f297c26405b545d499bea2c842bf792d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f2bc802150b94578814d5b5df113da35', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f2c2b2ee34354dc8b30e4a0ae8113f2c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f42d747e82f04835be959d7459b9e09e', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f46e1bd8fa8047cfb017447cf471c393', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f4a813d4dfeb4fca96eef8d6194006c0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f4c40e5792dd46e0ae0345d7fc63cde2', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f4eeade29a5b4adbab9792dbc01dee04', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f4f5382eace64f22864c96ed9bfaa7ce', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f5789b77d19d48baa6595ce5b1172eba', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f5aeb41280d948fdb06b679732905dfd', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f609050359b747eaaa790fd4e2a96e57', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f65c84d0258b4df1b3750131227bdb2c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f6aae4f34c6445cfa057a7f55a3f0c2b', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f726773dfd2d4d9487132bda426c60c4', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f73b38217df949d9a3334d6bd9977dde', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f7cb28f28a854fc0a432a2551bd0380b', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f7cfe59172e347908f8392e171a7cdea', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f8017fcfe8ff431886cedcd17fd1df09', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f82992eca1874e978ee1f9794004f602', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f83dccf234de411982b9703441e4e259', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f8605c9cd99d4cb48f64858d992ccb71', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f8607cb6c8134efe810bab8bcf92eb80', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f863ed59552247fc95cccb27655a91cd', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f869337189c34f288b6d75664c86208c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f87f63d4ef8c436bbf6730c24f4a02c5', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f89f2761953749e6be88804f489c5f6f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f92f84dce35f4e32b2b4f61c9a58a55d', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f98a0dc9e8c442f68de3efed33acb3c0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('f9e4ecf0158d4ee9bf3404aa8d72e636', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa235c2c46b041aeb9f170800c3090b8', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa2403537603400ca528ff3b54ee62a0', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa391b19b7d04adf93712f424ee1ce05', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa577d109a2c44b79c54376a50a83722', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa5a3f204a9e4bc8834f610f2e2cbc4c', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa62a6b30d264ddb9885209d571621ff', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa688b651b514587a4021bc638aa5b3f', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa7b2fe4533f455991b1b9daf1d855a1', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fa9c57bb5f5042d49638acf072b01241', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('faedd3609c3b4434b00fab0faf2b1707', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fb0e6cca249e4d778d38c5e68983d4f6', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fb557289ffd944309c1cf3c8805095ed', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fbd66c87fb91455cbacca1291ad4e711', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fc35b3ca304043efa92b90f225bb1484', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fc37987d1d5842fba34e18ff1febf805', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fd644edb0b6d4c60bf254594c0b91bf6', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fe3f5a27b45d409cb360c827e173b4ea', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('fe7799268dbc41db888de35ddab8c1cd', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ff1e59e23ef0451caaac5e547068bada', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ff2d33c85be0492cbc7e7d597d4f10ff', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ff9d68150aa541f694c35488396c1851', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);
INSERT INTO `wx_keyword` VALUES ('ffbec8790b254055a6ca7d1cdc59d4e3', '你喜欢的歌手是谁？你早餐喜欢吃什么？', '歌手，早餐', 0xE6AD8CE6898BE69C89E58898E5BEB7E58D8EE5BCA0E5ADA6E58F8BEFBC8CE697A9E9A490E5989BE5B0B1E698AFE99DA2E58C85E5928CE7899BE5A5B6E592AFEFBC8CE598BFE598BF);

-- ----------------------------
-- Table structure for `wx_location`
-- ----------------------------
DROP TABLE IF EXISTS `wx_location`;
CREATE TABLE `wx_location` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `open_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `lng` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lat` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bd09_lng` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bd09_lat` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_location
-- ----------------------------
INSERT INTO `wx_location` VALUES ('efb2705cf2954705bc852530a3153374', 'fromUser', '113.358803', '23.134521', '113.36532234852', '23.140328961348', '2014-11-19 10:33:52');

-- ----------------------------
-- Table structure for `wx_message`
-- ----------------------------
DROP TABLE IF EXISTS `wx_message`;
CREATE TABLE `wx_message` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `inouts` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '0接收，1发出',
  `datatype` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据类型：XML或者JSON，0表示XML，1表示JSON',
  `datacontent` text COLLATE utf8_bin COMMENT '接收或者发出的数据xml或者json',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msgType` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Event` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `EventKey` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ToUserName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `FromUserName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '发送方帐号（一个OpenID）',
  `CreateTime` decimal(20,0) DEFAULT NULL COMMENT '消息创建时间 （11位整型）',
  `MsgId` decimal(64,0) DEFAULT NULL COMMENT '消息id，64位整型',
  `PicUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `MediaId` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '图片消息媒体id，可以调用多媒体文件下载接口拉取数据',
  `Title` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '消息标题',
  `Description` text COLLATE utf8_bin COMMENT '消息描述',
  `Url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '消息链接',
  `Location_X` decimal(20,10) DEFAULT NULL COMMENT '地理位置维度',
  `Location_Y` decimal(20,10) DEFAULT NULL COMMENT '地理位置经度',
  `Scale` decimal(20,0) DEFAULT NULL COMMENT '地图缩放大小',
  `Labels` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '地理位置信息',
  `Content` text COLLATE utf8_bin COMMENT '文本消息内容',
  `ThumbMediaId` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '视频消息缩略图的媒体id，可以调用多媒体文件下载接口拉取数据。',
  `Format` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '语音格式，如amr，speex等',
  `Recognition` text COLLATE utf8_bin COMMENT '语音识别结果，UTF8编码',
  `Latitude` decimal(20,10) DEFAULT NULL COMMENT '地理位置纬度',
  `Longitude` decimal(20,10) DEFAULT NULL COMMENT '地理位置经度',
  `Precisions` decimal(20,10) DEFAULT NULL COMMENT '地理位置精度',
  `Ticket` text COLLATE utf8_bin COMMENT '二维码的ticket，可用来换取二维码图片',
  `MusicURL` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '音乐链接',
  `HQMusicUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '高质量音乐链接，WIFI环境优先使用该链接播放音乐',
  `ArticleCount` decimal(2,0) DEFAULT NULL COMMENT '图文消息个数，限制为10条以内',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_message
-- ----------------------------
INSERT INTO `wx_message` VALUES ('14cf744fb52045968b46e3036889139e', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313334383833313836303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B696D6167655D5D3E3C2F4D7367547970653E3C50696355726C3E3C215B43444154415B7468697320697320612075726C5D5D3E3C2F50696355726C3E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:17:16', 'image', null, null, 'toUser', 'fromUser', '1348831860', null, 'this is a url', 'media_id', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('2fb08eb1337f401f8b4e8602b68e0976', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336343433313531355D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415B5BE68489E5BFAB5DE68890E58A9FE68EA5E694B6E682A8E79A84E4BD8DE7BDAEEFBC810A0AE682A8E58FAFE4BBA5E8BE93E585A5E6909CE7B4A2E585B3E994AEE8AF8DE88EB7E58F96E591A8E8BEB9E4BFA1E681AFE4BA86EFBC8CE4BE8BE5A682EFBC9A0A2020202020202020E99984E8BF9141544D0A2020202020202020E99984E8BF914B54560A2020202020202020E99984E8BF91E58E95E689800AE5BF85E9A1BBE4BBA5E2809CE99984E8BF91E2809DE4B8A4E4B8AAE5AD97E5BC80E5A4B4EFBC815D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:33:52', 'text', null, null, 'fromUser', 'toUser', '1416364431515', null, null, null, null, null, null, null, null, null, null, 0x5BE68489E5BFAB5DE68890E58A9FE68EA5E694B6E682A8E79A84E4BD8DE7BDAEEFBC810A0AE682A8E58FAFE4BBA5E8BE93E585A5E6909CE7B4A2E585B3E994AEE8AF8DE88EB7E58F96E591A8E8BEB9E4BFA1E681AFE4BA86EFBC8CE4BE8BE5A682EFBC9A0A2020202020202020E99984E8BF9141544D0A2020202020202020E99984E8BF914B54560A2020202020202020E99984E8BF91E58E95E689800AE5BF85E9A1BBE4BBA5E2809CE99984E8BF91E2809DE4B8A4E4B8AAE5AD97E5BC80E5A4B4EFBC81, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('37b17020129148109c29a0a83b27e278', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335373239303931333C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B766F6963655D5D3E3C2F4D7367547970653E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C466F726D61743E3C215B43444154415B466F726D61745D5D3E3C2F466F726D61743E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:21:28', 'voice', null, null, 'toUser', 'fromUser', '1357290913', null, null, 'media_id', null, null, null, null, null, null, null, null, null, 'Format', null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('3e89a26ac15b4ffb9b846cd167486bc1', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336323631313035305D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE69687E69CACE6B688E681AF5D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:03:46', 'text', null, null, 'fromUser', 'toUser', '1416362611050', null, null, null, null, null, null, null, null, null, null, 0xE69687E69CACE6B688E681AF, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('54ea143411de4dbd9a21b2870b08bfd9', '1', '0', 0x3C6C6974746C652E616E742E77656978696E2E626F2E6D6573736167652E526573706F6E73654D7367546578743E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336313536333338315D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE69687E69CACE6B688E681AF5D5D3E3C2F436F6E74656E743E0A3C2F6C6974746C652E616E742E77656978696E2E626F2E6D6573736167652E526573706F6E73654D7367546578743E, '2014-11-19 09:46:09', 'text', null, null, 'fromUser', 'toUser', '1416361563381', null, null, null, null, null, null, null, null, null, null, 0xE69687E69CACE6B688E681AF, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('6b461d63bbcc4c00b8846552c4e1f329', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336353338373235335D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE682A8E782B9E587BBE79A84E595A5E993BEE68EA5E591A2EFBC9F5D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:49:47', 'text', null, null, 'fromUser', 'toUser', '1416365387253', null, null, null, null, null, null, null, null, null, null, 0xE682A8E782B9E587BBE79A84E595A5E993BEE68EA5E591A2EFBC9F, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('72b9ae005ea64451a763067b6e49a34b', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336333639323331305D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415B5D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:21:34', 'text', null, null, 'fromUser', 'toUser', '1416363692310', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('76e2eca7b7fe403bbde2648d00a7fba0', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335313737363336303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B6C6F636174696F6E5D5D3E3C2F4D7367547970653E3C4C6F636174696F6E5F583E32332E3133343532313C2F4C6F636174696F6E5F583E3C4C6F636174696F6E5F593E3131332E3335383830333C2F4C6F636174696F6E5F593E3C5363616C653E32303C2F5363616C653E3C4C6162656C3E3C215B43444154415BE4BD8DE7BDAEE4BFA1E681AF5D5D3E3C2F4C6162656C3E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E20, '2014-11-19 10:33:45', 'location', null, null, 'toUser', 'fromUser', '1351776360', null, null, null, null, null, null, '23.1345210000', '113.3588030000', '20', '位置信息', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('9a319aef0e5743fdb84d720e89c1b2f7', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335373239303931333C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B766964656F5D5D3E3C2F4D7367547970653E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C5468756D624D6564696149643E3C215B43444154415B7468756D625F6D656469615F69645D5D3E3C2F5468756D624D6564696149643E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:27:01', 'video', null, null, 'toUser', 'fromUser', '1357290913', null, null, 'media_id', null, null, null, null, null, null, null, null, 'thumb_media_id', null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('a078c5fa1429467cbb8184f72be2e934', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336333839323634315D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415B5D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:24:53', 'text', null, null, 'fromUser', 'toUser', '1416363892641', null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('a2b8ba473c184ad69c0297a2b4c5974a', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336333935393337305D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC815D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:25:59', 'text', null, null, 'fromUser', 'toUser', '1416363959370', null, null, null, null, null, null, null, null, null, null, 0xE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC81, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('a6de440190634c5384640ffb6c42ecbb', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336343032303734335D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC815D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:27:01', 'text', null, null, 'fromUser', 'toUser', '1416364020743', null, null, null, null, null, null, null, null, null, null, 0xE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC81, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('a85a47008da74094ad5218c4f7dfd027', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E203C43726561746554696D653E313334383833313836303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E3C436F6E74656E743E3C215B43444154415B74686973206973206120746573745D5D3E3C2F436F6E74656E743E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:03:26', 'text', null, null, 'toUser', 'fromUser', '1348831860', null, null, null, null, null, null, null, null, null, null, 0x7468697320697320612074657374, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('b0b0294b8e154f01b5fa24609141994b', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335313737363336303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B6C696E6B5D5D3E3C2F4D7367547970653E3C5469746C653E3C215B43444154415BE585ACE4BC97E5B9B3E58FB0E5AE98E7BD91E993BEE68EA55D5D3E3C2F5469746C653E3C4465736372697074696F6E3E3C215B43444154415BE585ACE4BC97E5B9B3E58FB0E5AE98E7BD91E993BEE68EA55D5D3E3C2F4465736372697074696F6E3E3C55726C3E3C215B43444154415B75726C5D5D3E3C2F55726C3E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E20, '2014-11-19 10:49:47', 'link', null, null, 'toUser', 'fromUser', '1351776360', null, null, null, '公众平台官网链接', 0xE585ACE4BC97E5B9B3E58FB0E5AE98E7BD91E993BEE68EA5, 'url', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('b6bc978cebb3426aa2e3acb30761790a', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336333433363238325D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC815D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:17:16', 'text', null, null, 'fromUser', 'toUser', '1416363436282', null, null, null, null, null, null, null, null, null, null, 0xE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC81, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('b7d534c37d724f52bfe7f585a27c6dca', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E203C43726561746554696D653E313334383833313836303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E3C436F6E74656E743E3C215B43444154415B74686973206973206120746573745D5D3E3C2F436F6E74656E743E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 09:42:13', 'text', null, null, 'toUser', 'fromUser', '1348831860', null, null, null, null, null, null, null, null, null, null, 0x7468697320697320612074657374, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('c06460561178463196c12ea832a5ef74', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313334383833313836303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B696D6167655D5D3E3C2F4D7367547970653E3C50696355726C3E3C215B43444154415B7468697320697320612075726C5D5D3E3C2F50696355726C3E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:16:09', 'image', null, null, 'toUser', 'fromUser', '1348831860', null, 'this is a url', 'media_id', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('c7649527bb904dec80157be85a61ab2d', '1', '0', 0x3C786D6C3E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336333338383134345D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC815D5D3E3C2F436F6E74656E743E0A3C2F786D6C3E, '2014-11-19 10:16:35', 'text', null, null, 'fromUser', 'toUser', '1416363388144', null, null, null, null, null, null, null, null, null, null, 0xE59BBEE78987E5B7B2E7BB8FE694B6E588B0EFBC810A0AE591A8E8BEB9E6909CE7B4A2E4B8BAE682A8E79A84E587BAE8A18CE4BF9DE9A9BEE68AA4E888AAEFBC8CE4B8BAE682A8E68F90E4BE9BE4B893E4B89AE79A84E591A8E8BEB9E7949FE6B4BBE68C87E58D97EFBC8CE59B9EE5A48DE2809CE99984E8BF91E2809DE5BC80E5A78BE4BD93E9AA8CE590A7EFBC81, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('e0eb722b51a944739b67f2b2245579fd', '1', '0', 0x3C6C6974746C652E616E742E77656978696E2E626F2E6D6573736167652E526573706F6E73654D7367546578743E0A20203C546F557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F546F557365724E616D653E0A20203C46726F6D557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F46726F6D557365724E616D653E0A20203C43726561746554696D653E3C215B43444154415B313431363336313333333130325D5D3E3C2F43726561746554696D653E0A20203C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E0A20203C436F6E74656E743E3C215B43444154415BE69687E69CACE6B688E681AF5D5D3E3C2F436F6E74656E743E0A3C2F6C6974746C652E616E742E77656978696E2E626F2E6D6573736167652E526573706F6E73654D7367546578743E, '2014-11-19 09:42:13', 'text', null, null, 'fromUser', 'toUser', '1416361333102', null, null, null, null, null, null, null, null, null, null, 0xE69687E69CACE6B688E681AF, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('ea33925a715b4366ad838ad27df16622', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E203C43726561746554696D653E313334383833313836303C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B746578745D5D3E3C2F4D7367547970653E3C436F6E74656E743E3C215B43444154415B74686973206973206120746573745D5D3E3C2F436F6E74656E743E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 09:45:55', 'text', null, null, 'toUser', 'fromUser', '1348831860', null, null, null, null, null, null, null, null, null, null, 0x7468697320697320612074657374, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('ee740ab7d09b40f4bb6d622cbb21465f', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335373239303931333C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B766964656F5D5D3E3C2F4D7367547970653E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C5468756D624D6564696149643E3C215B43444154415B7468756D625F6D656469615F69645D5D3E3C2F5468756D624D6564696149643E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:25:59', 'video', null, null, 'toUser', 'fromUser', '1357290913', null, null, 'media_id', null, null, null, null, null, null, null, null, 'thumb_media_id', null, null, null, null, null, null, null, null, null);
INSERT INTO `wx_message` VALUES ('f69902983f9a4f158699a00b08618bdd', '0', '0', 0x3C786D6C3E3C546F557365724E616D653E3C215B43444154415B746F557365725D5D3E3C2F546F557365724E616D653E3C46726F6D557365724E616D653E3C215B43444154415B66726F6D557365725D5D3E3C2F46726F6D557365724E616D653E3C43726561746554696D653E313335373239303931333C2F43726561746554696D653E3C4D7367547970653E3C215B43444154415B766F6963655D5D3E3C2F4D7367547970653E3C4D6564696149643E3C215B43444154415B6D656469615F69645D5D3E3C2F4D6564696149643E3C466F726D61743E3C215B43444154415B466F726D61745D5D3E3C2F466F726D61743E3C4D736749643E313233343536373839303132333435363C2F4D736749643E3C2F786D6C3E, '2014-11-19 10:24:53', 'voice', null, null, 'toUser', 'fromUser', '1357290913', null, null, 'media_id', null, null, null, null, null, null, null, null, null, 'Format', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `wx_role`
-- ----------------------------
DROP TABLE IF EXISTS `wx_role`;
CREATE TABLE `wx_role` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_role
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `openId` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户的标识',
  `subscribe` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '关注状态（1是关注，0是未关注），未关注时获取不到其余信息',
  `subscribeTime` decimal(20,0) DEFAULT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `nickname` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户的性别（1是男性，2是女性，0是未知）',
  `country` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户所在国家',
  `province` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户所在省份',
  `city` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户所在城市',
  `language` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `headImgUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '用户头像',
  `groupids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
