-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour recettes_manuel
CREATE DATABASE IF NOT EXISTS `recettes_manuel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recettes_manuel`;

-- Listage de la structure de table recettes_manuel. categorie
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recettes_manuel.categorie : ~2 rows (environ)
INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
	(2, 'entree'),
	(3, 'plat'),
	(4, 'dessert');

-- Listage de la structure de table recettes_manuel. composer
CREATE TABLE IF NOT EXISTS `composer` (
  `qte` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_recette` int NOT NULL,
  `id_ingredient` int NOT NULL,
  KEY `id_recette` (`id_recette`),
  KEY `id_ingredient` (`id_ingredient`),
  CONSTRAINT `FK_composer_ingredient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_composer_recettes` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recettes_manuel.composer : ~74 rows (environ)
INSERT INTO `composer` (`qte`, `id_recette`, `id_ingredient`) VALUES
	(0.150000, 1, 6),
	(0.250000, 1, 7),
	(0.250000, 1, 8),
	(5.000000, 1, 4),
	(5.000000, 1, 5),
	(0.050000, 1, 3),
	(0.500000, 1, 1),
	(0.150000, 2, 10),
	(0.150000, 2, 9),
	(1.000000, 2, 2),
	(1.000000, 1, 2),
	(1.000000, 3, 12),
	(0.150000, 3, 14),
	(0.050000, 3, 3),
	(3.000000, 3, 13),
	(0.300000, 5, 15),
	(0.250000, 5, 18),
	(0.050000, 5, 17),
	(0.500000, 7, 22),
	(0.150000, 7, 24),
	(0.250000, 7, 23),
	(0.500000, 6, 19),
	(1.000000, 6, 20),
	(5.000000, 6, 21),
	(0.200000, 8, 25),
	(0.200000, 8, 32),
	(0.200000, 8, 26),
	(3.000000, 8, 27),
	(0.010000, 8, 33),
	(0.250000, 9, 28),
	(0.100000, 9, 29),
	(0.200000, 10, 30),
	(0.050000, 10, 31),
	(0.150000, 10, 25),
	(6.000000, 9, 27),
	(0.050000, 10, 35),
	(1.000000, 2, 1),
	(0.100000, 4, 3),
	(0.100000, 4, 3),
	(0.050000, 4, 52),
	(0.200000, 4, 51),
	(0.250000, 4, 50),
	(0.150000, 11, 6),
	(0.200000, 11, 14),
	(0.050000, 11, 37),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(0.050000, 2, 11),
	(1.000000, 62, 67);

-- Listage de la structure de table recettes_manuel. ingredient
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) NOT NULL,
  `prix` decimal(20,6) DEFAULT '0.000000',
  `um` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recettes_manuel.ingredient : ~44 rows (environ)
INSERT INTO `ingredient` (`id_ingredient`, `designation`, `prix`, `um`) VALUES
	(1, 'salade_verte', 1.300000, 'pièce'),
	(2, 'oignons', 0.300000, 'pièce'),
	(3, 'huile_olive', 8.000000, 'litre'),
	(4, 'poivre', 0.050000, 'pincée'),
	(5, 'sel', 0.030000, 'pincée'),
	(6, 'lardons', 10.000000, 'kg'),
	(7, 'gésiers', 12.000000, 'kg'),
	(8, 'foies_volaille', 8.500000, 'kg'),
	(9, 'tomates_cerise', 15.000000, 'kg'),
	(10, 'saumon_fumé', 35.000000, 'kg'),
	(11, 'citron', 5.000000, 'kg'),
	(12, 'potimarron', 3.000000, 'pièce'),
	(13, 'poudre_muscade', 0.060000, 'pincée'),
	(14, 'crême_fraîche', 9.000000, 'kg'),
	(15, 'risotto', 12.000000, 'kg'),
	(16, 'crême_liquide', 11.000000, 'l'),
	(17, 'coriandre', 2.000000, 'pièce'),
	(18, 'crevettes_crues', 10.000000, 'kg'),
	(19, 'émincé_boeuf', 15.000000, 'kg'),
	(20, 'haricots_rouges', 3.000000, 'unité'),
	(21, 'épices_chili', 0.070000, 'pincée'),
	(22, 'joues_porc', 12.000000, 'kg'),
	(23, 'carottes', 3.000000, 'kg'),
	(24, 'vin_rouge', 5.000000, 'l'),
	(25, 'chocolat_noir', 6.500000, 'kg'),
	(26, 'sucre_poudre', 1.800000, 'kg'),
	(27, 'oeufs', 0.600000, 'unité'),
	(28, 'mascarpone', 10.000000, 'kg'),
	(29, 'amaretto', 40.000000, 'l'),
	(30, 'glace_vanille', 5.000000, 'l'),
	(31, 'crême_chantilly', 4.000000, 'unité'),
	(32, 'beurre', 10.000000, 'kg'),
	(33, 'farine', 4.000000, 'kg'),
	(34, 'café_soluble', 15.000000, 'kg'),
	(35, 'cacao', 18.000000, 'kg'),
	(36, 'citron', 10.000000, 'kg'),
	(37, 'poivre', 2.500000, 'cuiller à café'),
	(50, 'poulet', 15.000000, 'kg'),
	(51, 'lait_coco', 18.000000, 'l'),
	(52, 'curry', 0.050000, 'pincée'),
	(64, 'poivre', 2.500000, 'cuiller à café'),
	(65, 'poivre', 2.500000, 'cuiller à café'),
	(66, 'poivre', 2.500000, 'cuiller à café'),
	(67, 'test', 16.100000, 'g');

-- Listage de la structure de table recettes_manuel. recettes
CREATE TABLE IF NOT EXISTS `recettes` (
  `id_recette` int NOT NULL AUTO_INCREMENT,
  `nom_recette` varchar(50) NOT NULL,
  `instructions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `duree_mn` int NOT NULL DEFAULT '0',
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_recette`),
  KEY `id_categorie` (`id_categorie`),
  CONSTRAINT `FK_recettes_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recettes_manuel.recettes : ~16 rows (environ)
INSERT INTO `recettes` (`id_recette`, `nom_recette`, `instructions`, `duree_mn`, `id_categorie`) VALUES
	(1, 'salade_landaise', 'laver, égouter et préparer salade; émincer oigons, préparer vinaigrette; faire revenir lardons, gésiers et foies de volaille; mélanger le tout', 15, 2),
	(2, 'salade_nordique', 'laver, égoutter, préparer la salade; émincer les oignons; découper les tomates cerise en deux; préparer la vinaigrette; découper de fines lanières de saumon fumé citronné; mélanger le tout', 10, 2),
	(3, 'nouveau nom recette', 'éplucher le potimarron; le couper en deux; vider l\'intérieur; le couper en gros morceaux; les faire cuire 20 mn dans l\'eau; pendant ce temps faire revenir l\'oignon émincé dans de l\'huile d\'olive; ajouter les morceaux de potimarron pendant 2 mn; verser le tout dans un saladier; mixer en ajoutant un peu de bouillon de légumes; assaisonner avec sel, pivre et poudre de muscade; ajouter 2 cuillère à soupe de crême fraîche', 25, 2),
	(4, 'poulet_coco_curry', 'découper le poulet en cubes de 2cm; saupoudrer de curry en poudre; les faire revenir pendant 5 mn avec l\'oignon et le gingembre émincé; ajouter 1 cuillère à soupe de sauce soja salée et de jus de citron vert; rajouter 30 cl de lait de coco et laisser cuire à feu doux encore 15mn; servez avec du riz thaï ', 30, 3),
	(5, 'risotto_crevettes', 'faire dorer les grains de risotto 2mn à la poêle avec l\'émincé d\'oignons; préparer un bouillon de légumes; verser progressivement louche par louche le bouillon sur le risotto dans un récipient adapté à feu moyen pendant 20mn; ajouter les crevettes crues, la crème liquidie et les parmesan 5mn avant la fin;salez, poivrez, saupoudrez de coriandre fraîche ', 30, 3),
	(6, 'chili_con_carne', 'émincez les oignons; évidez puis coupez les poivrons rouges en lamelles; faire revenir le tout pendant 5mn à feu moyen; mouillez avec du coulis de tomates, ajouter les épices chili et le boeuf émincé; laisser mijoter à feu doux pendant 30mn; ajoutez les haricots rouges cuits 5mn avant la fin; servez avec du riz et ajoutez une cuillère à soupe de crême fraîche et un peu de gruyère rapé', 35, 3),
	(7, 'bourguignon_joues', 'faire revenir les morceaux de joue de porc et l\'oigon émincé 5mn à la poêle; salez, poivrez; mouillez le tout avec du bouillon de légume, un verre de vin rouge; ajouter les tronçons de carottes et laisser mijoter 1h à feu doux; servez avec du riz ou des pâtes', 75, 3),
	(8, 'moelleux_chocolat', 'cassez 200g de chocolat noir en morceaux; découpez 200g de beurre; ajoutez 200g de sucre en poudre; faire fondre le tout au bain marie; ajoutez 3 oeufs un par un et bien mélanger; ajoutez une cuillère à soupe de farine; remplir un moule beurré adapté; enfournez 20mn à 180°', 40, 4),
	(9, 'tiramisu_café', 'mélangez 6 jaunes d\'oeufs avec 150g de sucre au robot; ajouter 10cl d\'amareto; quand tout est bien mélangé ajoutez 500g de mascarpone; battre au robot jusque tout soit homogène; transvasez dans un saladier; battre les balncs d\'oeufs en neige; incorporez les progressivement au mélange; imbibez des morceuax de biscuits cuiller de café noir; les placer au fond de votre verre; recouvrez de préparation; saupoudrez de cacao amer; réservez au froid', 35, 4),
	(10, 'dame_blanche', 'prélevez trois boules de glace vanille; faites fondre du chocolat noir; versez sur les boules de glaces; ajouter de la chantilly et saupoudrez de cacao noir', 10, 4),
	(11, 'pâtes carbonara', 'cuire les pâtes à l eau bouillante selon la durée indiquée sur l emballage;\r\n pendant ce temps émincer un oignon et le faire revenir 5mn avec les lardons; mélanger le tout et agrémenter de crême fraîche et de gruyère rapé', 15, 3),
	(58, 'tasse_eau_chaude', 'verser de l\'eau chaude dans la tasse', 0, 2),
	(59, 'pâtes carbonara', 'cuire les pâtes à l eau bouillante selon la durée indiquée sur l emballage;\r\n pendant ce temps émincer un oignon et le faire revenir 5mn avec les lardons; mélanger le tout et agrémenter de crême fraîche et de gruyère rapé', 15, 3),
	(60, 'pâtes carbonara', 'cuire les pâtes à l eau bouillante selon la durée indiquée sur l emballage;\r\n pendant ce temps émincer un oignon et le faire revenir 5mn avec les lardons; mélanger le tout et agrémenter de crême fraîche et de gruyère rapé', 15, 3),
	(61, 'pâtes carbonara', 'cuire les pâtes à l eau bouillante selon la durée indiquée sur l emballage;\r\n pendant ce temps émincer un oignon et le faire revenir 5mn avec les lardons; mélanger le tout et agrémenter de crême fraîche et de gruyère rapé', 15, 3),
	(62, 'test', 'test', 10, 4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
