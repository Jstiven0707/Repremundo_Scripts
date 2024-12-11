

CREATE TABLE `mcid2025` (
  `idingxxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `usridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecanunc` date NOT NULL COMMENT 'Fecha de anuncio',
  `horanunc` time NOT NULL COMMENT 'Hora de anuncio',
  `fechaing` date NOT NULL COMMENT 'Fecha ingreso',
  `horaingx` time NOT NULL COMMENT 'Hora ingreso',
  `fechasal` date NOT NULL,
  `horasalx` time NOT NULL,
  `contaces` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ingreso/Salida Deposito',
  `historia` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Historial Ingresos Deposito',
  `observac` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones ',
  `tramitex` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite a Realizar en la Bodega',
  `placaxxx` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa',
  `cantpiez` int(11) NOT NULL COMMENT 'Cantidad de piezas/bultos',
  `empidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id empresa transportadora',
  `empdesxx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nom empresa transportadora',
  `consecxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lista de consecutivos a salir',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registro de E y S de vehiculos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mcid2025`
--
ALTER TABLE `mcid2025`
  ADD PRIMARY KEY (`idingxxx`,`usridxxx`);
COMMIT;

