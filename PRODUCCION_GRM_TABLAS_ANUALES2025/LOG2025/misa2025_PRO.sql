

CREATE TABLE `misa2025` (
  `esiddocx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Salida',
  `escoddoc` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Salida',
  `escscdoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Salida',
  `idembala` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Embalaje',
  `idempaqe` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empaque',
  `esiddocs` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Entrada',
  `escodocs` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Entrada',
  `escsdocs` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Entrada',
  `refproid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia Producto',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cliente',
  `itemsqxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sequencia item',
  `saldoxxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Saldo Disponible',
  `cantidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad Retirada',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  `proyecid` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Control Inventario salida';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `misa2025`
--
ALTER TABLE `misa2025`
  ADD PRIMARY KEY (`esiddocx`,`escoddoc`,`escscdoc`,`refproid`,`itemsqxx`,`idembala`,`idempaqe`,`escsdocs`);
COMMIT;

