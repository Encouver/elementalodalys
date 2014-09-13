/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50156
Source Host           : localhost:3306
Source Database       : elemental

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2014-09-13 18:09:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `artista`
-- ----------------------------
DROP TABLE IF EXISTS `artista`;
CREATE TABLE `artista` (
  `idartista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `biografia` text,
  PRIMARY KEY (`idartista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista
-- ----------------------------

-- ----------------------------
-- Table structure for `artista_expo`
-- ----------------------------
DROP TABLE IF EXISTS `artista_expo`;
CREATE TABLE `artista_expo` (
  `idcolectiva_feria` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idcolectiva_feria`),
  KEY `idexposicion` (`idexposicion`),
  KEY `idartista` (`idartista`),
  CONSTRAINT `artista_expo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `artista_expo_ibfk_2` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista_expo
-- ----------------------------

-- ----------------------------
-- Table structure for `artista_prensa`
-- ----------------------------
DROP TABLE IF EXISTS `artista_prensa`;
CREATE TABLE `artista_prensa` (
  `idartista_prensa` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `idprensa` int(11) NOT NULL,
  PRIMARY KEY (`idartista_prensa`),
  KEY `idartista` (`idartista`),
  KEY `idprensa` (`idprensa`),
  CONSTRAINT `artista_prensa_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `artista_prensa_ibfk_2` FOREIGN KEY (`idprensa`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista_prensa
-- ----------------------------

-- ----------------------------
-- Table structure for `audio`
-- ----------------------------
DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `idaudio` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audio
-- ----------------------------

-- ----------------------------
-- Table structure for `catalogo`
-- ----------------------------
DROP TABLE IF EXISTS `catalogo`;
CREATE TABLE `catalogo` (
  `idcatalogo` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `portada_thumb` varchar(255) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `datos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcatalogo`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catalogo
-- ----------------------------

-- ----------------------------
-- Table structure for `conversatorio`
-- ----------------------------
DROP TABLE IF EXISTS `conversatorio`;
CREATE TABLE `conversatorio` (
  `idconversatorio` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idconversatorio`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `conversatorio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conversatorio
-- ----------------------------
INSERT INTO `conversatorio` VALUES ('1', 'sadsadsa', '1', 'sadsadsad');

-- ----------------------------
-- Table structure for `exposicion`
-- ----------------------------
DROP TABLE IF EXISTS `exposicion`;
CREATE TABLE `exposicion` (
  `idexposicion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre1` varchar(255) NOT NULL,
  `nombre2` varchar(255) DEFAULT NULL,
  `lugar` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `tipo` enum('FERIA','INDIVIDUAL','COLECTIVA') NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idexposicion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exposicion
-- ----------------------------
INSERT INTO `exposicion` VALUES ('1', 'sdasd', 'sadsad', 'asdasdasd', '2014-09-10 00:00:00', '2014-09-24 00:00:00', 'INDIVIDUAL', 'Venezuela');

-- ----------------------------
-- Table structure for `expo_obra`
-- ----------------------------
DROP TABLE IF EXISTS `expo_obra`;
CREATE TABLE `expo_obra` (
  `idexpo_obra` int(11) NOT NULL AUTO_INCREMENT,
  `idobra` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idexpo_obra`),
  KEY `idexposicion` (`idexposicion`),
  KEY `idobra` (`idobra`),
  CONSTRAINT `expo_obra_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expo_obra_ibfk_2` FOREIGN KEY (`idobra`) REFERENCES `obra` (`idobra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expo_obra
-- ----------------------------

-- ----------------------------
-- Table structure for `idiomas`
-- ----------------------------
DROP TABLE IF EXISTS `idiomas`;
CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(6) DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idiomas
-- ----------------------------
INSERT INTO `idiomas` VALUES ('1', 'es', 'Español');
INSERT INTO `idiomas` VALUES ('2', 'en', 'English');

-- ----------------------------
-- Table structure for `montaje`
-- ----------------------------
DROP TABLE IF EXISTS `montaje`;
CREATE TABLE `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idmontaje`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `montaje_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of montaje
-- ----------------------------

-- ----------------------------
-- Table structure for `noticia`
-- ----------------------------
DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticia
-- ----------------------------
INSERT INTO `noticia` VALUES ('1', '2014-09-08 22:10:55', 'xxx2.jpg', 'knbdf', 'Hola Hola Hola Elemental Bla de bla bla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis enim in velit suscipit, non egestas purus commodo. Fusce hendrerit lacinia ornare. Mauris nec nunc nibh. Aenean iaculis felis in egestas porttitor. Quisque non augue ex. Suspendisse maximus urna ac tincidunt consequat. Sed eget mattis arcu. Phasellus convallis magna ipsum, id placerat tellus dapibus in. Morbi gravida eu odio bibendum semper. Duis tellus nisl, aliquam at sagittis at, posuere eu dui. Praesent mollis fringilla justo. Quisque eget sem dui.  Phasellus magna odio, laoreet eu dapibus et, scelerisque a enim. Suspendisse nec aliquet massa. Aliquam euismod augue eget turpis sagittis fermentum vel quis nisl. Mauris ac magna sed nisl congue placerat eget quis sapien. Aliquam convallis lorem sit amet risus tempor malesuada. Quisque interdum mi sit amet lectus pellentesque, in dictum ex volutpat. In hac habitasse platea dictumst. Sed vel convallis lorem, non tempor nunc. Etiam in augue vitae ligula rutrum porta. Nullam congue et urna eget commodo. Donec scelerisque tincidunt orci, eget molestie nisl consequat eu. Donec commodo vitae ex vel vehicula. Vestibulum mollis hendrerit bibendum.');
INSERT INTO `noticia` VALUES ('2', '2014-09-01 00:39:25', 'xxx.jpg', 'asdf', 'Esta es otra noticia', 'Donec lectus ligula, euismod nec lorem quis, venenatis congue arcu. Sed pharetra blandit lectus, nec dictum nisl condimentum quis. Nullam mollis purus ut rutrum ultricies. Curabitur sed egestas sem. Nullam aliquet felis gravida augue condimentum vehicula. Suspendisse potenti. Curabitur vitae mollis purus. Curabitur nibh felis, imperdiet a turpis nec, rhoncus imperdiet urna. Aenean volutpat arcu orci, vitae commodo leo pharetra ac. Morbi nisi ante, porttitor id feugiat ac, efficitur ut tortor. Nam eu ullamcorper quam. Aenean placerat turpis id aliquam varius. Pellentesque tempus metus elit, at laoreet arcu blandit a. Nunc vestibulum turpis id vestibulum pharetra.  Sed commodo venenatis posuere. Curabitur id vehicula justo. Duis congue, libero quis dictum volutpat, justo nulla molestie ligula, eu consectetur dolor est iaculis mauris. Praesent cursus quam dapibus erat sodales feugiat. Quisque aliquet lectus a imperdiet consequat. Ut tempor nisi eu orci commodo, at convallis nulla tincidunt. Proin eu feugiat orci. Nulla vestibulum aliquet eros, id malesuada sem convallis vel. Sed eu hendrerit lectus. Etiam venenatis, magna quis molestie semper, urna leo aliquam purus, vel euismod ex nisl non sapien. Mauris in nunc tempus, bibendum est tempor, tincidunt lectus. Curabitur pretium, sem in ultrices mollis, felis metus ullamcorper nunc, ut venenatis justo risus blandit libero.');

-- ----------------------------
-- Table structure for `obra`
-- ----------------------------
DROP TABLE IF EXISTS `obra`;
CREATE TABLE `obra` (
  `idobra` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idobra`),
  KEY `idartista` (`idartista`),
  CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of obra
-- ----------------------------

-- ----------------------------
-- Table structure for `prensa`
-- ----------------------------
DROP TABLE IF EXISTS `prensa`;
CREATE TABLE `prensa` (
  `idprensa` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prensa
-- ----------------------------

-- ----------------------------
-- Table structure for `tblsession`
-- ----------------------------
DROP TABLE IF EXISTS `tblsession`;
CREATE TABLE `tblsession` (
  `id` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tblsession
-- ----------------------------
INSERT INTO `tblsession` VALUES ('18faq14i38sl0n9tjb7fvpumf1', '1410648327', '');
INSERT INTO `tblsession` VALUES ('a2ohg483p7s2ug0g1s31sbbie5', '1410649296', 0x34626666633265376530646535386536656538343032376566306439303238395F5F72657475726E55726C7C733A32353A222F656C656D656E74616C6F64616C79732F7573756172696F73223B);

-- ----------------------------
-- Table structure for `tra_artista`
-- ----------------------------
DROP TABLE IF EXISTS `tra_artista`;
CREATE TABLE `tra_artista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `artistaid` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `artistaid` (`artistaid`),
  CONSTRAINT `tra_artista_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_artista_ibfk_2` FOREIGN KEY (`artistaid`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_artista
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_audio`
-- ----------------------------
DROP TABLE IF EXISTS `tra_audio`;
CREATE TABLE `tra_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `audioid` int(11) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `audioid` (`audioid`),
  CONSTRAINT `tra_audio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_audio_ibfk_2` FOREIGN KEY (`audioid`) REFERENCES `audio` (`idaudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_audio
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_catalogo`
-- ----------------------------
DROP TABLE IF EXISTS `tra_catalogo`;
CREATE TABLE `tra_catalogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pdf` varchar(255) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `catalogoid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `catalogoid` (`catalogoid`),
  CONSTRAINT `tra_catalogo_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_catalogo_ibfk_2` FOREIGN KEY (`catalogoid`) REFERENCES `catalogo` (`idcatalogo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_catalogo
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_conversatorio`
-- ----------------------------
DROP TABLE IF EXISTS `tra_conversatorio`;
CREATE TABLE `tra_conversatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `conversatorioid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `conversatorioid` (`conversatorioid`),
  CONSTRAINT `tra_conversatorio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_conversatorio_ibfk_2` FOREIGN KEY (`conversatorioid`) REFERENCES `conversatorio` (`idconversatorio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_conversatorio
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_exposicion`
-- ----------------------------
DROP TABLE IF EXISTS `tra_exposicion`;
CREATE TABLE `tra_exposicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) NOT NULL,
  `exposicionid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exposicionid` (`exposicionid`),
  KEY `idiomaid` (`idiomaid`),
  CONSTRAINT `tra_exposicion_ibfk_1` FOREIGN KEY (`exposicionid`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_exposicion_ibfk_2` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_exposicion
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_montaje`
-- ----------------------------
DROP TABLE IF EXISTS `tra_montaje`;
CREATE TABLE `tra_montaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `montajeid` (`montajeid`),
  CONSTRAINT `tra_montaje_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_montaje_ibfk_2` FOREIGN KEY (`montajeid`) REFERENCES `montaje` (`idmontaje`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_montaje
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_noticia`
-- ----------------------------
DROP TABLE IF EXISTS `tra_noticia`;
CREATE TABLE `tra_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `noticiaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `noticiaid` (`noticiaid`),
  CONSTRAINT `tra_noticia_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_noticia_ibfk_2` FOREIGN KEY (`noticiaid`) REFERENCES `noticia` (`idnoticia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_noticia
-- ----------------------------
INSERT INTO `tra_noticia` VALUES ('1', '1', '1', 'Hola', 'chao.');
INSERT INTO `tra_noticia` VALUES ('2', '2', '1', 'Helllo', 'bye.');
INSERT INTO `tra_noticia` VALUES ('3', '1', '2', 'Bien', 'aceptar');
INSERT INTO `tra_noticia` VALUES ('4', '2', '2', 'Good', 'Ok');

-- ----------------------------
-- Table structure for `tra_obra`
-- ----------------------------
DROP TABLE IF EXISTS `tra_obra`;
CREATE TABLE `tra_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `obraid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `obraid` (`obraid`),
  CONSTRAINT `tra_obra_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_obra_ibfk_2` FOREIGN KEY (`obraid`) REFERENCES `obra` (`idobra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_obra
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_prensa`
-- ----------------------------
DROP TABLE IF EXISTS `tra_prensa`;
CREATE TABLE `tra_prensa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `prensaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `prensaid` (`prensaid`),
  CONSTRAINT `tra_prensa_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_prensa_ibfk_2` FOREIGN KEY (`prensaid`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_prensa
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_verni_fini`
-- ----------------------------
DROP TABLE IF EXISTS `tra_verni_fini`;
CREATE TABLE `tra_verni_fini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `verni_finiid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `verni_finiid` (`verni_finiid`),
  CONSTRAINT `tra_verni_fini_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_verni_fini_ibfk_2` FOREIGN KEY (`verni_finiid`) REFERENCES `verni_fini` (`idverni_fini`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_verni_fini
-- ----------------------------

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Mantura', 'mantura', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 18:06:48');
INSERT INTO `usuarios` VALUES ('2', 'Marcos', 'marcos', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 18:07:02');
INSERT INTO `usuarios` VALUES ('3', 'Edgar', 'edgar', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 18:07:11');

-- ----------------------------
-- Table structure for `verni_fini`
-- ----------------------------
DROP TABLE IF EXISTS `verni_fini`;
CREATE TABLE `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of verni_fini
-- ----------------------------
