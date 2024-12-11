
CREATE TABLE `MDEF2025` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `DOCSUFXX` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'sufijo del DO',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Del Do',
  `SUBDOXXX` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Asunto del DO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Control de Envio por Operacion por envio de correo de facturacion electronica' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDEF2025`
--
ALTER TABLE `MDEF2025`
  ADD PRIMARY KEY (`DOCNROXX`,`DOCSUFXX`,`SUCIDXXX`,`SUBDOXXX`) USING BTREE;
COMMIT;


