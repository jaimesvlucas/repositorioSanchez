-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 10:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `back`
--
CREATE DATABASE IF NOT EXISTS `back` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `back`;

-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) UNSIGNED NOT NULL,
  `idRemitente` int(11) UNSIGNED NOT NULL,
  `idDestinatario` int(11) UNSIGNED NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mensajes`
--

INSERT INTO `mensajes` (`id`, `idRemitente`, `idDestinatario`, `mensaje`, `fecha`) VALUES
(1, 1, 1, 'mensaje de prueba', '2021-02-17 19:31:45'),
(8, 1, 1, 'asdfasdfadsfasdfa', '2021-02-17 20:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `id` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` (`id`, `idUser`, `titulo`, `contenido`) VALUES
(1, 1, 'titulo 1', 'contenido 1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `apellidos` varchar(64) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` int(10) UNSIGNED DEFAULT NULL,
  `dni` varchar(16) NOT NULL,
  `imgSrc` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `password`, `email`, `telefono`, `dni`, `imgSrc`) VALUES
(1, 'jaime', 'sanchez', '$2y$10$9BZDYPD36c.MfFtBnbC6yuWfkZQmfjBlCLZR8ggaT36A23Eyx0Tte', 'jaime@gmail.com', 656919501, '6287129X', 'http://localhost/backendphp/images/p-1-1615283432.png'),
(2, 'aaa', 'aaa', '$2y$10$D2nMq4GUYW3tu6zp2CfS8Oa9Bif0A4L/seKYkFDtn4eN9UwqNknn.', 'aaa@aaa.com', 666666666, '0000000T', 'http://localhost/backendphp/images/p-2-1613587079.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDestinatario` (`idDestinatario`),
  ADD KEY `idRemitente` (`idRemitente`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`idDestinatario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`idRemitente`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
