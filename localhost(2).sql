-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2017 at 09:19 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swapnil_gangurde`
--
CREATE DATABASE `swapnil_gangurde` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `swapnil_gangurde`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_info` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `parent_id`, `image_name`, `category_info`, `created_at`, `updated_at`) VALUES
(2, 'Main 1', NULL, '14988949744.png', NULL, '2017-07-01 09:42:54', NULL),
(3, 'Main 2', NULL, '149889501810.png', NULL, '2017-07-01 09:43:38', NULL),
(4, 'sub 1', 2, '14988961807.gif', 'dummy text here', '2017-07-01 10:03:00', NULL),
(5, 'Sub 2', 3, '14988967646.jpg', 'dummy text here ', '2017-07-01 10:12:44', NULL),
(6, 'Main 3', NULL, '149889738911.jpg', NULL, '2017-07-01 10:23:09', NULL),
(7, 'Sub 3', 2, '14988974755.jpg', 'dummy text here', '2017-07-01 10:24:35', NULL),
(8, 'sub 44', 6, '14988978638.jpg', 'info here cat', '2017-07-01 10:31:03', NULL),
(9, 'fgdgd', 6, '14988979306.jpg', 'fdgdfgdg', '2017-07-01 10:32:10', NULL),
(10, 'test', 2, '14988992526.png', 'New Test', '2017-07-01 10:54:12', NULL),
(11, 'test category jjj', NULL, '149906253311.jpg', NULL, '2017-07-03 08:15:33', NULL),
(12, 'demo', 11, '14990625582.jpg', 'kkk', '2017-07-03 08:15:58', NULL),
(13, 'test dsfa', NULL, '14990851942.jpg', NULL, '2017-07-03 14:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_category`
--

CREATE TABLE IF NOT EXISTS `mst_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_info` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `mst_category`
--

INSERT INTO `mst_category` (`id`, `category_name`, `parent_id`, `image_name`, `category_info`, `created_at`, `updated_at`) VALUES
(2, 'Main 1', NULL, '14988949744.png', NULL, '2017-07-01 09:42:54', NULL),
(3, 'Main 2', NULL, '149889501810.png', NULL, '2017-07-01 09:43:38', NULL),
(4, 'sub 1', 2, '14988961807.gif', 'dummy text here', '2017-07-01 10:03:00', NULL),
(5, 'Sub 2', 3, '14988967646.jpg', 'dummy text here ', '2017-07-01 10:12:44', NULL),
(6, 'Main 3', NULL, '149889738911.jpg', NULL, '2017-07-01 10:23:09', NULL),
(7, 'Sub 3', 2, '14988974755.jpg', 'dummy text here', '2017-07-01 10:24:35', NULL),
(8, 'sub 44', 6, '14988978638.jpg', 'info here cat', '2017-07-01 10:31:03', NULL),
(9, 'fgdgd', 6, '14988979306.jpg', 'fdgdfgdg', '2017-07-01 10:32:10', NULL),
(10, 'test', 2, '14988992526.png', 'New Test', '2017-07-01 10:54:12', NULL),
(11, 'test category jjj', NULL, '149906253311.jpg', NULL, '2017-07-03 08:15:33', NULL),
(12, 'demo', 11, '14990625582.jpg', 'kkk', '2017-07-03 08:15:58', NULL),
(13, 'test dsfa', NULL, '14990851942.jpg', NULL, '2017-07-03 14:33:14', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `mst_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mst_category`
--
ALTER TABLE `mst_category`
  ADD CONSTRAINT `mst_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `mst_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
