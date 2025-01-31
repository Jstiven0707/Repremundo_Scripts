-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 31-01-2025 a las 10:35:35
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `SIACOSIA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SIAI0206`
--

CREATE TABLE IF NOT EXISTS `SIAI0206` (
  `DOIIDXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'DO Impo',
  `DOISFIDX` char(3) NOT NULL DEFAULT '' COMMENT 'Sufijo',
  `ADMIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Sucursal',
  `DOIFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Apertura DO',
  `DOIPEDXX` varchar(250) NOT NULL DEFAULT '' COMMENT 'Pedido',
  `SUBIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Subp',
  `DOIID2XX` varchar(20) NOT NULL DEFAULT '' COMMENT 'DO Anterior',
  `SUCEMAXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Email SIA _ Importador',
  `DIAEMAXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Email DIAN',
  `LIMFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Liquidacion',
  `LIMHORXX` varchar(5) NOT NULL DEFAULT '' COMMENT 'Hora liquidacion',
  `TDEIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Declaracion',
  `TDVIDXXX` char(1) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Declaracion DAV',
  `DAAIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Deposito',
  `ODIIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Aduana',
  `PAIIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Procedencia',
  `DEPIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Depto',
  `LIMFEC2X` date NOT NULL DEFAULT '0000-00-00',
  `MTRIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Medio Transporte',
  `TRAIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Transportador',
  `TRAODIXX` varchar(10) NOT NULL COMMENT 'Sucursal Transportadora',
  `TRADESXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Transportador',
  `MONIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Moneda Gastos',
  `MONIDSGX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Moneda Seguro',
  `BANIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Transportador',
  `LINIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Lugar Ingreso',
  `DGEMCXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Manifiesto',
  `DGEFMCXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Manifiesto',
  `DGEDTXXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Documento Transporte',
  `DGEFDTXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Documento Transporte',
  `FACIDXXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Factura',
  `FACFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Factura',
  `CETIDXXX` char(3) NOT NULL DEFAULT '' COMMENT 'Cod Termino',
  `SUCNITXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'NIT SIA _ Importador',
  `SUCDESXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'SIA _ Importador',
  `SUCDIVXX` char(1) NOT NULL DEFAULT '' COMMENT 'Digito Verificacion SIA _ Importador',
  `SUCFAXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Fax SIA _ Importador',
  `USRID2XX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Cod Director',
  `USRNOMXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Declarante Autorizado',
  `DIRECTOR` varchar(20) NOT NULL DEFAULT '' COMMENT 'Director',
  `COMPARTE` varchar(20) NOT NULL DEFAULT '' COMMENT 'Comparte Con',
  `CLIIDXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'NIT Importador',
  `CLIDIVXX` char(1) NOT NULL DEFAULT '' COMMENT 'Digito Verificacion Importador',
  `CLINOMXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Importador',
  `CLIDIRXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Direccion Importador',
  `CLITELXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Telefono Importador',
  `CLIPAIID` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Importador',
  `CLIDEPID` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Depto Importador',
  `CLICIUID` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Ciudad Importador',
  `TCLIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Importador',
  `AECIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Actividad Economica Importador',
  `PIENOMXX` varchar(100) NOT NULL COMMENT 'Proveedor',
  `PIEDIRXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Direccion Proveedor',
  `PIEIDXXX` varchar(30) NOT NULL DEFAULT '' COMMENT 'Cod Proveedor',
  `PIEPAIID` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Compra',
  `PIECIUXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Ciudad Proveedor',
  `PIEFAXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Fax Proveedor',
  `PIEEMAXX` varchar(100) NOT NULL DEFAULT '' COMMENT 'Email Proveedor',
  `DGETRMXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'TRM',
  `MODIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Modalidad',
  `SUBCUOXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Cuotas',
  `ACEIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Acuerdo',
  `FPIIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Forma Pago',
  `TIMIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Importador',
  `SUBPERXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Periodicidad',
  `SUBPAIID` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Origen',
  `SUBPAII2` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Pais Compra',
  `LIMPBRXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Peso Bruto',
  `LIMPNEXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Peso Neto',
  `LIMBULXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Bultos',
  `LIMCANXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Cantidad',
  `UMCIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Unidad',
  `TEMIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Embalaje',
  `LIMVLRXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Fob',
  `LIMFLEXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Flete',
  `LIMSEGXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Seguro',
  `LIMCONXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Conexo',
  `LIMAJUXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Ajuste',
  `LIMNETXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Valor Aduana',
  `LIMSUBXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Nro Subpartidas',
  `ARCIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Subpartida',
  `RIMIDXXX` varchar(30) NOT NULL DEFAULT '' COMMENT 'Nro Registro',
  `TRIIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Registro',
  `RIMANOXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Anio',
  `ODIIDXX2` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Oficina',
  `LIMCIFXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Arancel COP',
  `ARCPORXX` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Arancel',
  `LIMGRAXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP',
  `LIMSUBTX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado IVA COP',
  `ARCIVAXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje IVA',
  `ARCCOMXX` varchar(4) NOT NULL DEFAULT '' COMMENT 'Cod Complementario',
  `ARCSUPXX` varchar(4) NOT NULL DEFAULT '' COMMENT 'Cod Suplementario',
  `LIMIVAXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base IVA COP',
  `LIMDESXX` longtext NOT NULL COMMENT 'Descripcion Mercancias',
  `SUBORDEN` varchar(10) NOT NULL DEFAULT '' COMMENT 'Orden Subp',
  `RIMPVXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Programa',
  `SUBPVPRO` varchar(4) NOT NULL DEFAULT '' COMMENT 'Nro Interno Producto',
  `CDPIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Condicion Proveedor',
  `NCIIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Nivel Comercial',
  `LIMSTKXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Autoadhesivo',
  `LIMSTKAX` varchar(2) NOT NULL COMMENT 'Autoadhesivo Automatico',
  `LIMFSTKX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Autoadhesivo',
  `LIMHSTKX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Autoadhesivo',
  `LIMFACEX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Aceptacion',
  `LIMHACEX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Aceptacion',
  `LIMACEXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Aceptacion',
  `LIMSTKAN` varchar(20) NOT NULL DEFAULT '' COMMENT 'Importacion Anterior',
  `LIMFSTKA` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Importacion Anterior',
  `LIMLEVXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Levante',
  `LIMFLEVX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Levante',
  `LIMILEVX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Levante Inicial',
  `LIMIFLEV` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Levante Inicial',
  `LIMHLEVX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Levante',
  `LIMFHDLE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora en que se diligencio Levante',
  `LIMESCTX` varchar(2) NOT NULL COMMENT 'Envio de Seriales CT',
  `LIMTLEVX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Tipo Levante',
  `LIMFSELX` date NOT NULL COMMENT 'Fecha Obtencion Tipo Selectividad ',
  `LIMHSELX` time NOT NULL COMMENT 'Hora Obtencion Tipo Selectividad ',
  `LIMNFMXX` varchar(15) NOT NULL COMMENT 'Numero de Formulario Manual Sidunea',
  `LIMFFMXX` date NOT NULL COMMENT 'Fecha de generacion Formulario Manual',
  `LIMHFMXX` time NOT NULL COMMENT 'Hora de Generacion Formulario Manual',
  `SUCTIPXX` char(3) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Usuario',
  `SUCCODXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod DIAN',
  `LIMPANXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagos Anteriores',
  `LIMRPANX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Recibo Pago Anterior',
  `LIMFPANX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Pago Anterior',
  `LIMVARXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Varios',
  `ODIIDXX3` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Aduana Importacion Anterior',
  `ODIIDXX4` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Aduana Exportacion Anterior',
  `LIMEXPXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Exportacion Anterior',
  `LIMFEXPX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Exportacion Anterior',
  `TCLCSCXX` char(3) NOT NULL DEFAULT '' COMMENT 'Cod Correccion Legalizacion',
  `TCLESPXX` varchar(200) NOT NULL DEFAULT '' COMMENT 'Especifique Correcion Legalizacion',
  `POLIDXXX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Poliza',
  `POLFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza',
  `POLINIXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza Inicia',
  `POLFINXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza Finaliza',
  `POLMONXX` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Monto Poliza',
  `CSEIDXXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Compania Seguros',
  `LIMCONTR` varchar(20) NOT NULL DEFAULT '' COMMENT 'Contrato para temporal LP',
  `LIMEXPED` varchar(20) NOT NULL DEFAULT '' COMMENT 'Expediente para temporal LP',
  `POLFCANX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Cancelacion Poliza',
  `POLTIPXX` varchar(30) NOT NULL COMMENT 'Tipo de Poliza',
  `LIMNCHAR` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'Caracteres',
  `REGSYNCM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Sincronizacion Declaraciones Manuales a opensyc',
  `LIMESDEL` datetime NOT NULL,
  `LIMFINTP` decimal(1,0) NOT NULL DEFAULT '0' COMMENT 'Finaliza Temporal',
  `LIMFINTM` varchar(100) NOT NULL DEFAULT '' COMMENT 'Motivo Finaliza temporal',
  `LIMTOEXX` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora Transformacion o Ensamble',
  `LIMEFXNP` datetime NOT NULL COMMENT 'Envio FTP XML Nacionalizacion Porsche',
  `LIMBANID` varchar(10) NOT NULL COMMENT 'Codigo Banco	',
  `LIMEXAVO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Envio XML Retorno Integracion NSI',
  `LIMAAAXX` varchar(2) NOT NULL COMMENT 'Autorizacion Agendamiento Aceptacion',
  `LIMEXIVI` datetime NOT NULL COMMENT 'Envio XML Integracion VIGIA',
  `LIMESRGX` datetime NOT NULL,
  `LIMEDVGX` datetime NOT NULL COMMENT 'Envio Diferencias Valores Gecolsa ',
  `LIMIPXXX` decimal(18,5) NOT NULL COMMENT 'Impuesto Plastico Liquidado',
  `LIMIBAN1` decimal(18,5) NOT NULL COMMENT 'Impuesto Bebidas Azucaradas Nivel 1 Liquidado',
  `LIMIBAN2` decimal(18,5) NOT NULL COMMENT 'Impuesto Bebidas Azucaradas Nivel 2 Liquidado',
  `LIMIBAN3` decimal(18,5) NOT NULL COMMENT 'Impuesto Bebidas Azucaradas Nivel 3 Liquidado',
  `LIMIBAXX` decimal(18,5) NOT NULL COMMENT 'Impuesto Bebidas Azucaradas Liquidado',
  `LIMISCUK` decimal(18,5) NOT NULL COMMENT '	Impuesto Sodio Comestibles Ultraprocesados K/Cal Liquidado',
  `LIMISCUG` decimal(18,5) NOT NULL COMMENT 'Impuesto Sodio Comestibles Ultraprocesados Gramos Liquidado',
  `LIMIACUX` decimal(18,5) NOT NULL COMMENT 'Impuesto Azucares Comestibles Ultraprocesados Liquidado',
  `LIMIGSCU` decimal(18,5) NOT NULL COMMENT 'Impuesto Grasas Saturadas Comestibles Ultraprocesados Liquidado',
  `LIMGILCC` datetime NOT NULL COMMENT 'Generar evento Levante CDZ030 Cargowise',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Creado',
  `REGHORXX` varchar(5) NOT NULL DEFAULT '' COMMENT 'Hora',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Modificado',
  `REGESTXX` varchar(8) NOT NULL DEFAULT '' COMMENT 'Estado',
  `OINIDXXX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Cod Oficina Incomex',
  `CLIUAPXX` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nro UAP',
  `LIMOTRXX` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Otros',
  `LIMGRA2X` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Arancel',
  `LIMGRAUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Arancel',
  `LIMSUBT2` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP IVA',
  `LIMSUBUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD IVA',
  `SUBSALPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Salvaguardia',
  `SUBSALBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Salvaguardia',
  `SUBSALTI` char(1) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Salvaguardia',
  `SUBSALTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Salvaguardia',
  `SUBSALTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Salvaguardia',
  `SUBSALUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Salvaguardia',
  `SUBDCOPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Compensatorio',
  `SUBDCOBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Compensatorio',
  `SUBDCOTI` char(1) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Compensatorio',
  `SUBDCOTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Compensatorio',
  `SUBDCOTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Compensatorio',
  `SUBDCOUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Compensatorio',
  `SUBANTPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Antidumping',
  `SUBANTBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Antidumping',
  `SUBANTTI` char(1) NOT NULL DEFAULT '' COMMENT 'Cod Tipo Antidumping',
  `SUBANTTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Antidumping',
  `SUBANTTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Antidumping',
  `SUBANTUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Antidumping',
  `SUBPANSA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Sancion',
  `SUBPANOT` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Otros',
  `SUBSANPO` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Sancion',
  `SUBSANBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Sancion',
  `SUBSANTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Sancion',
  `SUBSANTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Sancion',
  `SUBRESPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Rescate',
  `SUBRESBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Rescate',
  `SUBRESTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Rescate',
  `SUBRESTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total pagar COP Rescate',
  `TOTALGEN` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total COP Generado',
  `SUBOTRPO` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Otros',
  `SUBOTRBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Otros',
  `SUBOTRTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Otros',
  `SIMPCOPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje consumo',
  `SIMPCOBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base consumo',
  `SIMPCOTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Generado consumo',
  `SIMPCOTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagado consumo',
  `SIMPINPO` decimal(9,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje ingreso',
  `SIMPINBA` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base ingreso',
  `SIMPINTL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Generado ingreso',
  `SIMPINTP` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagado ingreso',
  `SIMPCRCO` varchar(20) NOT NULL DEFAULT '' COMMENT 'Cod registro comerciante OCCRE',
  `TOTALPAG` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total COP Pagado',
  `TOTALPUS` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total USD Pagado',
  `GRMSALDO` decimal(15,0) NOT NULL DEFAULT '0',
  `SUBOTRST` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Subtotal Otros',
  `SUBCUOVL` decimal(18,5) NOT NULL DEFAULT '0.00000' COMMENT 'Valor Cuotas',
  `SUBID2XX` varchar(10) NOT NULL DEFAULT '' COMMENT 'Subp Final',
  `FACID2XX` varchar(50) NOT NULL DEFAULT '' COMMENT 'Factura Final',
  `SUBPRNDI` varchar(1) NOT NULL COMMENT 'Impresion DI',
  `LIMCTREG` char(2) NOT NULL DEFAULT '' COMMENT 'Cod Control Temporales',
  `LIMCTPER` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT 'Permanencia Control Temporales',
  `LIMCTFIN` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Finalizacion Control Temporales',
  `LIMCTSPE` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Periodicidad Control Temporales',
  `LIMCTVEN` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Vence Cuota Control Temporales',
  `LIMCTVCU` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Valor Cuota Control Temporales',
  `LIMCTCUO` decimal(2,0) NOT NULL DEFAULT '0' COMMENT 'Cuotas control Temporales',
  `LIMCTPCU` decimal(2,0) NOT NULL DEFAULT '0' COMMENT 'Siguiente Cuota Control Temporales',
  `LIMCTDIA` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'Dias Vence Siguiente Cuota Control Temporales',
  `LIMCTOBS` text NOT NULL COMMENT 'Observaciones Control Temporales',
  `LIMRADXX` varchar(30) NOT NULL DEFAULT '' COMMENT 'Nro Radicado Siglo XXI',
  `LIMFRADX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Radicado',
  `LIMHRADX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Radicado',
  `LIMROB1X` text NOT NULL COMMENT 'Datos robot 1',
  `LIMROB2X` text NOT NULL COMMENT 'Datos robot 1_2',
  `LIMROB3X` text COMMENT 'Documentos Principales RPA',
  `LIMROB4X` text COMMENT 'Documentos Adicionales RPA',
  `LIMRBACE` varchar(10) NOT NULL DEFAULT '' COMMENT 'Estado Acept Autom.',
  `LIMRBEDI` varchar(10) NOT NULL DEFAULT '' COMMENT 'Robot EDI',
  `LIMRBLEV` varchar(10) NOT NULL DEFAULT '' COMMENT 'Robot Levante',
  `LIMRBEDF` varchar(254) NOT NULL DEFAULT '' COMMENT 'Archivo Edi',
  `LIMRBEDR` text NOT NULL COMMENT 'Resultado edi del robot',
  `LIMRBAER` text NOT NULL COMMENT 'Resultado robot aceptacion',
  `LIMRBLER` text NOT NULL COMMENT 'Resultado levante del robot',
  `LIMRBROP` varchar(30) NOT NULL DEFAULT '' COMMENT 'Recibo oficial de pago',
  `LIMRBROF` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha recibo oficial de pago',
  `LIMRBROH` varchar(10) NOT NULL DEFAULT '' COMMENT 'Hora recibo oficial de pago',
  `LIMRBROV` varchar(20) NOT NULL DEFAULT '' COMMENT 'Valor recibo oficial de pago',
  `LIMRBROR` text NOT NULL COMMENT 'Resultado recibo oficial de pago',
  `LIMRBLFR` text NOT NULL COMMENT 'Frente Robot Levante',
  `LIMRBAFR` text NOT NULL COMMENT 'Aceptacion Frente',
  `LIMRBADO` text NOT NULL COMMENT 'Robot de Aceptacion Dorsos',
  `LIMRBLDO` longtext NOT NULL COMMENT 'Dorsos Robot Levante',
  `LIMRBLAN` varchar(10) NOT NULL DEFAULT '' COMMENT 'Version Declaracion Robot Levante',
  `VALORPAG` decimal(17,2) NOT NULL COMMENT 'Valor pagado',
  `DESBANCO` varchar(250) NOT NULL COMMENT 'Descripcion del Banco',
  `TRANSARC` text NOT NULL,
  `LIMCSCXX` varchar(10) NOT NULL COMMENT 'Se utiliza en GRM para determinar si afecta o no la vigencia de TEMPORAL',
  `LIMLIQPR` varchar(2) NOT NULL COMMENT 'Declaracion con Liquidacion Provisional',
  `AGRBEDFE` date NOT NULL COMMENT 'Fecha agendamiento Robot Edi',
  `AGRBEDHO` time NOT NULL COMMENT 'Hora agendamiento Robot Edi',
  `AGRBACFE` date NOT NULL COMMENT 'Fecha agendamiento Robot Aceptacion',
  `AGRBACHO` time NOT NULL COMMENT 'Hora agendamiento Robot Aceptacion',
  `AGRBLEFE` date NOT NULL COMMENT 'Fecha agendamiento Robot Levante',
  `AGRBLEHO` time NOT NULL COMMENT 'Hora agendamiento Robot Levante',
  `LIMDOCSO` varchar(2) NOT NULL COMMENT 'Guarda SI Cuando el Robot Hace Documentos Soporte',
  `LIMACTXX` varchar(20) NOT NULL COMMENT 'Numero Acta de Inspeccion',
  `LIMFACTX` date NOT NULL COMMENT 'Fecha Acta de Inspeccion',
  `LIMSIPLA` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora de Ejecucion de la Tarea Sistema Prevencion Lavado Activos',
  `LIMAEUAP` varchar(2) NOT NULL COMMENT 'Autorizacion Generar el EDI Importador UAP',
  `LIMACLEV` varchar(2) NOT NULL COMMENT 'Autorizacion Complementar Levante (SI/NO)',
  `LIMRBEST` varchar(10) NOT NULL COMMENT 'Estado Robot 2',
  `LIMRFSPB` datetime NOT NULL COMMENT 'Fecha y Hora Ultima Solicitud Pago en Banco Robot',
  `LIMRFSLE` datetime NOT NULL COMMENT 'Fecha y Hora Ultima Solicitud Levante Robot',
  `LIMFCOIN` datetime NOT NULL COMMENT 'Fecha y Hora Robot Consulta de Inventarios',
  `LIMFACAN` datetime NOT NULL COMMENT 'Fecha y Hora Robot Actualizacion Anticipadas',
  `LIMNDEXX` varchar(50) NOT NULL COMMENT 'Numero DEX',
  `LIMFDEXX` date NOT NULL COMMENT 'Fecha DEX',
  `LIMACDEX` varchar(50) NOT NULL COMMENT 'Acta de Destruccion',
  `LIMFACDE` date NOT NULL COMMENT 'Fecha Acta de Destruccion',
  `LIMDEMOX` varchar(50) NOT NULL COMMENT 'Declaracion de Modificacion',
  `LIMFDEMO` date NOT NULL COMMENT 'Fecha Declaracion de Modificacion',
  `LIMDCUPV` varchar(2) NOT NULL DEFAULT 'NO' COMMENT 'Marca de consumo cupo plan vallejo',
  `LIMAUTPV` varchar(10) NOT NULL DEFAULT 'NORMAL' COMMENT 'AutorizaciÃ³n del tramite para cupo plan vallejo',
  `LIMFTALX` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora de Ejecucion de la Tarea Actualizacion Levante',
  `LIMCCTXX` varchar(20) NOT NULL COMMENT 'Consecutivo Carta Tes',
  `LIMEXFSX` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Campo solicitado por OPEN',
  `REGSTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOIIDXXX`,`DOISFIDX`,`ADMIDXXX`,`SUBID2XX`),
  KEY `CLIIDXXX` (`CLIIDXXX`),
  KEY `LIMCCTXX` (`LIMCCTXX`),
  KEY `DOIID2XX` (`DOIID2XX`),
  KEY `LIMLEVXX` (`LIMLEVXX`,`LIMFLEVX`,`LIMRFSLE`,`REGSYNCM`),
  KEY `LIMLEVXX2` (`LIMLEVXX`),
  KEY `LIMSTKXX` (`LIMSTKXX`),
  KEY `LIMSTKAX` (`LIMSTKAX`),
  KEY `LIMFSTKX` (`LIMFSTKX`),
  KEY `LIMFLEVX` (`LIMFLEVX`),
  KEY `LIMACEXX` (`LIMACEXX`),
  KEY `LIMFACEX` (`LIMFACEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Declaraciones Impo';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
