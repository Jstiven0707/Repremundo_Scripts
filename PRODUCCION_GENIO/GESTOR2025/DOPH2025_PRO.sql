
CREATE TABLE `DOPH2025` (
  `IDARCHPA` int NOT NULL COMMENT 'Id archivo padre',
  `IDARCHHI` int NOT NULL COMMENT 'Id archivo hijo',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Paquete padre vs paquetes hijos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOPH2025`
--
ALTER TABLE `DOPH2025`
  ADD PRIMARY KEY (`IDARCHPA`,`IDARCHHI`),
  ADD KEY `IDARCHHI` (`IDARCHHI`),
  ADD KEY `IDARCHPA` (`IDARCHPA`);
COMMIT;


