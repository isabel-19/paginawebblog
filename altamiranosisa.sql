-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3360
-- Tiempo de generación: 19-02-2023 a las 17:16:01
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `altamiranosisa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `comentario_id` int(11) NOT NULL,
  `parent_comentario_id` int(11) DEFAULT NULL,
  `comment` varchar(200) CHARACTER SET latin1 NOT NULL,
  `comment_sender_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla Comentarios';

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`comentario_id`, `parent_comentario_id`, `comment`, `comment_sender_name`, `date`) VALUES
(0, 0, '  snibeu uB uio ni niN ', 'liijiu uniu uieuv', '2023-02-17 19:15:36'),
(0, 0, '  ', '', '2023-02-17 19:21:13'),
(0, 0, 'bkbl ik b', 'nbjb', '2023-02-17 22:15:42'),
(0, 0, '', '', '2023-02-17 22:18:14'),
(0, 0, '', '', '2023-02-17 22:18:14'),
(0, 0, '', '', '2023-02-17 22:18:14'),
(0, 0, '  fgbvf', 'bv', '2023-02-17 23:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `imagen` text NOT NULL,
  `descripcion_post` text NOT NULL,
  `contenidocompleto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `autor`, `fecha`, `categoria`, `titulo`, `imagen`, `descripcion_post`, `contenidocompleto`) VALUES
(1, 'Isabel', '2023-02-19 02:44:00', 'Programacion', 'n hj', '', 'jbub', '<p>jbv biobjbiuhv&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>nbui&nbsp;</p>'),
(2, 'Isabel', '2023-02-19 02:45:50', 'Programacion', 'n hj', '1.PNG', 'jbub', '<p>jbv biobjbiuhv&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>nbui&nbsp;</p>'),
(3, 'Isabel', '2023-02-19 05:32:37', 'Programacion', '', '', '', ''),
(4, 'Isabel', '2023-02-19 05:34:48', 'Programacion', '', '', '', ''),
(5, 'Isabel', '2023-02-19 09:54:37', 'Programacion', 'erase una vez', '', '', '<p>Un&nbsp;<strong>texto</strong>&nbsp;es una composici&oacute;n de&nbsp;<a title=\"Signo ling&uuml;&iacute;stico\" href=\"https://es.wikipedia.org/wiki/Signo_ling%C3%BC%C3%ADstico\">signos</a>&nbsp;codificados en un&nbsp;<a title=\"Sistema de escritura\" href=\"https://es.wikipedia.org/wiki/Sistema_de_escritura\">sistema de escritura</a>&nbsp;que forma una unidad de&nbsp;<a title=\"Significado\" href=\"https://es.wikipedia.org/wiki/Significado\">sentido</a>.</p>\r\n<p>Tambi&eacute;n es una composici&oacute;n de caracteres imprimibles (con&nbsp;<a title=\"Grafema\" href=\"https://es.wikipedia.org/wiki/Grafema\">grafema</a>) generados por un&nbsp;<a title=\"Algoritmo\" href=\"https://es.wikipedia.org/wiki/Algoritmo\">algoritmo</a>&nbsp;de&nbsp;<a title=\"Criptograf&iacute;a\" href=\"https://es.wikipedia.org/wiki/Criptograf%C3%ADa\">cifrado</a>&nbsp;que, aunque no tienen sentido para cualquier persona, s&iacute; puede ser descifrado por su destinatario original. En otras palabras, un texto es un entramado de signos con una intenci&oacute;n comunicativa que adquiere sentido en determinado contexto.</p>\r\n<p>Las ideas que comunica un texto est&aacute;n contenidas en lo que se suele denominar &laquo;macroproposiciones&raquo;, unidades estructurales de nivel superior o global, que otorgan coherencia al texto constituyendo su hilo central, el esqueleto estructural que cohesiona elementos ling&uuml;&iacute;sticos formales de alto nivel, como los t&iacute;tulos y subt&iacute;tulos, la secuencia de p&aacute;rrafos, etc. En contraste, las &laquo;microproposiciones&raquo; son los elementos coadyuvantes de la cohesi&oacute;n de un texto, pero a nivel m&aacute;s particular o local. Esta distinci&oacute;n fue realizada por&nbsp;<a title=\"Teun van Dijk\" href=\"https://es.wikipedia.org/wiki/Teun_van_Dijk\">Teun van Dijk</a>&nbsp;en 1980.<sup id=\"cite_ref-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Texto#cite_note-1\">1</a></sup>​</p>\r\n<p>El nivel microestructural o local est&aacute; asociado con el concepto de cohesi&oacute;n. Se refiere a uno de los fen&oacute;menos propios de la coherencia, el de las relaciones particulares y locales que se dan entre elementos ling&uuml;&iacute;sticos, tanto los que remiten unos a otros como los que tienen la funci&oacute;n de conectar y organizar.</p>\r\n<p>Tambi&eacute;n es un conjunto de oraciones agrupadas en p&aacute;rrafos que habla de un tema determinado.</p>'),
(6, 'Isabel', '2023-02-19 09:56:23', 'Programacion', 'erase una vez', '5.PNG', '', '<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Un&nbsp;texto&nbsp;es una composici&oacute;n de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Signo ling&uuml;&iacute;stico\" href=\"https://es.wikipedia.org/wiki/Signo_ling%C3%BC%C3%ADstico\">signos</a>&nbsp;codificados en un&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Sistema de escritura\" href=\"https://es.wikipedia.org/wiki/Sistema_de_escritura\">sistema de escritura</a>&nbsp;que forma una unidad de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Significado\" href=\"https://es.wikipedia.org/wiki/Significado\">sentido</a>.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Tambi&eacute;n es una composici&oacute;n de caracteres imprimibles (con&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Grafema\" href=\"https://es.wikipedia.org/wiki/Grafema\">grafema</a>) generados por un&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Algoritmo\" href=\"https://es.wikipedia.org/wiki/Algoritmo\">algoritmo</a>&nbsp;de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Criptograf&iacute;a\" href=\"https://es.wikipedia.org/wiki/Criptograf%C3%ADa\">cifrado</a>&nbsp;que, aunque no tienen sentido para cualquier persona, s&iacute; puede ser descifrado por su destinatario original. En otras palabras, un texto es un entramado de signos con una intenci&oacute;n comunicativa que adquiere sentido en determinado contexto.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Las ideas que comunica un texto est&aacute;n contenidas en lo que se suele denominar &laquo;macroproposiciones&raquo;, unidades estructurales de nivel superior o global, que otorgan coherencia al texto constituyendo su hilo central, el esqueleto estructural que cohesiona elementos ling&uuml;&iacute;sticos formales de alto nivel, como los t&iacute;tulos y subt&iacute;tulos, la secuencia de p&aacute;rrafos, etc. En contraste, las &laquo;microproposiciones&raquo; son los elementos coadyuvantes de la cohesi&oacute;n de un texto, pero a nivel m&aacute;s particular o local. Esta distinci&oacute;n fue realizada por&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Teun van Dijk\" href=\"https://es.wikipedia.org/wiki/Teun_van_Dijk\">Teun van Dijk</a>&nbsp;en 1980.<sup id=\"cite_ref-1\" class=\"reference separada\"><a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" href=\"https://es.wikipedia.org/wiki/Texto#cite_note-1\">1</a></sup></span>​</p>\r\n<p>El nivel microestructural o local est&aacute; asociado con el concepto de cohesi&oacute;n. Se refiere a uno de los fen&oacute;menos propios de la coherencia, el de las relaciones particulares y locales que se dan entre elementos ling&uuml;&iacute;sticos, tanto los que remiten unos a otros como los que tienen la funci&oacute;n de conectar y organizar.</p>\r\n<p>Tambi&eacute;n es un conjunto de oraciones agrupadas en p&aacute;rrafos que habla de un tema determinado.</p>'),
(7, 'Isabel', '2023-02-19 09:57:35', 'Cultura', 'erase una vez', '5.PNG', '', '<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Un&nbsp;texto&nbsp;es una composici&oacute;n de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Signo ling&uuml;&iacute;stico\" href=\"https://es.wikipedia.org/wiki/Signo_ling%C3%BC%C3%ADstico\">signos</a>&nbsp;codificados en un&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Sistema de escritura\" href=\"https://es.wikipedia.org/wiki/Sistema_de_escritura\">sistema de escritura</a>&nbsp;que forma una unidad de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Significado\" href=\"https://es.wikipedia.org/wiki/Significado\">sentido</a>.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Tambi&eacute;n es una composici&oacute;n de caracteres imprimibles (con&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Grafema\" href=\"https://es.wikipedia.org/wiki/Grafema\">grafema</a>) generados por un&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Algoritmo\" href=\"https://es.wikipedia.org/wiki/Algoritmo\">algoritmo</a>&nbsp;de&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Criptograf&iacute;a\" href=\"https://es.wikipedia.org/wiki/Criptograf%C3%ADa\">cifrado</a>&nbsp;que, aunque no tienen sentido para cualquier persona, s&iacute; puede ser descifrado por su destinatario original. En otras palabras, un texto es un entramado de signos con una intenci&oacute;n comunicativa que adquiere sentido en determinado contexto.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\">Las ideas que comunica un texto est&aacute;n contenidas en lo que se suele denominar &laquo;macroproposiciones&raquo;, unidades estructurales de nivel superior o global, que otorgan coherencia al texto constituyendo su hilo central, el esqueleto estructural que cohesiona elementos ling&uuml;&iacute;sticos formales de alto nivel, como los t&iacute;tulos y subt&iacute;tulos, la secuencia de p&aacute;rrafos, etc. En contraste, las &laquo;microproposiciones&raquo; son los elementos coadyuvantes de la cohesi&oacute;n de un texto, pero a nivel m&aacute;s particular o local. Esta distinci&oacute;n fue realizada por&nbsp;<a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" title=\"Teun van Dijk\" href=\"https://es.wikipedia.org/wiki/Teun_van_Dijk\">Teun van Dijk</a>&nbsp;en 1980.<sup id=\"cite_ref-1\" class=\"reference separada\"><a style=\"color: rgb(236, 240, 241); background-color: rgb(191, 237, 210);\" href=\"https://es.wikipedia.org/wiki/Texto#cite_note-1\">1</a></sup></span>​</p>\r\n<p>El nivel microestructural o local est&aacute; asociado con el concepto de cohesi&oacute;n. Se refiere a uno de los fen&oacute;menos propios de la coherencia, el de las relaciones particulares y locales que se dan entre elementos ling&uuml;&iacute;sticos, tanto los que remiten unos a otros como los que tienen la funci&oacute;n de conectar y organizar.</p>\r\n<p>Tambi&eacute;n es un conjunto de oraciones agrupadas en p&aacute;rrafos que habla de un tema determinado.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuanom` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuanom`, `contraseña`, `nombre`) VALUES
(14, 'lili', 'Array', 'lili'),
(15, 'laura', '202cb962ac59075b964b07152d234b70', 'laura'),
(16, 'li', 'c20ad4d76fe97759aa27a0c99bff6710', 'li'),
(17, 'lulu', '202cb962ac59075b964b07152d234b70', 'lulu'),
(18, 'l', '202cb962ac59075b964b07152d234b70', 'lolal'),
(19, 'lo', 'c20ad4d76fe97759aa27a0c99bff6710', 'lo'),
(20, 'lau', '202cb962ac59075b964b07152d234b70', 'laura'),
(21, 'lolo', '', 'mama'),
(22, 'isa', '202cb962ac59075b964b07152d234b70', 'isabel'),
(23, 'popo', '202cb962ac59075b964b07152d234b70', 'hjgcjyhkg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
