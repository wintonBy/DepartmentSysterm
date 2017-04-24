DROP TABLE IF EXISTS `userInfo`;
CREATE TABLE `userInfo` (
  `id` varchar(32) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  
  `name` varchar(128) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(1) NOT NULL,
  `last_login_time` varchar(24) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  
  `old_password` varchar(150) DEFAULT NULL,
  `pwd_modify_time` varchar(24) NOT NULL,
  `serialNumber` int(11) DEFAULT NULL,
  
  `department_id_` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;