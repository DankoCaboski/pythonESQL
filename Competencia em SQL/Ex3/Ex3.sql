use gestao_financeira2;

DROP TABLE IF EXISTS `quantidades`;

CREATE TABLE `quantidades` (
  `category` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL
);

INSERT INTO `quantidades` (`category`, `quantity`)
SELECT
  categories.`name` AS `category`,
  sum(products.`amount`) AS `quantity`
FROM
	categories
  LEFT JOIN products ON categories.`id` = products.`id_categories`
GROUP BY
  categories.`name`;
