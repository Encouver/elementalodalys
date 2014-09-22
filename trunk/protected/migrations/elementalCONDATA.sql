/*
Navicat MySQL Data Transfer

Source Server         : elemental
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : elemental

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-09-18 15:45:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for artista
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista
-- ----------------------------
INSERT INTO `artista` VALUES ('1', ' ', 'Llobet & Pons', '1978', 'España', 'Jasmina Llobet y Luis Fernández Pons viven en Berlín y Barcelona desde 2001 y trabajan como colectivo, desarrollando su trabajo en el campo de la instalación, escultura y arte en el espacio público.Han realizado exposiciones individuales en CAS, Osaka, Japón (2013); Lokaal01, Amberes, Bélgica (2012); y en The Process Room del Museo Irlandés de Arte Moderno, Dublín (2010).Han realizado residencias y estancias de trabajo en Laznia Centre for Contemporary Art, Gdansk, Polonia (2013); Akiyoshidai International Art Village, Yamaguchi, Japón (2011); Seoul Art Space Geumcheon, Seúl, Corea del Sur (2010); y en Turquía, en el centro Platform Garanti (2009).Entre sus exposiciones colectivas destacan la Setouchi Triennale, Islas de Seto, Japón (2013), fairgrounds, Little Berlin, Philadelphia, EEUU (2012); ARCOmadrid. Stand Galería Adhoc (Vigo). Madrid (2012); Destino / Zielort: Berlin, Studio 1 - Bethanien, Berlin, Alemania (2011); Fare-Well, Brain Factory, Seúl, Corea del Sur (2010); Hello World, Itokoku Historical Museum, Fukuoka, Japón (2009); Manifesta 7, Proyecto Tabula Rasa (en colaboración con OASberlin), Bolzano, Italia (2008); y madrid28045, Intermediæ/Matadero, Madrid (2007).');
INSERT INTO `artista` VALUES ('2', 'Kiss', 'Aba Regő', '1977', 'Hungría', 'Kiss Aba Regő culmina sus estudios universitarios en 2004 en la Universidad Moholy Nagy de Arte y Diseño de Hungría, especializándose en vidrio.Entre 2001-2002 realiza estudios de tecnologías de vidrio en la famosa fábrica Sueca de Orrefors, Costa Boda, trabajando entre otros para el artista Bertil Vallien. En el 2007 trabaja en Bristol, Inglaterra, como director artístico del Bristol Blue Glass entre los años 2008 y 2009. Desde 2009 trabaja en Budapest, Hungría, y, desde 2013, imparte clases en la Universidad MoholyNagy de Arte y Diseño.');
INSERT INTO `artista` VALUES ('3', 'Zoltan', 'Kunckel', '1975', 'Venezuela', 'Reside y trabaja entre Berlín, Alemania; Budapest, Hungría, y Caracas, Distrito Capital, Venezuela.Entre sus estudios se destacan: MA-Arte en Contexto, Instituto de Arte en Contexto, Universidad de Berlín, Alemania. MA- Artista Diseñador, Universidad Moholy-Nagy de Arte, Budapest. Inicia su carrera expositiva en el año 1997. A nivel individual ha presentado: “KuZo” Galería Odalys, Caracas, VEN (2012). “A-Tiras”, Galería Parenthesis, Centro de Arte Los Galpones, Caracas, VEN (2012). “The Way to the Top” KuZo-KUlture ZOne, Festival SZIGET, Budapest, HUN (2011). “A_TIRAS”, Club Naútico, Maracaibo, VEN (2001).Entre sus exposiciones de carácter colectivo más recientes cabe mencionar: “Hydromemories”, Museo Regional de Ciencias Naturales, Turín (2012); Trashumantes, urbanos e íntimos, Sala 8 Museo de Arte Contemporáneo, Caracas (2011); Trashumantes, urbanos e íntimos, 1ª Bienal de Arte Contemporáneo, Universidad de Los Andes, Estado Mérida, Venezuela; “XXI Feria Iberoamericana de Arte”, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; “Esta Casa está Sonada”, X Velada Santa Lucía, Maracaibo, Estado Zulia (2010). Aus dem Kontext, Universidad de Arte de Berlín, Berlín; Metanationale, Arttransponder, Berlín; Hidromemorias ICC, Berlín; Hidromemorias, Museo de Arte Contemporáneo, Caracas (2009). Ha sido reconocido con la Mención de Honor otorgada por Vitrum, 32º Salón Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) y con el Premio Francisco Narváez, 59º Salón Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).');
INSERT INTO `artista` VALUES ('4', 'Krisztián', 'Ádám', '1976', 'Hungría', 'Culmina sus estudios en 2003 en la Universidad Moholy-Nagy de Arte en Budapest. Desde entonces ejerce como docente en dicha Universidad y paralelamente continúa su labor artística. En 2011 es distinguido con el premio nacional Ferenczy Noémi para las artes aplicadas en Hungría.Su actividad se centra principalmente en el diseño y creación de joyas, pero dentro de su obra encontramos así mismo la creación de objetos como premios, placas conmemorativas y medallas de tipo investigador y exploratorio. La pureza de formas, la intensa precisión y la innovación son elementos característicos de su trabajo. En la producción de sus obras procura combinar tecnologías desconocidas para la orfebrería tradicional con materiales modernos, entre otros el acero inoxidable y el fresado fotoquímico.');

-- ----------------------------
-- Table structure for artista_expo
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista_expo
-- ----------------------------
INSERT INTO `artista_expo` VALUES ('1', '4', '1');
INSERT INTO `artista_expo` VALUES ('2', '2', '1');
INSERT INTO `artista_expo` VALUES ('3', '3', '2');
INSERT INTO `artista_expo` VALUES ('4', '1', '1');

-- ----------------------------
-- Table structure for artista_prensa
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artista_prensa
-- ----------------------------
INSERT INTO `artista_prensa` VALUES ('1', '1', '2');
INSERT INTO `artista_prensa` VALUES ('2', '1', '4');
INSERT INTO `artista_prensa` VALUES ('3', '2', '5');
INSERT INTO `artista_prensa` VALUES ('4', '2', '3');
INSERT INTO `artista_prensa` VALUES ('5', '2', '1');
INSERT INTO `artista_prensa` VALUES ('6', '2', '2');

-- ----------------------------
-- Table structure for audio
-- ----------------------------
DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `idaudio` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audio
-- ----------------------------
INSERT INTO `audio` VALUES ('1', '1', 'datos del audio en español', 'images/cancion.mp3');

-- ----------------------------
-- Table structure for catalogo
-- ----------------------------
DROP TABLE IF EXISTS `catalogo`;
CREATE TABLE `catalogo` (
  `idcatalogo` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `portada_thumb` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) NOT NULL,
  `datos` enum('Español','Inglés','Alemán') NOT NULL DEFAULT 'Español',
  PRIMARY KEY (`idcatalogo`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catalogo
-- ----------------------------
INSERT INTO `catalogo` VALUES ('1', '1', 'portadaelemental1de4.png', 'images/catalogo/elemental1de4/portadaelemental.png', 'images/elemental1de4/catalogo/cat_elemental.pdf', 'Español');
INSERT INTO `catalogo` VALUES ('2', '1', 'portadaelemental1de4.png', 'portadaelemental1de4.png', 'images/elemental1de4/catalogo/cat_elemental.pdf', 'Inglés');

-- ----------------------------
-- Table structure for conversatorio
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
INSERT INTO `conversatorio` VALUES ('1', 'https://www.youtube.com/watch?v=917gIBxmiG0', '1', null);

-- ----------------------------
-- Table structure for exposicion
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exposicion
-- ----------------------------
INSERT INTO `exposicion` VALUES ('1', 'Elemental 1|4', '', 'Orfila 5, Madrid. España', '2013-09-19 00:00:00', '2014-11-13 00:00:00', 'COLECTIVA', 'España');
INSERT INTO `exposicion` VALUES ('2', 'Elemental 2|4', '', 'Orfila 5, Madrid. España', '2014-09-18 00:00:00', '2014-11-13 00:00:00', 'COLECTIVA', 'España');
INSERT INTO `exposicion` VALUES ('3', 'SUMMA Art Fair 2013', '', 'Matadero, Madrid', '2013-09-19 00:00:00', '2013-09-22 00:00:00', 'FERIA', 'España');

-- ----------------------------
-- Table structure for idiomas
-- ----------------------------
DROP TABLE IF EXISTS `idiomas`;
CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(6) DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idiomas
-- ----------------------------
INSERT INTO `idiomas` VALUES ('1', 'es', 'Español');
INSERT INTO `idiomas` VALUES ('2', 'en', 'Inglés');

-- ----------------------------
-- Table structure for montaje
-- ----------------------------
DROP TABLE IF EXISTS `montaje`;
CREATE TABLE `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idmontaje`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `montaje_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of montaje
-- ----------------------------
INSERT INTO `montaje` VALUES ('1', 'lmontaje_elemental_0q.jpg', 'lmontaje_elemental_0q.jpg', '1', 'x');
INSERT INTO `montaje` VALUES ('2', 'lmontaje_elemental_10q.jpg', 'lmontaje_elemental_10q.jpg', '1', '');
INSERT INTO `montaje` VALUES ('3', 'lmontaje_elemental_11q.jpg', 'lmontaje_elemental_11q.jpg', '1', 'y');
INSERT INTO `montaje` VALUES ('4', 'lmontaje_elemental_12q.jpg', 'lmontaje_elemental_12q.jpg', '1', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably havent heard of them accusamus labore sustainable VHS.');
INSERT INTO `montaje` VALUES ('5', 'lmontaje_elemental_13q.jpg', 'lmontaje_elemental_13q.jpg', '1', '');
INSERT INTO `montaje` VALUES ('6', 'lmontaje_elemental_14q.jpg', 'lmontaje_elemental_14q.jpg', '1', '');
INSERT INTO `montaje` VALUES ('7', 'lmontaje_elemental_15q.jpg', 'lmontaje_elemental_15q.jpg', '1', '');
INSERT INTO `montaje` VALUES ('8', 'montaje_elemental_0q.jpg', 'montaje_elemental_0q.jpg', '1', '');

-- ----------------------------
-- Table structure for noticia
-- ----------------------------
DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `idnoticia` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idnoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticia
-- ----------------------------
INSERT INTO `noticia` VALUES ('1', '2014-09-08 22:10:55', 'xxx2.jpg', 'knbdf', 'Hola Hola Hola Elemental Bla de bla bla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis enim in velit suscipit, non egestas purus commodo. Fusce hendrerit lacinia ornare. Mauris nec nunc nibh. Aenean iaculis felis in egestas porttitor. Quisque non augue ex. Suspendisse maximus urna ac tincidunt consequat. Sed eget mattis arcu. Phasellus convallis magna ipsum, id placerat tellus dapibus in. Morbi gravida eu odio bibendum semper. Duis tellus nisl, aliquam at sagittis at, posuere eu dui. Praesent mollis fringilla justo. Quisque eget sem dui.  Phasellus magna odio, laoreet eu dapibus et, scelerisque a enim. Suspendisse nec aliquet massa. Aliquam euismod augue eget turpis sagittis fermentum vel quis nisl. Mauris ac magna sed nisl congue placerat eget quis sapien. Aliquam convallis lorem sit amet risus tempor malesuada. Quisque interdum mi sit amet lectus pellentesque, in dictum ex volutpat. In hac habitasse platea dictumst. Sed vel convallis lorem, non tempor nunc. Etiam in augue vitae ligula rutrum porta. Nullam congue et urna eget commodo. Donec scelerisque tincidunt orci, eget molestie nisl consequat eu. Donec commodo vitae ex vel vehicula. Vestibulum mollis hendrerit bibendum.');
INSERT INTO `noticia` VALUES ('2', '2014-09-01 00:39:25', 'xxx.jpg', 'asdf', 'Esta es otra noticia', 'Donec lectus ligula, euismod nec lorem quis, venenatis congue arcu. Sed pharetra blandit lectus, nec dictum nisl condimentum quis. Nullam mollis purus ut rutrum ultricies. Curabitur sed egestas sem. Nullam aliquet felis gravida augue condimentum vehicula. Suspendisse potenti. Curabitur vitae mollis purus. Curabitur nibh felis, imperdiet a turpis nec, rhoncus imperdiet urna. Aenean volutpat arcu orci, vitae commodo leo pharetra ac. Morbi nisi ante, porttitor id feugiat ac, efficitur ut tortor. Nam eu ullamcorper quam. Aenean placerat turpis id aliquam varius. Pellentesque tempus metus elit, at laoreet arcu blandit a. Nunc vestibulum turpis id vestibulum pharetra.  Sed commodo venenatis posuere. Curabitur id vehicula justo. Duis congue, libero quis dictum volutpat, justo nulla molestie ligula, eu consectetur dolor est iaculis mauris. Praesent cursus quam dapibus erat sodales feugiat. Quisque aliquet lectus a imperdiet consequat. Ut tempor nisi eu orci commodo, at convallis nulla tincidunt. Proin eu feugiat orci. Nulla vestibulum aliquet eros, id malesuada sem convallis vel. Sed eu hendrerit lectus. Etiam venenatis, magna quis molestie semper, urna leo aliquam purus, vel euismod ex nisl non sapien. Mauris in nunc tempus, bibendum est tempor, tincidunt lectus. Curabitur pretium, sem in ultrices mollis, felis metus ullamcorper nunc, ut venenatis justo risus blandit libero.');

-- ----------------------------
-- Table structure for obra
-- ----------------------------
DROP TABLE IF EXISTS `obra`;
CREATE TABLE `obra` (
  `idobra` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) NOT NULL,
  `descripcion` text,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idobra`),
  KEY `idartista` (`idartista`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of obra
-- ----------------------------
INSERT INTO `obra` VALUES ('2', '2', 'elemental_10q.jpg', 'x', 'Reflection. 2011\r\nVaciado en vidrio\r\n54 x 60 cm', '1');
INSERT INTO `obra` VALUES ('3', '2', 'elemental_11q.jpg', 'x', 'Space Corridor. 2008\r\nVidrio vaciado y pulido\r\n20 x 33 x 5 cm', '1');

-- ----------------------------
-- Table structure for prensa
-- ----------------------------
DROP TABLE IF EXISTS `prensa`;
CREATE TABLE `prensa` (
  `idprensa` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idprensa`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prensa
-- ----------------------------
INSERT INTO `prensa` VALUES ('1', '2014-09-09 00:00:00', 'victimas-conflicto-colombiano.jpg', 'x', '1', 'Denuncian que en Colombia hay oleada de amenazas a víctimas del conflicto', 'La Defensoría del Pueblo colombiano denunció este lunes que recientemente 336 representantes de las víctimas del conflicto armado han sido objeto de amenazas y solicitó al Gobierno y las diferentes autoridades aumentarles la protección.\r\n\r\nA través de un comunicado de prensa, el Defensor del Pueblo, Jorge Armando Otálora, destacó que “no se puede confundir la ausencia de presupuesto con la necesidad de garantizar la protección de quienes están en riesgo”.\r\n\r\nOtálora destacó el caso de Ancízar Ruiz Ceballos, que sufrió desplazamiento forzado y lideraba la mesa departamental de víctimas y que fue encontrado muerto este fin de semana en circunstancias que todavía no han sido esclarecidas.\r\n\r\nEn este sentido, recordó que existían antecedentes de amenazas contra Ruiz proferidas por integrantes de “Los Urabeños”, banda de origen paramilitar.\r\n\r\nAsimismo, destacó que actualmente existen situaciones de riesgo en comunidades ubicadas en 17 departamentos y denunció la muerte el pasado fin de semana de los líderes indígenas Ernelio Pacheco Tunay y Miguel Becheche Zarco, interceptados por hombres armados mientras navegaban por los ríos Nauca y Baudó en el departamento del Chocó, fronterizo con Panamá.\r\n\r\nDe otro lado, reiteró su reclamo a los grupos armados al margen de la ley “para que acaten los principios del Derecho Internacional Humanitario”, en referencia a la muerte de dos contratistas de la estatal Ecopetrol en hechos atribuidos por el Ejército al ELN, la segunda guerrilla más importante de Colombia. ');
INSERT INTO `prensa` VALUES ('2', '2014-09-01 00:00:00', 'espionaje-periodistas.jpg', 'xx', '1', 'WikiLeaks filtra detalles sobre un software para espiar periodistas', 'Al descubierto. Una nueva filtración de WikiLeaks permite conocer más detalles sobre el uso de FinFisher, un software de espionaje utilizado por gobiernos para espiar a activistas, PERIODISTAS y disidentes políticos.\r\nFinFisher es desarrollado por la firma alemana Gamma Group, y se señala que se usa para la vigilancia mediante la intervención de computadoras y dispositivos móviles, especialmente por parte de gobiernos autoritarios.\r\n\r\nGamma Group, cita Fayer Wayer, siempre se ha defendido con el alegato de que ciertos países emplean copias no legítimas de su software. Pero un reciente hackeo a la empresa reveló que Gamma Group sí está consciente de qué gobiernos emplean FinFisher y qué uso le dan.');
INSERT INTO `prensa` VALUES ('3', '2013-09-11 00:00:00', '', '', '1', 'Aprende inglés en 3 pasos', 'Aprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasos');
INSERT INTO `prensa` VALUES ('4', '2013-12-10 00:00:00', '', '', '1', 'Científicos crean material más fuerte que el diamante', 'Científicos rusos han encontrado una manera de crear elementos mucho más duros que el diamante, hallazgo del que se beneficiará la industria y que abre una nueva dirección en el estudio de materiales. Un grupo de investigadores de varias universidades rusas han desarrollado un nuevo');
INSERT INTO `prensa` VALUES ('5', '2014-06-04 00:00:00', 'casa-contenedor-sostenible20.jpg', 'xxx', '1', 'Dentro de este oxidado y viejo contenedor, una linda casa de ensueño', 'Es elegante, moderna y brilla por su simplicidad… Pero lo que es realmente interesante es que esta construida sólo con ¡contenedores! Con información de Circoviral.com\r\n\r\nEs difícil creer que una casa tan magnífica esté hecha con estructuras tan simples.\r\n\r\nAdemás de ser la envidia de la mayoría de casas, es una forma inteligente de reciclar contenedores que ya no tendrían vida útil.\r\n\r\nMás infor');

-- ----------------------------
-- Table structure for subscripcion
-- ----------------------------
DROP TABLE IF EXISTS `subscripcion`;
CREATE TABLE `subscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subscripcion
-- ----------------------------
INSERT INTO `subscripcion` VALUES ('1', 'marcospha@gmail.com');

-- ----------------------------
-- Table structure for tblsession
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
INSERT INTO `tblsession` VALUES ('nupnnjf9j9949fbkagcb9co7f3', '1411071706', 0x61343463393033306534343531353233303330646631336232663637666134355F5F72657475726E55726C7C733A33363A222F656C656D656E74616C6F64616C79732F737562736372697063696F6E2F637265617465223B61343463393033306534343531353233303330646631336232663637666134356C616E67756167657C733A323A226573223B69647C733A313A2232223B61343463393033306534343531353233303330646631336232663637666134355F5F69647C733A313A2232223B61343463393033306534343531353233303330646631336232663637666134355F5F6E616D657C733A363A226D6172636F73223B61343463393033306534343531353233303330646631336232663637666134355F5F7374617465737C613A303A7B7D6769695F5F72657475726E55726C7C733A32303A222F656C656D656E74616C6F64616C79732F676969223B6769695F5F69647C733A353A227969696572223B6769695F5F6E616D657C733A353A227969696572223B6769695F5F7374617465737C613A303A7B7D);

-- ----------------------------
-- Table structure for tra_artista
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_artista
-- ----------------------------
INSERT INTO `tra_artista` VALUES ('1', '2', '1', 'Spain', 'ingles Jasmina Llobet y Luis Fernández Pons viven en Berlín y Barcelona desde 2001 y trabajan como colectivo, desarrollando su trabajo en el campo de la instalación, escultura y arte en el espacio público.\r\n\r\nHan realizado exposiciones individuales en CAS, Osaka, Japón (2013); Lokaal01, Amberes, Bélgica (2012); y en The Process Room del Museo Irlandés de Arte Moderno, Dublín (2010).\r\n\r\nHan realizado residencias y estancias de trabajo en Laznia Centre for Contemporary Art, Gdansk, Polonia (2013); Akiyoshidai International Art Village, Yamaguchi, Japón (2011); Seoul Art Space Geumcheon, Seúl, Corea del Sur (2010); y en Turquía, en el centro Platform Garanti (2009).\r\n\r\nEntre sus exposiciones colectivas destacan la Setouchi Triennale, Islas de Seto, Japón (2013), fairgrounds, Little Berlin, Philadelphia, EEUU (2012); ARCOmadrid. Stand Galería Adhoc (Vigo). Madrid (2012); Destino / Zielort: Berlin, Studio 1 - Bethanien, Berlin, Alemania (2011); Fare-Well, Brain Factory, Seúl, Corea del Sur (2010); Hello World, Itokoku Historical Museum, Fukuoka, Japón (2009); Manifesta 7, Proyecto Tabula Rasa (en colaboración con OASberlin), Bolzano, Italia (2008); y madrid28045, Intermediæ/Matadero, Madrid (2007). ingles');
INSERT INTO `tra_artista` VALUES ('2', '2', '2', 'Hungary', 'inglesKiss Aba Regő culmina sus estudios universitarios en 2004 en la Universidad Moholy Nagy de Arte y Diseño de Hungría, especializándose en vidrio.\r\n\r\nEntre 2001-2002 realiza estudios de tecnologías de vidrio en la famosa fábrica Sueca de Orrefors, Costa Boda, trabajando entre otros para el artista Bertil Vallien. \r\n\r\nEn el 2007 trabaja en Bristol, Inglaterra, como director artístico del Bristol Blue Glass entre los años 2008 y 2009. Desde 2009 trabaja en Budapest, Hungría, y, desde 2013, imparte clases en la Universidad Moholy\r\nNagy de Arte y Diseño.ingles');
INSERT INTO `tra_artista` VALUES ('3', '2', '3', 'Venezuela', 'ingles\r\nReside y trabaja entre Berlín, Alemania; Budapest, Hungría, y Caracas, Distrito Capital, Venezuela.Entre sus estudios se destacan: MA-Arte en Contexto, Instituto de Arte en Contexto, Universidad de Berlín, Alemania. MA- Artista Diseñador, Universidad Moholy-Nagy de Arte, Budapest. Inicia su carrera expositiva en el año 1997. A nivel individual ha presentado: “KuZo” Galería Odalys, Caracas, VEN (2012). “A-Tiras”, Galería Parenthesis, Centro de Arte Los Galpones, Caracas, VEN (2012). “The Way to the Top” KuZo-KUlture ZOne, Festival SZIGET, Budapest, HUN (2011). “A_TIRAS”, Club Naútico, Maracaibo, VEN (2001).Entre sus exposiciones de carácter colectivo más recientes cabe mencionar: “Hydromemories”, Museo Regional de Ciencias Naturales, Turín (2012); Trashumantes, urbanos e íntimos, Sala 8 Museo de Arte Contemporáneo, Caracas (2011); Trashumantes, urbanos e íntimos, 1ª Bienal de Arte Contemporáneo, Universidad de Los Andes, Estado Mérida, Venezuela; “XXI Feria Iberoamericana de Arte”, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; “Esta Casa está Sonada”, X Velada Santa Lucía, Maracaibo, Estado Zulia (2010). Aus dem Kontext, Universidad de Arte de Berlín, Berlín; Metanationale, Arttransponder, Berlín; Hidromemorias ICC, Berlín; Hidromemorias, Museo de Arte Contemporáneo, Caracas (2009). Ha sido reconocido con la Mención de Honor otorgada por Vitrum, 32º Salón Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) y con el Premio Francisco Narváez, 59º Salón Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).ingles');

-- ----------------------------
-- Table structure for tra_audio
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_audio
-- ----------------------------
INSERT INTO `tra_audio` VALUES ('1', '2', '1', 'datos del audio en ingles', 'images/cancion.mp3');

-- ----------------------------
-- Table structure for tra_conversatorio
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
-- Table structure for tra_exposicion
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_exposicion
-- ----------------------------
INSERT INTO `tra_exposicion` VALUES ('1', 'Spain', '1', '2');
INSERT INTO `tra_exposicion` VALUES ('2', 'Spain', '2', '2');
INSERT INTO `tra_exposicion` VALUES ('3', 'Spain', '3', '2');

-- ----------------------------
-- Table structure for tra_montaje
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
-- Table structure for tra_noticia
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
INSERT INTO `tra_noticia` VALUES ('2', '2', '1', 'Helllo', 'Esto es ingles. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a nibh euismod, commodo magna vel, condimentum ligula. Etiam cursus convallis lectus sed tincidunt. Nullam vel ultricies magna. Proin ullamcorper ac augue sit amet posuere. Nullam quis eros tempus, placerat lorem vel, mattis tellus. Cras id dapibus neque. Duis dictum nulla ac eleifend vehicula.  Aliquam suscipit quis ante sit amet tincidunt. Nam dapibus neque vel nunc pharetra rhoncus. Etiam nec elementum mi. Aliquam consectetur ut purus sed egestas. In pretium odio at nulla gravida vestibulum. Proin scelerisque euismod rhoncus. Curabitur pellentesque neque eget odio tempor iaculis.  Donec in orci ac dui lacinia mattis ut tincidunt diam. Sed vestibulum at leo id fringilla. Aenean ac nisi erat. Praesent sed condimentum est. Sed nibh libero, pulvinar non neque a, congue tincidunt ligula. Sed non magna hendrerit, malesuada urna sit amet, gravida enim. Quisque felis urna, semper at metus at, egestas tempus turpis. Nullam in sapien in turpis placerat sagittis. Curabitur ornare dapibus ipsum.');
INSERT INTO `tra_noticia` VALUES ('4', '2', '2', 'Good', 'Ingles Ingles Ingles. Morbi urna neque, blandit fringilla sem id, cursus commodo augue. Proin sem enim, luctus at erat non, euismod fermentum leo. Vivamus feugiat dolor erat, sed molestie ex pulvinar eget. Maecenas in neque id elit euismod pulvinar vitae vel mi. Mauris ut scelerisque massa. Morbi eget elit in orci vulputate ultrices. Nam ac dictum arcu. Vivamus et dictum libero. Vivamus dignissim neque non mauris faucibus, sit amet dignissim magna varius. In in dolor vitae diam ultricies vestibulum. Ut volutpat orci non nibh vulputate convallis. Ut dignissim nisl quis ligula tristique facilisis. Fusce efficitur velit sit amet laoreet fringilla. Mauris iaculis nibh eget dapibus tristique.  Curabitur tortor nunc, viverra sit amet dictum maximus, dictum at dui. Aenean eget pretium nisi, vitae malesuada neque. Nullam vehicula, nulla eu lacinia interdum, eros lectus pulvinar risus, sed pellentesque sem erat mollis enim. Ut tincidunt neque sed mauris porta lacinia. Nulla ac leo mauris. Phasellus at urna bibendum, accumsan quam non, euismod dui. Duis eu turpis cursus, condimentum dolor sit amet, sollicitudin libero. Duis fermentum lobortis metus, eget congue nisl lacinia lacinia. Pellentesque pharetra suscipit euismod. Pellentesque tristique nibh eu urna dictum pharetra. Nulla est metus, dapibus vel mi vel, pretium elementum tortor. In vel diam eros. Maecenas in fringilla neque. Nulla vel lacus tristique nisi dictum lacinia vel non purus. Nulla hendrerit accumsan nisl, vel laoreet enim luctus vitae.');

-- ----------------------------
-- Table structure for tra_obra
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
-- Table structure for tra_prensa
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tra_prensa
-- ----------------------------
INSERT INTO `tra_prensa` VALUES ('3', '2', 'ing Denuncian que en Colombia hay oleada de amenazas a víctimas del conflicto ing', 'ing La Defensoría del Pueblo colombiano denunció este lunes que recientemente 336 representantes de las víctimas del conflicto armado han sido objeto de amenazas y solicitó al Gobierno y las diferentes autoridades aumentarles la protección.\r\n\r\nA través de un comunicado de prensa, el Defensor del Pueblo, Jorge Armando Otálora, destacó que “no se puede confundir la ausencia de presupuesto con la necesidad de garantizar la protección de quienes están en riesgo”.\r\n\r\nOtálora destacó el caso de Ancízar Ruiz Ceballos, que sufrió desplazamiento forzado y lideraba la mesa departamental de víctimas y que fue encontrado muerto este fin de semana en circunstancias que todavía no han sido esclarecidas.\r\n\r\nEn este sentido, recordó que existían antecedentes de amenazas contra Ruiz proferidas por integrantes de “Los Urabeños”, banda de origen paramilitar.\r\n\r\nAsimismo, destacó que actualmente existen situaciones de riesgo en comunidades ubicadas en 17 departamentos y denunció la muerte el pasado fin de semana de los líderes indígenas Ernelio Pacheco Tunay y Miguel Becheche Zarco, interceptados por hombres armados mientras navegaban por los ríos Nauca y Baudó en el departamento del Chocó, fronterizo con Panamá.\r\n\r\nDe otro lado, reiteró su reclamo a los grupos armados al margen de la ley “para que acaten los principios del Derecho Internacional Humanitario”, en referencia a la muerte de dos contratistas de la estatal Ecopetrol en hechos atribuidos por el Ejército al ELN, la segunda guerrilla más importante de Colombia. ing', '1');
INSERT INTO `tra_prensa` VALUES ('4', '2', 'ingWikiLeaks filtra detalles sobre un software para espiar periodistas', 'ingAl descubierto. Una nueva filtración de WikiLeaks permite conocer más detalles sobre el uso de FinFisher, un software de espionaje utilizado por gobiernos para espiar a activistas, PERIODISTAS y disidentes políticos.\r\nFinFisher es desarrollado por la firma alemana Gamma Group, y se señala que se usa para la vigilancia mediante la intervención de computadoras y dispositivos móviles, especialmente por parte de gobiernos autoritarios.\r\n\r\nGamma Group, cita Fayer Wayer, siempre se ha defendido con el alegato de que ciertos países emplean copias no legítimas de su software. Pero un reciente hackeo a la empresa reveló que Gamma Group sí está consciente de qué gobiernos emplean FinFisher y qué uso le dan.ing', '2');
INSERT INTO `tra_prensa` VALUES ('5', '2', 'ingAprende inglés en 3 pasos', 'ingAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosAprende inglés en 3 pasosing', '3');
INSERT INTO `tra_prensa` VALUES ('6', '2', 'ingCientíficos crean material más fuerte que el diamante', 'ingCientíficos rusos han encontrado una manera de crear elementos mucho más duros que el diamante, hallazgo del que se beneficiará la industria y que abre una nueva dirección en el estudio de materiales. Un grupo de investigadores de varias universidades rusas han desarrollado un nuevo ing', '4');
INSERT INTO `tra_prensa` VALUES ('7', '2', 'Dentro de este oxidado y viejo contenedor, una linda casa de ensueño', 'ingEs elegante, moderna y brilla por su simplicidad… Pero lo que es realmente interesante es que esta construida sólo con ¡contenedores! Con información de Circoviral.com\r\n\r\nEs difícil creer que una casa tan magnífica esté hecha con estructuras tan simples.\r\n\r\nAdemás de ser la envidia de la mayoría de casas, es una forma inteligente de reciclar contenedores que ya no tendrían vida útil.\r\n\r\nMás inforing', '5');

-- ----------------------------
-- Table structure for tra_verni_fini
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
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Mantura', 'mantura', 'c5ee4f88f7690bd57adb5466d502c29f', '2014-09-14 05:14:38');
INSERT INTO `usuarios` VALUES ('2', 'Marcos', 'marcos', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 22:37:02');
INSERT INTO `usuarios` VALUES ('3', 'Edgar', 'edgar', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-13 22:37:11');

-- ----------------------------
-- Table structure for verni_fini
-- ----------------------------
DROP TABLE IF EXISTS `verni_fini`;
CREATE TABLE `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`),
  CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of verni_fini
-- ----------------------------
