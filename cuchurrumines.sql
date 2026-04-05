-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2025 a las 01:33:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuchurrumines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `DNI` int(8) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direccion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `Nombre`, `Apellido`, `DNI`, `Email`, `Fecha_Nacimiento`, `Direccion`) VALUES
(1, 'peppa', 'pig', 44444444, 'pepponcia@gmail.com', '1999-05-04', 'casa de cerditos'),
(3, 'peppa', 'pig', 44444446, 'pepponcia777@gmail.com', '1999-05-04', 'casa de cerditos'),
(4, 'lola', 'mento', 888, 'mentolado@gmail.com', '1888-07-07', 'casa 500'),
(5, 'aaaa', 'aaaa', 11111, '111@gmial.com', '1111-11-11', 'casa11'),
(6, 'selena', 'ruiz diaz', 48490927, 'selena@gmail.com', '2007-12-19', 'casa42'),
(7, 'morena', 'gill', 48366825, 'muminaaa@gmail.com', '0000-00-00', 'av ranelagh'),
(8, 'aaaaaaaaaa', 'aaaaaaaa', 111111, 'aaaaa', '1111-11-11', 'aaaaaaaaaaaa'),
(9, 'por', 'fin', 1212, 'se', '1212-12-12', 'acabo'),
(12, 'por', 'fin', 121333, 'jajaj', '1212-12-12', 'acabo'),
(14, 'aaaaaaaa', 'aaaaaa', 1122, '11122', '1111-11-11', '11111'),
(17, 'aaaaaaaa', 'aaaaaa', 1123, '11123', '1111-11-11', '11111'),
(18, 'aaaaaaaa', 'aaaaaa', 114, '111234', '1111-11-11', '11111'),
(19, 'aaaaaaaa', 'aaaaaa', 1146, '1112346', '1111-11-11', '11111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Telefono` int(11) NOT NULL,
  `DNI` int(8) NOT NULL,
  `Mail` varchar(40) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Usuario` varchar(40) NOT NULL,
  `Contraseña` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `Nombre`, `Apellido`, `Telefono`, `DNI`, `Mail`, `Direccion`, `Usuario`, `Contraseña`) VALUES
(1, 'hhrtyh', 'ehrth', 3425435, 3453534, 'fdgdh', 'sfgfhg', '', ''),
(2, '', '', 0, 0, 'hrtjryjty', 'dhgjhh', '', ''),
(8, 'fernando', 'peres', 1313131, 555555, 'profe@gmail.com', 'casaa 500', 'mantra', '1234'),
(9, 'morena', 'gilll', 2147483647, 48366286, 'muminaaa97@gmail.com', 'papaapa 231', 'mumii', 'mumii'),
(10, 'Sebastian', 'Beltran', 1155887766, 45826985, 'sebatuputita@gmail.com', 'calle tu mama', 'sebasbel2007', 'belgica2007'),
(11, 'rami', 'hitler', 666, 666, 'hitlerbebesota@gmail.com', 'alemania', 'hitler777', 'europamiputa'),
(12, 'sss', 'sss', 2354, 2534, 'asd', 'ada', 'adad', 'adad'),
(13, 'more', 'g', 45554488, 465445466, 'morea@gmail.com', 'av caa', 'more', 'gill'),
(14, 'aaaa', 'aaa', 4455778, 2147483647, 'moreee@gmail.com', 'WWWWW', 'hola', 'hola'),
(16, 'yujtyj', 'yjntyj', 1423758362, 88997788, 'yrjyrkryfk@gmail.com', 'tyhrtujrt', 'hola', 'chau'),
(17, 'ian', 'monteroni', 555, 555, 'ian@gmial.com', 'casa36', 'lechepeluda777', '12345'),
(18, 'profe', 'apellido', 123, 123, 'profe@gmial.com', 'casa25', 'profe123', 'profe12345'),
(19, 'eee', 'eee', 123, 1234, 'eee@gmail.com', 'casa E', 'eeeee', 'eeeew'),
(20, 'caso', 'perdido', 7777, 7777, 'ultimo intento', 'casa perdida', 'perdidas', 'olvidada'),
(22, 'iñl7uy', 'k6yui8k6', 2147483647, 123456789, 'gmtfhm,trul,6u', 'kjmgj,mjc,', 'aa', '1234'),
(23, 'intenti', '7873827', 329392, 2382937, '9217392@gmial.com', 'casa347937', 'intento', '123455'),
(24, 'intento', '9', 9899, 9899, '9899@gmail.com', 'dad', 'ajjj', 'ajjjk'),
(25, 'ajk', 'ajk', 898989, 8989899, 'ajkajk', 'ajk', 'ajkkk', 'ajkkko'),
(26, 'ggg', 'ggg', 6666, 6666, 'ggg', 'ggg', 'ggg', 'ggggg'),
(27, 'intento', 'GPT', 141414, 141414, 'GPT', 'CASAGPT', 'GPT', 'INTENTO'),
(28, 'perdilas', 'esperanzas', 989898, 9898989, '9898989', '9898989', 'notengo', 'fe'),
(29, 'asdasdasd', 'AS', 4141414, 4141414, '4141414', '14141414', 'caso', 'perdido'),
(30, 'alan', 'gogogo', 974917, 947197419, ' petera55', '5555', 'alansote', 'gogogo'),
(32, 'asdasdasd', 'AS', 55347863, 4, 'm@gmail.com', 'sebastianteamo<22', 'Mum', 'sebastianteamo<22'),
(33, 'ekrjflgjter', 'bbterklbjrtiwb', 45483, 2358, 'ojjñ', 'skgethkbet', 'holaaa', 'aaaaaa'),
(34, 'asdasdasd', 'AS', 232323, 131313, '13131', '3131313', 'pelotuda', 'morena'),
(35, 'asdasdasd', 'AS', 1231, 1312, '12313', '33333', 'fff', 'aaa'),
(36, '', 'asdasdasd', 0, 22, '22', ' 22', '222', '$2y$10$tLguGIZ0rJ69a45KZkZnqOyO/nn1d9fGwvyCrDIonDd.JMBamQ0i6'),
(37, '', 'aaaaaa', 0, 111111, '11111111', ' 11111111111', '11111', '$2y$10$dtX5rQQ79uUhO2YMSjKr4e..Pp009Rrt4oZ14CWskdwepJE7KvMlC'),
(40, '', 'adad', 0, 121212, '121212', ' 1212122', '1212', '$2y$10$oCkrK2pLFRgwa.ltcT3kwuOjpip/sSpohjRN/Qk.AEjqplubLF8jW'),
(41, '', 'jesus', 0, 18, '18', ' 18', 'JISUS', '$2y$10$2Ffz48leQmSCiapWarkn0.yv6AXDwwbzjxWUaRZ8HG5/P3THJO0Ya'),
(43, '', '666', 666, 66677, '6666', ' 66666', '666', '$2y$10$UTbREX1wCOjooG7Zr6Kh3e87arAfCXk7Ia4LPlZ3vGZjIEv5Tnmyq'),
(44, '', 'qlq', 0, 12121212, '32323232', ' casaqlq', 'qlqq', '$2y$10$nLEryNFURDoY9fIHBH19be9i2lhlQjkteXR54/SvARFSx.mT0EhUy'),
(45, 'antes', 'antes', 414141, 342342, 'adad', 'adada', 'antes', 'antes'),
(46, 'antes', 'antes', 82828, 8282828, '282828', '288282', 'antes1', 'antes12'),
(50, 'antes', 'antes', 82828, 313, 'conectio@', 'conection', 'antes1', 'antes12'),
(51, 'aaaaa', 'aaaa', 11111, 1111, '1111', '1111', '111', '122'),
(52, '', 'ultimo', 0, 131241241, '1212412', ' funciona', 'el', '$2y$10$NZBHWgPEeuBg9wmKP5TNwOe7PiIOZkt2saDgtY1sFjVJC/VLgy5rS'),
(53, '', 'ada', 0, 11, '1', ' 2', 'login', '$2y$10$GQswR93cTIvVeDf6vf4mcOwwoviwFJrdu.fszsP7zacG4nOdHAN.W'),
(54, '', 'a', 0, 2, '3', ' 3', '333', '$2y$10$QC4LV7ZkkMBWRcuZtSCIne3cYW3pdU7/Jda4lUQo3IDNAyRaFrdUO'),
(55, '', 'intento', 0, 12431241, '12311', ' intentos y errores', 'llega', '$2y$10$gVIp60l//CyfPXdVZksHcONhGLkyu9lXeZUWmXHi/OIJAHaaxTn06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contra`
--

CREATE TABLE `contra` (
  `id` int(11) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `contraa` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `Mail` (`Mail`);

--
-- Indices de la tabla `contra`
--
ALTER TABLE `contra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `contra`
--
ALTER TABLE `contra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
