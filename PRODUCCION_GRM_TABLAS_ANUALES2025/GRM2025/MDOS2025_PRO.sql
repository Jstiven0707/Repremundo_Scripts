

CREATE TABLE `MDOS2025` (
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTDEXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DOCCLASE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DOCCLOXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `COMIDXXX` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `COMCODXX` decimal(3,0) NOT NULL,
  `CCOIDXXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo',
  `SUBCCOID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subcentro de Costo',
  `PUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DOIPEDXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Pedido',
  `DOTEMPXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'El DO es temporal?',
  `DOCITEMS` int(11) NOT NULL COMMENT 'Items asignados',
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ANALNITX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula de Analista',
  `CENCEASY` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo para Cencosud o EASY',
  `IMPIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Comprador en el Exterior',
  `CCOID2XX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFORMS` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOCRECXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Porcentaje que aplica la verificacion  a la carga.',
  `DOCACTAX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DOCANUXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Anulacion DO',
  `DOCDDXXX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Condiciones Especiales',
  `DOCHIAXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Horas Antinarcoticos',
  `DOCASAXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hora Rec DTA',
  `DOCCLAXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCNDEXA` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero DEX Anterior',
  `DOCFDEXA` date NOT NULL COMMENT 'Fecha DEX Anterior',
  `DOCHDEXA` time NOT NULL COMMENT 'Hora DEX Anterior',
  `DOCFMAXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFRSXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFSAXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSANTX` decimal(15,2) NOT NULL,
  `DOCSPCCX` decimal(15,2) NOT NULL,
  `DOCSFORM` decimal(15,2) NOT NULL,
  `DOCSFACX` decimal(15,2) NOT NULL,
  `DOCSRCMP` decimal(15,2) NOT NULL,
  `DOCSRCMD` decimal(15,2) NOT NULL,
  `DORPADAV` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Robot DAV',
  `DOCFCODX_OLD` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFCSCX_OLD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFVLRT_OLD` decimal(15,2) NOT NULL,
  `DOCFTRIX_OLD` decimal(15,2) NOT NULL,
  `DOCFPCCX_OLD` decimal(15,2) NOT NULL,
  `DOCFANTX_OLD` decimal(15,2) NOT NULL,
  `DOCMTXXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTIPTI` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Transporte Internacional',
  `FECPROVE` date NOT NULL COMMENT 'Fecha de Programacion de Vehiculos Zara',
  `HORPROVE` time NOT NULL COMMENT 'Hora de Programacion de Vehiculos Zara',
  `DOCRDTAX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Quien realiza DTA',
  `DOCFSEXX` date NOT NULL,
  `DOCHSEXX` time NOT NULL,
  `DOCFLDXX` date NOT NULL,
  `DOCHLDXX` time NOT NULL,
  `DOCMOSLX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultima Observacion GRM',
  `DOCSELXX` date NOT NULL COMMENT 'Fecha del Ultima Observacion',
  `DOCBLMXX` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `DOCBLHXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DOCFEDRA` date NOT NULL,
  `DOCHEDRA` time NOT NULL,
  `DOCFDRYA` date NOT NULL,
  `DOCHDRYA` time NOT NULL,
  `DOCOBSXX` text COLLATE utf8_unicode_ci NOT NULL,
  `DOCATVLX` decimal(17,2) NOT NULL COMMENT 'Valor Autoriacion Tramite Sin Anticipo',
  `DOCAFVLX` decimal(17,2) NOT NULL COMMENT 'Valor Autorizacion Tramite Hasta Factura',
  `DOCCRVLX` decimal(17,2) NOT NULL COMMENT 'Cupo Reservado Pago en Bancos',
  `AUTAUSRX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Autoriza Tramite Sin Anticipo',
  `AUTFUSRX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Autoriza Tramite Hasta Factura',
  `DOCARMXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'AUTORIZACION RECONOCIMIENTO DE MERCANCIA',
  `DOCMTRAX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia en Transito Expo',
  `DOCADMON` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Administracion Aduana Expo',
  `DOCADEMX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Administracion Embarque Expo',
  `SISTESPE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Sistemas Especiales Expo',
  `DOCCOTRX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Reposicion Expo',
  `DOCPVXXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plan Vallejo Expo',
  `FECPLVAX` date DEFAULT NULL COMMENT 'Fecha de envió plan vallejo',
  `HORPLVAX` time DEFAULT NULL COMMENT 'HORA DEL PLAN VALLEJO',
  `DOCCORXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado de Origen Expo',
  `DOSOACEM` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Elaboracion de SAE',
  `DONROSAE` int(4) DEFAULT NULL COMMENT 'Número de SAES',
  `DONROPLA` int(4) DEFAULT NULL COMMENT 'Número de Planillas',
  `OINIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oficina Incomex Expo',
  `DOCFMETX` date NOT NULL COMMENT 'Fecha Max Entr al Trans - Llegada Frontera Expo',
  `DOCHMETX` time NOT NULL COMMENT 'Hora Max Entr al Trans - Llegada Frontera Expo',
  `DOCDFMET` date NOT NULL COMMENT 'FD Fecha Max Entr al Trans - Llegada Frontera Expo',
  `DOCDHMET` time NOT NULL COMMENT 'HD Fecha Max Entr al Trans - Llegada Frontera Expo',
  `DOCDUMET` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Max Entr al Trans - Llegada Frontera Expo',
  `TRANIDXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador Expo o Naviera Importacion',
  `DOCNUTRA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte Expo',
  `DOCFNUTR` date NOT NULL COMMENT 'Fecha Documento de Transporte Expo',
  `DOCHNUTR` time NOT NULL COMMENT 'Hora Documentos de transporte Expo',
  `DOCFELMX` date NOT NULL COMMENT 'Fecha Estimada Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCHELMX` time NOT NULL COMMENT 'Hora Estimada Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCPASAL` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de salida expo',
  `DOCCISAL` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad de salida de expo',
  `DOCFESFA` date NOT NULL COMMENT 'Fecha estimada de salida de fabrica de expo',
  `DOCVALFL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor flete de expo',
  `DOCNFAFL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero factura de flete de expo',
  `DOCFEMFC` date NOT NULL COMMENT 'Fecha de envio mail factura de expo',
  `DOCHEMFC` time NOT NULL COMMENT 'Hora de envio mail factura de expo',
  `DOCFEMBL` date NOT NULL COMMENT 'Fecha de envio mail BL de expo',
  `DOCHEMBL` time NOT NULL COMMENT 'Hora de envio mail BL de expo',
  `DOCFCOEN` date NOT NULL COMMENT 'Fecha de confirmacion de entrega de expo',
  `DOCHCOEN` time NOT NULL COMMENT 'Hora de confirmacion de entrega de expo',
  `DOCFRABL` date NOT NULL COMMENT 'Fecha rad BL de expo',
  `DOCFZARP` date NOT NULL COMMENT 'Fecha de zarpe de expo',
  `DOCFEADE` date NOT NULL COMMENT 'Fecha estimada de arribo de expo',
  `DOCDFELM` date NOT NULL COMMENT 'FD Fecha Estimada Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCDHELM` time NOT NULL COMMENT 'HD Fecha Estimada Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCDUELM` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Estimada Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCFRLMX` date NOT NULL COMMENT 'Fecha Real Arribo',
  `HORFRLMX` time NOT NULL COMMENT 'Hora Real llegada',
  `DOCHRLMX` time NOT NULL COMMENT 'Hora Real Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCDFRLM` date NOT NULL COMMENT 'FD Fecha Real Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCDHRLM` time NOT NULL COMMENT 'HD Fecha Real Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCDURLM` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Real Llegada de mcia a Frontera, puerto, Aeropuerto.',
  `DOCFCLVX` date NOT NULL COMMENT 'Fecha de Confirmacion de Llegada del Vehiculo',
  `DOCHCLVX` time NOT NULL COMMENT 'Hora de Confirmacion de Llegada del Vehiculo',
  `DOCDFCLV` date NOT NULL COMMENT 'FD Fecha de Confirmacion de Llegada del Vehiculo',
  `DOCDHCLV` time NOT NULL COMMENT 'HD Fecha de Confirmacion de Llegada del Vehiculo',
  `DOCDUCLV` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha de Confirmacion de Llegada del Vehiculo',
  `DOCFESVX` date NOT NULL COMMENT 'Fecha Estimada de Salida de Viaje',
  `DOCFRSVX` date NOT NULL COMMENT 'Fecha Real de Salida de Viaje',
  `DOCSIEMB` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si Hubo Embarque',
  `DOCSIRES` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si Hubo Reserva',
  `DOCTIPTR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Carga Expo',
  `DOCFEUSX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Feus Expo',
  `DOCTEUSX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Teus Expo',
  `DOCPESOX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Expo',
  `DOCVOLXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Volumen Expo',
  `DOCPESDI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Disponible de consulta Inventario',
  `DOCCANDI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad Disponible de consulta de inventario',
  `DOCFECON` text COLLATE utf8_unicode_ci COMMENT 'Info. Contenedores 40',
  `BOOKINGX` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Booking',
  `DOCEDTXX` date NOT NULL COMMENT 'EDT',
  `DOCFECAR` date NOT NULL COMMENT 'Fecha de solicitud de cargue',
  `DOCFEDES` date NOT NULL COMMENT 'Fecha de descargue',
  `DOCFEMOV` date NOT NULL COMMENT 'Fecha de solicitud de movilizacion de contenedores',
  `DOCFERVA` date NOT NULL COMMENT 'Fecha del retiro del vacio',
  `DOCFEILL` date NOT NULL COMMENT 'Fecha de inspeccion y llenado de contenedores',
  `DOCFEENN` date NOT NULL COMMENT 'Fecha de entrega a la naviera',
  `DOCFEPAF` date NOT NULL COMMENT 'Fecha de paso de frontera entrega a la aerolinea',
  `DOCTECON` text COLLATE utf8_unicode_ci COMMENT 'Info. Contenedores 20',
  `DOCCVHXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de Vehiculos Expo',
  `DOCPLACX` text COLLATE utf8_unicode_ci COMMENT 'Placas de Vehículos Expo',
  `DOCOBSGX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Generales Expo',
  `DOCFDCXX` date NOT NULL COMMENT 'Fecha Documentos Expo',
  `DOCHDCXX` time NOT NULL COMMENT 'Hora Documentos Expo',
  `DOCDFDCX` date NOT NULL COMMENT 'FD Fecha Documentos Expo',
  `DOCDHDCX` time NOT NULL COMMENT 'HD Fecha Documentos Expo',
  `DOCDUDCX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Documentos Expo',
  `DOCFIEXX` date NOT NULL COMMENT 'Fecha Instruccion Expo',
  `DOCHIEXX` time NOT NULL COMMENT 'Hora Instruccion Expo',
  `DOCDFIEX` date NOT NULL COMMENT 'FD Fecha Instruccion Expo',
  `DOCDHIEX` time NOT NULL COMMENT 'HD Fecha Instruccion Expo',
  `DOCDUIEX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Instruccion Expo',
  `DOCFCIDX` date NOT NULL COMMENT 'Fecha Cierre Documental Expo',
  `DOCHCIDX` time NOT NULL COMMENT 'Hora Cierre Documental Expo',
  `DOCDFCID` date NOT NULL COMMENT 'FD Fecha Cierre Documental Expo',
  `DOCDHCID` time NOT NULL COMMENT 'HD Fecha Cierre Documental Expo',
  `DOCDUCID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Cierre Documental Expo',
  `DOCFCIFX` date NOT NULL COMMENT 'Fecha Cierre Fisico Expo',
  `DOCHCIFX` time NOT NULL COMMENT 'Hora Cierre Fisico Expo',
  `DOCDFCIF` date NOT NULL COMMENT 'FD Fecha Cierre Fisico Expo',
  `DOCDHCIF` time NOT NULL COMMENT 'HD Fecha Cierre Fisico Expo',
  `DOCDUCIF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Cierre Fisico Expo',
  `DOCPADEX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais Llegada - Destino Expo',
  `CODEPCIU` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Código del Departamento Destino Expo',
  `DOCCDEXP` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad Llegada - Destino Expo',
  `MOTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motonave Expo',
  `DOCFRSMX` date NOT NULL COMMENT 'Fecha Real Salida de Motonave',
  `DOCHRSMX` time NOT NULL COMMENT 'Hora Real Salida de Motonave',
  `AGEIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente de Carga Expo',
  `DOCMCUBX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Metros Cubicos',
  `DESVERCA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion de Verificación a la Carga ',
  `DOCNCART` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Carta Porte Expo',
  `DOCFCART` date NOT NULL COMMENT 'Fecha Carta Porte Expo',
  `DOCHCART` time NOT NULL COMMENT 'Hora Carta Porte Expo',
  `DOCDFCAR` date NOT NULL COMMENT 'FD Fecha Carta Porte Expo',
  `DOCDHCAR` time NOT NULL COMMENT 'HD Fecha Carta Porte Expo',
  `DOCDUCAR` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Carta Porte Expo',
  `DOCNAFOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Acta Aforo Expo',
  `DOCFAFOX` date NOT NULL COMMENT 'Fecha Acta Aforo Expo',
  `DOCHAFOX` time NOT NULL COMMENT 'Hora Acta Aforo Expo',
  `DOCEMBXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Procede Embarque Expo',
  `DOCDFAFO` date NOT NULL COMMENT 'FD Fecha Acta Aforo Expo',
  `DOCDHAFO` time NOT NULL COMMENT 'HD Fecha Acta Aforo Expo',
  `DOCDUAFO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Acta Aforo Expo',
  `DOCNRCOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Radicado Certificado Origen Expo',
  `DOCFRCOX` date NOT NULL COMMENT 'Fecha Radicado Certificado Origen Expo',
  `DOCHRCOX` time NOT NULL COMMENT 'Hora Radicado Certificado Origen Expo',
  `DOCDFRCO` date NOT NULL COMMENT 'FD Fecha Radicado Certificado Origen Expo',
  `DOCDHRCO` time NOT NULL COMMENT 'HD Fecha Radicado Certificado Origen Expo',
  `DOCDURCO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Radicado Certificado Origen Expo',
  `DOCFERFX` date NOT NULL COMMENT 'Fecha Estimada de Retiro Fisico Co - Expo',
  `DOCHERFX` time NOT NULL COMMENT 'Hora Estimada de Retiro Fisico Co - Expo',
  `DOCDFERF` date NOT NULL COMMENT 'FD Fecha Estimada de Retiro Fisico Co - Expo',
  `DOCDHERF` time NOT NULL COMMENT 'HD Fecha Estimada de Retiro Fisico Co - Expo',
  `DOCDUERF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Estimada de Retiro Fisico Co - Expo',
  `DOCFRRFX` date NOT NULL COMMENT 'Fecha Real Retiro Fisico CO - Expo',
  `DOCHRRFX` time NOT NULL COMMENT 'Hora Real Retiro Fisico CO - Expo',
  `DOCDFRRF` date NOT NULL COMMENT 'FD Fecha Real Retiro Fisico CO - Expo',
  `DOCDHRRF` time NOT NULL COMMENT 'HD Fecha Real Retiro Fisico CO - Expo',
  `DOCDURRF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Real Retiro Fisico CO - Expo',
  `DOCRECLX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retira Certificado de Origen el Cliente.',
  `DOCEMCLX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Correos Electronicos Enviados para el Retiro del Certificado',
  `DOCFRCFX` date NOT NULL COMMENT 'Fecha Radicado Cierre Fisico',
  `DOCHRCFX` time NOT NULL COMMENT 'Hora Radicado Cierre Fisico',
  `DOCDFRCF` date NOT NULL COMMENT 'FD Radicado Cierre Fisico',
  `DOCDHRCF` time NOT NULL COMMENT 'HD Radicado Cierre Fisico',
  `DOCDURCF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Radicado Cierre Fisico',
  `DOCFRCDX` date NOT NULL COMMENT 'Fecha Radicado Cierre Documental',
  `DOCHRCDX` time NOT NULL COMMENT 'Hora Radicado Cierre Documental',
  `DOCDFRCD` date NOT NULL COMMENT 'FD Radicado Cierre Documental',
  `DOCDHRCD` time NOT NULL COMMENT 'HD Radicado Cierre Documental',
  `DOCDURCD` text COLLATE utf8_unicode_ci,
  `DOCTRIMP` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Doc Transporte Importacion',
  `DOCFABLI` date NOT NULL COMMENT 'Fecha de Corte  BL Impo',
  `DOCTIPCA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga Impo',
  `APLIAGEN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BANDERA SI APLICA AGENTE DE CARGA',
  `DOCAGCAR` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente de Carga Impo',
  `LINIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Linea Importacion',
  `VIAIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Viaje Impo',
  `BANIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Bandera',
  `DOSIERXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Carga suelta',
  `MUEIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Muelle Impo',
  `DOCTIPCI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga Impo',
  `DOCTEUSI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Teus Impo',
  `DOCFEUSI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Feus Impo',
  `DOCFECDL` date NOT NULL COMMENT 'Fecha de Deslocalizacion',
  `DOCHORDL` time NOT NULL COMMENT 'Hora de deslocalizacion',
  `DOCFECLD` date NOT NULL COMMENT 'Fecha de Localizacion',
  `DOCHORLD` time NOT NULL COMMENT 'Hora de Localizacion',
  `DOCFBLHI` date NOT NULL COMMENT 'Fecha BL Hijo',
  `DOCHBLHI` time NOT NULL COMMENT 'Hora BL Hijo',
  `DOCFBLMA` date NOT NULL COMMENT 'Fecha BL Master',
  `DOCHBLMA` time NOT NULL COMMENT 'Hora BL Master',
  `DOCFBLDI` date NOT NULL COMMENT 'Fecha BL Directo',
  `DOCHBLDI` time NOT NULL COMMENT 'Hora BL Directo',
  `DOCAPEXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do Aperturable por Contabilidad despues de facturado',
  `DOCNEWXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Switch de Creacion Do',
  `DOCTIPDE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Declaracion',
  `DOCDOANT` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do Anterior',
  `DOCJURAD` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jurisdiccion Administrativa',
  `DOCJURAO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jurisdiccion Aduanera Origen',
  `DOCTYENS` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Transformacion y Ensamble',
  `DOCFELEV` date NOT NULL COMMENT 'Fecha de Levante',
  `DOCHOLEV` time NOT NULL COMMENT 'Hora de Levante',
  `LIMTLEVX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Levante de la Declaracion',
  `DOCFEMXX` date NOT NULL COMMENT 'Fecha de Entrega de mercancia al Transportador',
  `DOCHRMXX` time NOT NULL COMMENT 'Hora de Entrega de Mercancia al Transportador',
  `APLIDEPI` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Aplica Deposito',
  `DEPIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `TRALIDXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador Local',
  `INHUAWEI` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Inconsistencia huawei',
  `DIHUAWEI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de la inconsistencia',
  `NUMPACLI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PACKING LIST HUAWE',
  `NUMCONXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE CONTRATO HUAWEI',
  `FECOTMXX` date NOT NULL COMMENT 'FECHA ENTREGA DE MERCANCIA OTM',
  `FECFINIX` date NOT NULL COMMENT 'fecha de finalizacion de la inspeccion',
  `DOCNUMAX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Manifiesto',
  `DOCNUMAT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Manifiesto para OTM y DTA',
  `DOCFEMAT` date NOT NULL COMMENT 'Fecha de Manifiesto para DTA y OTM',
  `DOCFEMAX` date NOT NULL COMMENT 'Fecha de Manifiesto',
  `DOCHOMAX` time NOT NULL COMMENT 'Hora Manifiesto',
  `DOCFECVE` date NOT NULL COMMENT 'Fecha de vencimiento termino almacenamiento ',
  `DOCNMANX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nuevo Manifiesto',
  `DOCNDOCT` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nuevo Doc de Transporte',
  `DOCNFMAN` date NOT NULL COMMENT 'Nueva Fecha de Manifiesto',
  `DOCNHMAN` time NOT NULL COMMENT 'Hora Nuevo Manifiesto',
  `DOCFECLI` date NOT NULL COMMENT 'Fecha Liberacion',
  `DOCHOLIB` time NOT NULL COMMENT 'Hora Liberacion',
  `DOCDDOEU` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descargue Directo',
  `FEPREPLA` date NOT NULL COMMENT 'Fecha de Presentación Formato 1178 ',
  `HOPREPLA` time NOT NULL COMMENT 'Hora de Presentación Formato 1178',
  `FENTRTPL` date NOT NULL COMMENT 'Fecha de Entrega al Transportador 1178',
  `HENTRTPL` time NOT NULL COMMENT 'Hora de Entrega al Transportador 1178',
  `DOCENTUR` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Entrega Urgente',
  `DOCPROXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prorroga',
  `DOCPROOB` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Prorroga Manual',
  `DOCZFXXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Zona Franca',
  `DOCMZFXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia en Zona Franca',
  `DOCFBLXX` date NOT NULL COMMENT 'Fecha de Bodegajes Liquidados',
  `DOCHBLXX` time NOT NULL COMMENT 'Hora de Bodegajes Liquidados',
  `DOCCOMBX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si es Combinado debe Digitar el Do de Transito',
  `DOCADAXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de Arribo',
  `DOCADDXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana Destino',
  `DOCDEPRO` enum('CAFE Y BEBIDAS','CULINARIOS','CONFECCIONARY','LACTEOS','PROFESSIONAL','MATERIAS PRIMAS','ALIMENTOS PARA MASCOTAS','') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Descripcion del Producto',
  `DOCCOSNX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do Combinado Si No',
  `DOCFFLMX` date NOT NULL COMMENT 'Fecha de Finalizacion de Labores de la Motonave',
  `DOCHFLMX` time NOT NULL COMMENT 'Hora de Finalizacion de la bores de la Motonave',
  `DOCFPDXX` date NOT NULL COMMENT 'Fecha de Presentacion Dta',
  `DOCHPDXX` time NOT NULL COMMENT 'Hora de Presentacion Dta',
  `DOCFCADX` date NOT NULL COMMENT 'Fecha de Aceptacion Impo',
  `DOCHCADX` time NOT NULL COMMENT 'Hora de Aceptacion Impo',
  `DOCFDCAD` date NOT NULL COMMENT 'FD Fecha Acentacion',
  `DOCHDCAD` time NOT NULL COMMENT 'HD Hora Aceptacion',
  `DOCUDCAD` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Usuario Aceptacion',
  `DOCFADXX` date NOT NULL COMMENT 'Fecha de Autorizacion Dta',
  `DOCHADXX` time NOT NULL COMMENT 'Hora de Autorizacion Dta',
  `DOCSELCX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Selectividad por Criterio de Tramite',
  `DOCSELDX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'POSICION',
  `DOCFECCE` date NOT NULL COMMENT 'Fecha de Compromiso de Entrega de un Tramite',
  `DOCJORCE` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jornada de Compromiso de Entrega de un Tramite',
  `DOCFECNC` date NOT NULL COMMENT 'Nueva Fecha de Compromiso de Entrega de un Tramite',
  `DOCJORNC` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nueva Jornada de Compromiso de Entrega de un Tramite',
  `DOCTRAXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estados del Tramite',
  `DOCMRAXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'modo del robot de aceptaciones [MANUAL o AUTOMATICO]',
  `DOCNUPAG` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Pago o Radicado',
  `DOCVLPAG` decimal(17,2) NOT NULL COMMENT 'Valor de Pago',
  `DOCNULIC` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Lic',
  `DOCNULIF` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Licencia Final',
  `DOCPROEX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor en el Exterior',
  `DOCNUREG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUmero de Registro',
  `DOCVLPVB` decimal(17,2) NOT NULL COMMENT 'Valor Visto Bueno',
  `DOCTIPVB` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Visto Bueno',
  `DOCFECLG` date NOT NULL COMMENT 'Fecha de Limite de Gestion',
  `DOCAPLDI` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Arreglo de Tareas de Digitalizacion',
  `DOCOBSCL` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones del Cliente',
  `DOCPELEX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion se pagara de forma electronica. Aceptacion Manual',
  `DOCPVLIX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proceso PVRIM O MS130',
  `DOCDIAXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion de Impo Anticipada. Aceptacion Manual.',
  `DOCDOSRE` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'DOS Registro',
  `USRCODCU` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Coordinador de Cuenta',
  `USRCOOIN` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'COORDINADOR INHOUSE',
  `DOCMTCKX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica si un Do en su Modo de Transporte es TRANSITO',
  `DOTIPOTR` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo de transito',
  `DOCNROAS` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Do Asociado Transito - Importacion',
  `DOCFEUCX` date NOT NULL COMMENT 'Fecha de Salida del Ultimo Contenedor de Puerto',
  `DOCFELLX` date NOT NULL COMMENT 'Fecha Estimada de Motonave',
  `HORFELXX` time NOT NULL COMMENT 'Hora Estimada',
  `DOCDFELL` date NOT NULL COMMENT 'FD Fecha Estimada de Motonave',
  `DOCDHELL` time NOT NULL COMMENT 'HD Fecha Estimada de Motonave',
  `DOCDUELL` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UD Fecha Estimada de Motonave',
  `USRJEFOP` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jefe de Operacion Asignado',
  `USRJEFOG` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo jefe de Operaciones',
  `USRJEFEQ` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Equipo de Trabajo del Jefe de Operacion',
  `USRJEFOR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jefe de Origen',
  `USRJEOGR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo Jefe de Origen',
  `USRJEOEQ` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Equipo Jefe de Origen',
  `DOCESTCL` text COLLATE utf8_unicode_ci NOT NULL,
  `OBSTRAXX` int(11) DEFAULT NULL COMMENT 'Observacion de Tracking de Importaciones',
  `DOCPODXX` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden Pedido',
  `DOCPROVX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor Impo',
  `DOCPAORI` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais Origen',
  `DOCPAPRO` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais Prosedencia',
  `DOCFORPA` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago',
  `DOCPLAXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plazo Segun Forma de Pago',
  `DOCETDPO` date NOT NULL COMMENT 'Fecha ETD Segun POD',
  `DOCPUEID` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto de Origen',
  `DOCCONVI` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Continuacion Viaje (OTM/DTA)',
  `DOCFEAFO` date NOT NULL COMMENT 'Fecha de Aprobacion Fondos',
  `DOCUSAFO` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario de Aprobacion de Fondos',
  `DOCSUBS1` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sub del Pedido',
  `DOCSUBS2` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sub del PO',
  `DOCORCOM` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ordenes de Compra',
  `USRIDXXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jefe de Cuenta',
  `USRGRUXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo Director de Cuenta',
  `USREQUIP` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Equipo de trabajo del Jefe de Cuenta',
  `METIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Metrica',
  `DOCTRAPR` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO PO',
  `DOCNUMFO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de formaluarios para grandes contribuyentes',
  `DOCDEPRX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripcion del producto',
  `DOCFRSFA` date DEFAULT NULL COMMENT 'Fecha Real Salida de Fabrica',
  `DOCFRLLP` date NOT NULL COMMENT 'Fecha real de llegada a puerto',
  `DOCFTALX` date NOT NULL COMMENT 'Fecha de Termino de Almacenamiento',
  `DOCFEMDX` date NOT NULL COMMENT 'Fecha Estimada de Mercancia en Destino',
  `DOCFLLDX` date NOT NULL COMMENT 'Fecha de LLedada a Destino',
  `DOCHLLDX` time NOT NULL COMMENT 'Hora de Llegada a Destino',
  `DOCFRPRX` date NOT NULL COMMENT 'Fecha de Radicacion de Proveedor',
  `DOCTIPFL` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Flete',
  `DOCTRANN` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Determina si aplica inspeccion de Antinarcotivos - SAE/SYGA',
  `APLIOTIN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica otra inspeccion',
  `DESCOTIN` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion otra inspeccion',
  `DOCCONSE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Control Seguridad Salida de Fabrica',
  `DOCFEPRE` date NOT NULL COMMENT 'Fecha de inspeccion- datos de inspeccion DIAN/ANTINARCOTICOS',
  `DOCNUVIA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO MIGO',
  `DOCPRNRA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Radicado de la Prorroga',
  `DOCPRFRA` date NOT NULL COMMENT 'Fecha de Radicado de Prorroga',
  `DOCPARXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DO Parcial',
  `DOCDOINI` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'DO Inicial',
  `DOCOBSDD` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Desistir Descargue Directo',
  `DOCPROYE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proyecto MEXICHEM',
  `DOCFACCO` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturas Comerciales',
  `DOCCLEGX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Causa de Legalizacion',
  `DOCFLEGX` date NOT NULL COMMENT 'Fecha Limite para Legalizar',
  `DOCFSOLF` date NOT NULL COMMENT 'Fecha de Solicitud DO Fito',
  `DOCNSOLF` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Solicitud DO FITO',
  `DOCNDOCF` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Documento DO FITO',
  `DOCAPROF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aprobacion Fito',
  `DOCFEXPF` date NOT NULL COMMENT 'Fecha Expedicion Fito',
  `DOCFVENF` date NOT NULL COMMENT 'echa Vencimiento Fito',
  `DOCFEPLA` date NOT NULL COMMENT 'Fecha Entrega Planillas',
  `DOCHOPLA` time NOT NULL COMMENT 'Hora  Entrega Planillas',
  `DOCTIPRE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Registro',
  `TIPMERCX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Carga',
  `DOCFENOC` date NOT NULL COMMENT 'Fecha de Notificacion del Cliente',
  `DOCFEISC` date NOT NULL COMMENT 'Fecha de Inciio del Servicio de la carga',
  `DOCFEFSC` date NOT NULL COMMENT 'Fecha de Finalizacion de Servicio a la carga',
  `DOCHOFSC` time NOT NULL COMMENT 'Hora de Finalizacion de Servicio a la Carga',
  `DOCHOISC` time NOT NULL COMMENT 'Hora de Finalizacion de Servicio a la Carga',
  `DOCURSSE` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuarios Asignados al servicio de la carga',
  `DOCFFAFL` date NOT NULL COMMENT 'Fecha de la Factura de Fletes',
  `DOCESTUL` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultimo Estado',
  `DOCFESTU` date NOT NULL COMMENT 'Fecha Ultimo Estado',
  `DOCHESTU` time NOT NULL COMMENT 'Hora Ultimo Estado',
  `DOCESTUB` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la Mercancia Ultimo',
  `DOCFESUB` date NOT NULL COMMENT 'Fecha Estado de la Mercancia Ultimo',
  `DOCESTCX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Estado del cliente',
  `DOCESTCF` date NOT NULL COMMENT 'Fecha del estado del cliente',
  `DOCESTCH` time NOT NULL COMMENT 'Hora del estado del cliente',
  `DOCHOSUB` time NOT NULL COMMENT 'Hora Estado de la Mercancia Ultimo',
  `DOCESTBK` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultimo estado para RIO',
  `DOCFELIQ` date NOT NULL COMMENT 'Fecha Liquidacion Importacion',
  `DOCFEDOC` date NOT NULL COMMENT 'Fecha Documentos Originales Completos',
  `DOCFERES` date NOT NULL COMMENT 'Fecha solicitud reserva',
  `DOCFECOR` date NOT NULL COMMENT 'Fecha de confirmacion de reserva',
  `DOCHORCO` time NOT NULL COMMENT 'Hora de confirmation de Reserva',
  `DOCFDEXF` date NOT NULL COMMENT 'Fecha DEX Definitivo',
  `DOCESTIB` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Estibas',
  `DOCKPIXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'KPI Halliburton',
  `DOCTID2X` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Legalización',
  `DOCMERRE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Reconocimiento de Mercancia/Servicio a la Carga',
  `DOCRECTE` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Instrucciones para el reconocimiento',
  `DOCNACPA` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica nacionalizacion parcial',
  `LICEANUA` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Licencia Anual',
  `CANLICEN` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de Licencias',
  `DOCCORFE` date NOT NULL COMMENT 'Fecha de Corte de Documento de Transporte',
  `MERCMANO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia a la mano - Exportacion Halliburton',
  `EXPOTRAN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Expo. en transito - Exportacion Halliburton',
  `MERCEMBA` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia en lugar de embarque - Exportacion Halliburton',
  `MERCPELI` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia Peligrosa - Exportacion Halliburton',
  `INSPBASE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Inspeccion en base - Exportacion Halliburton',
  `BASETEXT` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Base - Exportacion Halliburton',
  `INSTGENE` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Instrucciones Generales - Exportacion Halliburton',
  `CECOCAMP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costos - Exportacion Halliburton',
  `APLPLAEX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Planilla Expo',
  `DOCFSOLE` date NOT NULL COMMENT 'Fecha Solicitud Preinspeccion Expo',
  `DOCHSOLE` time NOT NULL COMMENT 'Hora Solicitud Preinspeccion Expo',
  `DOCFINIE` date NOT NULL COMMENT 'Fecha Inicio Preinspeccion Expo',
  `DOCHINIE` time NOT NULL COMMENT 'Hora Inicio Preinspeccion Expo',
  `DOCFFINE` date NOT NULL COMMENT 'Fecha Finalizacion Preinspeccion Expo',
  `DOCHFINE` time NOT NULL COMMENT 'Hora Finalizacion Preinspeccion Expo',
  `DOCURSPE` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Personal Asignado Preisnpeccion Expo',
  `FECSOLRE` date NOT NULL COMMENT 'fecha de solicitud de reserva - Expo Halliburton',
  `TRANINTE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'transportador internacional - Expo Halliburton',
  `BOOKINGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Booking - Expo Halliburton',
  `EDTEXPOX` date NOT NULL COMMENT 'EDT - Expo Halliburton',
  `NUMVUEVI` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de vuelo/viaje - Expo Halliburton',
  `TIPCAREX` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga - Expo Halliburton',
  `FECEMBEX` date NOT NULL COMMENT 'Fecha de Embarque - Exportacion Halliburton',
  `DOCFEFIS` date NOT NULL COMMENT 'Fecha Estimada Finalizacion Servicio a la Carga',
  `DOCHEFIS` time NOT NULL COMMENT 'Hora Estimada Finalizacion Servicio a la Carga',
  `NIVELOPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nivel de Matriz de datos',
  `NIVOPEAC` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Niver de Operacion en el Acuerdo',
  `DOCINSPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Inspeccion Fisica o Externa (Autorizacion DTA)',
  `DOCIFISI` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Inspeccion Fisica SI o NO (Autorizacion DTA)',
  `DOCAUTIF` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DTA Autorizado en Inspeccion Fisica SI/NO',
  `DOCNUDTA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DTA',
  `DOCNADTA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Autorizacion DTA',
  `DOCFEMDT` date NOT NULL COMMENT 'Fecha Entrega Mercancia Transportador DTA',
  `DOCHEMDT` time NOT NULL COMMENT 'Hora Entrega Mercancia Transportador DTA',
  `DOCFSUUC` date NOT NULL COMMENT 'Fecha de Salida Ultima Unidad de Carga',
  `DOCHSUUC` time NOT NULL COMMENT 'Hora de Salida Ultima Unidad de Carga',
  `DOCDESIS` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Desistir DTA SI o NO (Desistir DTA)',
  `DOCDESJU` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificacion Desistir DTA',
  `DOCPRIOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prioridad DO',
  `DOCOBPRI` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion de la Prioridad',
  `DOCALEAZ` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do tiene alerta Azul',
  `DOCALERO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do tiene alerta Roja',
  `DOCALENA` text COLLATE utf8_unicode_ci,
  `DOCALEAM` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do tiene alerta Amarilla',
  `DOCLEVES` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de levante especial',
  `DOCFELES` date NOT NULL COMMENT 'Fecha de levante especial',
  `DOCHOLES` time NOT NULL COMMENT 'Hora de levante especial',
  `DOCNUMAU` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del auto',
  `DOCACTES` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del acta especial',
  `DOFENUAU` date NOT NULL COMMENT 'Fecha del auto',
  `DOHONUAU` time NOT NULL COMMENT 'Hora del auto',
  `DOFEACES` date NOT NULL COMMENT 'Fecha del acta especial',
  `DOHOACES` time NOT NULL COMMENT 'Hora del acta especial',
  `DOCNUMRA` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del radicado',
  `DOCFECRA` date NOT NULL COMMENT 'Fecha del radicado',
  `DOCHOCRA` time NOT NULL COMMENT 'Hora Radicacion Oficio EU',
  `TOKIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Tipo Operacion KPI',
  `TOKIDLGX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Tipo Operacion KPI LG',
  `DOCJUSCO` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numeros de Planilla DTA (Otros)',
  `APLENTRE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Entrega al Transporte',
  `APINFOES` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si tiene instruccion de toma de informacion especifica',
  `USRVERCA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario encargado de la verificación de carga',
  `TIPONORE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI LA VERIFICACION ES DE INVENTARIO O REFERENCIAS',
  `NIVELPAR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nivel Parcial',
  `FECRECEP` date NOT NULL COMMENT 'Fecha Asignacion Ultimo Documento Requerido Asignado',
  `HORRECEP` time NOT NULL COMMENT 'Hora Asignacion Ultimo Documento Requerido Asignado',
  `APLELDOC` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Emision o Liberacion del Documento de Transporte',
  `EMIFECXX` date NOT NULL COMMENT 'Fecha de Emision del Documento de Transporte',
  `HOREMIXX` time NOT NULL COMMENT 'Hora de Emision del Documento de Transporte',
  `LIBFECXX` date NOT NULL COMMENT 'Fecha de Liberacion del Documento de Transporte',
  `HORLIBXX` time NOT NULL COMMENT 'Hora de Liberacion de Documento de Transporte',
  `COMRADXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Radicacion Factura',
  `COMFRADX` date NOT NULL COMMENT 'Fecha Radicado Comprobante',
  `COMHRADX` time NOT NULL COMMENT 'Hora Radicado Comprobante',
  `REGFECRF` date NOT NULL COMMENT 'Fecha de Registro de Radicacion',
  `REGHORRF` time NOT NULL COMMENT 'Hora de Registro de Radicacion',
  `COMFAPRO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura o Proforma',
  `COMFFPRO` date NOT NULL COMMENT 'Fecha de Factura o Proforma',
  `COMHFPRO` time NOT NULL COMMENT 'Hora Factura o Proforma',
  `REGFECFR` date NOT NULL COMMENT 'Fecha de Registro de Factura o Proforma',
  `REGHORFP` time NOT NULL COMMENT 'Hora de Registro de Factura o Proforma',
  `COMFADEF` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura Definitiva',
  `COMFFDEF` date NOT NULL COMMENT 'Fecha Factura Definitiva',
  `COMHFDEF` time NOT NULL COMMENT 'Hora Factura Definitiva',
  `REGFECFD` date NOT NULL COMMENT 'Fecha de Registro de Factura Definitiva',
  `REGHORFD` time NOT NULL COMMENT 'Hora de Registro de Factura Definitiva',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `USRASIGX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Asignado Avianca',
  `CARGATAN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'MARCA QUE INDICA SI LA CARGA YA LLEGO A TAN',
  `IRREREPX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BANDERA IRREGULARIDAD REPREMUNDO',
  `FECHAETD` date NOT NULL COMMENT 'FECHA ETD Huawei',
  `ASUCREDO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Asunto del correo con el que se creo el DO',
  `FECINMOV` date NOT NULL COMMENT 'FECHA DE INMOVILIZACION',
  `FECETSXX` date NOT NULL COMMENT 'FECHA ETS',
  `NOTIACEP` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar Datos de Aceptacion',
  `FECHORAR` datetime NOT NULL COMMENT 'Fecha y hora de envio a araujo',
  `NOTISELE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar Selectividad y Levante',
  `FECACTWB` date NOT NULL COMMENT 'FECHA ACTUALIZACION WEB',
  `TIPPROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BANDERA TIPO DE PRORROGA',
  `FECHAFTP` date NOT NULL COMMENT 'FECHA FTP',
  `FECFACDM` date NOT NULL COMMENT 'FECHA FACTURACION DAMCO',
  `FEPRDIAN` date NOT NULL COMMENT 'Fecha Presentacion DIAN',
  `CODSAP1X` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo SAP 1',
  `CODSAP2X` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo SAP 2',
  `FORMPAGO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Pago Anticipado',
  `REPUESTO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Repuesto',
  `SOLPEDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Solped',
  `FECREPFP` date NOT NULL COMMENT 'Fecha de Recepcion de Factura Proforma',
  `HORRECFP` time NOT NULL COMMENT 'Hora de Recepcion de Factura Proforma',
  `FECMSWFT` date NOT NULL COMMENT 'Fecha de Envio del Mensaje Swift',
  `HORMSWFT` time NOT NULL COMMENT 'Hora de Envio del Mensaje Swift',
  `FECALIST` date NOT NULL COMMENT 'Fecha de Alistamiento',
  `HORALIST` time NOT NULL COMMENT 'Hora de Alistamiento',
  `FECCOPRO` date NOT NULL COMMENT 'Fecha de Confirmacion al Proveedor',
  `APLNOCFM` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica No Conforme',
  `FECENTOR` date NOT NULL COMMENT 'Fecha de Entrega Origen',
  `OBSTRAZX` text COLLATE utf8_unicode_ci COMMENT 'Observaciones y Trazabilidad',
  `OBSTRAZU` text COLLATE utf8_unicode_ci COMMENT 'Observaciones y Trazabilidad (ultimo registro)',
  `OBSTRAZD` text COLLATE utf8_unicode_ci COMMENT 'Observaciones y Trazabilidad (ultimos dos registros)',
  `OBSTRAZT` text COLLATE utf8_unicode_ci COMMENT 'Observaciones y Trazabilidad (ultimos tres registros)',
  `APLIINSP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Diligencia de Inspección Previa?',
  `RADIINSP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Se Radico Informe de Inspección Previa?',
  `DOCNROCH` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Do Schenker',
  `FELLEBOD` date NOT NULL COMMENT 'Fecha Confirmacion Bodega',
  `SHIPPING` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Shipping',
  `VOLUMENX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Volumen',
  `DOCPIEZA` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Piezas Exportacion',
  `PLADESXX` enum('FABRICA BUGALARANDE','CIS','DPA','MOSQUERA CUNDINAMARCA','') COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Planta de despacho',
  `APLIRLOV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Aplica Roll Over',
  `NUMGUIAX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Número de Guia - Envio de documentos',
  `ROLCAUSA` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Causa de aplica Roll Over',
  `INCIDENT` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Incidente',
  `APLSAEGL` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica SAE Global',
  `APLSAEPR` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica SAE Provisional',
  `LOTESXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lotes Exportacion',
  `FECOIBES` date NOT NULL COMMENT 'Fecha de Confirmacion IBES',
  `FECREPPA` date NOT NULL COMMENT 'Fecha de recepcion del paso',
  `HORREPPA` time NOT NULL COMMENT 'HORA DE RECEPCION DEL PASO',
  `OPCMARXX` enum('','REINTEGRO','VENTA CON CIP','DOBLE COMISION','NO APLICA') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Opciones para marcar ',
  `PIEIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Proveedor Parametrica OpenComex SIAI0125',
  `AEROLINE` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Aerolínea Expo',
  `PESDOCTR` decimal(17,2) NOT NULL COMMENT 'Peso Documento de Transporte Datos de Llegada',
  `BULDOCTR` int(11) NOT NULL COMMENT 'Bultos Documento de Transporte Datos de Llegada',
  `ENVSOCPL` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'INDICA SI SE DEBE ENVIAR LOS ARCHIVOS DE DI Y SKU PARA EL CLIENTE SODIMAC',
  `OBSSIACO` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Siaco Reportes el Tiempo',
  `OBSCLIEN` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Cliente Reportes el Tiempo',
  `PRIORI1X` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prioridad 1 Reportes el Tiempo',
  `PRIORI2X` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Pais de llegada - Datos reserva aerea',
  `BDPOSITX` enum('NO','SI') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Base de datos positiva',
  `IMEISXXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Ciudad de llegada - Datos reserva aerea',
  `FECINBOD` date NOT NULL COMMENT 'Fecha de ingreso a Bodega',
  `TIPMERCA` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo de Mercancia',
  `FECINSFX` date NOT NULL COMMENT 'Fecha acta de Inspeccion de Autorizacion Cruce de Frontera - Ipiales',
  `APLIPVXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica para PV - Avianca',
  `PVCONSEC` int(11) NOT NULL COMMENT 'Consecutivo Tipo Plan Vallejo',
  `ANCOMEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Analista Comex - Avianca',
  `OPTRAMIX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tramite - Avianca',
  `OPMATERI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Material - Avianca',
  `ASPRIORI` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Asignar Prioridad - Avianca',
  `IDCAULEC` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IDENTIFICIADOR DE LA CAUSAL DE LEGALIZACION O CORRECCION',
  `SEGESPOP` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CAMPO PARA GUARDAR EL SEGUIMIENTO ESPECIAL  ',
  `PROIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PROYECTO DEL DO',
  `NUFORMUL` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Formulario',
  `APREAPRO` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Reaprovisionamiento Exportaciones',
  `APSERABO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Servicio a Bordo Exportación',
  `NUOFICIO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número de oficio Exportación',
  `PROFINRE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Exportacion Procedida por Finalizacion de Regimen',
  `CSCSOLIT` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Solicitud de Transporte SilogTrans Logistica',
  `AEROTERP` int(3) DEFAULT NULL COMMENT 'Id Aerolinea Terpel',
  `NOPEPUER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Fecha Solicitud Vaciado',
  `FECSOLVA` date NOT NULL COMMENT 'Fecha Solicitud Vaciado',
  `HORSOLVA` time NOT NULL COMMENT 'Hora Solicitud Vaciado',
  `FECCISBA` date NOT NULL COMMENT 'Fecha CIS',
  `NUMCISBA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero CIS',
  `RADCISBA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Radicado CIS',
  `FECRACIS` date NOT NULL COMMENT 'Fecha Radicado CIS',
  `APLREGIN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero CIS',
  `APLDATTO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Datos de Tonaguia',
  `IDTIPDEX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Tipo del Dex',
  `MODALTRA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad de Transporte',
  `CLIIDALI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Aliado del Cliente',
  `APLDEMAN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Declaración Manual?',
  `DOIPED2X` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Pedido de Importacion',
  `FACTUDOX` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Factura',
  `MATERIAL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Material',
  `CAUGECDO` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Factura',
  `FECELADI` date NOT NULL COMMENT 'Fecha de Elaboracion DIM',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Status',
  `PESCARGA` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso Neto de Carga',
  `REQVACXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Carga para Vaciado',
  `SOLVACXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Solicitud para Vaciado',
  `APLTRASX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Traslado',
  `LUGVACXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar de Vaciado',
  `USUCALXX` int(11) NOT NULL COMMENT 'Usuario Calificado',
  `EMPTRANS` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa Transportadora',
  `REQINSIC` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Requiere Inspeccion ICA',
  `REQINSIN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Requiere Inspeccion Invima',
  `REQINSPR` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Requiere Inspeccion Previa',
  `APLEMLIB` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Emision / Liberacion',
  `FECEPLZF` date NOT NULL COMMENT 'Fecha de Generacion Acta',
  `FECENTCB` date NOT NULL COMMENT 'Fecha de Entrega de Carga a Deposito',
  `HORENTCB` time NOT NULL COMMENT 'Hora de Entrega de Carga a Deposito',
  `FECAPRPL` date NOT NULL COMMENT 'Fecha Aprobacion Planilla',
  `FECEPDZF` date NOT NULL COMMENT 'Fecha Entrega Planilla DTA a ZF',
  `FECOFICX` date NOT NULL COMMENT 'Fecha Oficio Desnaturalizacion',
  `HOROFICX` time NOT NULL COMMENT 'Hora Oficio Desnaturalizacion',
  `FECPRAET` date NOT NULL COMMENT 'Fecha Creacion Primera Acta (Documentos Originales Completos)',
  `FECCFNBA` date NOT NULL COMMENT 'Fecha CFN',
  `NUMCFNBA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero CFN',
  `RADCFNBA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Radicado CFN',
  `FECRACFN` date NOT NULL COMMENT 'Fecha Radicado CFN',
  `TMNBOGLR` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'terminal o bodega para transporte con logistica repremundo',
  `FECREPLA` date NOT NULL COMMENT 'Fecha de Recepcion de Planeacion',
  `LINDNEGO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Línea de Negocio',
  `APLKPIXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica KPI?',
  `AUTORETI` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion de Retiro',
  `REGFECXX` date NOT NULL,
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Disparadores `MDOS2025`
--
DELIMITER $$
CREATE TRIGGER `MDOS2025_INSERT` BEFORE INSERT ON `MDOS2025` FOR EACH ROW BEGIN
if(NEW.`DOCTIPXX` = 'IMPORTACION') THEN
     SET NEW.`REGFECMR`= NOW();
     SET NEW.`REGHORMR`= NOW();
    INSERT IGNORE INTO GRM.`INDAGEND` 				(`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`) 
    VALUES (NEW.DOCNROXX,"MDOSYYYY","CREADOXX","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MDOS2025_UPDATE` BEFORE UPDATE ON `MDOS2025` FOR EACH ROW BEGIN

   CALL ST_INDI_MDOS(OLD.DOCNROXX,

                     NEW.DOCFECLD,

                     OLD.DOCFECLD,

                     NEW.DOCHORLD,

                     OLD.DOCHORLD,

                     NEW.DOCFELEV,

                     OLD.DOCFELEV,

                     NEW.DOCHOLEV,

                     OLD.DOCHOLEV,

                     NEW.DOCFEMXX,

                     OLD.DOCFEMXX,

                     NEW.DOCHRMXX,

                     OLD.DOCHRMXX,

                     NEW.DOCFRLMX,

                     OLD.DOCFRLMX,

                     NEW.HORFRLMX,

                     OLD.HORFRLMX,

                     NEW.DOCFEMAX,

                     OLD.DOCFEMAX,

                     NEW.DOCHOMAX,

                     OLD.DOCHOMAX,

                     NEW.DOCFFLMX,

                     OLD.DOCFFLMX,

                     NEW.DOCHFLMX,

                     OLD.DOCHFLMX,

                     NEW.DOCFELLX,

                     OLD.DOCFELLX,

                     NEW.HORFELXX,

                     OLD.HORFELXX,

                     NEW.DOCFEMDT,

                     OLD.DOCFEMDT,

                     NEW.DOCHEMDT,

                     OLD.DOCHEMDT,

                     NEW.DOCFELES,

                     OLD.DOCFELES,

                     NEW.DOCHOLES,

                     OLD.DOCHOLES,

                     NEW.DOCFECRA,

                     OLD.DOCFECRA,

                     NEW.DOCHOCRA,

                     OLD.DOCHOCRA,

                     NEW.DOCRECXX,

                     OLD.DOCRECXX,

                     NEW.DOCFEUCX,

                     OLD.DOCFEUCX,

                     NEW.DOCHSUUC,

                     OLD.DOCHSUUC,

                     NEW.COMFRADX,

                     OLD.COMFRADX,

                     NEW.LIBFECXX,

                     OLD.LIBFECXX,

                     NEW.HORLIBXX,

                     OLD.HORLIBXX,

                     NEW.FECRECEP,

                     OLD.FECRECEP,

                     NEW.HORRECEP,

                     OLD.HORRECEP,

                     NEW.DOCFESTU,

                     OLD.DOCFESTU,

                     NEW.DOCHESTU,

                     OLD.DOCHESTU,

                     NEW.FENTRTPL,

                     OLD.FENTRTPL,

                     NEW.HENTRTPL,

                     OLD.HENTRTPL,

                     NEW.FECPROVE,

                     OLD.FECPROVE,

                     NEW.HORPROVE,

                     OLD.HORPROVE,

                     NEW.FECALIST,

                     OLD.FECALIST,

                     NEW.HORALIST,

                     OLD.HORALIST,
					 
	             NEW.DOCFZARP,

                     OLD.DOCFZARP,
                   
                     NEW.COMFFDEF,
                      
                     OLD.COMFFDEF,
                    
                     OLD.DOCTIPXX,
                    
                     NEW.FECREPPA,
                     
                     OLD.FECREPPA,
                     
                     NEW.HORREPPA,
                     
                     OLD.HORREPPA
                    
                    
                    );



   IF (   ((NEW.DOCFECLD != OLD.DOCFECLD) AND (NEW.DOCFECLD != "0000-00-00"))

       OR ((NEW.DOCHORLD != OLD.DOCHORLD) AND (NEW.DOCFECLD != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFECLD",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFELEV != OLD.DOCFELEV) AND (NEW.DOCFELEV != "0000-00-00"))

       OR ((NEW.DOCHOLEV != OLD.DOCHOLEV) AND (NEW.DOCHOLEV != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFELEV_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");



      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFELEV_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFEMXX != OLD.DOCFEMXX) AND (NEW.DOCFEMXX != "0000-00-00"))

       OR ((NEW.DOCHRMXX != OLD.DOCHRMXX) AND (NEW.DOCFEMXX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEMXX_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");



      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEMXX_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFRLMX != OLD.DOCFRLMX) AND (NEW.DOCFRLMX != "0000-00-00"))

       OR ((NEW.HORFRLMX != OLD.HORFRLMX) AND (NEW.DOCFRLMX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFRLMX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFEMAX != OLD.DOCFEMAX) AND (NEW.DOCFEMAX != "0000-00-00"))

       OR ((NEW.DOCHOMAX != OLD.DOCHOMAX) AND (NEW.DOCFEMAX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEMAX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");
			  
			  INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEMAX_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFFLMX != OLD.DOCFFLMX) AND (NEW.DOCFFLMX != "0000-00-00"))

       OR ((NEW.DOCHFLMX != OLD.DOCHFLMX) AND (NEW.DOCFFLMX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFFLMX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFELLX != OLD.DOCFELLX) AND (NEW.DOCFELLX != "0000-00-00"))

       OR ((NEW.HORFELXX != OLD.HORFELXX) AND (NEW.DOCFELLX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFELLX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFEMDT != OLD.DOCFEMDT) AND (NEW.DOCFEMDT != "0000-00-00"))

       OR ((NEW.DOCHEMDT != OLD.DOCHEMDT) AND (NEW.DOCFEMDT != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEMDT",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFELES != OLD.DOCFELES) AND (NEW.DOCFELES != "0000-00-00"))

       OR ((NEW.DOCHOLES != OLD.DOCHOLES) AND (NEW.DOCFELES != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFELES",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFECRA != OLD.DOCFECRA) AND (NEW.DOCFECRA != "0000-00-00"))

       OR ((NEW.DOCHOCRA != OLD.DOCHOCRA) AND (NEW.DOCFECRA != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFECRA",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF ((NEW.DOCRECXX != OLD.DOCRECXX) AND (NEW.DOCRECXX != "0000-00-00"))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCRECXX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFEUCX != OLD.DOCFEUCX) AND (NEW.DOCFEUCX != "0000-00-00"))

       OR ((NEW.DOCHSUUC != OLD.DOCHSUUC) AND (NEW.DOCFEUCX != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEUCX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF ((NEW.COMFRADX != OLD.COMFRADX) AND (NEW.COMFRADX != "0000-00-00"))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (OLD.DOCNROXX,

              "MDOSYYYY",

              "COMFRADX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   ((NEW.DOCFESTU != OLD.DOCFESTU) AND (NEW.DOCFESTU != "0000-00-00"))

       OR ((NEW.DOCHESTU != OLD.DOCHESTU) AND (NEW.DOCFESTU != "0000-00-00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFESTU",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (   (NEW.LIBFECXX != "0000-00-00" AND (NEW.LIBFECXX != OLD.LIBFECXX))

       OR (NEW.HORLIBXX != "00:00:00" AND (NEW.HORLIBXX != OLD.HORLIBXX)))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (OLD.DOCNROXX,

              "MDOSYYYY",

              "LIBDOCTR_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");
			  
			  INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (OLD.DOCNROXX,

              "MDOSYYYY",

              "LIBDOCTR_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;


   IF (   (NEW.FECRECEP != "0000-00-00" AND (NEW.FECRECEP != OLD.FECRECEP))

       OR (NEW.HORRECEP != "00:00:00" AND (NEW.HORRECEP != OLD.HORRECEP)))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (OLD.DOCNROXX,

              "MDOSYYYY",

              "FECRECEP",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   IF (NEW.REGESTXX = "FACTURADO")

   THEN

      UPDATE `AVI00121`

         SET `REGESTXX` = NEW.REGESTXX

       WHERE     DOCNROXX = OLD.DOCNROXX

             AND SUCIDXXX = OLD.SUCIDXXX

             AND REGESTXX != "INACTIVO";

   END IF;



   IF (OLD.`DOCTIPXX` = 'IMPORTACION')

   THEN

      SET NEW.`REGFECMR` = NOW();

      SET NEW.`REGHORMR` = NOW();

   END IF;



   IF (   (NEW.FENTRTPL != "0000-00-00" AND (NEW.FENTRTPL != OLD.FENTRTPL))

       OR (NEW.HENTRTPL != "00:00:00" AND (NEW.HENTRTPL != OLD.HENTRTPL)))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (OLD.DOCNROXX,

              "MDOSYYYY",

              "ETRA1178_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;



   

IF (   ((NEW.FECALIST != OLD.FECALIST) AND (NEW.FECALIST != "0000-00-00"))

       OR ((NEW.HORALIST != OLD.HORALIST) AND (NEW.HORALIST != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "FECALIST_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;


IF  ((NEW.COMFFDEF != OLD.COMFFDEF) AND (NEW.COMFFDEF != "0000-00-00"))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "COMFFDEF",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;

IF (((NEW.DOCFCIFX != OLD.DOCFCIFX) AND (NEW.DOCFCIFX != "0000-00-00"))

       OR ((NEW.DOCHCIFX != OLD.DOCHCIFX) AND (NEW.DOCHCIFX != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFCIFX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
   IF (((NEW.COMFFDEF != OLD.COMFFDEF) AND (NEW.COMFFDEF != "0000-00-00"))

       OR ((NEW.COMHFDEF != OLD.COMHFDEF) AND (NEW.COMHFDEF != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "COMFFDEF_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
    IF (((NEW.DOCFDRYA != OLD.DOCFDRYA) AND (NEW.DOCFDRYA != "0000-00-00"))

       OR ((NEW.DOCHDRYA != OLD.DOCHDRYA) AND (NEW.DOCHDRYA != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFDRYA",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
     IF (((NEW.DOCFEPLA != OLD.DOCFEPLA) AND (NEW.DOCFEPLA != "0000-00-00"))

       OR ((NEW.DOCHOPLA != OLD.DOCHOPLA) AND (NEW.DOCHOPLA != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEPLA",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
   
   IF ((NEW.DOCFESFA != OLD.DOCFESFA) AND (NEW.DOCFESFA != "0000-00-00"))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFESFA",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
   IF (((NEW.DOCFDCXX != OLD.DOCFDCXX) AND (NEW.DOCFDCXX != "0000-00-00"))
       OR ((NEW.DOCHDCXX != OLD.DOCHDCXX) AND (NEW.DOCHDCXX != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFDCXX_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
   IF (((NEW.DOCFMETX != OLD.DOCFMETX) AND (NEW.DOCFMETX != "0000-00-00"))
       OR ((NEW.DOCHMETX != OLD.DOCHMETX) AND (NEW.DOCHMETX != "00:00:00")))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFMETX",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

    INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFMETX_I",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;
   
   IF ((NEW.DOCFEPAF != OLD.DOCFEPAF) AND (NEW.DOCFEPAF != "0000-00-00"))

   THEN

      INSERT IGNORE

        INTO `INDAGEND`(`TRAMITEX`,

                        `TABLAXXX`,

                        `CAMPOXXX`,

                        `REGUSRXX`,

                        `REGFECXX`,

                        `REGHORXX`,

                        `REGFECMX`,

                        `REGHORMX`,

                        `REGESTXX`)

      VALUES (NEW.DOCNROXX,

              "MDOSYYYY",

              "DOCFEPAF_S",

              "1000",

              NOW(),

              NOW(),

              NOW(),

              NOW(),

              "ACTIVO");

   END IF;

END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOS2025`
--
ALTER TABLE `MDOS2025`
  ADD PRIMARY KEY (`DOCNROXX`,`DOCSUFXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `DOCTIPXX` (`DOCTIPXX`) USING BTREE,
  ADD KEY `USRIDXXX` (`USRIDXXX`) USING BTREE,
  ADD KEY `USRGRUXX` (`USRGRUXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE,
  ADD KEY `TIPMERCX` (`TIPMERCX`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_USRIDXXX` (`USRIDXXX`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_TRANIDXX` (`TRANIDXX`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_LINIDXXX` (`LINIDXXX`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_DOCAGCAR` (`DOCAGCAR`) USING BTREE,
  ADD KEY `idx_GRM_MDOS2015_SUCIDXXX` (`SUCIDXXX`) USING BTREE;
COMMIT;


