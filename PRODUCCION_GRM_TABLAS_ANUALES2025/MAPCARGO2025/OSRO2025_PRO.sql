
CREATE TABLE `OSRO2025` (
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `OSNUMREF` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BL o numero de guia aerea',
  `OSTRINUM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de viaje o vuelo',
  `COUNTRYO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de origen',
  `REGIONXO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de origen',
  `CODPORTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de origen',
  `NAMPORTO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de origen',
  `COUNTRYD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de destino',
  `REGIONXD` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de destino',
  `CODPORTD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de destino',
  `NAMPORTD` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de destino',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ruta puertos del reservacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `OSRO2025`
--
ALTER TABLE `OSRO2025`
  ADD PRIMARY KEY (`OSNOMRES`);
COMMIT;

