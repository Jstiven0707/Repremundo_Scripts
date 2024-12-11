

CREATE TABLE `mani2025` (
  `maniidxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Manifiesto',
  `manifecx` date NOT NULL COMMENT 'Fecha de Manifiesto',
  `manisede` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sede Mani',
  `manititu` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del titular ',
  `manidocu` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Titular',
  `maniplac` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa',
  `manifecv` date NOT NULL COMMENT 'Fecha Vencimiento de Pago',
  `manitipp` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Pago',
  `manivalx` decimal(8,0) NOT NULL COMMENT 'Valor Cancelar Manifiesto',
  `valflete` decimal(8,0) NOT NULL COMMENT 'Valor Flete Manifiesto',
  `aplifact` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturacion Electronica',
  `maniprio` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prioridad',
  `manicomp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Comprobante',
  `maniobse` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `docucons` tinyint(1) NOT NULL COMMENT 'Consolidados de documentos',
  `manirpax` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica RPA',
  `idarchxx` int(10) NOT NULL COMMENT 'Id archivo gestor',
  `aprobliq` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Liquidacion que aprueba',
  `fecapliq` date NOT NULL COMMENT 'Fecha de Aprobacion Liquidacion',
  `horapliq` time NOT NULL COMMENT 'Hora Aprobacion Liquidacion',
  `aprobtes` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Tesoreria que aprueba',
  `fecaptes` date NOT NULL COMMENT 'Fecha de Aprobacion Tesoreria',
  `horaptes` time NOT NULL COMMENT 'Hora Aprobacion Tesoreria',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manifiestos de Silotrans';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mani2025`
--
ALTER TABLE `mani2025`
  ADD PRIMARY KEY (`maniidxx`);
COMMIT;


