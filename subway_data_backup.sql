-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: subway_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `subwaystation`
--

DROP TABLE IF EXISTS `subwaystation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subwaystation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `line_number` int NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subwaystation`
--

LOCK TABLES `subwaystation` WRITE;
/*!40000 ALTER TABLE `subwaystation` DISABLE KEYS */;
INSERT INTO `subwaystation` VALUES (1,'서울역',1,37.5569,126.9728,'02-123-4567','1호선의 노선'),
(2,'시청',1,37.5651,126.9769,'02-987-6543','1호선의 노선'),
(3,'종각',1,37.5701,126.981,'02-987-6543','1호선의 노선'),
(4,'종로3가',1,37.5702,126.9842,'02-987-6543','1호선의 노선'),
(5,'종로5가',1,37.5709,126.9858,'02-987-6543','1호선의 노선'),
(6,'동대문',1,37.5749,127.0049,'02-987-6543','1호선의 노선'),
(7,'동묘앞',1,37.5783,127.0084,'02-987-6543','1호선의 노선'),
(8,'신설동',1,37.577,127.0163,'02-987-6543','1호선의 노선'),
(9,'제기동',1,37.5742,127.0261,'02-987-6543','1호선의 노선'),
(10,'청량리',1,37.5776,127.0469,'02-987-6543','1호선의 노선'),

(11,'시청',2,37.5651,126.9769,'02-987-6543','2호선의 노선'),(12,'을지로입구',2,37.5705,126.9823,'02-987-6543','2호선의 노선'),
(13,'을지로3가',2,37.57,126.9893,'02-987-6543','2호선의 노선'),(14,'을지로4가',2,37.5704,126.9944,'02-987-6543','2호선의 노선'),
(15,'동대문역사문화공원',2,37.574,127.0165,'02-987-6543','2호선의 노선'),(16,'신당',2,37.5731,127.0055,'02-987-6543','2호선의 노선'),
(17,'상왕십리',2,37.563,127.0192,'02-987-6543','2호선의 노선'),(18,'왕십리',2,37.5586,127.0234,'02-987-6543','2호선의 노선'),
(19,'한양대',2,37.55,127.039,'02-987-6543','2호선의 노선'),(20,'뚝섬',2,37.5467,127.0455,'02-987-6543','2호선의 노선'),
(21,'성수',2,37.5503,127.0583,'02-987-6543','2호선의 노선'),(22,'건대입구',2,37.5335,127.0631,'02-987-6543','2호선의 노선'),
(23,'구의',2,37.5268,127.0743,'02-987-6543','2호선의 노선'),(24,'강변',2,37.5225,127.0936,'02-987-6543','2호선의 노선'),
(25,'잠실나루',2,37.5153,127.1007,'02-987-6543','2호선의 노선'),(26,'잠실',2,37.513,127.1021,'02-987-6543','2호선의 노선'),
(27,'잠실시내',2,37.514,127.0861,'02-987-6543','2호선의 노선'),(28,'종합운동장',2,37.5146,127.086,'02-987-6543','2호선의 노선'),
(29,'삼성',2,37.5064,127.0326,'02-987-6543','2호선의 노선'),(30,'선릉',2,37.5073,127.0336,'02-987-6543','2호선의 노선'),
(31,'역삼',2,37.5056,127.036,'02-987-6543','2호선의 노선'),(32,'강남',2,37.4979,127.0286,'02-987-6543','2호선의 노선'),
(33,'교대',2,37.4873,127.0294,'02-987-6543','2호선의 노선'),(34,'서초',2,37.4874,127.0287,'02-987-6543','2호선의 노선'),
(35,'방배',2,37.4891,127.0178,'02-987-6543','2호선의 노선'),(36,'사당',2,37.4852,127.0181,'02-987-6543','2호선의 노선'),
(37,'낙성대',2,37.4763,127.0202,'02-987-6543','2호선의 노선'),(38,'서울대입구',2,37.4817,127.0232,'02-987-6543','2호선의 노선'),
(39,'봉천',2,37.482,127.0291,'02-987-6543','2호선의 노선'),(40,'신림',2,37.4848,127.0382,'02-987-6543','2호선의 노선'),
(41,'신대방',2,37.4871,127.037,'02-987-6543','2호선의 노선'),(42,'구로디지털단지',2,37.4878,127.0211,'02-987-6543','2호선의 노선'),
(43,'대림',2,37.4822,127.0254,'02-987-6543','2호선의 노선'),(44,'신도림',2,37.4811,127.0206,'02-987-6543','2호선의 노선'),
(45,'문래',2,37.4875,127.0233,'02-987-6543','2호선의 노선'),(46,'영등포구청',2,37.478,127.0291,'02-987-6543','2호선의 노선'),
(47,'당산',2,37.4785,127.0264,'02-987-6543','2호선의 노선'),(48,'합정',2,37.548,126.9171,'02-987-6543','2호선의 노선'),
(49,'홍대입구',2,37.5474,126.927,'02-987-6543','2호선의 노선'),(50,'신촌',2,37.552,126.9382,'02-987-6543','2호선의 노선'),
(51,'이대',2,37.5541,126.9343,'02-987-6543','2호선의 노선'),(52,'아현',2,37.5481,126.9393,'02-987-6543','2호선의 노선'),
(53,'충정로',2,37.5518,126.9567,'02-987-6543','2호선의 노선'),(54,'신설동',2,37.5607,126.9612,'02-987-6543','2호선의 노선'),
(55,'용두',2,37.5632,126.96,'02-987-6543','2호선의 노선'),(56,'신답',2,37.5663,126.9771,'02-987-6543','2호선의 노선'),
(57,'용답',2,37.5705,126.9948,'02-987-6543','2호선의 노선'),(58,'도림천',2,37.5701,126.9964,'02-987-6543','2호선의 노선'),
(59,'양천구청',2,37.5698,127.002,'02-987-6543','2호선의 노선'),(60,'신정네거리',2,37.5716,127.0068,'02-987-6543','2호선의 노선'),
(61,'까치산',2,37.5707,126.995,'02-987-6543','2호선의 노선'),

