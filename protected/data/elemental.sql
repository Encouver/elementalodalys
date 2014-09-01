-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 31, 2014 at 08:51 PM
-- Server version: 5.1.56-community
-- PHP Version: 5.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elemental`
--

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
  `idartista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  `ano` int(11) NOT NULL,
  PRIMARY KEY (`idartista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `artista_expo`
--

CREATE TABLE IF NOT EXISTS `artista_expo` (
  `idcolectiva_feria` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idcolectiva_feria`),
  KEY `idexposicion` (`idexposicion`),
  KEY `idartista` (`idartista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `artista_prensa`
--

CREATE TABLE IF NOT EXISTS `artista_prensa` (
  `idartista_prensa` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `idprensa` int(11) NOT NULL,
  PRIMARY KEY (`idartista_prensa`),
  KEY `idartista` (`idartista`),
  KEY `idprensa` (`idprensa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
  `idaudio` int(11) NOT NULL AUTO_INCREMENT,
  `audio_ruta` varchar(255) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogo`
--

CREATE TABLE IF NOT EXISTS `catalogo` (
  `idcatalogo` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `idioma` varchar(45) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `portada_thumb` varchar(255) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcatalogo`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversatorio`
--

CREATE TABLE IF NOT EXISTS `conversatorio` (
  `idconversatorio` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idconversatorio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exposicion`
--

CREATE TABLE IF NOT EXISTS `exposicion` (
  `idexposicion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre1` varchar(255) NOT NULL,
  `nombre2` varchar(255) DEFAULT NULL,
  `lugar` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `tipo` enum('FERIA','INDIVIDUAL','COLECTIVA') NOT NULL,
  PRIMARY KEY (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `exposicion`
--

INSERT INTO `exposicion` (`idexposicion`, `nombre1`, `nombre2`, `lugar`, `pais`, `fecha_inicio`, `fecha_fin`, `tipo`) VALUES
(2, 'Human Nature', 'Uli Westphal', 'Odalys Galería de Arte - Caracas', 'Venezuela', '2013-11-30 11:00:00', '2014-01-26 00:00:00', 'INDIVIDUAL'),
(3, 'Tokyo Art Fair 2014', NULL, 'Tokyo International Forum B2F Exhibition Hall ', 'Japón', '2014-03-07 00:00:00', '2014-03-09 00:00:00', 'FERIA'),
(4, 'OFF - Contemporary Art Fair Brussels 2014', NULL, 'Royal Depot, Tour & Taxis Site. Bruselas', 'Bélgica', '2014-04-25 00:00:00', '2014-04-28 00:00:00', 'FERIA');

-- --------------------------------------------------------

--
-- Table structure for table `expo_obra`
--

CREATE TABLE IF NOT EXISTS `expo_obra` (
  `idexpo_obra` int(11) NOT NULL AUTO_INCREMENT,
  `idobra` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idexpo_obra`),
  KEY `idexposicion` (`idexposicion`),
  KEY `idobra` (`idobra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `montaje`
--

CREATE TABLE IF NOT EXISTS `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idmontaje`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `fecha`, `titulo`, `contenido`, `imagen`, `link`) VALUES
(1, '2014-05-07 12:12:00', 'Uli Westphal en Proyecto Elemental Uli Westphal en Proyecto Elemental', 'Ataviada en un sexy vestido negro, la cantante colombiana Shakira estrenó el vídeo "Dare" (La la la), tercer sencillo de su más reciente producción discográfica que lleva su nombre.  Con sus usuales movimientos de vientre y caderas, además de nuevos pasos estilo electrónico, la colombiana desarrolla el ambiente del clip grabado en Lisboa, Portugal, según habían informado varios medios internacionales.  En el vídeo también se le ve a la colombiana caminar sensualmente por las calles de la mencionada ciudad donde es perseguida por un grupo de personas que después la acompañan en una coreografía.', 'images/noticias/xxx.jpg', NULL),
(2, '2014-05-06 11:10:00', 'Venezuela y Alemania unidos en Proyecto Elemental', 'Ataviada en un sexy vestido negro, la cantante colombiana Shakira estrenó el vídeo "Dare" (La la la), tercer sencillo de su más reciente producción discográfica que lleva su nombre.  Con sus usuales movimientos de vientre y caderas, además de nuevos pasos estilo electrónico, la colombiana desarrolla el ambiente del clip grabado en Lisboa, Portugal, según habían informado varios medios internacionales.  En el vídeo también se le ve a la colombiana caminar sensualmente por las calles de la mencionada ciudad donde es perseguida por un grupo de personas que después la acompañan en una coreografía. ', 'images/noticias/xxx2.jpg', NULL),
(3, '2014-05-06 11:10:00', 'Venezuela y Alemania unidos en Proyecto Elemental', 'The industrialization of agriculture has led to a general detachment of society from the processes of food production. \nThe supermarket is for many the only remaining intersection with the world of agriculture. \nThe supernatural-series is giving oversight', 'images/noticias/xxx3.jpg', NULL),
(4, '2014-05-07 12:12:00', 'Uli Westphal en Proyecto Elemental', 'Ataviada en un sexy vestido negro, la cantante colombiana Shakira estrenó el vídeo "Dare" (La la la), tercer sencillo de su más reciente producción discográfica que lleva su nombre.\n\nCon sus usuales movimientos de vientre y caderas, además de nuevos pasos estilo electrónico, la colombiana desarrolla el ambiente del clip grabado en Lisboa, Portugal, según habían informado varios medios internacionales.\n\nEn el vídeo también se le ve a la colombiana caminar sensualmente por las calles de la mencionada ciudad donde es perseguida por un grupo de personas que después la acompañan en una coreografía.\n\nAl final, otro puñado de personas se congrega junto a la colombiana en la azotea de un edificio lo que convierten en un estilo de discoteca para bailar al ritmo de la música.\n\n"Dare", que también tiene la versión en español adaptada para el Mundial de Fútbol Brasil 2014, es un canción tipo electro-pop dance en la que la colombiana reta a su chico a ser atrevido y demostrarle su amor con un beso frente a todos en la pista de baile.\n\nLa canción ya está empezando a cobrar popularidad en las ondas radiales especialmente en Europa donde se convirtió en uno de los sencillos favoritos del disco la semana se su lanzamiento, según iTunes.', 'images/noticias/xxx4.jpg', NULL),
(5, '2014-05-06 11:10:00', 'Venezuela y Alemania unidos en Proyecto Elemental', 'The industrialization of agriculture has led to a general detachment of society from the processes of food production. \nThe supermarket is for many the only remaining intersection with the world of agriculture. \nThe supernatural-series is giving oversight', 'images/noticias/xxx5.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
  `idobra` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`idobra`),
  KEY `idartista` (`idartista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prensa`
--

CREATE TABLE IF NOT EXISTS `prensa` (
  `idprensa` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `verni_fini`
--

CREATE TABLE IF NOT EXISTS `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artista_expo`
--
ALTER TABLE `artista_expo`
  ADD CONSTRAINT `artista_expo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artista_expo_ibfk_2` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artista_prensa`
--
ALTER TABLE `artista_prensa`
  ADD CONSTRAINT `artista_prensa_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artista_prensa_ibfk_2` FOREIGN KEY (`idprensa`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `audio`
--
ALTER TABLE `audio`
  ADD CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conversatorio`
--
ALTER TABLE `conversatorio`
  ADD CONSTRAINT `conversatorio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expo_obra`
--
ALTER TABLE `expo_obra`
  ADD CONSTRAINT `expo_obra_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expo_obra_ibfk_2` FOREIGN KEY (`idobra`) REFERENCES `obra` (`idobra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `montaje`
--
ALTER TABLE `montaje`
  ADD CONSTRAINT `montaje_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prensa`
--
ALTER TABLE `prensa`
  ADD CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verni_fini`
--
ALTER TABLE `verni_fini`
  ADD CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
