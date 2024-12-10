

CREATE TABLE `DSTC2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `LIMLEVXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de levante',
  `LIMFLEVX` date NOT NULL COMMENT 'Fecha de Levante',
  `LIMHLEVX` time NOT NULL COMMENT 'Hora de Levante',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Aceptacion',
  `LIMFACEX` date NOT NULL COMMENT 'Fecha de Aceptacion',
  `LIMHACEX` time NOT NULL COMMENT 'Hora de Aceptacion',
  `STIKERFE` date NOT NULL COMMENT 'Fecha de Envio Sticker',
  `STIKERHO` time NOT NULL COMMENT 'Hora de Envio Sticker',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='DETALLE ENVIO STICKER GECOLSA' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSTC2025`
--
ALTER TABLE `DSTC2025`
  ADD PRIMARY KEY (`DOCNROXX`,`LIMLEVXX`,`LIMACEXX`);
COMMIT;
