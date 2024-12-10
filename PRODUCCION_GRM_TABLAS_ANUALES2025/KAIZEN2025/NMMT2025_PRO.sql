

CREATE TABLE `NMMT2025` (
  `NMMCIDXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Secuencia del documento de no mas errores',
  `NMMPTEID` int(9) NOT NULL COMMENT 'Id del tema aduanero',
  `REGUSRXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Informes vs Temas Aduaneros (Programa No Mas Errores)';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `NMMT2025`
--
ALTER TABLE `NMMT2025`
  ADD PRIMARY KEY (`NMMCIDXX`,`NMMPTEID`);
COMMIT;