(62,'지축',3,37.6045,126.911,'02-123-4567','3호선의 노선'),(63,'구파발',3,37.6062,126.9301,'02-123-4567','3호선의 노선'),
(64,'연신내',3,37.6105,126.9144,'02-123-4567','3호선의 노선'),(65,'불광',3,37.6204,126.9311,'02-123-4567','3호선의 노선'),
(66,'녹번',3,37.626,126.9315,'02-123-4567','3호선의 노선'),(67,'홍제',3,37.6212,126.9401,'02-123-4567','3호선의 노선'),
(68,'무악재',3,37.5932,126.9655,'02-123-4567','3호선의 노선'),(69,'독립문',3,37.5796,126.9745,'02-123-4567','3호선의 노선'),
(70,'경복궁',3,37.5777,126.977,'02-123-4567','3호선의 노선'),(71,'안국',3,37.577,126.9812,'02-123-4567','3호선의 노선'),
(72,'종로3가',3,37.5636,126.9867,'02-123-4567','3호선의 노선'),(73,'을지로3가',3,37.5636,126.9927,'02-123-4567','3호선의 노선'),
(74,'충무로',3,37.5649,127.0054,'02-123-4567','3호선의 노선'),(75,'동대입구',3,37.5535,127.0141,'02-123-4567','3호선의 노선'),
(76,'약수',3,37.5482,127.015,'02-123-4567','3호선의 노선'),(77,'금호',3,37.5492,127.0201,'02-123-4567','3호선의 노선'),
(78,'옥수',3,37.5465,127.0215,'02-123-4567','3호선의 노선'),(79,'압구정',3,37.5253,127.0256,'02-123-4567','3호선의 노선'),
(80,'신사',3,37.5186,127.0243,'02-123-4567','3호선의 노선'),(81,'잠원',3,37.5144,127.0205,'02-123-4567','3호선의 노선'),
(82,'고속터미널',3,37.5094,127.013,'02-123-4567','3호선의 노선'),(83,'교대',3,37.496,127.021,'02-123-4567','3호선의 노선'),
(84,'남부터미널',3,37.49,127.0225,'02-123-4567','3호선의 노선'),(85,'양재',3,37.493,127.0275,'02-123-4567','3호선의 노선'),
(86,'매봉',3,37.499,127.0365,'02-123-4567','3호선의 노선'),(87,'도곡',3,37.5052,127.0453,'02-123-4567','3호선의 노선'),
(88,'대치',3,37.5112,127.0533,'02-123-4567','3호선의 노선'),(89,'학여울',3,37.5171,127.0581,'02-123-4567','3호선의 노선'),
(90,'대청',3,37.521,127.065,'02-123-4567','3호선의 노선'),(91,'일원',3,37.4941,127.0885,'02-123-4567','3호선의 노선'),
(92,'수서',3,37.493,127.091,'02-123-4567','3호선의 노선'),(93,'가락시장',3,37.4915,127.0942,'02-123-4567','3호선의 노선'),
(94,'경찰병원',3,37.6783,127.0457,'02-123-4567','3호선의 노선'),(95,'오금',3,37.6584,127.057,'02-123-4567','3호선의 노선'),

