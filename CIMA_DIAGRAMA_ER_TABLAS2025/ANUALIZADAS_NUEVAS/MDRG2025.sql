CREATE TABLE MDRG2025 (

DOCNROXX INT NOT NULL COMMENT 'Numero del DO (MDOSYYYY)',
DOCDOREG INT NOT NULL COMMENT 'Numero del DO de Registro',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`DOCNROXX`, `DOCDOREG`),
KEY IDX_DOCNROXX(DOCNROXX),
KEY IDX_DOCDOREG(DOCDOREG)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT'OPERACION VS DO DE REGISTRO'