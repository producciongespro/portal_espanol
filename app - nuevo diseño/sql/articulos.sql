-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-01-2020 a las 13:06:02
-- Versión del servidor: 5.6.45
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recursos_espanol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `seccion` varchar(64) DEFAULT NULL,
  `texto` varchar(256) DEFAULT NULL,
  `url_img` varchar(128) DEFAULT NULL,
  `url_ref` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `seccion`, `texto`, `url_img`, `url_ref`) VALUES
(1, 'programas', 'Programa de estudio de Español, I Ciclo otra vez', 'img/iconos/progrma1.png', 'https://www.mep.go.cr/sites/default/files/programadeestudio/programas/espanol1ciclo.pdf'),
(2, 'programas', 'Programa de estudio de Español, II Ciclo', 'img/iconos/program2.png', 'https://www.mep.go.cr/sites/default/files/programadeestudio/programas/espanol2ciclo.pdf'),
(3, 'sitios', 'Página oficial del Ministerio de Educación Pública de Costa Rica', 'img/iconos/sitio_1.png', 'http://mep.go.cr'),
(4, 'sitios', 'Sistema Nacional de Bibliotecas', 'img/iconos/sitio_8.png', 'http://www.sinabi.go.cr'),
(5, 'sitios', 'Sitio oficial de la Dirección de Desarrollo Curricular', 'img/iconos/sitio_2.png', 'http://www.ddc.mep.go.cr/i-y-ii-ciclos/espanol'),
(6, 'sitios', 'Facebook Programa de estudio de español, MEP', 'img/iconos/sitio_7.png', 'https://www.facebook.com/ProgramadeestudiodeEspanolMEP'),
(7, 'sitios', 'Información específica para escuelas unidocentes', 'img/iconos/sitio_3.png', 'http://www.ddc.mep.go.cr/escuelas-unidocentes'),
(8, 'sitios', 'Sitio con enlace a documentos sobre modalidad de Aula Edad', 'img/iconos/sitio_4.png', 'http://ddc.mep.go.cr/aula-edad'),
(9, 'sitios', 'Página oficial de Aprender y Crecer', 'img/iconos/sitio_13.png', 'https://www.aprenderycrecer.org/noticias.html'),
(10, 'sitios', 'Biblioteca Digital Hispánica', 'img/iconos/sitio_12.png', 'http://www.bne.es/es/Catalogos/BibliotecaDigitalHispanica/Inicio/index.html'),
(11, 'sitios', 'Imprenta Nacional', 'img/iconos/sitio_10.png', 'https://www.imprentanacional.go.cr/editorialdigital'),
(12, 'sitios', 'Sitio oficial ADA, Asociación Amigos del Aprendizaje', 'img/iconos/sitio_5.png', 'http://www.ada.or.cr'),
(13, 'sitios', 'Real Academia Española', 'img/iconos/sitio_9.png', 'http://www.rae.es'),
(14, 'sitios', 'Coordinación Educativa y Cultural Centroamérica', 'img/iconos/sitio_6.png', 'http://www.sica.int/cecc'),
(15, 'sitios', 'Consejo Superior de Educación', 'img/iconos/sitio_11.png', 'http://www.cse.go.cr'),
(16, 'sitios', 'Almanaque Escuela para Todos', 'img/iconos/sitio_14.png', 'https://almanaqueept.org'),
(17, 'sitios', 'Colección Fantástica (Material)', 'img/iconos/sitio_15.png', 'https://micuentofantastico.cr/coleccion-fantastica'),
(18, 'antologias', 'Un acercamiento al Programa de estudio de Español, I Ciclo', 'img/iconos/ant_1.png', 'https://www.mep.go.cr/sites/default/files/antologia_espanol_I_ciclo.pdf'),
(19, 'antologias', 'Reforzamiento Programa de estudio de Español, I Ciclo', 'img/iconos/ant_2.png', 'https://www.mep.go.cr/sites/default/files/Antolog%C3%ADa%20del%20reforzamiento%20de%20I%20ciclo.pdf'),
(20, 'antologias', 'Antología sobre el Programa de estudio de Español, II Ciclo', 'img/iconos/ant_3.png', 'https://www.mep.go.cr/sites/default/files/antologia_espanol_IIciclo.pdf'),
(21, 'antologias', 'Poesía FEA 2017', 'img/iconos/ant_4.png', 'data/textos/poesia_fea_2017.pdf'),
(22, 'antologias', 'El disfrute y la apreciación del teatro en la enseñanza', 'img/iconos/ant_5.png', 'data/textos/ant.el_disfrute_yla_apreciacion.pdf'),
(23, 'antologias', 'Mi Cuento Fantástico 2019', 'img/iconos/ant_6.png', 'https://librosparatodos.cr/miCuentoFantastico/2019'),
(24, 'cuentos', 'Antología del año 2012', 'img/iconos/cuento_1.png', 'http://librosparatodoscr.com/miCuentoFantastico/2012'),
(25, 'cuentos', 'Antología del año 2013', 'img/iconos/cuento_2.png', 'http://librosparatodoscr.com/miCuentoFantastico/2013/app'),
(26, 'cuentos', 'Antología del año 2014', 'img/iconos/cuento_3.png', 'http://librosparatodoscr.com/miCuentoFantastico/2014'),
(27, 'cuentos', 'Antología del año 2015', 'img/iconos/cuento_4.png', 'http://librosparatodoscr.com/miCuentoFantastico/2015'),
(28, 'cuentos', 'Antología del año 2016', 'img/iconos/cuento_5.png', 'http://librosparatodoscr.com/miCuentoFantastico/2016'),
(29, 'cuentos', 'Antología del año 2017', 'img/iconos/cuento_6.png', 'http://librosparatodoscr.com/miCuentoFantastico/2017'),
(30, 'cuentos', 'Antología del año 2018', 'img/iconos/cuento_7.png', 'http://librosparatodoscr.com/miCuentoFantastico/2018'),
(31, 'videoconferencias', 'Videoconferencia panorámica del Programa de estudio de Español de I Ciclo: 2 de setiembre de 2016', 'img/iconos/videoc_1.png', 'https://drive.google.com/file/d/0B4uXJG2wzONIWDFxRnZUQ2Y0RjA/view'),
(32, 'videoconferencias', 'Videoconferencia sobre escritura creativa: \"¡Te regalo cuatro palabras con colores de vida: leer, escribir, escuchar y hablar!\". 26 de junio de 2017', 'img/iconos/videoc_5.png', 'https://drive.google.com/file/d/0B4uXJG2wzONIR3k5VHM1TXRWeTg/view?usp=sharing'),
(33, 'videoconferencias', 'Videoconferencia panorámica del Programa de estudio de Español de II Ciclo: 27 de setiembre de 2016', 'img/iconos/videoc_2.png', 'https://drive.google.com/file/d/0B4uXJG2wzONIUzd3aFJ2Ykt4aWM/view?usp=sharing'),
(34, 'videoconferencias', 'Videoconferencia sobre \"Mi Cuento Fantástico\" y su vinculación con los programas de estudio de Español: 24 de abril de 2017', 'img/iconos/videoc_4.png', 'https://drive.google.com/file/d/0B4uXJG2wzONIQlBDSmM1dGNfaGM/view?usp=sharing'),
(35, 'videoconferencias', 'Videoconferencia Acuerdo N° 04-36-2017 y el fomento de la lectura: 2 de octubre de 2017', 'img/iconos/videoc_6.png', 'http://videoteca.mep.go.cr/userportal/video?v=Rb7532e2617f54c9e8bc5179ccfdcd003'),
(36, 'videoconferencias', 'Videoconferencia \"¡Leer y escribir: mis juegos favoritos!, 17 de mayo de 2018', 'img/iconos/videoc_7.png', 'http://videoteca.mep.go.cr/userportal/index.html#/player/vod/R958807feee814149b9d55add513ebf9b'),
(37, 'videoconferencias', 'Videoconferencia sobre la estrategia metodológica Piensa en Arte: 24 de marzo del 2017', 'img/iconos/videoc_8.png', 'https://drive.google.com/file/d/1X2HbQp5iyQxpSo0cuIdHEEGQ3j7HzYu8/view'),
(38, 'videoconferencias', 'Videoconferencia sobre Mi Cuento Fantástico: 2019', 'img/iconos/videoc_9.png', 'http://videoteca.mep.go.cr/userportal/index.html#/player/vod/R5b74de1c307647f18106e4b6ee0e0c58'),
(39, 'videoconferencias', 'Videoconferencia Conciencia fonológica (Primera Infancia)', 'img/iconos/videoc_10.png', 'https://recursos.mep.go.cr/2019/ws/portal-espanol/videoconferencia-conciencia-%20fonologica.mp4'),
(40, 'videoconferencias', 'Videoconferencia Lanzamiento de recursos GESPRO (Cuenticos)', 'img/iconos/videoc_11.png', 'http://videoteca.mep.go.cr/userportal/video?v=R51b6ed1ab27f4cbab903fa34d24ae325'),
(41, 'videos', 'Video sobre escritura creativa', 'img/iconos/video2.png', 'https://www.youtube.com/watch?v=clLV0yXwcuw&t=8s'),
(42, 'videos', 'Video Taller de autores', 'img/iconos/video3.png', 'https://www.youtube.com/watch?time_continue=3&v=Vs2DN38FiZ4'),
(43, 'videos', 'Video “El estofado del lobo”', 'img/iconos/video8.png', 'https://www.youtube.com/watch?v=WX_y52D_U9I&t=44s'),
(44, 'videos', 'Video “Choco encuentra una mamá”', 'img/iconos/video7.png', 'https://www.youtube.com/watch?v=R_Eg3FN_75o'),
(45, 'videos', 'Video \"Colibrí y la lluvia\" (relato indígena musicalizado)', 'img/iconos/video6.png', 'https://www.youtube.com/watch?v=6SitltpqVuY'),
(46, 'videos', 'Video explicativo sobre el fomento de lectura en I Ciclo y II Ciclo', 'img/iconos/video5.png', 'http://videoteca.mep.go.cr/userportal/video?v=R8ccc83472e3c4a4e9c4538c23833ac00'),
(47, 'videos', 'Video \"The Fantastic Flying Books\" of Mr. Morris Lessmore (\"Los fantásticos libros voladores\" del señor Morris Lessmore)', 'img/iconos/video4.png', 'https://www.youtube.com/watch?v=Ad3CMri3hOs'),
(48, 'videos', 'Video: Al frente de la clase', 'img/iconos/video9.png', 'https://www.youtube.com/watch?v=DmgGiyUdln0'),
(49, 'videos', 'Videos explicativos Piensa en Arte', 'img/iconos/video1.png', 'https://www.mep.go.cr/educatico/piensa-arte'),
(50, 'videos', 'Todo lo que me enseñaron los niños', 'img/iconos/video12.png', 'https://www.youtube.com/watch?v=6E4ct50dPKs'),
(51, 'videos', 'Cuaderno de viaje de un maestro', 'img/iconos/video11.png', 'https://www.youtube.com/watch?v=zl6iSEC0zeE&t=328s'),
(52, 'documentos', 'Fundamentación Pedagógica de la Transformación Curricular', 'img/iconos/document_8.png', 'data/documentos/transformacion_curricular.pdf'),
(53, 'documentos', 'Política de Fomento de la Lectura', 'img/iconos/document_3.png', 'https://www.mep.go.cr/sites/default/files/politica_fomento_lectura.pdf'),
(54, 'documentos', 'Circular  DVM-AC-0015-01-2017 Fomento de la Lectura', 'img/iconos/document_4.png', 'data/textos/dvm_ac_0015_01_2017.pdf'),
(55, 'documentos', 'Circular DVM-AC-0494-04-2018', 'img/iconos/document_5.png', 'data/textos/circular0494-04-2018.pdf'),
(56, 'documentos', 'Estrategia metodológica PeA para escuelas unidocentes', 'img/iconos/document_6.png', 'data/textos/estrategia.docx'),
(57, 'documentos', 'Acuerdo N° 04-36-2017 del Consejo Superior de Educación: literatura recomendada', 'img/iconos/document_2.png', 'http://www.ddc.mep.go.cr/sites/all/files/ddc_mep_go_cr/archivos/literatura_recomendada_2018_0.pdf'),
(58, 'documentos', 'Circular de protocolo pasaporte PeA: DDC-DPSC-275-07-2018', 'img/iconos/document_7.png', 'data/textos/protocolo275-07-2018.pdf'),
(59, 'textos', 'Artículo: \"Ante todo la comprensión\"', 'img/iconos/text_1.png', 'data/textos/ante_todo.doc'),
(60, 'textos', 'Artículo: \"Cómo hacer visible el pensamiento\"', 'img/iconos/text_2.png', 'data/textos/como_hacer_visible_pensamiento.doc'),
(61, 'textos', 'Artículo: \"La escucha inteligente\"', 'img/iconos/text_3.png', 'data/textos/la_escucha_inteligente.pdf'),
(62, 'textos', 'Artículo: \"Los enemigos centrales del aprendizaje\"', 'img/iconos/text_4.png', 'data/textos/enemigos_centrales_aprendizaje.pdf'),
(63, 'textos', 'Artículo: \"Placer y ternura en la educación\"', 'img/iconos/text_5.png', 'data/textos/placer_ternura_educación.pdf'),
(64, 'textos', 'Artículo: \"Sobre el arte y la educación artística\"', 'img/iconos/text_6.png', 'data/textos/arte_artistica.doc'),
(65, 'textos', 'Libro: La literatura para niños y niñas: de la didáctica a la fantasía (Nuria Isabel Méndez Garita, Carlos Rubio Torres, Minor Arias Uva)', 'img/iconos/text_7.png', 'data/textos/la_literatura.pdf'),
(66, 'textos', 'Revista conexiones: Hacia la búsqueda de la imagen como motivación para la enseñanza del Español', 'img/iconos/text_8.png', 'http://issuu.com/revistaconexionesmep/docs/1revistaconexiones2015?ff=true&e=2960103/59515041'),
(67, 'textos', 'Conferencia Floria Jiménez', 'img/iconos/text_10.png', 'data/textos/conferencia_ floria_jimenez.docx'),
(68, 'textos', 'Módulo: La afrodescendencia en Costa Rica', 'img/iconos/text_11.png', 'data/textos/modulo_afrodescendencia.pdf'),
(69, 'textos', 'Módulo: Cosmovisión y cosmogonía de los pueblos indígenas costarricenses', 'img/iconos/text_12.png', 'data/textos/modulo_indigena.pdf'),
(70, 'textos', 'Módulo: Migraciones, convivencia y educación intercultural', 'img/iconos/text_13.png', 'data/textos/modulo_migraciones_convivencia.pdf'),
(71, 'otros', 'Enseñanza de la escritura', 'img/iconos/otros_12.png', 'data/otros/aportes_ensenanza_escritura.pdf'),
(72, 'otros', 'Enseñanza de la lectura', 'img/iconos/otros_13.png', 'data/otros/aportes_ensenanza_lectura.pdf'),
(73, 'otros', 'Leyendas: Lengua gnäbere', 'img/iconos/otros_9.png', 'https://www.mep.go.cr/educatico/leyendas-ngabere'),
(74, 'otros', 'Letras del alfabeto', 'img/iconos/otros_11.png', 'data/otros/letra_alfabeto.pdf'),
(75, 'otros', 'Juego: ¡Un viaje por Costa Rica!', 'img/iconos/otros_6.png', 'https://www.mep.go.cr/educatico/un-viaje-costa-rica'),
(76, 'otros', 'Juego: La Finca de las Soniletras', 'img/iconos/otros_5.png', 'https://www.mep.go.cr/educatico/recurso-interactivo/finca-soniletras'),
(77, 'otros', 'La baraja fonológica (autoras: Cynthia Porras Arias y Charlyn Porras Arias)', 'img/iconos/otros_4.png', 'https://www.mep.go.cr/sites/default/files/barajas_fonologicas.pdf'),
(78, 'otros', 'Libro: Ciento veintinueve estrategias de promoción y animación de la lectura', 'img/iconos/otros_1.png', 'https://www.mep.go.cr/educatico/129-estrategias-de-promocion-y-animacion-de-lectura'),
(79, 'otros', 'Leyendas de Costa Rica: disfrute y comprensión de lectura', 'img/iconos/otros_3.png', 'https://www.mep.go.cr/educatico/recurso-interactivo/leyendas-de-costa-rica'),
(80, 'otros', 'Material de apoyo de Español para primer año', 'img/iconos/otros_2.png', 'http://www.ddc.mep.go.cr/sites/all/files/ddc_mep_go_cr/archivos/material_de_apoyo_para_el_primer_ano_espanol.pdf'),
(81, 'otros', 'Taller de fomento de lectura MEP-Aprender y Crecer: Exposición 2016', 'img/iconos/otros_7.png', 'data/otros/exp_2016.pdf'),
(82, 'otros', 'Taller de fomento de lectura MEP-Aprender y Crecer: Exposición 2017', 'img/iconos/otros_8.png', 'data/otros/exp_2017.pdf'),
(83, 'otros', 'Recurso Cuenticos: Fomenta la creación de narraciones originales.', 'img/iconos/otros_14.png', 'https://www.mep.go.cr/educatico/cuenticos'),
(84, 'otros', 'Taller de fomento de lectura MEP-Aprender y Crecer: Exposición 2018.', 'img/iconos/otros_15.png', 'data/otros/exp_2018.pdf'),
(85, 'otros', 'Taller de fomento de lectura MEP-Aprender y Crecer: Exposición 2019', 'img/iconos/otros_16.png', 'data/otros/exp_2019.pdf'),
(86, 'otros', 'Aplicación \"Alfabetizar\" (UCR)', 'img/iconos/otros_17.png', 'https://play.google.com/store/apps/details?id=aplicacion.movil.alfabetizar&hl=es_419');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
