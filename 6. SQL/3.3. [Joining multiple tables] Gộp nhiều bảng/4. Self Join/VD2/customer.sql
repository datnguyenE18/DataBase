SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `customer` (
  `customer_id` smallint(6) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `city`, `country`) VALUES
(1, 'MARY', 'SMITH', 'Sasebo', 'Japan'),
(2, 'PATRICIA', 'JOHNSON', 'Sasebo', 'Japan'),
(3, 'LINDA', 'WILLIAMS', 'Athenai', 'Greece'),
(4, 'BARBARA', 'JONES', 'Athenai', 'Greece'),
(5, 'ELIZABETH', 'BROWN', 'Nantou', 'Taiwan');

ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

ALTER TABLE `customer`
  MODIFY `customer_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;