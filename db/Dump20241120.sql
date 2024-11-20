CREATE DATABASE  IF NOT EXISTS `gardening` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gardening`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: gardening
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `care`
--

DROP TABLE IF EXISTS `care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care` (
  `care_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` int DEFAULT NULL,
  `watering_frequency` int DEFAULT NULL,
  `last_watered_date` date DEFAULT NULL,
  `fertilization_frequency` int DEFAULT NULL,
  `last_fertilized_date` date DEFAULT NULL,
  `pruning_frequency` int DEFAULT NULL,
  `last_pruned_date` date DEFAULT NULL,
  `care_instructions` text,
  PRIMARY KEY (`care_id`),
  KEY `plant_id` (`plant_id`),
  CONSTRAINT `care_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`plant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care`
--

LOCK TABLES `care` WRITE;
/*!40000 ALTER TABLE `care` DISABLE KEYS */;
INSERT INTO `care` VALUES (1,1,7,NULL,30,NULL,60,NULL,'Water once a week. Fertilize once a month. Prune every 2 months.'),(2,2,10,NULL,15,NULL,45,NULL,'Water every 10 days. Fertilize bi-weekly. Prune every 1.5 months.'),(3,3,5,NULL,20,NULL,30,NULL,'Water every 5 days. Fertilize once a month. Prune every 2 months.'),(4,4,14,NULL,60,NULL,90,NULL,'Water every 2 weeks. Fertilize once every 2 months. Prune every 3 months.'),(5,5,3,NULL,25,NULL,60,NULL,'Water every 3 days. Fertilize once a month. Prune every 2 months.'),(6,6,7,NULL,30,NULL,60,NULL,'Water once a week. Fertilize once a month. Prune every 2 months.'),(7,7,7,NULL,15,NULL,45,NULL,'Water once a week. Fertilize every 2 weeks. Prune every 1.5 months.'),(8,8,5,NULL,20,NULL,30,NULL,'Water every 5 days. Fertilize once a month. Prune every 2 months.'),(9,9,10,NULL,45,NULL,90,NULL,'Water every 10 days. Fertilize once a month. Prune every 3 months.'),(10,10,3,NULL,15,NULL,60,NULL,'Water every 3 days. Fertilize every 2 weeks. Prune every 2 months.'),(11,11,7,NULL,30,NULL,60,NULL,'Water once a week. Fertilize once a month. Prune every 2 months.'),(12,12,14,NULL,60,NULL,90,NULL,'Water every 2 weeks. Fertilize once every 2 months. Prune every 3 months.'),(13,13,10,NULL,30,NULL,60,NULL,'Water every 10 days. Fertilize once a month. Prune every 2 months.'),(14,14,7,NULL,15,NULL,45,NULL,'Water once a week. Fertilize every 2 weeks. Prune every 1.5 months.'),(15,15,5,NULL,20,NULL,30,NULL,'Water every 5 days. Fertilize once a month. Prune every 2 months.'),(16,16,3,NULL,25,NULL,60,NULL,'Water every 3 days. Fertilize once a month. Prune every 2 months.'),(17,17,7,NULL,30,NULL,60,NULL,'Water once a week. Fertilize once a month. Prune every 2 months.'),(18,18,5,NULL,15,NULL,45,NULL,'Water every 5 days. Fertilize bi-weekly. Prune every 1.5 months.'),(19,19,10,NULL,20,NULL,30,NULL,'Water every 10 days. Fertilize once a month. Prune every 2 months.'),(20,20,14,NULL,60,NULL,90,NULL,'Water every 2 weeks. Fertilize once every 2 months. Prune every 3 months.'),(21,21,7,NULL,60,NULL,30,NULL,'Water thoroughly, allow soil to dry between waterings.'),(22,22,1,NULL,30,NULL,60,NULL,'Requires daily misting in dry climates.'),(23,23,3,NULL,30,NULL,90,NULL,'Avoid overwatering; prefers moist but not soggy soil.'),(24,24,7,NULL,90,NULL,30,NULL,'Place in bright, indirect sunlight.'),(25,25,3,NULL,60,NULL,90,NULL,'Ensure high humidity and keep away from drafts.'),(26,26,7,NULL,30,NULL,30,NULL,'Regularly clean leaves to prevent dust buildup.'),(27,27,3,NULL,90,NULL,60,NULL,'Thrives in well-drained soil with moderate watering.'),(28,28,7,NULL,30,NULL,90,NULL,'Keep soil consistently moist but not soggy.'),(29,29,3,NULL,60,NULL,30,NULL,'Prefers filtered light and regular misting.'),(30,30,1,NULL,90,NULL,90,NULL,'Requires frequent watering and high humidity.'),(31,31,7,NULL,60,NULL,30,NULL,'Ensure good drainage and avoid waterlogging.'),(32,32,3,NULL,30,NULL,90,NULL,'Allow topsoil to dry before watering again.'),(33,33,7,NULL,90,NULL,30,NULL,'Place in bright but indirect sunlight.'),(34,34,3,NULL,60,NULL,90,NULL,'Needs regular misting to mimic tropical habitat.'),(35,35,1,NULL,30,NULL,30,NULL,'Avoid direct sunlight; keep soil lightly moist.'),(36,36,7,NULL,90,NULL,90,NULL,'Prune dead leaves regularly to encourage growth.'),(37,37,3,NULL,60,NULL,60,NULL,'Keep soil aerated and water as needed.'),(38,38,7,NULL,30,NULL,90,NULL,'Provide bright light and occasional fertilization.'),(39,39,3,NULL,90,NULL,30,NULL,'Mist regularly to maintain high humidity levels.'),(40,40,1,NULL,60,NULL,90,NULL,'Place in indirect sunlight and water sparingly.'),(41,41,7,NULL,30,NULL,30,NULL,'Allow soil to dry slightly between waterings.'),(42,42,3,NULL,60,NULL,30,NULL,'Best suited for shaded areas with moderate humidity.');
/*!40000 ALTER TABLE `care` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_care_dates` AFTER UPDATE ON `care` FOR EACH ROW BEGIN
    IF NEW.last_watered_date IS NOT NULL AND NEW.last_watered_date <> OLD.last_watered_date THEN
        UPDATE care 
        SET last_watered_date = NEW.last_watered_date
        WHERE care_id = NEW.care_id;
    END IF;

    IF NEW.last_fertilized_date IS NOT NULL AND NEW.last_fertilized_date <> OLD.last_fertilized_date THEN
        UPDATE care 
        SET last_fertilized_date = NEW.last_fertilized_date
        WHERE care_id = NEW.care_id;
    END IF;

    IF NEW.last_pruned_date IS NOT NULL AND NEW.last_pruned_date <> OLD.last_pruned_date THEN
        UPDATE care 
        SET last_pruned_date = NEW.last_pruned_date
        WHERE care_id = NEW.care_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `environment`
--

DROP TABLE IF EXISTS `environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environment` (
  `env_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `room_size` varchar(50) DEFAULT NULL,
  `light_availability` enum('Low','Medium','High') DEFAULT NULL,
  `temperature_range` varchar(50) DEFAULT NULL,
  `air_quality` enum('Good','Average','Poor') DEFAULT NULL,
  `ventilation` enum('Well-ventilated','Poorly-ventilated') DEFAULT NULL,
  `humidity_level` enum('Low','Medium','High') DEFAULT NULL,
  `natural_light_duration` int DEFAULT NULL,
  PRIMARY KEY (`env_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment`
--

LOCK TABLES `environment` WRITE;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
INSERT INTO `environment` VALUES (1,'Living Room','Medium','High','18-24°C','Good','Well-ventilated','Medium',6),(2,'Balcony','Small','High','20-28°C','Good','Well-ventilated','Low',8),(3,'Bedroom','Small','Medium','18-25°C','Average','Poorly-ventilated','High',5),(4,'Living Room','Large','Medium','15-22°C','Good','Well-ventilated','Medium',4),(5,'Kitchen','Small','Low','18-22°C','Average','Poorly-ventilated','High',3),(6,'Office','Medium','Medium','18-26°C','Good','Well-ventilated','Medium',6),(7,'Patio','Large','High','20-30°C','Good','Well-ventilated','Low',7),(8,'Bedroom','Small','Low','16-22°C','Average','Poorly-ventilated','Medium',4),(9,'Bathroom','Small','Low','18-24°C','Good','Poorly-ventilated','High',3),(10,'Living Room','Medium','High','20-28°C','Good','Well-ventilated','Medium',7),(11,'Balcony','Small','High','22-30°C','Good','Well-ventilated','Low',9),(12,'Living Room','Medium','Medium','18-25°C','Good','Well-ventilated','Medium',5),(13,'Bedroom','Small','Low','18-24°C','Average','Poorly-ventilated','High',3),(14,'Patio','Large','High','20-32°C','Good','Well-ventilated','Medium',8),(15,'Office','Medium','Low','18-26°C','Average','Poorly-ventilated','Medium',4),(16,'Living Room','Large','Medium','15-22°C','Good','Well-ventilated','High',5),(17,'Kitchen','Small','Low','18-24°C','Good','Poorly-ventilated','High',2),(18,'Balcony','Medium','High','22-28°C','Good','Well-ventilated','Low',9),(19,'Bedroom','Small','Low','16-24°C','Average','Poorly-ventilated','Medium',4),(20,'Patio','Large','High','24-30°C','Good','Well-ventilated','Medium',10),(21,'Office','Medium','High','20-25°C','Good','Well-ventilated','Medium',6),(22,'Bedroom','Small','Low','18-22°C','Average','Poorly-ventilated','Low',3),(23,'Office','Large','Medium','22-27°C','Good','Well-ventilated','Medium',5),(24,'Balcony','Medium','High','24-30°C','Good','Well-ventilated','High',8),(25,'Kitchen','Small','Low','20-24°C','Poor','Poorly-ventilated','Low',2),(26,'Garden','Large','High','25-35°C','Good','Well-ventilated','High',10),(27,'Living Room','Medium','Medium','19-23°C','Average','Well-ventilated','Medium',4),(28,'Bathroom','Small','Low','20-26°C','Poor','Poorly-ventilated','High',1),(29,'Greenhouse','Large','High','20-30°C','Good','Well-ventilated','High',9),(30,'Bedroom','Medium','Medium','18-24°C','Average','Poorly-ventilated','Medium',3),(31,'Living Room','Large','High','22-27°C','Good','Well-ventilated','Medium',7),(32,'Balcony','Small','Medium','24-28°C','Average','Well-ventilated','High',5),(33,'Office','Medium','Low','20-23°C','Poor','Poorly-ventilated','Low',3),(34,'Kitchen','Medium','Medium','19-22°C','Average','Poorly-ventilated','Medium',2),(35,'Garden','Large','High','25-32°C','Good','Well-ventilated','High',8),(36,'Living Room','Small','Low','20-23°C','Poor','Well-ventilated','Low',4),(37,'Balcony','Medium','High','26-29°C','Good','Well-ventilated','High',6),(38,'Bathroom','Small','Low','22-25°C','Average','Poorly-ventilated','High',2),(39,'Office','Large','Medium','21-26°C','Good','Well-ventilated','Medium',5),(40,'Bedroom','Medium','Low','19-21°C','Poor','Poorly-ventilated','Low',3);
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plants` (
  `plant_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `botanical_name` varchar(100) DEFAULT NULL,
  `soil_type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `watering_needs` varchar(50) DEFAULT NULL,
  `light_required` enum('Low','Medium','High') DEFAULT NULL,
  `min_temperature` int DEFAULT NULL,
  `max_temperature` int DEFAULT NULL,
  `humidity_preference` enum('Low','Medium','High') DEFAULT NULL,
  `growth_rate` enum('Slow','Moderate','Fast') DEFAULT NULL,
  `toxicity` enum('Non-toxic','Toxic to Pets','Toxic to Humans') DEFAULT NULL,
  `flowering_season` varchar(50) DEFAULT NULL,
  `maintenance_level` enum('Low','Medium','High') DEFAULT NULL,
  `fertilizer_needs` varchar(50) DEFAULT NULL,
  `soil_ph` varchar(10) DEFAULT NULL,
  `lifespan` enum('Annual','Perennial','Biennial') DEFAULT NULL,
  `propagation_method` varchar(50) DEFAULT NULL,
  `common_pests` varchar(100) DEFAULT NULL,
  `mature_height` int DEFAULT NULL,
  `mature_width` int DEFAULT NULL,
  PRIMARY KEY (`plant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,'Spider Plant','Chlorophytum comosum','Loamy','Small','Moderate','Low',10,30,'Medium','Fast','Non-toxic','Spring','Low','Monthly','6.0-7.5','Perennial','Division','Aphids',30,60),(2,'Aloe Vera','Aloe barbadensis miller','Sandy','Medium','Low','High',15,40,'Low','Slow','Non-toxic','None','Low','Biannual','6.0-8.0','Perennial','Offsets','Mealybugs',60,40),(3,'Peace Lily','Spathiphyllum wallisii','Loamy','Medium','Moderate','Low',15,25,'High','Moderate','Toxic to Pets','Spring','Medium','Monthly','6.0-6.5','Perennial','Division','Spider Mites',60,30),(4,'Snake Plant','Sansevieria trifasciata','Sandy','Medium','Low','Low',10,30,'Medium','Slow','Non-toxic','None','Low','Monthly','6.5-7.5','Perennial','Cuttings','Thrips',90,30),(5,'English Ivy','Hedera helix','Loamy','Medium','Moderate','Low',5,25,'Medium','Fast','Toxic to Pets','Summer','Medium','Biannual','5.5-6.5','Perennial','Cuttings','Aphids',30,150),(6,'Fiddle Leaf Fig','Ficus lyrata','Well-drained','Large','Moderate','Medium',18,30,'High','Moderate','Toxic to Pets','None','High','Monthly','6.0-7.0','Perennial','Cuttings','Scale',300,120),(7,'Bamboo Palm','Chamaedorea seifrizii','Loamy','Medium','High','Medium',15,30,'High','Moderate','Non-toxic','Spring','Low','Biannual','5.5-6.5','Perennial','Seeds','Spider Mites',200,100),(8,'ZZ Plant','Zamioculcas zamiifolia','Well-drained','Medium','Low','Low',15,30,'Medium','Slow','Toxic to Humans','None','Low','Monthly','6.0-7.0','Perennial','Division','Mealybugs',90,60),(9,'Philodendron','Philodendron hederaceum','Loamy','Medium','Moderate','Low',15,30,'High','Moderate','Non-toxic','None','Low','Monthly','6.0-7.5','Perennial','Cuttings','Spider Mites',120,100),(10,'Jade Plant','Crassula ovata','Sandy','Medium','Low','High',10,35,'Low','Slow','Non-toxic','None','Low','Biannual','6.1-6.5','Perennial','Leaf Cuttings','Mealybugs',120,60),(11,'Boston Fern','Nephrolepis exaltata','Loamy','Small','High','Low',10,25,'High','Moderate','Non-toxic','Spring','Medium','Monthly','5.0-6.5','Perennial','Division','Aphids',60,90),(12,'Pothos','Epipremnum aureum','Well-drained','Medium','Moderate','Low',15,30,'Medium','Fast','Toxic to Pets','None','Low','Monthly','6.0-6.5','Perennial','Cuttings','Spider Mites',300,100),(13,'Rubber Plant','Ficus elastica','Well-drained','Large','Moderate','Medium',15,30,'High','Moderate','Non-toxic','None','Low','Monthly','6.0-7.5','Perennial','Cuttings','Scale',200,100),(14,'Lavender','Lavandula','Sandy','Small','Low','High',-5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-8.0','Perennial','Cuttings','Whiteflies',90,60),(15,'Rosemary','Salvia rosmarinus','Well-drained','Small','Low','High',-5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-7.5','Perennial','Cuttings','Aphids',90,60),(16,'Basil','Ocimum basilicum','Well-drained','Small','Moderate','High',10,30,'Medium','Fast','Non-toxic','Summer','Medium','Monthly','5.5-6.5','Annual','Seeds','Aphids',60,30),(17,'Mint','Mentha','Loamy','Small','High','Medium',5,25,'High','Fast','Non-toxic','Summer','Low','Biannual','5.5-7.0','Perennial','Cuttings','Spider Mites',60,30),(18,'Parsley','Petroselinum crispum','Loamy','Small','Moderate','Medium',5,25,'Medium','Moderate','Non-toxic','Summer','Low','Monthly','6.0-7.0','Biennial','Seeds','Aphids',45,30),(19,'Thyme','Thymus vulgaris','Well-drained','Small','Low','High',5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-8.0','Perennial','Cuttings','Aphids',45,30),(20,'Cilantro','Coriandrum sativum','Loamy','Small','Moderate','Medium',5,25,'Medium','Fast','Non-toxic','Spring','Low','Monthly','6.5-7.5','Annual','Seeds','Aphids',60,30),(21,'Spider Plant','Chlorophytum comosum','Loamy','Small','Moderate','Low',10,30,'Medium','Fast','Non-toxic','Spring','Low','Monthly','6.0-7.5','Perennial','Division','Aphids',30,60),(22,'Aloe Vera','Aloe barbadensis miller','Sandy','Medium','Low','High',15,40,'Low','Slow','Non-toxic','None','Low','Biannual','6.0-8.0','Perennial','Offsets','Mealybugs',60,40),(23,'Peace Lily','Spathiphyllum wallisii','Loamy','Medium','Moderate','Low',15,25,'High','Moderate','Toxic to Pets','Spring','Medium','Monthly','6.0-6.5','Perennial','Division','Spider Mites',60,30),(24,'Snake Plant','Sansevieria trifasciata','Sandy','Medium','Low','Low',10,30,'Medium','Slow','Non-toxic','None','Low','Monthly','6.5-7.5','Perennial','Cuttings','Thrips',90,30),(25,'English Ivy','Hedera helix','Loamy','Medium','Moderate','Low',5,25,'Medium','Fast','Toxic to Pets','Summer','Medium','Biannual','5.5-6.5','Perennial','Cuttings','Aphids',30,150),(26,'Fiddle Leaf Fig','Ficus lyrata','Well-drained','Large','Moderate','Medium',18,30,'High','Moderate','Toxic to Pets','None','High','Monthly','6.0-7.0','Perennial','Cuttings','Scale',300,120),(27,'Bamboo Palm','Chamaedorea seifrizii','Loamy','Medium','High','Medium',15,30,'High','Moderate','Non-toxic','Spring','Low','Biannual','5.5-6.5','Perennial','Seeds','Spider Mites',200,100),(28,'ZZ Plant','Zamioculcas zamiifolia','Well-drained','Medium','Low','Low',15,30,'Medium','Slow','Toxic to Humans','None','Low','Monthly','6.0-7.0','Perennial','Division','Mealybugs',90,60),(29,'Philodendron','Philodendron hederaceum','Loamy','Medium','Moderate','Low',15,30,'High','Moderate','Non-toxic','None','Low','Monthly','6.0-7.5','Perennial','Cuttings','Spider Mites',120,100),(30,'Jade Plant','Crassula ovata','Sandy','Medium','Low','High',10,35,'Low','Slow','Non-toxic','None','Low','Biannual','6.1-6.5','Perennial','Leaf Cuttings','Mealybugs',120,60),(31,'Boston Fern','Nephrolepis exaltata','Loamy','Small','High','Low',10,25,'High','Moderate','Non-toxic','Spring','Medium','Monthly','5.0-6.5','Perennial','Division','Aphids',60,90),(32,'Pothos','Epipremnum aureum','Well-drained','Medium','Moderate','Low',15,30,'Medium','Fast','Toxic to Pets','None','Low','Monthly','6.0-6.5','Perennial','Cuttings','Spider Mites',300,100),(33,'Rubber Plant','Ficus elastica','Well-drained','Large','Moderate','Medium',15,30,'High','Moderate','Non-toxic','None','Low','Monthly','6.0-7.5','Perennial','Cuttings','Scale',200,100),(34,'Lavender','Lavandula','Sandy','Small','Low','High',-5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-8.0','Perennial','Cuttings','Whiteflies',90,60),(35,'Rosemary','Salvia rosmarinus','Well-drained','Small','Low','High',-5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-7.5','Perennial','Cuttings','Aphids',90,60),(36,'Basil','Ocimum basilicum','Well-drained','Small','Moderate','High',10,30,'Medium','Fast','Non-toxic','Summer','Medium','Monthly','5.5-6.5','Annual','Seeds','Aphids',60,30),(37,'Mint','Mentha','Loamy','Small','High','Medium',5,25,'High','Fast','Non-toxic','Summer','Low','Biannual','5.5-7.0','Perennial','Cuttings','Spider Mites',60,30),(38,'Parsley','Petroselinum crispum','Loamy','Small','Moderate','Medium',5,25,'Medium','Moderate','Non-toxic','Summer','Low','Monthly','6.0-7.0','Biennial','Seeds','Aphids',45,30),(39,'Thyme','Thymus vulgaris','Well-drained','Small','Low','High',5,30,'Low','Moderate','Non-toxic','Summer','Low','Biannual','6.0-8.0','Perennial','Cuttings','Aphids',45,30),(40,'Cilantro','Coriandrum sativum','Loamy','Small','Moderate','Medium',5,25,'Medium','Fast','Non-toxic','Spring','Low','Monthly','6.5-7.5','Annual','Seeds','Aphids',60,30),(41,'Sunflower','Helianthus annuus','Well-drained','Large','Moderate','High',10,35,'Low','Fast','Non-toxic','Summer','Medium','Biannual','6.0-7.5','Annual','Seeds','Aphids',300,60),(42,'Dandelion','Taraxacum officinale','Loamy','Small','Low','High',-5,30,'Low','Fast','Non-toxic','Spring','Low','None','5.5-7.0','Perennial','Seeds','None',30,30),(43,'Chamomile','Matricaria chamomilla','Loamy','Small','Low','Medium',5,25,'High','Moderate','Non-toxic','Spring','Low','Occasionally','7.0','Annual','Seeds','Aphids',40,30);
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int DEFAULT NULL,
  `plant_size` varchar(50) DEFAULT NULL,
  `aesthetics` varchar(50) DEFAULT NULL,
  `care_level` varchar(50) DEFAULT NULL,
  `light_required` enum('Low','Medium','High') DEFAULT NULL,
  PRIMARY KEY (`preference_id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `preferences_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `aesthetics` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gardening'
--

--
-- Dumping routines for database 'gardening'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetMatchingPlantsBasedOnUserCriteria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMatchingPlantsBasedOnUserCriteria`(
    IN in_user_id INT,
    IN in_room_size VARCHAR(50),
    IN in_light_availability ENUM('Low', 'Medium', 'High'),
    IN in_temperature_range VARCHAR(50),
    IN in_air_quality ENUM('Good', 'Average', 'Poor'),
    IN in_ventilation ENUM('Well-ventilated', 'Poorly-ventilated'),
    IN in_humidity_level ENUM('Low', 'Medium', 'High'),
    IN in_natural_light_duration INT,
    IN in_care_level VARCHAR(50),
    IN in_light_required ENUM('Low', 'Medium', 'High')
)
BEGIN
    SELECT p.*
    FROM Plants p
    JOIN Care c ON p.plant_id = c.plant_id
    JOIN Preferences pref ON pref.profile_id = (
        SELECT profile_id FROM Profile WHERE user_id = in_user_id
    )
    JOIN Environment e ON e.env_id = (
        SELECT env_id FROM Environment 
        WHERE room_size = in_room_size
          AND light_availability = in_light_availability
          AND temperature_range = in_temperature_range
          AND air_quality = in_air_quality
          AND ventilation = in_ventilation
          AND humidity_level = in_humidity_level
          AND natural_light_duration = in_natural_light_duration
        LIMIT 1
    )
    WHERE c.watering_frequency >= pref.care_level
      AND p.light_required = in_light_required
      AND p.humidity_preference = in_humidity_level
      AND p.size = pref.plant_size;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 10:08:24
