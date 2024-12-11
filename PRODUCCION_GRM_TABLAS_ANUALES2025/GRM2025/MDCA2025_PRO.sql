

CREATE TABLE `MDCA2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DEL DO',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SUFIJO DEL DO',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SUCURSAL DEL DO',
  `MDCCSEGX` int(11) NOT NULL COMMENT 'SECUENCIA DEL CORREO',
  `MDCASECA` int(11) NOT NULL COMMENT 'SECUENCIA DEL ADJUNTO DEL CORREO ',
  `MDCAPATH` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'PATH DEL ADJUNTO',
  `MDCANOGE` int(11) NOT NULL COMMENT 'ID DEL NODO EN GENIO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','CARGADO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='operacion por correo por adjuntos' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDCA2025`
--
ALTER TABLE `MDCA2025`
  ADD PRIMARY KEY (`DOCNROXX`,`MDCCSEGX`,`MDCASECA`) USING BTREE;
COMMIT;


