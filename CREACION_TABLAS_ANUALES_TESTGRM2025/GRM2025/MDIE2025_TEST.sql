
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDIE2025`
--

CREATE TABLE IF NOT EXISTS `MDIE2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `NUMFACXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `PROIDXXX` varchar(167) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del producto',
  `DOIPEDXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido',
  `SECITXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia del item',
  `SERAVIXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serial del avion',
  `ITPROXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Auto prorroga',
  `ITFEPROX` date NOT NULL COMMENT 'fecha Auto prorroga',
  `ITNUMPOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de PO',
  `ITPRECEX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Precedida',
  `ITPOSARX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Posicion arancelaria',
  `ITNOMTRA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre del producto tramitex',
  `ITNOMCOX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre comercial',
  `ITDESCXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion del producto',
  `ITUNFIXX` int(9) NOT NULL COMMENT 'cantidad de unidades fisicas',
  `ITUNCOMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Comercial',
  `ITCANCOX` int(9) NOT NULL COMMENT 'cantidad comercial',
  `ITUNBULX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Bultos',
  `ITCANBUL` decimal(12,5) NOT NULL COMMENT 'cantidad de bultos',
  `ITPESBRU` decimal(12,5) NOT NULL COMMENT 'PESO BRUTO',
  `ITPESNET` decimal(12,5) NOT NULL COMMENT 'PESO NETO',
  `ITTOTDAV` decimal(12,5) NOT NULL COMMENT 'TOTAL DAV',
  `ITMARXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'MARCA',
  `ITREFXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'REFERENCIA',
  `ITPAISOR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PAIS DE ORIGEN',
  `ITNUMDIM` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DEL DIM',
  `ITADUXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ADUANA',
  `ITANODIM` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'AÑO DE LA DIM',
  `ITMODAXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad',
  `ITNUMSER` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE SERIE DE LA PRECEDIDA',
  `ITLEYESP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'LEYENDA ESPECIAL DEL ITEM',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`NUMSAEXX`,`NUMFACXX`,`PROIDXXX`,`SECITXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='items de la factura para exportaciones';


