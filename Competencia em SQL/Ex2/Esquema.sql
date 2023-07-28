DROP DATABASE IF exists products_control;
CREATE DATABASE products_control;

use products_control;

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories`
	(
		`id` int NOT NULL,
		`name` varchar(255) DEFAULT NULL,
		PRIMARY KEY (`id`)
	);

INSERT INTO `categories`
	VALUES
		(1,'Superior'),
        (2,'Super Luxury'),
        (3,'Modern'),
        (4,'Nerd'),
        (5,'Intantile'),
        (6,'Robust'),
        (9,'Wood');
        
DROP TABLE IF EXISTS `products`;

CREATE TABLE `products`
	(
	  `id` int NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) DEFAULT NULL,
	  `amount` int DEFAULT NULL,
	  `price` int DEFAULT NULL,
	  `id_categories` int NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `id_fk_categories` (`id_categories`),
      FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`)
      );
      
INSERT INTO `products`
	VALUES
		(1,'Blue Chair',30,300,9),
        (2,'Red Chair',200,2150,2),
        (3,'Disney Wardrobe',400,830,4),
        (4,'Blue Toaster',20,10,3),
        (5,'Solar Panel',30,3000,4);
