CREATE TABLE `ANTP2024` (
  `ANTCIDXX` bigint NOT NULL COMMENT 'ID DE LA SOLICITUD DEL ANTICIPO',
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DE DO',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO',
  `ANTPVLRX` decimal(20,5) NOT NULL COMMENT 'Valor',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Solicitud de anticipo cliente vs Ingresos propios';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANTP2024`
--
ALTER TABLE `ANTP2024`
  ADD PRIMARY KEY (`ANTCIDXX`,`DOCNROXX`,`CONCOBID`),
  ADD KEY `ANTCIDXX` (`ANTCIDXX`),
  ADD KEY `DOIPEDXX` (`DOCNROXX`),
  ADD KEY `CONCOBID` (`CONCOBID`);
COMMIT;
