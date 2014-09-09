/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50156
Source Host           : localhost:3306
Source Database       : elemental

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2014-09-09 17:13:31
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
  `idconversatorio` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idconversatorio`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `conversatorio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conversatorio
-- ----------------------------

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
  PRIMARY KEY (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exposicion
-- ----------------------------

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
  `idioma` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idiomas
-- ----------------------------

-- ----------------------------
-- Table structure for `montaje`
-- ----------------------------
DROP TABLE IF EXISTS `montaje`;
CREATE TABLE `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
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
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticia
-- ----------------------------

-- ----------------------------
-- Table structure for `obra`
-- ----------------------------
DROP TABLE IF EXISTS `obra`;
CREATE TABLE `obra` (
  `idobra` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
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
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prensa
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_artista`
-- ----------------------------
DROP TABLE IF EXISTS `tra_artista`;
CREATE TABLE `tra_artista` (
  `idiomaid` int(11) NOT NULL,
  `artistaid` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`artistaid`),
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
  `idiomaid` int(11) NOT NULL,
  `audioid` int(11) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`idiomaid`,`audioid`),
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
  `pdf` varchar(255) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  `catalogoid` int(11) NOT NULL,
  PRIMARY KEY (`idiomaid`,`catalogoid`),
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
  `idiomaid` int(11) NOT NULL,
  `conversatorioid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`conversatorioid`),
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
  `pais` varchar(255) NOT NULL,
  `exposicionid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  PRIMARY KEY (`exposicionid`,`idiomaid`),
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
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`montajeid`),
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
  `idiomaid` int(11) NOT NULL,
  `noticiaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`noticiaid`),
  KEY `idiomaid` (`idiomaid`),
  KEY `noticiaid` (`noticiaid`),
  CONSTRAINT `tra_noticia_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tra_noticia_ibfk_2` FOREIGN KEY (`noticiaid`) REFERENCES `noticia` (`idnoticia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_noticia
-- ----------------------------

-- ----------------------------
-- Table structure for `tra_obra`
-- ----------------------------
DROP TABLE IF EXISTS `tra_obra`;
CREATE TABLE `tra_obra` (
  `idiomaid` int(11) NOT NULL,
  `obraid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`obraid`),
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
  `idiomaid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `prensaid` int(11) NOT NULL,
  PRIMARY KEY (`idiomaid`,`prensaid`),
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
  `idiomaid` int(11) NOT NULL,
  `verni_finiid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idiomaid`,`verni_finiid`),
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------

-- ----------------------------
-- Table structure for `verni_fini`
-- ----------------------------
DROP TABLE IF EXISTS `verni_fini`;
CREATE TABLE `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of verni_fini
-- ----------------------------
