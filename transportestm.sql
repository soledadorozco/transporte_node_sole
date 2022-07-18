-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-07-2022 a las 12:13:25
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportestm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(2, 'Las medidas que anunció Silvina Batakis y sus principales definiciones Inflación, tipo de cambio, segmentación de tarifas, FMI y gasto público', 'La ministra de Economía, Silvina Batakis, anunció este lunes las primeras medidas que implementará desde esa cartera.', 'La ministra de Economía, Silvina Batakis, anunció este lunes las primeras medidas que implementará desde esa cartera. En ese marco tuvo definiciones vinculadas al tipo de cambio, los precios y la inflación, el acuerdo con el FMI y la segmentación de tarifas.\r\n\r\nBatakis hizo los anuncios en la que también fue su primera conferencia de prensa en el Palacio de Hacienda. La acompañaron los ministros Daniel Scioli (Desarrollo Productivo), Julián Domínguez (Agricultura) y Matías Lammes (Turismo). También estuvieron presentes el presidente del Banco Central, Miguel Pesce, y la titular de la AFIP, Mercedes Marcó del Pont.'),
(3, 'La nueva uva con la que se puede hacer vinos de calidad en Argentina', 'El Instituto Nacional de Vitivinicultura aprobó el uso de la uva Tinta Cao para la elaboración de vinos finos y ahora la lista se amplía a 47. Para qué se usa y cómo son sus vinos.', 'Se trata de la Tinta Cao, o Tinta Cão, una variedad originaria de Portugal que en Argentina tiene una presencia muy menor y aún así se utilizaba hasta el momento para la elaboración de vinos no varietales.'),
(5, 'Uvas argentinas ', 'afrarqarar', 'qqqqq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'soledad', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
