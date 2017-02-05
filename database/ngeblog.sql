-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `pemilik` varchar(10) NOT NULL,
  `katasandi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'demouser','805407e4defc8660d4ace6ae4807323d');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogpost`
--

DROP TABLE IF EXISTS `blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogpost` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_content` text NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogpost`
--

LOCK TABLES `blogpost` WRITE;
/*!40000 ALTER TABLE `blogpost` DISABLE KEYS */;
INSERT INTO `blogpost` VALUES (1,'Kata Siapa Anak Start-up Kerjanya Gak Jelas? Malah Ada 7 Keuntungan Ini Dibanding Anak Korporat','Memang ada sebuah kebanggan tersendiri kalo berhasil kerja di perusahaan besar. Meski terkungkung, tapi pasti lebih prestis kalo di mata orang tua. Ya emang sih, kalo kerja di start-up itu terkesan gak jelas kerjaannya apa. Eits jangan salah. Malah punya keuntungan lebih lho dibandingin jadi anak korporat.\n1. Gak terlalu tertekan\nYa tetep aja tertekan sih kalo lagi deadline, tapi semuanya itu buyar seketika kalo udah ketawa-ketawa sama rekan kerja yang lain. Biasanya kan masih pada muda-muda tuh, terus lingkungan kerjanya juga gak formal banget jadi gak berasa kayak lagi kerja. Fun aja gitu.\n2. Banyak link\nKarena bidang kerjanya bisa berkesinambungan ke bidang lain, makanya jadi bisa punya banyak kenalan yang gak terduga. Bisa dikenalin sama klien, bisa ketemu pas lagi shooting, bisa juga ketemu di tempat meeting. Banyak cara deh buat kenal sama banyak orang.\n3. Lebih gampang dapet gebetan\nBukan cuma link aja yang didapet, kenalan yang bisa diajak buat romantis-romantisan juga banyak. Semakin banyak ketemu orang kan semakin banyak kesempatan buat ketemu calon jodoh. Ihiy!\n4. Hidup kamu lebih bermakna\nKarena kamu punya banyak waktu itu lah kamu jadi punya kesempatan untuk ngumpul sama temen, sambil mengejar cita-cita, bahkan sambil nerusin hobi. Gak akan kayak sapi perah banget pasti ngerasanya.\n5. Lebih mungkin naik jabatan'),(3,'Hello World','Lorem ipsum dolor sit amet, vel et mutat mnesarchum sententiae. Eos rebum postulant an, ne duo mundi decore. No sea ludus deleniti. Eu usu enim nemore.\n\nNe maiorum maluisset vis. Te scripta appellantur ius, semper aperiam dissentiunt no eos. Ius erat phaedrum in, in error mucius melius mel. Ad per illum fastidii consulatu. Qui eu detracto atomorum recteque. Ei vidit rebum laoreet has. Tantas animal at cum.\n\nIn nam unum lorem, has te magna lucilius, cu per nonumy inimicus conceptam. Placerat invidunt omittantur eu nec, vel ea sonet expetendis, per etiam epicurei cu. Vix nulla maiorum omnesque te, malis luptatum antiopam id pri, alia nulla congue mea ad. An imperdiet dissentias qui. Eum impedit accusamus abhorreant ad.\n\nCopiosae ponderum at vix, mazim noster vocibus pro eu. Expetenda intellegebat pri an, ea hinc detracto lobortis vix. Ex mucius percipit eam, cu audiam partiendo inciderint sit. Vix debitis antiopam et, tale quaestio his te, cum tibique torquatos no. Cu nam populo bonorum aliquando, eum ne suas quodsi omnium.\n\nNo pro sale fabellas hendrerit. Usu ad utroque percipit, natum luptatum euripidis ei vis. Natum melius salutatus te has. Cu autem dicant eloquentiam pri, has et dicit omnes.');
/*!40000 ALTER TABLE `blogpost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-05 13:23:27
