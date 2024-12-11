

CREATE TABLE `DTIP2025` (
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRPEDXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido',
  `DTRDSCIT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Pedidos por Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTIP2025`
--
ALTER TABLE `DTIP2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTRPEDXX`,`DTRDSCIT`) USING BTREE;
COMMIT;

