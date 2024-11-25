--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDCD2025`
--

CREATE TABLE `MDCD2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO (MDOSYYY)',
  `DOCACCIX` enum('CREAR','ACTUALIZAR','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA LA ACCION',
  `DOCACTXX` enum('GRM','PRACTIKO','OPEN','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA EL ACTOR',
  `DOCINTXX` smallint NOT NULL COMMENT 'NUMERO DE INTENTOS INICIA EN 0',
  `DOCAPLRE` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ULTIMA RESPUESTA DEL SERVICIO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='OPERACION VS AGENDAMIENDO DE CADENA DE DISTRIBUCION';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDCD2025`
--
ALTER TABLE `MDCD2025`
  ADD PRIMARY KEY (`DOCNROXX`,`DOCACCIX`,`DOCACTXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `DOCACCIX` (`DOCACCIX`),
  ADD KEY `DOCACTXX` (`DOCACTXX`);
COMMIT;
