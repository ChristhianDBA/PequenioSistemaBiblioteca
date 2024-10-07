CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'El Quijote','Miguel de Cervantes',1),(2,'1984','George Orwell',1),(3,'La Odisea','Homero',1),(4,'El Alquimista','Paulo Coelho',1),(5,'Cien años de soledad','Gabriel García Márquez',1),(6,'La sombra del viento','Carlos Ruiz Zafón',1),(7,'Orgullo y prejuicio','Jane Austen',1),(8,'1984','George Orwell',1),(9,'El gran Gatsby','F. Scott Fitzgerald',1),(10,'Moby Dick','Herman Melville',1),(11,'Crimen y castigo','Fiódor Dostoyevski',1),(12,'El viejo y el mar','Ernest Hemingway',1),(13,'Los miserables','Victor Hugo',1),(14,'El príncipe','Nicolás Maquiavelo',1),(15,'Cien años de soledad','Gabriel García Márquez',1),(16,'Don Quijote de la Mancha','Miguel de Cervantes',1),(17,'El nombre de la rosa','Umberto Eco',0),(18,'El proceso','Franz Kafka',1),(19,'Fahrenheit 451','Ray Bradbury',1),(20,'La casa de los espíritus','Isabel Allende',1),(21,'La odisea','Homero',1),(22,'La metamorfosis','Franz Kafka',0),(23,'Las mil y una noches','Anónimo',1),(24,'Siddhartha','Hermann Hesse',1),(25,'En busca del tiempo perdido','Marcel Proust',0),(26,'Los viajes de Gulliver','Jonathan Swift',1),(27,'El jardín secreto','Frances Hodgson Burnett',1),(28,'Bajo la misma estrella','John Green',0),(29,'La tregua','Mario Benedetti',1),(30,'Rayuela','Julio Cortázar',1),(31,'El amor en los tiempos del cólera','Gabriel García Márquez',1),(32,'El guardián entre el centeno','J.D. Salinger',0),(33,'Cumbres borrascosas','Emily Brontë',1),(34,'En el camino','Jack Kerouac',1),(35,'Los miserables','Victor Hugo',1),(36,'La isla del tesoro','Robert Louis Stevenson',1),(37,'Los cuentos de la selva','Horacio Quiroga',0),(38,'El tambor de hojalata','Günter Grass',1),(39,'El retrato de Dorian Gray','Oscar Wilde',1),(40,'La guerra y la paz','León Tolstói',0),(41,'Un mundo feliz','Aldous Huxley',1),(42,'La divina comedia','Dante Alighieri',1),(43,'Los tres mosqueteros','Alexandre Dumas',0),(44,'El conde de Montecristo','Alexandre Dumas',1),(45,'El hombre invisible','H.G. Wells',1),(46,'La máquina del tiempo','H.G. Wells',1),(47,'Un monstruo viene a verme','Patrick Ness',0),(48,'It','Stephen King',1),(49,'El hobbit','J.R.R. Tolkien',1),(50,'El señor de los anillos','J.R.R. Tolkien',0),(51,'Crónicas de una muerte anunciada','Gabriel García Márquez',1),(52,'Cuentos de la selva','Horacio Quiroga',1),(53,'El amor y otros demonios','Gabriel García Márquez',1),(54,'Como agua para chocolate','Laura Esquivel',1),(55,'Pedro Páramo','Juan Rulfo',0),(56,'Aura','Carlos Fuentes',1),(57,'Los ojos del perro siberiano','Antonio Salvado',1),(58,'Las intermitencias de la muerte','José Saramago',0),(59,'Un hombre de éxito','Jorge Luis Borges',1),(60,'Cuentos de la selva','Horacio Quiroga',1),(61,'El túnel','Ernesto Sabato',1),(62,'La casa de los espíritus','Isabel Allende',0),(63,'Los pescadores de perlas','Georges Bizet',1),(64,'La lluvia de fuego','Julio Cortázar',1),(65,'Historia de dos ciudades','Charles Dickens',1),(66,'Mujercitas','Louisa May Alcott',1),(67,'Alicia en el país de las maravillas','Lewis Carroll',0),(68,'El corazón delator','Edgar Allan Poe',1),(69,'El escuerzo','Pedro Salinas',1),(70,'Rayuela','Julio Cortázar',0),(71,'La niña de tus ojos','Fernando Trueba',1),(72,'El árbol de la ciencia','Pío Baroja',1),(73,'Mujeres que corren con los lobos','Clarissa Pinkola Estés',0),(74,'Los hombres que no amaban a las mujeres','Stieg Larsson',1),(75,'Los secretos del corazón','Nora Roberts',1),(76,'El secreto de la felicidad','M. Scott Peck',0),(77,'En el corazón del país','Richard Ford',1),(78,'Las chicas de alambre','Joaquín Amadó',1),(79,'El último deseo','Andrzej Sapkowski',1),(80,'La historia interminable','Michael Ende',1),(81,'Cuentos de la selva','Horacio Quiroga',1);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'biblioteca'
--

--
-- Dumping routines for database 'biblioteca'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07  2:26:00
