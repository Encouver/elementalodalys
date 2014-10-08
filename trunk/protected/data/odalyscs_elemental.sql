-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2014 at 12:28 AM
-- Server version: 5.5.37-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `odalyscs_elemental`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `artista`
--

INSERT INTO `artista` (`idartista`, `nombre`, `apellido`, `ano`, `pais`, `biografia`) VALUES
(1, 'Krisztián', 'Ádám', 1976, 'Hungría', '<p>Culmina sus estudios en 2003 en la Universidad Moholy-Nagy de Arte en Budapest. Desde entonces ejerce como docente en dicha Universidad y paralelamente contin&uacute;a su labor art&iacute;stica. En 2011 es distinguido con el premio nacional Ferenczy No&eacute;mi para las artes aplicadas en Hungr&iacute;a.</p>\r\n\r\n<p>Su actividad se centra principalmente en el dise&ntilde;o y creaci&oacute;n de joyas, pero dentro de su obra encontramos as&iacute; mismo la creaci&oacute;n de objetos como premios, placas conmemorativas y medallas de tipo investigador y exploratorio. La pureza de formas, la intensa precisi&oacute;n y la innovaci&oacute;n son elementos caracter&iacute;sticos de su trabajo. En la producci&oacute;n de sus obras procura combinar tecnolog&iacute;as desconocidas para la orfebrer&iacute;a tradicional con materiales modernos, entre otros el acero inoxidable y el fresado fotoqu&iacute;mico.</p>\r\n'),
(2, 'Kiss', 'Aba Regő', 1977, 'Hungría', '<p>Kiss Aba Regő culmina sus estudios universitarios en 2004 en la Universidad Moholy Nagy de Arte y Dise&ntilde;o de Hungr&iacute;a, especializ&aacute;ndose en vidrio.</p>\r\n\r\n<p>Entre 2001-2002 realiza estudios de tecnolog&iacute;as de vidrio en la famosa f&aacute;brica Sueca de Orrefors, Costa Boda, trabajando entre otros para el artista Bertil Vallien.</p>\r\n\r\n<p>En el 2007 trabaja en Bristol, Inglaterra, como director art&iacute;stico del Bristol Blue Glass entre los a&ntilde;os 2008 y 2009. Desde 2009 trabaja en Budapest, Hungr&iacute;a, y, desde 2013, imparte clases en la Universidad Moholy Nagy de Arte y Dise&ntilde;o.</p>\r\n'),
(3, 'Zoltan', 'Kunckel', 1975, 'Venezuela', '<p>KuZo (Zoltan Kunckel). Reside y trabaja entre Berl&iacute;n, Alemania; Budapest, Hungr&iacute;a, y Caracas, Distrito Capital, Venezuela.&nbsp;</p>\r\n\r\n<p>Entre sus estudios se destacan: MA-Arte en Contexto, Instituto de Arte en Contexto, Universidad de Berl&iacute;n, Alemania. MA- Artista Dise&ntilde;ador, Universidad Moholy-Nagy de Arte, Budapest.&nbsp;</p>\r\n\r\n<p>Inicia su carrera expositiva en el a&ntilde;o 1997. A nivel individual ha presentado: &ldquo;KuZo&rdquo; Galer&iacute;a Odalys, Caracas, VEN (2012). &ldquo;A-Tiras&rdquo;, Galer&iacute;a Parenthesis, Centro de Arte Los Galpones, Caracas, VEN (2012). &ldquo;The Way to the Top&rdquo; KuZo-KUlture ZOne, Festival SZIGET, Budapest, HUN (2011). &ldquo;A_TIRAS&rdquo;, Club Na&uacute;tico, Maracaibo, VEN (2001).</p>\r\n\r\n<p>Entre sus exposiciones de car&aacute;cter colectivo m&aacute;s recientes cabe mencionar: &ldquo;Hydromemories&rdquo;, Museo Regional de Ciencias Naturales, Tur&iacute;n (2012); Trashumantes, urbanos e &iacute;ntimos, Sala 8 Museo de Arte Contempor&aacute;neo, Caracas (2011); Trashumantes, urbanos e &iacute;ntimos, 1&ordf; Bienal de Arte Contempor&aacute;neo, Universidad de Los Andes, Estado M&eacute;rida, Venezuela; &ldquo;XXI Feria Iberoamericana de Arte&rdquo;, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; &ldquo;Esta Casa est&aacute; Sonada&rdquo;, X Velada Santa Luc&iacute;a, Maracaibo, Estado Zulia (2010). Aus dem Kontext, Universidad de Arte de Berl&iacute;n, Berl&iacute;n; Metanationale, Arttransponder, Berl&iacute;n; Hidromemorias ICC, Berl&iacute;n; Hidromemorias, Museo de Arte Contempor&aacute;neo, Caracas (2009).&nbsp;</p>\r\n\r\n<p>Ha sido reconocido con la Menci&oacute;n de Honor otorgada por Vitrum, 32&ordm; Sal&oacute;n Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) y con el Premio Francisco Narv&aacute;ez, 59&ordm; Sal&oacute;n Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).</p>\r\n'),
(4, '<x></x>', 'Llobet & Pons', 1978, 'España', '<p>Jasmina Llobet y Luis Fern&aacute;ndez Pons viven en Berl&iacute;n y Barcelona desde 2001 y trabajan como colectivo, desarrollando su trabajo en el campo de la instalaci&oacute;n, escultura y arte en el espacio p&uacute;blico.</p>\r\n\r\n<p>Han realizado exposiciones individuales en CAS, Osaka, Jap&oacute;n (2013); Lokaal01, Amberes, B&eacute;lgica (2012); y en The Process Room del Museo Irland&eacute;s de Arte Moderno, Dubl&iacute;n (2010).&nbsp;</p>\r\n\r\n<p>Han realizado residencias y estancias de trabajo en Laznia Centre for Contemporary Art, Gdansk, Polonia (2013); Akiyoshidai International Art Village, Yamaguchi, Jap&oacute;n (2011); Seoul Art Space Geumcheon, Se&uacute;l, Corea del Sur (2010); y en Turqu&iacute;a, en el centro Platform Garanti (2009).</p>\r\n\r\n<p>Entre sus exposiciones colectivas destacan la Setouchi Triennale, Islas de Seto, Jap&oacute;n (2013), fairgrounds, Little Berlin, Philadelphia, EEUU (2012); ARCOmadrid. Stand Galer&iacute;a Adhoc (Vigo). Madrid (2012); Destino / Zielort: Berlin, Studio 1 - Bethanien, Berlin, Alemania (2011); Fare-Well, Brain Factory, Se&uacute;l, Corea del Sur (2010); Hello World, Itokoku Historical Museum, Fukuoka, Jap&oacute;n (2009); Manifesta 7, Proyecto Tabula Rasa (en colaboraci&oacute;n con OASberlin), Bolzano, Italia (2008); y madrid28045, Intermedi&aelig;/Matadero, Madrid (2007).</p>\r\n'),
(5, 'Irina', 'Novarese', 1972, 'Italia', '<p>Nace en Torino, Italia y reside en Berl&iacute;n desde el a&ntilde;o 2000. Su trabajo incluye el desarrollo de instalaciones, dibujos, videos y proyectos interdisciplinarios.</p>\r\n\r\n<p>Irina Novarese recibi&oacute; su licenciatura en Bellas Artes en la Academia de Bellas Artes de Torino en el a&ntilde;o 1996 y una maestr&iacute;a de Arte en contexto en el prestigioso Institut f&uuml;r Kunst im Kontext de la Universit&auml;t der K&uuml;nste Berlin en el a&ntilde;o 2008.</p>\r\n\r\n<p>Ha realizado exposiciones individuales en Italia, espec&iacute;ficamente en Torino y Pescara (desde 1994 hasta 2011); Ha expuesto en Espa&ntilde;a en la Galer&iacute;a Can&eacute;m (2007 y 2011); e Igualmente ha expuesto en Alemania en la Galer&iacute;a VBM de Berlin (2010). Irina ha expuesto en varias galer&iacute;as, museos y proyectos off-site en Italia, Espa&ntilde;a, Venezuela, China, Alemania, Francia, Polonia, Estados Unidos y Hungr&iacute;a. Del mismo modo, ha formado parte de diferentes residencias art&iacute;sticas en Italia, Serbia y Estados Unidos.</p>\r\n\r\n<p>Ha tenido una participaci&oacute;n muy activa en varios proyectos art&iacute;sticos interdisciplinarios y participativos, algunos de ellos fueron presentados en la Bienal de Arquitectura de Venecia (2006) y en la Bienal Hait&iacute; Guetto (2012). Su obra se encuentra representada en colecciones privadas y p&uacute;blicas; y ha sido bien acogida en las ferias de arte internacionales donde ha participado.</p>\r\n'),
(6, 'Balázs', 'Sipos', 1979, 'Hungría', '<p>Bal&aacute;zs Sipos realiz&oacute; sus estudios universitarios en la Universidad Moholy Nagy de Arte y Dise&ntilde;o de Hungr&iacute;a, especializ&aacute;ndose en vidrio.</p>\r\n\r\n<p>Despu&eacute;s de obtener su diploma, entre 2003 y 2005 trabaj&oacute; en la compa&ntilde;&iacute;a Ajka Krist&aacute;ly Zrt. como dise&ntilde;ador, ocup&aacute;ndose de la aplicaci&oacute;n de la t&eacute;cnica casting en la producci&oacute;n industrial.</p>\r\n\r\n<p>El premio Prima Primissima fue fabricado aqu&iacute;, seg&uacute;n su dise&ntilde;o. Paralelamente fue construyendo su propio taller en Budapest, lo cual le proporciona la experiencia tecnol&oacute;gica necesaria con la cual se producen sus estatuas y otros objetos de vidrio (p.ej. premios, elementos de arquitectura interior, etc).</p>\r\n\r\n<p>Obtuvo el premio Lajos Kozma entre 2007 y 2009, lo cual contribuy&oacute; al desarrollo de sus estatuas y su lenguaje formativo. Particip&oacute; en numerosas exposiciones y simposios, obteniendo el premio Noemi Ferenczy en 2011. Sus obras fueron seleccionadas y publicadas en dos ocasiones en el New Glass Review.</p>\r\n\r\n<p>Durante cinco a&ntilde;os fue docente en la Escuela de Artes Aplicadas de Budapest, y desde 2012 da clases en la Universidad de Arte Moholy Nagy, adem&aacute;s de estudiar para su doctorado.</p>\r\n'),
(7, 'Uli', 'Westphal', 1980, 'Alemania', '<p>Uli Westphal es un artista visual que reside en Berl&iacute;n, Alemania.</p>\r\n\r\n<p>Acad&eacute;micamente se inicia estudiando Multimedia y Arte Ambiental entre La Universidad de Arte de Baltimore del Maryland Institute (USA) y la Academia Visual de las Artes en Enschede (NL). Obtiene su Maestr&iacute;a (Arte en Contexto) en la Universidad de Arte de Berl&iacute;n, Alemania.</p>\r\n\r\n<p>Sus obras tratan sobre la forma en la que los seres humanos perciben, representan y transforman el mundo natural. Westphal muestra inter&eacute;s particular en los conceptos err&oacute;neos e ideolog&iacute;as que forman nuestra percepci&oacute;n de la naturaleza. Su enfoque en los &uacute;ltimos a&ntilde;os ha sido la manera en la cual, las industrias productoras de alimentos transforman y retratan a la naturaleza.</p>\r\n\r\n<p>El trabajo de Westphal es multidisciplinario y basado en a&ntilde;os de investigaci&oacute;n, que consisten en colecciones, sistemas de clasificaci&oacute;n, simulaciones y experimentos. Ha sido expuesto mundialmente en galer&iacute;as y museos, y publicado en una amplia gama de revistas y libros.</p>\r\n');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `artista_expo`
--

