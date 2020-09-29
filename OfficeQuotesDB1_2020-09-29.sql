# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31)
# Database: OfficeQuotesDB1
# Generation Time: 2020-09-29 14:56:45 +0000
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
	(1,'images/MS1.jpg',1),
	(2,'images/MS2.jpg',2),
	(3,'images/MS3.jpg',4),
	(4,'images/MS4.jpg',8),
	(5,'images/MS5.jpg',10),
	(6,'images/prisongmike.jpg',13),
	(7,'images/toby.png',3),
	(8,'images/PB1.jpg',5),
	(9,'images/PB2.jpg',20),
	(10,'images/KM1.jpg',9),
	(11,'images/KM2.jpg',NULL),
	(12,'images/MP1.jpeg',7),
	(13,'images/MP2.jpg',NULL),
	(14,'images/JH1.jpg',11),
	(15,'images/JH2.jpg',NULL),
	(16,'images/DW1.jpg',6),
	(17,'images/DS2.jpg',12),
	(18,'images/DS3.jpg',21),
	(19,'images/DS4.jpg',22),
	(20,'images/DS5.jpg',NULL),
	(21,'images/DS6.jpg',NULL),
	(22,'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFRUXFRUVFRcVFRUXFRUVFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0dHR0tLS0tLS0tLS0tLSstLS0tLS0tLS0rLSstLS0tKy0tLS0tKy0tLSstLS0tLS0tLSstMv/AABEIAKgBLAMBIgACEQEDEQH/',19),
	(23,'https://4.bp.blogspot.com/-MEnLCZOFlwc/VRYW1vg37QI/AAAAAAAACdY/EKC8ND58_z8/s1600/darryl-philbin%2Brandom%2Bquote%2Bgenerator.jpg',18),
	(24,'https://imgix.bustle.com/uploads/image/2017/12/20/e0364c80-0232-49bf-a37d-12d1e4a67940-screen-shot-2017-12-19-at-94303-pm.png?w=960&h=540&fit=crop&crop=faces&auto=format%2Ccompress&cs=srgb&q=70',17),
	(25,'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUTExIVFRUXFRUXFhUWFRUVFRUXFRUWFxUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGS0dHR0rLS0tLS0rKy0tLS0tLS0tLS0tLS0rKy0tLS0tLS0tLS0tLS0tLS03Kzc3LSs3NysrLf/AABEIALEBHAMBIgACEQEDEQH/',14),
	(26,'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2000&h=1333&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2020%2F01%2Fthe-office-2000.jpg',15),
	(27,'https://img.huffingtonpost.com/asset/563a4a281800002a00303d55.jpeg?ops=crop_2_9_1351_693,scalefit_630_noupscale',16);

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
	(12,'\"Really Jim? You don\'t understand the difference between a slaughter house and a rendering plant? Uhhh, remind me not to lend you any dead cows or horses.\"','Dwight Schrute','\'Junior Salesman\' - Season 9, Episode 13','7'),
	(13,'\"Just seems awfully mean. But sometimes, the ends justify the mean.\"','Michael Scott','\'Frame Toby\' - Season 5, Episode 8','9'),
	(14,'\"You ever notice you can only ooze two things? Sexuality and pus. Man, I tell ya.\"','Creed Bratton','\'Body Language\' - Season 6, Episode 23','7'),
	(15,'\"I\'ve been involved in a number of cults, both as a leader and a follower. You have more fun as a follower. But you make more money as a leader.\"','Creed Bratton','\'Blood Drive\' - Season 5, Episode 16','6'),
	(16,'\"Nobody steals from Creed Bratton and gets away with it. The last person to do this disappeared. His name: Creed Bratton.\"','Creed Bratton','\'Crime Aid\' - Season 5, Episode 4','7'),
	(17,'\"Look, I know the reason that you guys became accountants is \'cause you\'re not good at interacting with people. But guess what? From now on, you guys are no longer losers. So gives yourselves a round of applause.\"','Kelly Kapoor','\'Product Recall\' - Season 3, Episode 20','4'),
	(18,'\"I decided to stay home, eat a bunch of tacos in my basement. Now my basement smells like tacos. You can\'t air out a basement. And taco air is heavy. It settles at the lowest point.\"','Darryl Philbin','\'Lotto\' - Season 8, Episode 3','5'),
	(19,'\"I taught Mike some, uh, some phrases to help with his interracial conversation. You know, stuff like, \"fleece it out,\" \"going mach 5,\" \"dinkin\' flicka.\" You know, things us Negroes say.\"','Darryl Philbin','\'Casino Night\' - Season 2, Episode 22','6'),
	(20,'\"Well I just wanna take a minute to talk to you all about something very serious. Once every hour, someone is involved in an internet scam. That man is Michael Scott. He\'s supporting about twenty Nigerian princesses.\"','Pam Beesly','\'Stress Relief\' - Season 5, Episode 13','5'),
	(21,'\"Five minutes ahead of schedule... Right on schedule.\"','Dwight Shrute','\'Scott\'s Tots\' - Season 6, Episode 12','6'),
	(22,'\"Would I ever leave this company? Look, I\'m all about loyalty. In fact, I feel like part of what I\'m being paid for here is my loyalty. But if there were somewhere else that valued loyalty more highly, I\'m going wherever they value loyalty the most.\"','Dwight Shrute','\'Halloween\' - Season 2, Episode 5','6');

/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
