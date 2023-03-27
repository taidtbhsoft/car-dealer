-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: car_dealer
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'demo','4171c9efc1404418b201ab22910ba8d968d66cdd','hello@gmail.com','2023-03-27 09:24:11.5');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `condition` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `retailPrice` decimal(10,2) NOT NULL,
  `salesPrice` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL,
  `mileage` int NOT NULL,
  `mpgCity` int NOT NULL,
  `mpgHwy` int NOT NULL,
  `engine` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `transmissions` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `drivetrain` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exteriorColor` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `interiorColor` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vin` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dealerLot` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'2022 Chevrolet Silverado 1510','Chevrolet','New',58150.00,56400.00,617281,5,14,20,'EcoTec3 5.3L V8','10-Speed Automatic','4D Crew Cab','https://vehicle-photos-published.vauto.com/7a/20/1e/48-b2b9-48ec-b7bf-85f13984edd7/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617281','Long Chevrolet Buick GMC'),(2,'2022 Chevrolet Silverado 1520','Chevrolet','New',58150.00,57400.00,617281,5,14,20,'EcoTec3 5.3L V8','10-Speed Automatic','4D Crew Cab','https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617281','Long Chevrolet Buick GMC'),(3,'2023 Chevrolet Silverado 1530','Chevrolet','New',61130.00,60880.00,143343,11,14,20,'EcoTec3 5.3L V12','14-Speed Automatic','8D Crew Cab','https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617285','Long Chevrolet Buick GMC'),(4,'2023 Buick Enclave','Buick','New',59095.00,58845.00,186139,4,14,20,'EcoTec3 5.3L V14','16-Speed Automatic','10D Crew Cab','https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617287','Long Chevrolet Buick GMC'),(5,'2023 Chevrolet Equinox','Chevrolet','New',37360.00,36360.00,156162,8,14,20,'EcoTec3 5.3L V16','18-Speed Automatic','12D Crew Cab','https://vehicle-photos-published.vauto.com/5a/96/d2/bd-0c6d-40a5-9611-7a6e880fe59a/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617289','Long Chevrolet Buick GMC'),(6,'2023 GMC Terrain','GMC','New',34710.00,34210.00,158521,10,14,20,'EcoTec3 5.3L V19','21-Speed Automatic','15D Crew Cab','https://vehicle-photos-published.vauto.com/2e/f8/78/31-4959-4a67-80b7-1d2445e3a79c/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617292','Long Chevrolet Buick GMC'),(7,'2022 Chevrolet Silverado 1540','Chevrolet','New',70245.00,69495.00,584593,4,14,20,'EcoTec3 5.3L V20','22-Speed Automatic','16D Crew Cab','https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617293','Long Chevrolet Buick GMC'),(8,'2023 Chevrolet Equinox','Chevrolet','New',38635.00,37635.00,176139,8,14,20,'EcoTec3 5.3L V22','24-Speed Automatic','18D Crew Cab','https://vehicle-photos-published.vauto.com/c2/a3/f3/a3-7793-4101-8c60-97a34071c99a/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617295','Long Chevrolet Buick GMC'),(9,'2022 Chevrolet Trax','Chevrolet','New',25805.00,24805.00,567303,7,14,20,'EcoTec3 5.3L V26','28-Speed Automatic','22D Crew Cab','https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617299','Long Chevrolet Buick GMC'),(10,'2023 Chevrolet Equinox','Chevrolet','New',36370.00,35370.00,167876,3,14,20,'EcoTec3 5.3L V27','29-Speed Automatic','23D Crew Cab','https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617300','Long Chevrolet Buick GMC'),(11,'2023 Chevrolet Silverado 1560','Chevrolet','New',51390.00,50140.00,227396,5,14,20,'EcoTec3 5.3L V31','33-Speed Automatic','27D Crew Cab','https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617304','Long Chevrolet Buick GMC'),(12,'2023 Buick Encore GX','Buick','New',30605.00,30355.00,96808,5,14,20,'EcoTec3 5.3L V32','34-Speed Automatic','28D Crew Cab','https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617305','Long Chevrolet Buick GMC'),(13,'2023 Chevrolet Camaro','Chevrolet','New',52765.00,52265.00,137276,3,14,20,'EcoTec3 5.3L V33','35-Speed Automatic','29D Crew Cab','https://vehicle-photos-published.vauto.com/7a/20/1e/48-b2b9-48ec-b7bf-85f13984edd7/image-1.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617306','Long Chevrolet Buick GMC'),(14,'2023 Chevrolet Silverado 1570','Chevrolet','New',62140.00,61890.00,115870,3,14,20,'EcoTec3 5.3L V35','37-Speed Automatic','31D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617308','Long Chevrolet Buick GMC'),(15,'2023 Chevrolet Silverado 1580','Chevrolet','New',76295.00,76045.00,157211,3,14,20,'EcoTec3 5.3L V36','38-Speed Automatic','32D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617309','Long Chevrolet Buick GMC'),(16,'2023 Chevrolet Silverado 1590','Chevrolet','New',78745.00,78495.00,157617,3,14,20,'EcoTec3 5.3L V37','39-Speed Automatic','33D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617310','Long Chevrolet Buick GMC'),(17,'2023 GMC Terrain','GMC','New',33070.00,32570.00,156012,11,14,20,'EcoTec3 5.3L V38','40-Speed Automatic','34D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617311','Long Chevrolet Buick GMC'),(18,'2023 Buick Encore GX','Buick','Old',29130.00,28880.00,99937,7,14,20,'EcoTec3 5.3L V41','43-Speed Automatic','37D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617314','Long Chevrolet Buick GMC'),(19,'2023 GMC Terrain','GMC','Old',43730.00,43230.00,215630,3,14,20,'EcoTec3 5.3L V46','48-Speed Automatic','42D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617319','Long Chevrolet Buick GMC'),(20,'2023 GMC Terrain','GMC','Old',33565.00,33065.00,177338,3,14,20,'EcoTec3 5.3L V48','50-Speed Automatic','44D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617321','Long Chevrolet Buick GMC'),(21,'2023 Buick Encore GX','Buick','Old',28725.00,28475.00,128150,3,14,20,'EcoTec3 5.3L V50','52-Speed Automatic','46D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617323','Long Chevrolet Buick GMC'),(22,'2023 Buick Enclave','Buick','Old',56670.00,56420.00,227262,3,14,20,'EcoTec3 5.3L V51','53-Speed Automatic','47D Crew Cab','https://longofathens.com/site-images/generic-vehicle-image.jpg','Dark Ash Metallic','Black Cloth','1GCUDDED0NZ617324','Long Chevrolet Buick GMC');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 16:26:29
