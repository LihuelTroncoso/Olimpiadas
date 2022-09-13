# Host: localhost  (Version 8.0.25)
# Date: 2022-09-13 15:16:15
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "beepcon"
#

DROP TABLE IF EXISTS `beepcon`;
CREATE TABLE `beepcon` (
  `idBeepcon` int NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`idBeepcon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "beepcon"
#


#
# Structure for table "events"
#

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `idEvents` int NOT NULL,
  `event` varchar(45) NOT NULL,
  PRIMARY KEY (`idEvents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "events"
#


#
# Structure for table "exhibitions"
#

DROP TABLE IF EXISTS `exhibitions`;
CREATE TABLE `exhibitions` (
  `idExhibitions` int NOT NULL,
  `description` varchar(45) NOT NULL,
  `Beepcon_idBeepcon` int NOT NULL,
  PRIMARY KEY (`idExhibitions`,`Beepcon_idBeepcon`),
  KEY `fk_Exhibitions_Beepcon1_idx` (`Beepcon_idBeepcon`),
  CONSTRAINT `fk_Exhibitions_Beepcon1` FOREIGN KEY (`Beepcon_idBeepcon`) REFERENCES `beepcon` (`idBeepcon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "exhibitions"
#


#
# Structure for table "games"
#

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `idGames` int NOT NULL,
  `description` varchar(45) NOT NULL,
  `Beepcon_idBeepcon` int NOT NULL,
  PRIMARY KEY (`idGames`,`Beepcon_idBeepcon`),
  KEY `fk_Games_Beepcon1_idx` (`Beepcon_idBeepcon`),
  CONSTRAINT `fk_Games_Beepcon1` FOREIGN KEY (`Beepcon_idBeepcon`) REFERENCES `beepcon` (`idBeepcon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "games"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `role_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "users"
#


#
# Structure for table "logs"
#

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `idLogs` int NOT NULL,
  `date` datetime NOT NULL,
  `Users_idUsers` int NOT NULL,
  `Events_idEvents` int NOT NULL,
  PRIMARY KEY (`idLogs`,`Users_idUsers`,`Events_idEvents`),
  KEY `fk_Logs_Users_idx` (`Users_idUsers`),
  KEY `fk_Logs_Events1_idx` (`Events_idEvents`),
  CONSTRAINT `fk_Logs_Events1` FOREIGN KEY (`Events_idEvents`) REFERENCES `events` (`idEvents`),
  CONSTRAINT `fk_Logs_Users` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "logs"
#


#
# Structure for table "guides"
#

DROP TABLE IF EXISTS `guides`;
CREATE TABLE `guides` (
  `idGuides` int NOT NULL,
  `language` varchar(45) NOT NULL,
  `shift` varchar(45) NOT NULL,
  `schedule` date NOT NULL,
  `Users_idUsers` int NOT NULL,
  PRIMARY KEY (`idGuides`,`Users_idUsers`),
  KEY `fk_Shift_Users1_idx` (`Users_idUsers`),
  CONSTRAINT `fk_Shift_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "guides"
#


#
# Structure for table "guides_has_games"
#

DROP TABLE IF EXISTS `guides_has_games`;
CREATE TABLE `guides_has_games` (
  `Guides_idShift` int NOT NULL,
  `Guides_Users_idUsers` int NOT NULL,
  `Games_idGames` int NOT NULL,
  `Games_Beepcon_idBeepcon` int NOT NULL,
  PRIMARY KEY (`Guides_idShift`,`Guides_Users_idUsers`,`Games_idGames`,`Games_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Games_Games1_idx` (`Games_idGames`,`Games_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Games_Guides1_idx` (`Guides_idShift`,`Guides_Users_idUsers`),
  CONSTRAINT `fk_Guides_has_Games_Games1` FOREIGN KEY (`Games_idGames`, `Games_Beepcon_idBeepcon`) REFERENCES `games` (`idGames`, `Beepcon_idBeepcon`),
  CONSTRAINT `fk_Guides_has_Games_Guides1` FOREIGN KEY (`Guides_idShift`, `Guides_Users_idUsers`) REFERENCES `guides` (`idGuides`, `Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "guides_has_games"
#


#
# Structure for table "guides_has_exhibitions"
#

DROP TABLE IF EXISTS `guides_has_exhibitions`;
CREATE TABLE `guides_has_exhibitions` (
  `Guides_idShift` int NOT NULL,
  `Guides_Users_idUsers` int NOT NULL,
  `Exhibitions_idExhibitions` int NOT NULL,
  `Exhibitions_Beepcon_idBeepcon` int NOT NULL,
  PRIMARY KEY (`Guides_idShift`,`Guides_Users_idUsers`,`Exhibitions_idExhibitions`,`Exhibitions_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Exhibitions_Exhibitions1_idx` (`Exhibitions_idExhibitions`,`Exhibitions_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Exhibitions_Guides1_idx` (`Guides_idShift`,`Guides_Users_idUsers`),
  CONSTRAINT `fk_Guides_has_Exhibitions_Exhibitions1` FOREIGN KEY (`Exhibitions_idExhibitions`, `Exhibitions_Beepcon_idBeepcon`) REFERENCES `exhibitions` (`idExhibitions`, `Beepcon_idBeepcon`),
  CONSTRAINT `fk_Guides_has_Exhibitions_Guides1` FOREIGN KEY (`Guides_idShift`, `Guides_Users_idUsers`) REFERENCES `guides` (`idGuides`, `Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "guides_has_exhibitions"
#

