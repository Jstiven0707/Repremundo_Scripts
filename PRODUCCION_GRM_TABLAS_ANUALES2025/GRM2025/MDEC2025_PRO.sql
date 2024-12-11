
CREATE TABLE `MDEC2025` (
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero DO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Cliente',
  `ESIDDOCX` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento de entrada',
  `ESCODDOC` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Entrada',
  `NROPEDXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de pedido',
  `PIEZASXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de Piezas',
  `PESOTODO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Total Documental',
  `PESOTOFI` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Total Fisico',
  `AGENADUA` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agencia de Aduanas',
  `AEROLINE` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aerolinea',
  `NRORDENX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Orden',
  `NROFACTU` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de factura',
  `PLANTAXX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plantas',
  `MOTIVOID` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motivo de Entrada',
  `USRIDXXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Quien recibe mercancia',
  `USUENTID` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Quien entrega mercancia',
  `APLSIACO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica siaco',
  `TIPOTRAN` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Transporte',
  `CONENTME` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Conductor Entrega',
  `EMTRANID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Empresa Transportadora',
  `PLACAVEH` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa de Vehiculo',
  `CONDUCID` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de documento del conductor que entrega',
  `PQNOAPLI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Por Que no aplica transporte',
  `TOTALEMB` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Total embalajes que ingresan',
  `VERCHQME` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Verifico y chequeo mercancia',
  `VERANAME` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Verifico y analizo mercancia',
  `ESTSALID` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de salida',
  `MASIVOXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Masivo',
  `AGENCIAX` int(11) NOT NULL COMMENT 'Agencia',
  `TRANSINT` int(11) NOT NULL COMMENT 'Aerolinea',
  `FEAUTMAN` date NOT NULL COMMENT 'Fecha Autorizacion de Orden',
  `HOAUTMAN` time NOT NULL COMMENT 'Hora Autorizacion de Orden',
  `OBSERVAX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `TOKIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tipo Operacion KPI',
  `DOCFCREE` date NOT NULL COMMENT 'Fecha Valida para la creación de la entrada',
  `BANFECRL` enum('SI','NO','OK','NA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera Pendiente, Tiene fecha real, Se creo entrada, No se puede crear entrada',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que ingresa el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera ingresos' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDEC2025`
--
ALTER TABLE `MDEC2025`
  ADD PRIMARY KEY (`DOCNROXX`,`NROPEDXX`,`ESIDDOCX`,`ESCODDOC`) USING BTREE;
COMMIT;


