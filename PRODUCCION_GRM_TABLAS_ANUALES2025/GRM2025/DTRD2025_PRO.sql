

CREATE TABLE `DTRD2025` (
  `DTRDSCIT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `DTRDREFX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia / SKU',
  `DTRDDEME` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Mercancia',
  `DTRDBULT` decimal(18,5) NOT NULL COMMENT 'Bultos',
  `UNIBULTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Bultos',
  `DTRDPEBR` decimal(18,5) NOT NULL COMMENT 'Peso Bruto',
  `UNPEBULT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Peso Bruto',
  `DTRDCUBI` decimal(18,5) NOT NULL COMMENT 'Cubicaje',
  `UNICUBIX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Cubicaje',
  `DTRDNUOC` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Orden Compra',
  `DTRDNUPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Pedido',
  `DTRDSUBP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartidas',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle por Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTRD2025`
--
ALTER TABLE `DTRD2025`
  ADD PRIMARY KEY (`DTRDSCIT`,`DTRCNICO`,`DTRCDOTR`) USING BTREE;
COMMIT;


