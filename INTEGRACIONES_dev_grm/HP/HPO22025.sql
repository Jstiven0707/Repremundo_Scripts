
CREATE TABLE HPO22025 (
    HPOCIDXX BIGINT NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (importDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural, por cada HPOCIDXX y HPOIIDXX',
    HPO2IDXX SMALLINT NOT NULL COMMENT 'Identificador del paquete asignado, por cada HPOCIDXX, HPOIIDXX y HPOJIDXX, inicia en 100 (identificador del paquete asignado)',
    HPO2COID VARCHAR(35) NOT NULL COMMENT 'Identificador del paquete (importDeclaration.Item.packageAssignment.packageID)',
    HPO2PRQU DECIMAL(14,8) NOT NULL COMMENT 'Cantidad del producto (importDeclaration.Item.packageAssignment.packageQuantity)',
    HPO2PRQX VARCHAR(3) NOT NULL COMMENT 'Atributo unitCode, cantidad del producto (importDeclaration.Item.packageAssignment.packageQuantity)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creación del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creación del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificación del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificación del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Última Modificación',

    PRIMARY KEY (`HPOCIDXX`,`HPOIIDXX`,`HPOJIDXX`,`HPO2IDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX),
    KEY IDX_HPOIIDXX(HPOIIDXX),
    KEY IDX_HPOJIDXX(HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS PACKAGE ASSIGNMENT';
