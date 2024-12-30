
CREATE TABLE `DOMD2025` (
  `IDARCHXX` bigint NOT NULL COMMENT 'ID DEL ARCHIVO',
  `DOCNROXX` varchar(15) NOT NULL COMMENT 'NUMERO DEL DO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='PAQUETE VS OPERACION';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOMD2025`
--
ALTER TABLE `DOMD2025`
  ADD PRIMARY KEY (`IDARCHXX`,`DOCNROXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;

