

CREATE TABLE `DSAE2025` (
  `ANTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concecutivo',
  `PUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cuenta Puc',
  `COMREFXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concepto',
  `ANTTIPXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo PCC o IP',
  `ANTVLRXX` decimal(17,2) NOT NULL COMMENT 'Valor',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de Anticipos para Exportación';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSAE2025`
--
ALTER TABLE `DSAE2025`
  ADD PRIMARY KEY (`ANTIDXXX`,`PUCIDXXX`,`COMREFXX`);
COMMIT;

