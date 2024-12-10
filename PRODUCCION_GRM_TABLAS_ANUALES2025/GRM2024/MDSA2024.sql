-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:21:13
-- Versión del servidor: 5.7.31-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDSA2024`
--

CREATE TABLE `MDSA2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal del DO',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo del Do',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `FECSAEXX` date NOT NULL COMMENT 'Fecha de la SAE',
  `MEZPXXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mercancia se encuentra en Zona Primaria',
  `HORSAEXX` time NOT NULL COMMENT 'Hora de la SAE',
  `NUMDEXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DEX',
  `FECDEXXX` date NOT NULL COMMENT 'Fecha del DEX',
  `NUMDEXCO` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Dex Corregido',
  `FECDEXCO` date NOT NULL COMMENT 'Fecha Dex Correccion',
  `APLSAEGL` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica SAE Global',
  `APLSAEPR` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica SAE Provisional',
  `FECVENSA` date NOT NULL COMMENT 'Fecha de Vencimiento de la SAE',
  `NUMASUXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE ASUNTO',
  `TIPSAEXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de SAE',
  `URLXXXXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Url PDF Sae',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Exportador Local ',
  `DVEXXXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DV Exportador',
  `APL1EXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido Exportador',
  `APL2EXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido Exportador',
  `NOM1EXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre Exportador',
  `NOM2EXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros Nombres Exportador',
  `RSOCEXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razon Social Exportador',
  `TCLIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Clase de Exportador ',
  `CLICONXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contacto ',
  `CLIDIRXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion Exportador Local ',
  `CLITELXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono Exportador Local ',
  `CLIEMAXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email Exportador Local ',
  `CLIID2XX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Exportador ',
  `PIEIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Importador o Consignatario ',
  `PIENOMXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razon Social Destinatario',
  `DIRDEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Domicilio Destinatario',
  `PAIDESXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais Destinatario',
  `PIECIUXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad Destinatario',
  `APL1DEXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido Destinatario',
  `APL2DEXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido Destinatario',
  `NOM1DEXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre Destinatario',
  `NOM2DEXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros Nombres Destinatario',
  `DEXPEDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido ',
  `DEXDEMXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Entrada Mcia ',
  `DEXDSMXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Salida Mcia ',
  `DEXESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Operativo ',
  `DEXCONSU` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contrato Suministro ',
  `TMEDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Regimen Aduanero de Datos del Negocio',
  `ODIDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de Despacho de Datos del Negocio',
  `DEXFPRXX` date NOT NULL COMMENT 'Fecha Preinspeccion ',
  `DEXNAEGL` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro embarque global ',
  `DEXAGIXX` date NOT NULL COMMENT 'Fecha Inicia Global ',
  `DEXAGFXX` date NOT NULL COMMENT 'Fecha Finaliza Global ',
  `DEXFIAXX` date NOT NULL COMMENT 'Fecha Inspeccion Antinarcoticos ',
  `TCAIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Carga ',
  `FPEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Forma Pago ',
  `NATIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Naturaleza ',
  `SOLIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Solicitud ',
  `ODIIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oficina Dian ',
  `DEPIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Departamento ',
  `CIUIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad ',
  `SUCNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SIA/Empresa ',
  `SUCDESXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre SIA/Empresa ',
  `SUCCODXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod SIA/Empresa ',
  `SUCTIPXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Tipo SIA/Empresa ',
  `USRIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Digitado Por ',
  `USRID2XX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Director ',
  `USRID3XX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comparte DO Con ',
  `DAUIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declarante Autorizado ',
  `DEXPAIDI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion Pais Destino ',
  `DEXPAIDE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Pais Destino ',
  `DEXCIUDE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad Destino ',
  `CDEIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo clase DEX ',
  `TDIIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo tipo de diligenciamiento ',
  `TCOIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo tipo de correccion ',
  `DEXAEMXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Autorizacion Embarque ',
  `DEXFAEMX` date NOT NULL COMMENT 'Fecha Autorizacion Emarque ',
  `DEXNAEXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Solicitud Aut. Embarque ',
  `DEXFAEXX` date NOT NULL COMMENT 'Fecha Autorizacion Embarque ',
  `TDEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Tipo Declaracion ',
  `DEXEXANX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion Exportacion Anterior ',
  `DEXFEXAN` date NOT NULL COMMENT 'Fecha Dec Exportacion Anterior ',
  `DEXAUANX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion Importacion Anterior ',
  `DEXFAUAN` date NOT NULL COMMENT 'Fecha Dec Importacion Anterior ',
  `MODIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad de Importacion ',
  `MOEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad de Exportacion ',
  `DEXPBRXX` decimal(26,6) NOT NULL COMMENT 'Peso bruto Kgs ',
  `IDEDOCXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Documento Formato 602 V7',
  `DEXPAGXX` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago ',
  `DEXNPAGX` decimal(10,0) NOT NULL COMMENT 'Cantidad de Pagos Anticipados ',
  `DEXF1PAG` date NOT NULL COMMENT 'Fecha Primer Pago Anticipado ',
  `CEMIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Embarque ',
  `TDADESXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de datos de Datos de Negocio',
  `DEXNEMBX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de Embarques ',
  `TDAIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Tipo Dato ',
  `DEXEMBXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Embaje/Embalajes ',
  `DEXCANEM` decimal(12,2) NOT NULL COMMENT 'Cantidad ',
  `DEXEMBMA` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Marcas y Numeros ',
  `CEOIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado de Origen ',
  `CEOESPXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si es Otros Especifique ',
  `DEXESPSN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'S-N Sistemas Especiales ',
  `DEXESPXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sistemas Especiales ',
  `DEXREPXX` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Reposicion ',
  `DEXEETXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Exportacion en Transito ',
  `MTRDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modo de Transporte',
  `TCADESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga',
  `ADUDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de Salida',
  `LANDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar de Embarque',
  `DESPAIXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais Destino Final',
  `LAIDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Destino Final',
  `ODIID2XX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Admon. de Embarque ',
  `DEXLMEXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Localizacion Mercancia ',
  `DEXNSUBX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad Subpartidas Declaradas ',
  `DEXHOJAN` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hojas Anexas ',
  `DEXTOPNT` decimal(26,6) NOT NULL COMMENT 'Total peso neto Kgs ',
  `DEXTOFOB` decimal(26,6) NOT NULL COMMENT 'Total valor FOB USD ',
  `DEXTOVAN` decimal(26,6) NOT NULL COMMENT 'Total valor agregado nal. USD ',
  `DEXTOANE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Total Hojas Anexas ',
  `DEXFLEXX` decimal(26,6) NOT NULL COMMENT 'Valor Fletes USD ',
  `DEXSEGXX` decimal(26,6) NOT NULL COMMENT 'Valor Seguro USD ',
  `DEXOTRXX` decimal(26,6) NOT NULL COMMENT 'Valor otros gastos USD ',
  `DEXTOTAL` decimal(26,6) NOT NULL COMMENT 'Valor Total exportacion USD ',
  `DEXREINT` decimal(26,6) NOT NULL COMMENT 'Valor a Reintegrar USD ',
  `DEXPROEM` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Procede el Embarque ',
  `DEXFECEM` date NOT NULL COMMENT 'Fecha Embarque ',
  `DEXAUTOA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Auto ',
  `DEXNMANX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. Manifiesto Carga ',
  `ODIID3XX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Admon Cert Embarque ',
  `DEXBULXX` decimal(26,6) NOT NULL COMMENT 'Bultos Cert. Emb ',
  `DEXPESXX` decimal(26,6) NOT NULL COMMENT 'Peso Kgs Cert Emb ',
  `DEXIDTRA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificacion Medio Transporte ',
  `DEXDEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion Exportacion ',
  `DEXFECXX` date NOT NULL COMMENT 'Fecha Declaracion Exp ',
  `DEXDOCXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Doc Transporte ',
  `DEXFDOCX` date NOT NULL COMMENT 'Fecha Doc Transporte ',
  `DEXMASTX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Master ',
  `DEXFMAST` date NOT NULL COMMENT 'Fecha Master ',
  `LINIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Lugar Salida ',
  `DEPID2XX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Depto Procedencia ',
  `RGIIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Regional Mincomercio ',
  `MONIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Moneda Negociacion ',
  `DEXMONNE` decimal(26,6) NOT NULL COMMENT 'Valor Total Moneda Negociacion ',
  `MTRIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Modo Transporte ',
  `DEXBANXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Bandera ',
  `DEXOBSXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones ',
  `DEXSANVL` decimal(10,2) NOT NULL COMMENT 'Valor Total Solicitud Anticipo ',
  `DEXSANFE` date NOT NULL COMMENT 'Fecha Recepcion Anticipo ',
  `DEXSANSO` date NOT NULL COMMENT 'Fecha Solicitud Anticipo ',
  `DEXSANOB` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Solicitud Anticipo ',
  `DEXTASAX` decimal(10,2) NOT NULL COMMENT 'Tasa ',
  `DEXTARXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Tarea ',
  `PRYIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod. Proyecto Alpopular ',
  `DIVIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod. Division Alpopular ',
  `TERIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Tercero Alp ',
  `TRLIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Transportador Local ',
  `DVTRXXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DV Transportador',
  `TRLAPE1X` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido Transportador',
  `TRLAPE2X` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido Transportador',
  `TRLNOM1X` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre Transportador',
  `TRLNOM2X` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros Nombres Transportador',
  `TRLDESXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razon Social Transportador',
  `BODDESXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Transportador',
  `DEXDIPXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Diplomatico ',
  `TIPDECSA` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Documento Declarante',
  `SUCNITDE` int(20) NOT NULL COMMENT 'Numero de documento de identificacion declarante',
  `DVDCXXXX` int(10) NOT NULL COMMENT 'DV Declarante',
  `APL1DCXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido Declarante',
  `APL2DCXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido Declarante',
  `NOM1DCXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre Declarante',
  `NOM2DCXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros Nombres Declarante',
  `SUCDESDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razon Social Declarante',
  `TDIID2XX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Doc Destinatario ',
  `CETIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Incoterms ',
  `DEXLUGEX` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Entrega ',
  `DEXMANOX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mcia en manos del viajero ',
  `DEXPAIDF` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais destino final ',
  `LAIIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod Lugar Destino Final ',
  `LANIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Embarque ',
  `DHZIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito habilitado Zona Franca ',
  `DEXCIFCO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cod destino final Colombia ',
  `DEHDESXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito Habilitado',
  `TDIDESXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Documento transportador',
  `DEHIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito habilitado ',
  `DEXNAPZS` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Aprobacion Solicitud inspeccion en Zona Secundaria ',
  `DEXUBMER` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion Ubicacion Mcia ',
  `DEXINSFI` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Solicita inspeccion fisica ',
  `DEXTOTSE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Total Series ',
  `DEXMERLE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mcia se encuentra en lugar embarque ',
  `DEXNROVI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Viaje ',
  `TDOCXXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo documento Documentos Soporte y Vistos Buenos',
  `NDOCXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. del documento Documentos Soporte y Vistos Buenos',
  `NITEMXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT emisor Documentos Soporte y Vistos Buenos',
  `FEXPXXXX` date NOT NULL COMMENT 'Fecha expedición Documentos Soporte y Vistos Buenos',
  `FVENXXXX` date NOT NULL COMMENT 'Fecha vencimiento Documentos Soporte y Vistos Buenos',
  `CMONXXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Moneda Documentos Soporte y Vistos Buenos',
  `MONDOCXX` int(50) NOT NULL COMMENT 'Monto del documento Documentos Soporte y Vistos Buenos',
  `DEXFFCTM` date NOT NULL COMMENT 'Fecha Finaliza Control Temporal ',
  `DEXOFCTM` decimal(1,0) NOT NULL COMMENT 'Finaliza Control Temporal ',
  `DEXMOCTM` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motivo Finaliza Control Temporal ',
  `DEXREFXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia ',
  `DEXNUENV` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Envio ',
  `SAENOFOR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Formulario para la SAE ',
  `DEXCSCFX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Exportacion (Consecutivo Asignado por Finart) ',
  `DEXURLXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'URL del dex enviado por tramitex',
  `SUBPREXX` int(30) NOT NULL COMMENT 'Subpartida Precedente',
  `VRIEXXXX` int(30) NOT NULL COMMENT 'Valor insumo externo (VIE)',
  `VALVANXX` int(30) NOT NULL COMMENT 'Valor agregado nacional (VAN)',
  `CPECIPXX` int(30) NOT NULL COMMENT 'Cantidad Producto a exportar por CIP',
  `NPRODXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. Producto',
  `NCIPXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. Cuadro insumo producto (CIP)',
  `NPROGXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. de Programa',
  `SERIEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No Serie',
  `SERPREXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. Serie precedente',
  `CMODPREX` int(30) NOT NULL COMMENT 'Cód. Modalidad precedente',
  `CREGPREX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cód. Rég. Precedente',
  `ANOACEPX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Año aceptación',
  `NDECPREX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. Declaración precedente',
  `CADEPREX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana precedente',
  `PRFARANX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Preferencia arancelaria',
  `PORGXXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'País de origen',
  `PLAZOXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plazo',
  `CUNMPLAX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad medida de plazo',
  `VALFOBXX` int(30) NOT NULL COMMENT 'Valor FOB USD',
  `PESNETXX` int(20) NOT NULL COMMENT 'Peso neto kgs.',
  `PESBULXX` int(20) NOT NULL COMMENT 'Peso bruto kgs.',
  `NUMBULXX` int(20) NOT NULL COMMENT 'No. Bultos',
  `CAUNCOMX` int(20) NOT NULL COMMENT 'Cant. Unidades comerciales',
  `UNICOMXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad comercial',
  `CANUNFIX` int(20) NOT NULL COMMENT 'Cant. Unidades físicas',
  `CODUNFIX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad física',
  `CSUPLXXX` int(60) NOT NULL COMMENT 'Cód. Suplement.',
  `CCOMXXXX` int(60) NOT NULL COMMENT 'Cód. Complement',
  `SUBARXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartida',
  `CUNCOMXX` int(30) NOT NULL COMMENT 'Cantidad unidad comercial Documentos Soporte y Vistos Buenos',
  `GRUPOXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo',
  `FACSEMAN` int(11) NOT NULL COMMENT 'Numeo de Semana',
  `AEROPUXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aeropuerto SAE',
  `AEROLIXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aerolinea SAE',
  `DESTINOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Destino SAE',
  `LUGARXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar SAE',
  `NUMPROXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar SAE',
  `FECPROXX` date NOT NULL COMMENT 'Fecha de la Prorroga',
  `BANSAEXX` enum('PENDIENTE','CARGADO','HISTORIAL','ERROR') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bandera para identificar las SAEs Pendientes o Cargadas a GENIO',
  `BANPLAXX` enum('CARGADO','ERROR') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bandera para identificar las Planillas de Traslado cargadas a GENIO',
  `BANDEXXX` enum('PENDIENTE','CARGADO','HISTORIAL','ERROR') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bandera para identificar los DEXs Pendientes o Cargados a GENIO',
  `ERRSAEXX` text COLLATE utf8_unicode_ci COMMENT 'Errores en la SAE al cargue a GENIO',
  `ERRPLAXX` text COLLATE utf8_unicode_ci COMMENT 'Errores en la Planilla de Traslado al cargue a GENIO',
  `ERRDEXXX` text COLLATE utf8_unicode_ci COMMENT 'Errores en la DEX al cargue a GENIO',
  `FILESAPL` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Urls Files de SAE y Planilla Cargados a Genio',
  `ESTELIMX` enum('PENDIENTE','ELIMINADO','ERROR','PARCIAL','NA') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA' COMMENT 'Estado Archivos a Eliminar de GENIO',
  `ERRELIMX` text COLLATE utf8_unicode_ci COMMENT 'Errores al eliminar archivos de SAE o Planilla de GENIO',
  `PACKSAPL` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del paquete documental de SAE y Planilla cargados a Genio',
  `ERRPSAPL` text COLLATE utf8_unicode_ci COMMENT 'Errores al inactivar los paquetes de SAE y Planilla cargados a Genio',
  `ESTATEMP` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO TEMPORAL',
  `APLIPROX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Aplica Prorroga',
  `NUMRADXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de radicado',
  `FECRADXX` date NOT NULL COMMENT 'Fecha de radicado',
  `FECAUPRX` date NOT NULL COMMENT 'Fecha de autoprorroga',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de SAE y DEX' ROW_FORMAT=DYNAMIC;

