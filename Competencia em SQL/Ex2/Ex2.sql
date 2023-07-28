use products_control;

DROP TABLE IF EXISTS `products_gestao`;

CREATE TABLE `products_gestao`
(
  `product` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
);

INSERT INTO `products_gestao` (`product`, `category`)
SELECT
  products.`name` AS `product_name`,
  categories.`name` AS `category_name`
FROM products
  INNER JOIN categories ON products.`id_categories` = categories.`id`
WHERE
  products.`amount` > 100
  AND products.`id_categories` IN (1, 2, 3, 6, 9)
ORDER BY
  products.`id_categories`;