(96,'당고개',4,37.6783,127.0457,'02-123-4567','4호선의 노선'),
(97,'상계',4,37.6584,127.057,'02-123-4567','4호선의 노선'),
(98,'노원',4,37.6535,127.0578,'02-123-4567','4호선의 노선'),
(99,'창동',4,37.6284,127.058,'02-123-4567','4호선의 노선'),
(100,'쌍문',4,37.6143,127.0553,'02-123-4567','4호선의 노선'),
(101,'수유',4,37.6103,127.016,'02-123-4567','4호선의 노선'),
(102,'미아',4,37.6056,127.0115,'02-123-4567','4호선의 노선'),
(103,'미아사거리',4,37.604,127.011,'02-123-4567','4호선의 노선'),
(104,'길음',4,37.5965,127.0036,'02-123-4567','4호선의 노선'),
(105,'성신여대입구',4,37.588,127.0005,'02-123-4567','4호선의 노선'),
(106,'한성대입구',4,37.5855,126.9932,'02-123-4567','4호선의 노선'),
(107,'혜화',4,37.579,126.9945,'02-123-4567','4호선의 노선'),
(108,'동대문',4,37.568,126.9983,'02-123-4567','4호선의 노선'),
(109,'동대문역사문화공원',4,37.5661,126.9922,'02-123-4567','4호선의 노선'),
(110,'충무로',4,37.5601,126.9882,'02-123-4567','4호선의 노선'),
(111,'명동',4,37.5581,126.9895,'02-123-4567','4호선의 노선'),
(112,'회현',4,37.5557,126.9871,'02-123-4567','4호선의 노선'),
(113,'서울역',4,37.5541,126.9729,'02-123-4567','4호선의 노선'),
(114,'숙대입구',4,37.551,126.9711,'02-123-4567','4호선의 노선'),
(115,'삼각지',4,37.5454,126.973,'02-123-4567','4호선의 노선'),
(116,'신용산',4,37.5271,126.9655,'02-123-4567','4호선의 노선'),
(117,'이촌',4,37.5232,126.9587,'02-123-4567','4호선의 노선'),
(118,'동작',4,37.5075,126.9324,'02-123-4567','4호선의 노선'),
(119,'총신대입구',4,37.497,126.9325,'02-123-4567','4호선의 노선'),
(120,'사당',4,37.4853,126.927,'02-123-4567','4호선의 노선'),
(121,'남태령',4,37.4771,126.9175,'02-123-4567','4호선의 노선'),


