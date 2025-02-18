CREATE TABLE `CIMS0036` (
  `GRAIDXXX` smallint NOT NULL COMMENT 'ID DE LA GRAFICA',
  `GRANOMXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NOMBRE DE LA GRAFICA',
  `GRACOMXX` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NOMBRE DEL COMPONENTE',
  `GRAORDXX` smallint NOT NULL COMMENT 'ORDEN DE LA GRAFICA',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='GRAFICAS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIMS0036`
--
ALTER TABLE `CIMS0036`
  ADD PRIMARY KEY (`GRAIDXXX`),
  ADD KEY `GRACOMXX` (`GRACOMXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CIMS0036`
--
ALTER TABLE `CIMS0036`
  MODIFY `GRAIDXXX` smallint NOT NULL AUTO_INCREMENT COMMENT 'ID DE LA GRAFICA';
COMMIT;
