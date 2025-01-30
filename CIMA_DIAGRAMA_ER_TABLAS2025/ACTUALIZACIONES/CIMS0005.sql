
CREATE TABLE `CIMS0005` (
  `MODIDXXX` int NOT NULL COMMENT 'ID DEL MODULO',
  `PROIDXXX` int NOT NULL COMMENT 'ID del proceso',
  `MENIDXXX` int NOT NULL COMMENT 'ID de la opcion de menu',
  `OPCDESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion de la opcion de menu',
  `TIPMENUX` enum('','OPCION','SECCION','BOTON','PLANTILLA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ipo de opcion de menu',
  `MENUICOX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'icono de la opcion de menu de tipo funcion',
  `MENORDXX` int NOT NULL COMMENT 'Campo de Ordenamiento',
  `BANSECPR` enum('','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI ES LA SECCION PRINCIPAl',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPCIONES DE MENU CIMA' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIMS0005`
--
ALTER TABLE `CIMS0005`
  ADD PRIMARY KEY (`MODIDXXX`,`PROIDXXX`,`MENIDXXX`) USING BTREE,
  ADD KEY `MODIDXXX` (`MODIDXXX`) USING BTREE,
  ADD KEY `PROIDXXX` (`PROIDXXX`) USING BTREE;
COMMIT;


-- ACTUALIZACION DICCIONARIO

ALTER TABLE `CIMS0005`
ADD COLUMN `MENAPLBA` ENUM('', 'SI', 'NO') NOT NULL DEFAULT '' COMMENT 'Bandera que indica si aplica banner'
AFTER `BANSECPR`;