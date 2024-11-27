
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDFC2025`
--

CREATE TABLE IF NOT EXISTS `MDFC2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Factura',
  `NUMFACXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `NUMCERXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Certificado',
  `FECERREX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de recepcion del certificado',
  `HORERREX` time NOT NULL COMMENT 'Hora de recepcion del certificado',
  `FECENVCO` date NOT NULL COMMENT 'FECHA DE ENVIO DE CERTIFICADO DE ORIGEN',
  `HORENVCO` time NOT NULL COMMENT 'HORA DE ENVIO DE CERTIFICADO DE ORIGEN',
  `FECRADXX` date NOT NULL COMMENT 'FECHA DE RADICACION',
  `HORRADXX` time NOT NULL COMMENT 'HORA DE RADICACION',
  `CERTAPRO` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado Aprobado',
  `RESPNEGX` enum('','CLIENTE','DIAN','SIACO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable Negacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMCERXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Certificados por Facturas Exportaciones';

