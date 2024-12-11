
CREATE TABLE `CISM2025` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relacion Do vs Consecutivo CIS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CISM2025`
--
ALTER TABLE `CISM2025`
  ADD PRIMARY KEY (`CISCIDXX`,`DOCNROXX`);
COMMIT;


