-- Wap PhpMyAdmin 211
-- http://master-land.net/phpmyadmin 
-- Generation Time: 2016-03-12 05:25
-- MySQL Server Version: 5.5.48-MariaDB
-- PHP Version: 5.4.45

-- Database: `adquicom_p`


-- --------------------------------------------------------
-- 
-- Table structure for table `adinvoice`
-- 

DROP TABLE IF EXISTS `adinvoice`;
CREATE TABLE `adinvoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `method` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `advertises`
-- 

DROP TABLE IF EXISTS `advertises`;
CREATE TABLE `advertises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `url` varchar(5000) NOT NULL,
  `type` varchar(500) NOT NULL,
  `device` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `dset` varchar(500) NOT NULL,
  `cset` varchar(500) NOT NULL,
  `acpc` varchar(500) NOT NULL,
  `ucpc` varchar(500) NOT NULL,
  `adult` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(500) NOT NULL,
  `pcpc` varchar(500) NOT NULL DEFAULT '0',
  `spent` varchar(500) NOT NULL DEFAULT '0',
  `adc` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `affiliates`
-- 

DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `appeal`
-- 

DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(500) NOT NULL,
  `blockr` varchar(5000) NOT NULL,
  `msg` varchar(5000) NOT NULL,
  `status` varchar(500) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `clicks`
-- 

DROP TABLE IF EXISTS `clicks`;
CREATE TABLE `clicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `ua` varchar(500) NOT NULL,
  `ip` varchar(500) NOT NULL,
  `time` varchar(5000) NOT NULL,
  `host` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `siteid` int(11) NOT NULL,
  `adid` int(11) NOT NULL,
  `adtype` varchar(500) NOT NULL,
  `browser` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `forum_answer`
-- 

DROP TABLE IF EXISTS `forum_answer`;
CREATE TABLE `forum_answer` (
  `question_id` int(4) NOT NULL DEFAULT '0',
  `a_id` int(4) NOT NULL DEFAULT '0',
  `a_name` varchar(65) NOT NULL DEFAULT '',
  `a_email` varchar(65) NOT NULL DEFAULT '',
  `a_answer` longtext NOT NULL,
  `a_datetime` varchar(25) NOT NULL DEFAULT '',
  `a_like` varchar(500) DEFAULT NULL,
  KEY `a_id` (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `forum_question`
-- 

DROP TABLE IF EXISTS `forum_question`;
CREATE TABLE `forum_question` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  `name` varchar(65) NOT NULL DEFAULT '',
  `datetime` varchar(25) NOT NULL DEFAULT '',
  `reply` int(4) NOT NULL DEFAULT '0',
  `like` varchar(500) NOT NULL DEFAULT '0',
  `email` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `game`
-- 

DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE latin1_general_ci NOT NULL,
  `date` varchar(5000) CHARACTER SET latin1 NOT NULL,
  `visit` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------
-- 
-- Table structure for table `imp`
-- 

DROP TABLE IF EXISTS `imp`;
CREATE TABLE `imp` (
  `uid` int(11) NOT NULL,
  `imp` int(11) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `invoice`
-- 

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `method` varchar(500) NOT NULL,
  `via` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `operator` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `ip2c`
-- 

DROP TABLE IF EXISTS `ip2c`;
CREATE TABLE `ip2c` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `begin_ip` varchar(20) DEFAULT NULL,
  `end_ip` varchar(20) DEFAULT NULL,
  `begin_ip_num` int(11) unsigned DEFAULT NULL,
  `end_ip_num` int(11) unsigned DEFAULT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `country_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin_ip_num` (`begin_ip_num`,`end_ip_num`)
) ENGINE=MyISAM AUTO_INCREMENT=80453 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `manager`
-- 

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `fullname` varchar(75) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `fb` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------
-- 
-- Table structure for table `staff`
-- 

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passd` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `username` varchar(75) NOT NULL,
  `fullname` varchar(75) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `msgs`
-- 

