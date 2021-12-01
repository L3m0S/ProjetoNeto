CREATE DATABASE  IF NOT EXISTS `dados212d` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dados212d`;

--
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao` (
  `int_codigo` int NOT NULL AUTO_INCREMENT,
  `int_ativoinativo` char(1) DEFAULT NULL,
  `int_paciente` varchar(30) DEFAULT NULL,
  `int_convenio` varchar(15) DEFAULT NULL,
  `int_medico` varchar(30) DEFAULT NULL,
  `int_codigocid` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`int_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (1, 'A','gabriel', 'convenio1','medico1','1'),(2, 'A','lemos', 'convenio2', 'medico2', '2'),(3,'A','lemori', 'convenio3', 'medico3', '3');
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guiaexame`
--

DROP TABLE IF EXISTS `guiaexame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guiaexame` (
  `gui_codigo` int NOT NULL AUTO_INCREMENT,
  `gui_ativoinativo` char(1) DEFAULT NULL,
  `gui_numeroguia` varchar(15) DEFAULT NULL,  
  `gui_exame` varchar(30) DEFAULT NULL,
  `int_codigo` int NOT NULL,
  PRIMARY KEY (`gui_codigo`),
  KEY `fk_guiaexame_internacao_idx` (`int_codigo`),
  CONSTRAINT `fk_guiaexame_internacao` FOREIGN KEY (`int_codigo`) REFERENCES `internacao` (`int_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guiaexame`
--

LOCK TABLES `guiaexame` WRITE;
/*!40000 ALTER TABLE `guiaexame` DISABLE KEYS */;
INSERT INTO `guiaexame` VALUES (1,'A', '1','sangue', 1),(2,'A','2','colonoscopia',2),(3,'A','3','raiox',3);
/*!40000 ALTER TABLE `guiaexame` ENABLE KEYS */;
UNLOCK TABLES;