--
-- Disparadores `MDSA2024`
--
DELIMITER $$
CREATE TRIGGER `MDSA2024_INSERT` BEFORE INSERT ON `MDSA2024` FOR EACH ROW BEGIN
IF (NEW.FECDEXXX != "0000-00-00")
   THEN
      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECDEXXX_I",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");

      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECDEXXX_S",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
   END IF;

IF (NEW.FECSAEXX != "0000-00-00")
   THEN
      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECSAEXX_I",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
              
INSERT IGNORE
     INTO GRM.`INDAGEND`(`TRAMITEX`,
                         `TABLAXXX`,
                         `CAMPOXXX`,
                         `REGUSRXX`,
                         `REGFECXX`,
                         `REGHORXX`,
                         `REGFECMX`,
                         `REGHORMX`,
                         `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECSAEXX_S",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MDSA2024_UPDATE` BEFORE UPDATE ON `MDSA2024` FOR EACH ROW BEGIN
DECLARE CANTIDADDEX INTEGER(3);
DECLARE CANTIDADSAE INTEGER(3);
SET @CANTIDADDEX = (SELECT COUNT(DOCNROXX) FROM MDSA2024 WHERE DOCNROXX = OLD.DOCNROXX AND FECDEXXX = "0000-00-00");
SET @CANTIDADSAE = (SELECT COUNT(DOCNROXX) FROM MDSA2024 WHERE DOCNROXX = OLD.DOCNROXX AND FECSAEXX = "0000-00-00");

IF ((NEW.FECDEXXX != OLD.FECDEXXX) AND (NEW.FECDEXXX != "0000-00-00") AND
   @CANTIDADDEX = 1)
   THEN
      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECDEXXX_I",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");

      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECDEXXX_S",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
   END IF;

IF ((NEW.FECSAEXX != OLD.FECSAEXX) AND (NEW.FECSAEXX != "0000-00-00") AND
   @CANTIDADSAE = 1)

   THEN
   
     INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECSAEXX_I",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
      INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECSAEXX",
              "10000",
              NOW(),
              NOW(),
              NOW(),
              NOW(),
              "ACTIVO");
              
    INSERT IGNORE
        INTO GRM.`INDAGEND`(`TRAMITEX`,
                            `TABLAXXX`,
                            `CAMPOXXX`,
                            `REGUSRXX`,
                            `REGFECXX`,
                            `REGHORXX`,
                            `REGFECMX`,
                            `REGHORMX`,
                            `REGESTXX`)
      VALUES (NEW.DOCNROXX,
              "MDSAYYYY",
              "FECSAEXX_S",
              "10000",
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
-- Indices de la tabla `MDSA2024`
--
ALTER TABLE `MDSA2024`
  ADD PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
