-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2017 at 08:37 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eysnagios`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login` (`_Usuario` VARCHAR(100), `_Pass` VARCHAR(250))  select * from usuarios where Usuario = _Usuario && Pass = _Pass$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `Id` int(11) NOT NULL,
  `Servicio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`Id`, `Servicio`) VALUES
(1, 'Disco Usado'),
(2, 'Disco Disponible'),
(3, 'Ram Asignado'),
(4, 'Ram Libre'),
(5, 'Trafico de Salida'),
(6, 'Trafica de Entrada');

-- --------------------------------------------------------

--
-- Table structure for table `servidores`
--

CREATE TABLE `servidores` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servidores`
--

INSERT INTO `servidores` (`Id`, `Nombre`) VALUES
(1, 'Wikinovum'),
(2, 'GLPI');

-- --------------------------------------------------------

--
-- Table structure for table `servidor_servicio`
--

CREATE TABLE `servidor_servicio` (
  `Id` int(11) NOT NULL,
  `Id_servidores` int(11) DEFAULT NULL,
  `Id_servicios` int(11) DEFAULT NULL,
  `Id_usuarios` int(11) NOT NULL,
  `Valor` double NOT NULL,
  `Tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servidor_servicio`
--

INSERT INTO `servidor_servicio` (`Id`, `Id_servidores`, `Id_servicios`, `Id_usuarios`, `Valor`, `Tiempo`) VALUES
(1, 1, 1, 0, 3629160, '2017-01-19 23:23:59'),
(2, 2, 1, 0, 3504804, '2017-01-19 23:31:26'),
(5, 1, 2, 0, 4053392, '2017-01-19 23:23:02'),
(6, 1, 3, 0, 1014484, '2017-01-19 23:25:52'),
(7, 1, 5, 0, 1078079108, '2017-01-19 23:43:41'),
(8, 1, 6, 0, 591503858, '2017-01-19 23:42:41'),
(9, 1, 4, 0, 383208, '2017-01-19 23:26:44'),
(10, 2, 2, 0, 6968648, '2017-01-19 23:30:27'),
(11, 2, 3, 0, 1015348, '2017-01-19 23:33:17'),
(12, 2, 4, 0, 261444, '2017-01-19 23:34:13'),
(13, 2, 5, 0, 2927978881, '2017-01-19 23:35:11'),
(14, 2, 6, 0, 1653287630, '2017-01-19 23:36:11'),
(15, 1, 1, 0, 3629164, '2017-01-19 23:53:59'),
(16, 1, 2, 0, 4053388, '2017-01-19 23:53:02'),
(17, 1, 3, 0, 1014484, '2017-01-19 23:55:52'),
(18, 1, 4, 0, 383152, '2017-01-19 23:56:44'),
(19, 1, 5, 0, 1078435262, '2017-01-19 23:58:41'),
(20, 1, 6, 0, 591537023, '2017-01-19 23:57:41'),
(21, 2, 1, 0, 3505140, '2017-01-20 00:01:26'),
(22, 2, 2, 0, 6968572, '2017-01-20 00:00:27'),
(23, 2, 3, 0, 1015348, '2017-01-20 00:03:17'),
(24, 2, 4, 0, 261472, '2017-01-20 00:04:13'),
(25, 2, 5, 0, 2929601529, '2017-01-20 00:05:11'),
(26, 2, 6, 0, 1653412756, '2017-01-20 00:06:11'),
(27, 1, 1, 0, 3629184, '2017-01-20 00:08:59'),
(28, 1, 2, 0, 4053376, '2017-01-20 00:08:02'),
(29, 1, 3, 0, 1014484, '2017-01-20 00:10:52'),
(30, 1, 4, 0, 381500, '2017-01-20 00:11:44'),
(31, 1, 5, 0, 1079444100, '2017-01-20 00:13:41'),
(32, 1, 6, 0, 591715264, '2017-01-20 00:12:41'),
(33, 2, 1, 0, 3504888, '2017-01-20 00:16:26'),
(34, 2, 2, 0, 6968564, '2017-01-20 00:15:27'),
(35, 2, 3, 0, 1015348, '2017-01-20 00:18:17'),
(36, 2, 4, 0, 261380, '2017-01-20 00:19:13'),
(37, 2, 5, 0, 2931166559, '2017-01-20 00:20:11'),
(38, 2, 6, 0, 1653535005, '2017-01-20 00:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `servidor_servicio`
--
ALTER TABLE `servidor_servicio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_servidores` (`Id_servidores`),
  ADD KEY `Id_servicios` (`Id_servicios`),
  ADD KEY `Id_usuarios` (`Id_usuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `servidores`
--
ALTER TABLE `servidores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `servidor_servicio`
--
ALTER TABLE `servidor_servicio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
