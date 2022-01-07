-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2021 lúc 03:55 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `populations`
--

CREATE TABLE `populations` (
  `pop_id` int(11) NOT NULL,
  `country_code` varchar(200) NOT NULL,
  `year` int(11) NOT NULL,
  `fertility_rate` float NOT NULL,
  `life_expectation` float NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `populations`
--

INSERT INTO `populations` (`pop_id`, `country_code`, `year`, `fertility_rate`, `life_expectation`, `size`) VALUES
(1, 'AFG', 2015, 4.653, 60.7172, 32526600),
(2, 'AFG', 2010, 5.746, 58.9708, 27962200),
(19, 'ABW', 2015, 1.647, 75.5736, 103889),
(20, 'ABW', 2010, 1.704, 74.9535, 101597);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `populations`
--
ALTER TABLE `populations`
  ADD PRIMARY KEY (`pop_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