(122,'방화',5,37.5534,126.8012,'02-123-4567','5호선의 노선'),
(123,'개화산',5,37.5155,126.8101,'02-123-4567','5호선의 노선'),
(124,'김포공항',5,37.5113,126.8254,'02-123-4567','5호선의 노선'),
(125,'송정',5,37.515,126.8371,'02-123-4567','5호선의 노선'),
(126,'마곡',5,37.5088,126.8523,'02-123-4567','5호선의 노선'),
(127,'발산',5,37.513,126.8463,'02-123-4567','5호선의 노선'),
(128,'우장산',5,37.5203,126.8431,'02-123-4567','5호선의 노선'),
(129,'화곡',5,37.5252,126.8624,'02-123-4567','5호선의 노선'),
(130,'까치산',5,37.5289,126.8721,'02-123-4567','5호선의 노선'),
(131,'신정',5,37.5295,126.8864,'02-123-4567','5호선의 노선'),
(132,'목동',5,37.5335,126.8863,'02-123-4567','5호선의 노선'),
(133,'오목교',5,37.527,126.8969,'02-123-4567','5호선의 노선'),
(134,'양평',5,37.5232,126.8969,'02-123-4567','5호선의 노선'),
(135,'영등포구청',5,37.5073,126.9003,'02-123-4567','5호선의 노선'),
(136,'영등포시장',5,37.5333,126.9277,'02-123-4567','5호선의 노선'),
(137,'신길',5,37.5315,126.9241,'02-123-4567','5호선의 노선'),
(138,'여의도',5,37.5472,126.9168,'02-123-4567','5호선의 노선'),
(139,'여의나루',5,37.5507,126.911,'02-123-4567','5호선의 노선'),
(140,'마포',5,37.551,126.9241,'02-123-4567','5호선의 노선'),
(141,'공덕',5,37.5567,126.9344,'02-123-4567','5호선의 노선'),
(142,'애오개',5,37.5604,126.9359,'02-123-4567','5호선의 노선'),
(143,'충정로',5,37.5738,126.9753,'02-123-4567','5호선의 노선'),
(144,'서대문',5,37.5707,126.9893,'02-123-4567','5호선의 노선'),
(145,'광화문',5,37.5666,126.9929,'02-123-4567','5호선의 노선'),
(146,'종로3가',5,37.5723,126.9935,'02-123-4567','5호선의 노선'),
(147,'을지로4가',5,37.5734,127.02,'02-123-4567','5호선의 노선'),
(148,'동대문역사문화공원',5,37.565,127.0231,'02-123-4567','5호선의 노선'),
(149,'청구',5,37.5528,127.0348,'02-123-4567','5호선의 노선'),
(150,'신금호',5,37.5572,127.0384,'02-123-4567','5호선의 노선'),
(151,'행당',5,37.5564,127.0411,'02-123-4567','5호선의 노선'),
(152,'왕십리',5,37.546,127.0429,'02-123-4567','5호선의 노선'),
(153,'마장',5,37.5351,127.0457,'02-123-4567','5호선의 노선'),
(154,'답십리',5,37.5367,127.0484,'02-123-4567','5호선의 노선'),
(155,'장한평',5,37.5313,127.0536,'02-123-4567','5호선의 노선'),
(156,'군자',5,37.5283,127.0585,'02-123-4567','5호선의 노선'),
(157,'아차산',5,37.5414,127.0586,'02-123-4567','5호선의 노선'),
(158,'광나루',5,37.5464,127.0654,'02-123-4567','5호선의 노선'),
(159,'천호',5,37.5594,127.073,'02-123-4567','5호선의 노선'),
(160,'강동',5,37.5731,127.0802,'02-123-4567','5호선의 노선'),
(161,'길동',5,37.5718,127.0823,'02-123-4567','5호선의 노선'),
(162,'굽은다리',5,37.5621,127.0861,'02-123-4567','5호선의 노선'),
(163,'명일',5,37.5413,127.0932,'02-123-4567','5호선의 노선'),
(164,'고덕',5,37.5245,127.0978,'02-123-4567','5호선의 노선'),
(165,'상일동',5,37.5257,127.1055,'02-123-4567','5호선의 노선'),
(166,'강일',5,37.5253,127.1163,'02-123-4567','5호선의 노선'),
(167,'미사',5,37.5165,127.1168,'02-123-4567','5호선의 노선'),
(168,'하남풍산',5,37.5133,127.1223,'02-123-4567','5호선의 노선'),
(169,'하남시청',5,37.5156,127.1312,'02-123-4567','5호선의 노선'),
(170,'하남검단산',5,37.5119,127.1369,'02-123-4567','5호선의 노선'),
(171,'둔촌동',5,37.5074,127.1387,'02-123-4567','5호선의 노선'),
(172,'올림픽공원',5,37.5015,127.1401,'02-123-4567','5호선의 노선'),
(173,'방이',5,37.5022,127.145,'02-123-4567','5호선의 노선'),
(174,'오금',5,37.5071,127.1504,'02-123-4567','5호선의 노선'),
(175,'개롱',5,37.5075,127.1583,'02-123-4567','5호선의 노선'),
(176,'거여',5,37.5894,126.9272,'02-123-4567','5호선의 노선'),
(177,'마천',5,37.591,126.933,'02-123-4567','5호선의 노선'),


