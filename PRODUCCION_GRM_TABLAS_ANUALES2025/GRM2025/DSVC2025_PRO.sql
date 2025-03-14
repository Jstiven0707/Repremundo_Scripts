

CREATE TABLE `DSVC2025` (
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sufijo',
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `FACFECXX` date NOT NULL COMMENT 'Fecha de la factura',
  `TERMIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del termino',
  `LUGENTXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar de Entrega',
  `MONIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la moneda',
  `PAIIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del pais',
  `PESBRUXX` decimal(18,5) NOT NULL COMMENT 'Peso bruto',
  `VALFACXX` decimal(18,5) NOT NULL COMMENT 'Valor de la factura',
  `VALFOBXX` decimal(18,5) NOT NULL COMMENT 'Valor fob',
  `VALFLEXX` decimal(18,5) NOT NULL COMMENT 'Valor flete',
  `VALCONXX` decimal(18,5) NOT NULL COMMENT 'valor conexo',
  `VALSEGXX` decimal(18,5) NOT NULL COMMENT 'Valor seguro',
  `VALVARXX` decimal(18,5) NOT NULL COMMENT 'Valor varios',
  `VALCOMXX` decimal(18,5) NOT NULL COMMENT 'Valor comision',
  `VALMATXX` decimal(18,5) NOT NULL COMMENT 'Valor materia prima',
  `VALINSXX` decimal(18,5) NOT NULL COMMENT 'Valor insumos',
  `VALENVXX` decimal(18,5) NOT NULL COMMENT 'Valor envases',
  `VALHERXX` decimal(18,5) NOT NULL COMMENT 'Valor herramientas',
  `VALINGXX` decimal(18,5) NOT NULL COMMENT 'Valor ingenieria',
  `VALCANXX` decimal(18,5) NOT NULL COMMENT 'Valor canones',
  `VALREVVE` decimal(18,5) NOT NULL COMMENT 'Valor revierte vendedor',
  `VALGASPO` decimal(18,5) NOT NULL COMMENT 'Valor gastos posteriores',
  `VALARMXX` decimal(18,5) NOT NULL COMMENT 'Valor armado',
  `VALDERAD` decimal(18,5) NOT NULL COMMENT 'Valor derechos en aduana',
  `VALINTXX` decimal(18,5) NOT NULL COMMENT 'Valor intereses',
  `VALOTRXX` decimal(18,5) NOT NULL COMMENT 'Valor otros gastos',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de Saldo de Factura' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSVC2025`
--
ALTER TABLE `DSVC2025`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`) USING BTREE;
COMMIT;