INSERT INTO `artista_expo` (`idcolectiva_feria`, `idartista`, `idexposicion`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`idaudio`, `idexposicion`, `datos`, `audio_ruta`) VALUES
(1, 1, '', '09 - Why''d You Only Call Me When You''re High.mp3');

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

--
-- Dumping data for table `catalogo`
--

INSERT INTO `catalogo` (`idcatalogo`, `idexposicion`, `portada`, `portada_thumb`, `pdf`, `datos`) VALUES
(3, 1, 'portada_elemental_1de4.jpg', NULL, 'cat_elemental.pdf', 'Español'),
(4, 1, 'portada_elemental_1de4.jpg', NULL, 'cat_elemental_en.pdf', 'Inglés');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `conversatorio`
--

INSERT INTO `conversatorio` (`idconversatorio`, `link`, `idexposicion`, `descripcion`) VALUES
(1, 'https://www.youtube.com/watch?v=cfviTYnId_0', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `exposicion`
--

INSERT INTO `exposicion` (`idexposicion`, `nombre1`, `nombre2`, `lugar`, `fecha_inicio`, `fecha_fin`, `tipo`, `pais`) VALUES
(1, 'Elemental 1|4', '', 'Orfila 5, 28010, Madrid', '2013-09-19 00:00:00', '2013-11-03 00:00:00', 'COLECTIVA', 'España');

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
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
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
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `obra`
--

INSERT INTO `obra` (`idobra`, `idartista`, `imagen`, `imagen_thumb`, `descripcion`, `idexposicion`) VALUES
(1, 1, 'D3A1755191976EC97C1D7BD97C8A5E57.jpg', '', '1 Diamond Circle. 2011. Collar. Acero inoxidable. 0.3 x 29.5 x 29.5 cm', 1),
(2, 1, 'A228222D778DC8FF00A2541D7EFEC224.jpg', '', '\r\n2 Diamond Cloud I. 2012. Collar. Acero inoxidable. 3.5 x 7.5 x 18.5 cm', 1),
(3, 1, '4D91046F622CDB006EE50548DE6F5510.jpg', '', '\r\n3 Diamond Cloud II. 2012. Collar. Acero inoxidable. 4.5 x 10 x 18 cm', 1),
(4, 1, '2DC15B8D536CDF6FE87BE8A3D1398501.jpg', '', '\r\n4 Diamond Cloud III. 2013. Collar. Acero inoxidable. 14 x 11.5 x 2 cm', 1),
(5, 1, '5B09E34E85309893B2B4779D7BC143E6.jpg', '', '\r\n5 Diamond Foam I. 2013. Broche. Acero inoxidable. 7 x 7 x 20 cm', 1),
(6, 1, '79578BC1FDAD72EA862FB0FFED5CA7B3.jpg', '', '\r\n6 Diamond Foam II. 2013. Broche. Acero inoxidable. 11 x 14.5 x 6 cm', 1),
(7, 1, '6895FCA80E890BFC65DA14889E00F303.jpg', '', '\r\n7 FourStone. 2013. Aretes. Acero inoxidable. 9 x 5 x 2 cm', 1),
(8, 1, '0A78682237D267413D289C717A0004C9.jpg', '', '\r\n8 ThreeStone. 2013. Aretes. Acero inoxidable. 6 x 5 x 2 cm', 1),
(9, 1, 'D2C49933C0A46C5CD6E70489BBB5E1AA.jpg', '', '\r\n9 Command D. 2013. Collar. Acero inoxidable. 0.27 x 10 x 19 cm', 1),
(10, 2, 'D90A241B95F73714D768B377CF9FF309.jpg', '', '10 Reflection. 2011. Vaciado en vidrio. 54 x 60 cm', 1),
(11, 2, 'C0CA666C312C8A1A5E6B15CF0AA4D5F8.jpg', '', '\r\n11 Space Corridor. 2008. Vidrio vaciado y pulido. 20 x 33 x 5 cm', 1),
(12, 2, 'B47B9D4F8F83BBF1B54CCA96E842E64C.jpg', '', '\r\n12 Idol. 2001. Vaciado en vidrio. 26 x 12 cm', 1),
(13, 3, '0E56DAC6C88C0E50949E033F81027C78.jpg', '', '13 Víz III (Agua III). Serie Arsenal Venecia. 2013. Fine art print sobre aluminio dibond. 100 x 138 cm. Ed. 1/6', 1),
(14, 3, 'F6F10996214624BFB22B4A55A6231411.jpg', '', '\r\n14 Víz II (Agua II). Serie Istambul. 2013. Fine art print sobre aluminio dibond. 100.6 x 256 cm. Ed. 1/6', 1),
(15, 3, '26035867C13D5153BCE6BA6F6F5FE931.jpg', '', '\r\n15 Víz I (Agua I). Serie Barcelona. 2013. Fine art print sobre aluminio dibond (tríptico). 100.6 x 145 cm. Ed. 1/6', 1),
(16, 4, '9FC11E275CEC30A0E0B8853A3E6BD53F.jpg', '', '16 Kylemore. 2010. Tinta sobre papel. 21 x 29.7 cm', 1),
(17, 4, '56C92CB537B099619B5D3BAF551F22FF.jpg', '', '\r\n17 Fukuokakuko. 2009. Tinta sobre papel. 23 x 33 cm', 1),
(18, 4, '7A216DDBE566023741C482A49CBEA491.jpg', '', '\r\n18 Sin título (119.3). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(19, 4, '72E566166FC92C7AB142CE7E26AB009A.jpg', '', '\r\n19 Sin título (85.5). 2011. Tinta sobre papel. 24 x 32 cm', 1),
(20, 4, '84B1BA7333812FD02F9FABE82933336F.jpg', '', '\r\n20 Sin título (119.7). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(21, 4, '477F0FFB280E4DED01453AA0729BEB36.jpg', '', '\r\n21 Sin título (84.2). 2011. Tinta sobre papel. 24 x 32 cm', 1),
(22, 4, '8FFE88605BA7F93246AA2D03D3B2DB8F.jpg', '', '\r\n22 Sin título (119.4). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(23, 4, '5A898AD406F1655E133D209441FDFB80.jpg', '', '\r\n23 Sin título (119.1). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(24, 4, 'D88F36B4096258B98114CA86B12B7DFE.jpg', '', '\r\n24 Icosaedro. 2007. Palos de escoba y bridas. 200 x 250 x 250 cm. Ed. 3/5', 1),
(25, 5, '1A18B458569AD563F635E5ED6DA52493.jpg', '', '25 Somewhere #004. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm c/u (2 piezas)', 1),
(26, 5, 'D325FE7C4873E817772BC017763B6397.jpg', '', '\r\n26 Somewhere #005. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 1),
(27, 5, '0ED3C01DBA152F5249858149F8D008B7.jpg', '', '\r\n27 Somewhere #007. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 1),
(28, 5, 'BDFD668B5DC78235BD968BE48B744B7A.jpg', '', '\r\n28 Somewhere #006. 2012. AAA The desert series. Tinta sobre papel. 35 x 50 cm', 1),
(29, 5, 'D2E19A29DBD227269A64AB91CFE9D69A.jpg', '', '\r\n29 Somewhere #003. 2012. AAA The desert series. Tinta sobre papel. 64.2 x 44.2 cm', 1),
(30, 5, '73F7840115F6CE226BE49BF02663923A.jpg', '', '\r\n30 Somewhere #002. 2012. AAA The desert series. Tinta sobre papel. 35 x 50 cm', 1),
(31, 5, '2F139440C1CCA95BF3FFFC3F69EA8E0D.jpg', '', '\r\n31 How to lie with maps. 2013. Láminas de aluminio negro. Dimensiones variables', 1),
(32, 6, 'A31136513B0DBFB2797EA0C26029D275.jpg', '', '32 In private with myself. 2011. Vaciado en vidrio. 50 x 22 x 20 cm', 1),
(33, 6, 'D69B94722D06403AC158DCCCACD52BEB.jpg', '', '\r\n33 Connected to me. 2013. Vaciado en vidrio. 45 x 21 x 13 cm', 1),
(34, 6, '1BBCC042FCDFD9CDE09A9389C5A6521F.jpg', '', '\r\n34 Suzie. 2008. Vaciado en vidrio. 29 x 10 x 10 cm', 1),
(35, 6, '07703E1B119FE9A866B3C81313DA5E1A.jpg', '', '\r\n35 Yuck. 2009. Vaciado en vidrio. 21 x 14 x 13 cm', 1),
(36, 6, 'CBE9A5CB7A6B14A1299CAAE522478A4D.jpg', '', '\r\n36 Yummie. 2009. Vaciado en vidrio. 29 x 16 x 13 cm', 1),
(37, 6, '2979BE808DEFF7D4B17E318748BF033D.jpg', '', '\r\n37 Hot bath. 2009. Vaciado en vidrio. 18 x 18 x 11 cm', 1),
(38, 7, '2E384804510B0CDFA6285C077BB0515C.jpg', '', '38 Mutatoes. 2006 - 2013. Fotografía sobre aluminio dibond. 23.6 x 30 cm c/u (100 piezas)', 1),
(39, 7, '7A385A540395B5231CA69AE09943AEE8.jpg', '', '\r\n39 Shelflife. 2011. Luces fluorescentes, cables y madera. 122.5 x 250 cm', 1);

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
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subscripcion`
--

CREATE TABLE IF NOT EXISTS `subscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`id`, `expire`, `data`) VALUES
('abb8113885b1d1d351afb85dbe4d41b4', 1412743827, 0x454c456c616e67756167657c733a323a226573223b454c455f5f72657475726e55726c7c733a32373a222f656c656d656e74616c2f65732f7072656e73612f637265617465223b69647c733a313a2231223b454c455f5f69647c733a313a2231223b454c455f5f6e616d657c733a373a226d616e74757261223b454c455f5f7374617465737c613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `texto`
--

CREATE TABLE IF NOT EXISTS `texto` (
  `idtexto` int(11) NOT NULL AUTO_INCREMENT,
  `lugar` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`idtexto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `texto`
--

INSERT INTO `texto` (`idtexto`, `lugar`, `texto`) VALUES
(1, 'index_derecha', '<p><strong>ELEMENTAL </strong>se aleja de la cl&aacute;sica relaci&oacute;n galer&iacute;a-comisario-artista para plantear la construcci&oacute;n de las exposici&oacute;nes de una manera org&aacute;nica. Son los propios artistas que participan en el proyecto quienes, en di&aacute;logo permanente con la galerista Odalys S&aacute;nchez, proponen e incorporan a nuevos artistas al proyecto con el objeto de ampliar el arco narrativo del mismo. Son tambi&eacute;n los artistas quienes, junto a la galerista, ejercen de comisarios, trazando el planteamiento de la muestra.</p>\r\n'),
(2, 'preuba', '<p>esto es una <strong>prueba</strong></p>\r\n'),
(3, 'alianzas', '<p><strong>ELEMENTAL Proyecto</strong> cuenta con la colaboraci&oacute;n de:<br />\r\n<br />\r\n<strong style="line-height:1.6em">Institut f&uuml;r Kunst im Kontext de Berl&iacute;n</strong><br />\r\n<strong style="line-height:1.6em">Goethe Institut Caracas</strong><br />\r\n<strong style="line-height:1.6em">Universidad Moholy Nagy de Arte de Budapest</strong><br />\r\n<br />\r\n<span style="line-height:1.6em">Contamos adem&aacute;s con el apoyo de:</span><br />\r\n<br />\r\n<strong style="line-height:1.6em">Dr. Michael Fehr</strong><br />\r\n<span style="line-height:1.6em">Director y gerente del Instituto de Arte en Contexto de la Universidad de las Artes de Berl&iacute;n y Gerente y miembro de la junta directiva de la asociaci&oacute;n Wrkbundarchiv e.V. Museum der Dinge, Berl&iacute;n.</span><br />\r\n<br />\r\n<strong style="line-height:1.6em">Katharina Jedermann</strong><br />\r\n<span style="line-height:1.6em">Miembro fundador del Instituto de Arte en Contexto y profesora de Curadur&iacute;a, Pol&iacute;tica Cultural y Arte en espacios p&uacute;blicos.</span><br />\r\n<br />\r\n<strong style="line-height:1.6em">V&iacute;ctor Zarza</strong><br />\r\n<span style="line-height:1.6em">Cr&iacute;tico de arte de ABC Cultural y director del Departamento de Pintura y Restauraci&oacute;n (UCM).</span></p>\r\n'),
(4, 'becas', '<p>texto de becas</p>\r\n'),
(5, 'quienessomos', '<p><span style="font-size:20px">ELEMENTAL: principio o fundamento de una ciencia o arte, t&eacute;rmino que alude a los cuatro elementos tradicionales de la materia y, por extensi&oacute;n, a lo diverso dentro de la unidad.</span></p>\r\n\r\n<p><span style="font-size:22px"><strong>ELEMENTAL Proyecto</strong></span></p>\r\n\r\n<p>Proyecto heterog&eacute;neo en cuanto a procedimientos, estrategias, soportes y materiales se refiere, el conjunto de artistas emergentes compone una muestra de gran calidad est&eacute;tica y alto inter&eacute;s conceptual, inscrita, en su integridad, dentro de los par&aacute;metros de los discursos art&iacute;sticos m&aacute;s actuales y que invita a realizar una lectura de lo geom&eacute;trico a lo org&aacute;nico, abierta e imaginativa.</p>\r\n\r\n<p>ELEMENTAL se aleja de la cl&aacute;sica relaci&oacute;n galer&iacute;a-comisario-artista para plantear la construcci&oacute;n de las exposici&oacute;nes de una manera org&aacute;nica. Son los propios artistas que participan en el proyecto quienes, en di&aacute;logo permanente con la galerista Odalys S&aacute;nchez, proponen e incorporan a nuevos artistas al proyecto con el objeto de ampliar el arco narrativo del mismo. Son tambi&eacute;n los artistas quienes, junto a la galerista, ejercen de comisarios, trazando el planteamiento de la muestra.</p>\r\n\r\n<p>ELEMENTAL supone, adem&aacute;s, la presentaci&oacute;n de la pr&aacute;ctica totalidad de estos artistas ante el p&uacute;blico internacional: un primer paso en la tarea de promoci&oacute;n y divulgaci&oacute;n de valores emergentes con la que esta galer&iacute;a quiere poner en marcha una parte fundamental de su proyecto expositivo, que se enmarca, a su vez, dentro las actividades de la Fundaci&oacute;n Odalys, entre cuyos fines se encuentra el de poner en marcha un programa de becas y estancias para la formaci&oacute;n de artistas en el extranjero. ELEMENTAL 1-4 fue&nbsp;la primera de cuatro exposiciones dedicadas a una serie de artistas internacionales ligados a la ciudad de Berl&iacute;n, unos de los principales centros de la creaci&oacute;n contempor&aacute;nea a nivel mundial.</p>\r\n'),
(6, 'direcciones', '<p><strong>CARACAS - VENEZUELA</strong><br />\r\nC. Comercial Concresa, Nivel PB. Locales 115 y 116,<br />\r\nUrb. Prados del Este, Caracas 1080, Venezuela<br />\r\nTelfs: +58 212 9795942, +58 212 9761773, Fax: +58 212 9761773<br />\r\nodalys@odalys.com<br />\r\n<br />\r\n<strong>MADRID - ESPA&Ntilde;A</strong><br />\r\nOrfila 5, 28010, Madrid, Espa&ntilde;a<br />\r\nTel.: +34 913194011, +34 913896809<br />\r\ngaleria@odalys.com | info@odalys.es</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `textocuratorial`
--

CREATE TABLE IF NOT EXISTS `textocuratorial` (
  `idtextocuratorial` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `autor` varchar(255) NOT NULL,
  `cargo_autor` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idtextocuratorial`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tra_artista`
--

INSERT INTO `tra_artista` (`id`, `idiomaid`, `artistaid`, `pais`, `biografia`) VALUES
(1, 2, 1, 'Hungary', '<p>He completed his studies in 2003 at the Moholy-Nagy University of Art, Budapest. Since then he has taught at the University while continuing his work as an artist. In 2011 he won the Ferenczy No&eacute;mi award for applied art in Hungary.</p>\r\n\r\n<p><span style="line-height:1.6em">Primarily he designs and makes jewellery but his work also includes objects such as trophies, commemorative plaques and medals. Research and exploration underlie much of his work, in which purity of form, intense precision and innovation are characteristic elements. He tries to combine technologies unknown to traditional jewellery making with modern materials such as stainless steel and the use of photo-chemical milling.</span></p>\r\n'),
(2, 2, 2, 'Hungary', '<p>Regő Kiss Aba completed his degree at the Moholy Nagy University of Art and Design in Hungary in 2004, specialising in work with glass.</p>\r\n\r\n<p>In 2001-2002 he studied glass technology at the Orrefors Costa Boda factory in Sweden, working for the artist Bertil Vallien, among others.</p>\r\n\r\n<p>In 2007 he worked in England and was artistic director of Bristol Blue Glass in 2008-2009. Since then he has been working in Budapest and since 2013 has taught at the Moholy Nagy University of Art and Design.</p>\r\n'),
(3, 2, 3, 'Venezuela', '<p>The artist divides his time between Berlin in Germany, Budapest in Hungary, and Caracas in Venezuela.</p>\r\n\r\n<p>His qualifications include an MA in Art in Context from the Institute for Art in Context, University of Berlin, Germany, and an MA in Art and Design from the Moholy-Nagy University of Art, Budapest.</p>\r\n\r\n<p>He first exhibited his work in 1997. He has held the following individual exhibitions: &ldquo;KuZo&rdquo; Galer&iacute;a Odalys, Caracas (2012). &ldquo;A-Tiras&rdquo;, Galer&iacute;a Parenthesis, Centro de Arte Los Galpones, Caracas (2012). &ldquo;The Way to the Top&rdquo; KuZo-KUlture ZOne, Festival SZIGET, Budapest (2011). &ldquo;A_TIRAS&rdquo;, Club Na&uacute;tico, Maracaibo, Venezuela (2001).</p>\r\n\r\n<p>His work has also appeared in a number of recent collective exhibitions including: &ldquo;Hydromemories&rdquo;, Regional Museum of Natural Science, Turin (2012); Trashumantes, urbanos e &iacute;ntimos, Sala 8 Museum of Contemporary Art, Caracas (2011); Trashumantes, urbanos e &iacute;ntimos, 1st Contemporary Art Biennial, University of the Andes, Estado M&eacute;rida, Venezuela; &ldquo;XXI Feria Iberoamericana de Arte&rdquo;, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; &ldquo;Esta Casa est&aacute; Sonada&rdquo;, X Velada Santa Luc&iacute;a, Maracaibo, Estado Zulia (2010); Aus dem Kontext, Berlin University of Art; Metanationale, Arttransponder, Berlin; Hidromemorias, ICC, Berlin; Hidromemorias, Museum of Contemporary Art, Caracas (2009).</p>\r\n\r\n<p>He received an honourable mention from Vitrum, at the 32nd Sal&oacute;n Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) and won the Francisco Narv&aacute;ez award at the 59th Sal&oacute;n Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).</p>\r\n'),
(4, 2, 4, 'Spain', '<p>Jasmina Llobet and Luis Fern&aacute;ndez Pons are a visual artist collective based in Barcelona and Berlin since 2001, working together across the fields of installation, object sculpture and art in public space since 2002. They both studied Fine Art at the Berlin University of the Arts (UdK).</p>\r\n\r\n<p>They have participated in international residency programmes at Laznia Centre for Contemporary Art, Gdansk, Poland (2013); Akiyoshidai International Art Village (AIAV), Yamaguchi, Japan (2011); Seoul Art Space Geumcheon, South Korea (2010); and Platform Garanti, Istanbul, Turkey (2009). They are currently long-term residents in Hangar, Barcelona.</p>\r\n\r\n<p>They have had solo exhibitions at CAS, Osaka, Japan (2013); Lokaal 01, Antwerp, Belgium (2012); Galer&iacute;a Adhoc, Vigo, Spain (2012); and The Process Room at the Irish Museum of Modern Art, Dublin, Ireland (2010).</p>\r\n\r\n<p>Recent group exhibitions include Setouchi Triennale. Seto islands, Japan (2013), ARCOmadrid, Madrid (2012); fairgrounds, little berlin, Philadelphia, USA (2012); Destino / Zielort: Berlin, Studio 1, Bethanien, Berlin, Germany (2011); Fare-Well, Brain Factory, Seoul, South Korea (2010); Manifesta 7, Project Tabula Rasa (in collaboration with OASberlin), Bolzano, Italy (2008); and madrid28045, Intermedi&aelig;/Matadero, Madrid (2007).</p>\r\n'),
(5, 2, 5, 'Italy', '<p>Born in Turin, Italy, Irina Novarese lives in Berlin since 2000. Her works evolves around installations, drawings, videos and interdisicplinary projects.</p>\r\n\r\n<p>Irina Novarese received a Bachellor Art degree in Fine Arts from the Academy of Fine Arts, Turin, 1996 and a Master in Art in Context from the Institut f&uuml;r Kunst im Kontext of the Universit&auml;t der K&uuml;nste, Berlin.&nbsp;</p>\r\n\r\n<p>In 2008 She realized solo shows in Italy, in Turin and in Pescara in Galleries and Off-site projects (1994 till 2011), in Spain at the Galleria Can&eacute;m (2007 and 2011) and Germany at the VBM Gallery in Berlin (2010). She has exhibited at various galleries, museums, and off-site projects in Italy, Spain, Venezuela, China, Germany, France, Poland, United States and Hungary. And was taking part to different artistic residency in Italy, Serbia, USA.</p>\r\n\r\n<p>Active in many interdisciplinary and participative artistic projects, she presented some of them at the Venice Architecture Biennale (2006) and at the Haiti Ghetto Biennale (2012). Her work is in privates and public collections, and presented in international art fairs and art related publications.</p>\r\n'),
(6, 2, 6, 'Hungary', '<p>Bal&aacute;zs Sipos studied at the Moholy Nagy University of Art and Design in Hungary, specialising in work with glass.</p>\r\n\r\n<p>After qualifying, he was employed by the Ajka Krist&aacute;ly Zrt. company as a designer from 2003 to 2005, working on casting techniques in industrial production.</p>\r\n\r\n<p>The Prima Primissima award was manufactured there, based on one of his designs. At the same time he was working on the development of his own studio in Budapest, which gave him the necessary technical experience to produce his statues and other items made of glass, including prizes, items for interior decoration, etc.</p>\r\n\r\n<p>He won the Lajos Kozma award between 2007 and 2009, which contributed to the development of his statues and his creative language. He took part in a large number of exhibitions and symposia, winning the Noemi Ferenczy award in 2011. His works were featured on two occasions in the New Glass Review.</p>\r\n\r\n<p>For five years he taught at the School of Applied Art in Budapest and since 2012 he has taught at the Moholy Nagy University of Art, as well as studying for his doctorate.</p>\r\n');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tra_conversatorio`
--

INSERT INTO `tra_conversatorio` (`id`, `idiomaid`, `conversatorioid`, `descripcion`) VALUES
(1, 2, 1, '..');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tra_exposicion`
--

INSERT INTO `tra_exposicion` (`id`, `pais`, `exposicionid`, `idiomaid`) VALUES
(1, 'Spain', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tra_montaje`
--

CREATE TABLE IF NOT EXISTS `tra_montaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `tra_obra`
--

INSERT INTO `tra_obra` (`id`, `idiomaid`, `obraid`, `descripcion`) VALUES
(1, 2, 1, '1 Diamond Circle. 2011\r\nNecklace\r\nStainless steel\r\n0.3 x 29.5 x 29.5 cm'),
(2, 2, 2, '\r\n2 Diamond Cloud I. 2012. Necklace. Stainless steel. 3.5 x 7.5 x 18.5 cm'),
(3, 2, 3, '\r\n3 Diamond Cloud II. 2012. Necklace. Stainless steel. 4.5 x 10 x 18 cm'),
(4, 2, 4, '\r\n4 Diamond Cloud III. 2013. Necklace. Stainless steel. 14 x 11.5 x 2 cm'),
(5, 2, 5, '\r\n5 Diamond Foam I. 2013. Brooch. Stainless steel. 7 x 7 x 20 cm'),
(6, 2, 6, '\r\n6 Diamond Foam II. 2013. Brooch. Stainless steel. 11 x 14.5 x 6 cm'),
(7, 2, 7, '\r\n7 FourStone. 2013. Earring. Stainless steel. 9 x 5 x 2 cm'),
(8, 2, 8, '\r\n8 ThreeStone. 2013. Earring. Stainless steel. 6 x 5 x 2 cm'),
(9, 2, 9, '\r\n9 Command D. 2013. Necklace. Stainless steel. 0.27 x 10 x 19 cm'),
(10, 2, 10, '10 Reflection. 2011. Cast glass. 54 x 60 cm'),
(11, 2, 11, ' \r\n11 Space Corridor. 2008. Cast and polished glass. 20 x 33 x 5 cm'),
(12, 2, 12, '\r\n12 Idol. 2001. Cast glass. 26 x 12 cm. '),
(13, 2, 13, '13 Víz III (Water III). Arsenal Venecia Series. 2013. Fine art print on aluminum dibond. 100 x 138 cm. Ed. 1/6'),
(14, 2, 14, '\r\n14 Víz II (Water II). Istambul Series. 2013. Fine art print on aluminum dibond. 100.6 x 256 cm. Ed. 1/6'),
(15, 2, 15, '\r\n15 Víz I (Water I). Barcelona Series. 2013. Fine art print on aluminum dibond (triptych). 100.6 x 145 cm. Ed. 1/6'),
(16, 2, 16, '16 Kylemore. 2010. Ink on paper. 21 x 29.7 cm'),
(17, 2, 17, '\r\n17 Fukuokakuko. 2009. Ink on paper. 23 x 33 cm'),
(18, 2, 18, '\r\n18 Sin título (119.3). 2013. Ink on paper. 30 x 42 cm'),
(19, 2, 19, '\r\n19 Sin título (85.5). 2011. Ink on paper. 24 x 32 cm'),
(20, 2, 20, '\r\n20 Sin título (119.7). 2013. Ink on paper. 30 x 42 cm'),
(21, 2, 21, '\r\n21 Sin título (84.2). 2011. Ink on paper. 24 x 32 cm'),
(22, 2, 22, '\r\n22 Sin título (119.4). 2013. Ink on paper. 30 x 42 cm'),
(23, 2, 23, '\r\n23 Sin título (119.1). 2013. Ink on paper. 30 x 42 cm'),
(24, 2, 24, '\r\n24 Icosaedro. 2007. Broomsticks, cable ties. 200 x 250 x 250 cm. Ed. 3/5'),
(25, 2, 25, '25 Somewhere #004. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm c/u (2 pieces)'),
(26, 2, 26, '\r\n26 Somewhere #005. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(27, 2, 27, '\r\n27 Somewhere #007. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(28, 2, 28, '\r\n28 Somewhere #006. 2012. AAA The desert series. Ink on paper. 35 x 50 cm'),
(29, 2, 29, '\r\n29 Somewhere #003. 2012. AAA The desert series. Ink on paper. 64.2 x 44.2 cm'),
(30, 2, 30, '\r\n30 Somewhere #002. 2012. AAA The desert series. Ink on paper. 35 x 50 cm'),
(31, 2, 31, '\r\n31 How to lie with maps. 2013. Matte black aluminum foil. Dimensiones variables'),
(32, 2, 32, '32 In private with myself. 2011. Casting. 50 x 22 x 20 cm'),
(33, 2, 33, '\r\n33 Connected to me. 2013. Casting. 45 x 21 x 13 cm'),
(34, 2, 34, '\r\n34 Suzie. 2008. Casting. 29 x 10 x 10 cm'),
(35, 2, 35, '\r\n35 Yuck. 2009. Casting. 21 x 14 x 13 cm'),
(36, 2, 36, '\r\n36 Yummie. 2009. Casting. 29 x 16 x 13 cm'),
(37, 2, 37, '\r\n37 Hot bath. 2009. Casting. 18 x 18 x 11 cm'),
(38, 2, 38, '38 Mutatoes. 2006 - 2013. Photographs mounted on. aluminum dibond. 23.6 x 30 cm c/u (100 pieces)'),
(39, 2, 39, '\r\n39 Shelflife. 2011. Fluorescent lights, cables, wood. 122.5 x 250 cm\r\n');

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
-- Table structure for table `tra_texto`
--

CREATE TABLE IF NOT EXISTS `tra_texto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `textoid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `textoid` (`textoid`),
  KEY `idiomaid` (`idiomaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tra_textocuratorial`
--

CREATE TABLE IF NOT EXISTS `tra_textocuratorial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `textocuratorialid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `cargo_autor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ididioma` (`idiomaid`),
  KEY `textocuratorialid` (`textocuratorialid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `clave`, `fecha`) VALUES
(1, 'Mantura', 'mantura', 'c5ee4f88f7690bd57adb5466d502c29f', '2014-09-14 13:44:38'),
(2, 'Marcos', 'marcos', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-14 07:07:02'),
(3, 'Edgar', 'edgar', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-14 07:07:11');

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
-- Constraints for table `tra_texto`
--
ALTER TABLE `tra_texto`
  ADD CONSTRAINT `tra_texto_ibfk_1` FOREIGN KEY (`textoid`) REFERENCES `texto` (`idtexto`) ON DELETE CASCADE ON UPDATE CASCADE;

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
