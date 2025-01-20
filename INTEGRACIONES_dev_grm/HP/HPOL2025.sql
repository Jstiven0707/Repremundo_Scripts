
  CREATE TABLE HPOL2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOKIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del paquete, por cada HPOCIDXX y HPOIIDXX debe iniciar en 100 e incrementar',
    HPOLIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia de la localización, por cada HPOCIDXX, HPOIIDXX y HPOKIDXX debe iniciar en 100 e incrementar',
    HPOLVALX VARCHAR(35) NOT NULL COMMENT 'Sello del paquete (ImportDeclaration.Package.Seal.ID)',
	REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`,`HPOKIDXX`, `HPOLIDXX`),
KEY IDX_HPOCIDXX(HPOCIDXX),
KEY IDX_HPOIIDXX(HPOIIDXX),
KEY IDX_HPOKIDXX(HPOKIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION, PACKAGE VS SEALS';


