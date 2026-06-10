-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 15-05-2026 a las 15:09:00
-- Versión del servidor: 8.0.42
-- Versión de PHP: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDFI2026`
--

CREATE TABLE `MDFI2026` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO (MDOSYYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la factura(DSVCYYY)',
  `SECITEXX` int NOT NULL COMMENT 'SECUENCIA DEL ITEM(DSVDYYYY)',
  `PROIDXXX` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del proveedor',
  `ITERESXX` decimal(18,5) NOT NULL COMMENT 'SALDO RESERVADO',
  `TIPPROID` int NOT NULL COMMENT 'ID del tipo de producto (CIPO0075)',
  `MODIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la modalidad(CIPO0005)',
  `PAIIDORX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais de ORIGEN',
  `JSONPROD` json NOT NULL COMMENT 'INFORMACION DEL PRODUCTO',
  `GRUCOIDX` int NOT NULL COMMENT 'id del acuerdo comercial(CIPO0062)',
  `PAIIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `ACUDIIDX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'codigo del acuerdo acorde a la pagina de la dian(CIPO0061)',
  `ITELOTXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Lotes del item ',
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro o LICENCIA',
  `VALTOITE` decimal(18,5) NOT NULL COMMENT 'Valor total del item',
  `VALSEGIT` decimal(18,5) NOT NULL COMMENT 'Seguro del item',
  `VALFLEIT` decimal(18,5) NOT NULL COMMENT 'Valor FLETE del item',
  `VALUNIIT` decimal(18,5) NOT NULL COMMENT 'UNITARIO',
  `CANITEXX` decimal(18,5) NOT NULL COMMENT 'Cantidad ITEM',
  `DOCNRO2X` int NOT NULL COMMENT 'Numero del DO DE REGISTRO',
  `MDFIRECO` enum('','NO','SI','N/A') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si está completo el registro',
  `MDFIDMCO` enum('NO','SI','N/A') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si está completo el descriptor mínimo',
  `MDFIMOCO` enum('NO','SI','N/A') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si está completa la modalidad',
  `MDFIDCCO` enum('NO','SI','N/A') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si está completo los datos complementarios',
  `MDFITIPD` enum('','ANTICIPADA','CORRECCION','INICIAL','LEGALIZACION','MODIFICACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE DECLARACION IMPORTACION',
  `MDFINUDX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DEL DEX',
  `AUTRELGC` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si cuenta con autorizacion de restriccion legal complementaria',
  `MDFIVALF` decimal(18,5) NOT NULL COMMENT 'Valor FOB del item',
  `SUBIDXXX` int NOT NULL COMMENT 'Secuencia de la declaracion (MDDIYYYY)',
  `AUTEXBOR` enum('NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si cuenta exclusion del beneficio de origen',
  `MDFIPSBR` decimal(18,5) NOT NULL COMMENT 'PESO BRUTO DEL ITEM EN KILOGRAMOS',
  `MDFIPSNT` decimal(18,5) NOT NULL COMMENT 'PESO NETO DEL ITEM EN KILOGRAMOS',
  `FPIIDXXX` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Forma Pago (CIPO0011)',
  `LINEITEM` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'linea del item',
  `PEDITEXX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PEDIDO DEL ITEM',
  `PEDTIEXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'pedido del item',
  `MDFINUCA` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la carpeta',
  `MDDASCEX` smallint NOT NULL COMMENT 'Secuencia de la DAV',
  `MDFIDAVX` json NOT NULL COMMENT 'JSON estructura descriptores minimos DAV',
  `ESTMERID` tinyint NOT NULL COMMENT 'ID estado mercancia casilla 73 (CIPO0004)',
  `ANIOFABX` int NOT NULL COMMENT 'Año de fabricacion (DSVDYYYY)',
  `UNIIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la unidad (CIPO0059)',
  `MDFICONE` decimal(18,5) NOT NULL COMMENT 'Valor CONEXOS del item',
  `MDFIGRAV` decimal(18,5) NOT NULL COMMENT 'Valor GRAVAMEN del item',
  `MDIFIVAX` decimal(18,5) NOT NULL COMMENT 'Valor IVA del item',
  `MDFIARAN` decimal(18,5) NOT NULL COMMENT 'Valor ARANCEL del item',
  `MDFINUME` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de embarque',
  `MDFIFOBA` decimal(18,5) NOT NULL COMMENT 'Valor adicional FOB',
  `MDFISEGA` decimal(18,5) NOT NULL COMMENT 'Valor adicional seguro',
  `MDFIVADE` decimal(18,5) NOT NULL COMMENT 'Valor de la deduccion',
  `MDFIVAFD` decimal(18,5) NOT NULL COMMENT 'Valor FOB en dolares',
  `MDFIVFLD` decimal(18,5) NOT NULL COMMENT 'Valor flete en dolares',
  `MDFIVSED` decimal(18,5) NOT NULL COMMENT 'Valor seguro en dolares',
  `MDFIVDED` decimal(18,5) NOT NULL COMMENT 'Valor deducciones en dolares',
  `MDFIFOAD` decimal(18,5) NOT NULL COMMENT 'Valor FOB adicional en dolares',
  `MDFISGAD` decimal(18,5) NOT NULL COMMENT 'Valor seguro adicional en dolares',
  `TIMIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Tipo Importacion (CIPO0018)',
  `MDFIORCO` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Orden de compra',
  `MDFISECO` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Segundo codigo de producto',
  `MDDASECX` int NOT NULL COMMENT 'Secuencia de la DAV (MDDAYYYY)',
  `MDFIFLDT` decimal(18,5) NOT NULL COMMENT 'Valor Flete documento de transporte',
  `MDFIFLDD` decimal(18,5) NOT NULL COMMENT 'Valor Flete documento de transporte en dolares',
  `PADAIDXX` smallint NOT NULL COMMENT 'ID del paquete DAV',
  `MDFICANS` decimal(18,5) NOT NULL COMMENT 'Cantidad factura acorde a subpartida',
  `MDFINOPR` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero del programa',
  `MDFICDPV` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo interno del plan vallejo',
  `MDFIFEDX` date NOT NULL COMMENT 'Fecha DEX',
  `MDFIADDX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Aduana DEX (CIMS0049)',
  `MDFIAPLI` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica legalizacion con efectos de inicial',
  `APLACCXX` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA ACUERDODE ORIGEN',
  `VALPRUOR` enum('','VALIDADO','RECHAZADO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESTADO DE VALIDACION',
  `DELNOTIT` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DELIVERY NOTE',
  `MDFICONX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONTENEDOR LG',
  `MFICDPVX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo interno del producto Plan VAllejo',
  `MDFIVISB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Visto bueno entrega urgente',
  `NUMPLXXX` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero PL',
  `MDFIAPOR` enum('','SIN CARGAR','CARGADO','PENDIENTE VALIDACION') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si tiene soporte cargado de prueba de origen',
  `MDFICALC` enum('','PCT_ITEM','PCT_ADUANA','FIX_ITEM') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Metodo de calculo Tipo de regalia',
  `MDFIVIRG` decimal(12,5) NOT NULL COMMENT 'Porcentaje del Tipo de regalia',
  `MDFICFDV` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Confirmacion casillas DIM / DAV',
  `MDFICADV` decimal(18,5) NOT NULL COMMENT 'CANTIDAD DAV(DSVDYYYY)',
  `MDFIDVCC` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica que fue dividido por cantidad de caracteres',
  `MDFIIDPO` bigint NOT NULL COMMENT 'IDE DEL DOCUMENTO SOPORTE DEMOSTRACION DIRECTA CARGADOEN GENIO',
  `MDFIIDED` bigint NOT NULL COMMENT 'ID DEL DOCUMENTO SOPORTE DE DEMOSTRACION EXPEDICION DIRECTA CARGADO EN GENIO',
  `MDFICUOX` int NOT NULL COMMENT 'Numero de cuotas temporales',
  `MDFIVAAD` decimal(18,5) NOT NULL COMMENT 'Valor Ajustes',
  `MDFIFLEO` decimal(18,5) NOT NULL COMMENT 'Flete original',
  `MDFIPSBO` decimal(18,5) NOT NULL COMMENT 'Peso bruto original',
  `MDFIPSNO` decimal(18,5) NOT NULL COMMENT 'Peso neto original',
  `MDFIFHPR` datetime NOT NULL COMMENT 'Fecha y hora analisis prorrateo',
  `VALSEGOR` decimal(18,5) NOT NULL COMMENT 'Valor seguro original',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION Y FACTURA VS ITEMS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDFI2026`
--
ALTER TABLE `MDFI2026`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `FACIDXXX` (`FACIDXXX`),
  ADD KEY `SECITEXX` (`SECITEXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `TIPPROID` (`TIPPROID`),
  ADD KEY `MODIDXXX` (`MODIDXXX`),
  ADD KEY `PAIIDORX` (`PAIIDORX`),
  ADD KEY `GRUCOIDX` (`GRUCOIDX`),
  ADD KEY `PAIIDXXX` (`PAIIDXXX`),
  ADD KEY `ACUDIIDX` (`ACUDIIDX`),
  ADD KEY `FPIIDXXX` (`FPIIDXXX`),
  ADD KEY `MDDASCEX` (`MDDASCEX`),
  ADD KEY `UNIIDXXX` (`UNIIDXXX`),
  ADD KEY `MDFIAADDX` (`MDFIADDX`);
COMMIT;
