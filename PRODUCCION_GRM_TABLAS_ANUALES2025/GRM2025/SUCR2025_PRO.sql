
CREATE TABLE `SUCR2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Do',
  `TIPINSIC` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Inspeccion ICA',
  `TIPINSIV` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Inspeccion Invima',
  `TIPINSDN` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Inspeccion Dian',
  `RECDOCFE` date NOT NULL COMMENT 'Fecha Recepcion Documento de Transporte',
  `RECDOCHR` time NOT NULL COMMENT 'Hora Recepcion Documento de Transporte',
  `FECRECIN` date NOT NULL COMMENT 'Fecha de Recibido Instruccion',
  `HORRECIN` time NOT NULL COMMENT 'Hora de Recibido Instruccion',
  `FECRETRA` date NOT NULL COMMENT 'Fecha revisión Documento de transporte',
  `HORRETRA` time NOT NULL COMMENT 'Hora revisión Documento de transporte',
  `FECDOCOR` date NOT NULL COMMENT 'Fecha Recepción Documentos originales',
  `HORDOCOR` time NOT NULL COMMENT 'Hora Recepción documentos proveedor completo',
  `FECREPRO` date NOT NULL COMMENT 'Fecha revisión documentos (proveedor)',
  `HORREPRO` time NOT NULL COMMENT 'Hora revisión documentos proveedor)',
  `FEREVDOC` date NOT NULL COMMENT 'Fecha Revisión Documentos',
  `HOREVDOC` time NOT NULL COMMENT 'Hora Revisión Documentos',
  `FECPRECO` date NOT NULL COMMENT 'Fecha Precosteo',
  `HORPRECO` time NOT NULL COMMENT 'Hora Precosteo',
  `DESCNARC` enum('','ESCANER','FISICA','AUTOMATICA','DOCUMENTAL') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Inspeccion Antinarcoticos',
  `BULTAVER` int(9) NOT NULL COMMENT 'Bultos Averiados',
  `APCERORI` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Certificado Origen',
  `NOMTRANS` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Transporte Terrestre',
  `FECENTVE` date NOT NULL COMMENT 'Fecha Entrega Datos Vehiculo',
  `HORENTVE` time NOT NULL COMMENT 'Hora Entrega Datos Vehiculo',
  `FECENTPL` date NOT NULL COMMENT 'Fecha Entrega Planilla',
  `HORENTPL` time NOT NULL COMMENT 'Hora Entrega Planilla',
  `FECPREDO` date NOT NULL COMMENT 'Fecha Presentacion Cierre Documental',
  `HORPREDO` time NOT NULL COMMENT 'Hora Presentacion Cierre Documental',
  `CERORICO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado Origen Corregido',
  `REGUSRXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos generales Operaciones Sucroal';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SUCR2025`
--
ALTER TABLE `SUCR2025`
  ADD PRIMARY KEY (`DOCNROXX`);
COMMIT;