DROP TABLE IF EXISTS `msgs`;
CREATE TABLE `msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `tiltle` varchar(500) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `date` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `news`
-- 

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(5000) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `time` varchar(500) NOT NULL,
  `view` varchar(5000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `newsreplys`
-- 

DROP TABLE IF EXISTS `newsreplys`;
CREATE TABLE `newsreplys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL,
  `msg` varchar(5000) NOT NULL,
  `newsid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `notifications`
-- 

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `news` varchar(300) NOT NULL,
  `other` varchar(100) NOT NULL,
  `stat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `pop`
-- 

DROP TABLE IF EXISTS `pop`;
CREATE TABLE `pop` (
  `uid` int(11) NOT NULL,
  `imp` int(11) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `ref`
-- 

DROP TABLE IF EXISTS `ref`;
CREATE TABLE `ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refid` varchar(75) COLLATE latin1_general_ci NOT NULL,
  `refuser` varchar(75) COLLATE latin1_general_ci NOT NULL,
  `validated` int(11) NOT NULL,
  `site` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------
-- 
-- Table structure for table `send`
-- 

DROP TABLE IF EXISTS `send`;
CREATE TABLE `send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bal` text NOT NULL,
  `user` text NOT NULL,
  `time` text NOT NULL,
  `user1` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `sites`
-- 

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `descr` varchar(5000) NOT NULL,
  `status` varchar(500) NOT NULL,
  `adult` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `manager` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `skip`
-- 

DROP TABLE IF EXISTS `skip`;
CREATE TABLE `skip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(11) NOT NULL,
  `pin` int(5) NOT NULL,
  `other` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `tickets`
-- 

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `msg` varchar(5000) NOT NULL,
  `time` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `treplys`
-- 

DROP TABLE IF EXISTS `treplys`;
CREATE TABLE `treplys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `reply` varchar(5000) NOT NULL,
  `date` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `ucreport`
-- 

DROP TABLE IF EXISTS `ucreport`;
CREATE TABLE `ucreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `java` varchar(500) CHARACTER SET utf8 NOT NULL,
  `android` varchar(500) NOT NULL,
  `earn` varchar(50) NOT NULL,
  `user` varchar(500) NOT NULL,
  `cut` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `ucuser`
-- 

DROP TABLE IF EXISTS `ucuser`;
CREATE TABLE `ucuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `uclink` varchar(500) NOT NULL,
  `ucbal` varchar(50) NOT NULL,
  `install` int(11) NOT NULL,
  `res` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `userdata`
-- 

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE `userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `firstname` varchar(5000) NOT NULL,
  `lastname` varchar(5000) NOT NULL,
  `address1` varchar(5000) NOT NULL,
  `address2` varchar(5000) NOT NULL,
  `state` varchar(5000) NOT NULL,
  `city` varchar(5000) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `country` varchar(5000) NOT NULL,
  `mobile` varchar(5000) NOT NULL,
  `status` varchar(5000) NOT NULL,
  `adbalance` varchar(500) NOT NULL,
  `pubalance` varchar(500) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `laston` varchar(500) NOT NULL,
  `wall` varchar(500) NOT NULL,
  `ucbal` varchar(500) NOT NULL DEFAULT '0',
  `javabal` varchar(500) NOT NULL,
  `androidbal` varchar(500) NOT NULL DEFAULT '0',
  `lastmonth` varchar(500) NOT NULL DEFAULT '0',
  `ucstat` varchar(500) NOT NULL,
  `hideme` varchar(10) NOT NULL DEFAULT '0',
  `blockr` varchar(500) NOT NULL DEFAULT '0',
  `appealr` varchar(5000) NOT NULL DEFAULT '0',
  `tclicks` varchar(500) NOT NULL DEFAULT '0',
  `pclicks` varchar(500) NOT NULL DEFAULT '0',
  `manager` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `verification`
-- 

DROP TABLE IF EXISTS `verification`;
CREATE TABLE `verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- 
-- Table structure for table `visit`
-- 

DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visit` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


