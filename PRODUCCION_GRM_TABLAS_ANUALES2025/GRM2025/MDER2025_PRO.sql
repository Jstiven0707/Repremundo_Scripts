

CREATE TABLE `MDER2025` (
  `DOIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Do',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Aceptacion',
  `OBSROBTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'observacion del robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','ERROR','MIGRADO','FIRMADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Migracion Declaraciones Genio Documental' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDER2025`
--
ALTER TABLE `MDER2025`
  ADD PRIMARY KEY (`DOIIDXXX`,`CLIIDXXX`,`LIMACEXX`) USING BTREE;
COMMIT;


