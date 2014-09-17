-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2014 at 06:29 PM
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
  `ano` int(11) NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `biografia` text,
  PRIMARY KEY (`idartista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogo`
--

CREATE TABLE IF NOT EXISTS `catalogo` (
  `idcatalogo` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `portada_thumb` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) NOT NULL,
  `datos` enum('Español','Inglés','Alemán') NOT NULL DEFAULT 'Español',
  PRIMARY KEY (`idcatalogo`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversatorio`
--

CREATE TABLE IF NOT EXISTS `conversatorio` (
  `idconversatorio` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idconversatorio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exposicion`
--

CREATE TABLE IF NOT EXISTS `exposicion` (
  `idexposicion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre1` varchar(255) NOT NULL,
  `nombre2` varchar(255) DEFAULT NULL,
  `lugar` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `tipo` enum('FERIA','INDIVIDUAL','COLECTIVA') NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(6) DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `montaje`
--

CREATE TABLE IF NOT EXISTS `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idmontaje`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
  `idobra` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` text,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idobra`),
  KEY `idartista` (`idartista`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prensa`
--

CREATE TABLE IF NOT EXISTS `prensa` (
  `idprensa` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE IF NOT EXISTS `tblsession` (
  `id` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tra_artista`
--

CREATE TABLE IF NOT EXISTS `tra_artista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `artistaid` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `artistaid` (`artistaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_audio`
--

CREATE TABLE IF NOT EXISTS `tra_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `audioid` int(11) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `audioid` (`audioid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_conversatorio`
--

CREATE TABLE IF NOT EXISTS `tra_conversatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `conversatorioid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `conversatorioid` (`conversatorioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_exposicion`
--

CREATE TABLE IF NOT EXISTS `tra_exposicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) NOT NULL,
  `exposicionid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exposicionid` (`exposicionid`),
  KEY `idiomaid` (`idiomaid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_montaje`
--

CREATE TABLE IF NOT EXISTS `tra_montaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `montajeid` (`montajeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_noticia`
--

CREATE TABLE IF NOT EXISTS `tra_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `noticiaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `noticiaid` (`noticiaid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_obra`
--

CREATE TABLE IF NOT EXISTS `tra_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `obraid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `obraid` (`obraid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_prensa`
--

CREATE TABLE IF NOT EXISTS `tra_prensa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `prensaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `prensaid` (`prensaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_verni_fini`
--

CREATE TABLE IF NOT EXISTS `tra_verni_fini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `verni_finiid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `verni_finiid` (`verni_finiid`)
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `verni_fini`
--

CREATE TABLE IF NOT EXISTS `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

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
-- Constraints for table `montaje`
--
ALTER TABLE `montaje`
  ADD CONSTRAINT `montaje_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prensa`
--
ALTER TABLE `prensa`
  ADD CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_artista`
--
ALTER TABLE `tra_artista`
  ADD CONSTRAINT `tra_artista_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_artista_ibfk_2` FOREIGN KEY (`artistaid`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_audio`
--
ALTER TABLE `tra_audio`
  ADD CONSTRAINT `tra_audio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_audio_ibfk_2` FOREIGN KEY (`audioid`) REFERENCES `audio` (`idaudio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_conversatorio`
--
ALTER TABLE `tra_conversatorio`
  ADD CONSTRAINT `tra_conversatorio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_conversatorio_ibfk_2` FOREIGN KEY (`conversatorioid`) REFERENCES `conversatorio` (`idconversatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_exposicion`
--
ALTER TABLE `tra_exposicion`
  ADD CONSTRAINT `tra_exposicion_ibfk_1` FOREIGN KEY (`exposicionid`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_exposicion_ibfk_2` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_montaje`
--
ALTER TABLE `tra_montaje`
  ADD CONSTRAINT `tra_montaje_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_montaje_ibfk_2` FOREIGN KEY (`montajeid`) REFERENCES `montaje` (`idmontaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_noticia`
--
ALTER TABLE `tra_noticia`
  ADD CONSTRAINT `tra_noticia_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_noticia_ibfk_2` FOREIGN KEY (`noticiaid`) REFERENCES `noticia` (`idnoticia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_obra`
--
ALTER TABLE `tra_obra`
  ADD CONSTRAINT `tra_obra_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_obra_ibfk_2` FOREIGN KEY (`obraid`) REFERENCES `obra` (`idobra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_prensa`
--
ALTER TABLE `tra_prensa`
  ADD CONSTRAINT `tra_prensa_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_prensa_ibfk_2` FOREIGN KEY (`prensaid`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra_verni_fini`
--
ALTER TABLE `tra_verni_fini`
  ADD CONSTRAINT `tra_verni_fini_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_verni_fini_ibfk_2` FOREIGN KEY (`verni_finiid`) REFERENCES `verni_fini` (`idverni_fini`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verni_fini`
--
ALTER TABLE `verni_fini`
  ADD CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
