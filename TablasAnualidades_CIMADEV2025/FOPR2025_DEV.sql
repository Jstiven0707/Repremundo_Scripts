DROP TABLE IF EXISTS `FOPR2025`;
CREATE TABLE `FOPR2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `FOTPIDXX` int NOT NULL COMMENT 'Id del Proyecto',
  `FOTPDESX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Descripcion del Proyecto',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL VS PROYECTOS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOPR2025`
--
ALTER TABLE `FOPR2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOTPIDXX`,`FOCOVERX`) USING BTREE,
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `FOCOVERX` (`FOCOVERX`);
COMMIT;
