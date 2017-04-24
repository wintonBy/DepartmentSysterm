DROP TABLE IF EXISTS `departmentInfo`;
CREATE TABLE `departmentInfo` (
  `id` varchar(32) NOT NULL,
  `deleted` bit(1) NOT NULL,
  
  `name` varchar(32) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `description` longtext,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;