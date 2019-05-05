/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 47.104.199.225:3306
 Source Schema         : planone

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 01/05/2019 15:13:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activityclick
-- ----------------------------
DROP TABLE IF EXISTS `activityclick`;
CREATE TABLE `activityclick`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bianli` int(11) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bianlitest
-- ----------------------------
DROP TABLE IF EXISTS `bianlitest`;
CREATE TABLE `bianlitest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bianhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crashcont` int(11) NULL DEFAULT NULL,
  `log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `packname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneid` int(11) NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `starttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totaltime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `typesversion` int(11) NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for builddetail
-- ----------------------------
DROP TABLE IF EXISTS `builddetail`;
CREATE TABLE `builddetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ci` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `failnum` int(11) NULL DEFAULT NULL,
  `passingrate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passnum` int(11) NULL DEFAULT NULL,
  `resion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `skipnum` int(11) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totalnum` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7qm3vtcvoi7bb1ninx5vml6dv`(`project_id`) USING BTREE,
  INDEX `FK5w5gi9xqsujrsd7kq6fljgiil`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for caseopear
-- ----------------------------
DROP TABLE IF EXISTS `caseopear`;
CREATE TABLE `caseopear`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `operating` int(255) NOT NULL,
  `caseid` int(255) NOT NULL,
  `interfacecase_id` int(11) NULL DEFAULT NULL,
  `operatings_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2m8fmavi1hrvlex7hqxc2ymeb`(`interfacecase_id`) USING BTREE,
  INDEX `FK8c7n9aq9ichbxc4s7pagx37v`(`operatings_id`) USING BTREE,
  CONSTRAINT `FK2m8fmavi1hrvlex7hqxc2ymeb` FOREIGN KEY (`interfacecase_id`) REFERENCES `interfacecase` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8c7n9aq9ichbxc4s7pagx37v` FOREIGN KEY (`operatings_id`) REFERENCES `operating` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cicoverage
-- ----------------------------
DROP TABLE IF EXISTS `cicoverage`;
CREATE TABLE `cicoverage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadatetime` datetime(0) NULL DEFAULT NULL,
  `barchcoverage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bmissed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buildid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codecverage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codemissed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for converage
