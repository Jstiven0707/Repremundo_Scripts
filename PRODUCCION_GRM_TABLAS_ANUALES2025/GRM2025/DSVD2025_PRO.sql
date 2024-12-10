

CREATE TABLE `DSVD2025` (
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `SECITEXX` int(3) NOT NULL COMMENT 'Secuencia del Item',
  `SECITE2X` int(6) NOT NULL COMMENT 'Secuencia 2 del Item',
  `PROIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del producto',
  `PROID2XX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de producto dos',
  `PRODESFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion segun factura',
  `SUBIDSUG` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartida sugerida',
  `PAIDORXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del pais',
  `ESTMERXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la mercancia',
  `CODESTID` int(9) NOT NULL COMMENT 'Id del estado de la mercancia',
  `ANIOFABX` int(5) NOT NULL COMMENT 'Año de fabricacion',
  `FPIIDXXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo forma de pago',
  `CANDAVXX` int(10) NOT NULL COMMENT 'Cantidad Dav',
  `UNIIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la unidad',
  `CANITEXX` int(10) NOT NULL COMMENT 'Cantidad',
  `VALUNIIT` decimal(10,5) NOT NULL COMMENT 'Valor unitario',
  `VALTOTIT` decimal(10,5) NOT NULL COMMENT 'Valor total',
  `PESBRUIT` decimal(10,5) NOT NULL COMMENT 'Peso bruto',
  `PESNETIT` decimal(10,5) NOT NULL COMMENT 'Peso neto',
  `ORDCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden de compra',
  `PEDITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido del item',
  `FOBGASIT` decimal(10,5) NOT NULL COMMENT 'Valor fob Gastos facturados',
  `FLEGASIT` decimal(10,5) NOT NULL COMMENT 'Valor flete gastos facturados',
  `CONGASIT` decimal(10,5) NOT NULL COMMENT 'valor conexos Gastos facturados',
  `SEGGASIT` decimal(10,5) NOT NULL COMMENT 'Valor seguro Gastos facturados',
  `VARGASIT` decimal(10,5) NOT NULL COMMENT 'Valor varios Gastos facturados',
  `NOMCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre comercial',
  `MARCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Marca',
  `TIPITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo',
  `CLAITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Clase',
  `MODITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modelo',
  `REFITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia',
  `OTRITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otras caracteristicas',
  `BATNUMXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Batch Number',
  `INFADIIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Informacion adicional del item',
  `DELNOTIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Delivery Note',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Saldo de Factura' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSVD2025`
--
ALTER TABLE `DSVD2025`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`) USING BTREE;
COMMIT;


