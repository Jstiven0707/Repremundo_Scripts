

CREATE TABLE `MDTD2025` (
  `MDTDIDXX` int(9) NOT NULL COMMENT 'Id del Documento',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `MDTDTIPX` enum('FACTURA IMPORTACION','FACTURA EXPORTACION','DOCUMENTO DE TRANSPORTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Documento',
  `PIEIDXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Proveedor en Open',
  `TRAIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Transportadora en Open',
  `MDTDCCXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si es carga consolidada',
  `MDTDNODO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Path del doc a blanco y negro',
  `MDTDOBSX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Respuesta del servicio de open',
  `MDTDANSX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ANS',
  `IDARCHXX` bigint NOT NULL COMMENT 'Id archivo Original',
  `NUMFACTU` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Agendamiento de Documentos a BPO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTD2025`
--
ALTER TABLE `MDTD2025`
  ADD PRIMARY KEY (`MDTDIDXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MDTD2025`
--
ALTER TABLE `MDTD2025`
  MODIFY `MDTDIDXX` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Id del Documento';
COMMIT;

ALTER TABLE MDTD2025
MODIFY COLUMN `IDARCHXX` bigint NOT NULL COMMENT 'Id archivo Original';


