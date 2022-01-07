SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `phone` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `staffs` (`staff_id`, `first_name`, `last_name`, `email`, `phone`, `active`, `store_id`, `manager_id`) VALUES
(1, 'Fabiola', 'Jackson', 'fabiola.jackson@gmail.com', 5555554, 1, 1, NULL),
(2, 'Mierya', 'Copeland', 'mireya.copenland@gmail.om', 5555555, 1, 1, 1),
(3, 'Genna', 'Serrano', 'genna.serrano@gmail.com', 5555556, 1, 1, 2),
(4, 'Virgie', 'Wiggins', 'virgie.wiggins@gmail.com', 5555557, 1, 1, 2),
(5, 'Jannette', 'David', 'jannette.david@gmail.com', 3794444, 1, 2, 1),
(6, 'Marcelene', 'Boyer', 'marcelene.boyer@gmail.com', 3794445, 1, 2, 5),
(7, 'Venita', 'Daniel', 'venita.daniel@gmail.com', 3794446, 1, 2, 5),
(8, 'Kali', 'Vargas', 'kali.vargas@gmail.com', 5305555, 1, 3, 1),
(9, 'Layla', 'Terrell', 'layla.terrell@gmail.com', 5305556, 1, 3, 7),
(10, 'Bernardine', 'Houston', 'bernardine.houston@gmail.com', 5305557, 1, 3, 7);

ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`);

ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;