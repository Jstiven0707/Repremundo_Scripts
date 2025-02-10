CREATE TABLE `MDOS2022` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero de Do (MDOSYYYY)',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la sucursal (CIMS0049)',
  `DOCTRIMP` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DOCUMENTO DE TRANSPORTE (DTRCYYYY.DTRCDOTR)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `DOCTIPXX` enum('','IMPORTACION') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `CCOIDXXX` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'centro de costo (CIPF0048)',
  `SUBCCOID` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'subcentro de costo (CIPF0049)',
  `DOIPEDXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pedido',
  `DOTEMPXX` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si es temporal',
  `LINEIDXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la linea de negocio (CIPO0089)',
  `SEGIDXXX` smallint NOT NULL COMMENT 'ID del segmento',
  `CONTACID` int NOT NULL COMMENT 'secuencia del contacto (CIPO0104)',
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOTPIDXX` int NOT NULL COMMENT 'ID DEL PROYECTO',
  `DOCMTXXX` enum('','AEREO','TERRESTRE','MARITIMO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MODO DE TRANSPORTE',
  `DOCRDTAX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRANIDXX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DEL TRANSPORTADOR INTERNACIONAL',
  `FECEMIDT` date NOT NULL COMMENT 'FECHA DE EMISION DOCUMENTO DE TRANSPORTE',
  `HOREMIDT` time NOT NULL COMMENT 'HORA DE EMISION DOCUMENTO DE TRANSPORTE',
  `FECLIBDT` date NOT NULL COMMENT 'FECHA DE LIBERACION DOCUMENTO DE TRANSPORTE',
  `HORLIBDT` time NOT NULL COMMENT 'HORA DE LIBERACION DOCUMENTO DE TRANSPORTE',
  `APLLIBXX` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica emision liberacion documento de transporte',
  `DOCNUMAX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE MANIFIESTO',
  `PESDOCTR` decimal(18,5) NOT NULL COMMENT 'peso bruto usados del documento de transporte',
  `BULDOCTR` int NOT NULL COMMENT 'Cantidad de bultos usados del documento de transporte',
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro(MDREYYYY)',
  `PAIIDORX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais DE ORIGEN',
  `TIPDEPID` int NOT NULL COMMENT 'id del tipo de deposito',
  `MDOSTISE` enum('','CERTIFICACION DE SEGURO','COTIZACION DE SEGURO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que\r\nindica el tipo de seguro',
  `REQINSPR` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica DIP',
  `DOCMERRE` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica verificacion de carga',
  `DEPIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPOSITO (CIPO0117)',
  `FECHINSP` date NOT NULL COMMENT 'Fecha de Inspeccion',
  `HORHINSP` time NOT NULL COMMENT 'Hora de Inspeccion',
  `APLTOMTR` enum('','NO','SI') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica toma de muestras',
  `OBSINPEC` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Justificacion de la inspeccion',
  `USRJEFOG` smallint NOT NULL COMMENT 'ID del grupo que trabaja la operacion(CIMS0039)',
  `USRJEFOP` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario,LIDER DEL GRUPO (CIMS0039.GRUPLIDX)',
  `USRCODCU` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario,coordinador de cuenta',
  `DOCURSSE` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario,coordinador operaciones puerto',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','FACTURADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACIONES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOS2022`
--
ALTER TABLE `MDOS2022`
  ADD PRIMARY KEY (`DOCNROXX`),
  ADD KEY `SUCIDXXX` (`SUCIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `CCOIDXXX` (`CCOIDXXX`),
  ADD KEY `SUBCCOID` (`SUBCCOID`),
  ADD KEY `LINEIDXX` (`LINEIDXX`),
  ADD KEY `SEGIDXXX` (`SEGIDXXX`),
  ADD KEY `CONTACID` (`CONTACID`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`),
  ADD KEY `FOTPIDXX` (`FOTPIDXX`),
  ADD KEY `DOCNUMAX` (`DOCNUMAX`),
  ADD KEY `MDREIDRE` (`MDREIDRE`),
  ADD KEY `PAIIDORX` (`PAIIDORX`),
  ADD KEY `DEPIDXXX` (`DEPIDXXX`);
COMMIT;
