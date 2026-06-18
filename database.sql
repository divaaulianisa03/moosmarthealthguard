-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: monitoring_sapi
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sensor_aktivitas`
--

DROP TABLE IF EXISTS `sensor_aktivitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_aktivitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `intensitas` enum('rendah','sedang','tinggi') NOT NULL DEFAULT 'sedang',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_aktivitas`
--

LOCK TABLES `sensor_aktivitas` WRITE;
/*!40000 ALTER TABLE `sensor_aktivitas` DISABLE KEYS */;
INSERT INTO `sensor_aktivitas` VALUES (1,'COW-001','Sapi 1','tidak bergerak','rendah','2026-06-13 18:22:21'),(2,'COW-002','Sapi 2','makan','sedang','2026-06-13 18:22:21'),(3,'COW-003','Sapi 3','tidak bergerak','rendah','2026-06-13 18:22:21'),(4,'COW-004','Sapi 4','gelisah','tinggi','2026-06-13 18:22:21'),(5,'COW-005','Sapi 5','istirahat','rendah','2026-06-13 18:22:21');
/*!40000 ALTER TABLE `sensor_aktivitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_detak_jantung`
--

DROP TABLE IF EXISTS `sensor_detak_jantung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_detak_jantung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `detak_jantung_bpm` int(11) NOT NULL,
  `status` enum('normal','warning','danger') NOT NULL DEFAULT 'normal',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_detak_jantung`
--

LOCK TABLES `sensor_detak_jantung` WRITE;
/*!40000 ALTER TABLE `sensor_detak_jantung` DISABLE KEYS */;
INSERT INTO `sensor_detak_jantung` VALUES (1,'COW-001','Sapi 1',110,'danger','2026-06-13 18:22:14'),(2,'COW-002','Sapi 2',70,'normal','2026-06-13 18:22:14'),(3,'COW-003','Sapi 3',70,'normal','2026-06-13 18:22:14'),(4,'COW-004','Sapi 4',70,'normal','2026-06-13 18:22:14'),(5,'COW-005','Sapi 5',70,'normal','2026-06-13 18:22:14');
/*!40000 ALTER TABLE `sensor_detak_jantung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_suhu`
--

DROP TABLE IF EXISTS `sensor_suhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_suhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `suhu_celsius` decimal(4,1) NOT NULL,
  `status` enum('normal','warning','danger') NOT NULL DEFAULT 'normal',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_suhu`
--

LOCK TABLES `sensor_suhu` WRITE;
/*!40000 ALTER TABLE `sensor_suhu` DISABLE KEYS */;
INSERT INTO `sensor_suhu` VALUES (1,'COW-001','Sapi 1',41.5,'danger','2026-06-13 18:22:07'),(2,'COW-002','Sapi 2',38.5,'normal','2026-06-13 18:22:07'),(3,'COW-003','Sapi 3',38.5,'normal','2026-06-13 18:22:07'),(4,'COW-004','Sapi 4',38.5,'normal','2026-06-13 18:22:07'),(5,'COW-005','Sapi 5',38.5,'normal','2026-06-13 18:22:07');
/*!40000 ALTER TABLE `sensor_suhu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14  0:47:50
