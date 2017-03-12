-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2017 at 12:41 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('30khu85n3estee9oolfpa5iqvnthol3a', '127.0.0.1', 1489096626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039363632323b),
('cjset85qcofsr6unrnntoamg1atqve9d', '127.0.0.1', 1489345484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393334353436353b75736572726f6c657c733a353a224f776e6572223b),
('e4fdfrupblh0if71ut5ar7cdrptsmq60', '127.0.0.1', 1489098317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039383330373b),
('fkbaf2tnfa419iqb1rcqdcr7s0836bnu', '127.0.0.1', 1489361016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393336303936363b75736572726f6c657c733a353a224f776e6572223b7461736b7c4f3a383a22737464436c617373223a383a7b733a323a226964223b733a313a2231223b733a343a227461736b223b733a31393a22434f4d50313233342061737369676e6d656e74223b733a383a227072696f72697479223b733a313a2233223b733a343a2273697a65223b733a313a2232223b733a353a2267726f7570223b733a313a2232223b733a383a22646561646c696e65223b733a383a223230313730323139223b733a363a22737461747573223b733a313a2231223b733a343a22666c6167223b733a303a22223b7d),
('hgelk4karqvspl7vn7dkmphebme3op7c', '127.0.0.1', 1489099534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039393438343b),
('hnea92vfickjq4gtuahjk30kbbrhshke', '127.0.0.1', 1489100366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393130303132303b75736572726f6c657c733a353a224775657374223b),
('n7pqoq68b0cnls2r77d9qce8lrrlfbm1', '127.0.0.1', 1489098307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393039383330373b),
('spfhudno8tfa4ibo1841cnfu0bjr2khe', '127.0.0.1', 1489101125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393130303931303b75736572726f6c657c733a353a224f776e6572223b),
('uoc3jclnpg18238usv9cnr7plc72djjk', '127.0.0.1', 1489345465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393334353436343b),
('vo0mr7cs0nbs1fmbo4lktolr7vg1hi58', '127.0.0.1', 1489100512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393130303437393b75736572726f6c657c733a353a224f776e6572223b);

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `id` int(1) NOT NULL,
  `meaning` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`id`, `meaning`) VALUES
(1, 'Urgent');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'house'),
(2, 'school'),
(3, 'work'),
(4, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
CREATE TABLE `priorities` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `name`) VALUES
(1, 'low'),
(2, 'medium'),
(3, 'high');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(1) NOT NULL,
  `name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'in progress'),
(2, 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(2) NOT NULL,
  `task` varchar(22) DEFAULT NULL,
  `priority` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `group` int(1) DEFAULT NULL,
  `deadline` varchar(8) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `priority`, `size`, `group`, `deadline`, `status`, `flag`) VALUES
(1, 'COMP1234 assignment', 3, 2, 2, '20170219', '1', ''),
(2, 'Mow the lawn', 2, 2, 1, '', '2', ''),
(3, 'Wash the car', 2, 2, 1, '', '', ''),
(4, 'Paint the fence', 1, 2, 1, '', '', ''),
(5, 'Study for midterms', 3, 3, 2, '', '', ''),
(6, 'Intramural hockey game', 1, 2, 4, '', '', ''),
(7, 'Canucks hockey game', 3, 3, 4, '20170305', '2', ''),
(8, 'Buy steel-toed boots', 2, 1, 3, '', '', ''),
(9, 'Learn French', 1, 3, 3, '20161231', '1', ''),
(10, 'Hit the gym', 2, 1, 4, '', '', ''),
(11, 'Pay bills', 3, 1, 1, '', '', ''),
(12, 'Meet George', 2, 1, 1, '', '', ''),
(13, 'Buy milk & bread', 2, 1, 1, '', '', '1'),
(14, 'Read War & Peace', 1, 3, 1, '', '', ''),
(15, 'Organize the study', 1, 4, 1, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