-- ----------------------------
DROP TABLE IF EXISTS `converage`;
CREATE TABLE `converage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug` int(11) NULL DEFAULT NULL,
  `chongfu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coverageid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datetime` datetime(0) NULL DEFAULT NULL,
  `fugai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `huanwei` int(11) NULL DEFAULT NULL,
  `lodong` int(11) NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `testtype` int(11) NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crash
-- ----------------------------
DROP TABLE IF EXISTS `crash`;
CREATE TABLE `crash`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianlitest` int(11) NULL DEFAULT NULL,
  `creatpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for datatype
-- ----------------------------
DROP TABLE IF EXISTS `datatype`;
CREATE TABLE `datatype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dataname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for demand
-- ----------------------------
DROP TABLE IF EXISTS `demand`;
CREATE TABLE `demand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acceptcri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `assign` int(11) NULL DEFAULT NULL,
  `demandstatus` int(11) NULL DEFAULT NULL,
  `descs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `process` int(11) NULL DEFAULT NULL,
  `spendtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for demandlog
-- ----------------------------
DROP TABLE IF EXISTS `demandlog`;
CREATE TABLE `demandlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `demand` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opearing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  `demands_id` int(11) NULL DEFAULT NULL,
  `users_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9dqo0sawbdrslng7wldcbn4nw`(`demands_id`) USING BTREE,
  INDEX `FKamr44uuyw44qr4wlag3dofhke`(`users_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for devicedetail
-- ----------------------------
DROP TABLE IF EXISTS `devicedetail`;
CREATE TABLE `devicedetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `severspu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ststuss` int(11) NULL DEFAULT NULL,
  `systemversion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `types` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for funtionbuildresult
-- ----------------------------
DROP TABLE IF EXISTS `funtionbuildresult`;
CREATE TABLE `funtionbuildresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exection` int(11) NULL DEFAULT NULL,
  `failnum` int(11) NULL DEFAULT NULL,
  `funtionlogicid` int(11) NULL DEFAULT NULL,
  `passnum` int(11) NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `runtim` datetime(0) NULL DEFAULT NULL,
  `runuser` int(11) NULL DEFAULT NULL,
  `totalnum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for funtioncase
-- ----------------------------
DROP TABLE IF EXISTS `funtioncase`;
CREATE TABLE `funtioncase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caseid` int(11) NULL DEFAULT NULL,
  `funtionid` int(11) NULL DEFAULT NULL,
  `indexs` int(11) NULL DEFAULT NULL,
  `yilai` int(11) NULL DEFAULT NULL,
  `ziduan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for funtionlogic
-- ----------------------------
DROP TABLE IF EXISTS `funtionlogic`;
CREATE TABLE `funtionlogic`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `chaxun` int(11) NULL DEFAULT NULL,
  `funtionname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `funtionstatus` int(11) NULL DEFAULT NULL,
  `makeruser` int(11) NULL DEFAULT NULL,
  `projectid` int(11) NULL DEFAULT NULL,
  `projectname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply` int(11) NULL DEFAULT NULL,
  `reply_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `replydata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `runtime` datetime(0) NULL DEFAULT NULL,
  `sqls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testeventment` int(11) NULL DEFAULT NULL,
  `totalnum` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yuqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ziduan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for interface
-- ----------------------------
DROP TABLE IF EXISTS `interface`;
CREATE TABLE `interface`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intername` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口名称',
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口路径',
  `intstatus` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态：0-启用、1-维护、2-废弃',
  `requestmethod` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Request Method：如POST、GET',
  `requestheader` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求头',
  `successrespexample` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Response Content：成功接口',
  `failresponseexample` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Response Content：失败接口',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `add_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `makeuser` int(12) NOT NULL COMMENT '创建者id',
  `projectid` int(11) NULL DEFAULT NULL COMMENT '所属项目',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `projectid`(`projectid`) USING BTREE,
  INDEX `makeuser`(`makeuser`) USING BTREE,
  INDEX `intstatus`(`intstatus`, `projectid`) USING BTREE,
  FULLTEXT INDEX `intername`(`intername`),
  CONSTRAINT `interface_ibfk_1` FOREIGN KEY (`projectid`) REFERENCES `project` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `interface_ibfk_2` FOREIGN KEY (`makeuser`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21097 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for interfacecase
-- ----------------------------
DROP TABLE IF EXISTS `interfacecase`;
CREATE TABLE `interfacecase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `makeuser` int(11) NOT NULL COMMENT '创建者id',
  `addtime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `interfaceid` int(11) NOT NULL,
  `numbering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `method` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方法',
  `assert_case` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '断言',
  `headers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求头',
  `parms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `pid` int(11) NULL DEFAULT NULL COMMENT '依赖case',
  `getattr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '依赖case的参数',
  `saveresult` int(2) NOT NULL DEFAULT 0 COMMENT '保存结果，0 不报存',
  `checkdatabase` int(2) NULL DEFAULT 0 COMMENT '检查数据库，0 不检查',
  `datasql` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sql语句',
  `datafield` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对比字段',
  `casestatus` int(2) NOT NULL DEFAULT 0 COMMENT '状态，0 正常,1删除',
  `project` int(11) NOT NULL COMMENT '项目',
  `contain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ninclude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jsonpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `updateuser` int(255) NULL DEFAULT NULL,
  `fraction` int(4) NULL DEFAULT 0,
  `testenvironment_id` int(11) NULL DEFAULT NULL,
  `is_run` int(2) NOT NULL DEFAULT 0 COMMENT '是否持续集成，0是，1否',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users`(`makeuser`) USING BTREE,
  INDEX `inte`(`interfaceid`) USING BTREE,
  INDEX `pro`(`project`) USING BTREE,
  INDEX `casestatus`(`casestatus`, `project`) USING BTREE,
  INDEX `FKm625oxobjvx7y8wmv5a8xafmn`(`testenvironment_id`) USING BTREE,
  CONSTRAINT `FKm625oxobjvx7y8wmv5a8xafmn` FOREIGN KEY (`testenvironment_id`) REFERENCES `testenvironment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `inte` FOREIGN KEY (`interfaceid`) REFERENCES `interface` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pro` FOREIGN KEY (`project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users` FOREIGN KEY (`makeuser`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11590 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for interfacecase_parmarmedetail
-- ----------------------------
DROP TABLE IF EXISTS `interfacecase_parmarmedetail`;
CREATE TABLE `interfacecase_parmarmedetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `interfacecase_id` int(11) NULL DEFAULT NULL,
  `parmarmedetail_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKpd70frfbjhvueqsdr2agerfxp`(`parmarmedetail_id`) USING BTREE,
  INDEX `FKjgfiw4bmb2f7mwvslytdxfdup`(`interfacecase_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for interfaceparam
-- ----------------------------
DROP TABLE IF EXISTS `interfaceparam`;
CREATE TABLE `interfaceparam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceid` int(11) NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paramname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paramtype` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for interfacescenes
-- ----------------------------
DROP TABLE IF EXISTS `interfacescenes`;
CREATE TABLE `interfacescenes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '测试场景名称，唯一',
  `projectid` int(11) NULL DEFAULT NULL COMMENT '测试场景所属项目',
  `datetime` datetime(0) NOT NULL COMMENT '创建时间',
  `makeuser` int(255) NULL DEFAULT NULL COMMENT '创建人',
  `status` int(2) NOT NULL COMMENT '状态0,正常，1删除',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updeteuser` int(255) NULL DEFAULT NULL COMMENT '更新人',
  `testevent` int(255) NULL DEFAULT NULL COMMENT '测试集选择环境',
  PRIMARY KEY (`id`, `name`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `projectid`(`projectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operating
-- ----------------------------
DROP TABLE IF EXISTS `operating`;
CREATE TABLE `operating`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `types` int(2) NOT NULL DEFAULT 0 COMMENT '0.执行sql，1,执行用例，2等待时间',
  `category` int(2) NOT NULL DEFAULT 0 COMMENT '0,前置，1，后置',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marke` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testevents` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caseid` int(255) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `makeruser` int(255) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `updateuser` int(255) NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0正常1,删除',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `interfacecase_id` int(11) NULL DEFAULT NULL,
  `sqls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK77l5coj6mmjqgggcf00b08lbg`(`interfacecase_id`) USING BTREE,
  CONSTRAINT `FK77l5coj6mmjqgggcf00b08lbg` FOREIGN KEY (`interfacecase_id`) REFERENCES `interfacecase` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operating_interfacecase
-- ----------------------------
DROP TABLE IF EXISTS `operating_interfacecase`;
CREATE TABLE `operating_interfacecase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `interfacecase_id` int(11) NULL DEFAULT NULL,
  `operating_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for parameidresult
-- ----------------------------
DROP TABLE IF EXISTS `parameidresult`;
CREATE TABLE `parameidresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `parameid` int(11) NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for parametype
-- ----------------------------
DROP TABLE IF EXISTS `parametype`;
CREATE TABLE `parametype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  `parmarmedetail_id` int(11) NULL DEFAULT NULL,
  `users_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKr3v9fb4tg59egvia2b63q1dr7`(`parmarmedetail_id`) USING BTREE,
  INDEX `FK4w630aagm46qdbs1roewp1oul`(`users_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for parmarmedetail
-- ----------------------------
DROP TABLE IF EXISTS `parmarmedetail`;
CREATE TABLE `parmarmedetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqlname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for performanceting
-- ----------------------------
DROP TABLE IF EXISTS `performanceting`;
CREATE TABLE `performanceting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tesperfo` int(255) NULL DEFAULT NULL,
  `cpu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `men` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendflow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resvcflow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `batteary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `makeuser` int(12) NOT NULL COMMENT '创建者id',
  `descs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `projectstatus` int(8) NULL DEFAULT 0 COMMENT '项目状态 0，正常，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NULL DEFAULT NULL,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sencensresult
-- ----------------------------
DROP TABLE IF EXISTS `sencensresult`;
CREATE TABLE `sencensresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senid` int(11) NULL DEFAULT NULL,
  `result` int(2) NULL DEFAULT NULL,
  `reson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `spendtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seninterfaceid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sencesinterface
-- ----------------------------
DROP TABLE IF EXISTS `sencesinterface`;
CREATE TABLE `sencesinterface`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceid` int(11) NULL DEFAULT NULL COMMENT '接口id',
  `sensesid` int(11) NULL DEFAULT NULL COMMENT '场景id',
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段，动态的',
  `parame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `assertfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '断言',
  `statuss` int(2) NULL DEFAULT NULL COMMENT '状态，默认0 ，0正常，1删除',
  `orders` int(8) NULL DEFAULT NULL COMMENT '顺序',
  `user` int(255) NULL DEFAULT NULL COMMENT '创建用户',
  `cretime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `upuser` int(255) NULL DEFAULT NULL COMMENT '更新用户',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for taskcase
-- ----------------------------
DROP TABLE IF EXISTS `taskcase`;
CREATE TABLE `taskcase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` int(11) NULL DEFAULT NULL,
  `taskcase` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for testcover
-- ----------------------------
DROP TABLE IF EXISTS `testcover`;
CREATE TABLE `testcover`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `projectnam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user` int(11) NULL DEFAULT NULL,
  `usernam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testenvironment
-- ----------------------------
DROP TABLE IF EXISTS `testenvironment`;
CREATE TABLE `testenvironment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventnames` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '测试环境名称',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '测试根url',
  `project` int(11) NOT NULL COMMENT '测试环境所属项目',
  `makeuser` int(12) NOT NULL COMMENT '创建者id',
  `teststatus` int(2) NOT NULL DEFAULT 0 COMMENT '状态，1，是删除',
  `sqlhost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqlpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqlport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqluer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testhistory
-- ----------------------------
DROP TABLE IF EXISTS `testhistory`;
CREATE TABLE `testhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `calbackparame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caseid` int(11) NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `requestheader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requestparame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requesturl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` int(11) NULL DEFAULT NULL,
  `testevent` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testperfoshebei
-- ----------------------------
DROP TABLE IF EXISTS `testperfoshebei`;
CREATE TABLE `testperfoshebei`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `makeruser` int(11) NULL DEFAULT NULL,
  `numring` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonnum` int(11) NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `sendtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `starttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testreult
-- ----------------------------
DROP TABLE IF EXISTS `testreult`;
CREATE TABLE `testreult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `exceptionquantity` int(11) NULL DEFAULT NULL,
  `failquantity` int(11) NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `passquantity` int(11) NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `resultstatus` int(11) NULL DEFAULT NULL,
  `spendtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testdatetime` datetime(0) NULL DEFAULT NULL,
  `testingreport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testlog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testquantity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for timedtask
-- ----------------------------
DROP TABLE IF EXISTS `timedtask`;
CREATE TABLE `timedtask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `executionstatus` int(11) NULL DEFAULT NULL,
  `makeuser` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project` int(11) NULL DEFAULT NULL,
  `taskname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskstarttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskstatus` int(11) NULL DEFAULT NULL,
  `testenviroment` int(11) NULL DEFAULT NULL,
  `updatatime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uicase
-- ----------------------------
DROP TABLE IF EXISTS `uicase`;
CREATE TABLE `uicase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbring` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `fuctionid` int(11) NOT NULL,
  `parame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `asserts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预期',
  `event` int(255) NULL DEFAULT NULL COMMENT '环境',
  `stastus` int(2) UNSIGNED NULL DEFAULT NULL COMMENT '0正常。1删除',
  `makeruser` int(255) NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `uodateuser` int(11) NULL DEFAULT NULL,
  `login` int(2) UNSIGNED NULL DEFAULT NULL COMMENT '0否，1依赖',
  PRIMARY KEY (`id`, `fuctionid`, `numbring`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uifuntioniopear
-- ----------------------------
DROP TABLE IF EXISTS `uifuntioniopear`;
CREATE TABLE `uifuntioniopear`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funtion` int(255) NOT NULL COMMENT '所属功能',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注释',
  `element` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '元素',
  `index` int(2) UNSIGNED NOT NULL COMMENT '索引',
  `opear` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作',
  `parame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `makeruser` int(255) NULL DEFAULT NULL COMMENT '操作人',
  `creattime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(2) UNSIGNED NULL DEFAULT NULL COMMENT '状态  0正常，1删除',
  `updateuser` int(11) NULL DEFAULT NULL COMMENT '更新用户',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `order` int(255) NULL DEFAULT NULL COMMENT '执行顺序',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`, `funtion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uifuntions
-- ----------------------------
DROP TABLE IF EXISTS `uifuntions`;
CREATE TABLE `uifuntions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `projectid` int(255) NOT NULL COMMENT '所属项目',
  `status` int(2) NULL DEFAULT NULL COMMENT '0正常，1删除',
  `makeuser` int(255) NOT NULL COMMENT '创建用户',
  `creattime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `upuser` int(255) NULL DEFAULT NULL COMMENT '更新用户',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `types` int(2) NULL DEFAULT NULL COMMENT '0 app 1 web',
  `systems` int(10) NULL DEFAULT NULL COMMENT '0原生1混合',
  PRIMARY KEY (`id`, `projectid`, `makeuser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uisences
-- ----------------------------
DROP TABLE IF EXISTS `uisences`;
CREATE TABLE `uisences`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `project` int(255) NULL DEFAULT NULL COMMENT '所属项目',
  `status` int(2) NULL DEFAULT NULL COMMENT '0正常1删除',
  `makeuser` int(255) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `creatime` datetime(0) NULL DEFAULT NULL,
  `upuser` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uisenicesfuntion
-- ----------------------------
DROP TABLE IF EXISTS `uisenicesfuntion`;
CREATE TABLE `uisenicesfuntion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sinesid` int(11) NOT NULL,
  `function` int(255) NOT NULL COMMENT '功能场景',
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段，多个字段用，分割',
  `assertj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '断言',
  `makeuser` int(255) NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `updateuser` int(11) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL COMMENT '0正常1删除',
  `order` int(8) NULL DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`, `sinesid`, `field`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uisuitecase
-- ----------------------------
DROP TABLE IF EXISTS `uisuitecase`;
CREATE TABLE `uisuitecase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uisuite` int(255) NULL DEFAULT NULL,
  `uicase` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uitestsuite
-- ----------------------------
DROP TABLE IF EXISTS `uitestsuite`;
CREATE TABLE `uitestsuite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project` int(255) NULL DEFAULT NULL COMMENT '测试组所属测试项目\r\n',
  `testevent` int(255) NULL DEFAULT NULL COMMENT '测试组所属测试环境',
  `makeuser` int(255) NULL DEFAULT NULL,
  `maketime` datetime(0) NULL DEFAULT NULL,
  `uptime` datetime(0) NULL DEFAULT NULL,
  `upuser` int(255) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL COMMENT '0正常1删除',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态，1代表删除',
  `admin` int(11) NOT NULL DEFAULT 0 COMMENT '是否是管理员，1代表是管理员',
  `iphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `workid` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `errornum` int(2) NOT NULL DEFAULT 0,
  `freeze` int(2) NOT NULL DEFAULT 0,
  `freezetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `username`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userproject
-- ----------------------------
DROP TABLE IF EXISTS `userproject`;
CREATE TABLE `userproject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsjpdjy4grq0ev2fyt6jxe90fi`(`project_id`) USING BTREE,
  INDEX `FKh1dw540h9kqq163hh5ta3rq2d`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKf9a7cojfuvf40x6co16kxa1jb`(`role_id`) USING BTREE,
  INDEX `FKtbick5dbrpnos6ll2175dt5qr`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
