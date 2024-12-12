

CREATE TABLE `SHEN2025` (
  `SHNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `IDBILLCL` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id cliente a facturar',
  `NABILLCL` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre cliente a facturar',
  `IDCONSIG` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del consignatario',
  `NACONSIG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre consignatario',
  `IDEXPEDI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del expedidor',
  `NAEXPEDI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre expedidor',
  `IDTRANSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador',
  `NATRANSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre transportador',
  `IDTRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador en destino',
  `NATRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Transportador destino',
  `IDAGECAR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del agente de carga',
  `NAAGECAR` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente de carga',
  `IDAGEDES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del agente en destino',
  `NAAGEDES` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente en destino',
  `REDAGENT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Agente en destino:Red de Agente',
  `OPIDCABY` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID transportista de entrega',
  `OPCARRBY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre  transportista de entrega',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidades de la operacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SHEN2025`
--
ALTER TABLE `SHEN2025`
  ADD PRIMARY KEY (`SHNUMBER`);
COMMIT;

