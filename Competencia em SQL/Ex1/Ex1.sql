USE gestao_financeira;

DROP TABLE IF EXISTS vendas_pri_semestre;

CREATE TABLE vendas_pri_semestre (
    `name` varchar(255) DEFAULT NULL,
    `id` int NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (`id`) REFERENCES customers(id)
);

INSERT INTO vendas_pri_semestre (`name`, `id`)
SELECT customers.name, customers.id
FROM customers
JOIN orders ON customers.id = orders.id_customer
WHERE orders.orders_date >= '2016-01-01' AND orders.orders_date <= '2016-06-30';