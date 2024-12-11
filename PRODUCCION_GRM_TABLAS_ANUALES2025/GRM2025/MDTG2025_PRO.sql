

CREATE TABLE `MDTG2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `NRONODOX` int(11) NOT NULL COMMENT 'Numero del nodo en Genio',
  `NROPAQXX` int(11) NOT NULL COMMENT 'Numero del paquete',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT DEL CLIENTE',
  `CANTIMAX` int(11) NOT NULL COMMENT 'Cantidad de imagenes encontradas',
  `OBSROBTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'observacion del robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','ERROR','EN PROCESO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla que controla el proceso de pasar los paquetes de SYC a Genio' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTG2025`
--
ALTER TABLE `MDTG2025`
  ADD PRIMARY KEY (`DOCNROXX`,`NRONODOX`) USING BTREE;
COMMIT;


