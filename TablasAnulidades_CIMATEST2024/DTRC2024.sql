-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:28:13
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
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTRC2024`
--

DROP TABLE IF EXISTS `DTRC2024`;
CREATE TABLE `DTRC2024` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `BULSALXX` int NOT NULL COMMENT 'Cantidad de bultos disponible',
  `PESSALXX` decimal(18,5) NOT NULL COMMENT 'peso bruto disponible',
  `PESSISXX` decimal(18,5) NOT NULL COMMENT 'peso bruto en la unidad del sistema',
  `DOCTRAET` date NOT NULL COMMENT 'fecha estimada del documento de transporte',
  `DOCTRAES` enum('','CON SALDO','SIN SALDO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'bandera que indica si el documento de transporte tiene saldo',
  `DOTRUBID` smallint NOT NULL COMMENT 'ID del estado de ubicacion del documento de transporte(CIPO0154)',
  `DTRCANOB` enum('','SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA ANTICIPADA OBLIGATORIA',
  `DTRCVLFL` decimal(20,5) NOT NULL COMMENT 'VALOR FLETE',
  `DTRCAPEU` enum('','SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA ENTREGA URGENTE ',
  `DTRCAPAG` enum('','NO','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'bandera que indica si aplica AGENTE DE CARGA',
  `AGEIDXXX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'IDENTIFICADOR AGENTE DE CARGA (CIPO0145)',
  `DEPIDXXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DEL DEPOSITO(CIPO0117)',
  `DTRCFCDT` date NOT NULL COMMENT 'Fecha Corte Documento Transporte',
  `DTRCFEDT` date NOT NULL COMMENT 'Fecha Emision Documento Transporte',
  `DTRCTRAD` enum('','ORIGINAL','COPIA') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'TRADICION DEL DOCUMENTO',
  `CIACIDXX` bigint NOT NULL COMMENT 'ID DE LA AUTORIZACION(CIACYYY)',
  `DRTCBUTO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bultos Total',
  `UNBULTOT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unidad Bultos Total',
  `DRTCPEBR` decimal(23,5) NOT NULL COMMENT 'Peso Bruto Total ',
  `UNPEBRTO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unidad Peso Bruto Total',
  `DRTCPAFL` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Forma de Pago Flete( prepaid, collect)',
  `DRTCPAOT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Forma de Pago Otros ( prepaid, collect)',
  `DRTCFLET` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Flete',
  `DRTCMOFL` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Moneda del Flete',
  `DRTCOTGA` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Otros Gastos',
  `DTRCTPOP` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Operacion (DTA o OTM)',
  `DTRCPAXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Prefijo Aerolinea ',
  `DTRCGUMA` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Guía Master',
  `DTRCTITR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo Tramite',
  `DTRCMETR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Medio de Transporte',
  `DTRCAGCA` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Agente de Carga',
  `DTRCNONV` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre de la Naviera (UK) / Aerolinea',
  `DTRCEMTR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Empresa Transportadora',
  `DTRCTRLO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Transportador Local',
  `DTRCDEID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Deposito ',
  `DTRCNUMT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la Motonave',
  `DTRCNUVI` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Viaje',
  `DTRCEMBR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Embarcador',
  `DTRCNOCO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre Consignatario',
  `DTRCENDO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Endosado a',
  `DTRCNOTI` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Notificar a',
  `DTRCLUIN` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lugar Ingreso',
  `DRTCPAPR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pais de Procedencia',
  `DRTCPUEM` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Puerto de Embarque',
  `DRTCPRDE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Puerto de Descargue o lugar de Ingreso',
  `DRTCPTIC` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de cargue del Contenedor (FCL / LCL)',
  `DRTCTICA` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Carga (A granel, consolidada, carga suelta, para desconsolidar)',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('PENDIENTE','EN PROCESO','ACTIVO','INACTIVO','FINALIZADO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Cabecera Datos Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTRC2024`
--
ALTER TABLE `DTRC2024`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`IDARCHXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
