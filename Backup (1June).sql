-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: repository
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(45) NOT NULL,
  PRIMARY KEY (`cID`),
  UNIQUE KEY `cID_UNIQUE` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT  IGNORE INTO `category` VALUES (1,'Goal/Service/Migration type substitution'),(2,'Obstacle reduction'),(3,'Obstacle prevention'),(4,'Goal restoration'),(5,'Goal weakening'),(6,'Goal Mitigation'),(7,'Do nothing');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `gID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(45) NOT NULL,
  `gDetail` varchar(1000) DEFAULT NULL,
  `gImg` varchar(100) DEFAULT '00',
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT  IGNORE INTO `goal` VALUES (1,'Availability','Anywhere/anytime/any device (desktop, laptop, and mobile) access to\r\nresources (e.g. CPU, storage, virtual machines, and network bandwidth) which\r\nare redundant and guarantee more availability (24/7/365 and 99.99%\r\navailability) compared to run in-house infrastructure. ','01'),(2,'scalability','On the fly scaling up/ down resources and capability to provide varying\r\nresource demanding patterns.','02'),(3,'security','Providing secure services protected from unauthorized access by other tenants.','03'),(4,'performance','An excellent throughout speed and computations on cutting edge\r\ninfrastructure.','04'),(5,'customizability','Customisable and modifiable services upon requirements of consumers','05'),(6,'Interoperatibilty','Cloud services are integrable and incorporable with software systems as\r\nrequired.','06'),(7,'portability','Systems can move from one cloud to another cloud to get better offer (e.g.\r\nperformance, price, and security) with minimum disruption.','07'),(8,'testablity','Providing a scalable infrastructure to perform test and evaluation of highcomputational\r\ntasks.','08'),(9,'consistency','Guarantee of data consistency and not resulting in an error state for the system\r\nonce data are processing and changing in the cloud.','09'),(10,'reduced IT cost','Lower expense for infrastructure procuring, data storages, system updates,\r\nmaintenance, and staff.','10');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gor`
--

