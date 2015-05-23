-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: atualizarhost
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animais`
--

DROP TABLE IF EXISTS `animais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animais`
--

LOCK TABLES `animais` WRITE;
/*!40000 ALTER TABLE `animais` DISABLE KEYS */;
INSERT INTO `animais` VALUES (1,'A B E L H A'),(3,'A L C E'),(4,'A N T A'),(5,'A R A N H A'),(6,'A R A P O N G A'),(7,'A R A R A'),(8,'A S N O'),(9,'A V E S T R U Z'),(10,'B A L E I A'),(11,'B A R A T A'),(12,'B E I J A    F L O R'),(13,'B O R B O L E T A'),(14,'B Ú F A L O'),(15,'C A B R A'),(18,'C A C H O R R O'),(16,'C A M A L E Ã O'),(17,'C A M E L O'),(19,'C A P I V A R A'),(20,'C A R A N G U E J O'),(21,'C A R N E I R O'),(22,'C A S C A V E L'),(23,'C A V A L O'),(24,'C H I P A N Z É'),(25,'C I G A R R A'),(26,'C I S N E'),(27,'C O A L A'),(28,'C O B R A'),(29,'C O E L H O'),(30,'C O R V O'),(31,'C R O C O D I L O'),(32,'E L E F A N T E'),(33,'E M A'),(34,'E S Q U I L O '),(35,'F O C A'),(36,'G A F A N H O T O'),(37,'G A L I N H A'),(38,'G A M B Á'),(39,'G A N S O'),(40,'G A T O'),(41,'G A V I Ã O'),(42,'G I R A F A'),(43,'G O L F I N H O'),(44,'G O R I L A'),(46,'H A M S T E R'),(47,'H I P O P Ó T O M O'),(48,'J A C A R É'),(49,'J I B Ó I A'),(50,'L A G A R T I X A'),(51,'L A G A R T O'),(53,'L E O P A R D O'),(52,'L E Ã O'),(54,'L H A M A'),(45,'L O B O'),(56,'O N Ç A'),(57,'P A P A G A I O'),(58,'P A T O'),(59,'P A V Ã O'),(60,'P O L V O'),(61,'P O M B O'),(62,'P O R C O'),(63,'P U M A'),(64,'R A P O S A'),(65,'R A T O'),(66,'R I N O C E R O N T E'),(67,'S A P O'),(68,'T A M A N D U Á'),(69,'T A T U'),(70,'T I G R E'),(71,'T O U R O'),(72,'T U C A N O'),(73,'U R S O'),(74,'U R U B U'),(75,'Z E B R A'),(2,'Á G U I A');
/*!40000 ALTER TABLE `animais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitais_do_brasil`
--

DROP TABLE IF EXISTS `capitais_do_brasil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capitais_do_brasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitais_do_brasil`
--

LOCK TABLES `capitais_do_brasil` WRITE;
/*!40000 ALTER TABLE `capitais_do_brasil` DISABLE KEYS */;
INSERT INTO `capitais_do_brasil` VALUES (17,'A R A C A J U'),(4,'B E L O    H O R I Z O N T E'),(19,'B E L É M'),(23,'B O A    V I S T A'),(9,'C A M P O    G R A N D E'),(11,'C U I A B Á'),(1,'C U R I T I B A'),(6,'F L O R I A N Ó P O L I S'),(18,'F O R T A L E Z A'),(8,'G O I Â N I A'),(16,'J O Ã O    P E S S O A'),(25,'M A C A P Á'),(24,'M A C E I Ó'),(26,'M A N A U S'),(14,'N A T A L'),(7,'P A L M A S'),(10,'P O R T O    A L E G R E'),(15,'P O R T O    V E L H O'),(12,'R E C I F E'),(22,'R I O    B R A N C O'),(5,'R I O    D E    J A N E I R O'),(21,'S A L V A D O R'),(20,'S Ã O    L U I Z'),(2,'S Ã O    P A U L O'),(13,'T E R E S I N A'),(3,'V I T Ó R I A');
/*!40000 ALTER TABLE `capitais_do_brasil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitais_do_mundo`
--

DROP TABLE IF EXISTS `capitais_do_mundo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capitais_do_mundo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitais_do_mundo`
--

LOCK TABLES `capitais_do_mundo` WRITE;
/*!40000 ALTER TABLE `capitais_do_mundo` DISABLE KEYS */;
INSERT INTO `capitais_do_mundo` VALUES (33,'A B U    D H A B I'),(41,'A M S T E R D Ã'),(6,'A R G E L'),(38,'A T E N A S'),(43,'B A G D Á'),(11,'B A K U'),(54,'B E L G R A D O'),(15,'B E L M O P A N'),(4,'B E R L I M'),(24,'B O G O T Á'),(18,'B R A S Í L I A'),(13,'B R I D E G E T O W N'),(14,'B R U X E L A S'),(42,'B U D A P E S T E'),(7,'B U E N O S    A I R E S'),(1,'C A B U L'),(31,'C A I R O'),(9,'C A M B E R R A'),(56,'C A R A C A S'),(23,'C I D A D E    D E    C I N G A P U R A'),(29,'C O P E N H A G U E'),(20,'D O H A'),(39,'G E O R G E T O W N'),(28,'H A V A N A'),(8,'I R E V A N'),(44,'J E R U S A L É M'),(5,'L A U A N D A'),(49,'L I M A'),(50,'L I S B O A'),(51,'L O N D R E S'),(47,'L U X E M B U R G O'),(35,'M A D R I'),(48,'M A L E'),(55,'M O N T E V I D É U'),(53,'M O S C O U'),(12,'N A S S A U'),(19,'O T T A W A'),(37,'P A R I S'),(22,'P E Q U I M'),(16,'P O R T O    N O V O'),(40,'P O R T O    P R Í N C I P E'),(52,'P R A G A'),(2,'P R E T Ó R I A'),(34,'Q U I T O'),(45,'R O M A'),(30,'R O S E A U'),(26,'S A N    J O S É'),(32,'S A N    S A L V A D O R'),(21,'S A N T I A G O'),(25,'S E U L'),(17,'S U C R E'),(3,'T I R A N A'),(46,'T Ó Q U I O'),(10,'V I E N A'),(36,'W A S H I N G T O N'),(27,'Z A G R E B');
/*!40000 ALTER TABLE `capitais_do_mundo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores`
--

DROP TABLE IF EXISTS `cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores`
--

LOCK TABLES `cores` WRITE;
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` VALUES (1,'A M A R E L O'),(2,'A Z U L'),(3,'B E G E'),(4,'B O R D Ô'),(5,'B R A N C O'),(6,'B R O N Z E'),(7,'C A S T A N H O'),(8,'C I N Z A'),(9,'C O B R E'),(10,'C R E M E'),(11,'D O U R A D O'),(12,'L A R A N J A'),(13,'L I L Á S'),(14,'M A R F I M'),(15,'M A R R O M'),(16,'P R A T A'),(17,'P R E T O'),(18,'P Ê S S E G O'),(19,'R O S A'),(20,'R O X O'),(21,'S A L M Ã O'),(22,'V E R D E'),(23,'V E R M E L H O'),(24,'V I O L E T A');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos_superiores`
--

DROP TABLE IF EXISTS `cursos_superiores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos_superiores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos_superiores`
--

LOCK TABLES `cursos_superiores` WRITE;
/*!40000 ALTER TABLE `cursos_superiores` DISABLE KEYS */;
INSERT INTO `cursos_superiores` VALUES (41,'A D M I N I S T R A Ç Ã O'),(1,'A G R O N O M I A'),(2,'A N Á L I S E    D E    S I S T E M A S'),(42,'A R Q U E O L O G I A'),(43,'A R Q U I T E T U R A'),(44,'A R Q U I V O L O G I A'),(3,'A S T R O N O M I A'),(4,'A U T O M A Ç Ã O    I N D U S T R I A L'),(27,'B I O L O G I A'),(28,'B I O M E D I C I N A'),(5,'B I O T E C N O L O G I A'),(45,'C I Ê N C I A    D A    I N F O R M A Ç Ã O'),(29,'C I Ê N C I A S    A M B I E N T A I S'),(40,'C I Ê N C I A S    H U M A N A S'),(46,'C I Ê N C I A S    S O C I A I S'),(47,'C O M U N I C A Ç Ã O    S O C I A L'),(6,'C O N T A B I L I D A D E'),(49,'D E S E N H O    I N D U S T R I A L'),(48,'D E S I G N'),(50,'D I R E I T O'),(30,'E C O L O G I A'),(32,'E D U C A Ç Ã O    F Í S I C A'),(33,'E N F E R M A G E M'),(7,'E N G E N H A R I A    A E R O N Á U T I C A'),(8,'E N G E N H A R I A    A G R Í C O L A'),(31,'E N G E N H A R I A    A M B I E N T A L'),(9,'E N G E N H A R I A    D E    A L I M E N T O S'),(10,'E N G E N H A R I A    D E    C O M P U T A Ç Ã O'),(13,'E N G E N H A R I A    D E    I N F O R M A Ç Ã O'),(14,'E N G E N H A R I A    D E    M A T E R I A I S'),(16,'E N G E N H A R I A    D E    M I N A S'),(17,'E N G E N H A R I A    D E    P E T R Ó L E O'),(19,'E N G E N H A R I A    D E    S O F T W A R E'),(11,'E N G E N H A R I A    E L É T R I C A'),(12,'E N G E N H A R I A    I N D U S T R I A L'),(15,'E N G E N H A R I A    M E C Â N I C A'),(18,'E N G E N H A R I A    S A N I T Á R I A'),(51,'E S T A T Í S T I C A'),(34,'F I S I O T E R A P I A'),(20,'F Í S I C A'),(52,'G A S T R O N O M I A'),(53,'G E O G R A F I A'),(21,'G E O L O G I A'),(54,'H I S T Ó R I A'),(59,'J O G O S     D I G I T A I S'),(55,'J O R N A L I S M O'),(22,'M A T E M Á T I C A'),(35,'M E D I C I N A'),(36,'M E D I C I N A    V E T E R I N Á R I A'),(23,'M E T E O R O L O G I A'),(37,'N U T R I Ç Ã O'),(38,'O D O N T O L O G I A'),(56,'P E D A G O G I A'),(39,'P S I C O L O G I A'),(57,'P U B L I C I D A D E'),(24,'Q U Í M I C A'),(25,'Q U Í M I C A    I N D U S T R I A L'),(58,'R E L A Ç Õ E S    I N T E R N A C I O N A I S'),(26,'S I S T E M A S    D E    I N F O R M A Ç Ã O'),(60,'T U R I S M O'),(61,'U R B A N I S M O');
/*!40000 ALTER TABLE `cursos_superiores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_do_brasil`
--

DROP TABLE IF EXISTS `estados_do_brasil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_do_brasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_do_brasil`
--

LOCK TABLES `estados_do_brasil` WRITE;
/*!40000 ALTER TABLE `estados_do_brasil` DISABLE KEYS */;
INSERT INTO `estados_do_brasil` VALUES (1,'A C R E'),(2,'A L A G O A S'),(3,'A M A P Á'),(4,'A M A Z O N A S'),(5,'B A H I A'),(6,'C E A R Á'),(7,'D I S T R I T O    F E D E R A L'),(8,'E S P Í R I T O    S A N T O'),(9,'G O I Á S'),(10,'M A R A N H Ã O'),(11,'M A T O    G R O S S O'),(12,'M A T O    G R O S S O   D O    S U L'),(13,'M I N A S    G E R A I S'),(16,'P A R A N Á'),(15,'P A R A Í B A'),(14,'P A R Á'),(17,'P E R N A M B U C O'),(18,'P I A U Í'),(19,'R I O    D E    J A N E I R O'),(20,'R I O    G R A N D E    D O    N O R T E'),(21,'R I O    G R A N D E    D O    S U L'),(22,'R O N D Ô N I A'),(23,'R O R A I M A'),(24,'S A N T A    C A T A R I N A'),(26,'S E R G I P E'),(25,'S Ã O    P A U L O'),(27,'T O C A N T I N S');
/*!40000 ALTER TABLE `estados_do_brasil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frutas`
--

DROP TABLE IF EXISTS `frutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frutas`
--

LOCK TABLES `frutas` WRITE;
/*!40000 ALTER TABLE `frutas` DISABLE KEYS */;
INSERT INTO `frutas` VALUES (1,'A B A C A T E'),(2,'A B A C A X I'),(4,'A C E R O L A'),(5,'A M E I X A'),(7,'A M O R A'),(6,'A M Ê N D O A'),(8,'A V E L Ã'),(3,'A Ç A Í'),(9,'B A N A N A'),(11,'C A J U'),(10,'C A J Á'),(12,'C A Q U I'),(13,'C A R A M B O L A'),(14,'C E R E J A'),(15,'C I R I G U E L A'),(16,'C U P U A Ç U'),(17,'D A M A S C O'),(18,'F R A M B O E S A'),(19,'G O I A B A'),(20,'G R A V I O L A'),(21,'G R O S E L H A'),(22,'G U A R A N Á'),(23,'J A B U T I C A B A'),(24,'J A C A'),(25,'J A M B O'),(26,'K I W I'),(27,'L A R A N J A'),(28,'L I M Ã O'),(30,'M A M Ã O'),(31,'M A N G A'),(32,'M A N G A B A'),(33,'M A R A C U J Á'),(29,'M A Ç Ã'),(34,'M E L Â N C I A'),(35,'M E L Ã O'),(36,'M O R A N G O'),(39,'P I T A N G A'),(37,'P Ê R A'),(38,'P Ê S S E G O'),(40,'R O M Ã'),(41,'T A M A R I N D O'),(42,'T A N G E R I N A'),(43,'U M B U'),(44,'U V A');
/*!40000 ALTER TABLE `frutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'A F E G A N I S T Ã O'),(3,'A L E M A N H A'),(4,'A N D O R R A'),(5,'A N G O L A'),(7,'A R G E N T I N A'),(6,'A R Á B I A    S A U D I T A'),(8,'A U S T R Á L I A'),(10,'B A N G L A D E S H'),(12,'B O L Í V I A'),(13,'B R A S I L'),(14,'B U L G Á R I A'),(11,'B É L G I C A'),(15,'C A M A R Õ E S'),(16,'C A N A D Á'),(18,'C A T A R'),(17,'C A Z A Q U I S T Ã O'),(19,'C H I L E'),(20,'C H I N A'),(21,'C O L Ô M B I A'),(22,'C O R É I A    D O    N O R T E'),(23,'C O R É I A    D O    S U L'),(24,'C O S T A    D O    M A R F I M'),(25,'C O S T A    R I C A'),(26,'C R O Á C I A'),(27,'C U B A'),(28,'D I N A M A R C A'),(29,'E G I T O'),(30,'E L    S A L V A D O R'),(31,'E Q U A D O R'),(32,'E S P A N H A'),(33,'E S T A D O S    U N I D O S'),(34,'F I N L Â N D I A'),(35,'F R A N Ç A'),(36,'G A N A'),(37,'G R É C I A'),(38,'G U A T E M A L A'),(39,'H O L A N D A'),(40,'H O N D U R A S'),(41,'H U N G R I A'),(43,'I R Á Q U E'),(42,'I R Ã'),(44,'I T Á L I A'),(45,'J A M A I C A'),(46,'J A P Ã O'),(48,'L U X E M B U R G O'),(47,'L Í B I A'),(49,'M A L Á S I A'),(50,'M É X I C O'),(51,'M Ô N A C O'),(52,'N I G É R I A'),(53,'N O R U E G A'),(54,'N O V A    Z E L Â N D I A'),(55,'P A R A G U A I'),(56,'P E R U'),(57,'P O R T U G A L'),(58,'R E I N O    U N I D O'),(59,'R E P Ú B L I C A    D O M I N I C A N A'),(60,'R E P Ú B L I C A    T C H E C A'),(61,'R Ú S S I A'),(62,'S E N E G A L'),(66,'S R I    L A N K A'),(65,'S U I Ç A'),(68,'S U R I N A M E'),(67,'S U É C I A'),(63,'S É R V I A'),(64,'S Í R I A'),(69,'T O G O'),(70,'T U N Í S I A'),(71,'T U R Q U I A'),(72,'U C R Â N I A'),(73,'U R U G U A I'),(74,'V E N E Z U E L A'),(75,'V I E T N Ã'),(2,'Á F R I C A    D O    S U L'),(9,'Á U S T R I A');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `posicao` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `posicao_UNIQUE` (`posicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recorde`
--

DROP TABLE IF EXISTS `recorde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recorde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) COLLATE utf8_bin NOT NULL,
  `pontuacao` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `categoria_UNIQUE` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recorde`
--

LOCK TABLES `recorde` WRITE;
/*!40000 ALTER TABLE `recorde` DISABLE KEYS */;
/*!40000 ALTER TABLE `recorde` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-05  0:51:33
