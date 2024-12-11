
CREATE TABLE `MDSC2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `NUMCERXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Certificado',
  `FECERREX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de recepcion del certificado',
  `HORERREX` time NOT NULL COMMENT 'Hora de recepcion del certificado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Certificados por SAES ' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSC2025`
--
ALTER TABLE `MDSC2025`
  ADD PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMCERXX`) USING BTREE;
COMMIT;


