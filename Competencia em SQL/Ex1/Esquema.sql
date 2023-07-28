DROP DATABASE IF exists gestao_financeira;
CREATE DATABASE gestao_financeira;

use gestao_financeira;

DROP TABLE IF exists customers;

CREATE TABLE 
	customers(
		`id` int NOT NULL AUTO_INCREMENT,
		`name` varchar(255) DEFAULT NULL,
		`street` varchar(255) DEFAULT NULL,
		`city` varchar(255) DEFAULT NULL,
		`state` char(2) DEFAULT NULL,
		`credit_limit` int DEFAULT NULL,
		PRIMARY KEY (`id`)
	);
    
INSERT INTO `customers` 
	VALUES 
		(1,'Nicolas Diogo Cardoso','Acesso Um','Porto Alegre','RS',475),
        (2,'Cecília Olívia Rodrigues','Rua Sizuka Usuy','Cianorte','PR',3170),
        (3,'Augusto Fernando Carlos Eduardo Cardoso','Rua Baldomiro Koerich','Palhoça','SC',1067),
        (5,'Sabrina Heloisa Gabriela Barros','Rua Engenheiro Tito Marques Fernandes','Porto Alegre','RS',4312),
        (6,'Joaquim Diego Lorenzo Araújo','Rua Vitorino','Novo Hamburgo','RS',2314);

    
DROP TABLE IF exists orders;

CREATE TABLE orders
	(
		`id` int NOT NULL AUTO_INCREMENT,
		`orders_date` date DEFAULT NULL,
		`id_customer` int NOT NULL,
		PRIMARY KEY (`id`),
        Foreign Key (`id_customer`) REFERENCES customers(id)
    );
    
INSERT INTO `orders`
	VALUES
    (1,'2016-05-13',3),
    (2,'2016-01-12',2),
    (3,'2016-02-13',6),
    (4,'2016-08-05',3),
    (5,'2016-04-18',5);
