CREATE TABLE HPOV2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural , por cada HPOCIDXX y HPOIIDXX',
    HPOVIDXX SMALLINT NOT NULL COMMENT 'Identificador de la caracteristica  por cada HPOCIDXX, HPOIIDXX y HPOJIDXX, debe iniciar en 100 identificador de  la caracteristica',
    HPOVIDCH VARCHAR(10) NOT NULL COMMENT 'identificador de la caracteristica  (ImportDeclaration.Itemchatacteristic.ID)',
    HPOVEONV INT NOT NULL COMMENT 'Codigo aduanero de la clasificacion (ImportDeclaration.ItemItemchatacteristic.ElementNumberValue)',
    HPOVVALX TINYTEXT NOT NULL COMMENT 'Valor o caracteristicas del item (ImportDeclaration.Itemchatacteristic.Value)',
    HPOVLNCO VARCHAR(9) NOT NULL COMMENT 'Atributo lenguageCode especificacion del lenguaje (ImportDeclaration.Item.chatacteristic.Value)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
   
   PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`,`HPOJIDXX`, `HPOVIDXX`),
   KEY IDX_HPOCIDXX(HPOCIDXX),
   KEY IDX_HPOIIDXX(HPOIIDXX),
   KEY IDX_HPOJIDXX(HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS VALIDATION DOCUMENT';
