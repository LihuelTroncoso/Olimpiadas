CREATE DATABASE  IF NOT EXISTS `bd_museo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_museo`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_museo
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beepcon`
--
set global foreign_key_checks = 0;
DROP TABLE IF EXISTS `beepcon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beepcon` (
  `idBeepcon` int NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`idBeepcon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beepcon`
--

LOCK TABLES `beepcon` WRITE;
/*!40000 ALTER TABLE `beepcon` DISABLE KEYS */;
INSERT INTO `beepcon` VALUES (1,'Centro-Abajo'),(2,'Esquina-Inferior-Derecha'),(3,'Esquina-Inferior-Izquierda'),(4,'Esquina-Superior-Izquierda'),(5,'Centro-Arriba'),(6,'Esquina-Superior-Derecha');
/*!40000 ALTER TABLE `beepcon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `idcomments` int NOT NULL AUTO_INCREMENT,
  `content` varchar(999) DEFAULT NULL,
  `issue` varchar(45) NOT NULL,
  PRIMARY KEY (`idcomments`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `idEvents` int NOT NULL,
  `event` varchar(45) NOT NULL,
  PRIMARY KEY (`idEvents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Logueo usuario'),(2,'Reserva guia');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitions`
--

DROP TABLE IF EXISTS `exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibitions` (
  `idExhibitions` int NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Beepcon_idBeepcon` int NOT NULL,
  `image` varchar(45) NOT NULL,
  PRIMARY KEY (`idExhibitions`,`Beepcon_idBeepcon`),
  KEY `fk_Exhibitions_Beepcon1_idx` (`Beepcon_idBeepcon`),
  CONSTRAINT `fk_Exhibitions_Beepcon1` FOREIGN KEY (`Beepcon_idBeepcon`) REFERENCES `beepcon` (`idBeepcon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions`
--

LOCK TABLES `exhibitions` WRITE;
/*!40000 ALTER TABLE `exhibitions` DISABLE KEYS */;
INSERT INTO `exhibitions` VALUES (1,'El retrato de Lisa Gherardini, esposa de Francesco del Giocondo, ​ más conocido como La Gioconda o Monna Lisa, es una obra pictórica del polímata renacentista italiano Leonardo da Vinci. Fue adquirida por el rey Francisco I de Francia a comienzos del siglo XVI y desde entonces es propiedad del Estado francés.',1,'1663329347_1663243199_Mona Lisa.jpg'),(2,'El grito es el título de cuatro cuadros del noruego Edvard Munch. La versión más famosa se encuentra en la Galería Nacional de Noruega y fue completada en 1893.​ Otras dos versiones del cuadro se encuentran en el Museo Munch, también en Oslo, mientras que la cuarta versión pertenece a una colección particular.',2,'1663329367_1663278431_el-grito-munch.jpeg'),(3,'En el cuadro Naturaleza muerta con cráneo y tres erizos, el cráneo, se contrapone a los erizos como símbolo de los placeres de la vida. Las cuencas oculares de la calavera se convierten en ojos de mirada fija, y la boca se retuerce casi en una sonrisa. La muerte frente a la presencia hedonista del mar y de la vida.',3,'1663329392_1663245387_Perro.jpg'),(4,'Retrato de Dora Maar es un óleo sobre lienzo de 1937 de Pablo Picasso. Representa a Dora Maar, la amante del pintor, sentada en una silla. Forma parte de la colección del Musée Picasso, en París, donde está considerada como una de las obras maestras de Picasso.',4,'1663329400_1663245393_La Fea.jpg'),(5,'El cuadro fue elaborado por Picasso utilizando una técnica de vidrio que une diversas láminas de cristal coloreado con esmalte y después trabajado con fuego, llamada \"Gennmail\" en francés, según informa la agencia Efe.',5,'1663329407_1663245402_Dibujo.jpg'),(6,'Los girasoles es una serie de cuadros al óleo realizados por el pintor neerlandés Vincent van Gogh. De la serie hay tres cuadros similares con catorce girasoles en un jarrón, dos con doce girasoles, uno con tres y otro con cinco.',6,'1663329412_1663243779_imagen.jpg.jpg');
/*!40000 ALTER TABLE `exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `idGames` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `respuestaA` varchar(45) NOT NULL,
  `respuestaB` varchar(45) NOT NULL,
  `respuestaC` varchar(45) NOT NULL,
  `correcta` varchar(1) NOT NULL,
  `respuestas` varchar(250) NOT NULL,
  PRIMARY KEY (`idGames`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (5,'¿En que año se creo la Gioconda / Mona Lisa?','1503','1980','1895','A','[1503 ,1980 ,1895]'),(6,'¿Quién pintó el grito original?','Leonardo da Vinci','Edvard Munch','Pablo Picasso','B','[Leonardo da Vinci ,Edvard Munch ,Pablo Picasso]'),(7,'¿Cómo se llama el retrato de Dora Maar?','Dora Maar','La mujer que llora','La Fea','C','[Dora Maar ,La mujer que llora ,La Fea]');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guides`
--

DROP TABLE IF EXISTS `guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guides` (
  `idGuides` int NOT NULL AUTO_INCREMENT,
  `language` varchar(45) NOT NULL,
  `shift` varchar(45) NOT NULL,
  `schedule` date NOT NULL,
  `Users_idUsers` int NOT NULL,
  PRIMARY KEY (`idGuides`,`Users_idUsers`),
  KEY `fk_Shift_Users1_idx` (`Users_idUsers`),
  CONSTRAINT `fk_Shift_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guides`
--

LOCK TABLES `guides` WRITE;
/*!40000 ALTER TABLE `guides` DISABLE KEYS */;
INSERT INTO `guides` VALUES (26,'español','Mañana','2022-09-22',1),(27,'español','Mañana','2022-09-28',1),(28,'español','Mañana','2022-09-28',1),(29,'español','Tarde','2022-09-28',1);
/*!40000 ALTER TABLE `guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guides_has_exhibitions`
--

DROP TABLE IF EXISTS `guides_has_exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guides_has_exhibitions`
--

LOCK TABLES `guides_has_exhibitions` WRITE;
/*!40000 ALTER TABLE `guides_has_exhibitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `guides_has_exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guides_has_games`
--

DROP TABLE IF EXISTS `guides_has_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guides_has_games` (
  `Guides_idShift` int NOT NULL,
  `Guides_Users_idUsers` int NOT NULL,
  `Games_idGames` int NOT NULL,
  `Games_Beepcon_idBeepcon` int NOT NULL,
  PRIMARY KEY (`Guides_idShift`,`Guides_Users_idUsers`,`Games_idGames`,`Games_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Games_Games1_idx` (`Games_idGames`,`Games_Beepcon_idBeepcon`),
  KEY `fk_Guides_has_Games_Guides1_idx` (`Guides_idShift`,`Guides_Users_idUsers`),
  CONSTRAINT `fk_Guides_has_Games_Games1` FOREIGN KEY (`Games_idGames`) REFERENCES `games` (`idGames`),
  CONSTRAINT `fk_Guides_has_Games_Guides1` FOREIGN KEY (`Guides_idShift`, `Guides_Users_idUsers`) REFERENCES `guides` (`idGuides`, `Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guides_has_games`
--

LOCK TABLES `guides_has_games` WRITE;
/*!40000 ALTER TABLE `guides_has_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `guides_has_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `idLogs` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Users_idUsers` int NOT NULL,
  `Events_idEvents` int NOT NULL,
  PRIMARY KEY (`idLogs`,`Users_idUsers`,`Events_idEvents`),
  KEY `fk_Logs_Users_idx` (`Users_idUsers`),
  KEY `fk_Logs_Events1_idx` (`Events_idEvents`),
  CONSTRAINT `fk_Logs_Events1` FOREIGN KEY (`Events_idEvents`) REFERENCES `events` (`idEvents`),
  CONSTRAINT `fk_Logs_Users` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2022-09-16 07:57:12',1,1),(2,'2022-09-16 08:01:51',1,1),(3,'2022-09-16 08:23:21',1,2),(4,'2022-09-16 08:23:45',1,2),(5,'2022-09-16 08:26:10',1,2),(6,'2022-09-16 08:27:33',1,1),(7,'2022-09-16 08:27:48',1,2),(8,'2022-09-16 08:28:43',1,2),(9,'2022-09-16 08:29:13',1,2),(10,'2022-09-16 08:31:32',1,2),(11,'2022-09-16 08:32:24',1,2),(12,'2022-09-16 08:33:09',1,2),(13,'2022-09-16 08:33:31',1,2),(14,'2022-09-16 08:35:08',1,2),(15,'2022-09-16 08:35:36',1,2),(16,'2022-09-16 08:36:26',1,2),(17,'2022-09-16 08:36:44',1,2),(18,'2022-09-16 08:39:46',1,2),(19,'2022-09-16 08:39:51',1,2),(20,'2022-09-16 08:39:55',1,2),(21,'2022-09-16 08:40:12',1,2),(22,'2022-09-16 08:40:43',1,2),(23,'2022-09-16 08:40:49',1,2),(24,'2022-09-16 08:40:56',1,2),(25,'2022-09-16 08:41:09',1,2),(26,'2022-09-16 08:41:14',1,2),(27,'2022-09-16 08:41:18',1,2),(28,'2022-09-16 08:41:29',1,2),(29,'2022-09-16 08:49:36',1,1),(30,'2022-09-16 08:54:57',1,1),(31,'2022-09-16 10:37:52',1,1),(32,'2022-09-16 10:41:44',1,1),(33,'2022-09-16 10:46:38',1,1),(34,'2022-09-16 10:46:52',1,1),(35,'2022-09-16 11:09:08',1,1),(36,'2022-09-16 11:28:58',1,1),(37,'2022-09-16 11:54:57',1,1),(38,'2022-09-16 11:55:06',1,2),(39,'2022-09-16 11:55:37',1,1),(40,'2022-09-16 11:55:44',1,2),(41,'2022-09-16 11:56:47',1,2),(42,'2022-09-16 11:57:58',1,2),(43,'2022-09-16 12:02:24',1,1),(44,'2022-09-16 12:21:06',1,1);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL,
  `location` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@admin.com',1,'administrador',1),(2,'nico90','123','nico@gmail.com',0,'Nicolas',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_museo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16 12:32:31
