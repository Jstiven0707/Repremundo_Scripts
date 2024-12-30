

CREATE TABLE `DOTD2025` (
  `IDARCHXX` bigint NOT NULL COMMENT 'IDENTIFICADOR LA CARGA',
  `IDPARTXX` int NOT NULL COMMENT 'IDENTIFICADOR LA PARTE',
  `PARTXXXX` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TEXTO DE LA PARTE EN BASE 64',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','INCOMPLETO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESTADO DEL REGISTRO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='paquete documental vs partes';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOTD2025`
--
ALTER TABLE `DOTD2025`
  ADD PRIMARY KEY (`IDARCHXX`,`IDPARTXX`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;


