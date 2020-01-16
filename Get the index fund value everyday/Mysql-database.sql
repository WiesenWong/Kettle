-- -------------------------------------------------------- 
-- 主机:                           localhost
-- 服务器版本:                        8.0.19 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 index_fund 的数据库结构
DROP DATABASE IF EXISTS `index_fund`;
CREATE DATABASE IF NOT EXISTS `index_fund` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `index_fund`;

-- 导出  表 index_fund.fund_hold_info 结构
DROP TABLE IF EXISTS `fund_hold_info`;
CREATE TABLE IF NOT EXISTS `fund_hold_info` (
  `user` varchar(50) NOT NULL COMMENT '持有人',
  `code` varchar(6) NOT NULL COMMENT '持有基金代码',
  `nav` double NOT NULL COMMENT '持有成本净值',
  `share` double NOT NULL COMMENT '持有份额',
  `cost` double NOT NULL COMMENT '持有成本',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。
-- 导出  表 index_fund.fund_value_his 结构
DROP TABLE IF EXISTS `fund_value_his`; 
CREATE TABLE IF NOT EXISTS `fund_value_his` (
  `code` varchar(6) NOT NULL COMMENT '指数基金代码',
  `nav` double NOT NULL COMMENT '指数基金净值',
  `percentage` double NOT NULL COMMENT '指数基金涨幅',
  `time` datetime NOT NULL COMMENT '时间',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录产生时间',
  PRIMARY KEY (`code`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
