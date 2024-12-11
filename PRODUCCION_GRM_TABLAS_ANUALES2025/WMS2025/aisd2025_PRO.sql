

CREATE TABLE `aisd2025` (
  `idarchad` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de archivo',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `consecxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso y salida del documento',
  `secuenxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Archivos adjuntos',
  `tipoxxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de registro',
  `rutaxxxx` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta del registro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Adjuntos ingreso y salida de deposito';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aisd2025`
--
ALTER TABLE `aisd2025`
  ADD PRIMARY KEY (`idarchad`,`secuenxx`);
COMMIT;


