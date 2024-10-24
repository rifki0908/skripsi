-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: 127.0.0.1    Database: pejam_webgist_dev
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m_kecamatan`
--

DROP TABLE IF EXISTS `m_kecamatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_kecamatan` (
  `id_kecamatan` int NOT NULL AUTO_INCREMENT,
  `kd_kecamatan` varchar(10) NOT NULL,
  `nm_kecamatan` varchar(30) NOT NULL,
  `geojson_kecamatan` varchar(30) NOT NULL,
  `warna_kecamatan` varchar(10) NOT NULL,
  PRIMARY KEY (`id_kecamatan`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kecamatan`
--

LOCK TABLES `m_kecamatan` WRITE;
/*!40000 ALTER TABLE `m_kecamatan` DISABLE KEYS */;
INSERT INTO `m_kecamatan` VALUES (6,'35.25.010','Wringinanom','wringinanom.geojson','#009900'),(8,'35.25.020','Driyorejo','driyorejo.geojson','#007700'),(16,'35.25.030','Kedamean','kedamean.geojson','#880000'),(17,'35.25.040','Menganti','menganti.geojson','#000099'),(18,'35.25.050','Cerme','cerme.geojson','#DD9900'),(19,'35.25.060','Benjeng','benjeng.geojson','#009999'),(20,'35.25.070','Balongpanggang','balongpanggang.geojson','#ff0099'),(21,'35.25.080','Duduksampeyan','duduksampeyan.geojson','#990099'),(22,'35.25.090','Kebomas','kebomas.geojson','#662222'),(23,'35.25.100','Gresik','gresik.geojson','#030637'),(24,'35.25.120','Manyar','manyar.geojson','#9DBC98'),(26,'35.25.120','Bungah','bungah.geojson','#FAEF9B'),(27,'35.25.130','Sidayu','sidayu.geojson','#6DA4AA'),(28,'35.25.140','Dukun','dukun.geojson','#A94438'),(29,'35.25.150','Panceng','panceng.geojson','#E6BAA3'),(30,'35.25.160','Ujungpangkah','ujungpangkah.geojson','#402B3A'),(31,'35.25.170','Sangkapura','sangkapura.geojson','#7077A1'),(32,'35.25.180','Tambak','tambak.geojson','#161A30');
/*!40000 ALTER TABLE `m_kecamatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengguna` (
  `id_pengguna` int NOT NULL AUTO_INCREMENT,
  `nm_pengguna` varchar(20) NOT NULL,
  `kt_sandi` varchar(32) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES (1,'admin','123456');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hotspot`
--

DROP TABLE IF EXISTS `t_hotspot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_hotspot` (
  `id_hotspot` int NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL,
  `marker` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hotspot`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hotspot`
--

LOCK TABLES `t_hotspot` WRITE;
/*!40000 ALTER TABLE `t_hotspot` DISABLE KEYS */;
INSERT INTO `t_hotspot` VALUES (14,23,'Tambal Ban Husni','OK',-7.157892,112.655006,'2024-01-15','62150124082337.png');
/*!40000 ALTER TABLE `t_hotspot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pejam_webgist_dev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 16:33:39
