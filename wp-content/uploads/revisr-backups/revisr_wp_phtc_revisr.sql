
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
DROP TABLE IF EXISTS `wp_phtc_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_phtc_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  `user` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_phtc_revisr` WRITE;
/*!40000 ALTER TABLE `wp_phtc_revisr` DISABLE KEYS */;
INSERT INTO `wp_phtc_revisr` VALUES (1,'2015-12-08 18:56:39','Successfully created a new repository.','init','phtc_admin'),(2,'2015-12-08 19:07:28','Successfully backed up the database.','backup','phtc_admin'),(3,'2015-12-08 19:07:33','Successfully backed up the database.','backup','phtc_admin'),(4,'2015-12-08 19:07:34','Error staging files.','error','phtc_admin'),(5,'2015-12-08 19:07:34','There was an error committing the changes to the local repository.','error','phtc_admin'),(6,'2015-12-08 19:07:35','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=eddb1f5&success=true\">#eddb1f5</a> to the local repository.','commit','phtc_admin'),(7,'2015-12-08 19:07:36','Error pushing changes to the remote repository.','error','phtc_admin'),(8,'2015-12-08 19:13:52','Successfully backed up the database.','backup','phtc_admin'),(9,'2015-12-08 19:13:53','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=f48e646&success=true\">#f48e646</a> to the local repository.','commit','phtc_admin'),(10,'2015-12-08 19:13:53','Error pushing changes to the remote repository.','error','phtc_admin'),(11,'2015-12-08 19:14:21','Error pushing changes to the remote repository.','error','phtc_admin'),(12,'2015-12-08 21:50:57','Error pushing changes to the remote repository.','error','phtc_admin'),(13,'2015-12-08 21:55:54','Successfully backed up the database.','backup','phtc_admin'),(14,'2015-12-08 21:55:54','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=fdb3e21&success=true\">#fdb3e21</a> to the local repository.','commit','phtc_admin'),(15,'2015-12-08 21:55:54','Error pushing changes to the remote repository.','error','phtc_admin'),(16,'2015-12-08 21:56:34','Error pushing changes to the remote repository.','error','phtc_admin'),(17,'2015-12-08 22:03:10','Successfully pushed 4 commits to origin/master.','push','phtc_admin'),(18,'2015-12-08 22:03:36','Successfully backed up the database.','backup','phtc_admin'),(19,'2015-12-08 22:03:37','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=281b0f6&success=true\">#281b0f6</a> to the local repository.','commit','phtc_admin'),(20,'2015-12-08 22:03:53','Successfully pushed 1 commit to origin/master.','push','phtc_admin'),(21,'2015-12-08 22:42:07','Successfully backed up the database.','backup','phtc_admin'),(22,'2015-12-08 22:42:08','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=58892d6&success=true\">#58892d6</a> to the local repository.','commit','phtc_admin'),(23,'2015-12-08 22:42:09','Successfully pushed 1 commit to origin/master.','push','phtc_admin'),(24,'2015-12-08 22:48:30','Successfully backed up the database.','backup','phtc_admin'),(25,'2015-12-08 22:48:31','There was an error committing the changes to the local repository.','error','phtc_admin'),(26,'2015-12-08 22:48:47','Committed <a href=\"http://phtc.jonpetersen.co.uk/wp-admin/admin.php?page=revisr_view_commit&commit=806e7c1&success=true\">#806e7c1</a> to the local repository.','commit','phtc_admin'),(27,'2015-12-08 22:48:49','Successfully pushed 1 commit to origin/master.','push','phtc_admin'),(28,'2015-12-09 10:08:03','Successfully backed up the database.','backup','phtc_admin'),(29,'2015-12-09 10:08:05','Successfully pushed 1 commit to origin/master.','push','phtc_admin'),(30,'2015-12-09 10:08:19','Sent update request to the webhook.','push','phtc_admin'),(31,'2015-12-09 10:08:30','Successfully pushed 0 commits to origin/master.','push','phtc_admin'),(32,'2015-12-09 10:08:38','Sent update request to the webhook.','push','phtc_admin');
/*!40000 ALTER TABLE `wp_phtc_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

