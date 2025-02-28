CREATE TABLE MDTA2025 (
    DOCNROXX INT(7) NOT NULL COMMENT 'Número del DO (MDOSYYYY)',
    CLIIDXXX VARCHAR(20) NOT NULL COMMENT 'NIT cliente (CIPO0024)',
    FOCOIDXX INT(4) NOT NULL COMMENT 'ID de la Oferta',
    FOCOVERX DECIMAL(2,1) NOT NULL COMMENT 'Versión del Archivo',
    CONCOBID INT(4) NOT NULL COMMENT 'ID del Concepto de Cobro (CIPF0030)',
    FORCALID INT(4) NOT NULL COMMENT 'ID de la Forma de Cálculo (CIPF0037)',
    MDTCVLRX DECIMAL(18,5) NOT NULL COMMENT 'Valor de la Tarifa',
    FOCOANIO VARCHAR(4) NOT NULL COMMENT 'Año de la Oferta',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
    
    
	PRIMARY KEY (`DOCNROXX`, `CLIIDXXX`,`FOCOIDXX`, `FOCOVERX`,`CONCOBID`, `FORCALID`),
    KEY IDX_DOCNROXX (DOCNROXX),
    KEY IDX_CLIIDXXX (CLIIDXXX),
    KEY IDX_FOCOIDXX (FOCOIDXX),
	KEY IDX_FOCOVERX (FOCOVERX),
    KEY IDX_CONCOBID (CONCOBID),
    KEY IDX_FORCALID (FORCALID)
    
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'OPERACION VS TARIFAS ADICIONALES';
