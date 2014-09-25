CREATE TABLE IF NOT EXISTS `texto` (
`idtexto` int(11) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `texto` text NOT NULL
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
MODIFY `idtexto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
