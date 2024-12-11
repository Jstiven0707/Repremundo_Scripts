

CREATE TABLE `DSVS2025` (
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `SECITEXX` int(3) NOT NULL COMMENT 'Secuencia del Item',
  `SERITEXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Seriales del item',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SALDOS DE FACTURA CLIENTE, FACTURA, ITEM VS SERIALES' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSVS2025`
--
ALTER TABLE `DSVS2025`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`,`SERITEXX`) USING BTREE;
COMMIT;
