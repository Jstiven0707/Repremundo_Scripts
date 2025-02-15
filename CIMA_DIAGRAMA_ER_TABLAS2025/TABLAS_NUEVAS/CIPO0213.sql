CREATE TABLE CIPO0213 (

TARSECID SMALLINT NOT NULL COMMENT 'Secuencia de la tarifa',
TRALIDXX VARCHAR(12)  NOT NULL COMMENT'Identificador Transportador (CIPO0149)',
TIPCONXX ENUM('','TEUS','FEUS')  NOT NULL COMMENT 'Tipo de contenedor',
TRACONXX DECIMAL(6,2)  NOT NULL COMMENT'Tarifa de contenedor',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`TARSECID`, `TRALIDXX`),
KEY IDX_TARSECID(TARSECID)


)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT'TARIFA DE TRANSPORTE VS TRANSPORTADORA'