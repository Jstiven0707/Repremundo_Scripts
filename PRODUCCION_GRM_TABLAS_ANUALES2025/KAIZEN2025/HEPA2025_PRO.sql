
CREATE TABLE `HEPA2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Numero de Ticket',
  `IDFORXXX` int(11) NOT NULL COMMENT 'Id Formulario',
  `IDPREXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id pregunta',
  `TIPORESX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'TIPO DE RESPUESTA',
  `APLICAXX` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'aplica hallazgos',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Preguntas Auditoria por Ticket';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HEPA2025`
--
ALTER TABLE `HEPA2025`
  ADD PRIMARY KEY (`HELCCSCX`,`IDFORXXX`,`IDPREXXX`);
COMMIT;


