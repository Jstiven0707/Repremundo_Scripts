
CREATE TABLE `MDEX2025` (
  `CRONIDXX` int(11) NOT NULL COMMENT 'ID del cron',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número del DO',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número de la SAE',
  `NUMDEXXX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Número de DEX',
  `OBSROBXX` tinytext COLLATE utf8_unicode_ci COMMENT 'Observación del robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('PENDIENTE','ERROR','FINALIZADO','INACTIVO') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='OPERACIONES Y SAE VS AGENDAMIENTO DE ROBOT';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDEX2025`
--
ALTER TABLE `MDEX2025`
  ADD PRIMARY KEY (`CRONIDXX`,`DOCNROXX`,`NUMSAEXX`);
COMMIT;


