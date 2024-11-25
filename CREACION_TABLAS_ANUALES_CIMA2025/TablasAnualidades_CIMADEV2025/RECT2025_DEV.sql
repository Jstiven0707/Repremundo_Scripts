--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RECT2025`
--

DROP TABLE IF EXISTS `RECT2025`;
CREATE TABLE `RECT2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYY)',
  `RECTPAUX` time NOT NULL COMMENT 'TIEMPO EN PAUSA',
  `RECTEJEC` time NOT NULL COMMENT 'TIEMPO EJECUTADO',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TIEMPOS DEL RECONOCIMIENTO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RECT2025`
--
ALTER TABLE `RECT2025`
  ADD PRIMARY KEY (`TARIDXXX`),
  ADD KEY `TARIDXXX` (`TARIDXXX`);
COMMIT;