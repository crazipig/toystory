-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: toy
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,1),(2,1,2,2),(3,2,8,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `counter` varchar(255) NOT NULL,
  `num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('118','1');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `Gbno` int NOT NULL AUTO_INCREMENT,
  `productID` varchar(45) NOT NULL,
  `JudgeMent` varchar(45) NOT NULL,
  `Content` varchar(45) NOT NULL,
  `putdate` varchar(45) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Gbno`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'null','3','woooooooooo','2023-01-04','123'),(2,'null','4','123','2023-01-04','123'),(3,'null','4','????','2023-01-04','123'),(4,'null','4','????','2023-01-04','123'),(5,'4','2','ggg','2023-01-04','123'),(6,'4','3','sretg','2023-01-04','123'),(7,'4','3','sretg','2023-01-04','123'),(8,'4','3','sretg','2023-01-04','123'),(9,'4','5','123','2023-01-04','123'),(10,'4','5','123','2023-01-04','123'),(11,'4','5','123','2023-01-04','123'),(12,'4','3','123','2023-01-04','123'),(13,'5','5','123','2023-01-04','123'),(14,'5','5','123','2023-01-04','123'),(15,'5','3','1889','2023-01-04','123'),(16,'5','3','1889','2023-01-04','123'),(17,'5','3','1234','2023-01-04','123'),(18,'5','3','1234','2023-01-04','123'),(19,'8','1','f','2023-01-04','123'),(20,'8','1','f','2023-01-04','123'),(21,'8','1','f','2023-01-04','123'),(22,'8','1','f','2023-01-04','123'),(23,'8','1','f','2023-01-04','123'),(24,'8','1','f','2023-01-04','123'),(25,'8','1','f','2023-01-04','123'),(26,'8','1','f','2023-01-04','123'),(27,'8','1','f','2023-01-04','123'),(28,'8','1','f','2023-01-04','123'),(29,'8','1','f','2023-01-04','123'),(30,'8','1','f','2023-01-04','123'),(31,'8','1','f','2023-01-04','123'),(32,'8','1','f','2023-01-04','123'),(33,'6','2','df','2023-01-04','123'),(34,'6','4','dgdg','2023-01-04','123'),(35,'6','4','dgdg','2023-01-04','123'),(36,'9','4','mq','2023-01-04','123'),(37,'9','2','hh','2023-01-04','123'),(38,'9','5','asd','2023-01-04','123'),(39,'9','5','asd','2023-01-04','123'),(40,'9','5','asd','2023-01-04','123'),(41,'9','5','asd','2023-01-04','123'),(42,'9','2','ggg','2023-01-04','123'),(43,'9','2','ggg','2023-01-04','123'),(44,'2','1','0','2023-01-05','123');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_tel` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=1415 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'15','15','15','15@gmail.com','台西市復光南路110號9樓'),(2,'17','17','17','17@gmail.com','台西市復光北路110號9樓'),(3,'123','123','123','123@gmail.com','台西市復光政府大樓'),(4,'134','1234','134','134@gmail.com','太平洋某艘庫涅茲佐夫號航空母艦'),(5,'1414','1234','1414','134@gmail.com','你心裡');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL,
  `userID` int NOT NULL,
  `productID` int NOT NULL,
  `productName` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `user_mail` varchar(45) NOT NULL,
  `user_tel` varchar(45) NOT NULL,
  `user_address` varchar(45) NOT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `idOrder_UNIQUE` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (0,1,2,'叉奇','1','15','15@gmail.com','15','咪喵縣喵喵市貓咪街110號9樓'),(1,1,5,'阿布','3','15','15@gmail.com','15','咪喵縣喵喵市貓咪街110號9樓'),(2,1,9,'閃電麥坤','2','15','15@gmail.com','15','咪喵縣喵喵市貓咪街110號9樓'),(3,3,2,'叉奇','1','123','123@gmail.com','123','台西市復光政府大樓');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL,
  `prductCName` varchar(255) NOT NULL,
  `productEname` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `lines` varchar(255) NOT NULL,
  `productprice` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `pic_path1` varchar(45) DEFAULT NULL,
  `pic_path2` varchar(45) DEFAULT NULL,
  `pic_path3` varchar(45) DEFAULT NULL,
  `themeEng` varchar(45) DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `inventory` int DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'三眼怪','Squeeze Toy Aliens','《玩具總動員》','他們就是來自神秘披薩星球的外星人。因為蛋頭先生救了他們的性命，所以他們把蛋頭夫婦當作父母一樣尊敬。','\"You have saved our lives. We are eternally grateful\"','250','公仔','../assets/images/三眼怪1.JPG','../assets/images/三眼怪2.JPG','../assets/images/三眼怪3.JPG','Toy Story',1,5),(2,'叉奇','Forky','《玩具總動員》','叉奇來自垃圾桶的叉奇始終將自己視為「為別人而存在」的「垃圾」，回頭理解迷惘的自己。','\"Be who you are right now.\"','200','公仔','../assets/images/叉奇1.JPG','../assets/images/叉奇2.JPG','../assets/images/叉奇3.JPG','Toy Story',17,3),(3,'巴斯光年','Buzz Lightyear','《玩具總動員》','巴斯光年是一個配有雷射光槍、會空手道的高科技太空巡警，製造於台灣','\"To Infinity and Beyond!\"','580','公仔','../assets/images/巴斯光年1.JPG','../assets/images/巴斯光年2.JPG','../assets/images/巴斯光年3.JPG','Toy Story',10,7),(4,'胡迪','Woody','《玩具總動員》','胡迪是一個懷舊的縫線牛仔玩偶，胡迪個性正直、聰明及善良、講義氣','There\'s a Snake in My Boot!','300','公仔','../assets/images/胡迪1.JPG','../assets/images/胡迪2.JPG','../assets/images/胡迪3.JPG','Toy Story',5,9),(5,'阿布','Boo','《怪獸電力公司》','蘇利文和大眼仔趁亂成功地把小女孩帶回來，發現她並沒有周身布滿「劇毒」，給她起名叫「阿布」。','\"Boo!\"','400','公仔','../assets/images/阿布1.JPG','../assets/images/阿布2.JPG','../assets/images/阿布3.JPG','Monsters,Inc',16,10),(6,'蘇利文-毛怪','James Sullivan','《怪獸電力公司》','毛怪是一隻體型龐大並長滿藍色長毛，個性樂觀而放鬆，頭上有兩個尖角，身上有紫色斑塊，心地善良友好的怪獸。','“Good-bye, Boo. Kitty has to go.”','480','公仔','../assets/images/毛怪1.JPG','../assets/images/毛怪2.JPG','../assets/images/毛怪3.JPG','Monsters,Inc',3,0),(7,'麥克華斯基-大眼仔','Mike Wazowski','《怪獸電力公司》','樣子像個綠色球，主修驚嚇學，個子矮小，頭腦聰明機智，成績優秀，幽默善辯，不太擅長驚嚇。','“Remember, laughter is 10 times more powerful than screams.”','420','公仔','../assets/images/大眼仔1.JPG','../assets/images/大眼仔2.JPG','../assets/images/大眼仔3.JPG','Monsters,Inc',1,2),(8,'藍道','Randall Boggs','《怪獸電力公司》','藍道是怪獸電力公司成績突出的驚嚇專員，長得像一隻外太空來的新品種蜥蜴，他的特異功能是可以改變自身的顏色。','\"Shh. Shh. Shh. Shh. Do you hear that? It\'s the winds of change\".','350','公仔','../assets/images/藍道1.JPG','../assets/images/藍道2.JPG','../assets/images/藍道3.JPG','Monsters,Inc',2,3),(9,'閃電麥坤','Lightning McQueen','《汽車總動員》','再一次加開一場附加賽，在坐專車的過程發生意外，麥坤不小心來到了油水車鎮，認識了一群新朋友，並且也讓他重新改變了自己。','\"Speed, I am speed!\"','300','玩具車','../assets/images/閃電麥坤1.JPG','../assets/images/閃電麥坤2.JPG','../assets/images/閃電麥坤3.JPG','Cars',15,4),(10,'脫線','Mater','《汽車總動員》','油水車鎮上唯一的拖車，擁有一家拖車救援公司，原本的顏色是淡藍色，想搭直升機。','\"My name’s Mater. Kinda Like “Tuh-mater”… but without the “tuh”\"','260','玩具車','../assets/images/脫線1.JPG','../assets/images/脫線2.JPG','../assets/images/脫線3.JPG','Cars',1,5),(11,'韓大夫','Doc Hudson','《汽車總動員》','一輛1951年的Hudson Hornet，受到油水車鎮的居民的尊敬，最後成為麥坤的師傅兼領隊。','\"if you\'re goin\' hard enough left, you\'ll find yourself turnin\' right.\"','280','玩具車','../assets/images/韓大夫1.JPG','../assets/images/韓大夫2.JPG','../assets/images/韓大夫3.JPG','Cars',2,6),(12,'麥大叔','Mack','《汽車總動員》','清鏽車隊安排給麥坤的專用運輸車。','\"Just stopping off for a quick breather, kid. Old Mack needs a rest.\"','280','玩具車','../assets/images/麥大叔1.JPG','../assets/images/麥大叔2.JPG','','Cars',4,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 20:43:07
