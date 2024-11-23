-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 21-11-2024 a las 08:31:51
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDOS2024`
--

DROP TABLE IF EXISTS `MDOS2024`;
CREATE TABLE `MDOS2024` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero de Do (MDOSYYYY)',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la sucursal (CIMS0049)',
  `DOCTRIMP` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DOCUMENTO DE TRANSPORTE (DTRCYYYY.DTRCDOTR)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `DOCTIPXX` enum('','IMPORTACION','REGISTRO','EXPORTACION','OTROS','TRANSITO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `CCOIDXXX` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'centro de costo (CIPF0048)',
  `SUBCCOID` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'subcentro de costo (CIPF0049)',
  `DOIPEDXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Pedido',
  `DOTEMPXX` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si es temporal',
  `LINEIDXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la linea de negocio (CIPO0089)',
  `SEGIDXXX` smallint NOT NULL COMMENT 'ID del segmento',
  `CONTACID` int NOT NULL COMMENT 'secuencia del contacto (CIPO0104)',
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOTPIDXX` int NOT NULL COMMENT 'ID DEL PROYECTO',
  `DOCRDTAX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRANIDXX` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL TRANSPORTADOR INTERNACIONAL',
  `FECEMIDT` date NOT NULL COMMENT 'FECHA DE EMISION DOCUMENTO DE TRANSPORTE',
  `HOREMIDT` time NOT NULL COMMENT 'HORA DE EMISION DOCUMENTO DE TRANSPORTE',
  `FECLIBDT` date NOT NULL COMMENT 'FECHA DE LIBERACION DOCUMENTO DE TRANSPORTE',
  `HORLIBDT` time NOT NULL COMMENT 'HORA DE LIBERACION DOCUMENTO DE TRANSPORTE',
  `APLLIBXX` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica emision liberacion documento de transporte',
  `DOCNUMAX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE MANIFIESTO',
  `PESDOCTR` decimal(16,5) NOT NULL COMMENT 'peso bruto usados del documento de transporte',
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
  `USRCODCU` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario,coordinador de cuenta',
  `DOCURSSE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario,coordinador operaciones puerto',
  `DOCTIPDE` enum('','ANTICIPADA','CORRECCION','INICIAL','LEGALIZACION','LIBRE','MODIFICACION','PREVIA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE\r\nDECLARACION IMPORTACION Y TIPO DE\r\nREGIMEN CUANDO ES REGISTRO',
  `DOCTIPRE` enum('','ESPECIFICO','GLOBAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE\r\nREGISTRO',
  `PAIIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id del pais, para registros pais\r\nde compra',
  `DOCJURAD` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'jurisdiccion aduanera\r\n(CIMS0049)',
  `MTRIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Medio Transporte\r\n(CIPO0013)',
  `MDOSREMB` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE\r\nINDICA SI ES REEMBOLSABLE',
  `DOCFELEV` date NOT NULL COMMENT 'Fecha de levante',
  `ESTAFACX` tinyint NOT NULL COMMENT 'Id del estado',
  `PAIIDPRX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais de procedencia\r\n(VARCHAR 4 ID del pais )',
  `MDOSLING` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA SUCURSAL',
  `USRGRUXX` smallint NOT NULL COMMENT 'ID DEL GRUPO DUEÑO DE LA OPERACION (CIMS0039)',
  `DOCMTXXX` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MODO DE TRASNPORTE',
  `MOTIDXXX` int NOT NULL COMMENT 'ID DE LA MOTONAVE',
  `FECCALDE` date NOT NULL COMMENT 'FECHA DE CALCULO',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO',
  `VERDESCA` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JUSTIFICACION DE CARGA',
  `DOCFEMAX` date NOT NULL COMMENT 'FECHA DE MANIFIESTO',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA MONEDA(CIPO0022)',
  `FECTASXX` date NOT NULL COMMENT 'FECHA DE TASA',
  `MDOSOPCR` enum('','ROJO','NARANJA','VERDE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA LA CRITICIDAD DE LA OPERACION',
  `TOKIDXXX` int NOT NULL COMMENT 'ID DEL TIPO DE KPI',
  `DOCJURAO` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JURISDICCION ADUANERA DESTINO (CIMS0049)',
  `MDOSBALF` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si la operacion esta lista para facturar',
  `MDOSJUFA` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Justificacion de facturacion',
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
-- Indices de la tabla `MDOS2024`
--
ALTER TABLE `MDOS2024`
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
  ADD KEY `DEPIDXXX` (`DEPIDXXX`),
  ADD KEY `ESTAFACX` (`ESTAFACX`),
  ADD KEY `PAIIDPRX` (`PAIIDPRX`),
  ADD KEY `USRGRUXX` (`USRGRUXX`),
  ADD KEY `MOTIDXXX` (`MOTIDXXX`),
  ADD KEY `IDARCHXX` (`IDARCHXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `TOKIDXXX` (`TOKIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
