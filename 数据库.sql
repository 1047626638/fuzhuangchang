/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50622
Source Host           : 127.0.0.1:3306
Source Database       : my_db

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-02-27 10:24:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FK_Reference_1` (`uid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('123', '111', '1');
INSERT INTO `account` VALUES ('145', '333', '3');
INSERT INTO `account` VALUES ('154', '444', '4');
INSERT INTO `account` VALUES ('232', '22', '323');
INSERT INTO `account` VALUES ('323', '2', '3232');

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `anumber` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `head` varchar(20) DEFAULT NULL,
  `iname` varchar(20) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`anumber`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES ('1', '华德', '东莞', '撒是给', 'user', '1233213', '666666', '54845@136.com');
INSERT INTO `agent` VALUES ('2', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('3', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('4', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');
INSERT INTO `agent` VALUES ('5', '华德', '东莞', '撒是给', 'user', '1233213', '666666', '54845@136.com');
INSERT INTO `agent` VALUES ('6', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('7', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('8', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');
INSERT INTO `agent` VALUES ('12', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('14', '华德', '460106', '撒是给', 'user', '1233213', '666666', '54845@136.com');
INSERT INTO `agent` VALUES ('15', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('16', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('17', '叙利亚1', '鬼岛', '蓝染惣右介1', 'user4', '1565546456', '4454554', '54435@136.com');
INSERT INTO `agent` VALUES ('18', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('19', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');
INSERT INTO `agent` VALUES ('23', '二维', null, '二维', '32', '12345679878', '32', '323');
INSERT INTO `agent` VALUES ('25', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('29', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('30', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('31', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');
INSERT INTO `agent` VALUES ('32', '华德', '东莞', '撒是给', 'user', '1233213', '666666', '54845@136.com');
INSERT INTO `agent` VALUES ('33', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('34', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('35', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');
INSERT INTO `agent` VALUES ('36', '华德', '东莞', '撒是给', 'user', '1233213', '666666', '54845@136.com');
INSERT INTO `agent` VALUES ('37', '广厦', '暗影岛', '凯多', 'user1', '1223232', '666666', '54825@136.com');
INSERT INTO `agent` VALUES ('38', '泡沫岛', '德玛西亚', '多弗朗明哥', 'user2', '1343434', '7777', '14434@136.com');
INSERT INTO `agent` VALUES ('39', '叙利亚', '鬼岛', '蓝染惣右介', 'user4', '143434', '32323', '54435@136.com');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(25) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk_c_t` (`teacher_id`),
  CONSTRAINT `fk_c_t` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('201', '大阪', '101');
INSERT INTO `class` VALUES ('202', '东京', '102');
INSERT INTO `class` VALUES ('203', '横滨', '103');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `cvalue` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('301', '坐垫', '15', '个', '纺织品');
INSERT INTO `commodity` VALUES ('302', '围巾', '13', '条', '纺织品');
INSERT INTO `commodity` VALUES ('303', '荷包', '13', '个', '艺术品');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` decimal(2,0) NOT NULL DEFAULT '0',
  `dname` varchar(10) NOT NULL,
  `loc` varchar(13) DEFAULT 'HAERBIN',
  PRIMARY KEY (`deptno`),
  UNIQUE KEY `dname` (`dname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('10', 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` VALUES ('20', 'RESEARCH', 'DALLAS');
INSERT INTO `dept` VALUES ('30', 'SALES', '上海');
INSERT INTO `dept` VALUES ('40', 'OPERATIONS', 'BOSTON');
INSERT INTO `dept` VALUES ('50', '保洁', 'beijing');
INSERT INTO `dept` VALUES ('60', '财务部', 'HAERBIN');
INSERT INTO `dept` VALUES ('70', '网络部', 'beijing');
INSERT INTO `dept` VALUES ('74', '网络部4组', 'beijing');
INSERT INTO `dept` VALUES ('80', '工程部0组', '深圳');
INSERT INTO `dept` VALUES ('81', '工程部1组', '深圳');
INSERT INTO `dept` VALUES ('82', '工程部2组', '深圳');
INSERT INTO `dept` VALUES ('83', '工程部3组', '深圳');
INSERT INTO `dept` VALUES ('84', '工程部4组', '深圳');
INSERT INTO `dept` VALUES ('85', '工程部5组', '深圳');
INSERT INTO `dept` VALUES ('86', '工程部6组', '深圳');
INSERT INTO `dept` VALUES ('87', '工程部7组', '深圳');
INSERT INTO `dept` VALUES ('88', '工程部8组', '深圳');
INSERT INTO `dept` VALUES ('89', '工程部9组', '深圳');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empno` decimal(4,0) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `job` varchar(9) DEFAULT NULL,
  `mgr` decimal(4,0) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `comm` decimal(7,2) DEFAULT NULL,
  `deptno` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `fk_emp_dept` (`deptno`),
  KEY `IND_EMP_ENAME` (`ename`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('232', 'ddD', 'DD', '7788', '2019-11-01 00:00:00', '800.00', '12.00', '20');
INSERT INTO `emp` VALUES ('3434', 'SAS', 'QWQWQ', '7788', '2019-11-15 00:00:00', '800.00', '12.00', '10');
INSERT INTO `emp` VALUES ('7369', 'SMITH', 'CLERK', '7902', '1980-12-17 00:00:00', '400.00', null, '20');
INSERT INTO `emp` VALUES ('7499', 'ALLEN', 'SALESMAN', '7698', '1981-02-20 00:00:00', '1900.00', '350.00', '30');
INSERT INTO `emp` VALUES ('7521', 'WARD', 'SALESMAN', '7698', '1981-02-22 00:00:00', '1350.00', '550.00', '30');
INSERT INTO `emp` VALUES ('7566', 'JONES', 'MANAGER', '7839', '1981-04-02 00:00:00', '3075.00', null, '20');
INSERT INTO `emp` VALUES ('7654', 'MARTIN', 'SALESMAN', '7698', '1981-09-28 00:00:00', '1350.00', '1450.00', '30');
INSERT INTO `emp` VALUES ('7698', 'BLAKE', 'MANAGER', '7839', '1981-05-01 00:00:00', '2950.00', null, '30');
INSERT INTO `emp` VALUES ('7782', 'CLARK', 'MANAGER', '7839', '1981-06-09 00:00:00', '2550.00', null, '10');
INSERT INTO `emp` VALUES ('7788', 'SCOTT', 'ANALYST', '7566', '1982-12-09 00:00:00', '3400.00', null, '20');
INSERT INTO `emp` VALUES ('7839', 'KING', 'PRESIDENT', null, '1981-11-17 00:00:00', '5100.00', null, '10');
INSERT INTO `emp` VALUES ('7844', 'TURNER', 'SALESMAN', '7698', '1981-09-08 00:00:00', '1200.00', '50.00', '30');
INSERT INTO `emp` VALUES ('7876', 'ADAMS', 'CLERK', '7788', '1983-01-12 00:00:00', '1200.00', null, '20');
INSERT INTO `emp` VALUES ('7900', 'JAMES', 'CLERK', '7698', '1981-12-03 00:00:00', '1050.00', null, '30');
INSERT INTO `emp` VALUES ('7902', 'FORD', 'ANALYST', '7566', '1981-12-03 00:00:00', '3100.00', '0.00', '20');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `evalue` varchar(10) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `age` int(11) NOT NULL,
  `edate` date NOT NULL,
  `ename` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('311', '采购员', '男', '23', '2019-11-12', '拉克丝');
INSERT INTO `employee` VALUES ('312', '销售员', '男', '43', '2019-12-04', '易大师');
INSERT INTO `employee` VALUES ('313', '车间主任', '女', '19', '2019-11-29', '金克斯');
INSERT INTO `employee` VALUES ('314', '采购员', '男', '89', '2019-10-30', '德莱厄斯');
INSERT INTO `employee` VALUES ('315', '销售员', '男', '83', '2019-10-15', '贾克斯');
INSERT INTO `employee` VALUES ('316', '酒鬼', '男', '32', '2019-12-05', '古拉加斯');

-- ----------------------------
-- Table structure for emp_del_log
-- ----------------------------
DROP TABLE IF EXISTS `emp_del_log`;
CREATE TABLE `emp_del_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empno` int(11) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of emp_del_log
-- ----------------------------
INSERT INTO `emp_del_log` VALUES ('1', '7911', '40', '2019-09-21 15:14:49');
INSERT INTO `emp_del_log` VALUES ('2', '888', null, '2019-09-21 15:17:28');
INSERT INTO `emp_del_log` VALUES ('3', '8004', '20', '2019-09-23 15:33:27');
INSERT INTO `emp_del_log` VALUES ('4', '8004', '20', '2019-09-23 15:35:54');
INSERT INTO `emp_del_log` VALUES ('5', '8003', '20', '2019-09-23 16:06:57');
INSERT INTO `emp_del_log` VALUES ('6', '8004', '30', '2019-10-31 16:49:18');
INSERT INTO `emp_del_log` VALUES ('7', '12', '20', '2019-11-01 11:22:02');
INSERT INTO `emp_del_log` VALUES ('8', '23', '20', '2019-11-01 11:22:09');
INSERT INTO `emp_del_log` VALUES ('9', '8002', '10', '2019-11-08 09:43:12');
INSERT INTO `emp_del_log` VALUES ('10', '8002', '10', '2019-11-08 14:06:44');
INSERT INTO `emp_del_log` VALUES ('11', '8003', '10', '2019-11-18 19:37:27');
INSERT INTO `emp_del_log` VALUES ('12', '8002', '10', '2019-11-19 13:36:32');
INSERT INTO `emp_del_log` VALUES ('13', '8001', '30', '2019-11-19 13:40:00');
INSERT INTO `emp_del_log` VALUES ('14', '223', '20', '2019-11-20 10:44:28');
INSERT INTO `emp_del_log` VALUES ('15', '7934', '10', '2019-11-20 15:03:33');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `iorders` int(11) DEFAULT NULL,
  `rorders` int(11) DEFAULT NULL,
  `oamount` int(11) DEFAULT NULL,
  `ramount` int(11) DEFAULT NULL,
  `omoney` float NOT NULL,
  `rmoney` float DEFAULT NULL,
  `amoney` float NOT NULL,
  `odate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '0', '1', '1', '115', '0', '115', '2019-12-10');
INSERT INTO `orders` VALUES ('43', '4', '44', '43', '34', '34', '34', '2019-12-17');
INSERT INTO `orders` VALUES ('3', '3', '3', '3', '3', '3', '3', '0022-02-07');
INSERT INTO `orders` VALUES ('21', '1', '212', '212', '123', '0', '123', '2019-12-12');
INSERT INTO `orders` VALUES ('33', '3', '32', '323', '323', '23', '300', '2019-12-13');

-- ----------------------------
-- Table structure for salgrade
-- ----------------------------
DROP TABLE IF EXISTS `salgrade`;
CREATE TABLE `salgrade` (
  `grade` decimal(10,0) DEFAULT NULL,
  `losal` decimal(10,0) DEFAULT NULL,
  `hisal` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of salgrade
-- ----------------------------
INSERT INTO `salgrade` VALUES ('1', '700', '1200');
INSERT INTO `salgrade` VALUES ('2', '1201', '1400');
INSERT INTO `salgrade` VALUES ('3', '1401', '2000');
INSERT INTO `salgrade` VALUES ('4', '2001', '3000');
INSERT INTO `salgrade` VALUES ('5', '3001', '9999');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `snumber` varchar(20) NOT NULL,
  `sdate` date NOT NULL,
  `shouse` varchar(20) NOT NULL,
  `sperson` varchar(10) NOT NULL,
  `stype` varchar(20) NOT NULL,
  `specification` varchar(30) NOT NULL,
  `sunit` varchar(10) NOT NULL,
  `icount` int(11) DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('20', '2020-01-01', 'ds', 'dsd', 'dsd', 'dsd', 'dsd', '32');
INSERT INTO `stock` VALUES ('20185454-33', '2019-11-05', '深圳仓库', '古拉加斯', '采购入库', '重量：10kg', '袋', '89');
INSERT INTO `stock` VALUES ('20193443-21', '2019-11-29', '深圳仓库', '德莱厄斯', '采购入库', '重量：4kg', '袋', '22');
INSERT INTO `stock` VALUES ('20193443-22', '2019-11-13', '海口仓库', '诺提勒斯', '采购入库', '重量：5kg', '袋', '13');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('101', '仓老师');
INSERT INTO `teacher` VALUES ('102', '小泽老师');
INSERT INTO `teacher` VALUES ('103', '明日花老师');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `status` int(1) DEFAULT '0',
  `phone_number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('111', 'user06', 'dsd', '0', '12323');
INSERT INTO `userinfo` VALUES ('admin', '123456', 'dsd', '0', '3232');
INSERT INTO `userinfo` VALUES ('user01', '13456', 'dsd', '1', '3232');
INSERT INTO `userinfo` VALUES ('user02', '13789', 'ds', '2', '3232');
INSERT INTO `userinfo` VALUES ('user03', '111111', 'dsds', '1', '323');
INSERT INTO `userinfo` VALUES ('user04', '456789', 'sdsd', '1', '323');
INSERT INTO `userinfo` VALUES ('user05', '123456', 'dsd', '0', '3232');
INSERT INTO `userinfo` VALUES ('user06', '123456', 'dsd', '0', '3232');
INSERT INTO `userinfo` VALUES ('user07', '21111', 'dsd', '0', '32323');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3233 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '张三', '12354854');
INSERT INTO `users` VALUES ('2', '李四', '4513545');
INSERT INTO `users` VALUES ('3', '王五', '343434232');
INSERT INTO `users` VALUES ('4', '赵六', '343434343');
INSERT INTO `users` VALUES ('5', '钱七', '343434343');
INSERT INTO `users` VALUES ('232', '3232', '3232');
INSERT INTO `users` VALUES ('323', '323', '232');
INSERT INTO `users` VALUES ('3232', '323', '232');

-- ----------------------------
-- View structure for v_emp1
-- ----------------------------
DROP VIEW IF EXISTS `v_emp1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_emp1` AS select empno,job,sal,comm,deptno from emp ;

-- ----------------------------
-- Procedure structure for getENumByDept
-- ----------------------------
DROP PROCEDURE IF EXISTS `getENumByDept`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getENumByDept`(IN p_deptno int,OUT p_enum int)
BEGIN
	select count(*) into p_enum from emp where deptno=p_deptno;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getTop5Emp
-- ----------------------------
DROP PROCEDURE IF EXISTS `getTop5Emp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTop5Emp`()
begin
	select * from emp limit 0,5;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getTopNEmp
-- ----------------------------
DROP PROCEDURE IF EXISTS `getTopNEmp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTopNEmp`(IN p_begin int, IN p_end int)
begin
	declare v_total int default 10;
	set v_total =p_end - p_begin +1;
	select * from emp limit p_begin,v_total;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TRI_EMP_DEL`;
DELIMITER ;;
CREATE TRIGGER `TRI_EMP_DEL` AFTER DELETE ON `emp` FOR EACH ROW begin
	insert into EMP_DEL_LOG(empno,deptno,del_date)values
	(old.empno,old.deptno,now());
end
;;
DELIMITER ;
