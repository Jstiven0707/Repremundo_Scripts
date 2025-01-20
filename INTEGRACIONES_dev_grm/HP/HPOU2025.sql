CREATE TABLE HPOU2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOUIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del documento adicional, por cada HPOCIDXX y HPOIIDXX, debe iniciar en 100 e incrementar',
    HPOUSTID VARCHAR(35) NOT NULL COMMENT 'Identificador del documento adicional (ImportDeclaration.AdditionalDocument.ID)',
    HPOUADID VARCHAR(35) NOT NULL COMMENT 'Identificador de la adicion del documento adicional (ImportDeclaration.AdditionalDocument.AddendumID)',
    HPOUDEID VARCHAR(35) NOT NULL COMMENT 'Identificador del detalle del documento adicional (ImportDeclaration.AdditionalDocument.DetailID)',
    HPOUTYCO VARCHAR(7) NOT NULL COMMENT 'Tipo del documento adicional (ImportDeclaration.AdditionalDocument.TypeCode)',
    HPOUISDA DATE NOT NULL COMMENT 'Fecha de adicional del documento  (ImportDeclaration.AdditionalDocument.IssueDate)',
    HPOUVEDA DATE NOT NULL COMMENT 'Fecha final de adicional del documento  (ImportDeclaration.AdditionalDocument.ValidityEndDate)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
    
    
PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`,`HPOUIDXX`),
KEY IDX_HPOCIDXX(HPOCIDXX),
KEY IDX_HPOIIDXX(HPOIIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION VS ADDITIONAL DOCUMENT';
