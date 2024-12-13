

CREATE TABLE IF NOT EXISTS `SATL2025` (
  `AVIIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Avisos',
  `AVIDESXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Aviso',
  `AVITRAXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite del Aviso',
  `USRIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Usuario a Quien Llega el Aviso',
  `AVIFECLX` date DEFAULT NULL COMMENT 'Fecha de Leido',
  `AVIHORLX` time DEFAULT NULL COMMENT 'Hora de Leido',
  `AVICOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Color de Alerta',
  `ASUIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Asunto',
  `AVIBLOSX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bloqueo Sesion',
  `AVIVENSX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ventana Emergente',
  `AVITIPXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Aviso',
  `AVITIFAL` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dias Faltantes u otra aplicacion que se le entregue al campo, Incialmente para Alerta',
  `AVICONTX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contador',
  `REGUSRXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE RESGISTRO',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE MODIFICACION',
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'HORA DE CREACION DE REGISTRO',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`AVIIDXXX`),
  KEY `USRIDXXX` (`USRIDXXX`),
  KEY `ASUIDXXX` (`ASUIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


