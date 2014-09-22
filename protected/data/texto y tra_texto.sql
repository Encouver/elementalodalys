-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2014 at 06:16 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

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
-- Table structure for table `texto`
--

CREATE TABLE IF NOT EXISTS `texto` (
`idtexto` int(11) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `texto`
--

INSERT INTO `texto` (`idtexto`, `lugar`, `texto`) VALUES
(1, 'index_derecha', 'ELEMENTAL se aleja de la clásica relación galería-comisario-artista para plantear la construcción de las exposiciónes de una manera orgánica. Son los propios artistas que participan en el proyecto quienes, en diálogo permanente con la galerista Odalys Sánchez, proponen e incorporan a nuevos artistas al proyecto con el objeto de ampliar el arco narrativo del mismo. Son también los artistas quienes, junto a la galerista, ejercen de comisarios, trazando el planteamiento de la muestra.');

-- --------------------------------------------------------

--
-- Table structure for table `tra_texto`
--

CREATE TABLE IF NOT EXISTS `tra_texto` (
`id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `textoid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tra_texto`
--

INSERT INTO `tra_texto` (`id`, `texto`, `textoid`, `idiomaid`) VALUES
(4, 'ingles', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `texto`
--
ALTER TABLE `texto`
 ADD PRIMARY KEY (`idtexto`);

--
-- Indexes for table `tra_texto`
--
ALTER TABLE `tra_texto`
 ADD PRIMARY KEY (`id`), ADD KEY `textoid` (`textoid`), ADD KEY `idiomaid` (`idiomaid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `texto`
--
ALTER TABLE `texto`
MODIFY `idtexto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tra_texto`
--
ALTER TABLE `tra_texto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tra_texto`
--
ALTER TABLE `tra_texto`
ADD CONSTRAINT `tra_texto_ibfk_1` FOREIGN KEY (`textoid`) REFERENCES `texto` (`idtexto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