(178,'응암',6,37.5894,126.9272,'02-123-4567','6호선의 노선'),
(179,'역촌',6,37.591,126.933,'02-123-4567','6호선의 노선'),
(180,'불광',6,37.5961,126.9344,'02-123-4567','6호선의 노선'),
(181,'독바위',6,37.5972,126.9306,'02-123-4567','6호선의 노선'),
(182,'연신내',6,37.6044,126.9184,'02-123-4567','6호선의 노선'),
(183,'구산',6,37.6059,126.9164,'02-123-4567','6호선의 노선'),
(184,'새절',6,37.6081,126.9182,'02-123-4567','6호선의 노선'),
(185,'증산',6,37.6106,126.9224,'02-123-4567','6호선의 노선'),
(186,'디지털미디어시티',6,37.619,126.9267,'02-123-4567','6호선의 노선'),
(187,'월드컵경기장',6,37.6103,126.9146,'02-123-4567','6호선의 노선'),
(188,'마포구청',6,37.5585,126.9002,'02-123-4567','6호선의 노선'),
(189,'망원',6,37.5533,126.8987,'02-123-4567','6호선의 노선'),
(190,'합정',6,37.5452,126.8975,'02-123-4567','6호선의 노선'),
(191,'상수',6,37.5414,126.9022,'02-123-4567','6호선의 노선'),
(192,'광흥창',6,37.5443,126.9084,'02-123-4567','6호선의 노선'),
(193,'대흥',6,37.5513,126.9145,'02-123-4567','6호선의 노선'),
(194,'공덕',6,37.5517,126.9193,'02-123-4567','6호선의 노선'),
(195,'효창공원앞',6,37.5394,126.9505,'02-123-4567','6호선의 노선'),
(196,'삼각지',6,37.5533,126.9822,'02-123-4567','6호선의 노선'),
(197,'녹사평',6,37.5346,126.9924,'02-123-4567','6호선의 노선'),
(198,'이태원',6,37.5342,126.9943,'02-123-4567','6호선의 노선'),
(199,'한강진',6,37.5435,126.9993,'02-123-4567','6호선의 노선'),
(200,'버티고개',6,37.5545,127.0021,'02-123-4567','6호선의 노선'),
(201,'약수',6,37.5521,127.007,'02-123-4567','6호선의 노선'),
(202,'청구',6,37.5632,127.0131,'02-123-4567','6호선의 노선'),
(203,'신당',6,37.5639,127.02,'02-123-4567','6호선의 노선'),
(204,'동묘앞',6,37.5728,127.0294,'02-123-4567','6호선의 노선'),
(205,'창신',6,37.5802,127.0357,'02-123-4567','6호선의 노선'),
(206,'보문',6,37.5912,127.0411,'02-123-4567','6호선의 노선'),
(207,'안암',6,37.5941,127.0425,'02-123-4567','6호선의 노선'),
(208,'고려대',6,37.5946,127.046,'02-123-4567','6호선의 노선'),
(209,'월곡',6,37.5941,127.051,'02-123-4567','6호선의 노선'),
(210,'상월곡',6,37.5963,127.0553,'02-123-4567','6호선의 노선'),
(211,'돌곶이',6,37.596,127.0597,'02-123-4567','6호선의 노선'),
(212,'석계',6,37.5973,127.0617,'02-123-4567','6호선의 노선'),
(213,'태릉입구',6,37.5965,127.0648,'02-123-4567','6호선의 노선'),
(214,'화랑대',6,37.5983,127.0689,'02-123-4567','6호선의 노선'),
(215,'봉화산',6,37.5952,127.0725,'02-123-4567','6호선의 노선'),
(216,'신내',6,37.5905,127.0718,'02-123-4567','6호선의 노선'),


