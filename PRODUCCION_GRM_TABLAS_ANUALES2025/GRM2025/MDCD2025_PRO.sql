
CREATE TABLE `MDCD2025` (
  `DOCNROXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `IPCIDXXX` int(10) NOT NULL COMMENT 'Id Informacion Pendiente del Cliente',
  `IPCFECXX` date NOT NULL COMMENT 'Fecha Informacion Pendiente Cliente',
  `IPCFECCI` date NOT NULL COMMENT 'Fecha Cierre Informacion Pendiente Cliente',
  `IPCHORCI` time NOT NULL COMMENT 'Hora de Cierre',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos Especificos por DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDCD2025`
--
ALTER TABLE `MDCD2025`
  ADD PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`IPCIDXXX`) USING BTREE;
COMMIT;
