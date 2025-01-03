
-- TABLA  MDOS2024- APPLE- CABECERA DE OPERACION

CREATE TABLE MDOS2024(

DOCNROXX VARCHAR(15)  PRIMARY KEY  NOT NULL COMMENT 'NUMERO DEL DO',
CLIIDXXX VARCHAR(15)  NOT NULL COMMENT 'ID DEL CLIENTE',
DOCTRIMP TINYTEXT NOT NULL COMMENT 'Documento de transporte',
MDOSFECT DATE NOT NULL COMMENT 'fecha de transmision',
MDOSS997 ENUM('ACEPTADO,''') NOT NULL COMMENT 'estado 997',
MDOS997F DATE NOT NULL COMMENT 'FECHA ESTADO 997',
MDOS997H TIME NOT NULL COMMENT 'HORA ESTADO 997',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('','ACTIVO','INACTIVO','TRANSMITIDO','FINALIZADO') NOT NULL COMMENT 'ESTADO DEL DO',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

KEY idx_CLIIDXXX (CLIIDXXX)
) COMMENT = 'CABECERA DE OPERACION';



