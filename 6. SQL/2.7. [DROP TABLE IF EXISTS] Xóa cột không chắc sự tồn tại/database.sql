-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 04, 2021 lúc 01:41 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliations`
--

CREATE TABLE `affiliations` (
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `function` text NOT NULL,
  `organization_id` text NOT NULL,
  `professor_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `affiliations`
--

INSERT INTO `affiliations` (`first_name`, `last_name`, `function`, `organization_id`, `professor_id`) VALUES
('Anastasia', 'Ailamaki', 'Consulting on data mgmt', 'S2P Lion, Germany', 10),
('Cesla', 'Amarelle', 'Mandat', 'Nationalrat', 11),
('Christoph', 'Aebi', 'NA', 'SWAN Isotopen AG', 7),
('Daniel', 'Aebersold', 'NA', 'Berner Radium-Stiftung', 5),
('Daniel', 'Aebersold', 'NA', 'Janser Krebs-Stiftung', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `professors`
--

CREATE TABLE `professors` (
  `id` smallint(6) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `university_shortname` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `professors`
--

INSERT INTO `professors` (`id`, `first_name`, `last_name`, `university_shortname`) VALUES
(5, 'Daniel', 'Aebersold', 'UBE'),
(7, 'Christoph', 'Aebi', 'UBE'),
(10, 'Anastasia', 'Ailamaki', 'EPF'),
(11, 'Cesla', 'Amarelle', 'UNE');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
