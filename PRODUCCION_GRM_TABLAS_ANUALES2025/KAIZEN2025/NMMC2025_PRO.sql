

CREATE TABLE `NMMC2025` (
  `NMMCIDXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Secuencia del documento de no mas errores',
  `NMMCNOCR` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Número de NO conforme SIG',
  `NMMPEIDX` int(9) NOT NULL COMMENT 'Id del Error',
  `NMMCSITP` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Situacion Presentada',
  `NMMCPROX` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Procesos o normas incumplidas',
  `NMMCFCPX` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Forma correcta de proceder',
  `NMMCACCX` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Acciones correctivas',
  `NMMPIMSL` enum('SI','NO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si se implementa la solución informatica',
  `NMMPDESL` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Descripcion de la solución informatica',
  `NMMPBANA` enum('SI','NO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si se mitiga el error totalmente',
  `REGUSRXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Informes (Programa No Mas Errores)';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `NMMC2025`
--
ALTER TABLE `NMMC2025`
  ADD PRIMARY KEY (`NMMCIDXX`);
COMMIT;


