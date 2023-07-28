DROP DATABASE IF exists gestao_financeira2;
CREATE DATABASE gestao_financeira2;

use gestao_financeira2;

DROP TABLE IF exists categories;

CREATE TABLE 
	categories(
	`id` int NOT NULL,
	`name` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)	
	);
    
INSERT INTO `categories`
	VALUES
		(1,'wood'),
        (2,'luxury'),
        (3,'vintage'),
        (4,'modern'),
        (5,'super luxury');
        
DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `id_categories` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`)
  );
  
INSERT INTO `products`
	VALUES
		(1,'Two-doors wardrobe',100,800,1),
        (2,'Dining table',1000,560,3),
        (3,'Towel holder',10000,26,4),
        (4,'Computer desk',350,321,2),
        (5,'Chair',3000,121,4),
        (6,'Single bed',750,460,1);
