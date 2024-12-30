

CREATE TABLE `DOCE2025` (
  `IDARCHXX` bigint NOT NULL COMMENT 'ID DEL ARCHIVO',
  `METIDXXX` varchar(20) NOT NULL COMMENT 'NOMBRE MAQUINA DEL METADATO (GEST0004)',
  `DOCEIDXX` bigint NOT NULL COMMENT 'INICIA EN 100 POR CADA IDARC',
  `DOCEVALX` tinytext NOT NULL COMMENT 'VALOR',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Paquete tipificados gestor documenta vs metadatos excel';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOCE2025`
--
ALTER TABLE `DOCE2025`
  ADD PRIMARY KEY (`IDARCHXX`,`DOCEIDXX`);
COMMIT;

