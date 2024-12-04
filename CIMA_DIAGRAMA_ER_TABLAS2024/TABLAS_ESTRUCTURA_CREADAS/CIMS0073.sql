 -- TABLA CIMS0073 - PROYECTO CIMA  

CREATE TABLE CIMS0073 (
COTIDXXX  SMALLINT AUTO_INCREMENT NOT NULL  COMMENT 'ID DEL CONTROLADOR',
CARIDXXX SMALLINT NOT NULL COMMENT'ID DEL CARGO CIMS0038',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del ROBOT',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`COTIDXXX`, `CARIDXXX`),
KEY idx_COTIDXXX(COTIDXXX),
KEY idx_CARIDXXX(CARIDXXX),
)  AUTO_INCREMENT = 100  ENGINE = InnoDB COMMENT = 'CONTRLADOR VS CARGOS';

