
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
DROP TABLE IF EXISTS `wp_phtc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_phtc_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_phtc_users` WRITE;
/*!40000 ALTER TABLE `wp_phtc_users` DISABLE KEYS */;
INSERT INTO `wp_phtc_users` VALUES (1,'phtc_admin','$P$B5mJyXwhSwkr/5KgfZjNTF6IlzJsGF.','phtc_admin','jonepetersen@gmail.com','','2015-11-19 10:48:40','',0,'phtc_admin'),(2,'jon_petersen','$P$BBVkYmK4xO0szgGIP3O6So6aKK/5nq.','jon_petersen','jon.petersen@mac.com','','2015-11-20 13:28:56','1448026136:$P$BDaMcPEnJGwIx/ySRcRSgUXLVfKFhS1',0,'Jon Petersen'),(3,'tom_durack','$P$B0VYKRzII/Nh4hQLd8pxov6K4Iv1IG1','tom_durack','twndurack@me.com','','2015-11-20 13:31:10','',0,'Tom Durack'),(4,'test_user','$P$B4FQAEpoUIWam9gK23K0t0DAaz/khf0','test_user','jon.petersen@icloud.com','','2015-11-23 14:37:59','',0,'test_user'),(5,'louis_gordon','$P$BBtTU/oDyEonba50gVNYTTar/JIPnX0','louis_gordon','louisgordon878@hotmail.com','','2015-12-03 16:11:31','1449236134:$P$BTCFe67B0WvLbISQBai86u3OZS8Cqv/',0,'Louis Gordon'),(6,'philip_robinson','$P$B8usGVF3muG.Snjv8cwhRdY2v2maFE1','philip_robinson','jon.petersen@me.com','','2015-12-08 12:52:50','1449579170:$P$B2g7fn9.mAwqcamUMQ4Qm6F2we3r6D.',0,'Philip Robinson');
/*!40000 ALTER TABLE `wp_phtc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

