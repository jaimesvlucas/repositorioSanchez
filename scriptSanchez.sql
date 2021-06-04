-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 10:45 PM
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
-- Database: `bddsanchez`
--
CREATE DATABASE IF NOT EXISTS `bddsanchez` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `bddsanchez`;

-- --------------------------------------------------------

--
-- Table structure for table `actores`
--

CREATE TABLE `actores` (
  `titulo_id` int(11) NOT NULL,
  `nombre_id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `actores`
--

INSERT INTO `actores` (`titulo_id`, `nombre_id`, `tipo`) VALUES
(1, 1, 'principal'),
(1, 2, 'principal'),
(1, 3, 'principal'),
(2, 6, 'principal'),
(2, 7, 'principal'),
(2, 8, 'principal'),
(3, 7, 'principal'),
(3, 11, 'principal'),
(3, 12, 'principal'),
(4, 13, 'principal'),
(4, 14, 'principal'),
(4, 15, 'principal'),
(5, 19, 'principal'),
(5, 20, 'principal'),
(5, 21, 'principal'),
(6, 24, 'principal'),
(6, 25, 'principal'),
(6, 26, 'principal'),
(7, 30, 'principal'),
(7, 31, 'principal'),
(7, 32, 'principal'),
(8, 37, 'principal'),
(8, 38, 'principal'),
(8, 39, 'principal'),
(9, 42, 'principal'),
(9, 43, 'principal'),
(9, 44, 'principal'),
(10, 30, 'principal'),
(10, 32, 'principal'),
(10, 48, 'principal'),
(11, 49, 'principal'),
(11, 50, 'principal'),
(11, 51, 'principal'),
(12, 55, 'principal'),
(12, 56, 'principal'),
(12, 57, 'principal'),
(13, 62, 'principal'),
(13, 63, 'principal'),
(13, 64, 'principal'),
(14, 30, 'principal'),
(14, 31, 'principal'),
(14, 32, 'principal'),
(15, 65, 'principal'),
(15, 66, 'principal'),
(15, 67, 'principal'),
(16, 11, 'principal'),
(16, 72, 'principal'),
(16, 73, 'principal'),
(17, 76, 'principal'),
(17, 77, 'principal'),
(17, 78, 'principal'),
(18, 81, 'principal'),
(18, 82, 'principal'),
(18, 83, 'principal'),
(19, 55, 'principal'),
(19, 56, 'principal'),
(19, 57, 'principal'),
(20, 85, 'principal'),
(20, 86, 'principal'),
(20, 87, 'principal'),
(21, 91, 'principal'),
(21, 92, 'principal'),
(21, 93, 'principal'),
(22, 95, 'principal'),
(22, 96, 'principal'),
(22, 97, 'principal'),
(23, 49, 'principal'),
(23, 99, 'principal'),
(23, 100, 'principal'),
(24, 102, 'principal'),
(24, 103, 'principal'),
(24, 104, 'principal'),
(25, 105, 'principal'),
(25, 106, 'principal'),
(25, 107, 'principal'),
(26, 109, 'principal'),
(26, 110, 'principal'),
(26, 111, 'principal'),
(27, 112, 'principal'),
(27, 113, 'principal'),
(27, 114, 'principal'),
(28, 115, 'principal'),
(28, 116, 'principal'),
(28, 117, 'principal'),
(29, 120, 'principal'),
(29, 121, 'principal'),
(29, 122, 'principal'),
(30, 124, 'principal'),
(30, 125, 'principal'),
(30, 126, 'principal'),
(31, 128, 'principal'),
(31, 129, 'principal'),
(31, 130, 'principal'),
(32, 135, 'principal'),
(32, 136, 'principal'),
(32, 137, 'principal'),
(33, 139, 'principal'),
(33, 140, 'principal'),
(33, 141, 'principal'),
(34, 143, 'principal'),
(34, 144, 'principal'),
(34, 145, 'principal'),
(35, 148, 'principal'),
(35, 149, 'principal'),
(35, 150, 'principal'),
(36, 152, 'principal'),
(36, 153, 'principal'),
(36, 154, 'principal'),
(37, 156, 'principal'),
(37, 157, 'principal'),
(37, 158, 'principal'),
(38, 161, 'principal'),
(38, 162, 'principal'),
(38, 163, 'principal'),
(39, 164, 'principal'),
(39, 165, 'principal'),
(39, 166, 'principal'),
(40, 169, 'principal'),
(40, 170, 'principal'),
(40, 171, 'principal'),
(41, 173, 'principal'),
(41, 174, 'principal'),
(41, 175, 'principal'),
(42, 177, 'principal'),
(42, 178, 'principal'),
(42, 179, 'principal'),
(43, 181, 'principal'),
(43, 182, 'principal'),
(43, 183, 'principal'),
(44, 186, 'principal'),
(44, 187, 'principal'),
(44, 188, 'principal'),
(45, 190, 'principal'),
(45, 191, 'principal'),
(45, 192, 'principal'),
(46, 195, 'principal'),
(46, 196, 'principal'),
(46, 197, 'principal'),
(47, 199, 'principal'),
(47, 200, 'principal'),
(47, 201, 'principal'),
(48, 204, 'principal'),
(48, 205, 'principal'),
(48, 206, 'principal'),
(49, 208, 'principal'),
(49, 209, 'principal'),
(49, 210, 'principal'),
(50, 212, 'principal'),
(50, 213, 'principal'),
(50, 214, 'principal');

-- --------------------------------------------------------

--
-- Table structure for table `creadores`
--

CREATE TABLE `creadores` (
  `id` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL,
  `nombre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `creadores`
--

INSERT INTO `creadores` (`id`, `titulo_id`, `nombre_id`) VALUES
(1, 27, 118),
(2, 28, 119),
(3, 29, 123),
(4, 30, 127),
(5, 31, 131),
(6, 31, 132),
(7, 32, 133),
(8, 32, 134),
(9, 33, 138),
(10, 34, 142),
(11, 34, 143),
(12, 35, 146),
(13, 35, 147),
(14, 36, 151),
(15, 37, 155),
(16, 38, 159),
(17, 38, 160),
(18, 39, 164),
(19, 40, 167),
(20, 40, 168),
(21, 41, 172),
(22, 42, 176),
(23, 43, 180),
(24, 44, 184),
(25, 44, 185),
(26, 45, 189),
(27, 46, 193),
(28, 46, 194),
(29, 47, 198),
(30, 48, 202),
(31, 48, 203),
(32, 49, 207),
(33, 50, 211);

-- --------------------------------------------------------

--
-- Table structure for table `directores`
--

CREATE TABLE `directores` (
  `titulo_id` int(11) NOT NULL,
  `nombre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `directores`
--

INSERT INTO `directores` (`titulo_id`, `nombre_id`) VALUES
(1, 4),
(2, 9),
(3, 9),
(4, 16),
(5, 22),
(6, 27),
(7, 33),
(8, 40),
(9, 45),
(10, 33),
(11, 52),
(12, 58),
(13, 16),
(14, 33),
(15, 68),
(16, 74),
(17, 79),
(17, 80),
(18, 84),
(19, 61),
(20, 88),
(21, 91),
(22, 98),
(23, 27),
(24, 16),
(25, 52);

-- --------------------------------------------------------

--
-- Table structure for table `escritores`
--

CREATE TABLE `escritores` (
  `titulo_id` int(11) NOT NULL,
  `nombre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `escritores`
--

INSERT INTO `escritores` (`titulo_id`, `nombre_id`) VALUES
(1, 4),
(1, 5),
(2, 9),
(2, 10),
(3, 9),
(3, 10),
(4, 16),
(4, 17),
(4, 18),
(5, 23),
(6, 28),
(6, 29),
(7, 34),
(7, 35),
(7, 36),
(8, 40),
(8, 41),
(9, 46),
(9, 47),
(10, 34),
(10, 35),
(10, 36),
(11, 53),
(11, 54),
(12, 59),
(12, 60),
(12, 61),
(13, 16),
(14, 34),
(14, 35),
(14, 36),
(15, 69),
(15, 70),
(15, 71),
(16, 74),
(16, 75),
(17, 79),
(17, 80),
(18, 84),
(19, 61),
(20, 89),
(20, 90),
(21, 91),
(21, 94),
(22, 98),
(23, 101),
(24, 16),
(24, 17),
(25, 52),
(25, 108);

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `titulo_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`titulo_id`, `genero_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 1),
(6, 4),
(6, 5),
(7, 1),
(7, 3),
(7, 6),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(10, 3),
(10, 6),
(11, 1),
(11, 7),
(12, 3),
(12, 6),
(12, 8),
(13, 3),
(13, 6),
(13, 9),
(14, 1),
(14, 3),
(14, 6),
(15, 1),
(16, 1),
(16, 2),
(16, 4),
(17, 3),
(17, 9),
(18, 1),
(18, 10),
(19, 3),
(19, 6),
(19, 8),
(20, 1),
(20, 2),
(20, 11),
(21, 1),
(21, 7),
(21, 12),
(22, 6),
(22, 13),
(22, 14),
(23, 1),
(23, 15),
(24, 1),
(24, 6),
(24, 9),
(25, 6),
(25, 9),
(25, 12),
(26, 1),
(26, 3),
(26, 5),
(27, 1),
(27, 2),
(27, 11),
(28, 1),
(28, 5),
(28, 11),
(29, 1),
(29, 2),
(29, 11),
(30, 16),
(31, 3),
(31, 6),
(31, 13),
(32, 1),
(32, 3),
(32, 6),
(33, 1),
(33, 2),
(34, 3),
(34, 12),
(34, 13),
(35, 1),
(35, 2),
(35, 17),
(36, 1),
(36, 2),
(36, 17),
(37, 3),
(37, 6),
(37, 13),
(38, 12),
(39, 6),
(39, 12),
(39, 13),
(40, 7),
(40, 12),
(41, 1),
(41, 9),
(41, 11),
(42, 1),
(42, 2),
(43, 3),
(43, 6),
(43, 9),
(44, 1),
(44, 2),
(44, 17),
(45, 1),
(45, 12),
(45, 13),
(46, 1),
(46, 8),
(46, 18),
(47, 2),
(47, 3),
(47, 12),
(48, 2),
(48, 12),
(49, 1),
(49, 17),
(50, 1),
(50, 2),
(50, 11);

-- --------------------------------------------------------

--
-- Table structure for table `generos_des`
--

CREATE TABLE `generos_des` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `generos_des`
--

INSERT INTO `generos_des` (`id`, `descripcion`) VALUES
(1, 'Drama'),
(2, 'Crimen'),
(3, 'Accion'),
(4, 'Biografia'),
(5, 'Historia'),
(6, 'Aventura'),
(7, 'Romance'),
(8, 'Fantasia'),
(9, 'Ciencia Ficcion'),
(10, 'Musica'),
(11, 'Thriller'),
(12, 'Comedia'),
(13, 'Animación'),
(14, 'Familia'),
(15, 'Guerra'),
(16, 'Documental'),
(17, 'Misterio'),
(18, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `listas_usuarios`
--

CREATE TABLE `listas_usuarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL,
  `estado` int(1) NOT NULL,
  `fecha_adicion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `listas_usuarios`
--

INSERT INTO `listas_usuarios` (`id`, `usuario_id`, `titulo_id`, `estado`, `fecha_adicion`) VALUES
(1, 2, 1, 2, '2021-06-03 16:52:10'),
(2, 2, 2, 1, '2021-06-03 18:37:10'),
(3, 2, 3, 1, '2021-06-03 19:52:21'),
(5, 2, 26, 2, '2021-06-03 20:17:56'),
(6, 2, 27, 2, '2021-06-04 19:46:31'),
(7, 2, 28, 2, '2021-06-04 20:05:23'),
(8, 2, 29, 1, '2021-06-04 20:05:25'),
(9, 2, 36, 2, '2021-06-04 20:05:31'),
(10, 2, 32, 2, '2021-06-04 20:05:34'),
(11, 2, 35, 2, '2021-06-04 20:05:35'),
(12, 2, 34, 3, '2021-06-04 20:05:37'),
(13, 2, 33, 1, '2021-06-04 20:05:39'),
(14, 2, 38, 3, '2021-06-04 20:05:41'),
(15, 2, 39, 3, '2021-06-04 20:05:43'),
(16, 2, 41, 2, '2021-06-04 20:05:46'),
(17, 2, 42, 2, '2021-06-04 20:05:47'),
(18, 2, 43, 1, '2021-06-04 20:05:50'),
(19, 2, 50, 3, '2021-06-04 20:05:52'),
(20, 2, 47, 2, '2021-06-04 20:05:56'),
(21, 2, 44, 2, '2021-06-04 20:05:58'),
(22, 2, 48, 3, '2021-06-04 20:06:04'),
(23, 2, 4, 2, '2021-06-04 20:06:26'),
(24, 2, 6, 1, '2021-06-04 20:06:28'),
(25, 2, 13, 2, '2021-06-04 20:06:29'),
(26, 2, 11, 2, '2021-06-04 20:06:31'),
(27, 2, 10, 2, '2021-06-04 20:06:32'),
(28, 2, 9, 1, '2021-06-04 20:06:40'),
(29, 2, 8, 1, '2021-06-04 20:06:42'),
(30, 2, 7, 2, '2021-06-04 20:06:43'),
(31, 2, 12, 2, '2021-06-04 20:06:45'),
(32, 2, 14, 2, '2021-06-04 20:06:46'),
(33, 2, 19, 2, '2021-06-04 20:06:53'),
(34, 2, 18, 2, '2021-06-04 20:06:54'),
(35, 2, 24, 2, '2021-06-04 20:06:55'),
(36, 2, 23, 1, '2021-06-04 20:06:58'),
(37, 2, 22, 1, '2021-06-04 20:06:59'),
(38, 2, 25, 2, '2021-06-04 20:07:04'),
(39, 2, 30, 1, '2021-06-04 20:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `nombres`
--

CREATE TABLE `nombres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_muerte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `nombres`
--

INSERT INTO `nombres` (`id`, `nombre`, `fecha_nacimiento`, `fecha_muerte`) VALUES
(1, 'Morgan Freeman', '1937-06-01', NULL),
(2, 'Tim Robbins', '1958-10-16', NULL),
(3, 'Bob Gunton', '1945-11-15', NULL),
(4, 'Frank Darabont', '1959-01-28', NULL),
(5, 'Stephen King', '1947-09-21', NULL),
(6, 'Marlon Brando', '1924-04-03', '2004-06-01'),
(7, 'Al Pacino', '1940-04-25', NULL),
(8, 'James Caan ', '1940-03-26', NULL),
(9, 'Francis Ford Coppola', '1939-04-07', NULL),
(10, 'Mario Puzo', '1920-10-15', '1999-06-02'),
(11, 'Robert De Niro', '1943-08-17', NULL),
(12, 'Robert Duvall', '1931-01-05', NULL),
(13, 'Christian Bale', '1974-01-30', NULL),
(14, 'Heath Ledger', '1979-04-04', '2008-01-22'),
(15, 'Aaron Eckhart', '1968-03-12', NULL),
(16, 'Christopher Nolan', '1970-07-30', NULL),
(17, 'Jonathan Nolan', '1976-06-06', NULL),
(18, 'David S. Goyer', '1965-12-22', NULL),
(19, 'Henry Fonda', '1905-05-16', '1982-08-12'),
(20, 'Lee J. Cobb', '1911-12-08', '1976-02-11'),
(21, 'Martin Balsam', '1919-11-04', '1996-02-13'),
(22, 'Sidney Lumet', '1924-06-25', '2011-04-09'),
(23, 'Reginald Rose', '1920-12-10', '2002-04-19'),
(24, 'Liam Neeson', '1952-06-07', NULL),
(25, 'Ralph Fiennes', '1962-12-22', NULL),
(26, 'Ben Kingsley', '1943-12-31', NULL),
(27, 'Steven Spielberg', '1946-12-18', NULL),
(28, 'Thomas Keneally', '1935-10-07', NULL),
(29, 'Steven Zaillian', '1953-01-30', NULL),
(30, 'Elijah Wood', '1981-01-28', NULL),
(31, 'Viggo Mortensen', '1958-10-20', NULL),
(32, 'Ian McKellen', '1939-05-25', NULL),
(33, 'Peter Jackson', '1961-10-31', NULL),
(34, 'J.R.R. Tolkien', '1892-01-03', '1973-09-02'),
(35, 'Fran Walsh', '1959-01-10', NULL),
(36, 'Philippa Boyens', '1962-01-01', NULL),
(37, 'John Travolta', '1954-02-18', NULL),
(38, 'Uma Thurman', '1970-04-29', NULL),
(39, 'Samuel L. Jackson', '1948-12-21', NULL),
(40, 'Quentin Tarantino', '1963-03-27', NULL),
(41, 'Roger Avary', '1965-08-23', NULL),
(42, 'Brad Pitt', '1963-12-18', NULL),
(43, 'Edward Norton', '1969-08-18', NULL),
(44, 'Meat Loaf', '1947-09-27', NULL),
(45, 'David Fincher', '1962-08-28', NULL),
(46, 'Chuck Palahniuk', '1962-02-21', NULL),
(47, 'Jim Uhls', '1957-03-25', NULL),
(48, 'Orlando Bloom', '1977-01-13', NULL),
(49, 'Tom Hanks', '1956-07-09', NULL),
(50, 'Robin Wright', '1966-04-08', NULL),
(51, 'Gary Sinise', '1955-03-17', NULL),
(52, 'Robert Zemeckis', '1951-05-14', NULL),
(53, 'Winston Groom', '1943-03-23', '2020-09-17'),
(54, 'Eric Roth', '1945-03-22', NULL),
(55, 'Mark Hamill', '1951-09-25', NULL),
(56, 'Harrison Ford', '1942-07-13', NULL),
(57, 'Carrie Fisher', '1956-10-21', '2016-12-27'),
(58, 'Irvin Kershner', '1923-04-29', '2010-11-27'),
(59, 'Leigh Brackett', '1915-12-07', '1978-03-17'),
(60, 'Lawrence Kasdan', '1949-01-14', NULL),
(61, 'George Lucas', '1944-05-14', NULL),
(62, 'Leonardo DiCaprio', '1974-11-11', NULL),
(63, 'Joseph Gordon-Levitt', '1981-02-17', NULL),
(64, 'Elliot Page', '1987-02-21', NULL),
(65, 'Jack Nicholson', '1937-04-22', NULL),
(66, 'Louise Fletcher', '1934-07-22', NULL),
(67, 'Michael Berryman', '1948-09-04', NULL),
(68, 'Milos Forman', '1932-02-18', '0000-00-00'),
(69, 'Lawrence Hauben', '1931-03-03', '1985-12-22'),
(70, 'Bo Goldman', '1932-09-10', NULL),
(71, 'Ken Kesey', '1935-09-17', '2001-11-10'),
(72, 'Ray Liotta', '1954-12-18', NULL),
(73, 'Joe Pesci', '1943-02-09', NULL),
(74, 'Martin Scorsese', '1942-11-17', NULL),
(75, 'Nicholas Pileggi', '1933-02-22', NULL),
(76, 'Keanu Reeves', '1964-09-02', NULL),
(77, 'Laurence Fishburne', '1961-06-30', NULL),
(78, 'Carrie-Anne Moss', '1967-08-21', NULL),
(79, 'Lana Wachowski', '1965-06-21', NULL),
(80, 'Lilly Wachowski', '1967-12-29', NULL),
(81, 'Miles Teller', '1987-02-20', NULL),
(82, 'J.K. Simmons', '1955-01-09', NULL),
(83, 'Melissa Benoist', '1988-10-04', NULL),
(84, 'Damien Chazelle', '1985-01-19', NULL),
(85, 'Jodie Foster', '1962-11-19', NULL),
(86, 'Anthony Hopkins', '1937-12-31', NULL),
(87, 'Lawrence A. Bonney', '0000-00-00', NULL),
(88, 'Jonathan Demme', '1944-02-22', '2017-04-26'),
(89, 'Thomas Harris', '1940-01-01', NULL),
(90, 'Ted Tally', '1952-04-09', NULL),
(91, 'Roberto Benigni', '1952-11-27', NULL),
(92, 'Nicoletta Braschi', '1960-04-19', NULL),
(93, 'Giorgio Cantarini', '1992-04-12', NULL),
(94, 'Vincenzo Cerami', '1940-11-02', '2013-06-17'),
(95, 'Daveigh Chase', '1990-06-24', NULL),
(96, 'Suzanne Pleshette', '1937-01-31', '2008-01-19'),
(97, 'Miyu Irino', '1988-02-19', NULL),
(98, 'Hayao Miyazaki', '1941-01-05', NULL),
(99, 'Matt Damon', '1970-10-08', NULL),
(100, 'Tom Sizemore', '1961-11-29', NULL),
(101, 'Robert Rodat', '1953-01-01', NULL),
(102, 'Matthew McConaughey', '1969-11-04', NULL),
(103, 'Anne Hathaway ', '1982-11-12', NULL),
(104, 'Jessica Chastain', '1977-03-24', NULL),
(105, 'Michael J. Fox', '1961-06-09', NULL),
(106, 'Christopher Lloyd', '1938-10-22', NULL),
(107, 'Lea Thompson', '1961-05-31', NULL),
(108, 'Bob Gale', '1951-05-25', NULL),
(109, 'Scott Grimes', '1971-07-09', NULL),
(110, 'Damian Lewis', '1971-02-11', NULL),
(111, 'Ron Livingston', '1967-06-05', NULL),
(112, 'Bryan Cranston', '1956-03-07', NULL),
(113, 'Aaron Paul', '1979-08-27', NULL),
(114, 'Anna Gunn', '1968-08-11', NULL),
(115, 'Jessie Buckley', '1989-12-28', NULL),
(116, 'Jared Harris', '1961-08-24', NULL),
(117, 'Stellan Skarsgård', '1951-06-13', NULL),
(118, 'Vince Gilligan', '1967-02-10', NULL),
(119, 'Craig Mazin', '1971-04-08', NULL),
(120, 'Dominic West', '1969-10-15', NULL),
(121, 'Lance Reddick', '1962-06-07', NULL),
(122, 'Sonja Sohn', '1969-05-09', NULL),
(123, 'David Simon', '1960-05-13', NULL),
(124, 'Neil deGrasse Tyson', '1958-10-05', NULL),
(125, 'Stoney Emshwiller', '1959-02-05', NULL),
(126, 'Piotr Michael', '1972-01-01', NULL),
(127, 'Ann Druyan', '1949-06-13', NULL),
(128, 'Dee Bradley Baker', '1962-08-31', NULL),
(129, 'Zach Tyler', '1993-09-23', NULL),
(130, 'Mae Whitman', '1988-06-09', NULL),
(131, 'Michael Dante DiMartino', '1974-07-18', NULL),
(132, 'Bryan Konietzko', '1976-05-26', NULL),
(133, 'David Benioff', '1970-09-25', NULL),
(134, 'D.B. Weiss', '1971-04-23', NULL),
(135, 'Emilia Clarke', '1986-10-23', NULL),
(136, 'Peter Dinklage', '1969-06-11', NULL),
(137, 'Kit Harington', '1986-12-26', NULL),
(138, 'David Chase', '1945-08-22', NULL),
(139, 'James Gandolfini', '1961-09-18', '2013-06-19'),
(140, 'Lorraine Bracco', '1954-10-02', NULL),
(141, 'Edie Falco', '1963-07-05', NULL),
(142, 'Dan Harmon', '1973-01-03', NULL),
(143, 'Justin Roiland', '1980-02-21', NULL),
(144, 'Chris Parnell', '1967-02-05', NULL),
(145, 'Spencer Grammer', '1983-10-09', NULL),
(146, 'Mark Gatiss', '1966-10-17', NULL),
(147, 'Steven Moffat', '1961-11-18', NULL),
(148, 'Benedict Cumberbatch', '1976-07-19', NULL),
(149, 'Martin Freeman', '1971-09-08', NULL),
(150, 'Una Stubbs', '1937-05-01', NULL),
(151, 'Nic Pizzolatto', '1975-10-18', NULL),
(152, 'Vince Vaughn', '1970-03-28', NULL),
(153, 'Colin Farrell', '1976-05-31', NULL),
(154, 'Rachel McAdams', '1978-11-17', NULL),
(155, 'Hajime Yatate', '0000-00-00', NULL),
(156, 'Kôichi Yamadera', '1961-06-17', NULL),
(157, 'Unshô Ishizuka', '1951-05-16', '2018-08-13'),
(158, 'Megumi Hayashibara', '1967-03-30', NULL),
(159, 'Ricky Gervais', '1961-06-25', NULL),
(160, 'Stephen Merchant', '1974-11-24', NULL),
(161, 'Steve Carell', '1962-08-16', NULL),
(162, 'Jenna Fischer', '1974-03-07', NULL),
(163, 'John Krasinski', '1979-10-20', NULL),
(164, 'Alex Hirsch', '1985-06-18', NULL),
(165, 'Jason Ritter', '1980-02-17', NULL),
(166, 'Kristen Schaal', '1978-01-24', NULL),
(167, 'David Crane', '1957-08-13', NULL),
(168, 'Marta Kauffman', '1956-09-21', NULL),
(169, 'Jennifer Aniston', '1969-02-11', NULL),
(170, 'Courteney Cox', '1964-06-15', NULL),
(171, 'Lisa Kudrow', '1963-07-30', NULL),
(172, 'Charlie Brooker', '1971-03-03', NULL),
(173, 'Daniel Lapaine', '1971-01-01', NULL),
(174, 'Hannah John-Kamen', '1989-09-07', NULL),
(175, 'Michaela Coel', '1987-10-01', NULL),
(176, 'Steven Knight', '1959-01-01', NULL),
(177, 'Cillian Murphy', '1976-05-25', NULL),
(178, 'Paul Anderson', '1978-02-12', NULL),
(179, 'Helen McCrory', '1968-08-17', '2021-04-16'),
(180, 'Jon Favreau', '1966-10-19', NULL),
(181, 'Pedro Pascal', '1975-04-02', NULL),
(182, 'Gina Carano', '1982-04-16', NULL),
(183, 'Giancarlo Esposito', '1958-04-26', NULL),
(184, 'Baran bo Odar', '1978-04-18', NULL),
(185, 'Jantje Friese', '1977-01-01', NULL),
(186, 'Louis Hofmann', '1997-06-03', NULL),
(187, 'Karoline Eichhorn', '1965-11-09', NULL),
(188, 'Lisa Vicari', '1997-02-11', NULL),
(189, 'Raphael Bob-Waksberg', '1984-08-17', NULL),
(190, 'Will Arnett', '1970-05-04', NULL),
(191, 'Amy Sedaris', '1961-03-29', NULL),
(192, 'Alison Brie', '1982-12-29', NULL),
(193, 'Matt Duffer', '1984-02-15', NULL),
(194, 'Ross Duffer', '1984-02-15', NULL),
(195, 'Millie Bobby Brown', '2004-02-19', NULL),
(196, 'Finn Wolfhard', '2002-12-23', NULL),
(197, 'Winona Ryder', '1971-10-29', NULL),
(198, 'Eric Kripke', '1974-04-24', NULL),
(199, 'Karl Urban', '1972-06-07', NULL),
(200, 'Jack Quaid', '1992-04-24', NULL),
(201, 'Antony Starr', '1975-10-25', NULL),
(202, 'Dan Goor', '1975-04-28', NULL),
(203, 'Michael Schur', '1975-10-29', NULL),
(204, 'Andy Samberg', '1978-08-18', NULL),
(205, 'Stephanie Beatriz', '1981-02-10', NULL),
(206, 'Terry Crews', '1968-07-30', NULL),
(207, 'David Shore', '1959-07-03', NULL),
(208, 'Hugh Laurie', '1959-06-11', NULL),
(209, 'Omar Epps', '1973-07-20', NULL),
(210, 'Robert Sean Leonard', '1969-02-28', NULL),
(211, 'Joe Penhall', '1967-01-01', NULL),
(212, 'Jonathan Groff', '1985-03-26', NULL),
(213, 'Holt McCallany', '1963-09-03', NULL),
(214, 'Anna Torv', '1979-06-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nombres_imagenes`
--

CREATE TABLE `nombres_imagenes` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `nombres_imagenes`
--

INSERT INTO `nombres_imagenes` (`id`, `imagen`, `nombre_id`) VALUES
(1, 'https://m.media-amazon.com/images/M/MV5BMTc0MDMyMzI2OF5BMl5BanBnXkFtZTcwMzM2OTk1MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 1),
(2, 'https://m.media-amazon.com/images/M/MV5BMTI1OTYxNzAxOF5BMl5BanBnXkFtZTYwNTE5ODI4._V1_UY317_CR16,0,214,317_AL_.jpg', 2),
(3, 'https://m.media-amazon.com/images/M/MV5BMjUyZDQ0NjktZmM5ZS00NzcxLTliMWYtNWUxNDcyMmExZjU0XkEyXkFqcGdeQXVyMTE1MjA4NzM@._V1_UY317_CR18,0,214,317_AL_.jpg', 3),
(4, 'https://m.media-amazon.com/images/M/MV5BNjk0MTkxNzQwOF5BMl5BanBnXkFtZTcwODM5OTMwNA@@._V1_UY317_CR20,0,214,317_AL_.jpg', 4),
(5, 'https://m.media-amazon.com/images/M/MV5BMjA2ODIxNDM4Nl5BMl5BanBnXkFtZTYwMjkzMzU1._V1_UX214_CR0,0,214,317_AL_.jpg', 5),
(6, 'https://m.media-amazon.com/images/M/MV5BMTg3MDYyMDE5OF5BMl5BanBnXkFtZTcwNjgyNTEzNA@@._V1_UY317_CR97,0,214,317_AL_.jpg', 6),
(7, 'https://m.media-amazon.com/images/M/MV5BMTQzMzg1ODAyNl5BMl5BanBnXkFtZTYwMjAxODQ1._V1_UX214_CR0,0,214,317_AL_.jpg', 7),
(8, 'https://m.media-amazon.com/images/M/MV5BMTI5NjkyNDQ3NV5BMl5BanBnXkFtZTcwNjY5NTQ0Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 8),
(9, 'https://m.media-amazon.com/images/M/MV5BMTM5NDU3OTgyNV5BMl5BanBnXkFtZTcwMzQxODA0NA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 9),
(10, 'https://m.media-amazon.com/images/M/MV5BMjE1NjkxMDE3NV5BMl5BanBnXkFtZTcwNjI0MDMyOA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 10),
(11, 'https://m.media-amazon.com/images/M/MV5BMjAwNDU3MzcyOV5BMl5BanBnXkFtZTcwMjc0MTIxMw@@._V1_UY317_CR13,0,214,317_AL_.jpg', 11),
(12, 'https://m.media-amazon.com/images/M/MV5BMjk1MjA2Mjc2MF5BMl5BanBnXkFtZTcwOTE4MTUwMg@@._V1_UY317_CR6,0,214,317_AL_.jpg', 12),
(13, 'https://m.media-amazon.com/images/M/MV5BMTkxMzk4MjQ4MF5BMl5BanBnXkFtZTcwMzExODQxOA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 13),
(14, 'https://m.media-amazon.com/images/M/MV5BMTI2NTY0NzA4MF5BMl5BanBnXkFtZTYwMjE1MDE0._V1_UX214_CR0,0,214,317_AL_.jpg', 14),
(15, 'https://m.media-amazon.com/images/M/MV5BMTc4MTAyNzMzNF5BMl5BanBnXkFtZTcwMzQ5MzQzMg@@._V1_UY317_CR6,0,214,317_AL_.jpg', 15),
(16, 'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_UY317_CR7,0,214,317_AL_.jpg', 16),
(17, 'https://m.media-amazon.com/images/M/MV5BMTEwNjY2MjgxMTZeQTJeQWpwZ15BbWU3MDY4NjY1Mjc@._V1_UY317_CR3,0,214,317_AL_.jpg', 17),
(18, 'https://m.media-amazon.com/images/M/MV5BMTIyNDI4MDcyOV5BMl5BanBnXkFtZTYwMjAxODQ3._V1_UX214_CR0,0,214,317_AL_.jpg', 18),
(19, 'https://m.media-amazon.com/images/M/MV5BOTEwNjQ2ODQ4Nl5BMl5BanBnXkFtZTYwMzEwMTM2._V1_UY317_CR20,0,214,317_AL_.jpg', 19),
(20, 'https://m.media-amazon.com/images/M/MV5BNDc3MTM0MDQyMF5BMl5BanBnXkFtZTYwMTczMTg2._V1_UX214_CR0,0,214,317_AL_.jpg', 20),
(21, 'https://m.media-amazon.com/images/M/MV5BMTQwOTE4MjMxM15BMl5BanBnXkFtZTcwMDc5MDg5Nw@@._V1_UY317_CR17,0,214,317_AL_.jpg', 21),
(22, 'https://m.media-amazon.com/images/M/MV5BMTY4Mzk5Mzk4Ml5BMl5BanBnXkFtZTYwMTE2NDg0._V1_UY317_CR2,0,214,317_AL_.jpg', 22),
(23, 'https://m.media-amazon.com/images/M/MV5BNGY1NWMxNzAtMDFlMi00OWI5LTg0ZDctZDE2OTQ0YjZjNTFjXkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_UY317_CR41,0,214,317_AL_.jpg', 23),
(24, 'https://m.media-amazon.com/images/M/MV5BMjA1MTQ3NzU1MV5BMl5BanBnXkFtZTgwMDE3Mjg0MzE@._V1_UY317_CR52,0,214,317_AL_.jpg', 24),
(25, 'https://m.media-amazon.com/images/M/MV5BMzc5MjE1NDgyN15BMl5BanBnXkFtZTcwNzg2ODgwNA@@._V1_UY317_CR14,0,214,317_AL_.jpg', 25),
(26, 'https://m.media-amazon.com/images/M/MV5BOTU2Njg2NzM4M15BMl5BanBnXkFtZTgwNjYwNjQwMTI@._V1_UY317_CR10,0,214,317_AL_.jpg', 26),
(27, 'https://m.media-amazon.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_UX214_CR0,0,214,317_AL_.jpg', 27),
(28, 'https://www.buscabiografias.com/img/people/Thomas_Keneally.jpg', 28),
(29, 'https://m.media-amazon.com/images/M/MV5BMjA2MDc1NzI3MV5BMl5BanBnXkFtZTcwODkyMDA1OA@@._V1_UY317_CR12,0,214,317_AL_.jpg', 29),
(30, 'https://m.media-amazon.com/images/M/MV5BMTM0NDIxMzQ5OF5BMl5BanBnXkFtZTcwNzAyNTA4Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 30),
(31, 'https://m.media-amazon.com/images/M/MV5BNDQzOTg4NzA2Nl5BMl5BanBnXkFtZTcwMzkwNjkxMg@@._V1_UX214_CR0,0,214,317_AL_.jpg', 31),
(32, 'https://m.media-amazon.com/images/M/MV5BMTQ2MjgyNjk3MV5BMl5BanBnXkFtZTcwNTA3NTY5Mg@@._V1_UY317_CR10,0,214,317_AL_.jpg', 32),
(33, 'https://m.media-amazon.com/images/M/MV5BMTY1MzQ3NjA2OV5BMl5BanBnXkFtZTcwNTExOTA5OA@@._V1_UY317_CR8,0,214,317_AL_.jpg', 33),
(34, 'https://m.media-amazon.com/images/M/MV5BMGMxMmRkNzctMWQzYy00MTY3LWEzMDAtMzEzMDhkZWI4MjZlXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY317_CR4,0,214,317_AL_.jpg', 34),
(35, 'https://m.media-amazon.com/images/M/MV5BNTg2MzE0ODAyNV5BMl5BanBnXkFtZTcwNjk4NDgxOA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 35),
(36, 'https://m.media-amazon.com/images/M/MV5BMTUwNTcwMjE3M15BMl5BanBnXkFtZTYwNDc4NTgz._V1_UX214_CR0,0,214,317_AL_.jpg', 36),
(37, 'https://m.media-amazon.com/images/M/MV5BMTMyMjZlYzgtZWRjMC00OTRmLTllZTktMmM1ODVmNjljMTQyXkEyXkFqcGdeQXVyMTExNzQ3MzAw._V1_UY317_CR21,0,214,317_AL_.jpg', 37),
(38, 'https://m.media-amazon.com/images/M/MV5BMjMxNzk1MTQyMl5BMl5BanBnXkFtZTgwMDIzMDEyMTE@._V1_UX214_CR0,0,214,317_AL_.jpg', 38),
(39, 'https://m.media-amazon.com/images/M/MV5BMTQ1NTQwMTYxNl5BMl5BanBnXkFtZTYwMjA1MzY1._V1_UX214_CR0,0,214,317_AL_.jpg', 39),
(40, 'https://m.media-amazon.com/images/M/MV5BMTgyMjI3ODA3Nl5BMl5BanBnXkFtZTcwNzY2MDYxOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 40),
(41, 'https://m.media-amazon.com/images/M/MV5BZGM3ZTk0OWEtYTNhMC00ODZlLWI0ZmItNjY5YTM4NmQxZGYxXkEyXkFqcGdeQXVyMTk0OTQyOQ@@._V1_UY317_CR175,0,214,317_AL_.jpg', 41),
(42, 'https://m.media-amazon.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 42),
(43, 'https://m.media-amazon.com/images/M/MV5BMTYwNjQ5MTI1NF5BMl5BanBnXkFtZTcwMzU5MTI2Mw@@._V1_UY317_CR16,0,214,317_AL_.jpg', 43),
(44, 'https://m.media-amazon.com/images/M/MV5BMTIzNTQ4MjYyOV5BMl5BanBnXkFtZTcwNzgwNTEzMg@@._V1_UY317_CR6,0,214,317_AL_.jpg', 44),
(45, 'https://m.media-amazon.com/images/M/MV5BMTc1NDkwMTQ2MF5BMl5BanBnXkFtZTcwMzY0ODkyMg@@._V1_UX214_CR0,0,214,317_AL_.jpg', 45),
(46, 'https://m.media-amazon.com/images/M/MV5BMTQ4MjMyMjE3NV5BMl5BanBnXkFtZTcwODUxMzc1MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 46),
(47, 'https://m.media-amazon.com/images/M/MV5BYzZiNDk4MTUtYWY3Mi00NWQ3LTk0OGMtMDc1MWUyNGVkZDc1XkEyXkFqcGdeQXVyMjM1NzQxNzg@._V1_UY317_CR104,0,214,317_AL_.jpg', 47),
(48, 'https://m.media-amazon.com/images/M/MV5BMjE1MDkxMjQ3NV5BMl5BanBnXkFtZTcwMzQ3Mjc4MQ@@._V1_UY317_CR8,0,214,317_AL_.jpg', 48),
(49, 'https://m.media-amazon.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_UY317_CR2,0,214,317_AL_.jpg', 49),
(50, 'https://m.media-amazon.com/images/M/MV5BMTU0NTc4MzEyOV5BMl5BanBnXkFtZTcwODY0ODkzMQ@@._V1_UY317_CR4,0,214,317_AL_.jpg', 50),
(51, 'https://m.media-amazon.com/images/M/MV5BMzE4NzcyMzU3OV5BMl5BanBnXkFtZTYwOTM2NDE2._V1_UY317_CR6,0,214,317_AL_.jpg', 51),
(52, 'https://m.media-amazon.com/images/M/MV5BMTgyMTMzMDUyNl5BMl5BanBnXkFtZTcwODA0ODMyMw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 52),
(53, 'https://m.media-amazon.com/images/M/MV5BY2FjNGM3NzQtZWEwOC00ODBiLTkwMzQtYjkwOTUyYzE0MzkzL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_UY317_CR12,0,214,317_AL_.jpg', 53),
(54, 'https://m.media-amazon.com/images/M/MV5BMjIzNDc0MzA1MF5BMl5BanBnXkFtZTgwODM4NDc3MTE@._V1_UY317_CR131,0,214,317_AL_.jpg', 54),
(55, 'https://m.media-amazon.com/images/M/MV5BOGY2MjI5MDQtOThmMC00ZGIwLWFmYjgtYWU4MzcxOGEwMGVkXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY317_CR175,0,214,317_AL_.jpg', 55),
(56, 'https://m.media-amazon.com/images/M/MV5BMTY4Mjg0NjIxOV5BMl5BanBnXkFtZTcwMTM2NTI3MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 56),
(57, 'https://m.media-amazon.com/images/M/MV5BMjM4ODU5MDY4MV5BMl5BanBnXkFtZTgwODY1MjQ5MDI@._V1_UX214_CR0,0,214,317_AL_.jpg', 57),
(58, 'https://m.media-amazon.com/images/M/MV5BMTQyNjk0NTcwMl5BMl5BanBnXkFtZTcwNzAyNDQxNA@@._V1_UY317_CR13,0,214,317_AL_.jpg', 58),
(59, 'https://m.media-amazon.com/images/M/MV5BMTU3NGE5MmQtMjdkMC00ODlkLTk5MjUtYTNkMzk3MDIwYmI4XkEyXkFqcGdeQXVyMTcyODY2NDQ@._V1_UY317_CR5,0,214,317_AL_.jpg', 59),
(60, 'https://m.media-amazon.com/images/M/MV5BMjM3MTQ1NDg2OF5BMl5BanBnXkFtZTYwNjc0NDEz._V1_UY317_CR5,0,214,317_AL_.jpg', 60),
(61, 'https://m.media-amazon.com/images/M/MV5BMTA0Mjc0NzExNzBeQTJeQWpwZ15BbWU3MDEzMzQ3MDI@._V1_UY317_CR0,0,214,317_AL_.jpg', 61),
(62, 'https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg', 62),
(63, 'https://m.media-amazon.com/images/M/MV5BMTY3NTk0NDI3Ml5BMl5BanBnXkFtZTgwNDA3NjY0MjE@._V1_UY317_CR3,0,214,317_AL_.jpg', 63),
(64, 'https://m.media-amazon.com/images/M/MV5BYWY0NzFmYjAtYzMwNC00ODc3LWI2ZWEtOTU3YTM0Y2ZiNTM5XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UY317_CR11,0,214,317_AL_.jpg', 64),
(65, 'https://m.media-amazon.com/images/M/MV5BMTQ3OTY0ODk0M15BMl5BanBnXkFtZTYwNzE4Njc4._V1_UY317_CR7,0,214,317_AL_.jpg', 65),
(66, 'https://m.media-amazon.com/images/M/MV5BMTIzOTcwNzYzMl5BMl5BanBnXkFtZTYwMjQ3MTI0._V1_UY317_CR7,0,214,317_AL_.jpg', 66),
(67, 'https://m.media-amazon.com/images/M/MV5BMTc0OTA0MTAwM15BMl5BanBnXkFtZTcwOTQ3MDQ4NA@@._V1_UY317_CR175,0,214,317_AL_.jpg', 67),
(68, 'https://m.media-amazon.com/images/M/MV5BNDY5NDAyODM2Nl5BMl5BanBnXkFtZTcwMzgzNzg3OA@@._V1_UY317_CR13,0,214,317_AL_.jpg', 68),
(69, 'https://images.mubicdn.net/images/cast_member/4922/cache-209000-1489644318/image-w856.jpg?size=300x', 69),
(70, 'https://m.media-amazon.com/images/M/MV5BNjQxMjUzMTAxMF5BMl5BanBnXkFtZTcwMjYyMDgyMQ@@._V1_UY317_CR45,0,214,317_AL_.jpg', 70),
(71, 'https://m.media-amazon.com/images/M/MV5BMTk5ODM0NjM1N15BMl5BanBnXkFtZTcwMTE2NzMyNQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 71),
(72, 'https://m.media-amazon.com/images/M/MV5BMTU3NzM5MjUwMF5BMl5BanBnXkFtZTYwNDM2NDky._V1_UY317_CR0,0,214,317_AL_.jpg', 72),
(73, 'https://m.media-amazon.com/images/M/MV5BMzc3MTcxNDYxNV5BMl5BanBnXkFtZTcwOTI3NjE1Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 73),
(74, 'https://m.media-amazon.com/images/M/MV5BMTcyNDA4Nzk3N15BMl5BanBnXkFtZTcwNDYzMjMxMw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 74),
(75, 'https://m.media-amazon.com/images/M/MV5BOTM5OWZkNGQtNzY1Ni00YWUzLWFhZTEtM2JlZDI5NTNiOTVjXkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_UY317_CR174,0,214,317_AL_.jpg', 75),
(76, 'https://m.media-amazon.com/images/M/MV5BYTkzODI4MDMtNDNmZC00NDZlLWFmNTktNDRhOWE2YzhlZTQ2XkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_UY317_CR19,0,214,317_AL_.jpg', 76),
(77, 'https://m.media-amazon.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1_UX214_CR0,0,214,317_AL_.jpg', 77),
(78, 'https://m.media-amazon.com/images/M/MV5BMTYxMjgwNzEwOF5BMl5BanBnXkFtZTcwNTQ0NzI5Ng@@._V1_UY317_CR12,0,214,317_AL_.jpg', 78),
(79, 'https://m.media-amazon.com/images/M/MV5BMjEzMTc2MDQ5OV5BMl5BanBnXkFtZTcwNjkzNDY0OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 79),
(80, 'https://m.media-amazon.com/images/M/MV5BMTU1Mjc1MjkzNV5BMl5BanBnXkFtZTgwOTc1NDQ1ODE@._V1_UX214_CR0,0,214,317_AL_.jpg', 80),
(81, 'https://m.media-amazon.com/images/M/MV5BMTY2MzM2NzAxNF5BMl5BanBnXkFtZTgwMDIyMzg1NDE@._V1_UX214_CR0,0,214,317_AL_.jpg', 81),
(82, 'https://m.media-amazon.com/images/M/MV5BMzg2NTI5NzQ1MV5BMl5BanBnXkFtZTgwNjI1NDEwMDI@._V1_UY317_CR23,0,214,317_AL_.jpg', 82),
(83, 'https://m.media-amazon.com/images/M/MV5BNWU3MzE1YzgtNzY4ZC00YWJmLTk1Y2MtYTMzYzIxODM3YzQyXkEyXkFqcGdeQXVyNjk1MjYyNTA@._V1_UX214_CR0,0,214,317_AL_.jpg', 83),
(84, 'https://m.media-amazon.com/images/M/MV5BMjE2MzcyODA3MV5BMl5BanBnXkFtZTgwNTA3NTU2MjE@._V1_UY317_CR5,0,214,317_AL_.jpg', 84),
(85, 'https://m.media-amazon.com/images/M/MV5BMTM3MjgyOTQwNF5BMl5BanBnXkFtZTcwMDczMzEwNA@@._V1_UY317_CR1,0,214,317_AL_.jpg', 85),
(86, 'https://m.media-amazon.com/images/M/MV5BMTg5ODk1NTc5Ml5BMl5BanBnXkFtZTYwMjAwOTI4._V1_UY317_CR6,0,214,317_AL_.jpg', 86),
(87, 'https://www.lowpro.net/phpdvdprofiler/headshots/cast/Lawrence%20A.%20Bonney.jpg', 87),
(88, 'https://m.media-amazon.com/images/M/MV5BMTY1NzY0OTQ0OF5BMl5BanBnXkFtZTcwNDY1Njk5Mg@@._V1_UY317_CR3,0,214,317_AL_.jpg', 88),
(89, 'https://m.media-amazon.com/images/M/MV5BNDYwZTY3YWYtOTdmNi00Njc1LWEyOTUtNzFjZTBhMjU2YmUwXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_UY317_CR135,0,214,317_AL_.jpg', 89),
(90, 'https://www.goldenglobes.com/sites/default/files/styles/portrait_medium/public/people/cover_images/ted_tally-gt.jpg?format=pjpg&auto=webp&optimize=high', 90),
(91, 'https://m.media-amazon.com/images/M/MV5BMTUwMzI1Nzg5NF5BMl5BanBnXkFtZTYwODU5NjYz._V1_UY317_CR13,0,214,317_AL_.jpg', 91),
(92, 'https://m.media-amazon.com/images/M/MV5BMTcyMjUxNzMzOF5BMl5BanBnXkFtZTYwMzM1NDM3._V1_UY317_CR104,0,214,317_AL_.jpg', 92),
(93, 'https://m.media-amazon.com/images/M/MV5BYjdhNTFiYTYtOGE4Ni00NTVjLTlhMGYtYThhNzAxZjUxMmM5XkEyXkFqcGdeQXVyNDM4Nzc5NzY@._V1_UY317_CR20,0,214,317_AL_.jpg', 93),
(94, 'https://m.media-amazon.com/images/M/MV5BMjIyMDA3NDE1Ml5BMl5BanBnXkFtZTcwNDU0NDg4OQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 94),
(95, 'https://m.media-amazon.com/images/M/MV5BMTcyMDAyMjA4NF5BMl5BanBnXkFtZTcwNjg1ODkzMg@@._V1_UY317_CR15,0,214,317_AL_.jpg', 95),
(96, 'https://m.media-amazon.com/images/M/MV5BMTU0NzkwMjA3N15BMl5BanBnXkFtZTYwNDkwNTgy._V1_UY317_CR25,0,214,317_AL_.jpg', 96),
(97, 'https://m.media-amazon.com/images/M/MV5BZjA4M2Q5NDItN2FjNi00NTg3LWE3MTEtOWM0NDJmODk1YjQwXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_UY317_CR16,0,214,317_AL_.jpg', 97),
(98, 'https://m.media-amazon.com/images/M/MV5BMjcyNjk2OTkwNF5BMl5BanBnXkFtZTcwOTk0MTQ3Mg@@._V1_UY317_CR18,0,214,317_AL_.jpg', 98),
(99, 'https://m.media-amazon.com/images/M/MV5BMTM0NzYzNDgxMl5BMl5BanBnXkFtZTcwMDg2MTMyMw@@._V1_UY317_CR11,0,214,317_AL_.jpg', 99),
(100, 'https://m.media-amazon.com/images/M/MV5BMTUyMzQ3NDg5N15BMl5BanBnXkFtZTYwMzc0Mjk2._V1_UY317_CR13,0,214,317_AL_.jpg', 100),
(101, 'https://es.web.img3.acsta.net/c_310_420/medias/nmedia/18/94/47/73/20332058.jpg', 101),
(102, 'https://m.media-amazon.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 102),
(103, 'https://m.media-amazon.com/images/M/MV5BMTRhNzQ3NGMtZmQ1Mi00ZTViLTk3OTgtOTk0YzE2YTgwMmFjXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_UY317_CR20,0,214,317_AL_.jpg', 103),
(104, 'https://m.media-amazon.com/images/M/MV5BMTU1MDM5NjczOF5BMl5BanBnXkFtZTcwOTY2MDE4OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 104),
(105, 'https://m.media-amazon.com/images/M/MV5BMTcwNzM0MjE4NF5BMl5BanBnXkFtZTcwMDkxMzEwMw@@._V1_UY317_CR1,0,214,317_AL_.jpg', 105),
(106, 'https://m.media-amazon.com/images/M/MV5BMjY0NjQ1Mjc5NF5BMl5BanBnXkFtZTYwOTUzMDc2._V1_UY317_CR3,0,214,317_AL_.jpg', 106),
(107, 'https://m.media-amazon.com/images/M/MV5BZjgzNmViYTktMjhjNy00NDc1LWI2MjMtNGUxYmFlZTNhODViXkEyXkFqcGdeQXVyMjA3MjIzMDA@._V1_UX214_CR0,0,214,317_AL_.jpg', 107),
(108, 'https://m.media-amazon.com/images/M/MV5BMTU1OTAxNzAwNl5BMl5BanBnXkFtZTcwMjk5NTQzMQ@@._V1_UY317_CR12,0,214,317_AL_.jpg', 108),
(109, 'https://m.media-amazon.com/images/M/MV5BMTg2NTg0NTI0Ml5BMl5BanBnXkFtZTYwNzM4Njc4._V1_UY317_CR22,0,214,317_AL_.jpg', 109),
(110, 'https://m.media-amazon.com/images/M/MV5BMTM2OTcyMDgxMl5BMl5BanBnXkFtZTcwNDU3NTU5OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 110),
(111, 'https://m.media-amazon.com/images/M/MV5BMjIxODk2NDUzOF5BMl5BanBnXkFtZTgwNTI2ODg1NDE@._V1_UX214_CR0,0,214,317_AL_.jpg', 111),
(112, 'https://m.media-amazon.com/images/M/MV5BMTA2NjEyMTY4MTVeQTJeQWpwZ15BbWU3MDQ5NDAzNDc@._V1_UX214_CR0,0,214,317_AL_.jpg', 112),
(113, 'https://m.media-amazon.com/images/M/MV5BMTY1OTY5NjI5NV5BMl5BanBnXkFtZTcwODA4MjM0OA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 113),
(114, 'https://m.media-amazon.com/images/M/MV5BMTU0NTk3MDQ3OV5BMl5BanBnXkFtZTcwNDY3NzQ4Mg@@._V1_UY317_CR4,0,214,317_AL_.jpg', 114),
(115, 'https://m.media-amazon.com/images/M/MV5BMTY5MzkxMjA4MV5BMl5BanBnXkFtZTgwMjI0NTg3NzM@._V1_UX214_CR0,0,214,317_AL_.jpg', 115),
(116, 'https://m.media-amazon.com/images/M/MV5BMjE5NDQ3MDYwM15BMl5BanBnXkFtZTcwNTE5MjQ1Nw@@._V1_UY317_CR10,0,214,317_AL_.jpg', 116),
(117, 'https://m.media-amazon.com/images/M/MV5BMzljNGIzYjgtMTQ0MS00OWU1LTk1NWEtOWQ3ZDhmNzQ2ZDAxXkEyXkFqcGdeQXVyMDAzMDk4OQ@@._V1_UY317_CR88,0,214,317_AL_.jpg', 117),
(118, 'https://m.media-amazon.com/images/M/MV5BNTUyNzUxOTAxMV5BMl5BanBnXkFtZTcwNzk0MDM0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 118),
(119, 'https://m.media-amazon.com/images/M/MV5BMjlhNTg1ZTctOWFmMC00NjQ0LWFmMTktODQ4NmYyZDhjNzQzXkEyXkFqcGdeQXVyMTMzMzk2OTU@._V1_UX214_CR0,0,214,317_AL_.jpg', 119),
(120, 'https://m.media-amazon.com/images/M/MV5BMjM1MDU1Mzg3N15BMl5BanBnXkFtZTgwNTcwNzcyMzI@._V1_UY317_CR147,0,214,317_AL_.jpg', 120),
(121, 'https://m.media-amazon.com/images/M/MV5BMTY0MDkyMjk5OV5BMl5BanBnXkFtZTcwNDUxMzc0Mw@@._V1_UY317_CR9,0,214,317_AL_.jpg', 121),
(122, 'https://m.media-amazon.com/images/M/MV5BMzE5MDM1MDY2OF5BMl5BanBnXkFtZTcwOTIzNDcwMg@@._V1_UX214_CR0,0,214,317_AL_.jpg', 122),
(123, 'https://m.media-amazon.com/images/M/MV5BMzc5MTc5MzEyMF5BMl5BanBnXkFtZTcwNzE4ODA4MQ@@._V1_UY317_CR24,0,214,317_AL_.jpg', 123),
(124, 'https://m.media-amazon.com/images/M/MV5BMTYzMzE4NTM4M15BMl5BanBnXkFtZTcwODgzMjE1OQ@@._V1_UY317_CR133,0,214,317_AL_.jpg', 124),
(125, 'https://m.media-amazon.com/images/M/MV5BMTQ0MTMyOTQxM15BMl5BanBnXkFtZTcwOTgyODcyMQ@@._V1_UY317_CR20,0,214,317_AL_.jpg', 125),
(126, 'https://m.media-amazon.com/images/M/MV5BMTg0ODExNDEwMl5BMl5BanBnXkFtZTcwMDAxMTIxOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 126),
(127, 'https://m.media-amazon.com/images/M/MV5BMTQxNzAxNDY2MF5BMl5BanBnXkFtZTgwMDEwMDUwMjE@._V1_UY317_CR7,0,214,317_AL_.jpg', 127),
(128, 'https://m.media-amazon.com/images/M/MV5BMTk4MzkzMzk0MF5BMl5BanBnXkFtZTcwNDIwMjM4NA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 128),
(129, 'https://m.media-amazon.com/images/M/MV5BMTI4NTU5NzczNF5BMl5BanBnXkFtZTYwNTY4NTY2._V1_UY317_CR2,0,214,317_AL_.jpg', 129),
(130, 'https://m.media-amazon.com/images/M/MV5BMTk2NjQxMTU0N15BMl5BanBnXkFyZXN1bWU@._V1_UY317_CR131,0,214,317_AL_.jpg', 130),
(131, 'https://static.wikia.nocookie.net/avatar/images/d/d4/Michael_Dante_DiMartino.png/revision/latest?cb=20141107014857&path-prefix=es', 131),
(132, 'https://m.media-amazon.com/images/M/MV5BMWIwMjg1YTctMWRlMi00NTk2LTlhMTUtZDQ3MTdjOGU1MmY1XkEyXkFqcGdeQXVyMzI2MDEwNA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 132),
(133, 'https://m.media-amazon.com/images/M/MV5BMTAzNjQzMTEzMzJeQTJeQWpwZ15BbWU3MDkxNjA4NDc@._V1_UY317_CR0,0,214,317_AL_.jpg', 133),
(134, 'https://m.media-amazon.com/images/M/MV5BMTgxMjQzMTYxMF5BMl5BanBnXkFtZTcwOTA2MDg0Nw@@._V1_UY317_CR4,0,214,317_AL_.jpg', 134),
(135, 'https://m.media-amazon.com/images/M/MV5BNjg3OTg4MDczMl5BMl5BanBnXkFtZTgwODc0NzUwNjE@._V1_UX214_CR0,0,214,317_AL_.jpg', 135),
(136, 'https://m.media-amazon.com/images/M/MV5BMTM1MTI5Mzc0MF5BMl5BanBnXkFtZTYwNzgzOTQz._V1_UY317_CR20,0,214,317_AL_.jpg', 136),
(137, 'https://m.media-amazon.com/images/M/MV5BMTA2NTI0NjYxMTBeQTJeQWpwZ15BbWU3MDIxMjgyNzY@._V1_UX214_CR0,0,214,317_AL_.jpg', 137),
(138, 'https://m.media-amazon.com/images/M/MV5BMTk4MjUxODIzNV5BMl5BanBnXkFtZTYwNjY1ODQ1._V1_UY317_CR5,0,214,317_AL_.jpg', 138),
(139, 'https://m.media-amazon.com/images/M/MV5BMTkwMDY4NDMzN15BMl5BanBnXkFtZTcwNDkzNDE5NQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 139),
(140, 'https://m.media-amazon.com/images/M/MV5BMzU0NTc3OTExOF5BMl5BanBnXkFtZTcwMjM0MjcxNQ@@._V1_UY317_CR15,0,214,317_AL_.jpg', 140),
(141, 'https://m.media-amazon.com/images/M/MV5BMTM4NDAzOTk4MF5BMl5BanBnXkFtZTcwNzQ0MzQxMw@@._V1_UY317_CR7,0,214,317_AL_.jpg', 141),
(142, 'https://m.media-amazon.com/images/M/MV5BMjEzMDY2NzI3MF5BMl5BanBnXkFtZTcwODY5MjI3NA@@._V1_UY317_CR2,0,214,317_AL_.jpg', 142),
(143, 'https://m.media-amazon.com/images/M/MV5BOTYxMTE5MjY2Nl5BMl5BanBnXkFtZTgwMTM3Mzg3MDI@._V1_UY317_CR131,0,214,317_AL_.jpg', 143),
(144, 'https://m.media-amazon.com/images/M/MV5BMTM0NDYzMzU0NF5BMl5BanBnXkFtZTcwOTA3Mjc5Nw@@._V1_UY317_CR12,0,214,317_AL_.jpg', 144),
(145, 'https://m.media-amazon.com/images/M/MV5BMTkxNjE0NzAxMF5BMl5BanBnXkFtZTcwNjQyMjQ4Mg@@._V1_UY317_CR3,0,214,317_AL_.jpg', 145),
(146, 'https://m.media-amazon.com/images/M/MV5BMTYzNDIwNzg4NF5BMl5BanBnXkFtZTcwNTI0MTk4OQ@@._V1_UY317_CR14,0,214,317_AL_.jpg', 146),
(147, 'https://m.media-amazon.com/images/M/MV5BMTU5Mjk4NTIyM15BMl5BanBnXkFtZTcwMDA5MjIzNw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 147),
(148, 'https://m.media-amazon.com/images/M/MV5BMjE0MDkzMDQwOF5BMl5BanBnXkFtZTgwOTE1Mjg1MzE@._V1_UY317_CR2,0,214,317_AL_.jpg', 148),
(149, 'https://m.media-amazon.com/images/M/MV5BMjE0MjAwOTMzMF5BMl5BanBnXkFtZTcwMDg1MjEyNw@@._V1_UY317_CR1,0,214,317_AL_.jpg', 149),
(150, 'https://m.media-amazon.com/images/M/MV5BMTgwNzE2OTQ3M15BMl5BanBnXkFtZTcwNTc0NTcxOA@@._V1_UX214_CR0,0,214,317_AL_.jpg', 150),
(151, 'https://m.media-amazon.com/images/M/MV5BOTM2MDkxNzYzMl5BMl5BanBnXkFtZTgwMzg2MDY0NDE@._V1_UY317_CR0,0,214,317_AL_.jpg', 151),
(152, 'https://m.media-amazon.com/images/M/MV5BMTQ1MDA0MzE0MF5BMl5BanBnXkFtZTYwOTUzOTI4._V1_UY317_CR7,0,214,317_AL_.jpg', 152),
(153, 'https://m.media-amazon.com/images/M/MV5BMTg4NzM5NDk0MV5BMl5BanBnXkFtZTcwNzAzMTUxNw@@._V1_UY317_CR3,0,214,317_AL_.jpg', 153),
(154, 'https://m.media-amazon.com/images/M/MV5BMTY5ODcxMDU4NV5BMl5BanBnXkFtZTcwMjAzNjQyNQ@@._V1_UY317_CR2,0,214,317_AL_.jpg', 154),
(155, 'https://images.mubicdn.net/images/cast_member/49926/cache-436511-1557970836/image-w856.jpg?size=300x', 155),
(156, 'https://m.media-amazon.com/images/M/MV5BMzA5NWI0OWItNmE4Yi00MTNlLTk2MzUtOGY4NTNjNjFmNWVlXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY317_CR29,0,214,317_AL_.jpg', 156),
(157, 'https://m.media-amazon.com/images/M/MV5BY2E0OTM0MTktZmQ2OC00ZjE0LWE3YzYtZmYxMzI4NDFhMTZmXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_UY317_CR5,0,214,317_AL_.jpg', 157),
(158, 'https://m.media-amazon.com/images/M/MV5BNGFlZWIzMTQtZDkxMS00YTM0LTg4Y2QtMTgxN2MyMzUzMGUzXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY317_CR8,0,214,317_AL_.jpg', 158),
(159, 'https://m.media-amazon.com/images/M/MV5BMjQzOTEzMTk1M15BMl5BanBnXkFtZTgwODI1Mzc0MDI@._V1_UX214_CR0,0,214,317_AL_.jpg', 159),
(160, 'https://m.media-amazon.com/images/M/MV5BMTkyNzIwNjcxNV5BMl5BanBnXkFtZTcwOTQzMDQ1NA@@._V1_UY317_CR17,0,214,317_AL_.jpg', 160),
(161, 'https://m.media-amazon.com/images/M/MV5BMjMyOTM2OTk1Ml5BMl5BanBnXkFtZTgwMTI3MzkyNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', 161),
(162, 'https://m.media-amazon.com/images/M/MV5BMTMyOTYzODQ5MF5BMl5BanBnXkFtZTcwMjE3MDgzMQ@@._V1_UY317_CR20,0,214,317_AL_.jpg', 162),
(163, 'https://m.media-amazon.com/images/M/MV5BMTc3MzY3MjQ3OV5BMl5BanBnXkFtZTcwODI3NjQxMw@@._V1_UY317_CR6,0,214,317_AL_.jpg', 163),
(164, 'https://m.media-amazon.com/images/M/MV5BNTgyNjhlMmQtNGZjMi00MjE1LTg5MDEtOTRkOTU0NzY1MWEyXkEyXkFqcGdeQXVyOTYwMjczODY@._V1_UY317_CR9,0,214,317_AL_.jpg', 164),
(165, 'https://m.media-amazon.com/images/M/MV5BMTMzODA1NzMyOF5BMl5BanBnXkFtZTcwMTI5MDEyNg@@._V1_UY317_CR6,0,214,317_AL_.jpg', 165),
(166, 'https://m.media-amazon.com/images/M/MV5BMTIxNzAzNzUwM15BMl5BanBnXkFyZXN1bWU@._V1_UX214_CR0,0,214,317_AL_.jpg', 166),
(167, 'https://m.media-amazon.com/images/M/MV5BNDAxODQxMTM0OF5BMl5BanBnXkFtZTcwODg2MDg5Nw@@._V1_UY317_CR5,0,214,317_AL_.jpg', 167),
(168, 'https://m.media-amazon.com/images/M/MV5BMTYxODQ2NjUyMF5BMl5BanBnXkFtZTcwNzA2NTExNg@@._V1_UX214_CR0,0,214,317_AL_.jpg', 168),
(169, 'https://m.media-amazon.com/images/M/MV5BNjk1MjIxNjUxNF5BMl5BanBnXkFtZTcwODk2NzM4Mg@@._V1_UY317_CR3,0,214,317_AL_.jpg', 169),
(170, 'https://m.media-amazon.com/images/M/MV5BMTA4OTczNDExNDNeQTJeQWpwZ15BbWU3MDUyNTIzMTM@._V1_UY317_CR7,0,214,317_AL_.jpg', 170),
(171, 'https://m.media-amazon.com/images/M/MV5BMTU5OTA0ODcxNl5BMl5BanBnXkFtZTcwMjE3NjQxMw@@._V1_UY317_CR8,0,214,317_AL_.jpg', 171),
(172, 'https://m.media-amazon.com/images/M/MV5BMzc1ODgyMTMyMV5BMl5BanBnXkFtZTcwNjY1NjcxNw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 172),
(173, 'https://m.media-amazon.com/images/M/MV5BODcwNjkwNjE3NF5BMl5BanBnXkFtZTgwNjUyODgyNzE@._V1_UY317_CR20,0,214,317_AL_.jpg', 173),
(174, 'https://m.media-amazon.com/images/M/MV5BZGMwMmNmNWItZWI4Mi00OWY5LThjZmUtMjg2NDcxZDljYjYyXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 174),
(175, 'https://m.media-amazon.com/images/M/MV5BMmI4YzMzZjYtNDRhNS00OWY0LWE2OTMtMDQ5YTQyYTM0ZWQ2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg', 175),
(176, 'https://m.media-amazon.com/images/M/MV5BMjE4ODQwODcxN15BMl5BanBnXkFtZTgwNjU0MzcxMDE@._V1_UX214_CR0,0,214,317_AL_.jpg', 176),
(177, 'https://m.media-amazon.com/images/M/MV5BMTUzMjg1NzIyOV5BMl5BanBnXkFtZTYwMzg2Mjgy._V1_UX214_CR0,0,214,317_AL_.jpg', 177),
(178, 'https://m.media-amazon.com/images/M/MV5BNzQ5ZTk5MGUtYjRmYi00NTIzLWFlYjMtZjk5MGFlNTg5ODViXkEyXkFqcGdeQXVyMzIzNjk4NzM@._V1_UX214_CR0,0,214,317_AL_.jpg', 178),
(179, 'https://m.media-amazon.com/images/M/MV5BMTQ2MDM2OTU0MV5BMl5BanBnXkFtZTgwMDk2MTIzNTE@._V1_UY317_CR129,0,214,317_AL_.jpg', 179),
(180, 'https://m.media-amazon.com/images/M/MV5BNjcwNzg4MjktNDNlMC00M2U1LWJmMjgtZTVkMmI4MDI2MTVmXkEyXkFqcGdeQXVyMjI4MDI0NTM@._V1_UY317_CR12,0,214,317_AL_.jpg', 180),
(181, 'https://m.media-amazon.com/images/M/MV5BYzQ5Yzg1NzktMDcxNC00ZDc1LWJlMjEtNTg2ZjRlOTk4ZDNjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UY317_CR5,0,214,317_AL_.jpg', 181),
(182, 'https://m.media-amazon.com/images/M/MV5BODBlMWE0NjctY2EwNC00ZTljLTk4NzQtODM4NDNkZjk2ZGRlXkEyXkFqcGdeQXVyMTk0NDU0OTc@._V1_UY317_CR34,0,214,317_AL_.jpg', 182),
(183, 'https://m.media-amazon.com/images/M/MV5BMjEyODM1NjI0OF5BMl5BanBnXkFtZTcwMTE0OTA1Mg@@._V1_UY317_CR4,0,214,317_AL_.jpg', 183),
(184, 'https://m.media-amazon.com/images/M/MV5BMzRlYTMzM2UtZjUxMy00NjY0LWJmNWEtZDU2N2NlOTQyODVkXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR22,0,214,317_AL_.jpg', 184),
(185, 'https://mx.web.img3.acsta.net/pictures/19/06/28/15/20/0339560.jpg', 185),
(186, 'https://m.media-amazon.com/images/M/MV5BZjM2NWVhNDItZjBmZS00YzYzLTk4NGUtYzE5YzI4NmZhOTE1XkEyXkFqcGdeQXVyNjA5ODQwNTA@._V1_UX214_CR0,0,214,317_AL_.jpg', 186),
(187, 'https://m.media-amazon.com/images/M/MV5BMjQ1MTE2ODc4N15BMl5BanBnXkFtZTgwNjAyNDkyNDM@._V1_UX214_CR0,0,214,317_AL_.jpg', 187),
(188, 'https://m.media-amazon.com/images/M/MV5BMDExMjY5ZjgtZjA4Ni00ODA3LTlmNjAtYzViNzdkOTllOWQ3XkEyXkFqcGdeQXVyNzI1MzMwNjc@._V1_UX214_CR0,0,214,317_AL_.jpg', 188),
(189, 'https://m.media-amazon.com/images/M/MV5BMTcyNDk4NDY2Nl5BMl5BanBnXkFtZTgwOTE2ODE1MzI@._V1_UX214_CR0,0,214,317_AL_.jpg', 189),
(190, 'https://m.media-amazon.com/images/M/MV5BNDkzMjEzNDMyN15BMl5BanBnXkFtZTcwNTk3ODEyOQ@@._V1_UY317_CR13,0,214,317_AL_.jpg', 190),
(191, 'https://m.media-amazon.com/images/M/MV5BODIyNDE5NDg2OV5BMl5BanBnXkFtZTcwMDc0NDU5Ng@@._V1_UY317_CR13,0,214,317_AL_.jpg', 191),
(192, 'https://m.media-amazon.com/images/M/MV5BMjJkNDg5ZDctM2RlZS00NjFmLTkxZjktMWE5NGQzMDg4NDFhXkEyXkFqcGdeQXVyMTMwMDM1OTQ@._V1_UY317_CR8,0,214,317_AL_.jpg', 192),
(193, 'https://m.media-amazon.com/images/M/MV5BMTQ4OTk1MjI1N15BMl5BanBnXkFtZTgwODc3NTQ1OTE@._V1_UY317_CR12,0,214,317_AL_.jpg', 193),
(194, 'https://m.media-amazon.com/images/M/MV5BNTZkZjI1OTMtOWNmZS00NTRlLWIzOGUtMmE1ODExMWEyOGYxXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1_UY317_CR31,0,214,317_AL_.jpg', 194),
(195, 'https://m.media-amazon.com/images/M/MV5BMjA5NzA0NzQzMF5BMl5BanBnXkFtZTgwMTQxNjUzNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', 195),
(196, 'https://m.media-amazon.com/images/M/MV5BYjM2NmFiNGYtODQ1OC00ZTE5LTg4ZWYtYjFmODk4YmUyZDMzXkEyXkFqcGdeQXVyNjQ3NDAwOTA@._V1_UY317_CR20,0,214,317_AL_.jpg', 196),
(197, 'https://m.media-amazon.com/images/M/MV5BMTQ3NzM3MTc2NF5BMl5BanBnXkFtZTcwODMxNjA0NA@@._V1_UY317_CR9,0,214,317_AL_.jpg', 197),
(198, 'https://m.media-amazon.com/images/M/MV5BMjEzOTYzNTEzOV5BMl5BanBnXkFtZTcwMDcwNTE4Ng@@._V1_UX214_CR0,0,214,317_AL_.jpg', 198),
(199, 'https://m.media-amazon.com/images/M/MV5BMTU2Njg3MDgyN15BMl5BanBnXkFtZTcwNjgyNTA4Mg@@._V1_UY317_CR5,0,214,317_AL_.jpg', 199),
(200, 'https://m.media-amazon.com/images/M/MV5BY2Y2MmIzOGEtNTgyYi00OWUyLTljNzEtYmFlOWU2MzFkZTg1XkEyXkFqcGdeQXVyMjYyNDg5NzY@._V1_UX214_CR0,0,214,317_AL_.jpg', 200),
(201, 'https://m.media-amazon.com/images/M/MV5BMTQxMDg1Nzc0OV5BMl5BanBnXkFtZTcwODc4NTkyNw@@._V1_UY317_CR6,0,214,317_AL_.jpg', 201),
(202, 'https://m.media-amazon.com/images/M/MV5BMTY5OTA2NTExMV5BMl5BanBnXkFtZTgwNDIwNzU5MDE@._V1_UX214_CR0,0,214,317_AL_.jpg', 202),
(203, 'https://m.media-amazon.com/images/M/MV5BMzQ0NTg2NzU1M15BMl5BanBnXkFtZTgwNDQ1NjE3NTM@._V1_UY317_CR3,0,214,317_AL_.jpg', 203),
(204, 'https://m.media-amazon.com/images/M/MV5BNDg3NDk3ODI0Ml5BMl5BanBnXkFtZTgwOTE3MTE4NTM@._V1_UY317_CR7,0,214,317_AL_.jpg', 204),
(205, 'https://m.media-amazon.com/images/M/MV5BYWY3ZGQ0OGUtZDNjYi00MmRkLWE4YmMtYzk3MzAwZjQxMDRlXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_UY317_CR123,0,214,317_AL_.jpg', 205),
(206, 'https://m.media-amazon.com/images/M/MV5BMjE1ODY0NzE4N15BMl5BanBnXkFtZTcwMTY5Mzk0Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg', 206),
(207, 'https://m.media-amazon.com/images/M/MV5BNTA1OTUyMDUyM15BMl5BanBnXkFtZTYwODYzOTM1._V1_UX214_CR0,0,214,317_AL_.jpg', 207),
(208, 'https://m.media-amazon.com/images/M/MV5BNDYzNjAzMTYwOF5BMl5BanBnXkFtZTcwMTc3NTcxOA@@._V1_UY317_CR17,0,214,317_AL_.jpg', 208),
(209, 'https://m.media-amazon.com/images/M/MV5BMTg2MjA2NTU2OF5BMl5BanBnXkFtZTgwNTE2OTkwNjM@._V1_UX214_CR0,0,214,317_AL_.jpg', 209),
(210, 'https://m.media-amazon.com/images/M/MV5BMjAzMTU0OTk3OV5BMl5BanBnXkFtZTYwNjk4NzE3._V1_UY317_CR12,0,214,317_AL_.jpg', 210),
(211, 'https://static.wikia.nocookie.net/mindhunter/images/b/bf/Joe_Penhall.jpg/revision/latest?cb=20170929202018&path-prefix=es', 211),
(212, 'https://m.media-amazon.com/images/M/MV5BMTUzMDM1NzkxN15BMl5BanBnXkFtZTgwOTg0MzMwNDI@._V1_UY317_CR12,0,214,317_AL_.jpg', 212),
(213, 'https://m.media-amazon.com/images/M/MV5BMjI1NDQwMDA5N15BMl5BanBnXkFtZTgwMDI2OTQ1NDM@._V1_UY317_CR131,0,214,317_AL_.jpg', 213),
(214, 'https://m.media-amazon.com/images/M/MV5BMzQ0NDg0MjQ3NV5BMl5BanBnXkFtZTgwOTI5OTAwODE@._V1_UY317_CR12,0,214,317_AL_.jpg', 214);

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `titulo_id` int(11) NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` (`titulo_id`, `nota`) VALUES
(1, 9.3),
(2, 9.2),
(3, 9),
(4, 9),
(5, 9),
(6, 8.9),
(7, 8.9),
(8, 8.9),
(9, 8.8),
(10, 8.8),
(11, 8.8),
(12, 8.7),
(13, 8.8),
(14, 8.7),
(15, 8.7),
(16, 8.7),
(17, 8.7),
(18, 8.5),
(19, 8.6),
(20, 8.6),
(21, 8.6),
(22, 8.6),
(23, 8.6),
(24, 8.6),
(25, 8.5),
(26, 9.4),
(27, 9.4),
(28, 9.4),
(29, 9.3),
(30, 9.3),
(31, 9.3),
(32, 9),
(33, 9.2),
(34, 9.2),
(35, 9.1),
(36, 8.9),
(37, 8.9),
(38, 8.9),
(39, 8.9),
(40, 8.9),
(41, 8.8),
(42, 8.8),
(43, 8.8),
(44, 8.8),
(45, 8.7),
(46, 8.7),
(47, 8.7),
(48, 8.4),
(49, 8.7),
(50, 8.6);

-- --------------------------------------------------------

--
-- Table structure for table `temporadas`
--

CREATE TABLE `temporadas` (
  `id` int(11) NOT NULL,
  `numero_temporadas` int(11) NOT NULL,
  `num_episodios` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `temporadas`
--

INSERT INTO `temporadas` (`id`, `numero_temporadas`, `num_episodios`, `titulo_id`) VALUES
(1, 1, 10, 26),
(2, 5, 62, 27),
(3, 1, 5, 28),
(4, 5, 60, 29),
(5, 1, 13, 30),
(6, 3, 62, 31),
(7, 8, 73, 32),
(8, 6, 86, 33),
(9, 5, 42, 34),
(10, 4, 15, 35),
(11, 3, 24, 36),
(12, 1, 26, 37),
(13, 9, 188, 38),
(14, 2, 41, 39),
(15, 10, 235, 40),
(16, 5, 22, 41),
(17, 6, 36, 42),
(18, 3, 24, 43),
(19, 26, 3, 44),
(20, 6, 77, 45),
(21, 4, 34, 46),
(22, 2, 24, 47),
(23, 153, 8, 48),
(24, 8, 176, 49),
(25, 2, 19, 50);

-- --------------------------------------------------------

--
-- Table structure for table `titulos`
--

CREATE TABLE `titulos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish2_ci NOT NULL,
  `titulo_original` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_salida` date NOT NULL,
  `minutos` int(11) NOT NULL DEFAULT 0,
  `argumento` text COLLATE utf8_spanish2_ci NOT NULL,
  `plataforma` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `titulos`
--

INSERT INTO `titulos` (`id`, `tipo`, `titulo`, `titulo_original`, `fecha_salida`, `minutos`, `argumento`, `plataforma`) VALUES
(1, 'pelicula', 'Cadena perpetua', 'The Shawshank Redemption', '1995-02-24', 142, 'Un hombre inocente es enviado a una corrupta penitenciaria de Maine en 1947 y sentenciado a dos cadenas perpetuas por un doble asesinato.', 'Netflix'),
(2, 'pelicula', 'El padrino', 'The Godfather', '1972-10-20', 175, 'El padrino es una película estadounidense de 1972 dirigida por Francis Ford Coppola. La película fue producida por Albert S. Ruddy, de la compañía Paramount Pictures. Está basada en la novela homónima, de Mario Puzo, quien adaptó el guion junto a Coppola y Robert Towne, este último sin ser acreditado', 'Prime video'),
(3, 'pelicula', 'El padrino: Parte II', 'The Godfather: Part II', '1975-10-13', 202, 'Michael Corleone lidera el imperio criminal de su padre, mientras que se recuerda el ascenso al poder del joven Vito.', 'Prime video'),
(4, 'pelicula', 'El caballero oscuro', 'The Dark Knight', '2008-08-13', 152, 'Batman tiene que mantener el equilibrio entre el heroísmo y el vigilantismo para pelear contra un vil criminal conocido como el Bromas, que pretende sumir Ciudad Gótica en la anarquía.', 'Youtube'),
(5, 'pelicula', '12 Hombres sin piedad', '12 Angry Men', '1958-02-03', 96, 'Un hombre mantiene su decisión sobre la inocencia de un presunto asesino aunque es presionado por los otros del jurado.', 'Youtube'),
(6, 'pelicula', 'La lista de Schindler', 'Schindler\'s List', '1994-03-04', 195, 'El empresario alemán Oskar Schindler, miembro del Partido Nazi, pone en marcha un elaborado, costoso y arriesgado plan para salvar a más de mil judíos del Holocausto.', 'Netflix'),
(7, 'pelicula', 'El señor de los anillos: El retorno del rey', 'The Lord of the Rings: The Return of the King', '2003-12-17', 201, 'Trata sobre la última parte del viaje que emprendieron los nueve compañeros (de los cuales quedan solamente ocho) para salvar a la Tierra Media de la oscuridad impuesta por Sauron. En esta parte se decide el destino de todos los habitantes de estas tierras.', 'Youtube'),
(8, 'pelicula', 'Pulp Fiction', 'Pulp Fiction', '1995-01-13', 154, 'La vida de un boxeador, dos sicarios, la esposa de un gánster y dos bandidos se entrelaza en una historia de violencia y redención.', 'Youtube'),
(9, 'pelicula', 'El club de la lucha', 'Fight club', '1999-11-05', 139, 'Un empleado de oficina insomne, harto de su vida, se cruza con un vendedor peculiar. Ambos crean un club de lucha clandestino como forma de terapia y, poco a poco, la organización crece y sus objetivos toman otro rumbo.', 'Prime video'),
(10, 'pelicula', 'El señor de los anillos: La comunidad del anillo', 'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19', 178, 'Ambientada en la Tierra Media, cuenta la historia del Señor Oscuro Sauron, que está buscando el Anillo Único, el cual ha acabado en poder del hobbit Frodo Bolsón (Elijah Wood). El destino de la Tierra Media está en juego mientras Frodo y ocho compañeros que forman la Compañía del Anillo comienzan un largo y peligroso viaje hacia el Monte del Destino en la tierra de Mordor, que es el único lugar en el que el anillo puede ser destruido.', 'Youtube'),
(11, 'pelicula', 'Forrest Gump', 'Forrest Gump', '1994-09-23', 142, 'La película difiere sustancialmente de la novela en que se basa, entre otras cosas en la propia personalidad del protagonista y en los diversos eventos en los que se ve envuelto. ', 'Netflix'),
(12, 'pelicula', 'El Imperio contraataca', 'Star Wars: Episode V - The Empire Strikes Back', '1980-10-03', 124, 'Aunque la Estrella de la Muerte ha sido destruida, las tropas imperiales han hecho salir a las fuerzas rebeldes de sus bases ocultas y los persiguen a través de la galaxia. Mientras, el grupo de rebeldes de Skywalker se esconde en un planeta helado.', 'Disney+'),
(13, 'pelicula', 'Origen', 'Inception', '2010-08-06', 148, 'Dom Cobb es un ladrón con una extraña habilidad para entrar a los sueños de la gente y robarles los secretos de sus subconscientes. Su habilidad lo ha vuelto muy popular en el mundo del espionaje corporativo, pero ha tenido un gran costo en la gente que ama. Cobb obtiene la oportunidad de redimirse cuando recibe una tarea imposible: plantar una idea en la mente de una persona. Si tiene éxito, será el crimen perfecto, pero un enemigo se anticipa a sus movimientos.', 'Netflix'),
(14, 'pelicula', 'El señor de los anillos: Las dos torres', 'The Lord of the Rings: The Two Towers', '2002-12-18', 179, 'La trama de la película comienza tras la disolución de la Compañía del Anillo. Boromir ha muerto a manos del jefe de los uruk-hai, Lurtz, en un intento de salvar a los hobbits Meriadoc Brandigamo y Peregrin Tuk, que acaban siendo capturados. Frodo Bolsón y Sam Gamyi parten solos hacia Mordor para destruir el Anillo Único en el Monte del Destino, mientras que Aragorn, Gimli y Legolas persiguen a los uruks con el fin de liberar a sus amigos capturados.', 'Youtube'),
(15, 'pelicula', 'Alguien voló sobre el nido del cuco', 'One Flew Over the Cuckoo\'s Nest', '1976-10-07', 133, 'Un grupo de pacientes mentales sigue a Randle P. McMurphy, el personaje inadaptado social de la novela de Ken Kesey.', 'Prime video'),
(16, 'pelicula', 'Uno de los nuestros', 'Goodfellas', '1990-10-19', 146, 'Henry, un niño de trece años de Brooklyn, vive fascinado con el mundo de los gánsters. Su sueño se hace realidad cuando entra en la familia Pauline.', 'Youtube'),
(17, 'pelicula', 'Matrix', 'Matrix', '1999-06-23', 136, 'Thomas A. Anderson (Keanu Reeves) es programador informático de día y un hacker llamado Neo de noche. Lleva toda su vida intuyendo que hay algo más, que hay algo que falla y esa duda se ve reafirmada con un mensaje recibido en su ordenador: «Matrix te posee».', 'Youtube'),
(18, 'pelicula', 'Whiplash', 'Whiplash', '2015-01-16', 106, 'Whiplash es una película dramática estadounidense de 2014, escrita y dirigida por Damien Chazelle; protagonizada por Miles Teller como el joven baterista de jazz Andrew Neiman que asiste a una de las mejores escuelas de música del país en Nueva York, bajo la tutela del temible jazzista y maestro Terence Fletcher.', 'Prime video'),
(19, 'pelicula', 'La guerra de las galaxias', 'Star Wars', '1977-11-07', 121, 'La nave en la que viaja la princesa Leia es capturada por las tropas imperiales al mando del temible Darth Vader. Antes de ser atrapada, Leia consigue introducir un mensaje en su robot R2-D2, quien acompañado de su inseparable C-3PO logra escapar. Tras aterrizar en el planeta Tattooine son capturados y vendidos al joven Luke Skywalker, quien descubrirá el mensaje oculto que va destinado a Obi Wan Kenobi, maestro Jedi a quien Luke debe encontrar para salvar a la princesa.', 'Disney+'),
(20, 'pelicula', 'El silencio de los corderos', 'The Silence of the Lambs', '1991-09-06', 118, 'Una agente en entrenamiento del FBI busca la ayuda y consejo de un brillante asesino para poder capturar a otro asesino, el doctor Hannibal Lecter, un psiquiatra que también es un psicópata violento y antropófago.', 'Prime video'),
(21, 'pelicula', 'La vida es bella', 'La vita è bella', '1999-02-26', 116, 'Un hombre construye una elaborada fantasía para proteger a su hijo en un campo de concentración nazi.', 'Youtube'),
(22, 'pelicula', 'El viaje de Chihiro', ' Sen to Chihiro no kamikakushi', '2002-10-25', 125, 'El viaje de Chihiro ​ es una película de animación japonesa de 2001 dirigida por Hayao Miyazaki y producida por Studio Ghibli. Se trata del séptimo largometraje dirigido por Miyazaki dentro del estudio y de la decimosegunda producción de Ghibli.', 'Netflix'),
(23, 'pelicula', 'Salvar al soldado Ryan', 'Saving Private Ryan', '1998-09-18', 169, 'Después de desembarcar en Normandía, en plena Segunda Guerra Mundial, unos soldados norteamericanos deben arriesgar sus vidas para salvar al soldado James Ryan, cuyos tres hermanos han muerto en la guerra.', 'Prime video'),
(24, 'pelicula', 'Interestellar', 'Interestellar', '2014-11-07', 169, 'Gracias a un descubrimiento, un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí.', 'Netflix'),
(25, 'pelicula', 'Regreso al futuro', 'Back to the Future', '1985-12-02', 116, 'Una máquina del tiempo transporta a un adolescente a los años 50, cuando sus padres todavía estudiaban en la secundaria.', 'Netflix'),
(26, 'serie', 'Hermanos de sangre', 'Band of Brothers', '2001-09-09', 0, 'Los sucesos retratados en la miniserie tratan de ser fieles a la historia y se basan en la investigación de Ambrose y en entrevistas hechas a veteranos de la Easy Company. Todos los personajes que aparecen en la miniserie están basados en personajes reales de dicha compañía; además, algunos de ellos aparecen en entrevistas pregrabadas como prólogo a cada episodio.', 'HBO'),
(27, 'serie', 'Breaking Bad', 'Breaking Bad', '2008-01-20', 0, 'El profesor calmado de química de una secundaria, Walter White cree que su vida no puede ser peor. Su salario apenas le alcanza para sostener a su familia, una situación que no mejora cuando su esposa da a luz y su hijo adolescente sufre de parálisis cerebral, pero Walter queda anonadado cuando se entera que tiene un cáncer terminal. Al concluir que su enfermedad iba a arruinar financieramente a su familia, él toma una decisión desesperada con el fin de ganar más dinero durante el tiempo que le queda y transforma un viejo vehículo de recreación en un laboratorio de matanfetaminas sobre ruedas.', 'Netflix'),
(28, 'serie', 'Chernobyl', 'Chernobyl', '2019-05-06', 0, 'Valientes hombres y mujeres luchan por mitigar los daños de la catástrofe nuclear de Chernóbil ocurrida el 25 de abril de 1986.', 'HBO'),
(29, 'serie', 'Bajo escucha', 'The Wire', '2008-01-06', 0, 'Esta serie se centra en el narcotráfico en Baltimore a través de los ojos de los agentes del orden público, así como los traficantes de drogas y los consumidores. Otras facetas de la ciudad que se exploran en la serie son el gobierno, la burocracia, las escuelas y los medios de comunicación. El programa fue creado por el exreportero policial David Simon, quien también escribió muchos de los episodios.', 'HBO'),
(30, 'serie', 'Cosmos: Una odisea en el espacio-tiempo', 'Cosmos: A Spacetime Odyssey', '2014-03-09', 0, 'La serie sigue libremente el mismo formato de trece capítulos y enfoque narrativo de su predecesora, renovando algunos de sus elementos como \"la nave de la imaginación\" y presentando los nuevos descubrimientos desde 1980 junto a un uso extensivo de gráficos generados por computadora y relatos históricos mediante animación tradicional.', 'Disney+'),
(31, 'serie', 'Avatar: La leyenda de Aang', 'Avatar: The Last Airbender', '2005-02-21', 0, 'Un chico de 12 años y sus amigos deben usar sus poderes para salvar al mundo del maléfico Señor del Fuego y traer paz para las tres naciones.', 'Netflix'),
(32, 'serie', 'Juego de tronos', 'Game of Thrones', '2011-04-17', 0, 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 'HBO'),
(33, 'serie', 'Los Soprano', 'The Sopranos', '1999-01-10', 0, 'Tony Soprano intenta equilibrar los problemas de su familia disfuncional con otra \" familia\" muy diferente - la mafia. Acude a un terapeuta para tratar sus problemas profesionales y personales, que causan ataques de pánico. El \"jefe\" de la organización criminal lidia con luchas de poder, las relaciones amorosas, la violencia, la amenaza constante de ser descubierto y traicionado, y con todas las personas que están en la mira por sus actividades.', 'HBO'),
(34, 'serie', 'Rick y Morty', 'Rick and Morty', '2013-12-02', 0, 'Después de haber estado desaparecido durante casi 20 años, Rick Sánchez llega de imprevisto a la puerta de la casa de su hija Beth y se va a vivir con ella y su familia utilizando el garaje como su laboratorio personal.', 'Netflix'),
(35, 'serie', 'Sherlock', 'Sherlock', '2011-11-30', 0, 'En esta versión contemporánea sobre las historias del detective Sir Arthur Conan Doyle. El Dr. John Watson es un veterano de la guerra de Afganistán y conoce al brillante, Holmes cuando Holmes coloca un aviso buscando un compañero de apartamento.', 'Netflix'),
(36, 'serie', 'True Detective', 'True Detective', '2014-01-12', 0, 'En Luisiana, en 1995, dos detectives investigan el atroz asesinato de una joven que fue sometida a un ritual pagano. En el año 2012, unos policías interrogan a estos dos detectives, dado que sospechan que el asesino de 1995 ha regresado.', 'HBO'),
(37, 'serie', 'Cowboy Bebop', 'Kaubôi bibappu', '2001-09-02', 0, 'Las aventuras futuristas de un cazarrecompensas y sus compañeros en la búsqueda de criminales.', NULL),
(38, 'serie', 'The Office', 'The Office', '2005-03-24', 0, 'La adaptación de Estados Unidos, localizada en Scranton, Pensilvania., es la de una compañía papelera de alguna forma un poco más dinámica que la versión original Británica, aunque los personajes son esencialmente los mismos, desde Michael Scott, el peor jefe de todos hasta un hombre cualquiera Jim, enamorado de la recepcionista Pam a quien él le coquetea cuando no está preocupado por atormentar a su compañero Dwight, un hombre muy excitable y adulón.', 'Prime video'),
(39, 'serie', 'Gravity Falls', 'Gravity Falls', '2012-06-15', 0, 'El tío Stan invita a los gemelos Dipper y Mabel Pines a pasar el verano en el misterioso pueblo de Gravity Falls, Oregón. Los niños lo ayudan en la Cabaña del Misterio, la trampa turística que posee. Los gemelos tratan de adaptarse al entorno diferente, pero sienten que hay algo extraño en Gravity Falls y comienzan a descubrir sus secretos. Cuando Dipper descubre un diario críptico que ofrece el conocimiento de los misterios de la ciudad, él y Mabel lo usan para vencer al mal, y luchan para descubrir los inminentes misterios que los rodean.', 'Disney+'),
(40, 'serie', 'Friends', 'Friends', '1994-09-22', 0, 'La historia da inicio en un café de Nueva York, Central Perk, en el cual se encuentran los personajes: Monica Geller, Chandler Bing, Phoebe Buffay y Joey Tribbiani; donde también se incorporan con el paso de los minutos Ross Geller y por último Rachel Green. Este encuentro da comienzo a una etapa donde seis amigos viven en la ciudad de Nueva York. Es una comedia basada en la amistad, los buenos y malos momentos como: los triunfos, el amor, el pasado y el futuro.', 'HBO'),
(41, 'serie', 'Black Mirror', 'Black Mirror', '2011-12-04', 0, 'El lado oscuro de la era tecnológica en la que se vive: la paranoia de ser vigilados como en un panóptico, los usos terroristas de las nuevas herramientas y su relación con la experiencia cotidiana.', 'Netflix'),
(42, 'serie', 'Peacky Blinders', 'Peacky Blinders', '2014-09-30', 0, 'Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.', 'Netflix'),
(43, 'serie', 'The mandalorian', 'The mandalorian', '2019-11-12', 0, 'Las aventuras de Mando, un pistolero solitario y cazarrecompensas que se abre paso a través de las fronteras más remotas de la galaxia, lejos de la jurisdicción de la Nueva República.', 'Disney+'),
(44, 'serie', 'Dark', 'Dark', '2017-12-01', 0, 'La desaparición de dos niños muestra los vínculos entre cuatro familias y expone el pasado de una pequeña ciudad.', 'Netflix'),
(45, 'serie', 'Bojack Horseman', 'Bojack Horseman', '2014-08-22', 0, 'BoJack Horseman es un olvidado actor que supo vivir sus días de gloria gracias a una comedia televisiva, y que se enfrenta a las más duras crisis existenciales y adicciones mientras intenta volver a las grandes ligas.', 'Netflix'),
(46, 'serie', 'Stranger things', 'Stranger things', '2016-07-15', 0, 'Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo. Su ausencia coincide con el avistamiento de una criatura terrorífica y la aparición de una extraña niña.', 'Netflix'),
(47, 'serie', 'The boys', 'The boys', '2019-07-26', 0, 'Cuando los superhéroes abusan de sus poderes, un grupo de vigilantes llamados \"The Boys\" hace todo lo posible por frenarlos, independientemente de los riesgos que ello conlleva.', 'Prime video'),
(48, 'serie', 'Brooklyn Nine-Nine', 'Brooklyn Nine-Nine', '2013-09-17', 0, 'Los detectives Jake Peralta, Amy Santiago, Rosa Diaz y la sargento Terry Jeffords son unos policías talentosos, sin preocupaciones y con el mejor registro de arrestos, hasta que llega a la estación policial el nuevo jefe Raymond Holt.', 'Netflix'),
(49, 'serie', 'House', 'House', '2004-11-16', 0, 'En el Princenton Plainsboro de Nueva Jersey, el Dr. Gregory House, un singular genio de la medicina, se encarga de resolver casos como lo haría Sherlock Holmes. De forma astuta juega con la psicología de la Dra. Lisa Cuddy, su mejor amigo, el oncólogo James Wilson, y del resto de su equipo de trabajo.', 'Prime video'),
(50, 'serie', 'MindHounter', 'MindHounter', '2017-10-13', 0, 'Los agentes de la unidad especial del FBI desarrollan nuevas técnicas que les permiten perseguir asesinos en serie, violadores y otros criminales.', 'Netflix');

-- --------------------------------------------------------

--
-- Table structure for table `titulos_imagenes`
--

CREATE TABLE `titulos_imagenes` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `titulos_imagenes`
--

INSERT INTO `titulos_imagenes` (`id`, `imagen`, `tipo`, `titulo_id`) VALUES
(1, 'https://image.tmdb.org/t/p/w780/iNh3BivHyg5sQRPP1KOkzguEX0H.jpg', 'poster', 1),
(2, 'https://image.tmdb.org/t/p/w780/rSPw7tgCH9c6NqICZef4kZjFOQ5.jpg', 'poster', 2),
(3, 'https://image.tmdb.org/t/p/w780/poec6RqOKY9iSiIUmfyfPfiLtvB.jpg', 'poster', 3),
(4, 'https://image.tmdb.org/t/p/w780/nMKdUUepR0i5zn0y1T4CsSB5chy.jpg', 'poster', 4),
(5, 'https://image.tmdb.org/t/p/w780/qqHQsStV6exghCM7zbObuYBiYxw.jpg', 'poster', 5),
(6, 'https://image.tmdb.org/t/p/w780/loRmRzQXZeqG78TqZuyvSlEQfZb.jpg', 'poster', 6),
(7, 'https://image.tmdb.org/t/p/w780/pm0RiwNpSja8gR0BTWpxo5a9Bbl.jpg', 'poster', 7),
(8, 'https://image.tmdb.org/t/p/w780/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg', 'poster', 8),
(9, 'https://image.tmdb.org/t/p/w780/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg', 'poster', 9),
(10, 'https://image.tmdb.org/t/p/w780/vRQnzOn4HjIMX4LBq9nHhFXbsSu.jpg', 'poster', 10),
(11, 'https://image.tmdb.org/t/p/w780/7c9UVPPiTPltouxRVY6N9uugaVA.jpg', 'poster', 11),
(12, 'https://image.tmdb.org/t/p/w780/dMZxEdrWIzUmUoOz2zvmFuutbj7.jpg', 'poster', 12),
(13, 'https://image.tmdb.org/t/p/w780/sABMpHRCmt7qg9q6AFbZ1jPU1Jf.jpg', 'poster', 13),
(14, 'https://image.tmdb.org/t/p/w780/kWYfW2Re0rUDE6IHhy4CRuKWeFr.jpg', 'poster', 14),
(15, 'https://image.tmdb.org/t/p/w780/3KwAmIKMaDcBMonF5wmyNTL0SR6.jpg', 'poster', 15),
(16, 'https://image.tmdb.org/t/p/w780/sw7mordbZxgITU877yTpZCud90M.jpg', 'poster', 16),
(17, 'https://image.tmdb.org/t/p/w780/8K9qHeM6G6QjQN0C5XKFGvK5lzM.jpg', 'poster', 17),
(18, 'https://image.tmdb.org/t/p/w780/fRGxZuo7jJUWQsVg9PREb98Aclp.jpg', 'poster', 18),
(19, 'https://image.tmdb.org/t/p/w780/zqkmTXzjkAgXmEWLRsY4UpTWCeo.jpg', 'poster', 19),
(20, 'https://image.tmdb.org/t/p/w780/mAjSp3BGRY0Yl6iwMbDyA48kafu.jpg', 'poster', 20),
(21, 'https://image.tmdb.org/t/p/w780/gavyCu1UaTaTNPsVaGXT6pe5u24.jpg', 'poster', 21),
(22, 'https://image.tmdb.org/t/p/w780/Ab8mkHmkYADjU7wQiOkia9BzGvS.jpg', 'poster', 22),
(23, 'https://image.tmdb.org/t/p/w780/hjQp148VjWF4KjzhsD90OCMr11h.jpg', 'poster', 23),
(24, 'https://image.tmdb.org/t/p/w780/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg', 'poster', 24),
(25, 'https://image.tmdb.org/t/p/w780/7jj4PPnCSZwHJDUx9Q6IHa9sSv4.jpg', 'poster', 25),
(26, 'https://image.tmdb.org/t/p/w780/29JYJokZaZJg7SWXnw7FsnTntew.jpg', 'poster', 26),
(27, 'https://image.tmdb.org/t/p/w780/tsRy63Mu5cu8etL1X7ZLyf7UP1M.jpg', 'poster', 27),
(28, 'https://image.tmdb.org/t/p/w780/uL6Ad12W09L1sfuOE2pcTeak7bt.jpg', 'poster', 28),
(29, 'https://image.tmdb.org/t/p/w780/oggnxmvofLtGQvXsO9bAFyCj3p6.jpg', 'poster', 29),
(30, 'https://image.tmdb.org/t/p/w780/gs3CZfP8Sq7TwUEGLqU7buBa6lU.jpg', 'poster', 30),
(31, 'https://image.tmdb.org/t/p/w780/zyFlNMOpYkUJr0uMd9KqKZWoK08.jpg', 'poster', 31),
(32, 'https://image.tmdb.org/t/p/w780/suopoADq0k8YZr4dQXcU6pToj6s.jpg', 'poster', 32),
(33, 'https://image.tmdb.org/t/p/w780/lNpkvX2s8LGB0mjGODMT4o6Up7j.jpg', 'poster', 33),
(34, 'https://image.tmdb.org/t/p/w780/eV3XnUul4UfIivz3kxgeIozeo50.jpg', 'poster', 34),
(35, 'https://image.tmdb.org/t/p/w780/cU2WCPB5UNIyDg0vYgBwy2P4nBG.jpg', 'poster', 35),
(36, 'https://image.tmdb.org/t/p/w780/2Ahm0YjLNQKuzSf9LOkHrXk8qIE.jpg', 'poster', 36),
(37, 'https://image.tmdb.org/t/p/w780/n2EFmkreI79Ih5nNdeMMi13gsK1.jpg', 'poster', 37),
(38, 'https://image.tmdb.org/t/p/w780/vNpuAxGTl9HsUbHqam3E9CzqCvX.jpg', 'poster', 38),
(39, 'https://image.tmdb.org/t/p/w780/l0XvAI856XdyDYEfr1njztjH7u0.jpg', 'poster', 39),
(40, 'https://image.tmdb.org/t/p/w780/l0qVZIpXtIo7km9u5Yqh0nKPOr5.jpg', 'poster', 40),
(41, 'https://image.tmdb.org/t/p/w780/p39K75uoZLwnhGlEAJxRG5xAD9y.jpg', 'poster', 41),
(42, 'https://image.tmdb.org/t/p/w780/wiE9doxiLwq3WCGamDIOb2PqBqc.jpg', 'poster', 42),
(43, 'https://image.tmdb.org/t/p/w780/9ijMGlJKqcslswWUzTEwScm82Gs.jpg', 'poster', 43),
(44, 'https://image.tmdb.org/t/p/w780/75HgaphatW0PDI3XIHQWZUpbhn6.jpg', 'poster', 44),
(45, 'https://image.tmdb.org/t/p/w780/AmIHaw6CQWOfBCQYom15Jzsu7OB.jpg', 'poster', 45),
(46, 'https://image.tmdb.org/t/p/w780/rcA17r3hfHtRrk3Xs3hXrgGeSGT.jpg', 'poster', 46),
(47, 'https://image.tmdb.org/t/p/w780/mGVrXeIjyecj6TKmwPVpHlscEmw.jpg', 'poster', 47),
(48, 'https://image.tmdb.org/t/p/w780/jTiQAusGG4dVLSb1WHme9I9R4NN.jpg', 'poster', 48),
(49, 'https://image.tmdb.org/t/p/w780/h3vViR087OJlk4PedNt5JLIKOOi.jpg', 'poster', 49),
(50, 'https://image.tmdb.org/t/p/w780/a906PH7CDmSOdS7kmnAgdWk5mhv.jpg', 'poster', 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(10) NOT NULL,
  `dni` varchar(16) COLLATE utf8_spanish2_ci NOT NULL,
  `imgSrc` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `password`, `email`, `telefono`, `dni`, `imgSrc`) VALUES
(2, 'jaime', 'sanchez', '$2y$10$/cCSYhvlBHjlEoIAU5P8Ie66g9TJYX4lvfs.nL.dfuGJy8eJsLpp6', 'jaime@gmail.com', 656919501, '06287129X', 'http://localhost/repositorioSanchez/backendSanchez/app/images/p-2-1621717450.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`titulo_id`,`nombre_id`),
  ADD KEY `nombre_id` (`nombre_id`);

--
-- Indexes for table `creadores`
--
ALTER TABLE `creadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulo_id` (`titulo_id`),
  ADD KEY `nombre_id` (`nombre_id`);

--
-- Indexes for table `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`titulo_id`,`nombre_id`),
  ADD KEY `nombre_id` (`nombre_id`);

--
-- Indexes for table `escritores`
--
ALTER TABLE `escritores`
  ADD PRIMARY KEY (`titulo_id`,`nombre_id`),
  ADD KEY `nombre_id` (`nombre_id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`titulo_id`,`genero_id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `generos_des`
--
ALTER TABLE `generos_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listas_usuarios`
--
ALTER TABLE `listas_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulo_id` (`titulo_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `nombres`
--
ALTER TABLE `nombres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nombres_imagenes`
--
ALTER TABLE `nombres_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre_id` (`nombre_id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`titulo_id`,`nota`) USING BTREE;

--
-- Indexes for table `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulo_id` (`titulo_id`);

--
-- Indexes for table `titulos`
--
ALTER TABLE `titulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titulos_imagenes`
--
ALTER TABLE `titulos_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulo_id` (`titulo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creadores`
--
ALTER TABLE `creadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `generos_des`
--
ALTER TABLE `generos_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `listas_usuarios`
--
ALTER TABLE `listas_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nombres`
--
ALTER TABLE `nombres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `nombres_imagenes`
--
ALTER TABLE `nombres_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `titulos`
--
ALTER TABLE `titulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `titulos_imagenes`
--
ALTER TABLE `titulos_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actores`
--
ALTER TABLE `actores`
  ADD CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actores_ibfk_2` FOREIGN KEY (`nombre_id`) REFERENCES `nombres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `creadores`
--
ALTER TABLE `creadores`
  ADD CONSTRAINT `creadores_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `creadores_ibfk_2` FOREIGN KEY (`nombre_id`) REFERENCES `nombres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directores`
--
ALTER TABLE `directores`
  ADD CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`nombre_id`) REFERENCES `nombres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directores_ibfk_2` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `escritores`
--
ALTER TABLE `escritores`
  ADD CONSTRAINT `escritores_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escritores_ibfk_2` FOREIGN KEY (`nombre_id`) REFERENCES `nombres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `generos`
--
ALTER TABLE `generos`
  ADD CONSTRAINT `generos_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `generos_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `generos_des` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listas_usuarios`
--
ALTER TABLE `listas_usuarios`
  ADD CONSTRAINT `listas_usuarios_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listas_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nombres_imagenes`
--
ALTER TABLE `nombres_imagenes`
  ADD CONSTRAINT `nombres_imagenes_ibfk_1` FOREIGN KEY (`nombre_id`) REFERENCES `nombres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `temporadas`
--
ALTER TABLE `temporadas`
  ADD CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titulos_imagenes`
--
ALTER TABLE `titulos_imagenes`
  ADD CONSTRAINT `titulos_imagenes_ibfk_1` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
