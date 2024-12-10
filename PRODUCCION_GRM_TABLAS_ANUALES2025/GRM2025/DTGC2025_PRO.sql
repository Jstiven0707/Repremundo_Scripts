
CREATE TABLE `DTGC2025` (
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTGCIDXX` int(9) NOT NULL COMMENT 'ID Secuencia del gasto',
  `DRTCCAAD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargos Adicionales',
  `DRTCTARI` decimal(10,5) NOT NULL COMMENT 'Tarifa',
  `DRTCUNID` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad',
  `DRTCMOGA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Moneda del Gasto',
  `DRTCFRPG` decimal(10,5) NOT NULL COMMENT 'Forma de pago del gasto (Prepaid)',
  `DRTCFOPC` decimal(10,5) NOT NULL COMMENT 'Forma de pago del gasto (Collect)',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Gastos por Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTGC2025`
--
ALTER TABLE `DTGC2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTGCIDXX`) USING BTREE;
COMMIT;