DROP TABLE IF EXISTS `gor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gor` (
  `gorID` int(11) NOT NULL AUTO_INCREMENT,
  `gID` int(11) NOT NULL,
  `obsID` int(11) NOT NULL,
  PRIMARY KEY (`gorID`),
  UNIQUE KEY `idgor_UNIQUE` (`gorID`),
  KEY `fk_gor_goals_idx` (`gID`),
  KEY `fk_gor_obs1_idx` (`obsID`),
  CONSTRAINT `fk_gor_gID` FOREIGN KEY (`gID`) REFERENCES `goal` (`gID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gor_obsID` FOREIGN KEY (`obsID`) REFERENCES `obstical` (`obsID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gor`
--

LOCK TABLES `gor` WRITE;
/*!40000 ALTER TABLE `gor` DISABLE KEYS */;
INSERT  IGNORE INTO `gor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,3,4),(5,2,5),(7,5,5),(8,2,6),(9,3,7),(10,3,8),(11,3,9),(12,10,10),(13,3,11),(14,3,12),(15,3,13),(16,3,14),(17,3,15),(18,3,16),(19,6,17),(20,7,17),(21,3,18),(22,6,19),(23,7,19),(24,5,20),(25,6,20),(26,7,20),(27,6,21),(28,7,21),(29,6,22),(30,7,22),(31,6,23),(32,7,23),(33,6,24),(34,7,24),(35,6,25),(36,7,25),(37,3,26),(38,4,26),(39,4,27),(40,2,28),(41,4,28),(42,2,29),(43,4,29),(44,8,29),(45,10,30),(46,5,31),(47,5,32),(48,8,32),(49,10,33),(50,5,34),(51,5,35),(52,5,36),(53,7,36),(54,6,36),(55,10,37),(56,10,38),(57,10,39),(58,10,40),(59,10,41),(60,7,42),(61,2,43),(62,4,43),(63,6,44),(64,7,44),(65,10,44),(66,2,45),(67,4,45),(68,2,46),(69,4,46),(70,2,47),(71,4,47),(72,6,48),(73,7,48),(74,10,48),(75,6,49),(76,7,49),(77,10,49),(78,6,50),(79,7,50),(80,10,50),(81,2,51),(82,7,51),(83,8,51),(84,9,52),(85,3,53),(86,10,54),(87,10,55),(88,10,56),(89,10,57),(90,3,58),(91,3,59),(92,10,60),(93,5,61),(94,5,62),(95,1,63),(96,10,64),(97,8,65),(98,10,66),(99,6,67);
/*!40000 ALTER TABLE `gor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `mID` int(11) NOT NULL AUTO_INCREMENT,
  `mName` varchar(100) NOT NULL,
  `mDetail` varchar(1000) NOT NULL,
  PRIMARY KEY (`mID`),
  UNIQUE KEY `mID_UNIQUE` (`mID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT  IGNORE INTO `migration` VALUES (1,'I','It offers discrete and reusable functionality, is deployed in cloud infrastructure through IaaS model such as Amazon EC2 but the data layer is kept in an on-premises network.'),(2,'II','System components are replaced with fully tested cloud services using SaaS model.'),(3,'III','The system database is deployed in a cloud data store provider such as Amazon Simple Storage Service (S3), Amazon Elastic Block Store, Dropbox, or Zip Cloud whilst business logic components are maintained on an on-premises network.'),(4,'IV','The database of a legacy is modified and converted to a cloud database solution such as Amazon SimpleDB, Google App Engine data store, or Google Cloud SQL.'),(5,'V','The whole system stack is encapsulated in virtual machines and ran on servers.');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mor`
--

DROP TABLE IF EXISTS `mor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mor` (
  `morID` int(11) NOT NULL AUTO_INCREMENT,
  `obsID` int(11) NOT NULL,
  `mID` int(11) NOT NULL,
  PRIMARY KEY (`morID`),
  UNIQUE KEY `morID_UNIQUE` (`morID`),
  KEY `fk_mor_mID_idx` (`mID`),
  KEY `fk_mor_obsID_idx` (`obsID`),
  CONSTRAINT `fk_mor_mID` FOREIGN KEY (`mID`) REFERENCES `migration` (`mID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mor_obsID` FOREIGN KEY (`obsID`) REFERENCES `obstical` (`obsID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mor`
--

LOCK TABLES `mor` WRITE;
/*!40000 ALTER TABLE `mor` DISABLE KEYS */;
INSERT  IGNORE INTO `mor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,3,5),(16,4,1),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,2),(22,6,1),(23,6,2),(24,6,4),(25,6,5),(26,7,1),(27,7,2),(28,7,3),(29,7,4),(30,7,5),(31,8,1),(32,8,5),(33,9,1),(34,9,2),(35,9,3),(36,9,4),(37,9,5),(38,10,1),(39,10,2),(40,10,3),(41,10,4),(42,10,5),(43,11,1),(44,11,5),(45,12,2),(46,12,3),(47,12,4),(48,12,5),(49,13,2),(50,13,3),(51,13,4),(52,13,5),(53,14,2),(54,14,3),(55,14,4),(56,14,5),(57,15,1),(58,15,2),(59,15,5),(60,16,1),(61,16,2),(62,16,5),(63,17,1),(64,17,2),(65,17,3),(66,17,4),(67,17,5),(68,18,1),(69,18,2),(70,18,3),(71,18,4),(72,18,5),(73,19,1),(74,19,5),(75,20,1),(76,20,2),(77,20,4),(78,20,5),(79,21,1),(80,21,2),(81,21,4),(82,21,5),(83,22,1),(84,22,5),(85,23,1),(86,23,5),(87,24,1),(88,24,2),(89,24,5),(90,25,1),(91,25,5),(92,26,1),(93,26,2),(94,26,3),(95,26,4),(96,26,5),(97,27,1),(98,27,2),(99,27,5),(100,28,1),(101,28,2),(102,28,3),(103,28,4),(104,28,5),(105,29,1),(106,29,2),(107,29,4),(108,29,5),(109,30,1),(110,30,2),(111,30,3),(112,30,4),(113,30,5),(114,31,1),(115,31,2),(116,31,3),(117,31,4),(118,31,5),(119,32,1),(120,32,2),(121,32,3),(122,32,4),(123,32,5),(124,33,1),(125,33,2),(126,33,3),(127,33,4),(128,33,5),(129,34,1),(130,34,2),(131,34,3),(132,34,4),(133,34,5),(134,35,1),(135,35,2),(136,35,3),(137,35,4),(138,35,5),(139,36,1),(140,36,2),(141,36,3),(142,36,4),(143,36,5),(144,37,1),(145,37,2),(146,37,4),(147,37,5),(148,38,1),(149,38,2),(150,38,3),(151,38,4),(152,38,5),(153,39,1),(154,39,2),(155,39,3),(156,39,4),(157,39,5),(158,40,1),(159,40,2),(160,40,3),(161,40,4),(162,40,5),(163,41,1),(164,41,2),(165,41,3),(166,41,4),(167,41,5),(168,42,1),(169,42,2),(170,42,3),(171,42,4),(172,42,5),(173,43,1),(174,43,2),(175,43,5),(176,44,1),(177,44,2),(178,44,3),(179,44,4),(180,44,5),(181,45,1),(182,45,2),(183,45,3),(184,45,4),(185,45,5),(186,46,1),(187,46,2),(188,46,3),(189,46,4),(190,46,5),(191,47,1),(192,47,2),(193,47,3),(194,47,4),(195,47,5),(196,48,1),(197,48,2),(198,48,3),(199,48,4),(200,48,5),(201,49,4),(202,50,4),(203,51,1),(204,51,2),(205,51,3),(206,51,4),(207,51,5),(208,52,3),(209,52,4),(210,52,5),(211,53,1),(212,53,2),(213,53,3),(214,53,4),(215,53,5),(216,54,1),(217,54,2),(218,54,5),(219,55,1),(220,56,1),(221,56,3),(222,56,5),(223,57,1),(224,58,3),(225,59,1),(226,59,3),(227,60,1),(228,60,2),(229,60,3),(230,60,4),(231,60,5),(232,61,1),(233,62,1),(234,63,1),(235,64,1),(236,65,1),(237,65,2),(238,65,3),(239,65,4),(240,65,5),(241,66,1),(242,66,2),(243,66,5),(244,67,1),(245,67,2),(246,67,5);
/*!40000 ALTER TABLE `mor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obstical`
--

DROP TABLE IF EXISTS `obstical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obstical` (
  `obsID` int(11) NOT NULL AUTO_INCREMENT,
  `obsName` varchar(100) NOT NULL,
  `obsDetail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`obsID`),
  UNIQUE KEY `obsID_UNIQUE` (`obsID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obstical`
--

LOCK TABLES `obstical` WRITE;
/*!40000 ALTER TABLE `obstical` DISABLE KEYS */;
INSERT  IGNORE INTO `obstical` VALUES (1,'Cloud outage','A cloud service may suffer from outages for reasons such as going out\r\nof business, being the subject of regulatory action, or the outage of\r\ncontact system.'),(2,'Service failure','Cloud service maybe unavailable by service consumer due to reasons\r\nsuch as network congestion, hardware failure, service middleware\r\nfailure, or faults on various elements of the service platform. '),(3,'Service transient fault','Cloud service maybe temporarily unavailable due to network traffic\r\nload or restarting by administrators after a failure. '),(4,'Tenant interface','Several tenants maybe in run on the same cloud and negatively affect\r\nthe system data security'),(5,'Un-customisable scalablity','The scalability rules may not be flexible and merely controlled and\r\nmanaged by service provider. '),(6,'Scaling latency','Cloud service may have delay in providing resource requested by\r\nservice consumer due to reasons such as a server workload in the\r\nregion, the rate of load acceleration, or quotas imposed by the cloud\r\nservice provider'),(7,'Browser vulnerabilities ','Cloud consumer who connects to cloud services by a Web browser\r\nmight be attacked by malicious tenants'),(8,'Code disruption','System codes that are executing in the cloud maybe accessed and\r\ndisrupted by other tenants are in operation in the same cloud service'),(9,'Cloud attack','Malicious tenants can disrupt cloud service functionalities.'),(10,'Extra security cost','There might be an extra cost to address security if system components\r\nare deployed across different cloud server with complex relationships\r\nand security configuration, which demands provider-independent\r\ntechniques to establish a security and configuration context. Service\r\nconsumer might be responsible for locking ports, patching the\r\noperating system, running an anti-virus software and enforcement of\r\naccess control policies.'),(11,'Lack of control on code execution location','Executing of a system in the cloud might not be fixed to a geographical\r\nlocation and rather the system may move from one physical server to\r\nanother one during its lifetime. The decision on the execution location of the system is based on factors such as load balancing mechanism of\r\ncloud, network and server performance and availability, and even\r\ncharacteristics of the current consumer.'),(12,'Lack of control on data location','Sensitive data may move to the outside the organization network or\r\ncountry\r\n.\r\nThere is no assumption where the location of the data is.'),(13,'Data remanence ','The residual representation of data after finishing system execution on\r\nthe cloud server may cause unwilling disclosure of private data.'),(14,'Data interruption','Tenants or subcontractors of cloud providers may get access to system\r\ndata and affect data confidentiality.'),(15,'Session hijacking','A malicious tenant may use a valid session key to get authorised\r\naccess to use system using cloud service.'),(16,'System source codes propriety','Cloud provider, its subcontractors, or tenant may get access to all\r\nsystem codes/algorithms which might be confidential. '),(17,'Vendor lock -in','System owner is dissatisfied with cloud service but it cannot easily and\r\ninexpensively transfer its system and data to another platform or in\r\n-\r\nhouse.'),(18,'Traversal vulnerability','A malicious tenant may damage resources that are used by other\r\ntenants.'),(19,'Incompatible pluggable cloud services','At runtime, system might be plugged to a cloud service which is\r\nincompatible with the other cloud services.\r\n'),(20,'Incomplete API s','Cloud service provider lacks providing a rich set of API\r\ns. '),(21,' Incompatible data types ','Data types used in legacy and cloud service are incompatible.\r'),(22,'Operating system incompatibility','System components are distributed and moved among cloud servers\r\nwith different operating systems which might be incompatible for\r\nmanaging, representing, and formatting virtual machines.'),(23,'Machine -image incompatibility','Virtual machines are moving between different cloud platforms but\r\neach platform has different underlying implementation for virtual\r\nmachines.'),(24,'Virtual machine\r\ncontextualization\r\nincompatibility','Virtual machines are moving between different platforms but each\r\nplatform may use different methods for customizing the context of\r\nvirtual machine such as setting the operating system’s username and\r\npassword.'),(25,'API incompatibility\r\nacross multiple cloud\r\n','Cloud service may offer APIs to implement systems or virtual\r\nmachines which might be incompatible with each other services.'),(26,'Message passing','Message passing between system and cloud services or among system\r\ncomponents deployed on cloud servers might be unsecure and accessed\r\nby malicious tenants\r\n. Also, message size might be large affecting\r\nsystem performance.'),(27,'Performance variability\r\nof cloud service','Workload variability, virtualization overheads, or resource time\r\n-\r\nsharing of cloud server may have negative effect on the system\r\nperformance operating in the cloud.'),(28,'Geographical distance ','High distance between system components that are distributed and\r 45\r deployed on cloud servers may cause increased latency when accessing\r or manipulating the data.'),(29,'Low middleware\r\nperformance','A cloud service may have been built on several layers of middleware,\r\nfrom the guest operating system of the VM to the data\r\n-centre resource\r\nmanager, which each middleware may impact on the system\r\nefficiency.'),(30,'High cancellation fees','Cloud service provider may force a consumer to a long term\r\ncommitment and consumers’ early exit may causes forfeit.'),(31,'Inflexible pricing model','Cloud service provider may not offer a billing model based on the\r\nservice usage and limit consumer to flat rates or usage thresholds.'),(32,'Extra testing effort','The test of system which may be deployed on multiple cloud servers\r\nmay needs testing connectivity of local components and those\r\ndeployed on cloud servers along with adding a new dimension of test\r\nsuch as elasticity, multi\r\n-tenancy, interoperability, and elasticity.'),(33,'Learning curve\r\n','Learning a new programming style, concepts, APIs, tools\r\n, and\r\nunderstanding organisational impact of the cloud technology might be\r\ntime consuming.'),(34,'Loose of control over\r\nresources and updates','Loss of control over resource management and their update.'),(35,'Bargaining power of\r\nprovider','Cloud provider may get bargaining power in the future for example by\r\nraising service fee prices or refusing to invest maintenance backward\r\ncompatible interface.'),(36,'Proprietary APIs','Proprietary cloud APIs may impede integration of cloud services with\r\nlegacy systems.'),(37,'Licensing issue','Software is charged per instance mode\r\nl but cloud server creates several\r\ninstances in the case of workload occurrence which might be\r\ncontradictory with software licensing\r\n.'),(38,'Department downsizing','The maintenance team of legacy systems may become downsize as\r\nsome of their responsibilities are outsourced to cloud providers.\r\n'),(39,'Resistance to change','Users/staff may\r\nresist against moving to the cloud due to change in\r\ntheir positions and organisational structure.\r\n'),(40,' Non-compliancy','Users or standard regulations don’t consent to move\r\npersonal/organisational data to the cloud.'),(41,'Extra management\r\neffort','Maintaining a system deployed in several clouds takes extra effort\r\nsuch as keeping relationships with cloud providers\r\n, change of\r\nproviders, and monitoring.'),(42,'Backward\r\nincompatibility','System might not be easily switched between on\r\n-premise and cloud\r\nenvironments. '),(43,'State\r\n-based dependency','System may heavily depend on contextual data, storing on server or\r\nclient, such as configuration changes to operate and remain consistent\r\nfrom one session to another one.'),(44,'Incompatible APIs','Legacy system APIs and cloud’s APIs are incompatible. '),(45,'Network latency','Connection speed between on premise and cloud is low due to latency\r\nin on\r\n-premise network or latency of internal cloud network.'),(46,'Browser latency','The browser in the on\r\n-premise environment is working slowly. '),(47,'Service latency','Latency in performing cloud service due to obstacles O7, O28, O46,\r\nand O45.'),(48,'Incompatibility of\r\nlegacy system and cloud\r\nservice','Incompatibility between legacy system and cloud services due to\r\nobstacles O21, O22, O23, Q24, and O25\r\n.'),(49,'Incompatibility of\r\nlegacy system data\r\nstorage and cloud','Incompatibility between legacy data storage and cloud database\r\nsolution due to O21 and O50.'),(50,'Incompatible data\r\noperations','Stored procedure\r\ns, views, and functions providing by\r\ncloud data store\r\nmight not be compatible (either syntactically or semantically) with\r\nthose defined in legacy system.'),(51,'Tight dependencies','Tight dependencies among legacy system components or dependency\r\nto underlying technologies, operating systems, programming language,\r\nor other legacy systems may obstruct individual scalability and\r\nportability of system components across multiple cloud\r\ns and on\r\npremise.'),(52,'Inconsistency of system\r\ncomponents\r\n','Cloud data storage services may offer weaker consistency properties in\r\nthe sense that it will be taken long time to have consistent data across\r\nall servers.'),(53,'Identity theft','An attacker may get a valid user’s identity and access resources of\r\nlegacy systems.'),(54,'Variable price of cloud\r\nresources','The price of using cloud resources may vary depending on cloud\r\nworkload across the time, particularly in a pick period. Such price\r\nvariation may not be suitable for legacy systems with heavy processing\r\ntasks. '),(55,'High cost of support\r\n(Specific to AWS)','AWS is a general provider which expects its services to be used and\r\nmanaged by its uses independently. If a problem occurs, AWS has an\r\nexpensive technical support.'),(56,'Unreliable IT support\r\n(Specific to AWS)','The quality of IT support by AWS might be a risk.\r\n'),(57,'Varying support fee\r\n(Specific to AWS)\r\n','AWS support fees vary on a sliding scale tied to monthly in a way that\r\nsupport costs may grow quickly if system performs heavy tasks.'),(58,'Vulnerable security\r\n(Specific to AWS)','Amazon simple storage service (S3) may be accessible via SSL (secure\r\nsocket layer) encrypted end points, implying that it is the user’s\r\nresponsibility to encrypt data before storing into S3.'),(59,'Injection attack\r\n(Specific to AWS)','An attacker may hijack user accounts by creating, modifying, and\r\ndeleting virtual machine images, and changing administrative\r\npasswords to control interfaces used to manage cloud computing\r\nresources (e.g. S3 or EC2).'),(60,'Inflexible cost model\r\n(Specific to Azure)\r\n','Azure computes the cost of recourses that were used per minute with\r\nrounding up service usage to the nearest minute. In other words, if a\r\nuser allocated a resource for one hour and a half, then payment is\r\ncomputed for the exact period of time whilst a provider like Amazon\r\nround up service consumption to nearest hour.'),(61,'Inflexible configuration\r\n(Specific to Azure)','The provider may not provide high flexible hardware configurability\r\nfor each virtual machine instance compared to Amazon offering high\r\nflexibility in virtual machine configuration. '),(62,'Operating system\r\nincompatibility\r\n(Specific to Azure)','Microsoft Azure mainly supports Windows-based servers. Porting\r\nlegacy systems from other platforms (e.g. Linux) to Azure might\r\nrequire modifying the source code to be compatible with Windows\r\nAPIs and them able to execute on Azure.'),(63,'Limited geographical\r\nzone (Specific to\r\nGoogle)\r\n','Google may not provide an extensive coverage of data centres to\r\ndeploy legacy systems.'),(64,'Inflexible cost model\r\n(Specific to Rackspace)\r\n','Rackspace may offer limited pricing options and month-to-month\r\nsubscriptions.'),(65,'Heterogeneous\r\nproduction\r\nenvironments','The complexity and differences between production environments (e.g.\r\ncloud platform, third-party clouds, and legacy systems) related to\r\ndeployments and configurations can hinder the efficiency of test.'),(66,'Costly virtual machine','Virtual machine and its underlying infrastructure might be costly in\r\nterms of need for large disk storage, isolated binary and library files,\r\nmemory management, and full gust operating system image.'),(67,'Incompatible execution\r\nenvironments of system ','A legacy system which is encapsulated in a virtual machine may not be\r\ninteroperable and portable across multiple cloud platforms. ');
/*!40000 ALTER TABLE `obstical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sgr`
--

DROP TABLE IF EXISTS `sgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sgr` (
  `sgrID` int(11) NOT NULL AUTO_INCREMENT,
  `sID` int(11) NOT NULL,
  `gID` int(11) NOT NULL,
  PRIMARY KEY (`sgrID`),
  UNIQUE KEY `sgrID_UNIQUE` (`sgrID`),
  KEY `fk_sgr_sID_idx` (`sID`),
  KEY `fk_sgr_gID_idx` (`gID`),
  CONSTRAINT `fk_sgr_gID` FOREIGN KEY (`gID`) REFERENCES `goal` (`gID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sgr_sID` FOREIGN KEY (`sID`) REFERENCES `study` (`sID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgr`
--

LOCK TABLES `sgr` WRITE;
/*!40000 ALTER TABLE `sgr` DISABLE KEYS */;
INSERT  IGNORE INTO `sgr` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,35,1),(6,36,1),(7,37,1),(8,2,2),(9,3,2),(10,4,2),(11,5,2),(12,35,2),(13,36,2),(14,37,2),(15,2,3),(16,3,3),(17,4,3),(18,5,3),(19,35,3),(20,36,3),(21,37,3),(22,2,4),(23,3,4),(24,4,4),(25,5,4),(26,35,4),(27,36,4),(28,37,4),(29,2,5),(30,3,5),(31,4,5),(32,5,5),(33,35,5),(34,36,5),(35,37,5),(36,2,6),(37,3,6),(38,4,6),(39,5,6),(40,35,6),(41,36,6),(42,37,6),(43,2,7),(44,3,7),(45,4,7),(46,5,7),(47,35,7),(48,36,7),(49,37,7),(50,2,8),(51,3,8),(52,4,8),(53,5,8),(54,35,8),(55,36,8),(56,37,8),(57,2,9),(58,3,9),(59,4,9),(60,5,9),(61,35,9),(62,36,9),(63,37,9),(64,2,10),(65,3,10),(66,4,10),(67,5,10),(68,35,10),(69,36,10),(70,37,10);
/*!40000 ALTER TABLE `sgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sor`
--

DROP TABLE IF EXISTS `sor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sor` (
  `sorID` int(11) NOT NULL AUTO_INCREMENT,
  `sID` int(11) NOT NULL,
  `obsID` int(11) NOT NULL,
  PRIMARY KEY (`sorID`),
  UNIQUE KEY `sorID_UNIQUE` (`sorID`),
  KEY `fk_sor_sID_idx` (`sID`),
  KEY `fk_sor_obsID_idx` (`obsID`),
  CONSTRAINT `fk_sor_obsID` FOREIGN KEY (`obsID`) REFERENCES `obstical` (`obsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sor_sID` FOREIGN KEY (`sID`) REFERENCES `study` (`sID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sor`
--

LOCK TABLES `sor` WRITE;
/*!40000 ALTER TABLE `sor` DISABLE KEYS */;
INSERT  IGNORE INTO `sor` VALUES (1,2,1),(2,44,1),(3,58,1),(4,2,2),(5,9,2),(6,2,3),(7,9,3),(8,59,4),(9,60,4),(10,88,4),(11,10,5),(12,11,5),(13,12,6),(14,13,6),(15,14,6),(16,15,7),(17,16,7),(18,6,8),(19,17,8),(20,16,9),(21,17,9),(22,45,9),(23,58,9),(24,6,10),(25,26,10),(26,28,10),(27,17,11),(28,19,11),(29,12,12),(30,20,12),(31,21,12),(32,22,13),(33,29,14),(34,29,15),(35,17,16),(36,50,17),(37,51,17),(38,52,17),(39,59,18),(40,60,18),(41,61,18),(42,62,18),(43,23,19),(44,24,20),(45,12,21),(46,38,21),(47,25,22),(48,26,22),(49,27,22),(50,39,23),(51,40,23),(52,39,24),(53,40,24),(54,25,25),(55,26,25),(56,27,25),(57,30,25),(58,40,25),(59,12,26),(60,45,26),(61,12,27),(62,31,27),(63,32,27),(64,93,27),(65,12,28),(66,32,29),(67,33,30),(68,34,31),(69,37,32),(70,41,32),(71,42,32),(72,95,32),(73,43,33),(74,45,34),(75,46,34),(76,48,35),(77,49,35),(78,53,36),(79,54,36),(80,45,37),(81,55,37),(82,44,38),(83,56,38),(84,36,39),(85,40,39),(86,57,40),(87,44,41),(88,77,42),(89,71,43),(90,91,43),(91,12,44),(92,43,44),(93,12,45),(94,12,46),(95,12,47),(96,12,48),(97,43,48),(98,12,49),(99,43,49),(100,12,50),(101,43,50),(102,67,51),(103,98,51),(104,108,51),(105,8,52),(106,18,52),(107,104,53),(108,112,54),(109,102,55),(110,100,56),(111,101,57),(112,103,58),(113,104,59),(114,99,60),(115,104,61),(116,104,62),(117,106,62),(118,107,63),(119,102,64),(120,108,65),(121,109,65),(122,110,66),(123,110,67);
/*!40000 ALTER TABLE `sor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `str`
--

DROP TABLE IF EXISTS `str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str` (
  `strID` int(11) NOT NULL AUTO_INCREMENT,
  `tID` int(11) NOT NULL,
  `sID` int(11) NOT NULL,
  PRIMARY KEY (`strID`),
  UNIQUE KEY `strID_UNIQUE` (`strID`),
  KEY `fk_str_tID_idx` (`tID`),
  KEY `fk_str_sID_idx` (`sID`),
  CONSTRAINT `fk_str_sID` FOREIGN KEY (`sID`) REFERENCES `study` (`sID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_str_tID` FOREIGN KEY (`tID`) REFERENCES `tactic` (`tID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `str`
--

LOCK TABLES `str` WRITE;
/*!40000 ALTER TABLE `str` DISABLE KEYS */;
INSERT  IGNORE INTO `str` VALUES (1,3,65),(2,3,79),(3,4,73),(4,4,74),(5,5,65),(6,5,66),(7,5,67),(8,6,75),(9,6,76),(10,7,12),(11,7,77),(12,7,78),(13,8,12),(14,8,75),(15,8,79),(16,9,6),(17,10,80),(18,10,81),(19,10,96),(20,10,97),(21,11,12),(22,11,82),(23,12,12),(24,12,38),(25,12,71),(26,12,83),(27,12,84),(28,13,46),(29,14,69),(30,15,12),(31,15,79),(32,15,85),(33,16,58),(34,17,58),(35,18,58),(36,18,78),(37,18,86),(38,19,71),(39,19,72),(40,20,58),(41,20,70),(42,21,74),(43,21,87),(44,22,88),(45,22,89),(46,22,90),(47,23,66),(48,23,75),(49,24,65),(50,24,66),(51,24,74),(52,24,77),(53,24,78),(54,25,32),(55,25,65),(56,26,2),(57,26,92),(58,27,45),(59,28,63),(60,28,64),(61,29,78),(62,29,91),(63,30,95),(64,31,72),(65,31,74),(66,32,8),(67,33,45),(68,33,57),(69,34,40),(70,34,45),(71,35,94),(72,39,8),(73,40,2),(74,40,3),(75,40,4),(76,42,104),(77,43,110),(78,44,111),(79,45,68);
/*!40000 ALTER TABLE `str` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study` (
  `sID` int(255) NOT NULL AUTO_INCREMENT,
  `sDetail` varchar(1000) NOT NULL,
  `year` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  UNIQUE KEY `sID_UNIQUE` (`sID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
INSERT  IGNORE INTO `study` VALUES (1,'Torbacki, W, SaaS–direction of technology development in ERP/MRP systems. Archives of\r\nMaterials Science 58: 58.','2008'),(2,'Fox, A., Above the clouds: A Berkeley view of cloud computing. Dept. Electrical Eng. and Comput.\r\nSciences, University of California, Berkeley,Rep. UCB/EECS 28.','2009'),(3,'Habib, S. M., Cloud computing landscape and research challenges regarding trust and reputation.\r\nUbiquitous Intelligence & Computing and 7th International Conference on Autonomic & Trusted\r\nComputing (UIC/ATC), 2010 7th International Conference on, IEEE.','2010'),(4,'Wood, T, Disaster recovery as a cloud service: Economic benefits & deployment challenges. 2nd\r\nUSENIX Workshop on Hot Topics in Cloud Computing.','2010'),(5,'Marston, S., Cloud computing—The business perspective. Decision support systems 51(1): 176-189.','2011'),(6,'Anstett, T., Towards BPEL in the Cloud: Exploiting Different Delivery Models for the Execution of\r\nBusiness Processes. Services - I, 2009 World Conference on.','2009'),(7,'Herbert, L., The ROI Of Software-As-A-Service. Forrester Research.','2009'),(8,'Wada, H., Data Consistency Properties and the Trade-offs in Commercial Cloud Storage: the\r\nConsumers\' Perspective, CIDR.','2011'),(9,'La, H. J., Technical challenges and solution space for developing SaaS and mash-up cloud services.\r\ne-Business Engineering, ICEBE\'09. IEEE International Conference on, IEEE.','2009'),(10,'Duipmans, E., Business Process Management in the cloud: Business Process as a Service (BPaaS).\r\nUniversity of Twente','2012'),(11,'Widera P, K. N. , Protein models comparator: scalable bioinformatics computing on the Google\r\nApp Engine platform. Computing Research Repository: 8.','2011'),(12,'Andrikopoulos, V., How to adapt applications for the Cloud environment. Computing 95(6): 493-\r\n535.','2013'),(13,'Brebner, P. C., Is your cloud elastic enough?: performance modelling the elasticity of infrastructure\r\nas a service (IaaS) cloud applications. Proceedings of the third joint WOSP/SIPEW international\r\nconference on Performance Engineering, ACM.','2012'),(14,'Li, A., CloudCmp: comparing public cloud providers. Proceedings of the 10th ACM SIGCOMM\r\nconference on Internet measurement, ACM.','2010'),(15,'Mansfield-Devine, S, Cloud Security: Danger in the clouds. Netw. Secur. 2008(12): 9-11','2008'),(16,'Jensen, M., On technical security issues in cloud computing. Cloud Computing, 2009. CLOUD\'09.\r\nIEEE International Conference on, IEEE. ','2009'),(17,'Hay, B., Storm clouds rising: security challenges for IaaS cloud computing. System Sciences\r\n(HICSS), 2011 44th Hawaii International Conference on, IEEE. ','2011'),(18,'Vogels, W, Eventually consistent. Communications of the ACM 52(1): 40-44.','2009'),(19,'Ristenpart, T., Hey, you, get off of my cloud: exploring information leakage in third-party compute\r\nclouds. Proceedings of the 16th ACM conference on Computer and communications security, ACM.','2009'),(20,'Gupta, R., Above the Clouds: A View of Cloud Computing. Asian Journal of Research in Social\r\nSciences and Humanities 2(6): 84-110.','2012'),(21,'Zissis, D, Addressing cloud computing security issues. Future Generation Computer Systems 28(3):\r\n583-592.','2012'),(22,'Hubbard, D., Top Threats to Cloud Computing V1. 0. Cloud Security Alliance.','2010'),(23,'Hussain, O. K., A framework for user feedback based cloud service monitoring. Complex,\r\nIntelligent and Software Intensive Systems (CISIS), Sixth International Conference on, IEEE.','2012'),(24,'Alhamad, M., Conceptual SLA framework for cloud computing. Digital Ecosystems and\r\nTechnologies (DEST), 4th IEEE International Conference on, IEEE. ','2010'),(25,'Harmer, T., Provider-Independent Use of the Cloud. Euro-Par 2009 Parallel Processing. H. Sips, D.\r\nEpema etal., Springer Berlin Heidelberg. 5704: 454-465.','2009'),(26,'K. Keahey, Matsunaga, and J. Fortes. Sky Computing. IEEE Internet Computing, Palo Alto vol. 13:\r\n315-340.','2009'),(27,'Loutas, N., Towards a Reference Architecture for Semantically Interoperable Clouds. Cloud\r\nComputing Technology and Science (CloudCom), IEEE Second International Conference on.','2010'),(28,'Martinez Garro, Constructing hybrid architectures and dynamic services in Cloud BPM. Science\r\nand Information Conference (SAI).','2013'),(29,'Zissis, D., Addressing cloud computing security issues. Future Generation Computer Systems 28(3):\r\n583-592.','2012'),(30,'Vecchiola, C, Deadline-driven provisioning of resources for scientific applications in hybrid clouds\r\nwith Aneka. Future Generation Computer Systems 28(1): 58-65.','2012'),(31,'Kossmann, D, Data Management in the Cloud: Promises, State-of-the-art, and Open Questions.\r\nDatenbank-Spektrum 10(3): 121-129.','2010'),(32,'Iosup, A., On the performance variability of production cloud services. Cluster, Cloud and Grid\r\nComputing (CCGrid), 11th IEEE/ACM International Symposium on, IEEE.','2011'),(33,'Ma, D. The Business Model of Software-As-A-Service. Services Computing, 2007. SCC 2007. IEEE\r\nInternational Conference on, IEEE.','2007'),(34,'Buyya, R., Market-oriented cloud computing: Vision, hype, and reality for delivering it services as\r\ncomputing utilities. High Performance Computing and Communications, HPCC\'08. 10th IEEE\r\nInternational Conference on, Ieee.','2008'),(35,'Rayport, J. F, Envisioning the cloud: the next computing paradigm. Int. J. Database Manage.\r\nSyst.(IJDMS) 1(1).','2009'),(36,'Vogels, W., CTO roundtable: cloud computing','2009'),(37,'Gao, J., Cloud testing-issues, challenges, needs and practice. Software Engineering: An\r\nInternational Journal 1(1): 9-23.','2011'),(38,'Strauch, S., Using Patterns to Move the Application Data Layer to the Cloud. Proceedings of the 5th\r\nInternational Conference on Pervasive Patterns and Applications, PATTERNS 2013, 27 May – June\r\n1 2013, Valencia, Spain, Xpert Publishing Services (XPS).','2013'),(39,'Armstrong, D., Towards a contextualization solution for cloud platform services. Cloud Computing\r\nTechnology and Science (CloudCom), 2011 IEEE Third International Conference on, IEEE.','2011'),(40,'Sriram, I. Research agenda in cloud technologies. arXiv preprint arXiv:1001.3259.','2010'),(41,'Batarseh, F. A, Context-assisted test cases reduction for cloud validation. International and\r\nInterdisciplinary Conference on Modeling and Using Context, Springer.','2013'),(42,'Parveen, T., When to Migrate Software Testing to the Cloud? Software Testing, Verification, and\r\nValidation Workshops (ICSTW), 2010 Third International Conference on.','2010'),(43,'Tran, V., Application migration to cloud: a taxonomy of critical factors. Proc. of 2nd International\r\nWorkshop on Software Engineering for Cloud Computing, ACM.','2011'),(44,'Khajeh-Hosseini, A, Cloud migration: A case study of migrating an enterprise it system to iaas.\r\nCloud Computing (CLOUD), IEEE 3rd International Conference on, IEEE.','2010'),(45,'Catteddu, D. (2010). Cloud Computing: Benefits, Risks and Recommendations for Information\r\nSecurity. Web Application Security. C. Serrão, V. Aguilera Díaz and F. Cerullo, Springer Berlin\r\nHeidelberg. 72: 17-17.','2010'),(46,'Khajeh-Hosseini, A., Research challenges for enterprise cloud computing. arXiv preprint\r\narXiv:1001.3257. ','2010'),(47,'Torbacki, W. (2008). SaaS–direction of technology development in ERP/MRP systems. Archives of\r\nMaterials Science 58: 58.','2008'),(48,'M. Xin, N. L. Software-as-a-service model: elaborating client-side adoption factors. Proceedings of\r\nthe Twenty-ninth International Conference on Information','2008'),(49,'Kerr, J., Cloud computing: legal and privacy issues, Journal of Legal Issues and Cases in Business\r\n1: 1.','2012'),(50,'Leavitt, N, Is Cloud Computing Really Ready for Prime Time? Computer 42(1): 15-20','2009'),(51,'Satzger, B., et al. (2013). Winds of change: from vendor lock-in to the meta cloud. Internet\r\nComputing, IEEE 17(1): 69-73.','2012'),(52,'Silva, G. C, A systematic review of cloud lock-in solutions, Cloud Computing Technology and\r\nScience (CloudCom), 2013 5th International Conference on, IEEE.','2013'),(53,'Dillon, T., Cloud computing: Issues and challenges. Advanced Information Networking and\r\nApplications (AINA), 24th IEEE International Conference on, Ieee.','2010'),(54,'So, K, Cloud computing security issues and challenges. International Journal of Computer\r\nNetworks 3(5).','2011'),(55,'Dalheimer, M., Genlm: license management for grid and cloud computing environments. Cluster\r\nComputing and the Grid, CCGRID\'09. 9th IEEE/ACM International Symposium on, IEEE.','2009'),(56,'Morgan, L., Factors affecting the adoption of cloud computing: an exploratory study.','2013'),(57,'Joint, A., Hey, you, get off of that cloud? Computer Law & Security Review 25(3): 270-274.','2009'),(58,'Hajjat, M., Cloudward bound: planning for beneficial migration of enterprise applications to the\r\ncloud. Proceedings of the ACM SIGCOMM conference. New Delhi, India, ACM: 243-254.','2010'),(59,'Bezemer, C.-P. Multi-tenant SaaS applications: maintenance dream or nightmare? Proceedings of\r\nthe Joint ERCIM Workshop on Software Evolution (EVOL) and International Workshop on\r\nPrinciples of Software Evolution (IWPSE), ACM.','2010'),(60,'Chong, F., Multi-tenant data architecture. MSDN Library, Microsoft Corporation ','2006'),(61,'Krebs, R., Architectural Concerns in Multi-tenant SaaS Applications. CLOSER','2012'),(62,'Mietzner, R., Variability modeling to support customization and deployment of multi-tenant-aware\r\nSoftware as a Service applications. Proceedings of the 2009 ICSE Workshop on Principles of\r\nEngineering Service Oriented Systems, IEEE Computer Society: 18-25.','2009'),(63,'Gonidis, F., Addressing the challenge of application portability in cloud platforms. 7th South-East\r\nEuropean Doctoral Student Conference.','2012'),(64,'Petcu, D. Portability and interoperability between clouds: challenges and case study. European\r\nConference on a Service-Based Internet, Springer.','2011'),(65,'Chauhan, M. A., Towards Process Support for Migrating Applications to Cloud Computing. Cloud\r\nand Service Computing (CSC), International Conference on. ','2012'),(66,'Strauch, S., Migrating eScience Applications to the Cloud: Methodology and Evaluation.','2014'),(67,'Strauch, S., Migrating Enterprise Applications to the Cloud: Methodology and Evaluation,\r\nInternational Journal of Big Data Intelligence.','2014'),(68,'ShaoJie, T., AMAZING: An Optimal Bidding Strategy for Amazon EC2 Cloud Spot Instance,\r\navailable at http://www.cs.iit.edu/~xli/paper/Conf/EC-CLOUD2012.pdf','2016'),(69,'Computing, C., Toward a multi-tenancy authorization system for cloud services','2010'),(70,'Karampaglis, Z., Secure Migration of Legacy Applications to the Web. Migration(1/18).','2012'),(71,'Pahl, C., A Comparison of On-Premise to Cloud Migration Approaches. Service-Oriented and\r\nCloud Computing, Springer: 212-226. ','2013'),(72,'Council, C. S. C. , Migration applications to public Cloud Services: roadmap for success','2013'),(73,'Menychtas, A., ARTIST Methodology and Framework: A novel approach for the migration of\r\nlegacy software on the Cloud. Symbolic and Numeric Algorithms for Scientific Computing\r\n(SYNASC), 15th International Symposium on, IEEE.','2013'),(74,'Varia, J., Migrating your existing applications to the aws cloud: A Phase-driven Approach to Cloud\r\nMigration.','2010'),(75,'Betts, D., Moving Apps to the Cloud on Microsoft','2012'),(76,'Binz, T., CMotion: A framework for migration of applications into and between clouds. ServiceOriented\r\nComputing and Applications (SOCA), 2011 IEEE International Conference on.','2011'),(77,'Rabetski, P., Migration of an On-Premise Application to the Cloud: Experience Report. ServiceOriented\r\nand Cloud Computing, Springer: 227-241. ','2013'),(78,'Bahga, A., Rapid Prototyping of Multitier Cloud-Based Services and Systems. Computer 46(11): 76-\r\n83.','2013'),(79,'Chauhan, M. A., Migrating Service-Oriented System to Cloud Computing: An Experience Report.\r\nCloud Computing (CLOUD), IEEE International Conference on.','2011'),(80,'Guo, C. J., A framework for native multi-tenancy application development and management. ECommerce\r\nTechnology and the 4th IEEE International Conference on Enterprise Computing, ECommerce,\r\nand E-Services, 2007. CEC/EEE 2007. The 9th IEEE International Conference on,\r\nIEEE.','2007'),(81,'Huru, H. A., MILAS: ModernIzing Legtacy Applications towards Service Oriented Architecture\r\n(SOA) and Software as a Service (SaaS).\r\n','2009'),(82,'Zagarese, Q., Enabling advanced loading strategies for data intensive web services. Web Services\r\n(ICWS), IEEE 19th International Conference on, IEEE.','2012'),(83,'Miranda, J., Assisting Cloud Service Migration Using Software Adaptation Techniques. Proceedings\r\nof the 2013 IEEE Sixth International Conference on Cloud Computing, IEEE Computer Society.','2013'),(84,'Laszewski, T., Migrating to the Cloud: Oracle Client/Server Modernization, Elsevier.','2011'),(85,'Bessani, A., DepSky: dependable and secure storage in a cloud-of-clouds. Proceedings of the sixth\r\nconference on Computer systems. Austria, ACM: 31-46.','2011'),(86,'Nussbaumer, N., Cloud Migration for SMEs in a Service Oriented Approach. Computer Software\r\nand Applications, Conference Workshops (COMPSACW), IEEE 37th Annual.','2013'),(87,'Banerjee, J., Moving to the cloud: Workload migration techniques and approaches. High\r\nPerformance Computing (HiPC), 19th International Conference on, IEEE.','2012'),(88,'Bezemer, C.-P., Enabling multi-tenancy: An industrial experience report. Software Maintenance\r\n(ICSM), IEEE International Conference on, IEEE. ','2010'),(89,'Kwok, T., A software as a service with multi-tenancy support for an electronic contract\r\nmanagement application. Services Computing, 2008. SCC\'08. IEEE International Conference on,\r\nIEEE.','2008'),(90,'Zhu, Y., A Platform for Changing Legacy Application to Multi-tenant Model. International Journal\r\nof Multimedia and Ubiquitous Engineering 9(8): 407-418. ','2014'),(91,'Pahl, C., Migration to PaaS clouds-Migration process and architectural concerns. Maintenance and\r\nEvolution of Service-Oriented and Cloud-Based Systems (MESOCA), 2013 IEEE 7th International\r\nSymposium on the, IEEE.','2013'),(92,'Durkee, D., Why cloud computing will never be free. Queue 8(4): 20.','2010'),(93,'Barker, S. K., Empirical evaluation of latency-sensitive application performance in the cloud.\r\nProceedings of the first annual ACM SIGMM conference on Multimedia systems, ACM.','2010'),(94,'Khajeh-Hosseini, A., Decision support tools for cloud migration in the enterprise. Cloud\r\nComputing (CLOUD), IEEE International Conference on, IEEE.','2011'),(95,'Batarseh, F. A., Context-assisted test cases reduction for cloud validation. International and\r\nInterdisciplinary Conference on Modeling and Using Context, Springer.','2013'),(96,'Krebs, R., Architectural Concerns in Multi-tenant SaaS Applications. CLOSER 12: 426-431.','2012'),(97,'Strauch, S., ESB MT: Enabling Multi-Tenancy in Enterprise Service Buses. Cloud Computing\r\nTechnology and Science (CloudCom), 2012 IEEE 4th International Conference on, IEEE.','2012'),(98,'S.Strauch, V. A., Decision Support for the Migration of the Application Database Layer to the\r\nCloud. Proceedings of the 5th IEEE International Conference on Cloud Computing Technology and\r\nScience, CloudCom 2013, 2-5 December 2013, Bristol, UK: 639--646.\r\n','2013'),(99,'Qaisi, L.M., A Twitter Sentiment Analysis for Cloud Providers: A Case Study of Azure Vs. Aws,\r\nComputer Science and Information Technology (CSIT), 2016 7th International Conference on: IEEE, pp. 1-6.','2016'),(100,'Dignan, L., Public Cloud Computing Vendors: A Look at Strengths, Weaknesses, Big Picture,\r\navailable at http://www.zdnet.com/article/public-cloud-computing-vendors-a-look-at-strengthsweaknesses-big-picture/.','2016'),(101,'Tsai, P., Aws Vs. Azure: It Pros Weigh the Pros and Cons, available at:\r\nhttps://www.cloudcomputing-news.net/news/2016/sep/06/aws-vs-azure-it-pros-weigh-pros-andcons','2016'),(102,'Serrano, N., Infrastructure as a Service and Cloud Technologies, IEEE software (32:2), pp. 30-36.','2015'),(103,'Modi, C., A Survey on Security Issues and Solutions at Different Layers of Cloud Computing, The\r\njournal of supercomputing), pp. 1-32.','2013'),(104,'Somorovsky, J., All Your Clouds Are Belong to Us: Security Analysis of Cloud Management\r\nInterfaces, Proceedings of the 3rd ACM workshop on Cloud computing security workshop: ACM,\r\npp. 3-14.','2011'),(105,'Tajadod, G., Microsoft and Amazon: A Comparison of Approaches to Cloud Security, Cloud\r\nComputing Technology and Science (CloudCom), 2012 IEEE 4th International Conference on:\r\nIEEE, pp. 539-544.','2012'),(106,'Roloff, Eduardo, Evaluating high performance computing on the windows azure platform, Cloud\r\nComputing (CLOUD), IEEE 5th International Conference on. IEEE.','2012'),(107,'Google documentation, Regions and Zones, available at\r\nhttps://cloud.google.com/compute/docs/regions-zones/regions-zones.\r\n','2017'),(108,'Smeds, J., Nybom, Devops: A Definition and Perceived Adoption Impediments, in Agile Processes\r\nin Software Engineering and Extreme Programming: 16th International Conference, Xp 2015,\r\nHelsinki, Finland, May 25-29, 2015, Proceedings, C. Lassenius, T. Dingsøyr and M. Paasivaara\r\n(eds.). Cham: Springer International Publishing, pp. 166-177.','2015'),(109,'Riungu-Kalliosaari, L., DevOps Adoption Benefits and Challenges in Practice: A Case Study,\r\nProduct-Focused Software Process Improvement: 17th International Conference, PROFES 2016,\r\nTrondheim, Norway, November 22-24, 2016, Proceedings 17. Springer International Publishing.','2016'),(110,'Pahl, Claus, Containerization and the paas cloud, IEEE Cloud Computing 2.3, p 24-31. ','2015'),(111,'Gunka, A, Moving an application to the cloud: an evolutionary approach. Proceedings of the 2013\r\ninternational workshop on Multi-cloud applications and federated clouds. ACM','2013'),(112,'Ardagna, Danilo, Modaclouds: A model-driven approach for the design and execution of\r\napplications on multiple clouds. Proceedings of the 4th international workshop on modeling in\r\nsoftware engineering. IEEE Press.','2012');
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tactic`
--

DROP TABLE IF EXISTS `tactic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tactic` (
  `tID` int(11) NOT NULL AUTO_INCREMENT,
  `tName` varchar(45) NOT NULL,
  `tDetail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`tID`),
  UNIQUE KEY `tID_UNIQUE` (`tID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tactic`
--

LOCK TABLES `tactic` WRITE;
/*!40000 ALTER TABLE `tactic` DISABLE KEYS */;
INSERT  IGNORE INTO `tactic` VALUES (1,'Substitute goal','Identify an alternative goal which is still contributable by the chosen migration\r\ntype or cloud services in a way that the obstructed goal and obstacle will not occur.'),(2,'Substitute cloud migration type','Choose an alternative cloud adoption type which satisfies the obstructed goal is\r\nadopted in a way that the obstacle will no longer occur. The tactics has root in the\r\nfact that different cloud adoption types, besides their specific contributions to\r\nquality goals, might have common contributions towards migration goals. '),(3,'Substitute cloud service','Resolve the obstacle by selecting/changing the cloud service/provider in a way that\r\nnew the cloud service can contribute to quality goals. Define a set of suitability\r\ncriteria that characterise desirable features of cloud providers. The criteria include\r\nprovider profile (e.g. pricing model, constraints, offered QoS, electricity costs,\r\npower, and cooling costs), organisation migration characteristics (migration goals,\r\navailable budget), and system requirements. Based on the criteria, identify and select suitable cloud providers.'),(4,'Analyse migration feasibility','Perform a feasibility analysis to evaluate the benefits and the consequences of\r\nmoving legacies to the cloud and its impact on organisation structure, staff’s roles,\r\nand legacies.'),(5,'Refactor legacy source code','Adapt the source code for being compatible and able to interact with the selected\r\ncloud platform programming language and APIs.'),(6,'Develop adaptor/wrapper','Add adaptors for resolving mismatches, occurring at runtime system execution,\r\nbetween legacy system components and cloud services.'),(7,'Decouple system components','Decouple the legacy system components from each other. Use mediator and\r\nsynchronisation mechanisms to manage interaction between the loosely coupled\r\ncomponents in the cloud environment.'),(8,'Encrypt/decrypt message passing','Add support for the runtime encryption/decryption of message transition between\r\ncomponents in on-premises network and cloud environment.'),(9,'Obfuscate code','Protect unauthorised access to code blocks of components by other tenants that are\r\nrunning on the same cloud service. Use encryption mechanisms in the sense that\r\nno other tenants will be able to access, read, or alter the code blocks with the\r\ncomponents when running in the cloud.\r\n'),(10,'Isolate tenant ','Enable multi-tenancy in the system. Based on multi-tenancy requirement (i) define\r\ntenant-based identification and hierarchical access control for tenants and (ii)\r\nseparate tenant data using authorization and authentication mechanisms. '),(11,'Tune message granularity','Define suitable granularity for messages, that are passing between system\r\ncomponents hosted on local network and the cloud, based on the degree of\r\nfunctionality that is offered to the service consumer and consumer\'s infrastructure\r\ncapability to process the messages. A proper message granularity can be identified\r\nor predicted based on pieces of data actually used by system or using heuristic\r\nfunctions to understand the number of interaction between system components\r\nover the cloud network.'),(12,'Adapt data','Convert legacy data types to the data type of target cloud database solution. Also,\r\nadd an extension component to the legacy system which includes a set of\r\ncommands to be performed by the system or cloud. The emulator supports missed\r\ndatabase functionalities of cloud database solution provider.'),(13,'Involve staff with cloud adoption process','Involve staff and stakeholders actively in the cloud adoption process and give them\r\ninsight of benefits of the cloud and organisational change.'),(14,'Define an authorization','Add a component determining if a tenant has privilege to perform a given action\r\nover the database. '),(15,'Encrypt data','Use data encryption mechanisms prior outsourcing or hosting system data to the\r\ncloud.'),(16,'Filter unauthorised requests','Add support to filter unauthorized data access received from users at the edge of\r\npremise or cloud network as early as possible to avoid unauthorized network\r\ntraffic.'),(17,'Adjust security policies','Add support for runtime security assessment of received queries for run on data. '),(18,'Replicate system components','Partition, replicate, and distribute system components and data (replicas) on\r\nmultiple cloud servers.'),(19,'Backup periodically','Implement a procedure to periodically perform data backup. '),(20,'Detect and filter intrusions','Filter unauthorised packets and malformed data traversed between system\r\ncomponents in local network and the cloud environment.'),(21,'Update patches','Perform regular patch update across system components in the cloud.'),(22,'Isolate tenant','Protect tenants\' data from to be accessed by other tenants. Each tenant should be\r\nauthorised and able to access to its own data.'),(23,'Define retry policies ','Define retry policies and implement them in the system for the operation to\r\nsucceed.'),(24,'Refine network topology','Define a proper network topology with a consideration of server proximity and\r\nsystem components, proper provider equipment, the location of the data centres,\r\nrouter hops, and infrastructure bandwidth.'),(25,'Examine cloud service behaviour','Use benchmarking tools to investigate performance of the cloud under\r\ninvestigation before decision making. '),(26,'Acquire more cloud resources','Rent more VMs or higher spec ones to deal with slow CPU clock rates, use\r\nphysical disk shipping to reduce effects of network latency/transfer rates.'),(27,'Use multiple cloud servers','Deploy and replicate system components in several clouds. '),(28,'Add intermediation','Implement an intermediate layer (mediator components) between legacy system\r\nand cloud services that decouple legacy systems from cloud specific APIs. This\r\nhelps to create intermediate APIs and get indirect service from the cloud.'),(29,'Make system stateless','Provide a support in the system to the handle safety and traceability of tenant’s\r\nsession when various system instances are hosted in the cloud. '),(30,'Prioritize tests','Perform test cases on the basis of their importance and criticality'),(31,'Resolve licensing issue','There are alternative sub-tactics: (i) negotiate with system owner to make a\r\nsuitable licensing model which satisfies all parties, (ii) extend legacy system with a\r\nnew component (e.g. VPN tunnel) in a way that cloud services can be indirectly\r\noffered to them, and (iii) enable a license tracking mechanism through monitoring\r\nconnections between the software system and cloud resources.'),(32,'Define weak inconsistency','Implement an eventual consistency or similar weak consistency model for data. '),(33,'Check compliance','Check if cloud adoption is compliance with the auditors and cloud providers. '),(34,'Clarify roles','Clarify roles and responsibilities relevant to cloud adoption. '),(35,'Aware top-level management','Make management aware of the extra effort that might be required for cloud\r\nadoption in the organisation.'),(36,'Degrade goal','Resolve an obstacle by degrading goal definition and refining its assumption for\r\nrequired levels of satisfaction so that the refined goal makes more freedom for\r\nviolation. '),(37,'Restore goal','Add a new goal for restoring the satisfaction of the obstructed goal when violated.'),(38,'Mitigate goal ','Add a new goal for mitigating the consequences of an obstacle if it occurs.'),(39,'Fix inconsistencies ','Perform manual or semi-automate steps to resolve inconsistencies which have\r\noccurred after data operations. '),(40,'Define compensation','Specify penalties (e.g. financial or getting more quote) to be paid by cloud\r\nprovider in the case of a disruption.'),(41,'Do nothing','Leave obstacle unresolved.'),(42,'Use rigorous authentication','Use strong passwords and authentication mechanism when running system in\r\ncloud environment.'),(43,'Keep virtualization at the system level','Create virtualization and isolation boundary at the legacy system level rather than\r\nat the server level through container concept. Such a container (i) handles resource\r\nallocation meaning that in the case of excessive resource consumption by a system\r\noperating in the cloud, only individual container is affected and whole virtual\r\nmachine is left unaffected and (ii) reduces incompatibility problems between\r\nsystems across multiple platforms.\r\n'),(44,'Use dedicated virtual machine','Run the system on dedicated virtual machine in the sense that the virtual machine\r\nis entirely performed on separate resources such physical servers, network, switch,\r\nbandwidth, disk, CPU, memory to satisfy expected goals, i.e. quality of service.\r\nAll resources are physically dedicated to the virtual machine. '),(45,'Define bidding strategy','Identify heavy processing tasks of the system (e.g. image, video, conversion and\r\nrendering) and define a bidding strategy for spot instance to lessen the cost of\r\nusing cloud resources.');
/*!40000 ALTER TABLE `tactic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcr`
--

DROP TABLE IF EXISTS `tcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcr` (
  `tcrID` int(11) NOT NULL AUTO_INCREMENT,
  `tID` int(11) NOT NULL,
  `cID` int(11) NOT NULL,
  PRIMARY KEY (`tcrID`),
  UNIQUE KEY `tcrID_UNIQUE` (`tcrID`),
  KEY `fk_tcr_tID_idx` (`tID`),
  KEY `fk_tcr_cID_idx` (`cID`),
  CONSTRAINT `fk_tcr_cID` FOREIGN KEY (`cID`) REFERENCES `category` (`cID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tcr_tID` FOREIGN KEY (`tID`) REFERENCES `tactic` (`tID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcr`
--

LOCK TABLES `tcr` WRITE;
/*!40000 ALTER TABLE `tcr` DISABLE KEYS */;
INSERT  IGNORE INTO `tcr` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,3,2),(6,4,3),(7,5,3),(8,6,3),(9,7,3),(10,8,3),(11,9,3),(12,10,3),(13,11,3),(14,12,3),(15,13,2),(16,14,3),(17,15,3),(18,16,3),(19,17,3),(20,18,2),(21,19,3),(22,20,3),(23,21,2),(24,22,3),(25,23,4),(26,24,2),(27,25,3),(28,26,2),(29,27,2),(30,28,3),(31,29,3),(32,30,3),(33,31,3),(34,32,2),(35,33,3),(36,34,2),(37,35,2),(38,36,5),(39,37,4),(40,38,6),(41,39,6),(42,40,6),(43,41,7),(44,42,3),(45,43,3),(46,44,2),(47,45,3);
/*!40000 ALTER TABLE `tcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tor`
--

DROP TABLE IF EXISTS `tor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tor` (
  `torID` int(11) NOT NULL AUTO_INCREMENT,
  `obsID` int(11) NOT NULL,
  `tID` int(11) NOT NULL,
  PRIMARY KEY (`torID`),
  UNIQUE KEY `torID_UNIQUE` (`torID`),
  KEY `fk_tor_obsID_idx` (`obsID`),
  KEY `fk_tor_tID_idx` (`tID`),
  CONSTRAINT `fk_tor_obsID` FOREIGN KEY (`obsID`) REFERENCES `obstical` (`obsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tor_tID` FOREIGN KEY (`tID`) REFERENCES `tactic` (`tID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tor`
--

LOCK TABLES `tor` WRITE;
/*!40000 ALTER TABLE `tor` DISABLE KEYS */;
INSERT  IGNORE INTO `tor` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,1),(59,59,1),(60,60,1),(61,61,1),(62,62,1),(63,63,1),(64,64,1),(65,65,1),(66,66,1),(67,67,1),(68,1,2),(69,2,2),(70,3,2),(71,4,2),(72,5,2),(73,6,2),(74,7,2),(75,8,2),(76,9,2),(77,10,2),(78,11,2),(79,12,2),(80,13,2),(81,14,2),(82,15,2),(83,16,2),(84,17,2),(85,18,2),(86,19,2),(87,20,2),(88,21,2),(89,22,2),(90,23,2),(91,24,2),(92,25,2),(93,26,2),(94,27,2),(95,28,2),(96,29,2),(97,30,2),(98,31,2),(99,32,2),(100,33,2),(101,34,2),(102,35,2),(103,36,2),(104,37,2),(105,38,2),(106,39,2),(107,40,2),(108,41,2),(109,42,2),(110,43,2),(111,44,2),(112,45,2),(113,46,2),(114,47,2),(115,48,2),(116,49,2),(117,50,2),(118,51,2),(119,52,2),(120,53,2),(121,54,2),(122,55,2),(123,56,2),(124,57,2),(125,58,2),(126,59,2),(127,60,2),(128,61,2),(129,62,2),(130,63,2),(131,64,2),(132,65,2),(133,66,2),(134,67,2),(135,1,3),(136,2,3),(137,3,3),(138,4,3),(139,5,3),(140,6,3),(141,7,3),(142,8,3),(143,9,3),(144,10,3),(145,11,3),(146,12,3),(147,13,3),(148,14,3),(149,15,3),(150,16,3),(151,17,3),(152,18,3),(153,19,3),(154,20,3),(155,21,3),(156,22,3),(157,23,3),(158,24,3),(159,25,3),(160,26,3),(161,27,3),(162,28,3),(163,29,3),(164,30,3),(165,31,3),(166,32,3),(167,33,3),(168,34,3),(169,35,3),(170,36,3),(171,37,3),(172,38,3),(173,39,3),(174,40,3),(175,41,3),(176,42,3),(177,43,3),(178,44,3),(179,45,3),(180,46,3),(181,47,3),(182,48,3),(183,49,3),(184,50,3),(185,51,3),(186,52,3),(187,53,3),(188,54,3),(189,55,3),(190,56,3),(191,57,3),(192,58,3),(193,59,3),(194,60,3),(195,61,3),(196,64,3),(197,65,3),(198,66,3),(199,67,3),(200,38,4),(201,39,4),(202,19,5),(203,20,5),(204,21,5),(205,22,5),(206,23,5),(207,24,5),(208,25,5),(209,19,6),(210,20,6),(211,21,6),(212,22,6),(213,23,6),(214,24,6),(215,25,6),(216,36,6),(217,51,7),(218,26,8),(219,8,9),(220,16,9),(221,4,10),(222,26,11),(223,50,12),(224,21,12),(225,38,13),(226,39,13),(227,4,14),(228,4,15),(229,13,15),(230,14,15),(231,14,16),(232,62,3),(233,63,3),(234,4,16),(235,14,17),(236,4,17),(237,3,18),(238,6,18),(239,27,18),(240,28,18),(241,45,18),(242,4,19),(243,14,19),(244,15,19),(245,17,19),(246,4,20),(247,8,20),(248,9,20),(249,7,21),(250,8,21),(251,9,21),(252,46,21),(253,7,22),(254,3,23),(255,27,24),(256,28,24),(257,47,24),(258,45,24),(259,11,25),(260,12,25),(261,17,25),(262,27,25),(263,27,26),(264,27,27),(265,6,28),(266,29,28),(267,47,28),(268,43,29),(269,32,30),(270,37,31),(271,52,32),(272,40,33),(273,38,34),(274,39,34),(275,31,35),(276,33,35),(277,35,35),(278,38,35),(279,39,35),(280,41,35),(281,1,36),(282,2,36),(283,3,36),(284,4,36),(285,5,36),(287,6,36),(288,7,36),(289,8,36),(290,9,36),(291,10,36),(292,11,36),(293,12,36),(294,13,36),(295,14,36),(296,15,36),(297,16,36),(298,17,36),(299,18,36),(300,19,36),(301,20,36),(302,21,36),(303,22,36),(304,23,36),(305,24,36),(306,25,36),(307,26,36),(308,27,36),(309,28,36),(310,29,36),(311,30,36),(312,31,36),(313,32,36),(314,33,36),(315,34,36),(316,35,36),(317,36,36),(318,37,36),(319,38,36),(320,39,36),(321,40,36),(322,41,36),(323,42,36),(324,43,36),(325,44,36),(326,45,36),(327,46,36),(328,47,36),(329,48,36),(330,49,36),(331,50,36),(332,51,36),(333,52,36),(334,53,36),(335,54,36),(337,55,36),(338,56,36),(339,57,36),(340,58,36),(341,59,36),(342,60,36),(343,61,36),(344,62,36),(345,63,36),(346,64,36),(347,65,36),(348,66,36),(349,67,36),(350,1,37),(351,2,37),(352,3,37),(353,4,37),(354,5,37),(355,6,37),(356,7,37),(357,8,37),(358,9,37),(359,10,37),(360,11,37),(361,12,37),(362,13,37),(363,14,37),(364,15,37),(365,16,37),(366,17,37),(367,18,37),(368,19,37),(369,20,37),(370,21,37),(371,22,37),(372,23,37),(373,24,37),(374,25,37),(375,26,37),(376,27,37),(377,28,37),(378,29,37),(379,30,37),(380,31,37),(381,32,37),(382,33,37),(383,34,37),(384,35,37),(385,36,37),(386,37,37),(387,38,37),(388,39,37),(389,40,37),(390,41,37),(391,42,37),(392,43,37),(393,44,37),(394,45,37),(395,46,37),(396,47,37),(397,48,37),(398,49,37),(399,50,37),(400,51,37),(401,52,37),(402,53,37),(403,54,37),(404,55,37),(405,56,37),(406,57,37),(407,58,37),(408,59,37),(409,60,37),(410,61,37),(411,62,37),(412,63,37),(413,64,37),(414,65,37),(415,66,37),(416,67,37),(417,1,38),(418,2,38),(419,3,38),(420,4,38),(421,5,38),(422,6,38),(423,7,38),(424,8,38),(425,9,38),(426,10,38),(427,11,38),(428,12,38),(429,13,38),(430,14,38),(431,15,38),(432,16,38),(433,17,38),(434,18,38),(435,19,38),(436,20,38),(437,21,38),(438,22,38),(439,23,38),(440,24,38),(441,25,38),(442,26,38),(443,27,38),(444,28,38),(445,29,38),(446,30,38),(447,31,38),(448,32,38),(449,33,38),(450,34,38),(451,35,38),(452,36,38),(453,37,38),(454,38,38),(455,39,38),(456,40,38),(457,41,38),(458,42,38),(459,43,38),(460,44,38),(461,45,38),(462,46,38),(463,47,38),(464,48,38),(465,49,38),(466,50,38),(467,51,38),(468,52,38),(469,53,38),(470,54,38),(471,55,38),(472,56,38),(473,57,38),(474,58,38),(475,59,38),(476,60,38),(477,61,38),(478,62,38),(479,63,38),(480,64,38),(481,65,38),(482,66,38),(483,67,38),(484,52,39),(485,1,40),(486,2,40),(487,53,42),(488,24,43),(489,66,43),(490,67,43),(491,4,44),(492,6,44),(493,8,44),(494,9,44),(495,13,44),(496,14,44),(497,18,44),(498,27,44),(499,29,44),(500,53,44),(501,58,44),(502,59,44),(503,54,45),(504,1,41),(505,2,41),(506,3,41),(507,4,41),(508,5,41),(509,6,41),(510,7,41),(511,8,41),(512,9,41),(513,10,41),(514,11,41),(515,12,41),(516,13,41),(517,14,41),(518,15,41),(519,16,41),(520,17,41),(521,18,41),(522,19,41),(523,20,41),(524,21,41),(525,22,41),(526,23,41),(527,24,41),(528,25,41),(529,26,41),(530,27,41),(531,28,41),(532,29,41),(533,30,41),(534,31,41),(535,32,41),(536,33,41),(537,34,41),(538,35,41),(539,36,41),(540,37,41),(541,38,41),(542,39,41),(543,40,41),(544,41,41),(545,42,41),(546,43,41),(547,44,41),(548,45,41),(549,46,41),(550,47,41),(551,48,41),(552,49,41),(553,50,41),(554,51,41),(555,52,41),(556,53,41),(557,54,41),(558,55,41),(559,56,41),(560,57,41),(561,58,41),(562,59,41),(563,60,41),(564,61,41),(565,62,41),(566,63,41),(567,64,41),(568,65,41),(569,66,41),(570,67,41);
/*!40000 ALTER TABLE `tor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-01 20:23:17
