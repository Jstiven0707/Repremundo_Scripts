--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTEU2025`
--

DROP TABLE IF EXISTS `DTEU2025`;
CREATE TABLE `DTEU2025` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE DOCUMENTO DE TRANSPORTE(UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT CONSIGNATARIO',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DOTRUBID` smallint NOT NULL COMMENT 'ID DEL ESTADO DE UBICACION DEL DOCUMENTO DE TRANSPORTE(CIPO0154)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='documento de transporte vs estados de ubicacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTEU2025`
--
ALTER TABLE `DTEU2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`IDARCHXX`,`DOTRUBID`) USING BTREE,
  ADD KEY `DOTRUBID` (`DOTRUBID`),
  ADD KEY `DTRCNICO` (`DTRCNICO`),
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;
