# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31)
# Database: OfficeQuotesDB
# Generation Time: 2020-09-28 15:55:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `quotes-ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `url`, `quotes-ID`)
VALUES
	(1,'MS1.jpg',1),
	(2,'MS2.jpg',2),
	(3,'MS3.jpg',4),
	(4,'MS4.jpg',8),
	(5,'MS5.jpg',10),
	(6,'prisongmike.jpg',NULL),
	(7,'toby.png',3),
	(8,'PB1.jpg',5),
	(9,'PB2.jpg',NULL),
	(10,'KM1.jpg',9),
	(11,'KM2.jpg',NULL),
	(12,'MP1.jpeg',7),
	(13,'MP2.jpg',NULL),
	(14,'JH1.jpg',11),
	(15,'JH2.jpg',NULL),
	(16,'DW1.jpg',6),
	(17,'DS2.jpg',12),
	(18,'DS3.jpg',NULL),
	(19,'DS4.jpg',NULL),
	(20,'DS5.jpg',NULL),
	(21,'DS6.jpg',NULL);

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quotes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quote` varchar(500) DEFAULT NULL,
  `whoSaidIt` varchar(100) DEFAULT NULL,
  `episode` varchar(50) DEFAULT NULL,
  `hilarity-ometer` enum('1','2','3','4','5','6','7','8','9','10') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;

INSERT INTO `quotes` (`id`, `quote`, `whoSaidIt`, `episode`, `hilarity-ometer`)
VALUES
	(1,'Would I rather be feared or loved? Easy, both. I want people to be afraid of how much they love me.','Michael Scott','\'The Fight\' - Season 2, Episode 6','8'),
	(2,'\"I don\'t understand? you want to see other people? Only other people?\"','Michael Scott','\'The Client\' - Season 2, Episode 7','7'),
	(3,'\"Technically, I am in Human Resources, and Dwight was asking me about human anatomy. I?m just sad the public school system failed him so badly.\"','Toby Flenderson','\'Sexual Harassment\' - Season 2, Episode 2','3'),
	(4,'\"When I retire, I-I don\'t want to just disappear to an island somewhere. I want to be the guy who gives everything back. I want it to be like: \'Hey, who donated that hospital wing that is saving so many lives?\' \'Umm, well, uh, I don\'t know. It was anonymous.\' \'Well, guess what? That was Michael Scott!\' \'But- it was anonymous, how do you know?\' \'...Because I\'m him!\'\"','Michael Scott','\'The Alliance\' - Season 1, Episode 4','4'),
	(5,'\"You know what they say about a car wreck, where it\'s so awful you can\'t look away? The Dundies are like a car wreck that you want to look away from but you have to stare at it because your boss is making you.\"','Pam Beesly','\'The Dundies\' - Season 2, Episode 1','4'),
	(6,'\"\'R\' is among the most menacing of sounds. That\'s why they call it \'murder\' and not \'mukduk\'.\"','Dwight Schrute','\'The Mafia\' - Season 6, Episode 6','7'),
	(7,'\"Well I caught my son taking a dump on the upper-part of the toilet... he calls it an \"upper decker\".\"','Meredith Palmer','\'The Mafia\' - Season 6, Episode 6','5'),
	(8,'\"There is nothing more insulting to a great salesman than having to listen to a bad salesman. It\'s like a great basketball player having to listen to a bad basketball player.\"','Michael Scott','\'The Mafia\' - Season 6, Episode 6','7'),
	(9,'\"Jim\'s gone on his honeymoon. So I started borrowing his office, to fart in. Then one day, I came in, and I just stayed. \'Cause this place is awesome. It feels like home now. Even better than my home. My home sucks.\"','Kevin Malone','\'The Mafia\' - Season 6, Episode 6','3'),
	(10,'\"I feel like all my kids grew up, and then they married each other. It\'s every parent\'s dream.\"','Michael Scott','\'The Finale\' - Season 9, Episode 23','7'),
	(11,'\"By two o\'clock Dwight will choose himself to be the assistant to his own assistant, me.\"','Jim Halpert','\'A.A.R.M\' - Season 9, Episode 22','5'),
	(12,'\"Really Jim? You don\'t understand the difference between a slaughter house and a rendering plant? Uhhh, remind me not to lend you any dead cows or horses.\"','Dwight Schrute','\'Junior Salesman\' - Season 9, Episode 13','7');

/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
