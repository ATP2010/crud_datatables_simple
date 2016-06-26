/*
Navicat MySQL Data Transfer

Source Server         : uwamp
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : crud

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-06-27 02:35:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for offices
-- ----------------------------
DROP TABLE IF EXISTS `offices`;
CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of offices
-- ----------------------------
INSERT INTO `offices` VALUES ('1', 'San Francisco', '+1 650 219 4782', '100 Market Street', 'Suite 300', 'CA', 'USA', '94080', 'NA');
INSERT INTO `offices` VALUES ('2', 'Boston', '+1 215 837 0825', '1550 Court Place', 'Suite 102', 'MA', 'USA', '02107', 'NA');
INSERT INTO `offices` VALUES ('3', 'NYC', '+1 212 555 3000', '523 East 53rd Street', 'apt. 5A', 'NY', 'USA', '10022', 'NA');
INSERT INTO `offices` VALUES ('4', 'Paris', '+33 14 723 4404', '43 Rue Jouffroy D\'abbans', null, null, 'France', '75017', 'EMEA');
INSERT INTO `offices` VALUES ('5', 'Tokyo', '+81 33 224 5000', '4-1 Kioicho', null, 'Chiyoda-Ku', 'Japan', '102-8578', 'Japan');
INSERT INTO `offices` VALUES ('6', 'Sydney', '+61 2 9264 2451', '5-11 Wentworth Avenue', 'Floor #2', null, 'Australia', 'NSW 2010', 'APAC');
INSERT INTO `offices` VALUES ('7', 'London', '+44 20 7877 2041', '25 Old Broad Street', 'Level 7', null, 'UK', 'EC2N 1HN', 'EMEA');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES ('3', 'John', 'Doe', 'male', 'Kansas', '1972-11-02');
INSERT INTO `persons` VALUES ('4', 'Tatyana', 'Fitzpatrick', 'male', 'London', '1989-01-01');
INSERT INTO `persons` VALUES ('6', 'Airi', 'Satou', 'female', 'asd', '1964-03-04');
INSERT INTO `persons` VALUES ('7', 'Garrett', 'Winters', 'male', 'Tokyo', '1988-09-02');
INSERT INTO `persons` VALUES ('8', 'John', 'Doe', 'male', 'Kansas', '1972-11-02');
INSERT INTO `persons` VALUES ('9', 'Tatyana', 'Fitzpatrick', 'male', 'London', '1989-01-01');
INSERT INTO `persons` VALUES ('10', 'Quinn', 'Flynn', 'male', 'Edinburgh', '1977-03-24');
INSERT INTO `persons` VALUES ('11', 'Airi', 'Satou', 'female', 'Tokyo', '1964-03-04');
INSERT INTO `persons` VALUES ('12', 'Garrett', 'Winters', 'male', 'Tokyo', '1988-09-02');
INSERT INTO `persons` VALUES ('13', 'John', 'Doe', 'male', 'Kansas', '1972-11-02');
INSERT INTO `persons` VALUES ('14', 'Tatyana', 'Fitzpatrick', 'male', 'London', '1989-01-01');
INSERT INTO `persons` VALUES ('16', 'Airi', 'Satou', 'female', 'Tokyo', '1964-03-04');
