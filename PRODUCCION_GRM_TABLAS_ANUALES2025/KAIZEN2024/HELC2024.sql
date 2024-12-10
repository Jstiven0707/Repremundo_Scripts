-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:10:21
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
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HELC2024`
--

CREATE TABLE `HELC2024` (
  `HELCCSCX` bigint(15) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `EMPNITXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT DE LA EMPRESA',
  `TIPTICKX` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'TIPO DE TICKET',
  `PROTICKX` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Proceso',
  `HELCTITU` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'TITULO DEL TICKET',
  `HELPUSRX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO QUE CREA EL TICKET',
  `HELEMAIL` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Correos Electronicos',
  `HELCUSRR` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'RESPONSABLE ACTUAL',
  `HELCIDCL` int(5) NOT NULL COMMENT 'FK ID DE LA CLASIFICACION',
  `HELSUBCL` varchar(70) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subclasificacion',
  `HELIDCLI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HELCPRIO` enum('ALTA','MEDIA','BAJA','URGENTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'PRIORIDAD DEL TICKET',
  `PRIORURG` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica si la solicitud se debe tratar como urgente',
  `JUSTURGT` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion de porque la solicitud se debe tratar como urgente',
  `TEXAUTOR` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Texto Descripcion de la autorizacion',
  `AUTOURGX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula de Quien autoriza la operacion urgente',
  `FECAUTUR` date NOT NULL COMMENT 'Fecha de Autorizacion de la Urgencia',
  `HORAUTUR` time NOT NULL COMMENT 'Hora de Autorizacion de la Urgencia',
  `FECSOLIC` date NOT NULL COMMENT 'Fecha Solicitud de Prioridad Urgente',
  `HORSOLIC` time NOT NULL COMMENT 'Hora Solicitud de Prioridad Urgente',
  `TIPOASIG` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Prioridad',
  `COMPASIG` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comportamiento de Asignacion',
  `HELCESTA` enum('PENDIENTE','SOLUCIONADO','EN ESPERA','EN PROCESO','DEVUELTO','EN SEGUIMIENTO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO DEL TICKET',
  `HELCCSPA` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ticket padre',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del do',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit del Cliente',
  `CODCLIEN` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cliente de solcitud de transporte',
  `CLICONOC` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cliente para conocimiento cliente',
  `NCOTIZAX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'No. cotizacion',
  `MODSOLTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad Solicitud de transporte',
  `TIPMERST` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Mercancia Solicitud de transporte',
  `FACTLOGA` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturar a Solicitud de Transporte',
  `CLINITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Nomenclatura',
  `DOCIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del do Nomenclatura',
  `NUMITEMX` int(7) NOT NULL COMMENT 'Numero de Items',
  `ITEMVERI` int(11) NOT NULL COMMENT 'Numero de Items a verificar',
  `NUMFACTX` int(10) NOT NULL COMMENT 'Numero de Facturas',
  `MODIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad',
  `MODDESCX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observación de Modalidad',
  `APLCAPDE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica captura de data entry',
  `APLDAVXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica DAV',
  `APLPREDG` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica predigitacion ',
  `APLACCOM` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Acuerdo comercial',
  `APAUDITO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Auditoria',
  `VALADUAX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor de Aduanas Auditoria',
  `FECULTSE` date NOT NULL COMMENT 'Fecha de ultimo seguimiento',
  `HORULTSE` time NOT NULL COMMENT 'Hora ultimo Seguimiento',
  `HELCTIEM` time NOT NULL COMMENT 'Tiempo de trabajo en el ticket',
  `NSERVICE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del nivel de servicio  que le aplica',
  `TIPOAUDI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Auditoria',
  `HELCCANT` bigint(20) NOT NULL COMMENT 'Ticket anterior de amarre',
  `HELGAIMP` bigint(20) NOT NULL COMMENT 'Ticket anterior de auditoria',
  `HELAUPRE` bigint(20) NOT NULL COMMENT ' Ticket Anterior Secuencial Auditoria ',
  `HELIMAVI` bigint(20) NOT NULL COMMENT 'Ticket Anterior Gaimp Avianca',
  `IDENREGI` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificacion del Registro',
  `TIPOREGI` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Regimen',
  `TIPOSOLI` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Solicitud',
  `CONDMERC` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Condiciones de mercancia',
  `CUDOCUTR` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta con Documento de Transporte?',
  `DOCTRIMP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `PAISORIG` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de Origen',
  `SOVOBENT` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Solicitar Visto Bueno Entidad',
  `ENTIDADX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Entidad',
  `CANTIDIM` int(3) NOT NULL COMMENT 'Cantidad de Declaraciones',
  `YATIFODJ` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '¿ya tiene formato de declaración Juramentada?',
  `OBINESDG` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones o instrucciones especiales para digitacion GAIMP',
  `CANTDEJU` int(10) NOT NULL COMMENT 'Cantidad Declaraciones Juramentadas',
  `CANCETOR` int(10) NOT NULL COMMENT 'Cantidad Certificados Origen',
  `APLIVBOX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Vistos Buenos Gaexp',
  `APCERORG` int(11) NOT NULL COMMENT 'Aplica Certificado de Origen Gaexp',
  `MANTRIAN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Maneja Triangulacion Gaexp',
  `RAZOSOCI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razon Social ',
  `DIRAZSOC` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion Razon Social',
  `FORMPAGO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago Gaexp',
  `CLASARAN` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Clasificacion Arancelaria Gaexp',
  `TIPCARGA` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga Gaexp',
  `MODALIDA` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad Gaexp',
  `ADUDDESP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de Despecho ',
  `ADUDSALI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de Salida Gaexp',
  `CAPLATRA` int(10) NOT NULL COMMENT 'Cantidad Planillas de Traslado',
  `CUECARES` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta con carga de responsabilidad gaexp',
  `INDCOVBO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Se debe incluir documentos para visto bueno gaimp',
  `DOCUVBXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos Visto Bueno',
  `APLNOMEN` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Nomenclatura Gaexp',
  `OBINESNO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones o instrucciones especiales nomenclatura gaimp',
  `DECRAPAC` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Desicion y Criterio a aplicar por acuerdo',
  `TRATCOME` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tratado Comercial',
  `NUMEINTE` int(8) NOT NULL COMMENT 'Numero Interno GAEXP',
  `REGPRONA` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Registro Productor Nacional Gaexp',
  `NUMSOINS` int(10) NOT NULL COMMENT 'Numero Solicitud Inspeccion',
  `PUERTOXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto Gaexp',
  `NUMVEHIC` int(5) NOT NULL COMMENT 'Numero de Vehiculos Gaexp',
  `PLACAXXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa Gaexp',
  `SEDSUCXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sede/Sucursal',
  `NUMBULTO` int(10) NOT NULL COMMENT 'Numero de Bultos GAEXP',
  `PESBRUTO` decimal(10,2) NOT NULL COMMENT 'Peso Bruto Gaexp',
  `TIPODOCU` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Documento Gaexp',
  `NUMDOCCO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento a corregir gaexp',
  `TOKIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'KPI',
  `TOKIDAUD` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'KPI para Ticket posterior de Auditoria',
  `FEVENKPI` date NOT NULL COMMENT 'Fecha Vencimiento KPI',
  `HOVENKPI` time NOT NULL COMMENT 'Hora Vencimiendo de KPI',
  `CAITEREG` int(10) NOT NULL COMMENT 'Cantidad de Items Registro Gaim`p',
  `NUMSAEXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Saes Gaexp',
  `TRELICIM` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiene registro o licencia de Importacion?',
  `POSITAIL` int(10) NOT NULL COMMENT 'Posicion en la Cola de Tickets',
  `CAITEDEC` int(11) NOT NULL COMMENT 'Cantidad de Items Declaracion',
  `APACNITE` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Actualizacion de Item?',
  `APACDECL` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Actualizacion de Declaraciones?',
  `TIPSOLIX` enum('PRE DIGITACION','ANTICIPADA','DESCARGUE DIRECTO','INICIAL SIN ARRIBO','INICIAL','ENTREGA URGENTE','FINALIZACION ENTREGA URGENTE','') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tipo de Solicitud',
  `CONCEPCO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concepto de Cobro (Nota Crédito)',
  `VALPCEXX` decimal(20,5) NOT NULL COMMENT 'Valor Factura (Nota Crédito)',
  `IVAXXXXX` decimal(10,2) NOT NULL COMMENT 'Iva Factura (Nota Crédito)',
  `MONEDAXX` enum('PESOS','DOLARES') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Moneda (Nota Crédito)',
  `NUEFACTX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero nuevo de factura (Nota Crédito)',
  `VALPGPSE` decimal(18,5) NOT NULL COMMENT 'Valor total a pagar por las declaraciones valor PSE',
  `HELCPESX` int(9) NOT NULL COMMENT 'Indica el orden de los tickets cuando aplica',
  `TIPOSOLN` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Solicitud Nomenclatura',
  `NNODOCAR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Nodo del Cargue Documental',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura del cargue desde Genio',
  `HELCCAUX` enum('','ERROR DEL PROVEEDOR','DESCONOCIMIENTO O MAL USO DEL SISTEMA','FALLAS POR SISTEMA DE TERCEROS','ASIGNACION DE PERMISOS','FALLAS EN INFRAESTRUCTURA','ERROR DEL SISTEMA','OTROS SOPORTES') COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'CAUSAL DEL TICKET',
  `HELCTIAC` enum('','PREVENTIVA','CORRECTIVA','MEJORA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Accion SIG',
  `OPOPEXXX` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero de Operacion Mapcargo',
  `CAUANULX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Causal Anulacion Mapcargo',
  `CCOMAPXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Centro de costo Mapcargo',
  `HELCESDM` enum('','SIN ASIGNACION','ASIGNACION PARCIAL','ASIGNADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la Asignacion de declaraciones',
  `HCEDMFEH` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora Asignacion Formularios',
  `TODECMAN` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT '¿Todas Las Declaraciones son Manuales?',
  `ESTSUBGE` enum('','PENDIENTE','CARGADO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Informe Genio',
  `CLAFECXX` date NOT NULL COMMENT 'Fecha Clasificacion',
  `CLAHORXX` time NOT NULL COMMENT 'Hora Clasificacion',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que creó el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha de creación',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora de creación',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario modificó',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha de modificación',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora de modificación',
  `REGESTXX` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='CABECERA PARA LOS TICKETS HELPDESK';

--
-- Disparadores `HELC2024`
--
DELIMITER $$
CREATE TRIGGER `Trigger_insert_bdhelpde2024` BEFORE INSERT ON `HELC2024` FOR EACH ROW BEGIN
    DECLARE HELCCSCX varchar(15); 
    DECLARE EMPDESXX varchar(100); 
    DECLARE CLADESXX tinytext;		
    DECLARE HELPUSRN varchar(100); 
    DECLARE HELUSRRN varchar(100);
	DECLARE SUBTIMPT varchar(25);
	DECLARE TIMESUNI varchar(30);
    SELECT SYS00013.EMPDESXX INTO EMPDESXX FROM SYS00013 
    WHERE SYS00013.EMPNITXX = new.EMPNITXX;

    SELECT HELP0001.CLADESXX INTO CLADESXX FROM HELP0001
    WHERE HELP0001.CLASIFID = new.HELCIDCL;

    SELECT GRM.SYS00001.USRNOMXX INTO HELPUSRN FROM GRM.SYS00001
    WHERE GRM.SYS00001.USRIDXXX = new.HELPUSRX;

    SELECT GRM.SYS00001.USRNOMXX INTO HELUSRRN FROM GRM.SYS00001
    WHERE GRM.SYS00001.USRIDXXX = new.HELCUSRR;
	
	
	IF(new.HELSUBCL<>"")THEN
		SELECT HELP0010.SUBTIMPT INTO SUBTIMPT FROM HELP0010 
		WHERE HELP0010.CLASIFID = new.HELCIDCL 
		AND SUBCLASI = new.HELSUBCL;
		
		SELECT HELP0010.TIMESUNI INTO TIMESUNI FROM HELP0010 
		WHERE HELP0010.CLASIFID = new.HELCIDCL
		AND SUBCLASI = new.HELSUBCL;
	ELSE
		SELECT HELP0001.TIMEOPTI INTO SUBTIMPT FROM HELP0001 
		WHERE HELP0001.CLASIFID = new.HELCIDCL;
		
		SELECT HELP0001.TIMEUNIT INTO TIMESUNI FROM HELP0001 
		WHERE HELP0001.CLASIFID = new.HELCIDCL;
	END IF;
    
    INSERT IGNORE INTO bdhelpde (HELCCSCX,EMPNITXX,HELCTITU,EMPDESXX,TIPTICKX,CLASIFID,CLADESXX,HELSUBCL,HELPUSRX,HELPUSRN,HELCUSRR,HELUSRRN,HELCPRIO,HELCESTA,SUBTIMPT,TIMESUNI,REGFECXX,REGHORXX,REGFECMX,REGHORMX) 
	VALUES 
	(new.HELCCSCX,new.EMPNITXX,new.HELCTITU,EMPDESXX,new.TIPTICKX,new.HELCIDCL,CLADESXX,new.HELSUBCL,new.HELPUSRX,HELPUSRN,new.HELCUSRR,HELUSRRN,new.HELCPRIO,new.HELCESTA,SUBTIMPT, TIMESUNI,new.REGFECXX,new.REGHORXX,new.REGFECMX,new.REGHORMX);
IF(NEW.TIPTICKX = 'GAIMP' || NEW.TIPTICKX = 'AUDITORIA' || NEW.TIPTICKX = 'GAEXP') THEN
	INSERT IGNORE INTO KAIZEN.`INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`) 
	VALUES (NEW.HELCCSCX,"HELCYYYY","CREASOLI_I","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Trigger_update_bdhelpde2024` BEFORE UPDATE ON `HELC2024` FOR EACH ROW BEGIN
    DECLARE HELCCSCX varchar(15);
    DECLARE EMPDESXX varchar(100); 
    DECLARE CLADESXX tinytext;
    DECLARE HELPUSRN varchar(100); 
    DECLARE HELUSRRN varchar(100); 
	DECLARE SUBTIMPT varchar(25);
	DECLARE TIMESUNI varchar(30);
	
    SELECT GRM.SYS00013.EMPDESXX INTO EMPDESXX FROM GRM.SYS00013 
    WHERE GRM.SYS00013.EMPNITXX = new.EMPNITXX;

    SELECT HELP0001.CLADESXX INTO CLADESXX FROM HELP0001
    WHERE HELP0001.CLASIFID = new.HELCIDCL;

    SELECT GRM.SYS00001.USRNOMXX INTO HELPUSRN FROM GRM.SYS00001
    WHERE GRM.SYS00001.USRIDXXX = new.HELPUSRX;

    SELECT GRM.SYS00001.USRNOMXX INTO HELUSRRN FROM GRM.SYS00001
    WHERE GRM.SYS00001.USRIDXXX = new.HELCUSRR;
	
	SELECT bdhelpde.SUBTIMPT INTO SUBTIMPT FROM bdhelpde 
	WHERE bdhelpde.HELCCSCX = new.HELCCSCX;
	
	
	IF(new.HELSUBCL=old.HELSUBCL)THEN
		SELECT bdhelpde.SUBTIMPT INTO SUBTIMPT FROM bdhelpde 
		WHERE bdhelpde.HELCCSCX = new.HELCCSCX;
		
		SELECT bdhelpde.TIMESUNI INTO TIMESUNI FROM bdhelpde 
		WHERE bdhelpde.HELCCSCX = new.HELCCSCX;
	ELSE
		IF(new.HELSUBCL<>"")THEN
			SELECT HELP0010.SUBTIMPT INTO SUBTIMPT FROM HELP0010 
			WHERE HELP0010.CLASIFID = new.HELCIDCL 
			AND SUBCLASI = new.HELSUBCL;
			
			SELECT HELP0010.TIMESUNI INTO TIMESUNI FROM HELP0010 
			WHERE HELP0010.CLASIFID = new.HELCIDCL
			AND SUBCLASI = new.HELSUBCL;
		ELSE
			SELECT HELP0001.TIMEOPTI INTO SUBTIMPT FROM HELP0001 
			WHERE HELP0001.CLASIFID = new.HELCIDCL;
			
			SELECT HELP0001.TIMEUNIT INTO TIMESUNI FROM HELP0001 
			WHERE HELP0001.CLASIFID = new.HELCIDCL;
		END IF;
	END IF;
	
	
 UPDATE bdhelpde 
    SET 
    EMPNITXX=new.EMPNITXX,
    EMPDESXX=EMPDESXX,
    TIPTICKX=new.TIPTICKX,
    CLASIFID=new.HELCIDCL,
    CLADESXX=CLADESXX,
	SUBTIMPT = SUBTIMPT,
	TIMESUNI = TIMESUNI,
	HELSUBCL = new.HELSUBCL,
    HELPUSRX=new.HELPUSRX,
    HELPUSRN=HELPUSRN,
    HELCUSRR=new.HELCUSRR,
    HELUSRRN=HELUSRRN,
    HELCPRIO=new.HELCPRIO,
    HELCESTA=new.HELCESTA,
    REGFECMX=new.REGFECMX,
    REGHORMX=new.REGHORMX 
    WHERE bdhelpde.HELCCSCX=new.HELCCSCX;
    
if(NEW.TIPTICKX = 'GAIMP' || NEW.TIPTICKX = 'AUDITORIA' || NEW.TIPTICKX = 'GAEXP') THEN
    IF(NEW.HELCESTA = 'SOLUCIONADO') THEN
        INSERT IGNORE INTO KAIZEN.`INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`) 
         VALUES (NEW.HELCCSCX,"HELCYYYY","FINASOLI_I","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
        END IF;
END IF;
    
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELC2024`
--
ALTER TABLE `HELC2024`
  ADD PRIMARY KEY (`HELCCSCX`),
  ADD UNIQUE KEY `HELC2017_HELCCSCX` (`HELCCSCX`),
  ADD KEY `FORANEA` (`HELCIDCL`),
  ADD KEY `HELCPRIO` (`HELCPRIO`) USING BTREE,
  ADD KEY `EMPNITXX` (`EMPNITXX`),
  ADD KEY `TIPTICKX` (`TIPTICKX`),
  ADD KEY `HELCESTA` (`HELCESTA`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `HELCPESX` (`HELCPESX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
