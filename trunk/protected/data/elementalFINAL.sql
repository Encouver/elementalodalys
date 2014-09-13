-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2014 at 01:20 AM
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
-- Table structure for table `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
`idartista` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `biografia` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `artista_expo`
--

CREATE TABLE IF NOT EXISTS `artista_expo` (
`idcolectiva_feria` int(11) NOT NULL,
  `idartista` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `artista_prensa`
--

CREATE TABLE IF NOT EXISTS `artista_prensa` (
`idartista_prensa` int(11) NOT NULL,
  `idartista` int(11) NOT NULL,
  `idprensa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
`idaudio` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogo`
--

CREATE TABLE IF NOT EXISTS `catalogo` (
`idcatalogo` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `portada_thumb` varchar(255) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `datos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversatorio`
--

CREATE TABLE IF NOT EXISTS `conversatorio` (
`idconversatorio` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `exposicion`
--

CREATE TABLE IF NOT EXISTS `exposicion` (
`idexposicion` int(11) NOT NULL,
  `nombre1` varchar(255) NOT NULL,
  `nombre2` varchar(255) DEFAULT NULL,
  `lugar` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `tipo` enum('FERIA','INDIVIDUAL','COLECTIVA') NOT NULL,
  `pais` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `exposicion`
--

INSERT INTO `exposicion` (`idexposicion`, `nombre1`, `nombre2`, `lugar`, `fecha_inicio`, `fecha_fin`, `tipo`, `pais`) VALUES
(1, 'Elemental 1|4', '', 'Orfila 5, Madrid. España', '2013-09-19 00:00:00', '2014-11-13 00:00:00', 'COLECTIVA', 'España'),
(2, 'Elemental 2|4', '', 'Orfila 5, Madrid. España', '2014-09-18 00:00:00', '2014-11-13 00:00:00', 'COLECTIVA', 'España'),
(3, 'SUMMA Art Fair 2013', '', 'Matadero, Madrid', '2013-09-19 00:00:00', '2013-09-22 00:00:00', 'FERIA', 'España');

-- --------------------------------------------------------

--
-- Table structure for table `expo_obra`
--

CREATE TABLE IF NOT EXISTS `expo_obra` (
`idexpo_obra` int(11) NOT NULL,
  `idobra` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
`id` int(11) NOT NULL,
  `idioma` varchar(6) DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `idiomas`
--

INSERT INTO `idiomas` (`id`, `idioma`, `nombre`) VALUES
(1, 'es', 'Español'),
(2, 'en', 'Inglés');

-- --------------------------------------------------------

--
-- Table structure for table `montaje`
--

CREATE TABLE IF NOT EXISTS `montaje` (
`idmontaje` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
`idnoticia` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `fecha`, `imagen`, `link`, `titulo`, `contenido`) VALUES
(1, '2014-09-08 22:10:55', 'xxx2.jpg', 'knbdf', 'Hola Hola Hola Elemental Bla de bla bla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis enim in velit suscipit, non egestas purus commodo. Fusce hendrerit lacinia ornare. Mauris nec nunc nibh. Aenean iaculis felis in egestas porttitor. Quisque non augue ex. Suspendisse maximus urna ac tincidunt consequat. Sed eget mattis arcu. Phasellus convallis magna ipsum, id placerat tellus dapibus in. Morbi gravida eu odio bibendum semper. Duis tellus nisl, aliquam at sagittis at, posuere eu dui. Praesent mollis fringilla justo. Quisque eget sem dui.  Phasellus magna odio, laoreet eu dapibus et, scelerisque a enim. Suspendisse nec aliquet massa. Aliquam euismod augue eget turpis sagittis fermentum vel quis nisl. Mauris ac magna sed nisl congue placerat eget quis sapien. Aliquam convallis lorem sit amet risus tempor malesuada. Quisque interdum mi sit amet lectus pellentesque, in dictum ex volutpat. In hac habitasse platea dictumst. Sed vel convallis lorem, non tempor nunc. Etiam in augue vitae ligula rutrum porta. Nullam congue et urna eget commodo. Donec scelerisque tincidunt orci, eget molestie nisl consequat eu. Donec commodo vitae ex vel vehicula. Vestibulum mollis hendrerit bibendum.'),
(2, '2014-09-01 00:39:25', 'xxx.jpg', 'asdf', 'Esta es otra noticia', 'Donec lectus ligula, euismod nec lorem quis, venenatis congue arcu. Sed pharetra blandit lectus, nec dictum nisl condimentum quis. Nullam mollis purus ut rutrum ultricies. Curabitur sed egestas sem. Nullam aliquet felis gravida augue condimentum vehicula. Suspendisse potenti. Curabitur vitae mollis purus. Curabitur nibh felis, imperdiet a turpis nec, rhoncus imperdiet urna. Aenean volutpat arcu orci, vitae commodo leo pharetra ac. Morbi nisi ante, porttitor id feugiat ac, efficitur ut tortor. Nam eu ullamcorper quam. Aenean placerat turpis id aliquam varius. Pellentesque tempus metus elit, at laoreet arcu blandit a. Nunc vestibulum turpis id vestibulum pharetra.  Sed commodo venenatis posuere. Curabitur id vehicula justo. Duis congue, libero quis dictum volutpat, justo nulla molestie ligula, eu consectetur dolor est iaculis mauris. Praesent cursus quam dapibus erat sodales feugiat. Quisque aliquet lectus a imperdiet consequat. Ut tempor nisi eu orci commodo, at convallis nulla tincidunt. Proin eu feugiat orci. Nulla vestibulum aliquet eros, id malesuada sem convallis vel. Sed eu hendrerit lectus. Etiam venenatis, magna quis molestie semper, urna leo aliquam purus, vel euismod ex nisl non sapien. Mauris in nunc tempus, bibendum est tempor, tincidunt lectus. Curabitur pretium, sem in ultrices mollis, felis metus ullamcorper nunc, ut venenatis justo risus blandit libero.');

-- --------------------------------------------------------

--
-- Table structure for table `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
`idobra` int(11) NOT NULL,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prensa`
--

CREATE TABLE IF NOT EXISTS `prensa` (
`idprensa` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE IF NOT EXISTS `tblsession` (
  `id` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`id`, `expire`, `data`) VALUES
('i8t1kjd63v8v12gorjm27clh05', 1410651778, 0x5f6c616e677c733a323a22656e223b38316331336631623566366337393161363364356661353864306466646439645f5f69647c733a353a2261646d696e223b38316331336631623566366337393161363364356661353864306466646439645f5f6e616d657c733a353a2261646d696e223b38316331336631623566366337393161363364356661353864306466646439645f5f7374617465737c613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tra_artista`
--

