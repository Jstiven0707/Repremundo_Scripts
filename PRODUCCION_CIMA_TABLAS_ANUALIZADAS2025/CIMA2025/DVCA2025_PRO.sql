

CREATE TABLE `DVCA2025` (
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL CLIENTE',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE LA FACTURA',
  `FACFECXX` date NOT NULL COMMENT 'FECHA DE LA FACTURA',
  `TERMIDXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL TERMINO',
  `LUGENTXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'LUGAR DE ENTREGA',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA MONEDA',
  `PAIIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `PESBRUXX` decimal(18,5) NOT NULL COMMENT 'PESO BRUTO',
  `VALFACXX` decimal(18,5) NOT NULL COMMENT 'VALOR DE LA FACTURA',
  `VALFOBXX` decimal(18,5) NOT NULL COMMENT 'VALOR FOB',
  `VALFLEXX` decimal(18,5) NOT NULL COMMENT 'VALOR FLETE',
  `VALCONXX` decimal(18,5) NOT NULL COMMENT 'VALOR CONEXO',
  `VALSEGXX` decimal(18,5) NOT NULL COMMENT 'VALOR SEGURO',
  `VALVARXX` decimal(18,5) NOT NULL COMMENT 'VALOR VARIOS',
  `VALCOMXX` decimal(18,5) NOT NULL COMMENT 'VALOR COMISION',
  `VALMATXX` decimal(18,5) NOT NULL COMMENT 'VALOR MATERIA PRIMA',
  `VALINSXX` decimal(18,5) NOT NULL COMMENT 'VALOR INSUMOS',
  `VALENVXX` decimal(18,5) NOT NULL COMMENT 'VALOR ENVASES',
  `VALHERXX` decimal(18,5) NOT NULL COMMENT 'VALOR HERRAMIENTAS',
  `VALINGXX` decimal(18,5) NOT NULL COMMENT 'VALOR INGENIERIA',
  `VALCANXX` decimal(18,5) NOT NULL COMMENT 'VALOR CANONES',
  `VALREVVE` decimal(18,5) NOT NULL COMMENT 'VALOR REVIERTE VENDEDORES',
  `VALGASPO` decimal(18,5) NOT NULL COMMENT 'VALOR GASTOS POSTERIORES',
  `VALARMXX` decimal(18,5) NOT NULL COMMENT 'VALOR ARMADO',
  `VALDERAD` decimal(18,5) NOT NULL COMMENT 'VALOR DERECHOS EN ADUANA',
  `VALINTXX` decimal(18,5) NOT NULL COMMENT 'VALOR INTERESES',
  `VALOTRXX` decimal(18,5) NOT NULL COMMENT 'VALOR OTROS GASTOS',
  `SAFAESTX` enum('PENDIENTE','SIN SALDO','CON SALDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESTADO QUE INDICA EL ESTADO DE LA FACTURA',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO',
  `DSVCBNAV` enum('MANUAL','INTEGRACION','DATA ENTRY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA EL ORIGEN DE LA INFORMACION',
  `DEPIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD',
  `PRODIRXX` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DIRECCION DEL PROVEEDOR',
  `DSVCTRAD` enum('COPIA','ORIGINAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA LA TRADICION DOCUMENTAL PARA BORRAR',
  `PAIIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `DEPIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD',
  `PRODIRPR` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `CIACIDXX` bigint NOT NULL COMMENT 'ID DE LA SECUENCIA AUTORIZACION',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABERA DE SALDOS DE FACTURA SIN AUTORIZAR';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DVCA2025`
--
ALTER TABLE `DVCA2025`
  ADD PRIMARY KEY (`CIACIDXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`);
COMMIT;

