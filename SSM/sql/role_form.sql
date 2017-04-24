DROP TABLE IF EXISTS `roleInfo`;
CREATE TABLE `roleInfo` (
  `id` varchar(32) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `name` varchar(128) NOT NULL,
  `create_time` varchar(255) NOT NULL,
  
  `description` varchar(255) DEFAULT NULL,
  `valid_endtime` varchar(255) DEFAULT NULL,
  `valid_starttime` varchar(255) DEFAULT NULL,
  `creator_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK74A6B2A8AB508918` (`creator_id`),
  CONSTRAINT `FK74A6B2A8AB508918` FOREIGN KEY (`creator_id`) REFERENCES `sys_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;