CREATE TABLE IF NOT EXISTS `tra_artista` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `artistaid` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `biografia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_audio`
--

CREATE TABLE IF NOT EXISTS `tra_audio` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `audioid` int(11) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `audio_ruta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_catalogo`
--

CREATE TABLE IF NOT EXISTS `tra_catalogo` (
`id` int(11) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `catalogoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_conversatorio`
--

CREATE TABLE IF NOT EXISTS `tra_conversatorio` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `conversatorioid` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_exposicion`
--

CREATE TABLE IF NOT EXISTS `tra_exposicion` (
`id` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `exposicionid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tra_exposicion`
--

INSERT INTO `tra_exposicion` (`id`, `pais`, `exposicionid`, `idiomaid`) VALUES
(1, 'Spain', 1, 2),
(2, 'Spain', 2, 2),
(3, 'Spain', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tra_montaje`
--

CREATE TABLE IF NOT EXISTS `tra_montaje` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_noticia`
--

CREATE TABLE IF NOT EXISTS `tra_noticia` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `noticiaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tra_noticia`
--

INSERT INTO `tra_noticia` (`id`, `idiomaid`, `noticiaid`, `titulo`, `contenido`) VALUES
(2, 2, 1, 'Helllo', 'Esto es ingles. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a nibh euismod, commodo magna vel, condimentum ligula. Etiam cursus convallis lectus sed tincidunt. Nullam vel ultricies magna. Proin ullamcorper ac augue sit amet posuere. Nullam quis eros tempus, placerat lorem vel, mattis tellus. Cras id dapibus neque. Duis dictum nulla ac eleifend vehicula.  Aliquam suscipit quis ante sit amet tincidunt. Nam dapibus neque vel nunc pharetra rhoncus. Etiam nec elementum mi. Aliquam consectetur ut purus sed egestas. In pretium odio at nulla gravida vestibulum. Proin scelerisque euismod rhoncus. Curabitur pellentesque neque eget odio tempor iaculis.  Donec in orci ac dui lacinia mattis ut tincidunt diam. Sed vestibulum at leo id fringilla. Aenean ac nisi erat. Praesent sed condimentum est. Sed nibh libero, pulvinar non neque a, congue tincidunt ligula. Sed non magna hendrerit, malesuada urna sit amet, gravida enim. Quisque felis urna, semper at metus at, egestas tempus turpis. Nullam in sapien in turpis placerat sagittis. Curabitur ornare dapibus ipsum.'),
(4, 2, 2, 'Good', 'Ingles Ingles Ingles. Morbi urna neque, blandit fringilla sem id, cursus commodo augue. Proin sem enim, luctus at erat non, euismod fermentum leo. Vivamus feugiat dolor erat, sed molestie ex pulvinar eget. Maecenas in neque id elit euismod pulvinar vitae vel mi. Mauris ut scelerisque massa. Morbi eget elit in orci vulputate ultrices. Nam ac dictum arcu. Vivamus et dictum libero. Vivamus dignissim neque non mauris faucibus, sit amet dignissim magna varius. In in dolor vitae diam ultricies vestibulum. Ut volutpat orci non nibh vulputate convallis. Ut dignissim nisl quis ligula tristique facilisis. Fusce efficitur velit sit amet laoreet fringilla. Mauris iaculis nibh eget dapibus tristique.  Curabitur tortor nunc, viverra sit amet dictum maximus, dictum at dui. Aenean eget pretium nisi, vitae malesuada neque. Nullam vehicula, nulla eu lacinia interdum, eros lectus pulvinar risus, sed pellentesque sem erat mollis enim. Ut tincidunt neque sed mauris porta lacinia. Nulla ac leo mauris. Phasellus at urna bibendum, accumsan quam non, euismod dui. Duis eu turpis cursus, condimentum dolor sit amet, sollicitudin libero. Duis fermentum lobortis metus, eget congue nisl lacinia lacinia. Pellentesque pharetra suscipit euismod. Pellentesque tristique nibh eu urna dictum pharetra. Nulla est metus, dapibus vel mi vel, pretium elementum tortor. In vel diam eros. Maecenas in fringilla neque. Nulla vel lacus tristique nisi dictum lacinia vel non purus. Nulla hendrerit accumsan nisl, vel laoreet enim luctus vitae.');

-- --------------------------------------------------------

--
-- Table structure for table `tra_obra`
--

CREATE TABLE IF NOT EXISTS `tra_obra` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `obraid` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_prensa`
--

CREATE TABLE IF NOT EXISTS `tra_prensa` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `prensaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_verni_fini`
--

CREATE TABLE IF NOT EXISTS `tra_verni_fini` (
`id` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `verni_finiid` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `clave`, `fecha`) VALUES
(1, 'Mantura', 'mantura', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 22:36:48'),
(2, 'Marcos', 'marcos', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 22:37:02'),
(3, 'Edgar', 'edgar', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 22:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `verni_fini`
--

CREATE TABLE IF NOT EXISTS `verni_fini` (
`idverni_fini` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
 ADD PRIMARY KEY (`idartista`);

--
-- Indexes for table `artista_expo`
--
ALTER TABLE `artista_expo`
 ADD PRIMARY KEY (`idcolectiva_feria`), ADD KEY `idexposicion` (`idexposicion`), ADD KEY `idartista` (`idartista`);

--
-- Indexes for table `artista_prensa`
--
ALTER TABLE `artista_prensa`
 ADD PRIMARY KEY (`idartista_prensa`), ADD KEY `idartista` (`idartista`), ADD KEY `idprensa` (`idprensa`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
 ADD PRIMARY KEY (`idaudio`), ADD KEY `idexposicion` (`idexposicion`);

--
-- Indexes for table `catalogo`
--
ALTER TABLE `catalogo`
 ADD PRIMARY KEY (`idcatalogo`), ADD KEY `idexposicion` (`idexposicion`);

--
-- Indexes for table `conversatorio`
--
ALTER TABLE `conversatorio`
 ADD PRIMARY KEY (`idconversatorio`), ADD KEY `idexposicion` (`idexposicion`);

--
-- Indexes for table `exposicion`
--
ALTER TABLE `exposicion`
 ADD PRIMARY KEY (`idexposicion`);

--
-- Indexes for table `expo_obra`
--
ALTER TABLE `expo_obra`
 ADD PRIMARY KEY (`idexpo_obra`), ADD KEY `idexposicion` (`idexposicion`), ADD KEY `idobra` (`idobra`);

--
-- Indexes for table `idiomas`
--
ALTER TABLE `idiomas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `montaje`
--
ALTER TABLE `montaje`
 ADD PRIMARY KEY (`idmontaje`), ADD KEY `idexposicion` (`idexposicion`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
 ADD PRIMARY KEY (`idnoticia`);

--
-- Indexes for table `obra`
--
ALTER TABLE `obra`
 ADD PRIMARY KEY (`idobra`), ADD KEY `idartista` (`idartista`);

--
-- Indexes for table `prensa`
--
ALTER TABLE `prensa`
 ADD PRIMARY KEY (`idprensa`), ADD KEY `idexposicion` (`idexposicion`);

--
-- Indexes for table `tblsession`
--
ALTER TABLE `tblsession`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tra_artista`
--
ALTER TABLE `tra_artista`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `artistaid` (`artistaid`);

--
-- Indexes for table `tra_audio`
--
ALTER TABLE `tra_audio`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `audioid` (`audioid`);

--
-- Indexes for table `tra_catalogo`
--
ALTER TABLE `tra_catalogo`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `catalogoid` (`catalogoid`);

--
-- Indexes for table `tra_conversatorio`
--
ALTER TABLE `tra_conversatorio`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `conversatorioid` (`conversatorioid`);

--
-- Indexes for table `tra_exposicion`
--
ALTER TABLE `tra_exposicion`
 ADD PRIMARY KEY (`id`), ADD KEY `exposicionid` (`exposicionid`), ADD KEY `idiomaid` (`idiomaid`);

--
-- Indexes for table `tra_montaje`
--
ALTER TABLE `tra_montaje`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `montajeid` (`montajeid`);

--
-- Indexes for table `tra_noticia`
--
ALTER TABLE `tra_noticia`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `noticiaid` (`noticiaid`);

--
-- Indexes for table `tra_obra`
--
ALTER TABLE `tra_obra`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `obraid` (`obraid`);

--
-- Indexes for table `tra_prensa`
--
ALTER TABLE `tra_prensa`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `prensaid` (`prensaid`);

--
-- Indexes for table `tra_verni_fini`
--
ALTER TABLE `tra_verni_fini`
 ADD PRIMARY KEY (`id`), ADD KEY `idiomaid` (`idiomaid`), ADD KEY `verni_finiid` (`verni_finiid`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indexes for table `verni_fini`
--
ALTER TABLE `verni_fini`
 ADD PRIMARY KEY (`idverni_fini`), ADD KEY `idexposicion` (`idexposicion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
MODIFY `idartista` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artista_expo`
--
ALTER TABLE `artista_expo`
MODIFY `idcolectiva_feria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artista_prensa`
--
ALTER TABLE `artista_prensa`
MODIFY `idartista_prensa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
MODIFY `idaudio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catalogo`
--
ALTER TABLE `catalogo`
MODIFY `idcatalogo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `conversatorio`
--
ALTER TABLE `conversatorio`
MODIFY `idconversatorio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exposicion`
--
ALTER TABLE `exposicion`
MODIFY `idexposicion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expo_obra`
--
ALTER TABLE `expo_obra`
MODIFY `idexpo_obra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `montaje`
--
ALTER TABLE `montaje`
MODIFY `idmontaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `obra`
--
ALTER TABLE `obra`
MODIFY `idobra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prensa`
--
ALTER TABLE `prensa`
MODIFY `idprensa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_artista`
--
ALTER TABLE `tra_artista`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_audio`
--
ALTER TABLE `tra_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_catalogo`
--
ALTER TABLE `tra_catalogo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_conversatorio`
--
ALTER TABLE `tra_conversatorio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_exposicion`
--
ALTER TABLE `tra_exposicion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tra_montaje`
--
ALTER TABLE `tra_montaje`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_noticia`
--
ALTER TABLE `tra_noticia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tra_obra`
--
ALTER TABLE `tra_obra`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_prensa`
--
ALTER TABLE `tra_prensa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tra_verni_fini`
--
ALTER TABLE `tra_verni_fini`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `verni_fini`
--
ALTER TABLE `verni_fini`
MODIFY `idverni_fini` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `tra_catalogo`
--
ALTER TABLE `tra_catalogo`
ADD CONSTRAINT `tra_catalogo_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tra_catalogo_ibfk_2` FOREIGN KEY (`catalogoid`) REFERENCES `catalogo` (`idcatalogo`) ON DELETE CASCADE ON UPDATE CASCADE;

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
