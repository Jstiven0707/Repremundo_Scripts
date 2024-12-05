-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 10:07:15
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CONE2024`
--

CREATE TABLE IF NOT EXISTS `CONE2024` (
  `IDCOSXXX` int(9) NOT NULL DEFAULT '0' COMMENT 'ID del costeador',
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Secuencia del ticket',
  `TCAANOXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Anio',
  `TCASEMXX` decimal(2,0) NOT NULL COMMENT 'Semana del Anio',
  `MONIDXXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Moneda',
  `PRONUEXX` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el termino de negociacion acorde a lo que diligencie el usuario',
  `INCOTERM` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el termino de negociacion acorde a lo que diligencie el usuario',
  `PAIIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Pais de Origen',
  `PAIIDPRX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del pais de procedencia',
  `BANADUXX` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que Indica Aduana de Ingreso',
  `PAIIDPSX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del pais de paso',
  `LINIDXXX` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar de ingreso',
  `BANFABDE` enum('PUERTO','FABRICA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Fabrica o lugar de entrega en destino',
  `PROCSCXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Producto',
  `PRONCOXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del producto',
  `ARCIDXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre comercial',
  `PROUNDXX` enum('','KILOGRAMOS NETO','CANTIDAD UNIDADES') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica la unidad del producto',
  `VLRUNIXX` decimal(16,2) NOT NULL COMMENT 'Valor de la unidad peso kilogramo neto',
  `PESKGBXX` decimal(16,2) NOT NULL COMMENT 'Valor de la unidad peso kilogramo bruto',
  `VLRDOLXX` decimal(16,2) NOT NULL COMMENT 'Precio en dolares',
  `MEDTRAXX` enum('','MARITIMO CONTENEDOR LLENO','AEREO','TERRESTRE','LOADED IN A LCL CONTAINER') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el medio de transporte',
  `TIPCONXX` enum('','NOAPLICA','20 REFEER','20 STANDARD DRY','40 HIGHCUBE DRY','40 HIGHCUBE REEFER','40 REEFER','40 STANDARD DRY','LCL','FCL','BREAKBULK') COLLATE utf8_unicode_ci NOT NULL,
  `COSOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones del precosteo',
  `COSREMXX` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si puede remontarse',
  `COSTEMXX` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si tiene control de temperatura',
  `AGENTEID` int(10) DEFAULT NULL COMMENT 'ID del agente, inhouse responsable',
  `BANMERPE` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si es mercancia peligrosa',
  `BANMEROB` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'observacion de la mercacia peligrosa',
  `VLRFLDOL` decimal(16,2) NOT NULL COMMENT 'Flete internacional valor USD',
  `VLRFLCOP` decimal(16,2) NOT NULL COMMENT 'Flete internacional valor COP',
  `GASDESXX` enum('','JAS','AGILITY','DSV','DHL','FEDEX','GEODIS','OTROS') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de gastos en destino',
  `GASDEUSD` decimal(16,2) NOT NULL COMMENT 'Gastos en destino valor USD',
  `GASDECOP` decimal(16,2) NOT NULL COMMENT 'Gastos en destino valor COP',
  `GASFLUSD` decimal(16,2) NOT NULL COMMENT 'Valor del flete  USD',
  `GASFLCOP` decimal(16,2) NOT NULL COMMENT 'Valor del flete  COP',
  `GASAGUSD` decimal(16,2) NOT NULL COMMENT 'Valor agenciamiento aduanero valor USD',
  `GASAGCOP` decimal(16,2) NOT NULL COMMENT 'Valor agenciamiento aduanero valor COP',
  `GASGLUSD` decimal(16,2) NOT NULL COMMENT 'Valor gasto logistico valor USD',
  `GASGLCOP` decimal(16,2) NOT NULL COMMENT 'Valor gasto logistico valor COP',
  `GASSSUSD` decimal(16,2) NOT NULL COMMENT 'Valor sellos de seguridad valor USD',
  `GASSSCOP` decimal(16,2) NOT NULL COMMENT 'Valor sellos de seguridad valor COP',
  `GASTRUSD` decimal(16,2) NOT NULL COMMENT 'Valor tributos  USD',
  `GASTRCOP` decimal(16,2) NOT NULL COMMENT 'Valor tributos  COP',
  `LIQEXUSD` decimal(16,2) NOT NULL COMMENT 'Valor EXW USD',
  `LIQEXCOP` decimal(16,2) NOT NULL COMMENT 'Valor EXW COP',
  `LIQGSUSD` decimal(16,2) NOT NULL COMMENT 'Valor gastos de exportacion USD',
  `LIQGSCOP` decimal(16,2) NOT NULL COMMENT 'Valor gastos de exportacion COP',
  `LIQFGUSD` decimal(16,2) NOT NULL COMMENT 'Valor flete mas gastos en origen USD',
  `LIQFGCOP` decimal(16,2) NOT NULL COMMENT 'Valor flete mas gastos en origen COP',
  `LIQVSUSD` decimal(16,2) NOT NULL COMMENT 'valor seguro USD',
  `LIQVSCOP` decimal(16,2) NOT NULL COMMENT 'Valor seguro COP',
  `LIQBSUSD` decimal(16,2) NOT NULL COMMENT 'Valor base gravable USD',
  `LIQBSCOP` decimal(16,2) NOT NULL COMMENT 'Valor base gravable COP',
  `LIQGRUSD` decimal(16,2) NOT NULL COMMENT 'Valor base gravamen USD',
  `LIQGRCOP` decimal(16,2) NOT NULL COMMENT 'Valor base gravamen COP',
  `LIQSUCOP` decimal(16,2) NOT NULL COMMENT 'Valor subtotal COP',
  `LIQIVUSD` decimal(16,2) NOT NULL COMMENT 'Valor del IVA USD',
  `LIQIVCOP` decimal(16,2) NOT NULL COMMENT 'Valor del IVA COP',
  `LIQTRUSD` decimal(16,2) NOT NULL COMMENT 'Valor de tributos USD',
  `LIQTRCOP` decimal(16,2) NOT NULL COMMENT 'Valor de tributos COP',
  `TCOSIUSD` decimal(16,2) NOT NULL COMMENT 'TCO sin IVA USD',
  `TCOSICOP` decimal(16,2) NOT NULL COMMENT 'TCO sin IVA COP',
  `TCOSKUSD` decimal(16,2) NOT NULL COMMENT 'TCO Kilogramo sin IVA USD',
  `TCOSKCOP` decimal(16,2) NOT NULL COMMENT 'TCO Kilogramo sin IVA COP',
  `CONGLUSD` decimal(16,2) NOT NULL COMMENT 'Gastos logisticos USD',
  `CONGLCOP` decimal(16,2) NOT NULL COMMENT 'Gastos logisticos COP',
  `CONFTUSD` decimal(16,2) NOT NULL COMMENT 'Flete terrestre USD',
  `CONFTCOP` decimal(16,2) NOT NULL COMMENT 'Flete terrestre COP',
  `CONADUSD` decimal(16,2) NOT NULL COMMENT 'Agenciamiento aduanero USD',
  `CONADCOP` decimal(16,2) NOT NULL COMMENT 'Agenciamiento aduanero COP',
  `CONSGUSD` decimal(16,2) NOT NULL COMMENT 'Seguridad USD',
  `CONSGCOP` decimal(16,2) NOT NULL COMMENT 'Seguridad COP',
  `CONNVUSD` decimal(16,2) NOT NULL COMMENT 'Naviera USD',
  `CONNVCOP` decimal(16,2) NOT NULL COMMENT 'Naviera COP',
  `CONEAPEX` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de aplica envio',
  `CONCPUSD` decimal(16,2) NOT NULL COMMENT 'Valor envia cargas pequeñas 20kg USD',
  `CONCPCOP` decimal(16,2) NOT NULL COMMENT 'Valor envia cargas pequeñas 20kg COP',
  `CONGGUSD` decimal(16,2) NOT NULL COMMENT 'Gravamen USD',
  `CONGGCOP` decimal(16,2) NOT NULL COMMENT 'Gravamen COP',
  `CONEAPAT` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera si aplica antidumping',
  `CONVAUSD` decimal(16,2) NOT NULL COMMENT 'Valor antidumping USD',
  `CONVACOP` decimal(16,2) NOT NULL COMMENT 'Valor antidumping COP',
  `CONIVUSD` decimal(16,2) NOT NULL COMMENT 'Valor IVA USD',
  `CONIVCOP` decimal(16,2) NOT NULL COMMENT 'Valor IVA COP',
  `CONACUSD` decimal(16,2) NOT NULL COMMENT 'Agentes de cargar USD',
  `CONACCOP` decimal(16,2) NOT NULL COMMENT 'Agentes de cargar COP',
  `CONPSUSD` decimal(16,2) NOT NULL COMMENT 'Sumatoria de campos de la seccion price conditions USD',
  `CONPSCOP` decimal(16,2) NOT NULL COMMENT 'Sumatoria de campos de la seccion price conditions COP',
  `CONPCUSD` decimal(16,2) NOT NULL COMMENT 'Sumatoria de campos de la seccion price conditions mas campo de costo de la mercancia USD',
  `CONPCCOP` decimal(16,2) NOT NULL COMMENT 'Sumatoria de campos de la seccion price conditions mas campo de costo de la mercancia COP',
  `ESTADOXX` enum('PENDIENTE','COORDINADOR','FINALIZADO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'Estado del Precosteo',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que creo el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion',
  `REGUSRMX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifico',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDCOSXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Solicitud de Costeo';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
