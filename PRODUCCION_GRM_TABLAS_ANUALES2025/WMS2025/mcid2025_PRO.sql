

CREATE TABLE `mcid2025` (
  `idingxxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `usridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaing` date NOT NULL COMMENT 'Fecha ingreso',
  `horaingx` time NOT NULL COMMENT 'Hora ingreso',
  `tipoauto` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de autorizacion',
  `fechasal` date NOT NULL,
  `horasalx` time NOT NULL,
  `contaces` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ingreso/Salida Deposito',
  `autoitxx` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'quien autoriza it',
  `historia` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Historial Ingresos Deposito',
  `otrovisi` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otro Visitante',
  `observac` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones ',
  `dtrxxxxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `tramitex` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite a Realizar en la Bodega',
  `otrotram` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otro Tramite',
  `autorixx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la persona que autoriza el ingreso al deposito',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Movimiento de entradas al deposito';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mcid2025`
--
ALTER TABLE `mcid2025`
  ADD PRIMARY KEY (`idingxxx`,`usridxxx`);
COMMIT;


