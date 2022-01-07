SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `city_id` int(11) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `phone` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES
(3, '23 Workhaven Lane', 'Alberta', 300, 35200, '14033335568'),
(4, '1411 Lillydale Drive', 'QLD', 576, 17886, '6172235589'),
(5, '1913 Hanoi Way', 'Nagasaki', 463, 35200, '28303384290'),
(6, '1121 Loja Avenue', 'California', 463, 17886, '838635286649'),
(7, '692 Joliet Street', 'Attika', 38, 83579, '448477190408');

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `city` (`city_id`, `city`) VALUES
(1, 'A Corua (La Corua)'),
(200, 'Hamilton'),
(300, 'Lethbridge'),
(400, 'Patiala'),
(576, 'Woodridge');

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `address_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `address_id`, `store_id`, `active`) VALUES
(1, 'Mike', 'Hillyer', 3, 2, 1),
(2, 'Jon', 'Stephens', 4, 2, 1);

ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
