

CREATE TABLE IF NOT EXISTS `HEPD2025` (
  `HELCCSCX` bigint NOT NULL COMMENT 'ID del ticket',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `LIMACEXX` varchar(20) NOT NULL COMMENT 'Numero de Aceptacion',
  `SUBIDXXX` varchar(10) NOT NULL COMMENT 'Subp',
  `VALPGPSE` decimal(18,5) NOT NULL COMMENT 'Valor total a pagar por la declaracion valor PSE',
  `PAYSTATX` varchar(2) NOT NULL DEFAULT 'NO' COMMENT 'Valor de Seleccion en Solicitud Pago Declaraciones',
  `BANIDXXX` varchar(12) NOT NULL COMMENT 'ID del banco SIACOSIA.fpar0124',
  `BANCTAXX` varchar(20) NOT NULL COMMENT 'Numero de la cuenta SIACOSIA. fpar0128',
  `BANSPAGX` enum('SIN CARGAR','ERROR','CARGADO','EDITAR') NOT NULL DEFAULT 'SIN CARGAR' COMMENT 'Bandera que indica si ya se subio el comprobante del pago',
  `PAGOFILE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Relación de Archivo Cargado',
  `PAGONODH` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo Hijo con relación al cargue',
  `PAGONODE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo con relación a Gestor Documental',
  `BANSDIAX` enum('SIN CARGAR','ERROR','CARGADO','EDITAR') NOT NULL DEFAULT 'SIN CARGAR' COMMENT 'Bandera que indica si ya se subio el comprobante de la DIAN',
  `DIANFILE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Relación de Archivo Cargado',
  `DIANNODH` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo Hijo con relación al cargue',
  `DIANNODE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo con relación a Gestor Documental',
  `COMIDXXX` varchar(1) NOT NULL COMMENT 'ID DEL COMPROBANTE SIAICOSIA.FCOCTYYYY',
  `COMCODXX` varchar(4) NOT NULL COMMENT 'Codigo del comprobante',
  `COMCSCXX` varchar(20) NOT NULL COMMENT 'Consecutivo uno del comprobante',
  `BANCOMXX` enum('SIN CARGAR','ERROR','CARGADO','EDITAR') NOT NULL DEFAULT 'SIN CARGAR' COMMENT 'Bandera que de comprobante',
  `ROBOTFIL` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Relación de Archivo Cargado',
  `ROBOTNOH` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo Hijo con relación al cargue',
  `ROBOTNOD` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nodo con relación a Gestor Documental',
  `CIETAGRM` varchar(10) NOT NULL COMMENT 'Estado Cierre de Tarea GRM',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`HELCCSCX`,`DOCNROXX`,`LIMACEXX`,`SUBIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='tabla que relaciona los tickets, operaciones y declaraciones para pagos PSE';


