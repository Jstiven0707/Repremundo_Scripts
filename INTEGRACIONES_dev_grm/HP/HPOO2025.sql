CREATE TABLE HPOO2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera siempre inicia con el ano (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importacion (ImportDeclaration.ID)',
    HPOOIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia de standard del customs office, por cada HPOCIDXX y HPOIIDXX, debe iniciar en 100 e incrementar',
    HPOOSTID VARCHAR(13) NOT NULL COMMENT 'Identificador de la oficina (ImportDeclaration.CustomsOffice.StandardID)',
    HPOOROCO VARCHAR(10) NOT NULL COMMENT 'Código del rol de la oficina  (ImportDeclaration.CustomsOffice.RoleCode)',
    HPOOCOCO VARCHAR(3) NOT NULL COMMENT 'Código del pais  (ImportDeclaration.CustomsOffice.CountryCode)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

    PRIMARY KEY (`HPOCIDXX`,`HPOIIDXX`,`HPOOIDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX),
    KEY IDX_HPOIIDXX(HPOIIDXX)
  
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION VS CUSTOMS OFFICE';
