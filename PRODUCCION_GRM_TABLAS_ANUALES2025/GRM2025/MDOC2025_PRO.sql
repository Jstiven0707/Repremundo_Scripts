

CREATE TABLE `MDOC2025` (
  `ODCPOXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `SUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCTIPXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Do',
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Do',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modifico',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle DOs Ordenes de Compra' ROW_FORMAT=DYNAMIC;

--
-- Disparadores `MDOC2025`
--
DELIMITER $$
CREATE TRIGGER `MDOC2025_INSERT` BEFORE INSERT ON `MDOC2025` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MDOC2025_UPDATE` BEFORE UPDATE ON `MDOC2025` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOC2025`
--
ALTER TABLE `MDOC2025`
  ADD PRIMARY KEY (`ODCPOXXX`,`CLIIDXXX`,`DOCNROXX`) USING BTREE;
COMMIT;


