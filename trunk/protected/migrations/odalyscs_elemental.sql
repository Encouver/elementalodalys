-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-10-2014 a las 18:55:03
-- Versión del servidor: 5.5.37-cll
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `odalyscs_elemental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
  `idartista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `biografia` text,
  PRIMARY KEY (`idartista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`idartista`, `nombre`, `apellido`, `ano`, `pais`, `biografia`) VALUES
(1, 'Krisztián', 'Ádám', 1976, 'Hungría', '<p>Culmina sus estudios en 2003 en la Universidad Moholy-Nagy de Arte en Budapest. Desde entonces ejerce como docente en dicha Universidad y paralelamente contin&uacute;a su labor art&iacute;stica. En 2011 es distinguido con el premio nacional Ferenczy No&eacute;mi para las artes aplicadas en Hungr&iacute;a.</p>\r\n\r\n<p>Su actividad se centra principalmente en el dise&ntilde;o y creaci&oacute;n de joyas, pero dentro de su obra encontramos as&iacute; mismo la creaci&oacute;n de objetos como premios, placas conmemorativas y medallas de tipo investigador y exploratorio. La pureza de formas, la intensa precisi&oacute;n y la innovaci&oacute;n son elementos caracter&iacute;sticos de su trabajo. En la producci&oacute;n de sus obras procura combinar tecnolog&iacute;as desconocidas para la orfebrer&iacute;a tradicional con materiales modernos, entre otros el acero inoxidable y el fresado fotoqu&iacute;mico.</p>\r\n'),
(2, 'Kiss', 'Aba Regő', 1977, 'Hungría', '<p>Kiss Aba Regő culmina sus estudios universitarios en 2004 en la Universidad Moholy Nagy de Arte y Dise&ntilde;o de Hungr&iacute;a, especializ&aacute;ndose en vidrio.</p>\r\n\r\n<p>Entre 2001-2002 realiza estudios de tecnolog&iacute;as de vidrio en la famosa f&aacute;brica Sueca de Orrefors, Costa Boda, trabajando entre otros para el artista Bertil Vallien.</p>\r\n\r\n<p>En el 2007 trabaja en Bristol, Inglaterra, como director art&iacute;stico del Bristol Blue Glass entre los a&ntilde;os 2008 y 2009. Desde 2009 trabaja en Budapest, Hungr&iacute;a, y, desde 2013, imparte clases en la Universidad Moholy Nagy de Arte y Dise&ntilde;o.</p>\r\n'),
(3, 'Zoltan', 'Kunckel', 1975, 'Venezuela', '<p>KuZo (Zoltan Kunckel). Reside y trabaja entre Berl&iacute;n, Alemania; Budapest, Hungr&iacute;a, y Caracas, Distrito Capital, Venezuela.&nbsp;</p>\r\n\r\n<p>Entre sus estudios se destacan: MA-Arte en Contexto, Instituto de Arte en Contexto, Universidad de Berl&iacute;n, Alemania. MA- Artista Dise&ntilde;ador, Universidad Moholy-Nagy de Arte, Budapest.&nbsp;</p>\r\n\r\n<p>Inicia su carrera expositiva en el a&ntilde;o 1997. A nivel individual ha presentado: &ldquo;KuZo&rdquo; Galer&iacute;a Odalys, Caracas, VEN (2012). &ldquo;A-Tiras&rdquo;, Galer&iacute;a Parenthesis, Centro de Arte Los Galpones, Caracas, VEN (2012). &ldquo;The Way to the Top&rdquo; KuZo-KUlture ZOne, Festival SZIGET, Budapest, HUN (2011). &ldquo;A_TIRAS&rdquo;, Club Na&uacute;tico, Maracaibo, VEN (2001).</p>\r\n\r\n<p>Entre sus exposiciones de car&aacute;cter colectivo m&aacute;s recientes cabe mencionar: &ldquo;Hydromemories&rdquo;, Museo Regional de Ciencias Naturales, Tur&iacute;n (2012); Trashumantes, urbanos e &iacute;ntimos, Sala 8 Museo de Arte Contempor&aacute;neo, Caracas (2011); Trashumantes, urbanos e &iacute;ntimos, 1&ordf; Bienal de Arte Contempor&aacute;neo, Universidad de Los Andes, Estado M&eacute;rida, Venezuela; &ldquo;XXI Feria Iberoamericana de Arte&rdquo;, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; &ldquo;Esta Casa est&aacute; Sonada&rdquo;, X Velada Santa Luc&iacute;a, Maracaibo, Estado Zulia (2010). Aus dem Kontext, Universidad de Arte de Berl&iacute;n, Berl&iacute;n; Metanationale, Arttransponder, Berl&iacute;n; Hidromemorias ICC, Berl&iacute;n; Hidromemorias, Museo de Arte Contempor&aacute;neo, Caracas (2009).&nbsp;</p>\r\n\r\n<p>Ha sido reconocido con la Menci&oacute;n de Honor otorgada por Vitrum, 32&ordm; Sal&oacute;n Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) y con el Premio Francisco Narv&aacute;ez, 59&ordm; Sal&oacute;n Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).</p>\r\n'),
(4, '<x></x>', 'Llobet & Pons', 1978, 'España', '<p>Jasmina Llobet y Luis Fern&aacute;ndez Pons viven en Berl&iacute;n y Barcelona desde 2001 y trabajan como colectivo, desarrollando su trabajo en el campo de la instalaci&oacute;n, escultura y arte en el espacio p&uacute;blico.</p>\r\n\r\n<p>Han realizado exposiciones individuales en CAS, Osaka, Jap&oacute;n (2013); Lokaal01, Amberes, B&eacute;lgica (2012); y en The Process Room del Museo Irland&eacute;s de Arte Moderno, Dubl&iacute;n (2010).&nbsp;</p>\r\n\r\n<p>Han realizado residencias y estancias de trabajo en Laznia Centre for Contemporary Art, Gdansk, Polonia (2013); Akiyoshidai International Art Village, Yamaguchi, Jap&oacute;n (2011); Seoul Art Space Geumcheon, Se&uacute;l, Corea del Sur (2010); y en Turqu&iacute;a, en el centro Platform Garanti (2009).</p>\r\n\r\n<p>Entre sus exposiciones colectivas destacan la Setouchi Triennale, Islas de Seto, Jap&oacute;n (2013), fairgrounds, Little Berlin, Philadelphia, EEUU (2012); ARCOmadrid. Stand Galer&iacute;a Adhoc (Vigo). Madrid (2012); Destino / Zielort: Berlin, Studio 1 - Bethanien, Berlin, Alemania (2011); Fare-Well, Brain Factory, Se&uacute;l, Corea del Sur (2010); Hello World, Itokoku Historical Museum, Fukuoka, Jap&oacute;n (2009); Manifesta 7, Proyecto Tabula Rasa (en colaboraci&oacute;n con OASberlin), Bolzano, Italia (2008); y madrid28045, Intermedi&aelig;/Matadero, Madrid (2007).</p>\r\n'),
(5, 'Irina', 'Novarese', 1972, 'Italia', '<p>Nace en Torino, Italia y reside en Berl&iacute;n desde el a&ntilde;o 2000. Su trabajo incluye el desarrollo de instalaciones, dibujos, videos y proyectos interdisciplinarios.</p>\r\n\r\n<p>Irina Novarese recibi&oacute; su licenciatura en Bellas Artes en la Academia de Bellas Artes de Torino en el a&ntilde;o 1996 y una maestr&iacute;a de Arte en contexto en el prestigioso Institut f&uuml;r Kunst im Kontext de la Universit&auml;t der K&uuml;nste Berlin en el a&ntilde;o 2008.</p>\r\n\r\n<p>Ha realizado exposiciones individuales en Italia, espec&iacute;ficamente en Torino y Pescara (desde 1994 hasta 2011); Ha expuesto en Espa&ntilde;a en la Galer&iacute;a Can&eacute;m (2007 y 2011); e Igualmente ha expuesto en Alemania en la Galer&iacute;a VBM de Berlin (2010). Irina ha expuesto en varias galer&iacute;as, museos y proyectos off-site en Italia, Espa&ntilde;a, Venezuela, China, Alemania, Francia, Polonia, Estados Unidos y Hungr&iacute;a. Del mismo modo, ha formado parte de diferentes residencias art&iacute;sticas en Italia, Serbia y Estados Unidos.</p>\r\n\r\n<p>Ha tenido una participaci&oacute;n muy activa en varios proyectos art&iacute;sticos interdisciplinarios y participativos, algunos de ellos fueron presentados en la Bienal de Arquitectura de Venecia (2006) y en la Bienal Hait&iacute; Guetto (2012). Su obra se encuentra representada en colecciones privadas y p&uacute;blicas; y ha sido bien acogida en las ferias de arte internacionales donde ha participado.</p>\r\n'),
(6, 'Balázs', 'Sipos', 1979, 'Hungría', '<p>Bal&aacute;zs Sipos realiz&oacute; sus estudios universitarios en la Universidad Moholy Nagy de Arte y Dise&ntilde;o de Hungr&iacute;a, especializ&aacute;ndose en vidrio.</p>\r\n\r\n<p>Despu&eacute;s de obtener su diploma, entre 2003 y 2005 trabaj&oacute; en la compa&ntilde;&iacute;a Ajka Krist&aacute;ly Zrt. como dise&ntilde;ador, ocup&aacute;ndose de la aplicaci&oacute;n de la t&eacute;cnica casting en la producci&oacute;n industrial.</p>\r\n\r\n<p>El premio Prima Primissima fue fabricado aqu&iacute;, seg&uacute;n su dise&ntilde;o. Paralelamente fue construyendo su propio taller en Budapest, lo cual le proporciona la experiencia tecnol&oacute;gica necesaria con la cual se producen sus estatuas y otros objetos de vidrio (p.ej. premios, elementos de arquitectura interior, etc).</p>\r\n\r\n<p>Obtuvo el premio Lajos Kozma entre 2007 y 2009, lo cual contribuy&oacute; al desarrollo de sus estatuas y su lenguaje formativo. Particip&oacute; en numerosas exposiciones y simposios, obteniendo el premio Noemi Ferenczy en 2011. Sus obras fueron seleccionadas y publicadas en dos ocasiones en el New Glass Review.</p>\r\n\r\n<p>Durante cinco a&ntilde;os fue docente en la Escuela de Artes Aplicadas de Budapest, y desde 2012 da clases en la Universidad de Arte Moholy Nagy, adem&aacute;s de estudiar para su doctorado.</p>\r\n'),
(7, 'Uli', 'Westphal', 1980, 'Alemania', '<p>Uli Westphal es un artista visual que reside en Berl&iacute;n, Alemania.</p>\r\n\r\n<p>Acad&eacute;micamente se inicia estudiando Multimedia y Arte Ambiental entre La Universidad de Arte de Baltimore del Maryland Institute (USA) y la Academia Visual de las Artes en Enschede (NL). Obtiene su Maestr&iacute;a (Arte en Contexto) en la Universidad de Arte de Berl&iacute;n, Alemania.</p>\r\n\r\n<p>Sus obras tratan sobre la forma en la que los seres humanos perciben, representan y transforman el mundo natural. Westphal muestra inter&eacute;s particular en los conceptos err&oacute;neos e ideolog&iacute;as que forman nuestra percepci&oacute;n de la naturaleza. Su enfoque en los &uacute;ltimos a&ntilde;os ha sido la manera en la cual, las industrias productoras de alimentos transforman y retratan a la naturaleza.</p>\r\n\r\n<p>El trabajo de Westphal es multidisciplinario y basado en a&ntilde;os de investigaci&oacute;n, que consisten en colecciones, sistemas de clasificaci&oacute;n, simulaciones y experimentos. Ha sido expuesto mundialmente en galer&iacute;as y museos, y publicado en una amplia gama de revistas y libros.</p>\r\n'),
(8, 'Felipe', 'Aguila', 1977, 'Chile', '<p>Felipe Aguila nace en Santiago de Chile en 1977. Vive y trabaja en Tur&iacute;n, Italia. Estudia en la Universidad de Chile, Facultad de Artes visuales licenci&aacute;ndose en 1998, con especializaci&oacute;n en pintura. En 1999 obtiene una beca del FONDART, Fondo Nacional de Las Artes. En el 2000 obtiene una beca que le permite inscribirse a la Accademia Albertina di Belle Arti di Torino, frecuentando el curso de pintura hasta el 2004, per&iacute;odo en cual comienza a trabajar en sus primeras video instalaciones.</p>\r\n\r\n<p><span style="line-height:1.6em">Entre las principales muestras y proyecciones en las que ha participado: Alle Radici della Democrazia, Casa della Resistenza, Verbania-Fondotoce (Italia, 2014); Clueless, Dom hdlu, Galeria Bacva, Zagreb (Croacia, 2013); Art Stays, Art residency, America latina, Arte entre identidad y m&aacute;scara, Galer&iacute;a Miheli čeva, Ptuj (Slovenia, 2012); Hydromemories, Museo regionale di scienze naturali, Tur&iacute;n (Italia, 2012); In sede: Tempi precari, Tur&iacute;n (Italia, 2012); Visual bands, Lu.C.C.A Center of Contemporary Art, Lucca (Italia, 2010); &ldquo;Risque d&rsquo;attente&rdquo;, Galer&iacute;a Gradska (Croacia, 2009); Il Castello di Rivara apre le cantine, Rivara (Italia, 2009); Hydromemories, Museo de Arte Contempor&aacute;neo, Caracas (Venezuela, 2009); Birds of passage, Le monacelle, Matera (Italia, 2009); Arte recente dal Cile, ex chiesa di San Carpoforo, Milano (Italia, 2009).&nbsp;</span></p>\r\n'),
(9, 'Hugo', 'Alonso', 1981, 'España', '<p>Algunos de sus &uacute;ltimos proyectos individuales son C&oacute;mo resucitar una mosca muerta, Festival de Cine de Medina del Campo (Espa&ntilde;a, 2013); To my father and to the memory of my mother, Galer&iacute;a Adora Calvo, Salamanca (Espa&ntilde;a, 2011); Drop, Festival Faquir, DA2, Domus Artium 2002, Salamanca (Espa&ntilde;a, 2010); Frederick Treves y la C&aacute;mara de cirujanos, Galer&iacute;a Salvador D&iacute;az, Madrid (Espa&ntilde;a, 2010); Paintingdrome, DA2, Domus Artium 2002, Salamanca (Espa&ntilde;a, 2007).</p>\r\n\r\n<p><span style="line-height:1.6em">Entre las exposiciones colectivas donde ha participado se encuentran No limit, Centro Cultural Coreano en Espa&ntilde;a, Madrid (Espa&ntilde;a, 2014); This is not a love song, La Virreina Centro de la Imagen, Barcelona (Espa&ntilde;a, 2013); Paisajes Improbables, Junta CyL / Teatro Municipal de Guarda, CyL (Portugal, 2012); Arte y Videoclip: Proyectos en la intersecci&oacute;n, Primavera Sound / Screen Festival / Loop Festival, Barcelona (Espa&ntilde;a, 2012); Generaci&oacute;n 2008, Cajamadrid, Itinerante (Espa&ntilde;a, 2008); Della Pittura Digitalis - Painting and the digital momentum, Galer&iacute;a Caprice Horn, Berl&iacute;n (Alemania, 2007); MIXED EMOTIONS, apuntes para una colecci&oacute;n del siglo XXI, colecci&oacute;n DA2, Domus Artium 2002, Salamanca (Espa&ntilde;a, 2008); EXISTENCIAS, colecci&oacute;n MUSAC, Museo de Arte Contempor&aacute;neo de Castilla y Le&oacute;n (Espa&ntilde;a, 2007) y HETEROTOP&Iacute;AS, Oktogon HfBK, Dresde (Alemania, 2007).</span></p>\r\n\r\n<p><span style="line-height:1.6em">Entre sus m&eacute;ritos destacan el Premio J&oacute;venes Pintores Fundaci&oacute;n Gaceta 2013, Premio Arte Joven de la Junta de Castilla y Le&oacute;n 2011, Premio Caja Espa&ntilde;a de Pintura 2008, Premio Optica Videoarte 2008 y 2007 o el Premio J&oacute;venes Artistas de Castilla y Le&oacute;n Caja Burgos 2007.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Su obra se puede ver en colecciones p&uacute;blicas como la del MUSAC (Museo de Arte Contempor&aacute;neo de Castilla y Le&oacute;n), el DA2 (Domus Artium 2002), el CAB (Centro de Arte Contempor&aacute;neo de Burgos), la Fundaci&oacute;n BMW, la Diputaci&oacute;n de Salamanca, la Fundaci&oacute;n Gaceta o la Obra Social Caja Espa&ntilde;a.&nbsp;</span></p>\r\n'),
(10, 'Lidzie', 'Alvisa', 1969, 'Cuba', '<p>Lidzie Alvisa Jim&eacute;nez (La Habana en 1969). Realiz&oacute; estudios desde el nivel elemental hasta el Instituto Superior de Arte, graduada en 1994. Artista de la pl&aacute;stica que utiliza la fotograf&iacute;a como medio de expresi&oacute;n creativa, adem&aacute;s del dibujo, la escultura, instalaciones y el performance. Es Miembro de la Uni&oacute;n de Escritores y Artistas de Cuba (UNEAC). Particip&oacute; en la Bienal de la Habana de 1996, en la Huella M&uacute;ltiple del 2006, Bienal de Portugal 2010, Art Miami Pulse, Art Madrid, Art Paris, Toronto, Feria de Arco, Lima Foto, Art Mosc&uacute; y Context Art Miami, entre otros. Particip&oacute; en subastas nacionales e internacionales como Subasta Habana, Subasta Humanitaria, Casa de las Am&eacute;ricas y en la primera Subasta Latinoamericana Fernando Duran. Ha realizado varias muestras personales curadas por ella y m&aacute;s de 70 exposiciones colectivas. Ha sido jurado en eventos nacionales y en el 2007 recibi&oacute; la residencia Bat&iacute;scafo. Sus obras aparecen en art&iacute;culos, revistas, libros y cat&aacute;logos nacionales e internacionales. Tiene colecciones en USA, M&eacute;xico, Alemania, Francia, B&eacute;lgica, Suiza, Portugal, Espa&ntilde;a, Venezuela, Rusia, Reino Unido, entre otros.</p>\r\n'),
(11, 'Erik', 'Mátrai', 1977, 'Hungría', '<p>Erik M&aacute;trai nace en Miskolc (Hungr&iacute;a) en 1977. Inicia sus estudios en 1998 en la Universidad de las Artes de Budapest (Hungr&iacute;a), en el 2004 con la beca Erasmus cursa estudios de pintura y multimedia en la Universidad Polit&eacute;cnica de Valencia (Espa&ntilde;a). Ese mismo a&ntilde;o se culmina sus estudios en Budapest. Entre el 2009 y el 2012 hace su doctorado en la Universidad de Arte de Budapest.</p>\r\n\r\n<p><span style="line-height:1.6em">En el 2006 recibe la beca Derkovits, luego en el 2008 gana el premio Juventud de Marzo en Hungr&iacute;a. En el 2009 es becado por la Academia H&uacute;ngara en Roma (Italia).&nbsp;</span></p>\r\n\r\n<p><span style="line-height:1.6em">Participa en el 2011 en el programa de artistas en residencia de Frankfort (Alemania) y en el 2013 en la VARP de Nueva York (USA) en el cual recibe el apoyo de la beca E&ouml;tv&ouml;s que ofrece el estado H&uacute;ngaro.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Entre sus exposiciones m&aacute;s importantes se encuentran &ldquo;Situaciones Extra&ntilde;as&rdquo; (2014) en la Galer&iacute;a Art9 y &ldquo;Porticus 02&rdquo; (2013) en el Parthenon-friz, ambas en Budapest (Hungr&iacute;a). Expone en Chiesa di San Lio &ldquo;G&ouml;mb&rdquo; (2013) en Venecia (Italia). Exhibe en el Museo de Arte Contempor&aacute;neo de Budapest (Hungr&iacute;a) &ldquo;T&aacute;j&rdquo; (2013) y &ldquo;Que es H&uacute;ngaro?&rdquo; (2012). &ldquo;Porticus&rdquo; (2012) en la Galer&iacute;a Acb de Budapest. Atelier Frankfurt (Alemania) con la residencia en el 2011.</span></p>\r\n'),
(12, 'Mabel', 'Poblet', 1986, 'Cuba', '<p>Naci&oacute; en Cienfuegos, Cuba, en 1986. Se gradu&oacute; en el Instituto Superior de las Artes y la Academia de San Alejandro de Bellas Artes. Ha participado en el Taller de Arte del Comportamiento dirigido por la artista cubana Tania Bruguera. En el presente se le otorg&oacute; el Premio Noemi como becaria de la residencia de la Browstone Foudation en Par&iacute;s. Tambi&eacute;n formo parte de los artistas en residencia del proyecto Havana Cultura promovido por Havana Cub.&nbsp;</p>\r\n\r\n<p><span style="line-height:1.6em">Entre sus exposiciones individuales y presentaciones incluyen obras recientes en Reverso, Centro de Arte Tomas y Valiente, Madrid (Espa&ntilde;a); Desapariencia, Galer&iacute;a Enlace Arte contempor&aacute;neo, Lima (Per&uacute;). En el pasado a&ntilde;o con Situaci&oacute;n Limite, Galer&iacute;a Raquel Ponce, Madrid (Espa&ntilde;a). En el 2012 la exposici&oacute;n Reunificaci&oacute;n Familiar, Colateral a la Oncena Bienal de la Habana, Morro Caba&ntilde;a, La Habana (Cuba); Hoy mi voz tiene sonido, Galer&iacute;a Villa Manuela, La Habana (Cuba); tambi&eacute;n en el Center for Cuban Studies (Nueva York, 2011); Inventario, Fundaci&oacute;n Ludwig de Cuba, La Habana (Cuba, 2010); Un sue&ntilde;o real, Fototeca de Cuba, La Habana (Cuba, 2009). Adem&aacute;s, ha expuesto su obra en exposiciones colectivas en paises como Inglaterra, Suiza, Cuba, USA. A participado en Ferias como Arco, Madrid (Espa&ntilde;a); ArtBo, Bogot&aacute; (Colombia); HOUSTON Fine Art Fair, TX Solo Project, Reliant Center, Houston (USA), LimaPhoto, Lima (Per&uacute;). Forma parte de la colecci&oacute;n CIFO Cisneros Fontanals Art Foundation, Estados Unidos; Brownstone Foundation, Paris, Francia; entre otras.</span></p>\r\n'),
(13, 'Ernesto', 'Rancaño', 1968, 'Cuba', '<p>Graduado de la Academia de Bellas Artes San Alejandro (1991). Miembro de la UNEAC y de la A.I.A.P. En Cuba su obra ha sido expuesta en la Galer&iacute;a Servando Cabrera, Villa Manuela, Galer&iacute;a Habana, La Casona, 23 y 12, entre otras. Tambi&eacute;n ha exhibido en centros, museos y galer&iacute;as como: Brande Art Oy, Helsinki (Finlandia);&nbsp; Marlborough Chelsea, New York (E.U.A); Center for Cuban Studies, New York (E.U.A); Sede de la UNESCO, Par&iacute;s (Francia); Square One Gallery, Londres (Inglaterra); Galer&iacute;a Espacio 304 y Museo de las Am&eacute;ricas, San Juan (Puerto Rico); Sede de la ONU, Ginebra (Suiza); Galer&iacute;a Berghein (Panam&aacute;); Galer&iacute;a Nuno Sacramento (Portugal); Museo de Bellas Artes Bonaerense, La Plata (Argentina); Museo de Arte Contempor&aacute;neo de Bogot&aacute; (Colombia); Chelsea Gallery, Kingston (Jamaica). Ha participado en ferias como Arco Madrid, Art Moscow, JustMad, ArteLisboa, Lima Photo, Houston Fine Arte Fair, ArtBo. &nbsp;</p>\r\n\r\n<p><span style="line-height:1.6em">Su obra se encuentra en diferentes colecciones: Ministerio de Cultura, La Habana (Cuba); Consejo Nacional de las Artes Pl&aacute;sticas, La Habana (Cuba); Oficina del Historiador de La Habana (Cuba); Instituto Cubano de Artes e Industria Cinematogr&aacute;fica (Cuba); Consejo de Estado (Cuba); Marlborough Gallery, New York (E.U.A); Nina Menocal, DF (M&eacute;xico); Cernuda Arte, Miami (E.U.A); Pan American Arts Projects (Miami, E.U.A); Jos&eacute; Saramago, Valencia (Espa&ntilde;a); Sting, Londres (Inglaterra); Fundaci&oacute;n Oswaldo Guayasam&iacute;n, Quito (Ecuador); Palacio de Gobierno Miraflores (Venezuela); Museo Casa Natal del Che, Rosario (Argentina); Colecci&oacute;n Proyecto Andr&eacute;s Bello (Colombia); Fundaci&oacute;n Djerassi, San Francisco (E.U.A); Sede de la ONU, Ginebra (Suiza).&nbsp;</span></p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_expo`
--

CREATE TABLE IF NOT EXISTS `artista_expo` (
  `idcolectiva_feria` int(11) NOT NULL AUTO_INCREMENT,
  `idartista` int(11) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idcolectiva_feria`),
  KEY `idexposicion` (`idexposicion`),
  KEY `idartista` (`idartista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `artista_expo`
--

INSERT INTO `artista_expo` (`idcolectiva_feria`, `idartista`, `idexposicion`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 7, 3),
(15, 4, 4),
(16, 5, 4),
(17, 7, 6),
(18, 6, 6),
(19, 3, 5),
(20, 7, 5),
(21, 12, 5),
(22, 13, 5),
(23, 5, 6),
(24, 3, 7),
(25, 4, 7),
(26, 5, 7),
(27, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_prensa`
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
-- Estructura de tabla para la tabla `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
  `idaudio` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `audio`
--

INSERT INTO `audio` (`idaudio`, `idexposicion`, `datos`, `audio_ruta`) VALUES
(2, 1, '', 'Elemental 1-4 web.mp3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`idcatalogo`, `idexposicion`, `portada`, `portada_thumb`, `pdf`, `datos`) VALUES
(3, 1, 'portada_elemental_1de4.jpg', NULL, 'cat_elemental.pdf', 'Español'),
(4, 1, 'portada_elemental_1de4.jpg', NULL, 'cat_elemental_en.pdf', 'Inglés'),
(5, 2, 'portada2de4.jpg', NULL, 'cat_elemental 2de4_es.pdf', 'Español'),
(6, 2, 'portada2de4.jpg', NULL, 'cat_elemental 2de4_en.pdf', 'Inglés'),
(9, 3, 'uli_portada.jpg', NULL, 'cat_uli_de.pdf', 'Alemán'),
(10, 3, 'cat_uli-1.jpg', NULL, 'cat_uli_es.pdf', 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversatoraudio`
--

CREATE TABLE IF NOT EXISTS `conversatoraudio` (
  `idaudio` int(11) NOT NULL AUTO_INCREMENT,
  `idexposicion` int(11) NOT NULL,
  `datos` varchar(255) DEFAULT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`idaudio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversatorio`
--

CREATE TABLE IF NOT EXISTS `conversatorio` (
  `idconversatorio` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idconversatorio`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversatorio_fotos`
--

CREATE TABLE IF NOT EXISTS `conversatorio_fotos` (
  `idconversatorio_fotos` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idconversatorio_fotos`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Volcado de datos para la tabla `conversatorio_fotos`
--

INSERT INTO `conversatorio_fotos` (`idconversatorio_fotos`, `imagen`, `imagen_thumb`, `idexposicion`, `descripcion`) VALUES
(25, '0C25D0D39DAFA6892F5DA24CAE0AD477.png', NULL, 1, ''),
(26, 'F7C2815CEF1E8A8298033A4697EF7D46.png', NULL, 1, ''),
(27, 'CD487B26B91C5848E687AE6CE50380A0.png', NULL, 1, ''),
(28, 'A2B201F971FF2E5607EEB488C401870D.png', NULL, 1, ''),
(29, 'B436AE43FAFCD8FB76916AFEF59ED896.png', NULL, 1, ''),
(30, 'EC24EA39DE8B2E5EE38468180554E780.png', NULL, 1, ''),
(31, '3983C6ADBA5E9C97A9D0A6DCF8E9E1A6.png', NULL, 1, ''),
(32, 'CC3925AF70FA96F9379CBE2CA0A112CB.png', NULL, 1, ''),
(33, 'B6F48D12578C34365B7C5DC96153A49F.png', NULL, 1, ''),
(34, '0E455A4731D7B5532121CC453D25085C.png', NULL, 1, ''),
(35, 'D12346208F8BAF7C435B1BB338CED7D1.png', NULL, 1, ''),
(36, 'C7F0C6308324D0FF0A7000D0CCE0D010.png', NULL, 1, ''),
(37, 'D4F57C1225FCDA7734E3C95D2FB361C4.png', NULL, 1, ''),
(38, '9C4FD37B9BF5D3892C4BAF2E57533199.png', NULL, 1, ''),
(39, '84E696A01F2D678B37D3D4453933A7E2.png', NULL, 1, ''),
(40, '88BA0B405ED7DFC22FE91F376A94C3C7.png', NULL, 1, ''),
(41, '73BD4ABFEB4BDF9D59E2CBCB5752804E.png', NULL, 1, ''),
(42, '3109451255B811FFB8FEE5E6D73C8FA8.png', NULL, 1, ''),
(43, '6BB2A79ED07EFE6B17938581CF64FB17.png', NULL, 1, ''),
(44, '4460B5FEE2E216ACC76F445FEBB0C699.png', NULL, 1, ''),
(45, '7A93DE05B791EFD29958C65DCAC54E0B.png', NULL, 1, ''),
(46, '939B57DF065955E23746FC0151356A43.png', NULL, 1, ''),
(47, '06D038CCE024024E20B4AAE8267E4414.png', NULL, 1, ''),
(48, '1249EA5D2387D125C585E63B4F78CBB8.png', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposicion`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `exposicion`
--

INSERT INTO `exposicion` (`idexposicion`, `nombre1`, `nombre2`, `lugar`, `fecha_inicio`, `fecha_fin`, `tipo`, `pais`) VALUES
(1, 'Elemental 1|4', '', 'Orfila 5, 28010, Madrid', '2013-09-19 00:00:00', '2013-11-03 00:00:00', 'COLECTIVA', 'España'),
(2, 'Elemental 2|4', '', 'Orfila 5, 28010, Madrid', '2014-09-18 00:00:00', '2014-11-13 00:00:00', 'COLECTIVA', 'España'),
(3, 'Human Nature', 'Uli Westphal', 'Odalys Galería de Arte, C. Comercial Concresa, Nivel PB, Caracas', '2013-11-30 00:00:00', '2014-01-26 00:00:00', 'INDIVIDUAL', 'Venezuela'),
(4, 'SUMMA Contemporary 2013', 'International Art Fair', 'Matadero Madrid', '2013-09-19 00:00:00', '2013-09-22 00:00:00', 'FERIA', 'España'),
(5, 'SUMMA Contemporary 2014 ', 'International Art Fair', 'Matadero Madrid', '2014-09-18 00:00:00', '2014-09-21 00:00:00', 'FERIA', 'España'),
(6, 'Art Fair Tokyo 2014', '', 'Tokyo International Forum', '2014-03-07 00:00:00', '2014-03-09 00:00:00', 'FERIA', 'Japón'),
(7, 'OFF', 'Brussels Contemporary Art Fair 2014', 'Tour & Taxis Brussels', '2014-04-25 00:00:00', '2014-04-28 00:00:00', 'FERIA', 'Bélgica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotosexposicion`
--

CREATE TABLE IF NOT EXISTS `fotosexposicion` (
  `idfotosexposicion` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idfotosexposicion`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `fotosexposicion`
--

INSERT INTO `fotosexposicion` (`idfotosexposicion`, `imagen`, `imagen_thumb`, `idexposicion`, `descripcion`) VALUES
(19, 'A362CE26FFD89FEB95885B00DCFA231B.jpg', NULL, 3, ''),
(20, 'C5E0F53AA23BFA71CA88DD846B49A04C.png', NULL, 3, ''),
(21, '0F3D5A9C1E2128F93ACA36B3AED9030C.jpg', NULL, 3, ''),
(22, '338C153A0C3C030D3ECA55B58A1944F3.png', NULL, 3, ''),
(23, 'CADFB09A0C15140FC21B501C69768CCC.jpg', NULL, 3, ''),
(24, '4902DBDC58C8E46FEC7CBB031F42EC86.png', NULL, 3, ''),
(25, '7751263C0B8B4AAB50122A997841D3E6.png', NULL, 3, ''),
(26, '1DE5BD48D679C5E7FBCE61907FA67B99.jpg', NULL, 3, ''),
(27, '0AEB960DB923DE7D8550FFB554038234.png', NULL, 3, ''),
(28, 'B596951AFA54786F5D00B5F0095ED5F0.jpg', NULL, 1, ''),
(29, 'A0F91C256D2F8FFE24B7F6DC6169ACD1.jpg', NULL, 1, ''),
(30, 'EED2B3117D0196206662904C4E3D8C0F.jpg', NULL, 1, ''),
(31, '07501AF278073F7E4C0EFADC1B47F3EC.jpg', NULL, 1, ''),
(32, '581CE39576ED173092C4B4682B06D112.jpg', NULL, 1, ''),
(33, '3DA49D64391E5A71D593EDE857104DB4.jpg', NULL, 1, ''),
(34, 'B5C85AD18DC8F077C7A050002CDA4074.jpg', NULL, 1, ''),
(35, '0C492F25D16F15E54CB71F3512D36F1F.jpg', NULL, 1, ''),
(36, '91CB2227DA2D7BB6C08CD88D6A1F028E.jpg', NULL, 1, ''),
(37, '9B128553B1B5B6C09E19B46A904AB920.png', NULL, 1, ''),
(38, '15EC905F63BAB7539D8BA34824E77B73.png', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(6) DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `idioma`, `nombre`) VALUES
(1, 'es', 'Español'),
(2, 'en', 'Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montaje`
--

CREATE TABLE IF NOT EXISTS `montaje` (
  `idmontaje` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idmontaje`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- Volcado de datos para la tabla `montaje`
--

INSERT INTO `montaje` (`idmontaje`, `imagen`, `imagen_thumb`, `idexposicion`, `descripcion`) VALUES
(103, 'EEB783CAD4E58FF02780644F2208E247.png', NULL, 4, ''),
(104, '03EBE29C7949E7EA0267F3ADB4CC0118.png', NULL, 4, ''),
(105, '4D1A7A944173F1440AECF4302CC545A0.png', NULL, 4, ''),
(107, '63D77217A8A2C8E70EC3831CFABEAE82.png', NULL, 4, ''),
(109, '321B081EFDE5F81AA6B921BB59C19848.png', NULL, 4, ''),
(110, 'B401C12961529708F10AD3D77A3E186D.png', NULL, 4, ''),
(112, '2DC442C8477E3A8DDB6C1B67C66934E4.png', NULL, 4, ''),
(113, '09E5F41D94E22616C2980DB2962C6E9E.png', NULL, 4, ''),
(114, '76D67E28BEE035E0DFE9A093DADA647B.png', NULL, 4, ''),
(122, 'E903EDD062B92181E492C311523083C5.png', NULL, 3, ''),
(123, 'B33FA7C394EC94E6CE0BE154C384374C.png', NULL, 3, ''),
(128, 'BAB4B94E822E91710AE49766636ECF48.png', NULL, 3, ''),
(130, '5EE6D1D7086FBAF8BCC02133E1684A2A.png', NULL, 3, ''),
(131, '339EB226BA420CFACEA473BB3E2E18F2.png', NULL, 3, ''),
(135, '9EEE1140E3AA9F34B15D6296A2E42CE2.png', NULL, 3, ''),
(137, '6C4ABD6867A6C2E92F0687857127E9AD.png', NULL, 3, ''),
(138, 'AF99932AB5F5C85D91095F6A31A489CB.png', NULL, 3, ''),
(140, '1681BDEB0B9C8F6A3A601DE7A6DEEF15.png', NULL, 3, ''),
(148, '078C4B2D397ED0DDAAB315F86F6CCCCB.png', NULL, 3, ''),
(149, '955EEF80E06CCF91052C541E5D8C3840.png', NULL, 6, ''),
(150, '2E05D203EB86ABF58422B5DFD20A57F9.png', NULL, 6, ''),
(151, 'BD69DB53736C11D6471C8EAFB6F6395E.png', NULL, 6, ''),
(152, '319DCF09DCBAA39FA4EAEFC8B84AAC18.png', NULL, 6, ''),
(153, '6E9CD9EC04CF92DD89F0A2FA8D187783.png', NULL, 6, ''),
(154, 'F5491E96B86D0BA8556E48A3D38F395F.png', NULL, 6, ''),
(155, '3D350AB9713B4350C037BEA059A1A296.png', NULL, 6, ''),
(156, '729FD1006E670A7DD4AEDC9A7560326A.png', NULL, 6, ''),
(157, '47094826BEFC6A3BD065B8523BC18D75.png', NULL, 6, ''),
(158, 'C4A58B66B3C5AA53345BB47CEA6D69D2.png', NULL, 6, ''),
(159, '5D087AB8CAF5C12256B89230A1A79D55.png', NULL, 6, ''),
(160, '74BE19E8B876967F00979F32F09C2B6A.png', NULL, 3, ''),
(162, '437B31F7BF32125E59FA44F6F62F9005.png', NULL, 1, ''),
(163, '731A33573920BF0D0F8D1A800881A3DB.png', NULL, 1, ''),
(164, '2A2729FE3E3796CC23C01C8E69E2EDC1.png', NULL, 1, ''),
(165, '5453C4643A79792C7C74CFE4EBE6B58A.png', NULL, 1, ''),
(166, 'DE9025D3843D76C024080EE368CCA2A7.png', NULL, 1, ''),
(167, '1D6C355B9E3AF7A93BF2DA93E9E1AF54.png', NULL, 1, ''),
(168, '299C92CA8CD2403D291E4B083EA6F550.png', NULL, 1, ''),
(169, '02564A4898B42E6BBC685BD8E8E43012.png', NULL, 1, ''),
(170, 'EE8162175F76225E0E51F86E991718F8.png', NULL, 1, ''),
(171, 'E6BE9234CF574DD1540528B147F1D790.png', NULL, 1, ''),
(172, 'CF8C35257CFFA13462C1AC673F852635.png', NULL, 1, ''),
(173, '95F75C53C7A16193E6C4ECEC9E63AF72.png', NULL, 1, ''),
(174, 'CA379CF3777661861D881936397CD77D.png', NULL, 1, ''),
(175, '267A98FB9CD6DC62297D03C510058E39.png', NULL, 1, ''),
(176, 'C478928E5CD16058A5A2DF8ECDFA0B29.png', NULL, 1, ''),
(177, '7ED341B2F854A56E3EF65C550FB9335C.png', NULL, 1, ''),
(178, 'F84AC920E83A7213D27F8C50CBA90DFB.png', NULL, 1, ''),
(179, 'BF74590F710BB591762ED476173B929A.png', NULL, 1, ''),
(180, '778AF9AA325800F4F3161EDFFA023804.png', NULL, 1, ''),
(181, '21848F5B3D7A71FDACF55E6BA352C09A.png', NULL, 1, ''),
(182, '9DCCE8BB2100AC4400B715973F492DF2.png', NULL, 1, ''),
(183, '6A5FAE11A46962F7F8298DD2234B9979.png', NULL, 1, ''),
(184, '8316C8FFFD66D50F6B7815780177C700.png', NULL, 1, ''),
(185, 'AF5B3897E9850C4AA638A9D56B4DA8E9.png', NULL, 1, ''),
(186, '5E5CFFDAFB567B8677CD7D8B41E16907.png', NULL, 1, ''),
(187, '7DB34B3D236BD3DE5EAD63C762246ECB.png', NULL, 1, ''),
(188, 'C994E4EB7BFB0C9E18D1523C6EA04B78.png', NULL, 1, ''),
(189, 'DE80520962760E7DB78FFBB8048AD636.png', NULL, 1, ''),
(190, 'B59F177B65D580DBDDFA4DA52A5F1DFE.png', NULL, 1, ''),
(191, 'C0CB8901ED87529DA282A040C62DDAF8.png', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
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
-- Estructura de tabla para la tabla `obra`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`idobra`, `idartista`, `imagen`, `imagen_thumb`, `descripcion`, `idexposicion`) VALUES
(1, 1, 'D3A1755191976EC97C1D7BD97C8A5E57.jpg', '', 'Diamond Circle. 2011. Collar. Acero inoxidable. 0.3 x 29.5 x 29.5 cm', 1),
(2, 1, 'A228222D778DC8FF00A2541D7EFEC224.jpg', '', 'Diamond Cloud I. 2012. Collar. Acero inoxidable. 3.5 x 7.5 x 18.5 cm', 1),
(3, 1, '4D91046F622CDB006EE50548DE6F5510.jpg', '', 'Diamond Cloud II. 2012. Collar. Acero inoxidable. 4.5 x 10 x 18 cm', 1),
(4, 1, '2DC15B8D536CDF6FE87BE8A3D1398501.jpg', '', 'Diamond Cloud III. 2013. Collar. Acero inoxidable. 14 x 11.5 x 2 cm', 1),
(5, 1, '5B09E34E85309893B2B4779D7BC143E6.jpg', '', 'Diamond Foam I. 2013. Broche. Acero inoxidable. 7 x 7 x 20 cm', 1),
(6, 1, '79578BC1FDAD72EA862FB0FFED5CA7B3.jpg', '', 'Diamond Foam II. 2013. Broche. Acero inoxidable. 11 x 14.5 x 6 cm', 1),
(7, 1, '6895FCA80E890BFC65DA14889E00F303.jpg', '', 'FourStone. 2013. Aretes. Acero inoxidable. 9 x 5 x 2 cm', 1),
(8, 1, '0A78682237D267413D289C717A0004C9.jpg', '', 'ThreeStone. 2013. Aretes. Acero inoxidable. 6 x 5 x 2 cm', 1),
(9, 1, 'D2C49933C0A46C5CD6E70489BBB5E1AA.jpg', '', 'Command D. 2013. Collar. Acero inoxidable. 0.27 x 10 x 19 cm', 1),
(10, 2, 'D90A241B95F73714D768B377CF9FF309.jpg', '', 'Reflection. 2011. Vaciado en vidrio. 54 x 60 cm', 1),
(11, 2, 'C0CA666C312C8A1A5E6B15CF0AA4D5F8.jpg', '', 'Space Corridor. 2008. Vidrio vaciado y pulido. 20 x 33 x 5 cm', 1),
(12, 2, 'B47B9D4F8F83BBF1B54CCA96E842E64C.jpg', '', 'Idol. 2001. Vaciado en vidrio. 26 x 12 cm', 1),
(13, 3, '0E56DAC6C88C0E50949E033F81027C78.jpg', '', 'Víz III (Agua III). Serie Arsenal Venecia. 2013. Fine art print sobre aluminio dibond. 100 x 138 cm. Ed. 1/6', 1),
(14, 3, 'F6F10996214624BFB22B4A55A6231411.jpg', '', 'Víz II (Agua II). Serie Istambul. 2013. Fine art print sobre aluminio dibond. 100.6 x 256 cm. Ed. 1/6', 1),
(15, 3, '26035867C13D5153BCE6BA6F6F5FE931.jpg', '', 'Víz I (Agua I). Serie Barcelona. 2013. Fine art print sobre aluminio dibond (tríptico). 100.6 x 145 cm. Ed. 1/6', 1),
(16, 4, '9FC11E275CEC30A0E0B8853A3E6BD53F.jpg', '', 'Kylemore. 2010. Tinta sobre papel. 21 x 29.7 cm', 1),
(17, 4, '56C92CB537B099619B5D3BAF551F22FF.jpg', '', 'Fukuokakuko. 2009. Tinta sobre papel. 23 x 33 cm', 1),
(18, 4, '7A216DDBE566023741C482A49CBEA491.jpg', '', 'Sin título (119.3). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(19, 4, '72E566166FC92C7AB142CE7E26AB009A.jpg', '', 'Sin título (85.5). 2011. Tinta sobre papel. 24 x 32 cm', 1),
(20, 4, '84B1BA7333812FD02F9FABE82933336F.jpg', '', 'Sin título (119.7). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(21, 4, '477F0FFB280E4DED01453AA0729BEB36.jpg', '', 'Sin título (84.2). 2011. Tinta sobre papel. 24 x 32 cm', 1),
(22, 4, '8FFE88605BA7F93246AA2D03D3B2DB8F.jpg', '', 'Sin título (119.4). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(23, 4, '5A898AD406F1655E133D209441FDFB80.jpg', '', 'Sin título (119.1). 2013. Tinta sobre papel. 30 x 42 cm', 1),
(24, 4, 'D88F36B4096258B98114CA86B12B7DFE.jpg', '', 'Icosaedro. 2007. Palos de escoba y bridas. 200 x 250 x 250 cm. Ed. 3/5', 1),
(25, 5, '1A18B458569AD563F635E5ED6DA52493.jpg', '', 'Somewhere #004. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm c/u (2 piezas)', 1),
(26, 5, 'D325FE7C4873E817772BC017763B6397.jpg', '', 'Somewhere #005. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 1),
(27, 5, '0ED3C01DBA152F5249858149F8D008B7.jpg', '', 'Somewhere #007. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 1),
(28, 5, 'BDFD668B5DC78235BD968BE48B744B7A.jpg', '', 'Somewhere #006. 2012. AAA The desert series. Tinta sobre papel. 35 x 50 cm', 1),
(29, 5, 'D2E19A29DBD227269A64AB91CFE9D69A.jpg', '', 'Somewhere #003. 2012. AAA The desert series. Tinta sobre papel. 64.2 x 44.2 cm', 1),
(30, 5, '73F7840115F6CE226BE49BF02663923A.jpg', '', 'Somewhere #002. 2012. AAA The desert series. Tinta sobre papel. 35 x 50 cm', 1),
(31, 5, '2F139440C1CCA95BF3FFFC3F69EA8E0D.jpg', '', 'How to lie with maps. 2013. Láminas de aluminio negro. Dimensiones variables', 1),
(32, 6, 'A31136513B0DBFB2797EA0C26029D275.jpg', '', 'In private with myself. 2011. Vaciado en vidrio. 50 x 22 x 20 cm', 1),
(33, 6, 'D69B94722D06403AC158DCCCACD52BEB.jpg', '', 'Connected to me. 2013. Vaciado en vidrio. 45 x 21 x 13 cm', 1),
(34, 6, '1BBCC042FCDFD9CDE09A9389C5A6521F.jpg', '', 'Suzie. 2008. Vaciado en vidrio. 29 x 10 x 10 cm', 1),
(35, 6, '07703E1B119FE9A866B3C81313DA5E1A.jpg', '', 'Yuck. 2009. Vaciado en vidrio. 21 x 14 x 13 cm', 1),
(36, 6, 'CBE9A5CB7A6B14A1299CAAE522478A4D.jpg', '', 'Yummie. 2009. Vaciado en vidrio. 29 x 16 x 13 cm', 1),
(37, 6, '2979BE808DEFF7D4B17E318748BF033D.jpg', '', 'Hot bath. 2009. Vaciado en vidrio. 18 x 18 x 11 cm', 1),
(38, 7, '2E384804510B0CDFA6285C077BB0515C.jpg', '', 'Mutatoes. 2006 - 2013. Fotografía sobre aluminio dibond. 23.6 x 30 cm c/u (100 piezas)', 1),
(39, 7, '7A385A540395B5231CA69AE09943AEE8.jpg', '', 'Shelflife. 2011. Luces fluorescentes, cables y madera. 122.5 x 250 cm', 1),
(40, 8, '58A118869314D92E5D0196AE0521E542.jpg', '', 'Apolide. 2013. Super 8 mm B/N en DVD. 10’05’’. Apolide (apátrida) es un episodio de una película de ciencia ficción ambientada en un futuro anacrónico. El protagonista es un hombre sin memoria que intenta descubrir su identidad moviéndose como un explorador entre recuerdos vagos. La ciudad que recorre genera recuerdos que transforman contínuamente el paisaje urbano y la arquitectura del lugar.', 2),
(41, 8, '1911FAB0240D8A2F6AD6592452E6B9C2.jpg', '', 'Sin título. De la serie “Urbanización de la memoria”. 2013 - 2014. Lápiz sobre papel. 41 x 57 cm c/u. Los dibujos que se presentan son paisajes arquitectónicos inexistentes. Las imágenes son etéreas y flotan en el vacío en medio de la hoja. Se basan en construcciones reales que el artista ha visto. Algunos de estos lugares ya no existen o han cambiado a través del tiempo. Aguila intenta reconstruirlos básandose en sus recuerdos.\r\n', 2),
(42, 8, '256FCA648D4EEDE63B5DFF5EC08CF2D2.jpg', '', 'Sin título. De la serie “Urbanización de la memoria”. 2013 - 2014. Lápiz sobre papel. 41 x 57 cm c/u. Los dibujos que se presentan son paisajes arquitectónicos inexistentes. Las imágenes son etéreas y flotan en el vacío en medio de la hoja. Se basan en construcciones reales que el artista ha visto. Algunos de estos lugares ya no existen o han cambiado a través del tiempo. Aguila intenta reconstruirlos básandose en sus recuerdos.\r\n', 2),
(43, 8, 'EC466AB82EAAFADCE25F27AB595CA907.jpg', '', 'Sin título. De la serie “Urbanización de la memoria”. 2013 - 2014. Lápiz sobre papel. 41 x 57 cm c/u. Los dibujos que se presentan son paisajes arquitectónicos inexistentes. Las imágenes son etéreas y flotan en el vacío en medio de la hoja. Se basan en construcciones reales que el artista ha visto. Algunos de estos lugares ya no existen o han cambiado a través del tiempo. Aguila intenta reconstruirlos básandose en sus recuerdos.\r\n', 2),
(44, 8, 'D020B7CA6EEF8B6DC57F9761D7670E8A.jpg', '', 'Sin título. De la serie “Urbanización de la memoria”. 2013 - 2014. Lápiz sobre papel. 41 x 57 cm c/u. Los dibujos que se presentan son paisajes arquitectónicos inexistentes. Las imágenes son etéreas y flotan en el vacío en medio de la hoja. Se basan en construcciones reales que el artista ha visto. Algunos de estos lugares ya no existen o han cambiado a través del tiempo. Aguila intenta reconstruirlos básandose en sus recuerdos.\r\n', 2),
(45, 8, '6E0E2100812D8E656CEBBDB2FB00718C.jpg', '', 'Sin título. De la serie “Urbanización de la memoria”. 2013 - 2014. Lápiz sobre papel. 41 x 57 cm c/u. Los dibujos que se presentan son paisajes arquitectónicos inexistentes. Las imágenes son etéreas y flotan en el vacío en medio de la hoja. Se basan en construcciones reales que el artista ha visto. Algunos de estos lugares ya no existen o han cambiado a través del tiempo. Aguila intenta reconstruirlos básandose en sus recuerdos.', 2),
(46, 9, 'F34D5503D5EB8A0B62B6A80A5E940865.jpg', '', 'Marie. 2014. Acrílico sobre lienzo. 150 x 200 cm. El título de cada trabajo hace referencia al nombre del protagonista de 3 emblemáticas películas de terror. En todos estos dibujos existe una tensión entre el ámbito correspondiente a la película y el contexto personal que rodea al artista.', 2),
(47, 9, '00C438BBF239E23BF5690777AC76E5ED.jpg', '', '\r\nAudrey. 2014. Acrílico sobre lienzo. 200 x 300 cm. El título de cada trabajo hace referencia al nombre del protagonista de 3 emblemáticas películas de terror. En todos estos dibujos existe una tensión entre el ámbito correspondiente a la película y el contexto personal que rodea al artista.', 2),
(48, 9, 'D5533E8DFA7CFDD4CDBEDAC280BBBEFC.jpg', '', '\r\nRegan. 2011. Acrílico sobre papel. 70 x 100 cm. El título de cada trabajo hace referencia al nombre del protagonista de 3 emblemáticas películas de terror. En todos estos dibujos existe una tensión entre el ámbito correspondiente a la película y el contexto personal que rodea al artista.', 2),
(49, 10, '535655796E6020CEFC083A5D2729D990.jpg', '', 'A nivel. 2012. Impresión digital, nivel láser y pintura vinílica negra. 3 paneles de 3 m cada uno y fotografía de 62 x 110 cm, sobre PVC\r\n', 2),
(50, 10, '983C34EEA3921807F1FE1A83B41CD30C.jpg', '', 'Estado de Archivo. De la serie Estados. 2012. Impresión digital, Hi8 y Mini DV. 35 x 150 cm\r\n', 2),
(51, 10, '195828A8E027D9493A110C450118B1A0.jpg', '', 'Incomunicación. De la serie Estados. 2012. Fotografía, teléfonos de distintas épocas. 30 x 120 cm\r\n', 2),
(52, 10, 'AE90BD1C813AFA4F2010368FCEE61F4C.jpg', '', 'Estado de Archivo versión 2. De la serie Estados. 2012. Impresión digital, disquetes, CD, DVD. 52 x 200 cm', 2),
(53, 11, '65B8A675B0A487D0EA6C2EFB41257844.jpg', '', 'Círculo amarillo. 2014. Madera y pintura acrílica. 50.2 x 55.7 cm\r\n', 2),
(54, 11, 'D10358EDB84ADB04D5825846CA0FAECA.jpg', '', 'Arcoiris. 2014. Caja de madera, polipropileno y pintura acrílica. 49.5 x 87 cm\r\n', 2),
(55, 11, '4B63C64FFCF34E27C78E43AC894C89CF.jpg', '', 'Altar. 2014. Caja de madera, polipropileno y pintura acrílica. 49.5 x 87 cm\r\n', 2),
(56, 11, '86E4506BEB5CB61D91D4715540350A7C.jpg', '', 'Transición de amarillo a rojo. 2014. Madera y pintura acrílica. 45 x 31 cm', 2),
(57, 12, '86BD6006C21D4CAF29ACB96F969CC270.jpg', '', 'Marea Alta. De la serie Patria. 2014. Impresión fotografica plastificada. 200 x 300 x 20 cm\r\n', 2),
(58, 12, '3823FA25F4908743BB4C8CAED8DF78EB.jpg', '', 'In & out. De la serie Patria. 2014. 99 x 99 x 48 cm cada una. Metacrilato, impresion digital, espejo, luz', 2),
(59, 13, '21061198AF097F716E43EAFA827EF4F5.jpg', '', 'Insisto. 2013. Metal, fotografía y luz. Dimensiones variables\r\n', 2),
(60, 13, 'D6CC3031B2E95325D83C200C3E2AD6E6.jpg', '', 'Dibujo detenido. 2013. Metacrilato, cristal, polvo de grafito, LED. 15 x 54 x 26 cm\r\n', 2),
(61, 13, '54C1BA823D1127CE4948E7A0160F6414.jpg', '', 'El hombre rico. 2013. Metacrilato, cristal, fotografías, LED. 15 x 122 x 29 cm\r\n', 2),
(62, 13, 'F207E96ACC73E4C1B2C884565A5300ED.jpg', '', 'Olvido. 2013. Metacrilato, madera, cerámica, metal, LED. 110.5 x 80.5 x 100 cm', 2),
(63, 7, '2EFA89DF3F3C8333FD10605CDD2FA247.jpg', '', 'Chimaerama #7. 2004-2013. Edición: única. 47 x 54 x 20 cm. Madera, metal, componentes electrónicos diversos \r\n', 3),
(64, 7, 'F9371188D226BCFE13C694118B5B388A.jpg', '', 'Elephas Anthropogenus. 2008. Edición: 9. 225 x 150 cm. Tinta pigmentada LUCIA con capa mate de lacado UV sobre lienzo, varillas de madera\r\n', 3),
(65, 7, '3BC331FCBE0B510D53AFBE600B703201.jpg', '', 'Mutatoes. 2006 - actualmente. Edición: 9. 23.6 x 30 cm. Fotografías en C-Print en papel Fuji Prof. DP II, montadas sobre aluminio (dibond) de 2 mm, sellado bajo plexiglás de 3mm\r\n', 3),
(66, 7, '5B2846F7E54323D66ED3E63CF05B7024.jpg', '', 'Aunt Ruby’s German Green. 2013. Edición: única. 120 x 150 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV\r\n', 3),
(67, 7, '8654AA687B399D56376242151C67BCD6.jpg', '', 'LYC 989 Guatemala. 2013. Edición: única. 120 x 150 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV\r\n', 3),
(68, 7, '892E70E916C819485F22154794A02B2F.jpg', '', 'Noire De Coseboeuf. 2013. Edición: única. 120 x 150 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV\r\n', 3),
(69, 7, '11EBCB12B91A32B3F770FFAD61017E01.jpg', '', 'Lycopersicum III. 2010 - actualmente. Edición: 5. 120 x 240 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV\r\n', 3),
(70, 7, '5C644CFAFB36F48068D6B1E26FC9C8F3.jpg', '', 'Phaseolus vulgaris I. 2013. Edición: 5. 120 x 240 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV\r\n', 3),
(71, 7, '12579E3922A9F074A0131DCD45A6AFC0.jpg', '', 'Shelflife. 2011. Edición: 6. 250 x 122.5 cm. Luces fluorescentes, cables, madera', 3),
(72, 5, 'E019A7121586BC045299F854B3912D58.jpg', '', 'Somewhere #004. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm c/u (2 piezas)', 4),
(73, 5, '5449520A7207C1CF224A518EA6FB2D67.jpg', '', '\r\nSomewhere #002. 2012. AAA The desert series. Tinta sobre papel. 35 x 50 cm', 4),
(74, 5, '35C19B8D661C8903333F00C62475AB13.jpg', '', '\r\nSomewhere #003. 2012. AAA The desert series. Tinta sobre papel. 64.2 x 44.2 cm', 4),
(75, 5, '318D0A7C1A48558639003A1309C0D1CE.jpg', '', '\r\nHow to lie with maps. 2013. Láminas de aluminio negro. Dimensiones variables (detalle)', 4),
(76, 5, '52B9F5B49EE5B75B9D7A70A94DB5CFFC.png', '', '\r\nHow to lie with maps. 2013. Láminas de aluminio negro. Dimensiones variables\r\n', 4),
(77, 4, 'EC6AA76BE432E1A96B90A75180AD475C.jpg', '', 'Sin título (119.4). 2013. Tinta sobre papel. 30 x 42 cm', 4),
(78, 4, '0E55CD307BCD517FE2BD6367F87000D8.jpg', '', '\r\nKylemore. 2010. Tinta sobre papel. 21 x 29.7 cm', 4),
(79, 4, 'FF5FF64112DE86376A83778AA1025ABC.jpg', '', '\r\nFukuokakuko. 2009. Tinta sobre papel. 23 x 33 cm', 4),
(80, 4, 'F77FAD5C35494C1BCD1AE51EF010885B.jpg', '', '\r\nSin título (119.7). 2013. Tinta sobre papel. 30 x 42 cm', 4),
(81, 4, '4A6F9451E719FCCB66CB8813FF451153.jpg', '', '\r\nIcosaedro. 2007. Palos de escoba y bridas. 200 x 250 x 250 cm. Ed. 3/5', 4),
(82, 12, '7E655840DC00F4F2FDACC42A9BEF93F3.jpg', '', 'In & out. De la serie Patria. 2014. 99 x 99 x 48 cm cada una. Metacrilato, impresion digital, espejo, luz', 5),
(83, 7, 'DAC176CBC5357601043EEA6BEF21C2E1.jpg', '', 'Mutatoes. 2006 - 2013. Fotografías sobre aluminio dibond. 23.6 x 30 cm c/u (100 piezas)', 5),
(84, 7, 'DE2A5651D9C31FE7C8594CBBA2691057.jpg', '', 'Chimaerama #7. 2004-2013. Edición: única. 47 x 54 x 20 cm. Madera, metal, componentes electrónicos diversos', 6),
(85, 7, '40AA0C6E60712B4465C47F5C98F2EEB7.jpg', '', 'Mutatoes. 2006 - 2013. Fotografías sobre aluminio dibond. 23.6 x 30 cm c/u (100 piezas)', 6),
(86, 5, '4D47C6A3580C73EB6032182E00F0B290.jpg', '', 'Somewhere #004. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm c/u (2 piezas)', 6),
(87, 5, '1CA8E6BD3B062F15CD5227E759A17B2E.jpg', '', '\r\nSomewhere #005. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 6),
(88, 5, 'E8AA12540AAABB001FAA26D34E1C62F9.jpg', '', '\r\nSomewhere #007. 2013. AAA The Desert Series. Tinta sobre papel. 25 x 35 cm', 6),
(89, 3, '01897F3E3CC8622768B1A559335B5741.png', '', 'Bicho. 2013. Impresión en tela. 90 x 65 x 2 cm', 7),
(91, 7, '3E54E31B6542F465FC2EF564E9501D74.jpg', '', 'Lycopersicum III. 2010 - actualmente. Edición: 5. 120 x 240 cm. Impresión con tinta pigmentada (Epson Ultrachrome Tinta K3) sobre papel mate Bonjet Photo Art, laminado sobre Alu-Dibond con protector UV', 7),
(92, 7, '7F1713D899CA680E77A18EE37D6325DF.jpg', '', '\r\nChimaerama #7. 2004-2013. Edición: única. 47 x 54 x 20 cm. Madera, metal, componentes electrónicos diversos', 7),
(93, 4, '017F1446C645CD0BD5DA15A6BCFF9298.jpg', '', 'Icosaedro. 2007. Palos de escoba y bridas. 200 x 250 x 250 cm. Ed. 3/5', 7),
(94, 3, '4325FC37551DF8A410547551AC1CBA74.png', '', 'Puercoespín Cuadrado. 2013. Impresión en tela. 90 x 65 x 2 cm', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prensa`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `prensa`
--

INSERT INTO `prensa` (`idprensa`, `fecha`, `imagen`, `imagen_thumb`, `idexposicion`, `titulo`, `contenido`, `link`) VALUES
(5, '2014-09-19 00:00:00', '1411064490_251336_1411064750_noticia_normal.jpg', NULL, 5, 'El (pequeño) ARCO de otoño', '“Esto es como ARCO, pero distinto”, comenta un visitante a otro en el primer día de la feria de arte Summa. Lo hace frente al espacio de la galería Odalys, referencia en España y Venezuela. Esta casa es uno de los factores a favor de ese “como ARCO”. La sala es una habitual de la cita de arte contemporáneo más importante de España, y está presente también en este segundo cumpleaños de Summa. Su contenido, ahora, es un buen ejemplo del “pero distinto”. La sala ha optado, como el año pasado, por dejar de lado su fondo de obra y mostrar el programa Elemental, que impulsa a jóvenes creadores.', 'http://ccaa.elpais.com/ccaa/2014/09/18/madrid/1411064490_251336.html'),
(6, '2014-10-08 00:00:00', '1412800977_850889_1412801310_noticia_normal.jpg', NULL, 2, 'Encapsular los recuerdos', '<p>Materializar la memoria puede ser una labor tan complicada como meter el mar Caribe en una galer&iacute;a. Mabel Poblet (Cienfuegos, 1986) junto con otros cinco artistas que participan en Elemental 2/4 lo consiguen. Esta es la continuaci&oacute;n de un proyecto que la galerista Odalys S&aacute;nchez de Saravo comenz&oacute; hace un a&ntilde;o y al que, como su nombre indica, le quedan otras dos ediciones sobre algunas de las cuestiones elementales de la humanidad.</p>\r\n\r\n<p>Al entrar en la galer&iacute;a Odalys, la obra de Hugo Alonso (Soria, 1981) muestra el punto de fuga. Un largo pasillo invita al espectador a recorrer este paseo por la memoria de otros que le pueden hacer reflexionar sobre la suya. Alonso representa escenas que forman parte de sus recuerdos. Lugares as&eacute;pticos que pueden resultar familiares tanto por estar en el imaginario colectivo como por ser recreaciones de espacios que el que observa se podr&iacute;a encontrar en cualquier parte. Son representaciones de escenarios de pel&iacute;culas de terror a los que a&ntilde;ade objetos de su vida cotidiana. El aer&oacute;grafo en blanco y negro dota a sus lienzos de un aire de misterio y melancol&iacute;a, caracter&iacute;stica com&uacute;n en toda la exposici&oacute;n.</p>\r\n\r\n<p>Hay un halo de nostalgia que recorre todas las obras. In &amp; Out, de la artista cubana Mabel Poblet, es un d&iacute;ptico conceptual con dos elementos claramente reconocibles: el mar y el cielo de su isla natal, que se repetir&aacute;n en m&aacute;s obras de esta serie Patria y que habla de la memoria colectiva. Sus creaciones han evolucionado. Su trabajo anterior estaba vinculado a sus recuerdos individuales, a vivencias personales. Poblet part&iacute;a de historias en las que ella era la referencia. De ni&ntilde;a quiso ser artista porque era muy t&iacute;mida y las artes pl&aacute;sticas fueron el mejor medio que encontr&oacute; para expresarse. La migraci&oacute;n, omnipresente en Cuba, siempre ha estado presente en su vida. A trav&eacute;s de sus obras cuenta historias de otros que hace suyas. La artista asegura que la situaci&oacute;n est&aacute; cambiando: &quot;Muchos de los que se fueron est&aacute;n regresando&quot;. Esta idea es la que refleja en In &amp; Out, un camino de ida y vuelta, con su mar y su cielo presente, en la memoria de los que tuvieron que partir y ahora ans&iacute;an regresar. La emigraci&oacute;n conlleva la paradoja de querer llegar al lugar so&ntilde;ado y cuando se alcanza se sue&ntilde;a con la tierra de origen. En la obra de Poblet predominan la a&ntilde;oranza y una insistencia de la artista para demostrar que algo est&aacute; cambiando dentro de la isla. La emigraci&oacute;n conlleva la paradoja de querer llegar al lugar so&ntilde;ado y cuando se alcanza se sue&ntilde;a con la tierra de origen</p>\r\n\r\n<p>La otra obra que la artista ha creado para este proyecto es el colof&oacute;n de la exposici&oacute;n: Marea alta. El azul del mar Caribe como tel&oacute;n de fondo preside la &uacute;ltima sala. Una gran foto fragmentada, como fragmentadas se quedan las vidas de los que no consiguen alcanzar la orilla deseada. Poblet construye estas obras a partir de sus referencias, pero la idea del mar como frontera se puede extrapolar a cualquier zona lim&iacute;trofe con las mismas caracter&iacute;sticas. El uso del espejo hace que el espectador se adentre en la obra. La artista, a pesar de su juventud, tiene una amplia trayectoria. Va solapando proyectos, simultanea la construcci&oacute;n de diferentes instalaciones y su af&aacute;n creador hace que sus piezas est&eacute;n en constate evoluci&oacute;n. &quot;Una obra nunca est&aacute; terminada, eso me da placer, muy pocas veces estoy conforme con el resultado&quot;, comenta Poblet mientras recalca la importancia del di&aacute;logo entre las obras, lo que influyen las unas en las otras.&nbsp;</p>\r\n\r\n<p>En el caso de Elemental, estas instalaciones que tratan de la memoria colectiva conversan con otras m&aacute;s intimistas como son las de Ernesto Ranca&ntilde;o (La Habana, 1968). Materializa sus recuerdos, guarda los fragmentos de su pasado: trozos de azulejos de diferentes casas en las que ha vivido, de ceniceros, de tazas, las canicas de los juegos infantiles, el polvo que barre su abuela. Mete retratos de las personas que forman parte de su vida en alcanc&iacute;as, huchas que le convierten en un hombre rico. Recoge sus recuerdos personales en distintos recipientes, como Lidzie Alvisa (La Habana, 1969), pero ella expone objetos que son memoria para todos: disquetes, pendrives. Esta artista tambi&eacute;n reflexiona sobre lo que vivimos y lo que recordamos de esas experiencias. C&oacute;mo los recuerdos se ven alterados por la percepci&oacute;n de cada uno y esto lleva al importante papel que desempe&ntilde;a la identidad, que es el tema sobre el que versar&aacute; la pr&oacute;xima convocatoria Elemental 3/4 en 2015. Mientras, de cada una de las cuatro exposiciones se seleccionar&aacute;n algunas obras que formar&aacute;n parte de una exposici&oacute;n final que ser&aacute; la memoria de Elemental.</p>\r\n\r\n<p>Elemental 2/4. Galer&iacute;a Odalys. Orfila, 5. Madrid. Hasta el 13 de noviembre.</p>\r\n', 'http://cultura.elpais.com/cultura/2014/10/08/babelia/1412800977_850889.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscripcion`
--

CREATE TABLE IF NOT EXISTS `subscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsession`
--

CREATE TABLE IF NOT EXISTS `tblsession` (
  `id` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblsession`
--

INSERT INTO `tblsession` (`id`, `expire`, `data`) VALUES
('a67fea52296faed5002ce38d19ae3695', 1414017017, 0x454c455f5f69647c733a313a2234223b454c455f5f6e616d657c733a363a227a6f6c74616e223b454c455f5f7374617465737c613a303a7b7d454c456c616e67756167657c733a323a226573223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto`
--

CREATE TABLE IF NOT EXISTS `texto` (
  `idtexto` int(11) NOT NULL AUTO_INCREMENT,
  `lugar` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`idtexto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `texto`
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
-- Estructura de tabla para la tabla `textocuratorial`
--

CREATE TABLE IF NOT EXISTS `textocuratorial` (
  `idtextocuratorial` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `autor` varchar(255) NOT NULL,
  `cargo_autor` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  PRIMARY KEY (`idtextocuratorial`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `textocuratorial`
--

INSERT INTO `textocuratorial` (`idtextocuratorial`, `titulo`, `contenido`, `autor`, `cargo_autor`, `idexposicion`) VALUES
(1, 'Zielort Berlin (destino Berlín)', '<p style="text-align:right">&ldquo;Je n&rsquo;aime pas les s&eacute;dentaires du coeur. Ceux-l&agrave; qui n&rsquo;&eacute;changent rien ne deviennent rien&rdquo;</p>\r\n\r\n<p style="text-align:right">Antoine de Saint Exup&eacute;ry</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La estancia en determinada ciudad puede constituir, en principio, un argumento tan excelente como anodino, a la hora de establecer el criterio alrededor del cual programar una serie de exposiciones colectivas. O quiz&aacute;s no. Berl&iacute;n lleva a&ntilde;os &ndash;aproximadamente desde la d&eacute;cada de los ochenta&ndash; siendo uno de los destinos preferidos por artistas de todo el mundo; papel &eacute;ste en el que se ha ido acercando, lenta pero inexorablemente, nada menos que a Nueva York. La peculiar situaci&oacute;n geopol&iacute;tica de la ciudad antes de la ca&iacute;da del muro (ubicada, como sabemos, en medio de la RDA)1, al tiempo que provoc&oacute; la partida de muchos alemanes hacia otros puntos de la entonces Rep&uacute;blica Federal, atrajo a un elevado n&uacute;mero de ciudadanos extranjeros, de cuya convivencia se derivar&iacute;a la formaci&oacute;n de un tejido multicultural que ha supuesto un f&eacute;rtil sustrato para la creaci&oacute;n art&iacute;stica. Dada su excepcionalidad, Berl&iacute;n estuvo generosamente subvencionada desde la RFA, con la intenci&oacute;n de que mantuviera el estatus de gran urbe que hab&iacute;a alcanzado ya en las primeras d&eacute;cadas del pasado siglo &ndash;aun cuando hubiese dejado de ser la capital del estado alem&aacute;n, entre 1945 y 1990&ndash;, en t&eacute;rminos socioecon&oacute;micos y pol&iacute;ticos y, tambi&eacute;n como centro cultural de primera magnitud a nivel nacional e incluso internacional. No olvidemos que fue precisamente Berl&iacute;n, all&aacute; por los ochenta, uno de los puntos donde se localizaron los primeros signos de la identidad del denominado neoexpresionismo, que singularizar&iacute;an a la pl&aacute;stica germana y gracias a los cuales volver&iacute;a a ocupar &ndash;en esta nueva etapa posb&eacute;lica&ndash; un lugar destacado en el panorama art&iacute;stico mundial2. En tal sentido, baste recordar lo que significaron, para este resurgimiento del arte alem&aacute;n, exposiciones como Die Neuen Wilden (Aquisgr&aacute;n, 1980), A New Spirit in Painting (Londres, 1981) o Zeitgeist (Berl&iacute;n, 1982), adem&aacute;s de la Documenta 7 (comisariada por Rudi Fuchs, tambi&eacute;n en 1982).</p>\r\n\r\n<p>Hay que destacar que la promoci&oacute;n de las manifestaciones art&iacute;sticas que se ha llevado a cabo en la ciudad ha sido siempre ejemplar e imaginativa &ndash;tanto en lo que respecta a la programaci&oacute;n de eventos como al mantenimiento de infraestructuras para la producci&oacute;n, distribuci&oacute;n y difusi&oacute;n&ndash;, lo cual ha garantizado una vitalidad extraordinaria en este &aacute;mbito3. Una dinamizaci&oacute;n en la que mucho han tenido que ver las instituciones acad&eacute;micas y, en lo que se refiere a la presencia de artistas extranjeros, el llamado Berliner K&uuml;nstler Programm, del DAAD (Deutscher Akademischer Austausch Dienst o Servicio Alem&aacute;n de Intercambio Acad&eacute;mico), gracias al cual una importante n&oacute;mina de creadores originarios de muy distintos pa&iacute;ses ha tenido la oportunidad de residir en Berl&iacute;n4. Entre los artistas, citemos los nombres de Carl Andr&eacute;, Marina Abramovic, Eduardo Arroyo, Christian Boltanski, Marcel Broodthaers, Daniel Buren, James Lee Byars, Rafael Canogar, Tacita Dean, Rineke Dijkstra, Nan Goldin, Richard Hamilton, Duane Hanson, Mona Hatoum, Arturo Herrera, Damien Hirst, Pierre Huyghe, Alfredo Jaar, Ilya Kabakov, Allan Kaprow, Edward Kienholz, Yannis Kounellis, Shigeko Kubota, Andr&eacute; Masson, Mario Merz, Boris Mihailov, Antoni Miralda, Matt Mullican, Roman Opalka, Michelangelo Pistoletto, Pipilotti Rist, Antonio Saura, Allan Sekula, Daniel Spoerri, Francesc Torres, Eulalia Valldosera, Erwin Wurm&hellip;; m&uacute;sicos de la talla de John Cage, Alberto Ginastera, Crist&oacute;bal Halffter, Igor Stravinsky y Krzystof Penderecki; escritores como Carlos Fuentes, Witold Gombrowicz, Peter Handke, Imre Kert&eacute;sz, Susan Sontag y Mario Vargas Llosa; e incluso cineastas: Otar Iosseliani y Jim Jarmusch. Entre lo que los artistas encuentran en Berl&iacute;n (un ambiente extraordinario de ebullici&oacute;n creativa, una comunidad de inquietudes y hallazgos trabada con innumerables sensibilidades de todos los rincones del mundo, una oferta cultural inigualable&hellip; una ciudad donde el pasado y el futuro se cruzan de un modo tan dram&aacute;tico como determinante)5, de c&oacute;mo ello repercute en sus propias obras (influencia, inspiraci&oacute;n y contrastaci&oacute;n) y de la impronta que ellos mismos, o sus trabajos, puedan dejar en el contexto berlin&eacute;s, se produce un proceso de feraz intercambio &ndash;de ida y vuelta, podr&iacute;amos decir&ndash; casi imposible de hallar en cualquier otro sitio. No en vano, la capital alemana acaba convirti&eacute;ndose, en muchos casos, en punto de residencia permanente para numerosos artistas extranjeros.&nbsp;</p>\r\n\r\n<p>Resulta indudable, pues, que Berl&iacute;n es un buen lugar al que acudir en busca de valores emergentes, a descubrir talentos todav&iacute;a no muy conocidos que contribuyan a enriquecer el panorama expositivo espa&ntilde;ol con una interesante muestra de cuanto ahora se hace en el que es uno de los principales lugares para la creaci&oacute;n contempor&aacute;nea, en uno de los mejores destinos donde palpar algo del zeitgeist que define el momento presente.</p>\r\n\r\n<p>Adelantemos que cuatro de los artistas que integran esta primera edici&oacute;n de ELEMENTAL (provenientes de Espa&ntilde;a, Italia, Venezuela y de la misma Alemania) tienen en com&uacute;n el haber sido alumnos del prestigioso Institut f&uuml;r Kunst im Kontext de la Universit&auml;t der K&uuml;nste Berlin, poniendo de relieve, una vez m&aacute;s, el protagonismo que le corresponde a las instituciones de educaci&oacute;n superior, dentro de la Rep&uacute;blica Federal de Alemania, para la promoci&oacute;n de la pr&aacute;ctica art&iacute;stica y, asimismo, el reconocimiento que esta labor merece a nivel internacional, gracias a la alt&iacute;sima calidad de su oferta acad&eacute;mica. Por otro lado, hay que se&ntilde;alar que los tres artistas originarios de Hungr&iacute;a que completan la exposici&oacute;n est&aacute;n ligados a la Moholy-Nagy M?v&eacute;szeti Egyetem (Universidad Moholy-Nagy de Arte y Dise&ntilde;o), con sede en Budapest, que en estos momentos se encuentra llevando proyectos en com&uacute;n con el mencionado Institut f&uuml;r Kunst im Kontext.</p>\r\n\r\n<p>Y ya que hemos centrado estas primeras l&iacute;neas en torno a una localizaci&oacute;n geogr&aacute;fica, comenzaremos por la obra de Irina Novarese, quien se ocupa, justamente, de aspectos territoriales. Partiendo de la presunci&oacute;n de no-objetividad de los criterios con los cuales se elaboran los mapas, busca con su trabajo poner en evidencia la naturaleza &ndash;cuando menos&ndash; interesadamente convencional de la cartograf&iacute;a, que es la ciencia que nos suministra una interpretaci&oacute;n gr&aacute;fica &ndash;y supuestamente anal&oacute;gica&ndash; de nuestro planeta6; se&ntilde;alemos que alguno de sus proyectos lleva por t&iacute;tulo un significativo How to lie with maps? Su estrategia pasa por utilizar ciertos c&oacute;digos de ese tipo de representaciones (las divisiones fronterizas), con los que establece un dise&ntilde;o, en forma de malla, del que extrae el modelo estructural a partir del que desarrolla sus propuestas en dos o tres dimensiones. &Eacute;stas pueden remitirnos tanto a la idea de mapa (en las piezas tridimensionales) como a la de una imagen topogr&aacute;fica realizada en una escala muy reducida (en las bidimensionales); la correspondencia que se advierte entre ambas proporciones &ndash;asimilable a lo macro y lo micro, en raz&oacute;n del tama&ntilde;o que sugieren&ndash; dota al conjunto de una coherencia pl&aacute;stica, de una continuidad formal, que resulta muy efectiva para las intenciones de su discurso cr&iacute;tico.</p>\r\n\r\n<p>En su &aacute;nimo por cuestionar la validez universal de la cartograf&iacute;a, Novarese propone unos mapas en aluminio cuya forma no es fija, sino que var&iacute;a en funci&oacute;n de su colocaci&oacute;n o montaje. Inestabilidad que alude, directamente, a su m&aacute;s que discutible objetividad, pues su morfolog&iacute;a es tan cambiante como puedan serlo sus circunstancias: un mapa adaptable es, tambi&eacute;n, un mapa manipulable &ndash;parece querer decirnos la artista&ndash;, por lo que la relaci&oacute;n de identidad que cabr&iacute;a esperar entre &eacute;ste y el territorio al que represente queda definitivamente en entredicho. De la misma manera, la falta de informaci&oacute;n precisa de sus, por otra parte, muy elaborados dibujos de sabor topogr&aacute;fico &ndash;los cuales, en principio, pensamos que ofrecen mucha, en virtud de la acumulaci&oacute;n de datos gr&aacute;ficos que presentan&ndash;, nos sit&uacute;a de nuevo ante la inconcreci&oacute;n a la que &ndash;ocasionalmente&ndash; nos conducir&iacute;a un sistema de registro exhaustivo, en la l&iacute;nea de lo que planteaban Larry Sultan y Mike Mandel en su fascinante proyecto titulado Evidence (1977).</p>\r\n\r\n<p>Podr&iacute;a decirse que actualmente la malla ha venido a sustituir, en su papel de paradigma para la construcci&oacute;n pl&aacute;stica, a la ret&iacute;cula, que fuera se&ntilde;a de identidad del arte moderno en tiempos de la vanguardia, seg&uacute;n Rosalind Krauss (Ret&iacute;culas, 1978). Mientras que &eacute;sta supuso la estructura sobre la cual se hizo posible abandonar la dependencia con respecto de la realidad visual (posibilitando as&iacute; el camino hacia la abstracci&oacute;n), la malla surge a modo de herramienta a la que someter cualquier realidad para llevar a cabo su reproducci&oacute;n fidedigna; recordemos, por ejemplo, las digitales con las que funcionan los esc&aacute;neres 3D. &Eacute;sta se encuentra, adem&aacute;s, funcionalmente muy unida a la idea de red, otro de los modelos dentro de los cuales el ser humano ha sido capaz de sintetizar m&uacute;ltiples y complejos conocimientos, de manera esquem&aacute;tica y con amplias posibilidades asociativas, convirti&eacute;ndose, para muchos artistas, en soporte para la visualizaci&oacute;n de tramas complejas de sentimientos o ideas: desde las psicogeograf&iacute;as de los situacionistas hasta los esclarecedores diagramas pol&iacute;ticos de Mark Lombardi.</p>\r\n\r\n<p>Otra visi&oacute;n del entorno es la que ofrece Zoltan Kunckel, en este caso buscando la clave de las formas a partir de una perspectiva fenomenol&oacute;gica. A pesar de la primera impresi&oacute;n que pudieran causarnos sus im&aacute;genes, el inter&eacute;s de este artista se dirige m&aacute;s all&aacute; de la fotograf&iacute;a. &Eacute;sta s&oacute;lo le sirve en calidad de medio para investigar los procesos mediante los cuales la realidad se hace visible en funci&oacute;n de su iluminaci&oacute;n y c&oacute;mo, asimismo, puede llegar a desrealizarse cuando se modifican las condiciones lum&iacute;nicas. Una b&uacute;squeda de la que tambi&eacute;n se ha ocupado en algunas de sus series escult&oacute;ricas, en las que los desarrollos formales dependen &ndash;en t&eacute;rminos perceptivos&ndash; tanto de su estructura geom&eacute;trica en s&iacute;, como de los efectos visuales derivados de la reflexi&oacute;n, debido al material empleado (acero), en l&iacute;nea con los experimentos que desarrollaron Laszlo Moholy-Nagy (especialmente con su Licht-Raum-Modulator) y, m&aacute;s tarde, quienes heredar&iacute;an parte de sus inquietudes en este campo, los llamados cin&eacute;ticos, en cuya n&oacute;mina ocupa un lugar principal su compatriota Jes&uacute;s Rafael Soto.</p>\r\n\r\n<p>A la vista de Arsenal, est&aacute; claro que su intenci&oacute;n trasciende lo que ser&iacute;a la mera documentaci&oacute;n de un lugar concreto, de su arquitectura o ambiente, y que lo que va persiguiendo es registrar el estado esencial con el que visualmente se perciben las cosas. Un trabajo inductivo, si se quiere, donde el aspecto particular de cualquier elemento adquiere una validez (est&eacute;tica, estructural) absoluta. A diferencia, por ejemplo, de James Casebere &ndash;con cuyas im&aacute;genes podr&iacute;amos establecer cierta semejanza, si bien de car&aacute;cter superficial&ndash;, Kunckel aborda la realidad sin otra mediaci&oacute;n que la c&aacute;mara y su propia sensibilidad7 para captar el momento adecuado (no en sentido temporal &ndash;nada de instant d&eacute;cisif&ndash;, sino fenom&eacute;nico), lo que asimismo advertimos en el tr&iacute;ptico titulado VIZ. Todo ello provoca un extra&ntilde;amiento que, adem&aacute;s de conseguir problematizar nuestros h&aacute;bitos visuales y ese estatuto de certeza que a&uacute;n hoy solemos tener asociado a la fotograf&iacute;a, inserta esas realidades (desrealizadas, como antes dec&iacute;amos) en el &aacute;mbito de la evocaci&oacute;n y el misterio, de igual modo que sucede con los enigm&aacute;ticos panoramas de Aitor Ortiz &ndash;aun cuando para &eacute;ste prime el inter&eacute;s por la metaf&iacute;sica del espacio en s&iacute;8.</p>\r\n\r\n<p>Tambi&eacute;n es la luz el asunto en el que se centra el h&uacute;ngaro Kiss Abba Reg?, aunque, en su caso, concedi&eacute;ndole una gran importancia a las calidades crom&aacute;ticas que aquella provoca a trav&eacute;s de cristales coloreados. Preocupado, como el anterior, por lo fenom&eacute;nico, sus esculturas conjugan el factor morfol&oacute;gico (formas limpias, b&aacute;sicas) con la cualidad crom&aacute;tica, resultando inseparables ambos extremos a la hora de configurar sus piezas. Pero mientras que el artista venezolano se interesa, sobre todo, por la reflexi&oacute;n de la luz (por c&oacute;mo &eacute;sta incide sobre los cuerpos y los define), para Reg? lo importante es c&oacute;mo colorea sus esculturas por transparencia; inscribi&eacute;ndose, as&iacute;, de manera virtual en las mismas. Esto significa que el color no es algo adjetivo en su obra, sino sustancial, constitutivo; de hecho, alguna de ellas nos recuerda a esas caracter&iacute;sticas tramas en las que Paul Klee &ndash;inspirado en las tonalidades que hab&iacute;a descubierto durante sus viajes a T&uacute;nez y Egipto&ndash; modulaba los diferentes colores en numerosos matices, pretendiendo con ello alcanzar unos valores arm&oacute;nicos con propiedades expresivas.</p>\r\n\r\n<p>Volviendo a su relaci&oacute;n con Kunckel, en la exposici&oacute;n se halla una sorprendente interpretaci&oacute;n de la ya mencionada Cisterna. Se trata de una lectura tridimensional articulada mediante cuadrados de cristal, que enseguida identificamos con la constituci&oacute;n propia de las pantallas digitales, pues se compone de peque&ntilde;as piezas c&uacute;bicas que parecen p&iacute;xeles. Un encuentro inesperado entre la frialdad del medio tecnol&oacute;gico (impl&iacute;cito) y la calidez del vidrio que resulta muy atractivo para el caso. La sistematizaci&oacute;n de esta construcci&oacute;n &ndash;en forma de trama&ndash; le conduce a un planteamiento escult&oacute;rico singular que habr&iacute;a que definir como aditivo, cuya mostraci&oacute;n, en lugar de rebajar su valor est&eacute;tico, lo realza, al dotarle de un cierto car&aacute;cter procesual (el procedimiento se mantiene a la vista y se presenta integrado en el resultado) muy pertinente dentro de las pr&aacute;cticas art&iacute;sticas contempor&aacute;neas.</p>\r\n\r\n<p>Bal&aacute;zs Sipos, por su parte, utiliza las transparencias del cristal con evidente voluntad simb&oacute;lica: hacer perceptibles detalles que normalmente permanecer&iacute;an ocultos (lo que nada tiene que ver con la opci&oacute;n estil&iacute;stica que acabamos de comentar). De esta manera, consigue que las interioridades de sus fabulaciones se integren en la estructura de su discurso, asumiendo (visualmente) lo que, de otro modo, s&oacute;lo ser&iacute;a simple materia de presunci&oacute;n o l&oacute;gica consecuencia. El hecho de que sus piezas sean, adem&aacute;s, practicables &ndash;esto es, que se pueden manipular y recolocar&ndash; sin duda contribuye a acentuar la dimensi&oacute;n fatal que las anima, pues dicha movilidad induce a equipararlas con un relato c&iacute;clico, con ese tempo ineluctable propio de las condenas mitol&oacute;gicas. Siendo que es posible advertir un relativo perfil psicol&oacute;gico en sus trabajos, cabr&iacute;a aqu&iacute; recordar c&oacute;mo Sigmund Freud descubri&oacute; entre los antiguos mitos griegos los esquemas adecuados para identificar algunas de las zonas m&aacute;s oscuras de nuestro subconsciente. Sin querer abundar en consideraciones de esta &iacute;ndole, a&ntilde;adamos que el aspecto de sus figuras, el material empleado y el formato en el cual se presentan sugieren una incierta fetichizaci&oacute;n, convirti&eacute;ndolas en una suerte de bibelots que transitan entre las esferas del deseo y de la condenaci&oacute;n.</p>\r\n\r\n<p>Quiz&aacute; por ello, las combinaciones y mixturas que plantean, sus delirantes situaciones, nos lleven a evocar la iconograf&iacute;a de los bestiarios, esos tratados que durante generaciones constituyeron el recept&aacute;culo de los temores m&aacute;s arcanos de la humanidad, fruto del desconocimiento, la desinformaci&oacute;n y del terror p&aacute;nico que el hombre ha experimentado ante la naturaleza que no domina, permaneciendo inaprehensible y opaca para su conocimiento; recordemos, aqu&iacute;, el ep&iacute;grafe que Goya escribi&oacute; en uno de sus Caprichos: &ldquo;el sue&ntilde;o de la raz&oacute;n produce monstruos&rdquo;. En ocasiones, lo sabemos bien, s&oacute;lo la paradoja o el sinsentido, la fantas&iacute;a &ndash; tan pr&oacute;ximos a la fabulaci&oacute;n y la po&eacute;tica&ndash; son capaces de expresar y darle forma a todo aquello que suele resultarnos inefable.</p>\r\n\r\n<p>En cuanto a la figuraci&oacute;n de las estatuillas de Sipos, digamos que su estilizaci&oacute;n transita entre el ensimismamiento de un Balthus y la delicada simplificaci&oacute;n de las estampas orientales; entre las minuciosas aberraciones de El Bosco (grillorum inventor)9 y el esquematismo elocuente, m&aacute;gico y/o costumbrista, del arte precolombino &ndash;que tan ir&oacute;nicamente utiliza en nuestros d&iacute;as Nad&iacute;n Ospina, como elemento de cr&iacute;tica frente a los est&aacute;ndares del colonialismo cultural; entre los grafismos escuetos y metam&oacute;rficos de Fernando Renes y la perversa mu&ntilde;equizaci&oacute;n de Marcel Dzama.</p>\r\n\r\n<p>Creo que no resulta nada desacertado referirse a los trabajos de &Aacute;d&aacute;m Kriszti&aacute;n como dise&ntilde;os, siempre y cuando dicha catalogaci&oacute;n eluda limitar su alcance al &aacute;mbito de las artes aplicadas &ndash;ni a&uacute;n en el caso de que tuvi&eacute;semos la tentaci&oacute;n de adscribirlos a una supuesta concepci&oacute;n elevada del dise&ntilde;o&ndash;. Estimo la pertinencia de hacerlo as&iacute;, por cuanto desde esta perspectiva acaso sea posible considerar con mayor propiedad su valor est&eacute;tico, sin correr el riesgo de mixtificar el m&eacute;rito de sus piezas, traslad&aacute;ndolas sin m&aacute;s a una medio que les es ajeno, stricto sensu, y obviando lo ineludible; esto es: falsificando su sentido.</p>\r\n\r\n<p>A la vista de la bisuter&iacute;a de este artista, de inmediato tenemos la impresi&oacute;n de encontrarnos ante una modalidad de dise&ntilde;o que no se atiene de manera ortodoxa a los presupuestos que dicta la ergonom&iacute;a; de algunos de sus aderezos llegar&iacute;amos, incluso, a sospechar que ser&iacute;a complicado pon&eacute;rselos, usarlos con absoluta comodidad: lo cual ya revela una cuesti&oacute;n que trasciende &ndash;y, en buena medida, contradice&ndash; la raz&oacute;n de lo que s&oacute;lo deber&iacute;a haber sido concebido para su utilizaci&oacute;n. Ello significa, por tanto, que esta colecci&oacute;n de joyas reclama una contemplaci&oacute;n m&aacute;s amplia que la meramente utilitaria u ornamental. Y es, precisamente, en ese margen de incoherencia donde reside buena parte de su inter&eacute;s como propuestas susceptibles de ser apreciadas art&iacute;sticamente. Pasando por alto lo que ser&iacute;a una evaluaci&oacute;n s&oacute;lo en clave formal (desde este punto de vista diremos que son extraordinarias), interesa centrarse en cuanto ellas suponen como ejemplares de metadise&ntilde;o: de un dise&ntilde;o que no se atiene al cien por cien a sus presupuestos, que traslada parcialmente su discurso &ndash;elementos que se relacionan con el cuerpo humano, que pueden colocarse sobre &eacute;ste y que invitan a una relectura del mismo&ndash; a la esfera de la creaci&oacute;n pura. Sin &aacute;nimo de establecer comparaciones innecesarias, apuntemos que la joyer&iacute;a y la moda concebidos por artistas pl&aacute;sticos suelen resultar, casi siempre &ndash;acaso por una simple cuesti&oacute;n de feliz incompetencia&ndash; objetos m&aacute;s pr&oacute;ximos al mundo del arte que al del dise&ntilde;o.</p>\r\n\r\n<p>Otra clase de traslado es la que se plantea en la obra de Llobet &amp; Pons, pareja formada por Jasmina Llovet y Luis Fern&aacute;ndez Pons. En su caso, podr&iacute;amos hablar de un minimalismo que se formula a partir de elementos de la vida cotidiana (una paja para beber, palos de escoba, mesas&hellip;), trastocando con ello su funci&oacute;n espec&iacute;fica (dentro de la mejor tradici&oacute;n anunciada por Lautreamont y, en la pr&aacute;ctica, inaugurada por los ready-mades de Marcel Duchamp), reinstalando el significado habitual de tales objetos en otra dimensi&oacute;n que hemos de interpretar en el plano de la est&eacute;tica. El car&aacute;cter de sus propuestas nos recuerda a la inaudita subversi&oacute;n del orden minimalista que llevaron a cabo los artistas que en su momento fueron encuadrados dentro de la tendencia que se conoci&oacute; con los nombres de antiforma o abstracci&oacute;n exc&eacute;ntrica (entre los que se hallaban Eva Hesse, Bruce Nauman o Louise Bourgeois); una especie de superaci&oacute;n de aqu&eacute;l en la que la condici&oacute;n de los materiales empleados (su valor connotativo) y sus propiedades espec&iacute;ficas (fragilidad, textura, inestabilidad&hellip;) cumpl&iacute;an un importante papel, pues facilitaban la sustancia necesaria para activar ese tipo de reformulaciones, &ndash;el encuentro entre efectos formales diferentes10&ndash; que es aproximadamente lo mismo que encontramos en la obra de estos dos artistas.&nbsp;</p>\r\n\r\n<p>Sin embargo, a diferencia de aquellos, Llobet &amp; Pons persiguen con sus ins&oacute;litas disparidades (material/geometr&iacute;a) poner en marcha un discurso cr&iacute;tico que se fundamenta en el humor. Aqu&iacute; la paradoja no busca iluminar oscuros rincones de nuestra existencia, sino jugar con el entorno y nuestra raz&oacute;n, parodiando tanto las construcciones de la l&oacute;gica como la funcionalidad de los objetos de uso cotidiano. Es indudable que un icosaedro realizado con palos de escoba posee un car&aacute;cter ir&oacute;nico evidente, que abunda en el cuestionamiento &ndash;o, al menos, relativizaci&oacute;n&ndash; del aura que asociamos a la obra de arte y que hoy plantean muchos artistas. Una operaci&oacute;n que, lejos de (auto)restarle inter&eacute;s a estos trabajos, genera una clase de dial&eacute;ctica que promueve la ampliaci&oacute;n de los m&aacute;rgenes que delimitan nuestro concepto de lo que estamos dispuestos a aceptar como algo art&iacute;stico. Nada nuevo, es cierto, puesto que desde los albores de la modernidad, el arte se mantiene sujeto a un proceso de perpetua redefinici&oacute;n; pero que, en cualquier caso, nos permite situar lo que hace esta pareja justo en esa zona problem&aacute;tica donde tiene lugar el conflicto que es consustancial al arte contempor&aacute;neo.</p>\r\n\r\n<p>Hay, sin duda, tambi&eacute;n en la obra del alem&aacute;n Uli Westphal un cierto aire de paradoja, aunque de signo bien distinto, pues es de orden organizativo (en sentido lato) antes que meramente conceptual. En inicio, su inter&eacute;s parece dirigido a registrar fotogr&aacute;ficamente el aspecto de una serie de vegetales que presentan curiosas mutaciones. Se trata de tomas en primer plano, casi cient&iacute;ficas, que recuerdan a la soberbia colecci&oacute;n de plantas que Karl Blossfeldt realizara con fines pedag&oacute;gicos y que, en virtud de su minuciosa resoluci&oacute;n, ofrecen una imagen un tanto enrarecida de aquellos, debido al exceso de oferta visual que comportan. Aunque en el caso de Westphal el motivo se presente, siempre, de manera integral, lo cierto es que coincide con aqu&eacute;l en su af&aacute;n por captar la singularidad y belleza de lo que fotograf&iacute;a y, asimismo, en su inclinaci&oacute;n hacia lo sistem&aacute;tico: como principio de orden y como m&eacute;todo de trabajo11. En cuanto a sus im&aacute;genes se refiere, digamos que cabr&iacute;a enmarcarlas sin ning&uacute;n problema dentro de la objetividad que es predominante en la fotograf&iacute;a alemana actual.</p>\r\n\r\n<p>Pero su proyecto va m&aacute;s all&aacute; de generar una catalogaci&oacute;n de los mencionados vegetales. En primer lugar, digamos que habitualmente monta las fotos dentro de una estructura de car&aacute;cter serial que afecta, por igual e inevitablemente, a la recepci&oacute;n del conjunto y de cada ejemplar en particular. Lo que resulta es una imagen compuesta que, por su extensi&oacute;n, invita a efectuar un recorrido perceptivo. S&oacute;lo ocasionalmente nos fijaremos en alg&uacute;n ejemplar en concreto, pues la sensaci&oacute;n que se impone es la de la totalidad. He aqu&iacute;, pues, la paradoja que antes se&ntilde;al&aacute;bamos: toda la informaci&oacute;n que aportan las fotograf&iacute;as se ve sometida a la impresi&oacute;n global (y absorbida, en cierta medida, por ella) que es, en definitiva, la que genera un rect&aacute;ngulo de grandes dimensiones colocado en la pared. Un sometimiento que difiere el contenido testimonial (informativo) que corresponde a cada imagen, al transformarla en cualidad crom&aacute;tica, en materia visual, en componente abstracto. Todo ello sugiere, una vez m&aacute;s, alguna relaci&oacute;n &ndash;si bien de &iacute;ndole superficial&ndash; con los planteamientos minimalistas y quiz&aacute;s, de modo m&aacute;s notable, con la obra de Tony Cragg12.</p>\r\n\r\n<p>Shelflife, por su parte, remite a otra faceta de su producci&oacute;n que es imposible desligar de la escrupulosa manera que tiene de fotografiar la naturaleza, como es lo fenom&eacute;nico. Si la luz constituye un elemento esencial para definir visualmente sus mutatoes, en esta ocasi&oacute;n se interesa por los diferentes tipos de iluminaci&oacute;n que se emplean en los comercios para mostrar los alimentos y hacerlos as&iacute; m&aacute;s agradables y apetecibles: pasamos, pues, de la luz mostrativa a la luz desiderativa. Aqu&iacute; coincide en lo anterior en volver a utilizar un esquema fijo, geom&eacute;trico, para presentar esta clasificaci&oacute;n organizada por temperaturas lum&iacute;nicas (de nuevo aparece la voluntad taxon&oacute;mica), conformando un montaje que recuerda a algunas piezas de Dan Flavin; la diferencia entre ambos, no obstante, es que mientras el norteamericano buscaba interactuar con el entorno (modificando la percepci&oacute;n del espacio, al igual que James Turrell), Westphal persigue establecer una relaci&oacute;n dial&eacute;cticamente ambigua entre el impulso clasificatorio, la sistematizaci&oacute;n como principio de trabajo y la estructuraci&oacute;n en &oacute;rdenes cerrados como clave de presentaci&oacute;n.</p>\r\n\r\n<p>En general, esta exposici&oacute;n &ndash;que se compone de dos citas: la que se desarrolla en la propia galer&iacute;a junto con las obras de Irina Novarese y Llobet &amp; Pons que habr&aacute; en el stand de la misma en SUMMA, una feria dirigida hacia ese tipo de coleccionismo que prefiere las manifestaciones art&iacute;sticas m&aacute;s novedosas&ndash; nos ofrece una atractiva reuni&oacute;n de propuestas, bastante heterog&eacute;nea, perfectamente inscritas conceptual y estrat&eacute;gicamente en las pr&aacute;cticas contempor&aacute;neas. En su mayor parte se trata de nombres desconocidos en nuestro pa&iacute;s; circunstancia que no es en absoluto casual, ya que para esta galer&iacute;a la labor de divulgaci&oacute;n y descubrimiento de valores emergentes ocupa un lugar destacado dentro de su proyecto, enmarcado &eacute;ste, a su vez, en las actividades de la Fundaci&oacute;n Odalys, entre cuyos fines se encuentra el de promover un serie de becas y estancias para la formaci&oacute;n de artistas en el extranjero. Avancemos que a esta primera edici&oacute;n de ELEMENTAL le suceder&aacute;n otras cuatro exposiciones &ndash;en Caracas, Madrid y Berl&iacute;n, por el momento&ndash;, dedicadas a una selecci&oacute;n de artistas encuadrables en tal categor&iacute;a y ligados, de alg&uacute;n modo, a ese emporio que para la creaci&oacute;n representa hoy la capital germana.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.&nbsp;Para Wim Wenders, director, entre otros t&iacute;tulos, de Der Himmel &uuml;ber Berlin (El cielo sobre Berl&iacute;n, 1987)&nbsp; &ldquo;ninguna otra ciudad es tan simb&oacute;lica y al mismo tiempo un lugar de supervivencia&rdquo;; en Wim Wenders. XXII Muestra Cinematogr&aacute;fica del Atl&aacute;ntico, C&aacute;diz, 1991; pp.51-2.</p>\r\n\r\n<p>2.&nbsp;&ldquo;Los primeros intentos de recuperar o instaurar referencias propias aparecieron en una generaci&oacute;n de artistas berlineses: Georg Baselitz, Karl Horst H&ouml;dicke y Bernd Koberling, que, dejando de lado la abstracci&oacute;n y las influencias for&aacute;neas del pop, del minimalismo y del posminimalismo norteamericanos, incorporaron la figuraci&oacute;n a su trabajo alentando un arte m&aacute;s expresionista y, por ende, m&aacute;s pr&oacute;ximo a la supuesta tradici&oacute;n germ&aacute;nica, sin renunciar, no obstante, a los discursos de la modernidad&rdquo; Guasch, Anna Mar&iacute;a: El arte &uacute;ltimo del siglo XX. Del posminimalismo a lo multicultural; Alianza, Madrid, 2002; pp.243-4.&nbsp;</p>\r\n\r\n<p>3.&nbsp;&ldquo;El precio bajo de los espacios para residencias y estudios y un coste de vida razonable, unido con la realidad de una ciudad hist&oacute;rica, cultural y dial&eacute;cticamente cambiante, ofrecen las mejores condiciones para un escenario ventajoso&rdquo; Gisbourne, Mark: Berlin Art now; Thames and Hudson, Londres, 2006; p 8. &nbsp;</p>\r\n\r\n<p>4.&nbsp;&ldquo;Muchos de esos artistas han producido un arte con impresiones (de Berl&iacute;n) muy directas, al tiempo que nos ayudaban a comprender la ciudad y lo que significa vivir all&iacute;&rdquo; Mc Shine, Kynaston, en VV.AA.: 1961 Berlinart 1987; The MOMA/Prestel, Nueva York/Munich, 1988; p.19.&nbsp;</p>\r\n\r\n<p>5.&nbsp;&ldquo;En una ciudad que se pierde muy a menudo entre recuerdos del pasado y proyectos de futuro, la anticipaci&oacute;n y la reflexi&oacute;n de los artistas residentes en Berl&iacute;n parece ofrecer, de un modo muy productivo, un camino apto para plantearse el presente&rdquo; Gisbourne, M.; ib&iacute;dem.</p>\r\n\r\n<p>6.&nbsp;&ldquo;No hay mapa objetivo, sino que todo depende del lugar desde el cual se definen los espacios y el mundo, porque el mapa, pese a todo, est&aacute; condicionado en su escritura y lectura por la Historia que habita tras esa mano que dise&ntilde;a y esa visi&oacute;n que lee e interpreta&rdquo; De Diego, Estrella: Contra el mapa. Disturbios en la geograf&iacute;a colonial de Occidente; Siruela, Madrid, 2008; p.15.</p>\r\n\r\n<p>7.&nbsp;Como es bien sabido, James Casebere, al igual que, por ejemplo, Thomas Demand, utilizan maquetas para construir sus motivos. Parte de sus proyectos se desarrollan, pues, en un momento que habr&iacute;a que calificar de prefotogr&aacute;fico.&nbsp;</p>\r\n\r\n<p>8.&nbsp;&ldquo;&hellip;el lugar como concepto metaf&iacute;sico. No un lugar concreto, ni un edificio reconocible, sino el lugar como espacio habitado &uacute;nicamente por la estructura construida&rdquo;. Olivares, Rosa: 100 fot&oacute;grafos espa&ntilde;oles; Exit, Madrid, 2005; p.294.</p>\r\n\r\n<p>9.&nbsp;Gombrich, Ernst H.: El legado de Apeles; Alianza, Madrid, 1982; p.164.</p>\r\n\r\n<p>10.&nbsp;&ldquo;La abstracci&oacute;n exc&eacute;ntrica reivindicaba la reconciliaci&oacute;n de efectos formales diferentes, sin llegar a la arbitrariedad y sin acudir para su concreci&oacute;n a las asociaciones literarias o metaf&oacute;ricas&rdquo;. Guasch, A.M.: op.cit.; p.30.&nbsp; &nbsp;</p>\r\n\r\n<p>11.&nbsp;&ldquo;Hay que constatar que la mirada estricta de Blossfeldt fue r&aacute;pidamente reconocida como un ejemplo t&iacute;pico de observaci&oacute;n de la naturaleza interesada en las formas b&aacute;sicas o en las estructuras y, en este sentido, result&oacute; pionera para muchos fot&oacute;grafos. Ya no era una cuesti&oacute;n de romanticismo sino de sistem&aacute;tica; ya no de anhelo sino de an&aacute;lisis&rdquo; Hans Michael Koetzle; en Rubio, Oliva M&ordf;/ Koetzle, H.M.: Momentos estelares. La fotograf&iacute;a en el siglo XX; C&iacute;rculo de Bellas Artes, Madrid, 2007; p.88.</p>\r\n\r\n<p>12.&nbsp;&ldquo;A la realidad le cuesta mantenerse al margen de su imagen comercial. La necesidad de conocer, tanto objetivamente como subjetivamente, m&aacute;s acerca de las fr&aacute;giles relaciones entre nosotros, los objetos, las imagines y sus procesos y condiciones naturales se convierte en algo cr&iacute;tico&rdquo; Tony Cragg (1989), en Fineberg, Jonathan: &ldquo;Art since 1940. Strategies of Being&rdquo; Lawrence King, Londres, 2000; p.445.</p>\r\n', 'Víctor Zarza', 'Crítico de Arte. Director del Departamento de Pintura y Restauración. Universidad Complutense de Madrid', 1),
(2, ' Elemental 2|4', '<p><span style="line-height:1.6em">Elemental II / IV trae seis artistas, cuatro hombres y dos mujeres, el mayor de 46 a&ntilde;os y la m&aacute;s joven de 28, nacidos en Cuba, Chile, Espa&ntilde;a y Hungr&iacute;a, algunos de los cuales ya hab&iacute;an viajado ampliamente durante sus estudios, en una exposici&oacute;n en conjunto.</span></p>\r\n\r\n<p><span style="line-height:1.6em">La memoria es el tema que ocupa a todos los artistas de diferentes maneras. Como berlinesa (de nacimiento) de una generaci&oacute;n anterior, confieso que me aproximo con cierto recato a los trabajos de los &ndash;para m&iacute;&ndash; j&oacute;venes artistas, debido a que &eacute;stos disponen de un trasfondo de experiencias muy diferentes, al cual s&oacute;lo se le puede seguir la pista con &eacute;xito parcial. Cuando observo las obras, trato ante todo de poner a un lado mis primeras asociaciones y memorias de las obras de artistas como Rebecca Horn, Valie Export, Gerhard Richter o Christian Boltanski, para poder permanecer curiosa y no caer en la vieja trampa euroc&eacute;ntrica.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Por lo tanto no voy a hacer este tipo de comparaciones, aunque probablemente se puede suponer que los j&oacute;venes artistas est&aacute;n familiarizados con el mundo del arte, que tienen toda la informaci&oacute;n visual y que se relacionan con el repertorio de la historia del arte de forma consciente o inconsciente.</span></p>\r\n\r\n<p><span style="line-height:1.6em">&ldquo;El arte contempor&aacute;neo ya no determina m&aacute;s su actualidad en base a destronar un pasado cerrado, sino que m&aacute;s bien gana contemporaneidad mediante una diversidad de formas para relacionarse con un pasado, que es trabajado como algo reconocido y procesado, que sigue actuando en el presente.&rdquo; 1</span></p>\r\n\r\n<p><span style="line-height:1.6em">En la muestra reunida aqu&iacute; el tema de la memoria est&aacute; poco basado en hechos pol&iacute;ticos o biogr&aacute;ficos. La fugacidad, el reconocimiento y reaparici&oacute;n de im&aacute;genes guardadas en el subconsciente est&aacute;n situadas en un primer plano sobre el coleccionar, almacenar o archivar. Im&aacute;genes que provienen principalmente de los medios de comunicaci&oacute;n, im&aacute;genes que evocan emociones y recuerdan sentimientos que originalmente estuvieron conectados con ellas. Sentimientos que han sido registrados en el cuerpo y que vuelven al plano consciente mediante la obra art&iacute;stica.</span></p>\r\n\r\n<p>El artista cubano Ernesto Ranca&ntilde;o entiende la memoria como construcci&oacute;n de identidad de individuos. Sus obras, aqu&iacute; instalaciones con materiales transparentes que en cierta forma descubren lo que busca ocultar la consciencia humana, hacen visible lo invisible, que no obstante permanece oculto. M&aacute;quinas art&iacute;sticas del olvido y de la memoria, que conservan como en &ldquo;dibujo detenido&rdquo; el polvo de grafito pero sin el dibujo, cuyas huellas representa para traerlas a la vista.</p>\r\n\r\n<p><span style="line-height:1.6em">El plato invertido en la instalaci&oacute;n &ldquo;Olvido&rdquo; oculta y encubre la comida que es servida sobre esta mesa iluminada transparente. Sigue siendo un secreto del artista, qu&eacute; historia cuenta el mobiliario de metal minimalista; las asociaciones a la historia de la modernidad, a de Stijl y Bauhaus son permitidas a la observadora centroeuropea, aunque probablemente se encuentren en el &ldquo;camino equivocado&rdquo;.</span></p>\r\n\r\n<p><span style="line-height:1.6em">La tercera obra en la exposici&oacute;n &ldquo;El hombre rico&rdquo;, se pregunta por la riqueza de la vida humana, que es presentada aqu&iacute; en una colecci&oacute;n ordenada de peque&ntilde;as fotograf&iacute;as que muestran las huellas de su uso. La instalaci&oacute;n transparente act&uacute;a como una met&aacute;fora para el cerebro humano, que conserv&oacute; en el transcurso de una vida infinitas memorias de encuentros y relaciones con otros seres humanos...</span></p>\r\n\r\n<p><span style="line-height:1.6em">En su obra &ldquo;Insisto&rdquo; el artista muestra un rostro masculino que se repite en una fila, el cual es llevado lentamente a desaparecer mediante una iluminaci&oacute;n cada vez m&aacute;s intensa. El texto &ldquo;S&oacute;lo existo si t&uacute; me ves&rdquo; escrito sobre la frente del rostro, se&ntilde;ala a la dependencia de la existencia humana en el opuesto. O con palabras de Sartre, &ldquo;El otro posee un secreto (...) de lo que soy.&rdquo; 2</span></p>\r\n\r\n<p><span style="line-height:1.6em">Las obras de Ernesto Ranca&ntilde;o viven de la tensi&oacute;n entre el minimalismo en la forma y su carga emocional, con la que se abordan temas existenciales.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Esto da lugar a una l&iacute;nea de conexi&oacute;n con la artista m&aacute;s joven de la exposici&oacute;n, la cubana Mabel Poblet Pujol. Ella confronta con su obra &ldquo;Marea alta&rdquo; de la serie &ldquo;Patria&rdquo;, un tema que es virulento no s&oacute;lo en Cuba. La hu&iacute;da por el mar que separa los pa&iacute;ses ricos y pobres, desesperaci&oacute;n, miedo y muerte, pero tambi&eacute;n esperanzas y sue&ntilde;os de las personas que asumen el riesgo porque no ven alternativa para sus vidas. Al recoger esta ambivalencia de sentimientos e historias de vida tr&aacute;gicas ligadas al mar &ndash;en las fronteras de pa&iacute;ses y continentes&ndash;, se&ntilde;ala la artista uno de los principales problemas del mundo para el que hasta ahora no hay soluci&oacute;n debido a las leyes de inmigraci&oacute;n r&iacute;gidas de los pa&iacute;ses ricos. Mabel Poblet resume este gran tema en una instalaci&oacute;n rigurosamente formal. Lo que inicialmente aparece como una pared decorativa, fulgurante y v&iacute;vida en su marco de 2 x 3 m, revela en una observaci&oacute;n m&aacute;s cercana los m&uacute;ltiples aspectos esperanzadores y tr&aacute;gicos del mar, y trae el tema a un plano de percepci&oacute;n m&aacute;s general y m&aacute;s all&aacute; de la pol&iacute;tica cotidiana.</span></p>\r\n\r\n<p><span style="line-height:1.6em">La segunda artista del proyecto Lidzie Alvisa, tambi&eacute;n cubana, pertenece a la generaci&oacute;n de Ernesto Ranca&ntilde;o. En sus instalaciones Estados (estados, situaciones) utiliza objetos cotidianos de nuestras digitalizadas vidas, para transmitir con ellos el &ldquo;latido&rdquo; de nuestro tiempo. En &ldquo;Estado de archivo&rdquo; las ondas de electrocardiogramas amplificados son reproducidas con Hi8 y MiniDVs o disquetes, CDs y DVDs. Ellos no s&oacute;lo dan informaci&oacute;n acerca de la naturaleza ef&iacute;mera de nuestro uso de medios de almacenamiento, sino que tambi&eacute;n nos hacen reflexionar sobre c&oacute;mo se comportan las memorias personales, los pensamientos sobre el pasado y el futuro en relaci&oacute;n a los archivos digitales que todos guardamos con la esperanza de poder disponer del pasado en un futuro con medios objetivos. En otra obra de la serie de Estados las ondas del ECG se trazan con tel&eacute;fonos m&oacute;viles de &uacute;ltima generaci&oacute;n, los cuales ya generan sentimientos de nostalgia en la era de los tel&eacute;fonos inteligentes. Al mismo tiempo estos dispositivos est&aacute;n ligados a nosotros como ninguna otra persona y capacitados para proporcionar, sea de d&iacute;a o de noche, informaci&oacute;n sobre nuestro ser. Ellos pueden, de la misma forma que un ECG, documentar la condici&oacute;n de nuestro coraz&oacute;n.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Con el trabajo A nivel (nivelado, &iquest;sobre un plano?), nuestra mirada es regresada a uno mismo. Dos niveles de burbuja l&aacute;ser proyectan una l&iacute;nea que alcanza la mirada de la autora, representada en una fotograf&iacute;a de sus ojos en el medio de una instalaci&oacute;n de tres paredes. Con esta instalaci&oacute;n Lidzie Alvisa refleja el plano de la mirada, su extensi&oacute;n o su l&iacute;mite, el horizonte que determina nuestra percepci&oacute;n. Se mantiene abierta la cuesti&oacute;n del c&oacute;mo son determinados l&iacute;mite y extensi&oacute;n. La construcci&oacute;n t&eacute;cnica del haz de l&aacute;ser puede ser interpretada de m&uacute;ltiples maneras.</span></p>\r\n\r\n<p><span style="line-height:1.6em">El artista h&uacute;ngaro Erik M&aacute;trai nos confronta con experimentos de percepci&oacute;n muy diferentes.</span></p>\r\n\r\n<p><span style="line-height:1.6em">A diferencia de sus anteriores trabajos, en los que en su mayor&iacute;a trata con instalaciones de luz con efectos de niebla, en las obras aqu&iacute; expuestas produce luz y color en pintura sobre tabla bidimensional. El artista trata aqu&iacute; de superar la materialidad de la pintura: la pintura acr&iacute;lica se desmaterializa y las formas geom&eacute;tricas se colocan en cierta forma en estado de suspensi&oacute;n, lo que les permite aparecer como un recuerdo en sucesos luminosos. Son obras que se crean en la trascendencia y animan al espectador a la meditaci&oacute;n.</span></p>\r\n\r\n<p><span style="line-height:1.6em">El joven artista espa&ntilde;ol Hugo Alonso se ocupa de proyecciones de un tipo muy diferente en sus pinturas de acr&iacute;lico. Aqu&iacute; hay recuerdos de escenas clave de pel&iacute;culas de terror que aparecen como visiones de espacios y situaciones inquietantes desde el subconsciente. El artista logra editar fotogramas de pel&iacute;culas para ser trabajados de una manera pict&oacute;rica tal que el recuerdo profundo se hace visible en su vaguedad, pero evocando al mismo tiempo su amenaza original de una forma nueva...</span></p>\r\n\r\n<p><span style="line-height:1.6em">Alonso a&ntilde;ade con sus obras la faceta adicional de la historia de amor entre el cine y el arte constatada por Heinz-Peter Schwerfel, la apropiaci&oacute;n de im&aacute;genes cinematogr&aacute;ficas, que ya pertenecen a la memoria colectiva internacional 3.</span></p>\r\n\r\n<p><span style="line-height:1.6em">El artista chileno Felipe Aguila se refiere tambi&eacute;n a la historia del cine en su pel&iacute;cula &ldquo;Apolide&rdquo;, poniendo a un hombre sin memoria ni sentido de pertenencia a caminar a trav&eacute;s de la vida urbana cotidiana tras su identidad, la cual parece aparecer breve y recurrentemente mediante una variedad trazos de recuerdos. El hospital y las autoridades son se&ntilde;alados como puntos que deben dar pistas en la b&uacute;squeda de su propia existencia mediante interrogatorios y mediciones.</span></p>\r\n\r\n<p><span style="line-height:1.6em">La pel&iacute;cula rodada en blanco y negro se presenta con una mezcla de secuencias largas que producen enso&ntilde;aci&oacute;n/pesadillas y escenas cortas con cortes abruptos siguiendo de manera consciente la tradici&oacute;n del cine surrealista.</span></p>\r\n\r\n<p><span style="line-height:1.6em">&ldquo;El cine es un arma maravillosa y peligrosa si la maneja un esp&iacute;ritu libre. Es el mejor instrumento para expresar el mundo de los sue&ntilde;os, de las emociones, del instinto. El mecanismo productor de im&aacute;genes cinematogr&aacute;ficas, por su manera de funcionar, es, entre todos los medios de expresi&oacute;n humana, el que m&aacute;s se parece al de la mente del hombre, o mejor a&uacute;n, el que mejor imita el funcionamiento de la mente en estado de sue&ntilde;o.&rdquo; 4</span></p>\r\n\r\n<p>En sus peque&ntilde;os y potentes dibujos perdidos en un formato de hoja grande, los cuales exigen ser observados con mucha precisi&oacute;n, Felipe Aguila conecta fragmentos de edificios o escenas que parecen flotar en un espacio urbano determinado, con desastres o eventos, abismos y elevaciones, que conducen a un orden urbano ad absurdum. Una vez m&aacute;s se unen aqu&iacute; de manera po&eacute;tica memoria, sue&ntilde;o y realidad.</p>\r\n\r\n<p><span style="line-height:1.6em">La interacci&oacute;n de las seis propuestas art&iacute;sticas con enfoques diferentes llega al espectador o a la espectadora como una imagen diversa de la reflexi&oacute;n de la propia existencia, la cual busca cerciorarse de s&iacute; misma a trav&eacute;s de diversas formas del recuerdo.</span></p>\r\n\r\n<p><span style="line-height:1.6em">El uso del recurso del reservorio de im&aacute;genes disponibles en medios es aqu&iacute; es tan claro, como la b&uacute;squeda del reflejo de la posici&oacute;n personal de la propia experiencia ps&iacute;quica y f&iacute;sica, cuyas coordenadas son determinadas m&aacute;s por la situaci&oacute;n de vida particular que por el mundo del arte.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Juliane Rebentisch, Teor&iacute;as del Arte Contempor&aacute;neo, Hamburgo, 2013, p. 120</p>\r\n\r\n<p>2. Jean-Paul Sartre, El ser y la nada, Reinbek 1974, p.467</p>\r\n\r\n<p>3. Heinz-Peter Schwerfel, El cine y arte. Una historia de amor. Colonia 2003</p>\r\n\r\n<p>4. Luis Bu&ntilde;uel:Die Flecken der Giraffe: Ein- und &Uuml;berf&auml;lle., Berl&iacute;n 1991, p 144).</p>\r\n', 'Katja Jedermann', '', 2);
INSERT INTO `textocuratorial` (`idtextocuratorial`, `titulo`, `contenido`, `autor`, `cargo_autor`, `idexposicion`) VALUES
(3, 'En el cuarto de maravillas de lo natural: sobre la obra de Uli Westphal', '<p>I.</p>\r\n\r\n<p>&ldquo;Esta piedra y ese trozo de madera son para m&iacute; una luz. Y me preguntas c&oacute;mo se puede entender esto, entonces me advierte la raz&oacute;n al contestarte que mientras observo &eacute;sta o aquella piedra, noto mucho iluminando mi alma. Es decir que noto, que es en esencia algo bueno y hermoso a su manera, que diverge por su diversidad en g&eacute;nero y especie de otros g&eacute;neros y especies, que est&aacute; determinado por su n&uacute;mero, por cada cosa como una unidad, que no sale de su orden y que logra su lugar natural seg&uacute;n la condici&oacute;n de su hermana. As&iacute;, cuando planteo consideraciones como &eacute;sta o similares mientras observo esta piedra, ellas se me convierten en luz, es decir, me iluminan&rdquo;.1&nbsp;</p>\r\n\r\n<p><span style="line-height:1.6em">Partiendo de esta teor&iacute;a desarrollada en el Siglo IX por Juan Escoto Eri&uacute;gena, fue vista hasta la Alta Edad Media como la tarea m&aacute;s importante de un artifex, la de mostrar los fen&oacute;menos naturales inherentes, las propiedades universales e individuales: en tanto que el artifex los trabaj&oacute; o reinterpret&oacute; como imagen en otro medio, la noci&oacute;n deber&iacute;a ser liberada as&iacute; de todas las circunstancias accidentales, es decir mediante una forma de la abstracci&oacute;n que podr&iacute;a reforzar su &ldquo;bondad&rdquo; y &ldquo;belleza&rdquo;. Al menos en este sentido, los tratamientos de un artifex se consideraron comparables con los de un fil&oacute;sofo o un cient&iacute;fico, con la diferencia de su tarea principalmente en el m&eacute;todo, por lo que una de esas propiedades especiales busc&oacute; la comprobaci&oacute;n de forma discursiva, mientras que la otra la mostr&oacute; (para con ello poder hacer accesible la &ldquo;luz&rdquo; tambi&eacute;n al laico ignorante).</span></p>\r\n\r\n<p>Los artistas de la era moderna se diferencian de los artifici medievales sobre todo en su actitud hacia la naturaleza: ya no aceptan su primate como una creaci&oacute;n divina y no se conforman m&aacute;s frente a ella con &ldquo;humildad ontol&oacute;gica&rdquo; (Umberto Eco), sino que ven en la actividad art&iacute;stica principalmente una forma de autorrealizaci&oacute;n, que puede ser practicada y experimentada de una forma m&aacute;s desinhibida, como si no tuviesen que temer de ella como &ldquo;in&uacute;til&rdquo; ars libre &ndash;en contraste con el ars de artesanos y t&eacute;cnicos&ndash; ninguna intervenci&oacute;n inmediata y posiblemente da&ntilde;ina o repercusiones en la naturaleza. No obstante los artistas modernos son en este papel, como propulsores de inventos y desarrollos, en mayor o menor medida irreflexivos pioneros no menos importantes y tambi&eacute;n ideol&oacute;gicamente &uacute;tiles para aquellos artifici, que proceden como t&eacute;cnicos y cient&iacute;ficos con la naturaleza seg&uacute;n las m&aacute;ximas de la raz&oacute;n instrumental y tratan de cambiarla y superarla en su sustancia.</p>\r\n\r\n<p><span style="line-height:1.6em">En este contexto, entiendo el trabajo de Uli Westphal como un nuevo tipo de una actividad art&iacute;stica de vanguardia. Ella est&aacute; impregnada una vez m&aacute;s de una manera ilustrada de &ldquo;humildad ontol&oacute;gica&rdquo; y desarrolla una posici&oacute;n social privilegiada independiente, en tanto que descubre el conocimiento perdido entre &ldquo;ciencia&rdquo; y &ldquo;arte&rdquo; a trav&eacute;s del trabajo interdisciplinario, vers&aacute;til en lo metodol&oacute;gico y pr&aacute;ctico, y de una reflexi&oacute;n de nuestra forma convencional de dar utilidad a las im&aacute;genes globales. Uli Westphal representa la imagen en el centro de sus investigaciones, cuyas m&uacute;ltiples dimensiones, formas y significados &ndash;desde la imagen mim&eacute;tica hasta la imagen imaginaria y desde el documento a la met&aacute;fora&ndash; pueden extenderse, pero con un punto de referencia com&uacute;n y un tema central: la pregunta de c&oacute;mo los seres humanos percibimos, representamos y cambiamos nuestro entorno natural.2</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>II.</p>\r\n\r\n<p><span style="line-height:1.6em">Mientras que en la Edad Media la idea era visualizar la esencia de un fen&oacute;meno natural con la ayuda de la imagen y en ese proceso ten&iacute;an lugar invenciones abstractas o idealizadas de la imagen que pod&iacute;an representar todas las manifestaciones accidentales de este fen&oacute;meno, se da en nuestro tiempo, caracterizado por la dominaci&oacute;n de m&eacute;todos de producci&oacute;n industriales, que a partir de una imagen mental, los fen&oacute;menos naturales se ajustan a esta imagen, es decir, que se trata de convertirlas en formas ideales. As&iacute; que un tomate tiene que ser no s&oacute;lo rojo, sino que tiene que satisfacer criterios preestablecidos de volumen y forma para ser comercializados, y por lo tanto todos los tomates que no cumplan con estas normas ser&aacute;n retirados del mercado o, en el mejor de los casos, puestos en forma procesada en la cadena de aprovechamiento. Esto quiere decir que lo accidental en un tomate &ndash;que ha crecido quiz&aacute;s un poco m&aacute;s o menos con respecto a la norma o que no corresponde con los est&aacute;ndares&ndash; es, obviando el hecho de que es un tomate y que muestra todas las caracter&iacute;sticas esenciales de esta fruta, el criterio decisivo para su percepci&oacute;n y uso. En relaci&oacute;n a la visi&oacute;n medieval del respeto por la naturaleza (o, si se quiere, de la creaci&oacute;n), vivimos en un mundo literalmente al rev&eacute;s, en el que intentamos por ejemplo ignorar y disimular la diversidad morfol&oacute;gica natural de las frutas.</span></p>\r\n\r\n<p>Justo en esta visi&oacute;n se sit&uacute;a Uli Westphal con su gran &ldquo;Proyecto Mutato&rdquo;, que dirige desde el a&ntilde;o 2006. T&iacute;pico de su abordaje en esta materia es que no s&oacute;lo re&uacute;ne de forma sistem&aacute;tica &ndash;en cierta forma recorriendo todo el huerto de vegetales y frutos&ndash; hongos, frutas y otras plantas comestibles que no cumplen con las normas morfol&oacute;gicas, sino que &ndash;desde un punto de vista est&eacute;tico&ndash; realiza sistemas perceptibles para finalmente documentar profesionalmente con fotograf&iacute;as tanto sus hallazgos por separado, como sus arreglos en cuadros. As&iacute; surge y crece un archivo de la diversidad de las formas naturales que, s&oacute;lo por el hecho de contener unas pocas especies de plantas o variedades como objeto, muestra de inmediato la riqueza formal de la naturaleza y retrata y permite admirar cada ejemplar como su &uacute;nica creaci&oacute;n.</p>\r\n\r\n<p><span style="line-height:1.6em">Como consecuencia de este enfoque, las investigaciones se centraron en una fruta &ndash;el tomate&ndash; tom&aacute;ndola a modo de ejemplo, desde los diferentes aspectos morfol&oacute;gicos dentro de una variedad, hasta la diversidad de los tipos de esta fruta. Se realiz&oacute; una investigaci&oacute;n cient&iacute;fica en bancos de genes y, finalmente, una actividad de horticultura intensa, la cual condujo al trabajo &ldquo;Lycopersicum&rdquo; (2010), el primero de una serie de archivos visuales, con el que el artista llama la atenci&oacute;n sobre la amenaza a la &ldquo;abrumadora variedad de cultivos agr&iacute;colas&rdquo; debido a los m&eacute;todos de producci&oacute;n industriales estandarizados. Este trabajo act&uacute;a tambi&eacute;n como una prueba contundente de la amenaza a la diversidad, ya s&oacute;lo por el hecho de que dif&iacute;cilmente alguien tuvo el privilegio de haber visto jam&aacute;s m&aacute;s de cinco tipos de tomates ilustrados, y adem&aacute;s la propia imagen lleva consigo un alto contenido de informaci&oacute;n tanto desde el punto de vista bot&aacute;nico como est&eacute;tico y se le presenta al observador una tarea de comparaci&oacute;n casi interminable, en la que el disfrute comparativo al ver m&aacute;s de 150 variedades de espec&iacute;menes se convierte repentinamente en un mensaje pol&iacute;tico.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>III.</p>\r\n\r\n<p><span style="line-height:1.6em">El &ldquo;Proyecto Mutato&rdquo; fue precedido por varias obras en las que Uli Westphal se ocup&oacute; de representaciones de animales. Un primer tema fue el tama&ntilde;o de los animales o el sentido de la escala de sus representaciones: con &ldquo;Leviathan&rdquo; (2001), una manguera penetrable inflada para generar un volumen de 35 x 6 x 6 metros, cuya forma desarroll&oacute; el artista partir de un peque&ntilde;o dibujo del libro de Jacques Cousteau &ldquo;Les Baleans&rdquo; en base a las dimensiones reales del mam&iacute;fero m&aacute;s grande del planeta, la ballena azul, hace algo literalmente accesible y una experiencia directa, de forma similar a su obra &ldquo;Arca de No&eacute;&rdquo; (2002), en la que los dibujos de los animales son vistos en su tama&ntilde;o real debido a su proyecci&oacute;n. En una inversi&oacute;n de este principio, la cual trajo en la instalaci&oacute;n &ldquo;Magnificent&rdquo; (2002), hizo visibles los detalles por debajo del umbral de la percepci&oacute;n humana que conforman los cuerpos de diminutas criaturas &ndash;insectos&ndash; mediante una proyecci&oacute;n en dimensiones humanas. De igual forma el proyecto &ldquo;Calamariisurfing&rdquo; (2004) fue como un juego con el sentido de la escala de los fen&oacute;menos naturales, en el que Uli Westphal tom&oacute; la altamente adaptada forma aerodin&aacute;mica de la columna vertebral de calamar como modelo para la construcci&oacute;n de una tabla de surf, pretendiendo al mismo tiempo la existencia de animales de tama&ntilde;os correspondientes.</span></p>\r\n\r\n<p>&ldquo;Retrozoolog&iacute;a&rdquo; (2006/7) y &ldquo;Chimaerama&rdquo; (2004/13) tienen m&aacute;s bien un car&aacute;cter l&uacute;dico e ir&oacute;nico. &ldquo;Retrozoolog&iacute;a&rdquo; es &ldquo;Una audiogu&iacute;a para parques zool&oacute;gicos y museos de historia natural&rdquo; con la que Uli Westphal hizo posible una &ldquo;visi&oacute;n retrospectiva&rdquo; de animales conocidos, como los que por ejemplo se pueden encontrar en el zool&oacute;gico de Berl&iacute;n: mientras que los visitantes observan los animales, se reproducen textos hist&oacute;ricos, en los que diferentes autores exponen sus impresiones de estos animales y los describen, llegando muchas veces a valoraciones totalmente erradas y suposiciones abstrusas de sus propiedades debido a que no ten&iacute;an conocimiento de los mismos. Este trabajo es en cierto sentido lo contrario de &ldquo;Chimaerama&rdquo;, originalmente una proyecci&oacute;n de diapositivas de dibujos en tres partes de animales del siglo XIX, reconcebida como una especie de m&aacute;quina tragamonedas con la cabeza, el torso y la parte trasera de diferentes animales combinados entre s&iacute; de cualquier manera para crear nuevas especies. &Eacute;ste tambi&eacute;n es un trabajo basado no s&oacute;lo en una intensa investigaci&oacute;n y una confrontaci&oacute;n profunda con representaciones de animales, sino que tambi&eacute;n debe su logro a un an&aacute;lisis de las proporciones y de la escala sobre el que las 300 im&aacute;genes individuales se coordinaron para que realmente encajaran. Ambas obras desarrollan a partir de las descripciones e ilustraciones de animales un bestiario, pero que en contraste con los bestiarios hist&oacute;ricos, construye sobre los ensayos (hist&oacute;ricos) para reflejar correctamente la fauna natural.</p>\r\n\r\n<p><span style="line-height:1.6em">Por &uacute;ltimo, a este grupo de obras pertenece tambi&eacute;n &ldquo;Coleoptera&rdquo; (2007), una colecci&oacute;n de m&aacute;s de 1.000 representaciones de escarabajos, los cuales Uli Westphal redibuja como siluetas y coloca en tama&ntilde;os comparables, para mostrar una r&aacute;pida animaci&oacute;n de dos minutos de duraci&oacute;n, en las que aparecen como mutaciones de un solo organismo. Una vez m&aacute;s, el espectador es desconcertado por la diversidad y diferenciaci&oacute;n de la anatom&iacute;a de estos animales &ndash;sobre todo si sabe adem&aacute;s que el orden de los escarabajos abarca 350.000 especies descritas, es decir, que lo que se muestra en este trabajo, s&oacute;lo es una diminuta parte de la incidencia natural.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Es especialmente destacable que Uli Westphal no s&oacute;lo domina de forma majestuosa diferentes t&eacute;cnicas art&iacute;sticas, medios y formatos, sino que seg&uacute;n el tema de su trabajo los combina para generar un efecto.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>IV.</p>\r\n\r\n<p><span style="line-height:1.6em">Esto se aplica tambi&eacute;n para su gran proyecto &ldquo;Elephas Anthropogenus&rdquo; (2008), el cual se puede ver en su totalidad en el sitio web del artista. Especialmente con este trabajo, Uli Westphal se ha abierto su propio campo de trabajo en el sentido previamente indicado, con gran relevancia para las ciencias, mientras muestra de una manera ejemplar para el caso de los elefantes, c&oacute;mo ha cambiado nuestra imagen de la naturaleza a trav&eacute;s de los siglos: despu&eacute;s de la ca&iacute;da del Imperio Romano los elefantes desaparecieron casi completamente de Europa hasta la &eacute;poca de la Ilustraci&oacute;n. Dado que s&oacute;lo hab&iacute;a descripciones escritas de la apariencia de los elefantes, este animal en particular fue reconstruido de forma visual a partir de esas representaciones de la temprana Edad Media. Esto condujo en la mayor&iacute;a de los casos a ilustraciones, en las que las caracter&iacute;sticas esenciales de un elefante &ndash;sobre todo la trompa y las orejas grandes&ndash; en efecto se pueden reconocer, pero a menudo no corresponden con el aspecto real y todos los dem&aacute;s elementos de la anatom&iacute;a de este animal. As&iacute;, debido a la carencia de plantillas, las marcas caracter&iacute;sticas de los elefantes, trompa y orejas, fueron combinadas con propiedades de animales conocidos. En una extensa colecci&oacute;n de tales representaciones hist&oacute;ricas, Uli Westphal documenta estos elefantes en mayor o menor medida producto de la imaginaci&oacute;n humana y los a&iacute;sla de las plantillas con sus propios dibujos de forma abstracta y tama&ntilde;o comparable. &Eacute;l investig&oacute; y orden&oacute; este bestiario de elefantes como un zo&oacute;logo y pudo finalmente desarrollar una taxonom&iacute;a de las representaciones de elefantes, que a su vez se convirti&oacute; en la base para su orden filogen&eacute;tico en forma de diagrama de &aacute;rbol, el cual se realiz&oacute; como una tabla y est&aacute; disponible en Internet. Uli Westphal implement&oacute; aqu&iacute; de esta forma m&eacute;todos de la ciencia con medios art&iacute;sticos y logr&oacute; la genealog&iacute;a de una imagen cultural de la naturaleza en su propio lenguaje visual. Como resultado de esta convincente estrategia art&iacute;stico-cient&iacute;fica se muestra la subjetividad y relatividad de representaciones de la naturaleza tanto culturales como cient&iacute;ficas y se hace claro de inmediato que la imagen que nos hacemos de la naturaleza, permanece siempre como una construcci&oacute;n artificial y dependiente de los intereses del perceptor en cuesti&oacute;n.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.&nbsp;J. S. Eriugena, Super ierarchiam coelestam Sancti Dionysii I,I, cita seg&uacute;n: Rosario Assunto, Die Theorie des Sch&ouml;nen im Mittelalter, K&ouml;ln 1963, p. 146.</p>\r\n\r\n<p>2.&nbsp;Comparar: www.uliwestphal.de/expanded/about.html</p>\r\n', 'Michael Fehr', 'Director y gerente del Instituto de Arte en Contexto de la Universidad de las Artes de Berlín. Gerente y miembro de la junta directiva de la asociación Werkbundarchiv e.V. – Museum der Dinge, Berlín', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_artista`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tra_artista`
--

INSERT INTO `tra_artista` (`id`, `idiomaid`, `artistaid`, `pais`, `biografia`) VALUES
(1, 2, 1, 'Hungary', '<p>He completed his studies in 2003 at the Moholy-Nagy University of Art, Budapest. Since then he has taught at the University while continuing his work as an artist. In 2011 he won the Ferenczy No&eacute;mi award for applied art in Hungary.</p>\r\n\r\n<p><span style="line-height:1.6em">Primarily he designs and makes jewellery but his work also includes objects such as trophies, commemorative plaques and medals. Research and exploration underlie much of his work, in which purity of form, intense precision and innovation are characteristic elements. He tries to combine technologies unknown to traditional jewellery making with modern materials such as stainless steel and the use of photo-chemical milling.</span></p>\r\n'),
(2, 2, 2, 'Hungary', '<p>Regő Kiss Aba completed his degree at the Moholy Nagy University of Art and Design in Hungary in 2004, specialising in work with glass.</p>\r\n\r\n<p>In 2001-2002 he studied glass technology at the Orrefors Costa Boda factory in Sweden, working for the artist Bertil Vallien, among others.</p>\r\n\r\n<p>In 2007 he worked in England and was artistic director of Bristol Blue Glass in 2008-2009. Since then he has been working in Budapest and since 2013 has taught at the Moholy Nagy University of Art and Design.</p>\r\n'),
(3, 2, 3, 'Venezuela', '<p>The artist divides his time between Berlin in Germany, Budapest in Hungary, and Caracas in Venezuela.</p>\r\n\r\n<p>His qualifications include an MA in Art in Context from the Institute for Art in Context, University of Berlin, Germany, and an MA in Art and Design from the Moholy-Nagy University of Art, Budapest.</p>\r\n\r\n<p>He first exhibited his work in 1997. He has held the following individual exhibitions: &ldquo;KuZo&rdquo; Galer&iacute;a Odalys, Caracas (2012). &ldquo;A-Tiras&rdquo;, Galer&iacute;a Parenthesis, Centro de Arte Los Galpones, Caracas (2012). &ldquo;The Way to the Top&rdquo; KuZo-KUlture ZOne, Festival SZIGET, Budapest (2011). &ldquo;A_TIRAS&rdquo;, Club Na&uacute;tico, Maracaibo, Venezuela (2001).</p>\r\n\r\n<p>His work has also appeared in a number of recent collective exhibitions including: &ldquo;Hydromemories&rdquo;, Regional Museum of Natural Science, Turin (2012); Trashumantes, urbanos e &iacute;ntimos, Sala 8 Museum of Contemporary Art, Caracas (2011); Trashumantes, urbanos e &iacute;ntimos, 1st Contemporary Art Biennial, University of the Andes, Estado M&eacute;rida, Venezuela; &ldquo;XXI Feria Iberoamericana de Arte&rdquo;, Caracas (2012); EU Trio Tree, Festival SZIGET, Budapest; &ldquo;Esta Casa est&aacute; Sonada&rdquo;, X Velada Santa Luc&iacute;a, Maracaibo, Estado Zulia (2010); Aus dem Kontext, Berlin University of Art; Metanationale, Arttransponder, Berlin; Hidromemorias, ICC, Berlin; Hidromemorias, Museum of Contemporary Art, Caracas (2009).</p>\r\n\r\n<p>He received an honourable mention from Vitrum, at the 32nd Sal&oacute;n Nacional de las Artes del Fuego, Valencia, Estado Carabobo, Venezuela (2005) and won the Francisco Narv&aacute;ez award at the 59th Sal&oacute;n Arturo Michelena, Valencia, Estado Carabobo, Venezuela (2001).</p>\r\n'),
(4, 2, 4, 'Spain', '<p>Jasmina Llobet and Luis Fern&aacute;ndez Pons are a visual artist collective based in Barcelona and Berlin since 2001, working together across the fields of installation, object sculpture and art in public space since 2002. They both studied Fine Art at the Berlin University of the Arts (UdK).</p>\r\n\r\n<p>They have participated in international residency programmes at Laznia Centre for Contemporary Art, Gdansk, Poland (2013); Akiyoshidai International Art Village (AIAV), Yamaguchi, Japan (2011); Seoul Art Space Geumcheon, South Korea (2010); and Platform Garanti, Istanbul, Turkey (2009). They are currently long-term residents in Hangar, Barcelona.</p>\r\n\r\n<p>They have had solo exhibitions at CAS, Osaka, Japan (2013); Lokaal 01, Antwerp, Belgium (2012); Galer&iacute;a Adhoc, Vigo, Spain (2012); and The Process Room at the Irish Museum of Modern Art, Dublin, Ireland (2010).</p>\r\n\r\n<p>Recent group exhibitions include Setouchi Triennale. Seto islands, Japan (2013), ARCOmadrid, Madrid (2012); fairgrounds, little berlin, Philadelphia, USA (2012); Destino / Zielort: Berlin, Studio 1, Bethanien, Berlin, Germany (2011); Fare-Well, Brain Factory, Seoul, South Korea (2010); Manifesta 7, Project Tabula Rasa (in collaboration with OASberlin), Bolzano, Italy (2008); and madrid28045, Intermedi&aelig;/Matadero, Madrid (2007).</p>\r\n'),
(5, 2, 5, 'Italy', '<p>Born in Turin, Italy, Irina Novarese lives in Berlin since 2000. Her works evolves around installations, drawings, videos and interdisicplinary projects.</p>\r\n\r\n<p>Irina Novarese received a Bachellor Art degree in Fine Arts from the Academy of Fine Arts, Turin, 1996 and a Master in Art in Context from the Institut f&uuml;r Kunst im Kontext of the Universit&auml;t der K&uuml;nste, Berlin.&nbsp;</p>\r\n\r\n<p>In 2008 She realized solo shows in Italy, in Turin and in Pescara in Galleries and Off-site projects (1994 till 2011), in Spain at the Galleria Can&eacute;m (2007 and 2011) and Germany at the VBM Gallery in Berlin (2010). She has exhibited at various galleries, museums, and off-site projects in Italy, Spain, Venezuela, China, Germany, France, Poland, United States and Hungary. And was taking part to different artistic residency in Italy, Serbia, USA.</p>\r\n\r\n<p>Active in many interdisciplinary and participative artistic projects, she presented some of them at the Venice Architecture Biennale (2006) and at the Haiti Ghetto Biennale (2012). Her work is in privates and public collections, and presented in international art fairs and art related publications.</p>\r\n'),
(6, 2, 6, 'Hungary', '<p>Bal&aacute;zs Sipos studied at the Moholy Nagy University of Art and Design in Hungary, specialising in work with glass.</p>\r\n\r\n<p>After qualifying, he was employed by the Ajka Krist&aacute;ly Zrt. company as a designer from 2003 to 2005, working on casting techniques in industrial production.</p>\r\n\r\n<p>The Prima Primissima award was manufactured there, based on one of his designs. At the same time he was working on the development of his own studio in Budapest, which gave him the necessary technical experience to produce his statues and other items made of glass, including prizes, items for interior decoration, etc.</p>\r\n\r\n<p>He won the Lajos Kozma award between 2007 and 2009, which contributed to the development of his statues and his creative language. He took part in a large number of exhibitions and symposia, winning the Noemi Ferenczy award in 2011. His works were featured on two occasions in the New Glass Review.</p>\r\n\r\n<p>For five years he taught at the School of Applied Art in Budapest and since 2012 he has taught at the Moholy Nagy University of Art, as well as studying for his doctorate.</p>\r\n'),
(7, 2, 8, 'Chile', '<p><span style="line-height:1.6em">Felipe Aguila was born in Santiago de Chile in 1977. Lives and works in Turin, Italy. Study at the University of Chile, School of Visual Arts degree in 1998, majoring in painting. In 1999 he obtained a grant from FONDART, National Endowment for the Arts. In 2000 won a scholarship that allowed him to enroll Accademia Albertina di Belle Arti di Torino, frequenting the painting course until 2004, a period which began working on their first video installations.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Selected exhibitions: Alle Radici della Democrazia, Casa della Resistenza, Verbania-Fondotoce, Italia, 2014; Clueless, Domhdlu, Galeria&nbsp; Bacva, Zagreb, 2013; Art&nbsp; Stays&nbsp; Art&nbsp; residency, America&nbsp; latina, Arte entre identidad y m&aacute;scara, Miheli čeva Gallery, Ptuj, Slovenia, 2012; Hydromemories, Museo regionale di scienze naturali, Tur&iacute;n, 2012; In&nbsp; sede:&nbsp; Tempi&nbsp; precari,&nbsp; Tur&iacute;n,&nbsp; 2012; Visual&nbsp; bands,&nbsp; Lu.C.C.A.&nbsp; Center&nbsp; of&nbsp; Contemporary&nbsp; Art,&nbsp; Lucca &nbsp; 2010;&nbsp; &ldquo;Risque d&rsquo;attente&rdquo;, Gradska Galerija, Croacia, 2009; Il Castello&nbsp; di&nbsp; Rivara&nbsp; apre&nbsp; le&nbsp; cantine,&nbsp; Rivara,&nbsp; 2009;&nbsp; Hydromemories, Museo&nbsp; de&nbsp; Arte&nbsp; Contempor&aacute;neo,&nbsp; Caracas,&nbsp; Venezuela,&nbsp; 2009;&nbsp; Birds&nbsp; of&nbsp; passage,&nbsp; Le&nbsp; monacelle, Matera, 2009;&nbsp; Arte recente dal Cile, ex chiesa di San Carpoforo,&nbsp; Milano 2009. &nbsp;</span></p>\r\n'),
(8, 2, 9, 'Spain', '<p>Hugo Alonso&rsquo;s individual recent projects are C&oacute;mo resucitar una mosca muerta, Festival de Cine de Medina del Campo (Spain, 2013); To my father and to the memory of my, Adora Calvo Gallery, Salamanca (Spain, 2011); Drop, Festival Faquir, DA2, Domus Artium 2002, Salamanca (Spain, 2010); Frederick Treves y la C&aacute;mara de cirujanos, Salvador D&iacute;az Gallery, Madrid (Spain, 2010); Paintingdrome, DA2, Domus Artium 2002, Salamanca (Spain, 2007).</p>\r\n\r\n<p><span style="line-height:1.6em">He has been part of group shows such as No limit, Centro Cultural Coreano en Espa&ntilde;a, Madrid (Spain, 2014); This is not a love song, La Virreina Centro de la Imagen, Barcelona (Spain, 2013); Paisajes Improbables, Junta CyL / Teatro Municipal de Guarda, CyL (Portugal, 2012); Arte y Videoclip: Proyectos en la intersecci&oacute;n, Primavera Sound / Screen Festival / Loop Festival, Barcelona (Spain, 2012); Generaci&oacute;n 2008, Cajamadrid, Itinerante (Spain, 2008); Della Pittura Digitalis - Painting and the digital momentum, Caprice Horn Gallery, Berl&iacute;n (Germany, 2007); MIXED EMOTIONS, apuntes para una colecci&oacute;n del siglo XXI, colecci&oacute;n DA2, Domus Artium 2002, Salamanca (Spain, 2008); EXISTENCIAS; colecci&oacute;n MUSAC, Museo de Arte Contempor&aacute;neo de Castilla y Le&oacute;n (Spain, 2007) and HETEROTOP&Iacute;AS, Oktogon HfBK, Dresden (Germany, 2007).</span></p>\r\n\r\n<p><span style="line-height:1.6em">His recent highlight achievements are Premio J&oacute;venes Pintores Fundaci&oacute;n Gaceta 2013, Premio Arte Joven de la Junta de Castilla y Le&oacute;n 2011, Premio Caja Espa&ntilde;a de Pintura 2008, Premio Optica Videoarte 2008/2007 or Premio J&oacute;venes Artistas de Castilla y Le&oacute;n Caja Burgos 2007.</span></p>\r\n\r\n<p><span style="line-height:1.6em">His work can be seen in public collections such as MUSAC (Museo de Arte Contempor&aacute;neo de Castilla y Le&oacute;n), DA2 (Domus Artium 2002), CAB (Centro de Arte Contempor&aacute;neo de Burgos), Fundaci&oacute;n BMW, Diputaci&oacute;n de Salamanca, Fundaci&oacute;n Gaceta and Obra Social Caja Espa&ntilde;a.</span></p>\r\n'),
(9, 2, 10, 'Cuba', '<p>Lidzie Alvisa Jim&eacute;nez was born in Havana in 1969 and studied from elementary school until obtaining her college degree in 1994 in the University of Arts in Cuba (ISA, for its Spanish acronym). She is a plastic artist that employs photography as a means of creative expression, besides drawing, sculpture, installation art and performance. She is a member of the National Union of Writers and Artists of Cuba (UNEAC, for its Spanish acronym). She participated in the 1996 Havana Biennial, in the 2010 Portugal Biennial and in 2006 La Huella Digital; in international art fairs such as: Art Miami Pulse, Art Madrid, Art Paris, and Art Toronto, in the International Contemporary Art Fair (ARCO, for its Spanish acronym), in Lima Foto, Moscow Art, Context Art Miami, among others.</p>\r\n\r\n<p><span style="line-height:1.6em">She participated in national and international auctions, like Havana Auction, Humanitarian Auction, Casa de las Americas and in the First Auction of Latin American Art in the Fernando Duran Auction House. She has conducted several solo exhibitions curated by herself and more than seventy collective exhibitions. She has been jury in national events and in 2007 she was accepted into the Residencies of the Batiscafo Project. Her works appear in articles, magazines, books and national and international catalogs. Her collection of works is present in the USA, Mexico, Germany, France, Belgium, Switzerland, Portugal, Spain, Venezuela, Russia, United Kingdom, among others.</span></p>\r\n'),
(10, 2, 11, 'Hungary', '<p><span style="line-height:1.6em">Erik M&aacute;trai was born in Miskolc (Hungary) 1977. Begins his studies in 1998 at the Art University of Budapest (Hungary), in 2004 with the Erasmus grant he studies painting and multimedia at the Polytechnic University of Valencia (Spain). The same year he graduates at the academy in Budapest. Between 2009 and 2012 makes a doctorate at the Art University of Budapest.</span></p>\r\n\r\n<p><span style="line-height:1.6em">In 2006 he receives the Derkovits grant, then in 2008 wins the March Youth award in Hungary. In 2009 he is granted a residence at the Hungarian Academy in Rome (Italy).</span></p>\r\n\r\n<p><span style="line-height:1.6em">He takes part in 2011 in the art in residency program in Frankfurt (Germany), then in 2013 at the VARP residency in New York (USA) in which he receives the E&ouml;tv&ouml;s grant from the Hungarian state.</span></p>\r\n\r\n<p><span style="line-height:1.6em">Under the most important exhibitions are &ldquo;Strange Situations&rdquo; (2014) at the Art9 gallery and &ldquo;Porticus 02&rdquo; (2013) in the Parthenon-friz, both in Budapest (Hungary). He exhibits in Chiesa di San Lio &ldquo;G&ouml;mb&rdquo; (2013) in Venice (Italy). Exhibits twice at the Contemporary Art Museum of Budapest (Hungary) with &ldquo;T&aacute;j&rdquo; (2013) and &ldquo;What is Hungarian?&rdquo; (2012). &ldquo;Porticus&rdquo; (2012) at the Acb Gallery in Budapest (Hungary). Atelier Frankfurt (Germany) with the residency in 2011.</span></p>\r\n'),
(11, 2, 12, 'Cuba', '<p>She was born in Cienfuegos, Cuba in 1986. She graduated from the University of Arts of Cuba and the San Alejandro National Academy of Fine Arts. Mabel has also participated in the Behavior Art Workshop conducted by Cuban artist, Tania Bruguera. She has been awarded the Noemi Prize, as an intern in the Brownstone Foundation Residencies in Paris. She was also a part of the project Havana Cultura, promoted by Havana Club.</p>\r\n\r\n<p><span style="line-height:1.6em">Her solo exhibitions and presentations include her most recent works like Reverso, Tomas y Valiente Art Centre, Madrid (Spain); Desapariencia Enlace Contemporary Art Gallery, Lima (Peru). Last year, Situacion Limite, Raquel Ponce Gallery , Madrid (Spain). In 2012,&nbsp; Reunificacion Familiar, Collateral to the 11th Havana Biennial, Morro Caba&ntilde;a (Cuba), also in the Center for Cuban Studies (New York, 2011); Inventario, Ludwig Foundation, Havana (Cuba, 2012) and Un Sue&ntilde;o Real, Cuba&rsquo;s Photographic Library (Havana, 2009). She has also exhibited his work in group exhibitions in countries like England, Switzerland, Cuba, USA. She has participated in fairs like the International Contemporary Art Fair in Madrid (Spain); ArtBo, Bogota (Colombia); Houston Fine Art Fair, TX Solo Project, Reliant Center, Houston (USA), LimaPhoto, Lima (Peru).&nbsp; She is also in several collections including CIFO Cisneros Fontanals Art Foundation (USA); Brownstone Foundation (Paris, France), among others.</span></p>\r\n'),
(12, 2, 13, 'Cuba', '<p>He graduated in the San Alejandro Academy of Fine Arts in 1991. He is a member of the National Union of Writers and Artists of Cuba (UNEAC, for its Spanish acronym) and the International Association of Plastic Artists (AIAP). In Cuba, his work has been exhibited in the art galleries Servando Cabrera, Villa Manuela, Havana, La Casona, 23 y 12, among others. His work has also been present in centers, museums and galleries like: Brande Art Oy, Helsinki (Finland); Marlborough Chelsea, New York (USA); Center for Cuban Studies, New York (USA); UNESCO Headquarters in Paris (France); Square One Gallery, London (England); Espacio 304 Gallery and Museo de las Am&eacute;ricas in San Juan (Puerto Rico); ONU Headquarters, Geneva (Switzerland); Berghein Gallery (Panama); Nuno Sacramento Gallery (Portugal); Buenos Aires Museum of Fine Arts, La Plata (Argentina); Museum of Modern Art of Bogota (Colombia); Chelsea Gallery, Kingston (Jamaica). He has participated in fairs such as the International Contemporary Art Fair (ARCO, for its Spanish acronym) in Madrid, Art Moscow, JustMad, ArteLisboa, Lima Photo, Houston Fine Art Fair, ArtBo, etc.</p>\r\n\r\n<p><span style="line-height:1.6em">His work is part of different collections exhibited in The Ministry of Culture, Havana (Cuba); The National Council of Plastic Arts, Havana (Cuba); The Office of the Historian, Havana (Cuba); the Cuban Institute of Arts and Cinematographic Industry (Cuba); the State Council (Cuba); the Marlborough Gallery, New York (USA); the Nina Menocal Gallery, Federal Distric (Mexico); the Cernuda Arte Gallery, Miami (USA); Pan-American Arts Projects, Miami (USA); the Jose Saramago Cultural Centre, Valencia (Spain); Sting, London (England); The Oswaldo Guayasamin Foundation, Quito (Ecuador); the Miraflores Government Palace (Venezuela); Casa Natal del Che Museum, Rosario (Argentina); The Andres Bello Project Collection (Colombia); The Djerassi Foundation, San Francisco (USA); the ONU Headquarters, Geneva (Switzerland).</span></p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_audio`
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
-- Estructura de tabla para la tabla `tra_conversatorio`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_conversatorioaudio`
--

CREATE TABLE IF NOT EXISTS `tra_conversatorioaudio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `conversatorioaudioid` int(11) NOT NULL,
  `datos` varchar(255) NOT NULL,
  `audio_ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `conversatorioaudioid` (`conversatorioaudioid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_conversatorio_fotos`
--

CREATE TABLE IF NOT EXISTS `tra_conversatorio_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `conversatorio_fotosid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `conversatorio_fotosid` (`conversatorio_fotosid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Volcado de datos para la tabla `tra_conversatorio_fotos`
--

INSERT INTO `tra_conversatorio_fotos` (`id`, `idiomaid`, `conversatorio_fotosid`, `descripcion`) VALUES
(1, 1, 1, ''),
(2, 1, 2, ''),
(3, 1, 3, ''),
(4, 1, 4, ''),
(5, 1, 5, ''),
(6, 1, 6, ''),
(7, 1, 7, ''),
(8, 1, 8, ''),
(9, 1, 9, ''),
(10, 1, 10, ''),
(11, 1, 11, ''),
(12, 1, 12, ''),
(13, 1, 13, ''),
(14, 1, 14, ''),
(15, 1, 15, ''),
(16, 1, 16, ''),
(17, 1, 17, ''),
(18, 1, 18, ''),
(19, 1, 19, ''),
(20, 1, 20, ''),
(21, 1, 21, ''),
(22, 1, 22, ''),
(23, 1, 23, ''),
(24, 1, 24, ''),
(25, 1, 25, ''),
(26, 1, 26, ''),
(27, 1, 27, ''),
(28, 1, 28, ''),
(29, 1, 29, ''),
(30, 1, 30, ''),
(31, 1, 31, ''),
(32, 1, 32, ''),
(33, 1, 33, ''),
(34, 1, 34, ''),
(35, 1, 35, ''),
(36, 1, 36, ''),
(37, 1, 37, ''),
(38, 1, 38, ''),
(39, 1, 39, ''),
(40, 1, 40, ''),
(41, 1, 41, ''),
(42, 1, 42, ''),
(43, 1, 43, ''),
(44, 1, 44, ''),
(45, 1, 45, ''),
(46, 1, 46, ''),
(47, 1, 47, ''),
(48, 1, 48, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_exposicion`
--

CREATE TABLE IF NOT EXISTS `tra_exposicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) NOT NULL,
  `exposicionid` int(11) NOT NULL,
  `idiomaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exposicionid` (`exposicionid`),
  KEY `idiomaid` (`idiomaid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tra_exposicion`
--

INSERT INTO `tra_exposicion` (`id`, `pais`, `exposicionid`, `idiomaid`) VALUES
(1, 'Spain', 1, 2),
(2, 'Spain', 2, 2),
(3, 'Venezuela', 3, 2),
(4, 'Spain', 4, 2),
(5, 'Spain', 5, 2),
(6, 'Japan', 6, 2),
(7, 'Belgium', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_fotosexposicion`
--

CREATE TABLE IF NOT EXISTS `tra_fotosexposicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `fotosexposicionid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `fotosexposicionid` (`fotosexposicionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_montaje`
--

CREATE TABLE IF NOT EXISTS `tra_montaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `montajeid` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `montajeid` (`montajeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- Volcado de datos para la tabla `tra_montaje`
--

INSERT INTO `tra_montaje` (`id`, `idiomaid`, `montajeid`, `descripcion`) VALUES
(103, 1, 103, ''),
(104, 1, 104, ''),
(105, 1, 105, ''),
(107, 1, 107, ''),
(109, 1, 109, ''),
(110, 1, 110, ''),
(112, 1, 112, ''),
(113, 1, 113, ''),
(114, 1, 114, ''),
(122, 1, 122, ''),
(123, 1, 123, ''),
(128, 1, 128, ''),
(130, 1, 130, ''),
(131, 1, 131, ''),
(135, 1, 135, ''),
(137, 1, 137, ''),
(138, 1, 138, ''),
(140, 1, 140, ''),
(148, 1, 148, ''),
(149, 1, 149, ''),
(150, 1, 150, ''),
(151, 1, 151, ''),
(152, 1, 152, ''),
(153, 1, 153, ''),
(154, 1, 154, ''),
(155, 1, 155, ''),
(156, 1, 156, ''),
(157, 1, 157, ''),
(158, 1, 158, ''),
(159, 1, 159, ''),
(160, 1, 160, ''),
(162, 1, 162, ''),
(163, 1, 163, ''),
(164, 1, 164, ''),
(165, 1, 165, ''),
(166, 1, 166, ''),
(167, 1, 167, ''),
(168, 1, 168, ''),
(169, 1, 169, ''),
(170, 1, 170, ''),
(171, 1, 171, ''),
(172, 1, 172, ''),
(173, 1, 173, ''),
(174, 1, 174, ''),
(175, 1, 175, ''),
(176, 1, 176, ''),
(177, 1, 177, ''),
(178, 1, 178, ''),
(179, 1, 179, ''),
(180, 1, 180, ''),
(181, 1, 181, ''),
(182, 1, 182, ''),
(183, 1, 183, ''),
(184, 1, 184, ''),
(185, 1, 185, ''),
(186, 1, 186, ''),
(187, 1, 187, ''),
(188, 1, 188, ''),
(189, 1, 189, ''),
(190, 1, 190, ''),
(191, 1, 191, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_noticia`
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
-- Estructura de tabla para la tabla `tra_obra`
--

CREATE TABLE IF NOT EXISTS `tra_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `obraid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `obraid` (`obraid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Volcado de datos para la tabla `tra_obra`
--

INSERT INTO `tra_obra` (`id`, `idiomaid`, `obraid`, `descripcion`) VALUES
(1, 2, 1, 'Diamond Circle. 2011\r\nNecklace\r\nStainless steel\r\n0.3 x 29.5 x 29.5 cm'),
(2, 2, 2, 'Diamond Cloud I. 2012. Necklace. Stainless steel. 3.5 x 7.5 x 18.5 cm'),
(3, 2, 3, 'Diamond Cloud II. 2012. Necklace. Stainless steel. 4.5 x 10 x 18 cm'),
(4, 2, 4, 'Diamond Cloud III. 2013. Necklace. Stainless steel. 14 x 11.5 x 2 cm'),
(5, 2, 5, 'Diamond Foam I. 2013. Brooch. Stainless steel. 7 x 7 x 20 cm'),
(6, 2, 6, 'Diamond Foam II. 2013. Brooch. Stainless steel. 11 x 14.5 x 6 cm'),
(7, 2, 7, 'FourStone. 2013. Earring. Stainless steel. 9 x 5 x 2 cm'),
(8, 2, 8, 'ThreeStone. 2013. Earring. Stainless steel. 6 x 5 x 2 cm'),
(9, 2, 9, 'Command D. 2013. Necklace. Stainless steel. 0.27 x 10 x 19 cm'),
(10, 2, 10, 'Reflection. 2011. Cast glass. 54 x 60 cm'),
(11, 2, 11, 'Space Corridor. 2008. Cast and polished glass. 20 x 33 x 5 cm'),
(12, 2, 12, 'Idol. 2001. Cast glass. 26 x 12 cm. '),
(13, 2, 13, 'Víz III (Water III). Arsenal Venecia Series. 2013. Fine art print on aluminum dibond. 100 x 138 cm. Ed. 1/6'),
(14, 2, 14, 'Víz II (Water II). Istambul Series. 2013. Fine art print on aluminum dibond. 100.6 x 256 cm. Ed. 1/6'),
(15, 2, 15, 'Víz I (Water I). Barcelona Series. 2013. Fine art print on aluminum dibond (triptych). 100.6 x 145 cm. Ed. 1/6'),
(16, 2, 16, 'Kylemore. 2010. Ink on paper. 21 x 29.7 cm'),
(17, 2, 17, 'Fukuokakuko. 2009. Ink on paper. 23 x 33 cm'),
(18, 2, 18, 'Sin título (119.3). 2013. Ink on paper. 30 x 42 cm'),
(19, 2, 19, 'Sin título (85.5). 2011. Ink on paper. 24 x 32 cm'),
(20, 2, 20, 'Sin título (119.7). 2013. Ink on paper. 30 x 42 cm'),
(21, 2, 21, 'Sin título (84.2). 2011. Ink on paper. 24 x 32 cm'),
(22, 2, 22, 'Sin título (119.4). 2013. Ink on paper. 30 x 42 cm'),
(23, 2, 23, 'Sin título (119.1). 2013. Ink on paper. 30 x 42 cm'),
(24, 2, 24, 'Icosaedro. 2007. Broomsticks, cable ties. 200 x 250 x 250 cm. Ed. 3/5'),
(25, 2, 25, 'Somewhere #004. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm c/u (2 pieces)'),
(26, 2, 26, 'Somewhere #005. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(27, 2, 27, 'Somewhere #007. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(28, 2, 28, 'Somewhere #006. 2012. AAA The desert series. Ink on paper. 35 x 50 cm'),
(29, 2, 29, 'Somewhere #003. 2012. AAA The desert series. Ink on paper. 64.2 x 44.2 cm'),
(30, 2, 30, 'Somewhere #002. 2012. AAA The desert series. Ink on paper. 35 x 50 cm'),
(31, 2, 31, 'How to lie with maps. 2013. Matte black aluminum foil. Dimensiones variables'),
(32, 2, 32, 'In private with myself. 2011. Casting. 50 x 22 x 20 cm'),
(33, 2, 33, 'Connected to me. 2013. Casting. 45 x 21 x 13 cm'),
(34, 2, 34, 'Suzie. 2008. Casting. 29 x 10 x 10 cm'),
(35, 2, 35, 'Yuck. 2009. Casting. 21 x 14 x 13 cm'),
(36, 2, 36, 'Yummie. 2009. Casting. 29 x 16 x 13 cm'),
(37, 2, 37, 'Hot bath. 2009. Casting. 18 x 18 x 11 cm'),
(38, 2, 38, 'Mutatoes. 2006 - 2013. Photographs mounted on. aluminum dibond. 23.6 x 30 cm each piece (100 pieces)'),
(39, 2, 39, 'Shelflife. 2011. Fluorescent lights, cables, wood. 122.5 x 250 cm'),
(40, 2, 40, 'Apolide. 2013. Super 8 mm B/W film on DVD. 10’05’’. Apolide (stateless) is an episode of a science fiction movie set in an anachronistic future. The protagonist is a man without memory who try to discover his identity in the midst of vague memories. The city in wich he is, generates memories that transform continuiously the urban landscape and architecture.\r\n'),
(41, 2, 41, 'Untitled - From the “Urbanization . of memory” series. 2013 - 2014. Pencil on paper. 41 x 57 cm each one. The drawings shown are nonexistent architectural landscapes. The images are ethereal and float in the void in the middle of the sheet. They are based on real buildings the artist has seen. Some of these places no longer exist or have changed over time. The artist tries to reconstruct them based on his memories.\r\n'),
(42, 2, 42, 'Untitled - From the “Urbanization . of memory” series. 2013 - 2014. Pencil on paper. 41 x 57 cm each one. The drawings shown are nonexistent architectural landscapes. The images are ethereal and float in the void in the middle of the sheet. They are based on real buildings the artist has seen. Some of these places no longer exist or have changed over time. The artist tries to reconstruct them based on his memories.\r\n'),
(43, 2, 43, 'Untitled - From the “Urbanization . of memory” series. 2013 - 2014. Pencil on paper. 41 x 57 cm each one. The drawings shown are nonexistent architectural landscapes. The images are ethereal and float in the void in the middle of the sheet. They are based on real buildings the artist has seen. Some of these places no longer exist or have changed over time. The artist tries to reconstruct them based on his memories.\r\n'),
(44, 2, 44, 'Untitled - From the “Urbanization . of memory” series. 2013 - 2014. Pencil on paper. 41 x 57 cm each one. The drawings shown are nonexistent architectural landscapes. The images are ethereal and float in the void in the middle of the sheet. They are based on real buildings the artist has seen. Some of these places no longer exist or have changed over time. The artist tries to reconstruct them based on his memories.\r\n'),
(45, 2, 45, 'Untitled - From the “Urbanization . of memory” series. 2013 - 2014. Pencil on paper. 41 x 57 cm each one. The drawings shown are nonexistent architectural landscapes. The images are ethereal and float in the void in the middle of the sheet. They are based on real buildings the artist has seen. Some of these places no longer exist or have changed over time. The artist tries to reconstruct them based on his memories.'),
(46, 2, 46, 'Marie. 2014. Acrylic on canvas. 150 x 200 cm. The title of each work refers to the name of the protagonists of five referential horror films. In all these drawings there is a tension between the corresponding film enclave and the personal surroundings of the artist.\r\n'),
(47, 2, 47, 'Audrey. 2014. Acrylic on canvas. 200 x 300 cm. The title of each work refers to the name of the protagonists of five referential horror films. In all these drawings there is a tension between the corresponding film enclave and the personal surroundings of the artist.\r\n'),
(48, 2, 48, 'Regan. 2011. Acrylic on paper. 70 x 100 cm. The title of each work refers to the name of the protagonists of five referential horror films. In all these drawings there is a tension between the corresponding film enclave and the personal surroundings of the artist.'),
(49, 2, 49, 'A nivel (Leveled). 2012. Digital impression, laser level and black vinyl paint. 3 walls of 3 m each, photograph on PVC, 62 x 110 cm\r\n'),
(50, 2, 50, 'Estado de Archivo (File State). . From the “Estados (States)” series. 2012. Digital printing, Hi8 and Mini DV. 35 x 150 cm\r\n'),
(51, 2, 51, 'Incomunicación (Incomunication). . From the “Estados (States)” series. 2012. Photography phones from different ages. 30 x 120 cm\r\n'),
(52, 2, 52, 'Estado de Archivo (File State) 2. . From the “Estados (States)” series. 2012. Digital printing, diskettes, CD, DVD. 52 x 200 cm'),
(53, 2, 53, 'Yellow circle. 2014. Wood, acrylic paint. 50.2 x 55.7 cm\r\n'),
(54, 2, 54, 'Rainbow. 2014. Wooden box, polypropylene and acrylic paint. 49.5 x 87 cm\r\n'),
(55, 2, 55, 'Altar. 2014. Wooden box, polypropylene and acrylic paint. 49.5 x 87 cm\r\n'),
(56, 2, 56, 'Transition of red and yellow. 2014. Wood and acrylic paint. 45 x 31 cm'),
(57, 2, 57, 'Marea Alta (High tide). From the “Patria (Fatherland)” series. 2014. Laminated digital print. 200 x 300 x 20 cm\r\n'),
(58, 2, 58, 'In & out. From the “Patria (Fatherland)” series. 2014. 99 x 99 x 48 cm each one. Methacrylate, digital printing, mirror, light'),
(59, 2, 59, 'Insisto (Insist). 2013. Metal, photograph and light. Dimensiones variables\r\n'),
(60, 2, 60, 'Dibujo detenido (Detained drawing). 2013. Methacrylate, crystal, graphite powder, LED. 15 x 54 x 26 cm\r\n'),
(61, 2, 61, 'El hombre rico (The rich man). 2013. Methacrylate, crystal, photographs, LED. 15 x 122 x 29 cm\r\n'),
(62, 2, 62, 'Olvido (Forgetting). 2013. Methacrylate, wood, ceramic, metal, LED. 110.5 x 80.5 x 100 cm'),
(63, 2, 63, 'Chimaerama #7. 2004-2013. Unique edition. 47 x 54 x 20 cm. Wood, metal, various electronic components \r\n'),
(64, 2, 64, 'Elephas Anthropogenus. 2008. Ed. 9. 225 x 150 cm. Inkjetprint on canvas\r\n'),
(65, 2, 65, 'Mutatoes. 2006 - 2013. Ed. 9. 23.6 x 30 cm. Photographs on aliminum dibond\r\n'),
(66, 2, 66, 'Aunt Ruby’s German Green. 2013. Unique edition. 120 x 150 cm. Photograph on aliminum dibond\r\n'),
(67, 2, 67, 'LYC 989 Guatemala. 2013. Unique edition. 120 x 150 cm. Photograph on aliminum dibond\r\n'),
(68, 2, 68, 'Noire De Coseboeuf. 2013. Unique edition. 120 x 150 cm. Photograph on aliminum dibond\r\n'),
(69, 2, 69, 'Lycopersicum III. 2010 - 2013. Ed. 5. 120 x 240 cm. Photographs on aliminum dibond\r\n'),
(70, 2, 70, 'Phaseolus vulgaris I. 2013. Ed. 5. 120 x 240 cm. Photographs on aliminum dibond\r\n'),
(71, 2, 71, 'Shelflife. 2011. Edición: 6. 250 x 122.5 cm. Fluorescent lights, cables, wood'),
(72, 2, 72, 'Somewhere #004. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm c/u (2 pieces)'),
(73, 2, 73, '\r\nSomewhere #002. 2012. AAA The desert series. Ink on paper. 35 x 50 cm'),
(74, 2, 74, '\r\nSomewhere #003. 2012. AAA The desert series. Ink on paper. 64.2 x 44.2 cm'),
(75, 2, 75, '\r\nHow to lie with maps. 2013. Matte black aluminum foil. Dimensions variables (detail)'),
(76, 2, 76, '\r\nHow to lie with maps. 2013. Matte black aluminum foil. Dimensions variables'),
(77, 2, 77, 'Untitled (119.4). 2013. Ink on paper. 30 x 42 cm'),
(78, 2, 78, '\r\nKylemore. 2010. Ink on paper. 21 x 29.7 cm'),
(79, 2, 79, '\r\nFukuokakuko. 2009. Ink on paper. 23 x 33 cm'),
(80, 2, 80, '\r\nUntitled (119.7). 2013. Ink on paper. 30 x 42 cm'),
(81, 2, 81, '\r\nIcosaedro. 2007. Broomsticks, cable ties. 200 x 250 x 250 cm. Ed. 3/5'),
(82, 2, 82, 'In & out. From the "Patria" (Fatherland)" series. 2014. 99 x 99 x 48 cm each one. Methacrylate, digital printing, mirror, light'),
(83, 2, 83, 'Mutatoes. 2006 - 2013. Photographs mounted on aluminum dibond. 23.6 x 30 cm each piece (100 pieces)'),
(84, 2, 84, 'Chimaerama #7. 2004-2013. Unique edition. 47 x 54 x 20 cm. Wood, metal, various electronic components'),
(85, 2, 85, 'Mutatoes. 2006 - 2013. Photographs mounted on. aluminum dibond. 23.6 x 30 cm each piece (100 pieces)'),
(86, 2, 86, 'Somewhere #004. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm c/u (2 piezas)'),
(87, 2, 87, '\r\nSomewhere #005. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(88, 2, 88, '\r\nSomewhere #007. 2013. AAA The Desert Series. Ink on paper. 25 x 35 cm'),
(89, 2, 89, 'Thing. 2013. Print on Canvas. 90 x 65 x 2 cm'),
(91, 2, 91, 'Lycopersicum III. 2010 - 2013. Ed. 5. 120 x 240 cm. Photographs on aliminum dibond'),
(92, 2, 92, '\r\nChimaerama #7. 2004-2013. Unique edition. 47 x 54 x 20 cm. Wood, metal, various electronic components'),
(93, 2, 93, 'Icosaedro. 2007. Broomsticks, cable ties. 200 x 250 x 250 cm. Ed. 3/5'),
(94, 2, 94, 'Square hedgehog. 2013. Ink on canvas. 90 x 65 x 2 cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_prensa`
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
-- Estructura de tabla para la tabla `tra_texto`
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
-- Estructura de tabla para la tabla `tra_textocuratorial`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tra_textocuratorial`
--

INSERT INTO `tra_textocuratorial` (`id`, `idiomaid`, `textocuratorialid`, `titulo`, `contenido`, `cargo_autor`) VALUES
(1, 2, 1, 'Zielort Berlin (Destination Berlin)', '<p style="text-align: right;">&ldquo;Je n&rsquo;aime pas les s&eacute;dentaires du coeur. Ceux-l&agrave; qui n&rsquo;&eacute;changent rien ne deviennent rien&rdquo;</p>\r\n\r\n<p style="text-align: right;">Antoine de Saint Exup&eacute;ry</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="line-height:1.6em">Time spent in a particular city can provide an excellent or an anodyne experience as the basis for drawing up criteria to programme a series of collective exhibitions. Or perhaps not. For some years now, approximately since the 1980s, Berlin has been a favourite destination for artists from all over the world, so that it has slowly but inexorably come to rival New York. The city&rsquo;s unique geo-political position before the fall of the wall, located, as we all know, in the GDR1, led many Germans to leave for the Federal Republic but also attracted a considerable number of foreigners, whose presence would lead to the development of a multicultural community which would constitute a fertile sub-stratum for artistic creation. Because of its exceptional position, even though it was not the capital of Germany from 1945 to 1990, Berlin received generous subsidies from the Federal Republic, with a view to maintaining its status as a great city, attained in the early years of the twentieth century, in socio-economic and political terms and as a leading national and international cultural centre. We should not forget that in the 1980s Berlin was one of the points where the first signs of Neo-expressionism were seen, a movement which would distinguish the plastic arts in Germany and thanks to which it would once again, in this new post-war period, play a leading role on the world art scene2. In this connection we should not underestimate the importance for this resurgence in German art of exhibitions such as Die Neuen Wilden (Aachen, 1980), A New Spirit in Painting (London, 1981) and Zeitgeist (Berlin, 1982), as well as Documenta 7 (curated by Rudi Fuchs, also in 1982).&nbsp;</span></p>\r\n\r\n<p>It should be pointed out that the promotion of art in Berlin has always been exemplary and imaginative, both in the programming of events and the maintenance of infrastructures for the production, distribution and dissemination of art, which has ensured extraordinary vitality in this area3. Academic institutions have played a major role in this dynamism and, in connection with the presence of foreign artists, so has the Berliner K&uuml;nstler Programm, run by the Deutscher Akademischer Austausch Dienst (German Academic Exchange Service), thanks to which a substantial number of artists from different countries have had the opportunity to live in Berlin4: Carl Andr&eacute;, Marina Abramovic, Eduardo Arroyo, Christian Boltanski, Marcel Broodthaers, Daniel Buren, James Lee Byars, Rafael Canogar, Tacita Dean, Rineke Dijkstra, Nan Goldin, Richard Hamilton, Duane Hanson, Mona Hatoum, Arturo Herrera, Damien Hirst, Pierre Huyghe, Alfredo Jaar, Ilya Kabakov, Allan Kaprow, Edward Kienholz, Yannis Kounellis, Shigeko Kubota, Andr&eacute; Masson, Mario Merz, Boris Mihailov, Antoni Miralda, Matt Mullican, Roman Opalka, Michelangelo Pistoletto, Pipilotti Rist, Antonio Saura, Allan Sekula, Daniel Spoerri, Francesc Torres, Eulalia Valldosera, Erwin Wurm; musicians of the calibre of John Cage, Alberto Ginastera, Crist&oacute;bal Halffter, Igor Stravinsky and Krzystof Penderecki; writers like Carlos Fuentes, Witold Gombrowicz, Peter Handke, Imre Kert&eacute;sz, Susan Sontag and Mario Vargas Llosa; and even film makers: Otar Iosseliani and Jim Jarmusch. Because of what artists find in Berlin (an extraordinary atmosphere of creative energy, a community of concerns and discoveries interwoven with countless sensibilities from all parts of the world, an incomparable range of cultural facilities, a city where past and future intersect dramatically and decisively)5, how it affects their work (influence, inspiration and comparison), and the impact they themselves may have on the Berlin scene, a process of fertile exchange occurs, which is almost impossible to find anywhere else. Unsurprisingly, in many cases the German capital becomes the permanent place of residence for foreign artists.</p>\r\n\r\n<p>There is no doubt, then, that Berlin is a good place to go to in search of emerging talent, to discover artists who are as yet not well known and who can enrich the Spanish exhibition scene with an interesting display of what is being produced in one of the leading sites of contemporary artistic creation, in one of the best places to sense something of the zeitgeist that defines the present.&nbsp;</p>\r\n\r\n<p>Four of the artists in this first edition of ELEMENTAL (from Spain, Italy, Venezuela and Germany itself) have been students at the prestigious Institut f&uuml;r Kunst im Kontext of the Universit&auml;t der K&uuml;nste in Berlin, once again highlighting the role of higher education institutions in the Federal Republic in promoting art and the international recognition earned by this work, thanks to the high academic standards maintained. The remaining three artists, those from Hungary, have links with the Moholy-Nagy M?v&eacute;szeti Egyetem (Moholy-Nagy University of Art and Design), in Budapest, which is currently involved in joint projects with the Institut f&uuml;r Kunst im Kontext.</p>\r\n\r\n<p>As these opening lines have focused on a geographical location, we will turn first to the work of Irina Novarese, who is concerned precisely with territorial issues. Starting with the assumption that the criteria involved in the production of maps are not objective, she seeks in her work to reveal the interestedly conventional nature of cartography, the science that gives us a graphic, and supposedly analogical, interpretation of our planet6; indeed, some of her work has the suggestive title How to lie with maps? Her strategy involves using certain codes drawn from this type of representation (border divisions) to establish a design in the form of a mesh, from which she extracts a structural model on which to base her two- or three-dimensional creations. These can lead us to the idea of a map (in the three-dimensional pieces) or to that of a topographical image on a very small scale (in the two-dimensional works); the correspondence we can perceive between their proportions, which we may see as macro and micro versions, according to the size they suggest, give the whole a plastic coherence, a formal continuity which is very effective for the purposes of her critical discourse.</p>\r\n\r\n<p>In her desire to question the universal validity of cartography, Novarese has produced some maps in aluminium whose form is not fixed but varies according to how they are assembled or positioned. Their instability alludes directly to their highly debatable objectivity, as their morphology is as changing as their circumstances may be: an adaptable map is also a manipulable map -the artist seems to be saying-, so the relationship of identity one would expect between it and the territory it represents is clearly questionable. Similarly, the lack of precise information in her otherwise very elaborate drawings with a topographical slant (which we see on the other hand as offering a great deal of information, in view of the accumulation of graphic data they contain) brings us face to face with the lack of specific detail to which we might be led by an exhaustive system of records along the lines proposed by Larry Sultan and Mike Mandel in their fascinating project Evidence (1977).&nbsp;</p>\r\n\r\n<p>It could be said that, as a pattern for plastic construction, the mesh has now come to replace the grid, which was an identifying feature of modern art in the avant-garde period, according to Rosalind Krauss (Ret&iacute;culas, 1978). While the grid was a structure via which it became possible to abandon dependence on visual reality (opening up the path to abstraction), the mesh appears as a tool to which any reality can be subjected so as to reproduce it faithfully, as we can see in 3D digital scanners. Functionally it is very closely linked to the idea of a network, another of the models with which human beings have been able to synthesise multiple complex ideas schematically and with a wide range of possible associations. For many artists they have become a support for the visualisation of complex patterns of feeling or ideas, from the psychogeography of the situationists to Mark Lombardi&rsquo;s diagrams analysing political themes.</p>\r\n\r\n<p>Another vision of reality is presented by Zoltan Kunckel, who seeks the key to forms from a phenomenological perspective. In spite of the first impression his images may give us, the artist&rsquo;s interest goes beyond photography, which only serves him as a medium to investigate the processes by which reality becomes visible according to its illumination and may as well become unreal when lighting conditions change. This search has also featured in some of his sculptures, where our perception of the formal development depends not only on their geometric structure in itself but also on the visual effects derived from reflection, because of the material used (steel). This is in line with the experiments conducted by Laszlo Moholy-Nagy (especially with the Licht-Raum-Modulator) and, later, the work of those who inherited some of his concerns in this field, the kinetic artists, among whom his compatriot Jes&uacute;s Rafael Soto is a leading figure.&nbsp;</p>\r\n\r\n<p>If we look at Arsenal, we can see clearly that his intentions go beyond what would merely be the documentation of a specific place, its architecture or atmosphere, and what he seeks to do is record the essential state of what we perceive visually. This is an inductive approach, we could say, in which the appearance of any element acquires an absolute (aesthetic or structural) validity. Unlike James Casebere, for example, whose images bear some similarity to his work, albeit superficially, Kunckel approaches reality with no other mediating elements than his camera and his own sensitivity7 to capture the right moment (not in a temporal sense - the instant d&eacute;cisif - but to record the phenomenon), as we can also see in the VIZ triptych. This method produces an estrangement which, apart from questioning our visual habits and the principle of certainty we still associate with photography today, inserts those realities (making them unreal, as we have said) in a setting of evocation and mystery, as happens with the enigmatic panoramas by Aitor Ortiz, who is, however, mainly interested in the metaphysics of space in itself8.&nbsp;</p>\r\n\r\n<p>Light is also the central concern of Hungarian artist Kiss Abba Reg?, although he gives great importance to its chromatic qualities when it passes through coloured glass. Like Kunckel, he is concerned with the phenomenal and his sculptures combine the morphological factor (clean, basic forms) with chromatic qualities, the two becoming inseparable in the configuration of his pieces. However, while Kunckel is mainly interested in how light is reflected (how it strikes objects and defines them), for Reg? its importance lies in the way in which it colours his sculptures because of their transparency, becoming a virtual component of them. This means that colour is not an adjective in his work, but is a substantial constituent. Some of his pieces recall the characteristic tints used by Paul Klee (inspired by the tones he had discovered during his journeys to Tunisia and Egypt) to modulate colours in numerous different shades, in order to achieve harmonic values with expressive properties.&nbsp;</p>\r\n\r\n<p>Returning to the relationship between his work and that of Kunckel, the exhibition includes a surprising interpretation of Cisterna. It is a three-dimensional articulated structure using glass squares, which we can immediately identify with the format of a digital screen, as it consists of small cubes which resemble pixels. This unexpected encounter brings together the coldness of the (implicit) technological medium and the warmth of glass to produce a very attractive effect. The systematic construction, in the form of a grid, leads to a distinctive approach to sculpture, which we could define as &ldquo;additive&rdquo;. Instead of detracting from its aesthetic value, it enhances it, giving it a certain process-based character (the procedure remains visible and is an integral part of the result), which is very pertinent to contemporary artistic practices. &nbsp;</p>\r\n\r\n<p>Bal&aacute;zs Sipos, for his part, uses the transparency of glass with a clearly symbolic intention: details which normally remain hidden are made visible (this has nothing to do with the stylistic approach we have just commented on). In this way he makes the interiors of his creations an integral part of their structure, incorporating (visually) what would otherwise be a simple matter of presumption or a logical consequence. The fact that his pieces are also &ldquo;practicable&rdquo; (they can be manipulated and relocated) undoubtedly helps to emphasise the fatality underlying them: their very mobility makes them comparable to a cyclic story, to the inevitability of mythological condemnations. In connection with the psychological slant one might detect in his work, we should not forget that in ancient Greek myths Sigmund Freud discovered schemes to identify some of the darkest areas of the subconscious. Without going too deeply into such considerations, we may add that the appearance of his figures, the material used and the format in which they are presented suggest a tentative fetishisation, turning them into bibelots which hover between desire and condemnation.</p>\r\n\r\n<p>It is perhaps for this reason that the material combinations and chaotic situations presented recall the iconography of bestiaries, those treatises that for generations were a receptacle for humanity&rsquo;s most arcane fears, the result of ignorance and the terror men experienced in the face of a natural world they did not dominate, one which remained opaque and unfathomable to their minds. As Goya said in the title of one of his Caprichos: &ldquo;The Sleep of Reason Produces Monsters&rdquo;. Sometimes, as we are well aware, only paradoxes, what appears to be meaningless or fantastic, so much a part of story telling and poetry, are able to express and give form to all that we find ineffable.&nbsp;</p>\r\n\r\n<p>The stylised appearance of the statuettes by Sipos falls between the introspection of an artist like Balthus and the delicate simplification of an oriental print; between the minute aberrations of Bosch (grillorum inventor)9 and the eloquent, magical and/or costumbrista schematicism of pre-Columbian art, so ironically used today by Nad&iacute;n Ospina, as an element of criticism directed at the standards of cultural colonialism; and between the sparse metamorphic graphics of Fernando Renes and the perverse tiny figures of Marcel Dzama.&nbsp; &nbsp;</p>\r\n\r\n<p>I think it would not be incorrect to refer to &Aacute;d&aacute;m Kriszti&aacute;n&rsquo;s work as design, provided that we do not limit this category to applied art - not even if we are tempted to ascribe it to a supposedly elevated concept of design. I think it is relevant to view it in this way, since from this perspective it may be possible to consider its aesthetic value more appropriately. We do not run the risk of falsifying the merit of his pieces, transferring them to a medium which is, stricto sensu, foreign to them and obscuring what is essential, i.e. falsifying their meaning.</p>\r\n\r\n<p>Looking at this artist&rsquo;s jewellery, we immediately have the impression that we are viewing a type of design that does not comply with the orthodox dictates of ergonomics; we may well suspect that it would be difficult to put it on and wear it comfortably. This raises questions about the reason for something which should only have been conceived to be used, a purpose which seems to be contradicted to some extent. This collection of jewellery thus calls for a more profound examination than jewellery which is purely ornamental or utilitarian. It is precisely in this margin of incoherence that much of its interest lies, as work which can be appreciated artistically. Going beyond what would be a strictly formal evaluation (though from this point of view we can say they are extraordinary) it is interesting to focus on the extent to which the pieces are examples of metadesign, a design that is not a hundred percent compliant with its prerequisites, partially transferring its form (elements which relate to the human body, which can be placed on it and suggest a new reading of it) to the realm of pure creation. Having no desire to make unnecessary comparisons, we would nevertheless note that jewellery and fashion conceived by plastic artists are usually, indeed almost always (perhaps because of a simple matter of &ldquo;fortunate incompetence&rdquo;), objects which are closer to the world of art than that of design.</p>\r\n\r\n<p>Another type of transfer can be seen in the work of Llobet &amp; Pons, the collective formed by Jasmina Llobet and Luis Fern&aacute;ndez Pons. In their case we find a minimalism formulated using elements of everyday life (a drinking straw, broomsticks, tables, etc.), subverting their functions (in the best tradition announced by Lautreamont and first manifested in practice in Marcel Duchamp&rsquo;s ready-mades) and reinstalling the usual meaning of such objects in another dimension, which we have to interpret on an aesthetic plane. The nature of their work recalls the unprecedented subversion of minimalism by those artists who were part of the tendency known at the time as &ldquo;anti-form&rdquo; or &ldquo;eccentric abstraction&rdquo; (including Eva Hesse, Bruce Nauman and Louise Bourgeois); in a certain sense they went beyond it because the condition of the materials used (their connotations) and their specific properties (fragility, texture, instability etc.) played an important role, as they provided the substance needed to activate this type of &ldquo;re-formulation&rdquo;, the encounter between different formal effects10, which has much in common with what we find in the work of these two artists.&nbsp;</p>\r\n\r\n<p>However, unlike those artists, Llobet &amp; Pons seek to establish a critical discourse based on humour with their extraordinary material and geometric disparities. Here the paradox is not intended to illuminate dark corners of our existence, but to play with the environment and our reason, parodying both the constructions of logic and the utility of everyday objects. An icosahedron constructed with broomsticks has an undeniable ironic flavour, questioning, or at least relativising, the aura we associate with works of art and to which many artists subscribe today. This is an operation which, far from reducing the interest of these works, generates a kind of dialectic that extends the limits of our concept of what we are prepared to accept as art. Indeed, this is nothing new. Since the earliest days of modern art it has been subjected to a process of constant redefinition, allowing us to situate what these two artists do precisely in that problematic area where the conflict that is inherent to contemporary art occurs.&nbsp;</p>\r\n\r\n<p>In the work of the German artist Uli Westphal there is no doubt also a certain sense of paradox, although of a very different kind, as it is organisational (in a broad sense) rather than merely conceptual. Initially his interest appears to focus on photographically recording the appearance of a series of vegetables with strange mutations. The close-up pictures are presented in a style which is almost scientific, recalling the magnificent collection of plants assembled by Karl Blossfeldt for educational purposes. As a result of the minute resolution, they present a somewhat &ldquo;rarified&rdquo; image, because of the abundant visual detail they include. Although in Westphal&rsquo;s case the subject is always presented integrally, he shares Blossfeldt&rsquo;s desire to capture the singularity and beauty of what he photographs and his fondness for system, as a principle of order and a method of work11. His images fit easily into the objective trend which predominates in German photography today.</p>\r\n\r\n<p>But his project goes further than generating a catalogue of the vegetables in question. First, we should note that he usually mounts the photos in a serial structure, which inevitably affects our perception of the whole and of each individual item. The result is a compound image which, because of its extent, invites us to follow a perceptive route. Only occasionally does one focus on one particular example, as the overwhelming sensation is that of the whole. Here, then, we see the paradox we referred to before: all the information provided by the photographs is subjected to the overall impression (and absorbed by it to a certain extent), which is ultimately that generated by a large rectangle hanging on the wall. This process changes the testimonial (informative) content of each image, transforming it into chromatic quality, visual material, an abstract component. Once again this suggests a relationship, albeit a superficial one, with the minimalist approach and, perhaps, more notably with the work of Tony Cragg12.&nbsp;</p>\r\n\r\n<p>Shelflife, on the other hand, presents another facet of his production which cannot be dissociated from the scrupulous way in which he photographs nature, his focus on phenomena. While light constitutes an essential element for the visual definition of his mutatoes, on this occasion he is interested in the different types of lighting used in shops to display food and make it look tastier and more attractive; we are moving, then, from light which displays to light which motivates. Like the work described previously it uses a fixed, geometric scheme to present a classification organised by light temperature (the tendency to taxonomy appears again), forming a montage which recalls some pieces by Dan Flavin; the difference between them, however, is that, while the American sought to interact with the environment, modifying the perception of space, like James Turrell, Westphal tries to establish a dialectically ambiguous relationship between the desire to classify, systematisation as a working principle, and structuring in closed orders as a key to presentation.</p>\r\n\r\n<p>This exhibition consists of two parts: the exhibition in the gallery itself and the works of Irina Novarese and Llobet &amp; Pons which will be on show at the gallery&rsquo;s stand in SUMMA, an event aimed at collectors interested in the latest artistic developments. Overall, it offers an attractive combination of works which are relatively heterogeneous and which, from the conceptual and strategic viewpoints, fit perfectly into contemporary practice. The names of most of these artists are not well known in this country and this is by no means accidental, as the discovery and promotion of emerging artists occupies an important place in this gallery&rsquo;s activities and is fundamental to the aims of the Odalys Foundation, which include the creation of a programme of grants and placements for the training of artists abroad. This edition of ELEMENTAL will be followed by four others (they are currently planned for Caracas, Madrid and Berlin), devoted to a selection of artists who fit into this category and are linked in some way to Berlin, that dynamic focus of contemporary creative work. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.&nbsp;For Wim Wenders, director of Der Himmel &uuml;ber Berlin (Wings of Desire, 1987) &ldquo;no other city is so symbolic and at the same time a place of survival&rdquo;; in Wim Wenders. XXII Muestra Cinematogr&aacute;fica del Atl&aacute;ntico, Cadiz, 1991; pp.51-2.</p>\r\n\r\n<p>2.&nbsp;&ldquo;The first attempts to recover or introduce references to their own situation appeared in a generation of Berlin-based artists: Georg Baselitz, Karl Horst H&ouml;dicke and Bernd Koberling, who, turning away from abstraction and the foreign influence of pop art, American minimalism and post-minimalism, incorporated figurative elements in their work, developing art that was more expressionist in inspiration and thus closer to what is seen as the German tradition, but without renouncing modern approaches&rdquo; Guasch, Anna Mar&iacute;a: El arte &uacute;ltimo del siglo XX. Del posminimalismo a lo multicultural; Alianza, Madrid, 2002; pp.243-4.&nbsp;</p>\r\n\r\n<p>3.&nbsp;&ldquo;The low price of accommodation and studios and a reasonable cost of living, combined with a historically, culturally and dialectically changing city, offer ideal conditions for an advantageous scenario&rdquo; Gisbourne, Mark: Berlin Art now; Thames and Hudson, Londres, 2006; p 8.&nbsp;</p>\r\n\r\n<p>4.&nbsp;&ldquo;Many of these artists have produced art with very direct impressions (of Berlin), helping us to understand the city and what it means to live there&rdquo; Mc Shine, Kynaston, et al.: Berlinart 1961-1987; The MOMA/Prestel, New York/Munich, 1988; p.19.&nbsp;</p>\r\n\r\n<p>5.&nbsp;&ldquo;In a city which often loses itself between memories of the past and plans for the future, the anticipation and reflection of artists resident in Berlin seems to offer, in a very productive way, a suitable path for dealing with the present&rdquo; Gisbourne, M.; ibid.</p>\r\n\r\n<p>6.&nbsp;&ldquo;There is no objective map, everything depends on the point from which spaces and the world are defined, because, in spite of everything, the way in which the map is produced and read is conditioned by the history behind the hand that draws it and the vision that reads it and interprets it&rdquo; De Diego, Estrella: Contra el mapa. Disturbios en la geograf&iacute;a colonial de Occidente; Siruela, Madrid, 2008; p.15.</p>\r\n\r\n<p>7.&nbsp;As we know, James Casebere and Thomas Demand, for example, use models to construct their concepts. Part of their projects thus corresponds to a stage which we may describe as pre-photography.&nbsp;</p>\r\n\r\n<p>8.&nbsp;&ldquo;... the place as a metaphysical concept. Not a specific place, or a recognisable building, but the place as a space occupied solely by the structure that has been created&rdquo;. Olivares, Rosa: 100 fot&oacute;grafos espa&ntilde;oles; Exit, Madrid, 2005; p.294.</p>\r\n\r\n<p>9.&nbsp;Gombrich, Ernst H.: El legado de Apeles; Alianza, Madrid, 1982; p.164.</p>\r\n\r\n<p>10.&nbsp;&ldquo;Eccentric abstraction argued for the reconciliation of different formal effects, without making them arbitrary and without turning to literary or metaphorical associations to express them&rdquo;. Guasch, A.M.: op.cit.; p.30.&nbsp; &nbsp;</p>\r\n\r\n<p>11.&nbsp;&ldquo;Blossfeldt&rsquo;s strict vision was quickly recognised as a typical example of observation of nature focusing on basic forms and structures, and in this sense it was pioneering work for many photographers. It was no longer a question of romanticism but systematic study; no longer desire but analysis&rdquo; Hans Michael Koetzle; in Rubio, Oliva M&ordf;/ Koetzle, H.M.: Momentos estelares. La fotograf&iacute;a en el siglo XX; C&iacute;rculo de Bellas Artes, Madrid, 2007; p.88.</p>\r\n\r\n<p>12.&nbsp;&ldquo;Reality can hardly keep up with its marketing image. The need to know both objectively and subjectively more about the subtle fragile relationships between us, objects, images and essential natural processes and conditions is becoming critical.&rdquo; Tony Cragg (1989), in Fineberg, Jonathan: &ldquo;Art since 1940. Strategies of Being&rdquo; Lawrence King, London, 2000; p.445.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Art critic Director of the Department of Painting and Restoration Complutense. University of Madrid'),
(2, 2, 2, 'Elemental 2|4', '<p>ELEMENTAL II/IV unites in one exhibition works of four male and two female artists, the oldest 46 and the youngest 28 years old, born in Cuba, Chile, Spain and Hungary, some of them well travelled.&nbsp;</p>\r\n\r\n<p>Memory is the subject all artists deal with in very diferent ways. Being a &lsquo;Berlinerin&rsquo; (since birth) and of a different (older) generation, I must admit, that I face the work of these &ndash; for me - younger artists with a certain inhibition, as they dispose of a completely different background of experiences, which to explore will prove to be only partly successful. When I look at their work, I try not to refer my first associations and memories to works of artists like Rebecca Horn, Valie Export, Gerhard Richter or Christian Boltanski, so I may keep my curiosity and will not fall into the well known euro-centered trap.</p>\r\n\r\n<p>I will not make any such comparisons, although you probably might assume, that the young artists are well versed in the art world, dispose of all visual information and relate &ndash; consciously or unconsciously &ndash; to the repertoire of art history.&nbsp;</p>\r\n\r\n<p>&ldquo;Present time art defines its present no longer by delimitation from a closed past, rather establishes its present through manifold relationships with a past which is recognized and treated as something that continues to affect the present&rdquo;. 1</p>\r\n\r\n<p>In the works united in this exhibition the theme memory is less related to political or biographical facts, nor is collecting, storing or archiving the main interest, but rather the transience and the recognition and reappearance of images, which have been accumulated in the subconscious. Images, which mostly derive from the media, images, which evoke emotions and remind of sentiments, which have been engraved into the body and which return to the level of consciousness through the works of art.</p>\r\n\r\n<p>The Cuban artist Ernesto Ranca&ntilde;o understands memory as the construction of identities of individuals. His work, in this case installations with transparent materials, which somehow uncover what human consciousness tries to hide, make the invisible visible, which then still remains hidden. Artful machines of forgetting and remembering, which as in &ldquo;Detained drawing&rdquo;, collect the graphite dust, which represents the tracks of a drawing not be observed.&nbsp;</p>\r\n\r\n<p>Also the turned-over plate of the installation &ldquo;Forgetting&rdquo; covers and hides the meal that is being served on this transparent shining table. It remains the secret of the artist, which history is being told by the minimalistic metallic furniture; the central European observer might be allowed to arrive at associations to the history of modernity, to de Stijl and Bauhaus, although she might be thoroughly wrong.</p>\r\n\r\n<p>The third work in the exhibition &ldquo;The rich man&rdquo; explores the richness of human life, which is represented here by an assorted collection of somewhat worn small photos. The transparent installation acts like a metaphor of the human brain, which in the course of life stores innumerable memories of encounters and relations with other people&hellip;</p>\r\n\r\n<p>In his work &ldquo;Insist&rdquo; the artist shows a sequence of the same male face, which through increasing lighting is made to disappear slowly. The text written on its forehead &ldquo;I only exist, when you see me&rdquo; refers to the dependence of human existence from the counterpart. Or with the words of Sartre: &ldquo;The Other has a secret (&hellip;) of what I am.&rdquo; 2</p>\r\n\r\n<p>The works of Ernesto Ranca&ntilde;o receive their life from the tension between their formal minimalism and their emotional charge in addressing existential themes.</p>\r\n\r\n<p>In this sense there exists a connection to the youngest (female) artist of the exhibition, the Cuban Mabel Poblet Pujol. In her work &ldquo;High Tide&rdquo; from the series &ldquo;Fatherland&rdquo; she has addressed a current issue which is virulent, not only in Cuba. The escape across the sea that separates poor and rich countries, the desperation, fear, and death, but also hope and dreams of the people who assume the deadly risk because they do not see any alternative for their life. By tackling these conflicting sentiments and the tragic life stories, since ever related to the sea - at the borders of countries and continents &ndash; the artist refers to one of the most important world problems, for which until now there has been no solution because of the rigid immigration legislation of the rich countries. Mabel Poblet mounts this big theme in a strictly formal installation. What at first glance at its 2x3 m frame seems to be a decorative, lively sparkling wall treatment, reveals at close observation the manifold hopeful and tragic aspects of the sea and thus elevates the theme to a more general level of perception, which reaches beyond daily politics.</p>\r\n\r\n<p>The projects second female artist, Lidzie Alvisa, also Cuban, belongs to the generation of Ernesto Ranca&ntilde;o. In her installation &ldquo;Estados&rdquo; (States, conditions) she uses daily objects from our digitalized lives through which to transmit the &lsquo;heart beat&rsquo; of our time. In &ldquo;File state&rdquo; she recreates the waves of enlarged electrocardiograms by using Hi8, miniDVs or diskettes, CDs and DVDs. They not only inform about the short life span of the storage media used by us, but also make us reflect about the way how personal memories, thoughts about past and future relate to the digital archives, which we all keep, hoping to be able to dispose about the past by objective means in the future. In another work of the series &ldquo;Estados&rdquo; the lines of the waves of the ECG are being retraced by using last generation mobile phones, which already generate nostalgic sentiments in the age of the smart phone. At the same time, these devices are tied to us personally and able to inform about our condition at any time of the day or night. As the ECG, they are able to document the condition (estado) of our heart.</p>\r\n\r\n<p>With the work &ldquo;A nivel&rdquo; (Leveled) our gaze is view returned onto itself. Two laser spirit levels project a line, which hits the view of the author, presented in a photograph of her eyes in a three-wall installation. With this installation, Lidzie Alvisa reflects the level of the view, its expanse or limitation, the horizon, which determines our perception. It remains open what determines limit and orientation. The technical construction of the laser beam offers many interpretations.</p>\r\n\r\n<p>The Hungarian artist Erik M&aacute;trai confronts us with experiments of perception of quite a different kind.</p>\r\n\r\n<p>In contrast to his earlier works, mostly consisting of light installations with fog effects, in his works in the present exhibition light and color are produced in two-dimensional panel paintings. The aim of the artist is here to surmount the materiality of painting: the acrylic color is de-materialized and the geometric forms are brought into a state of floating, which makes them appear like a memory of light events. These are works aiming at transcendence and which stimulate the observer to meditation.</p>\r\n\r\n<p>With projections of a quite a different sort deals the young Spanish artist Hugo Alonso in his acrylic paintings. Here memories of key scenes out of horror movies appear from the unconscious like dream images of sinister spaces and situations. Thereby the artist achieves to treat these movie &lsquo;stills&rsquo; in a way, that the deeply rooted memory of their vagueness becomes visible, evoking at the same time their original menace.&nbsp;</p>\r\n\r\n<p>With his appropriation of movie images, which by now well belong to the international collective memory, Alonso adds another facet to the love affair between movie and art, as stated by Heinz-Peter Schwerfel 3.</p>\r\n\r\n<p>The Chilean artist Felipe Aguila also is referring to movie history, in his film &ldquo;Apolide&rdquo;, when he shows a man without memory and without affiliation running through the every day&rsquo;s urban life, in search of his identity, which through multiple shreds of memories repeatedly comes to the surface. There are indications of clinic and public offices, which should give to the self-searching references about his existence through inquiries and measurements.&nbsp;</p>\r\n\r\n<p>The black and white movie, with its mixture of long dream (nightmare) like sequences and short scenes with abrupt cuts places itself quite consciously in the tradition of the surrealistic movie.</p>\r\n\r\n<p>&ldquo;The movie is a wonderful and dangerous weapon, when it is handled by a free spirit. It is the best instrument, to express the world of dreams, of emotions of instincts. The creative mechanism of the filmed images is among all human means of expression the one that most resembles the functioning of the human mind, it is the one that best imitates the working of the mind in dreams.&rdquo; 4</p>\r\n\r\n<p>In his small drawings, looking lost placed on the large paper formats, and which challenge the visitor to the most precise observation, Felipe Aguila connects parts of buildings or stage drops, which seem to float in a hinted urban space with catastrophes, events, abysses and shallows, which lead the existing urban order ad absurdum. Here also combine memory, dream and reality in a poetic way.</p>\r\n\r\n<p>In the interaction of the six different artistic approaches the visitor receives a diverse image of the confrontation with his/her own existence, which tries to assure itself through different forms of remembering. The recourse to the available reservoir of images becomes as visible as the search for a personal, reflected, experienced physically and psychically position, whose coordinates are determined less by the art world than by the own life situation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Juliane Rebentisch, Theories of Contemporary Art, Hamburg, 2013, p. 120</p>\r\n\r\n<p>2. Jean-Paul Sartre, Being and Nothingness, Reinbek 1974, p. 467</p>\r\n\r\n<p>3. Heinz-Peter Schwerfel, Cinema and Art. A Love Story, Cologne, 2003</p>\r\n\r\n<p>4. Luis Bu&ntilde;uel: The spots of the Giraffe, Berlin 1991. p. 144</p>\r\n', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tra_verni_fini`
--

CREATE TABLE IF NOT EXISTS `tra_verni_fini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomaid` int(11) NOT NULL,
  `verni_finiid` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idiomaid` (`idiomaid`),
  KEY `verni_finiid` (`verni_finiid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Volcado de datos para la tabla `tra_verni_fini`
--

INSERT INTO `tra_verni_fini` (`id`, `idiomaid`, `verni_finiid`, `descripcion`) VALUES
(74, 2, 1, 'Vernissage of Elemental 1|4'),
(75, 2, 2, '0'),
(76, 2, 3, ''),
(77, 2, 4, ''),
(78, 2, 5, ''),
(80, 2, 7, ''),
(81, 2, 8, ''),
(82, 2, 9, ''),
(83, 2, 10, ''),
(84, 2, 11, ''),
(85, 2, 12, ''),
(86, 2, 13, ''),
(87, 2, 14, ''),
(88, 2, 15, ''),
(89, 2, 16, ''),
(90, 2, 17, ''),
(91, 1, 18, ''),
(92, 1, 19, ''),
(94, 1, 21, ''),
(95, 1, 22, ''),
(96, 1, 23, ''),
(98, 1, 25, ''),
(99, 1, 26, ''),
(100, 1, 27, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `clave`, `fecha`) VALUES
(1, 'Mantura', 'mantura', 'c5ee4f88f7690bd57adb5466d502c29f', '2014-09-14 13:44:38'),
(2, 'Marcos', 'marcos', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-14 07:07:02'),
(3, 'Edgar', 'edgar', 'e10adc3949ba59abbe56e057f20f883e', '2014-09-14 07:07:11'),
(4, 'Zoltan Kunckel', 'zoltan', '63d61f3546377c88a7dca429d359b0b8', '2014-10-18 22:24:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verni_fini`
--

CREATE TABLE IF NOT EXISTS `verni_fini` (
  `idverni_fini` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `imagen_thumb` varchar(255) DEFAULT NULL,
  `idexposicion` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`idverni_fini`),
  KEY `idexposicion` (`idexposicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `verni_fini`
--

INSERT INTO `verni_fini` (`idverni_fini`, `imagen`, `imagen_thumb`, `idexposicion`, `descripcion`) VALUES
(1, '5A4D1808BC668427BF7CB10452C78A3A.jpg', NULL, 1, 'Vernissage de Elemental 1|4'),
(2, '8240264B71DDDAD3CDACDA44EACCF0B3.jpg', NULL, 1, ''),
(3, 'B77EC1725F0EB174B86AEA62F4534C10.jpg', NULL, 1, ''),
(4, '54483F405C05E08C601A9CFBC049064F.jpg', NULL, 1, ''),
(5, '2BD29B104B7BBFD365E751BA8326498D.jpg', NULL, 1, ''),
(7, 'B72C1EDB277870F0AFF04F8F45A26F26.jpg', NULL, 1, ''),
(8, 'B980E1AB310844C22FE7498C8918C121.jpg', NULL, 1, ''),
(9, '7CD2981649D18BE847BCE4185CDF88A6.jpg', NULL, 1, ''),
(10, '096998CD053FC8192E1E5B03ABB51080.jpg', NULL, 1, ''),
(11, '6C5AD80DE305F62629401D0D6B3E0DB4.jpg', NULL, 1, ''),
(12, 'ABEE023F69499B52E0D5C237FAB239C6.jpg', NULL, 1, ''),
(13, '39CAB86D1CBE9D2B2CA9F86F3425ADA0.jpg', NULL, 1, ''),
(14, 'C9D1D92C7D43BF016624DB84D5E7E3EA.jpg', NULL, 1, ''),
(15, 'EF111D2D7EB3BD9BA269AF9D89104D9C.jpg', NULL, 1, ''),
(16, '7F2B2F36E041C7C1E59ADAF70C9113A1.jpg', NULL, 1, ''),
(17, '64DE1DC61A4B3F958C60FD8437BFB409.jpg', NULL, 1, ''),
(18, 'D08EE4A42F0A916F823145B4D9F2E50A.png', NULL, 4, ''),
(19, '3A34BD97AACB97ABEEA1CBD9E6BE4EC3.png', NULL, 4, ''),
(21, 'D888D90D30B79792E87A4665535B96AC.png', NULL, 4, ''),
(22, 'C4D0C12C0123174A79DE5046F4F78B85.png', NULL, 4, ''),
(23, '8C252C3AC9E2DC610B6673B9947E648A.png', NULL, 4, ''),
(25, '67758BC64DAA724C197AEF3AE7F44360.png', NULL, 6, ''),
(26, 'A0E3EFC9E30CBE728CA300F0881B666B.png', NULL, 6, ''),
(27, 'B5798F0AF00420609E742AF7660162AC.png', NULL, 6, '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_expo`
--
ALTER TABLE `artista_expo`
  ADD CONSTRAINT `artista_expo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artista_expo_ibfk_2` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `artista_prensa`
--
ALTER TABLE `artista_prensa`
  ADD CONSTRAINT `artista_prensa_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artista_prensa_ibfk_2` FOREIGN KEY (`idprensa`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `audio`
--
ALTER TABLE `audio`
  ADD CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `conversatorio`
--
ALTER TABLE `conversatorio`
  ADD CONSTRAINT `conversatorio_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `montaje`
--
ALTER TABLE `montaje`
  ADD CONSTRAINT `montaje_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`idartista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prensa`
--
ALTER TABLE `prensa`
  ADD CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_artista`
--
ALTER TABLE `tra_artista`
  ADD CONSTRAINT `tra_artista_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_artista_ibfk_2` FOREIGN KEY (`artistaid`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_audio`
--
ALTER TABLE `tra_audio`
  ADD CONSTRAINT `tra_audio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_audio_ibfk_2` FOREIGN KEY (`audioid`) REFERENCES `audio` (`idaudio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_conversatorio`
--
ALTER TABLE `tra_conversatorio`
  ADD CONSTRAINT `tra_conversatorio_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_conversatorio_ibfk_2` FOREIGN KEY (`conversatorioid`) REFERENCES `conversatorio` (`idconversatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_exposicion`
--
ALTER TABLE `tra_exposicion`
  ADD CONSTRAINT `tra_exposicion_ibfk_1` FOREIGN KEY (`exposicionid`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_exposicion_ibfk_2` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_montaje`
--
ALTER TABLE `tra_montaje`
  ADD CONSTRAINT `tra_montaje_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_montaje_ibfk_2` FOREIGN KEY (`montajeid`) REFERENCES `montaje` (`idmontaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_noticia`
--
ALTER TABLE `tra_noticia`
  ADD CONSTRAINT `tra_noticia_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_noticia_ibfk_2` FOREIGN KEY (`noticiaid`) REFERENCES `noticia` (`idnoticia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_obra`
--
ALTER TABLE `tra_obra`
  ADD CONSTRAINT `tra_obra_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_obra_ibfk_2` FOREIGN KEY (`obraid`) REFERENCES `obra` (`idobra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_prensa`
--
ALTER TABLE `tra_prensa`
  ADD CONSTRAINT `tra_prensa_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_prensa_ibfk_2` FOREIGN KEY (`prensaid`) REFERENCES `prensa` (`idprensa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_texto`
--
ALTER TABLE `tra_texto`
  ADD CONSTRAINT `tra_texto_ibfk_1` FOREIGN KEY (`textoid`) REFERENCES `texto` (`idtexto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tra_verni_fini`
--
ALTER TABLE `tra_verni_fini`
  ADD CONSTRAINT `tra_verni_fini_ibfk_1` FOREIGN KEY (`idiomaid`) REFERENCES `idiomas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tra_verni_fini_ibfk_2` FOREIGN KEY (`verni_finiid`) REFERENCES `verni_fini` (`idverni_fini`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `verni_fini`
--
ALTER TABLE `verni_fini`
  ADD CONSTRAINT `verni_fini_ibfk_1` FOREIGN KEY (`idexposicion`) REFERENCES `exposicion` (`idexposicion`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