(217,'장암',7,37.5963,127.0437,'02-123-4567','7호선의 노선'),
(218,'도봉산',7,37.6182,127.0368,'02-123-4567','7호선의 노선'),
(219,'수락산',7,37.6295,127.0445,'02-123-4567','7호선의 노선'),
(220,'마들',7,37.6185,127.0621,'02-123-4567','7호선의 노선'),
(221,'노원',7,37.6536,127.0615,'02-123-4567','7호선의 노선'),
(222,'중계',7,37.6381,127.0637,'02-123-4567','7호선의 노선'),
(223,'하계',7,37.6018,127.0739,'02-123-4567','7호선의 노선'),
(224,'공릉',7,37.5903,127.0798,'02-123-4567','7호선의 노선'),
(225,'태릉입구',7,37.6048,127.0853,'02-123-4567','7호선의 노선'),
(226,'먹골',7,37.5907,127.096,'02-123-4567','7호선의 노선'),
(227,'중화',7,37.5892,127.1011,'02-123-4567','7호선의 노선'),
(228,'상봉',7,37.5909,127.1057,'02-123-4567','7호선의 노선'),
(229,'면목',7,37.5946,127.1078,'02-123-4567','7호선의 노선'),
(230,'사가정',7,37.59,127.1175,'02-123-4567','7호선의 노선'),
(231,'용마산',7,37.5884,127.1293,'02-123-4567','7호선의 노선'),
(232,'중곡',7,37.5916,127.1413,'02-123-4567','7호선의 노선'),
(233,'군자',7,37.5918,127.1459,'02-123-4567','7호선의 노선'),
(234,'어린이대공원',7,37.5911,127.1506,'02-123-4567','7호선의 노선'),
(235,'건대입구',7,37.5915,127.1552,'02-123-4567','7호선의 노선'),
(236,'뚝섬유원지',7,37.5903,127.159,'02-123-4567','7호선의 노선'),
(237,'청담',7,37.5903,127.1604,'02-123-4567','7호선의 노선'),
(238,'강남구청',7,37.5903,127.1622,'02-123-4567','7호선의 노선'),
(239,'학동',7,37.5903,127.1643,'02-123-4567','7호선의 노선'),
(240,'논현',7,37.5903,127.1668,'02-123-4567','7호선의 노선'),
(241,'반포',7,37.5903,127.1684,'02-123-4567','7호선의 노선'),
(242,'고속터미널',7,37.5903,127.1702,'02-123-4567','7호선의 노선'),
(243,'내방',7,37.5903,127.1722,'02-123-4567','7호선의 노선'),
(244,'이수',7,37.5903,127.1744,'02-123-4567','7호선의 노선'),
(245,'남성',7,37.5903,127.1762,'02-123-4567','7호선의 노선'),
(246,'숭실대입구',7,37.5903,127.1786,'02-123-4567','7호선의 노선'),
(247,'상도',7,37.5903,127.1803,'02-123-4567','7호선의 노선'),
(248,'장승배기',7,37.5903,127.1824,'02-123-4567','7호선의 노선'),
(249,'신대방삼거리',7,37.5903,127.1847,'02-123-4567','7호선의 노선'),
(250,'보라매',7,37.5903,127.1864,'02-123-4567','7호선의 노선'),
(251,'신풍',7,37.5903,127.1882,'02-123-4567','7호선의 노선'),
(252,'대림',7,37.5903,127.1901,'02-123-4567','7호선의 노선'),
(253,'남구로',7,37.5903,127.192,'02-123-4567','7호선의 노선'),
(254,'가산디지털단지',7,37.5903,127.1938,'02-123-4567','7호선의 노선'),
(255,'철산',7,37.5903,127.1955,'02-123-4567','7호선의 노선'),
(256,'광명사거리',7,37.5903,127.1975,'02-123-4567','7호선의 노선'),
(257,'천왕',7,37.5903,127.1991,'02-123-4567','7호선의 노선'),
(258,'온수',7,37.5903,127.2008,'02-123-4567','7호선의 노선'),

(259,'암사',8,37.5408,127.1232,'02-123-4567','8호선의 노선'),
(260,'천호',8,37.5543,127.1165,'02-123-4567','8호선의 노선'),
(261,'강동구청',8,37.5479,127.1348,'02-123-4567','8호선의 노선'),
(262,'몽촌토성',8,37.5301,127.1167,'02-123-4567','8호선의 노선'),
(263,'잠실',8,37.5132,127.1004,'02-123-4567','8호선의 노선'),
(264,'석촌',8,37.5052,127.1017,'02-123-4567','8호선의 노선'),
(265,'송파',8,37.5039,127.1061,'02-123-4567','8호선의 노선'),
(266,'가락시장',8,37.4971,127.1196,'02-123-4567','8호선의 노선'),
(267,'문정',8,37.4914,127.1227,'02-123-4567','8호선의 노선'),
(268,'장지',8,37.4825,127.1248,'02-123-4567','8호선의 노선'),
(269,'복정',8,37.4781,127.127,'02-123-4567','8호선의 노선'),
(270,'남위례',8,37.4875,127.1361,'02-123-4567','8호선의 노선'),
(271,'산성',8,37.4958,127.1374,'02-123-4567','8호선의 노선'),
(272,'남한상성입구',8,37.5043,127.1441,'02-123-4567','8호선의 노선'),
(273,'단대오거리',8,37.5078,127.1367,'02-123-4567','8호선의 노선'),
(274,'신흥',8,37.5134,127.1418,'02-123-4567','8호선의 노선'),
(275,'수진',8,37.5184,127.1466,'02-123-4567','8호선의 노선'),
(276,'모란',8,37.5298,127.1474,'02-123-4567','8호선의 노선');
/*!40000 ALTER TABLE `subwaystation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 20:14:04
