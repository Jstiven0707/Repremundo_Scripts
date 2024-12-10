

CREATE TABLE `ITRF2025` (
  `EMPNITXX` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id empresa',
  `NUMREQXX` bigint(20) NOT NULL COMMENT 'Número de requisición',
  `ITFACSQX` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia Archivo',
  `GENNODOX` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Nodo Principal',
  `SECNODOX` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Nodo Hijo',
  `FIDNODOX` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Archivo Asociado',
  `ATMNFILX` enum('SI','NO') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Bandera de archivos asociados',
  `FACDESLI` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Archivo',
  `FACLINKX` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Link Archivo',
  `REGUSRXX` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registro de Archivos para Requisicion y Orden de Servicio Modulo Facturas' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITRF2025`
--
ALTER TABLE `ITRF2025`
  ADD PRIMARY KEY (`EMPNITXX`,`NUMREQXX`,`ITFACSQX`) USING BTREE;
COMMIT;


