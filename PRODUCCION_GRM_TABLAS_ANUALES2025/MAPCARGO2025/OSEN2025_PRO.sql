

CREATE TABLE `OSEN2025` (
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `IDBILLCL` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id cliente a facturar',
  `NABILLCL` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre cliente a facturar',
  `IDCONSIG` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del consignatario',
  `NACONSIG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del consignatario',
  `IDEXPEDI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del expedidor',
  `NAEXPEDI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del expedidor',
  `IDTRANSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador',
  `NATRANSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del transportador',
  `IDTRANDE` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador en destino',
  `NATRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del transportador en destino',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidades de la reservacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `OSEN2025`
--
ALTER TABLE `OSEN2025`
  ADD PRIMARY KEY (`OSNOMRES`);
COMMIT;


