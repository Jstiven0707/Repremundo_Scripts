CREATE TABLE HPOB2025(
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera siempre inicia con el año (MessageHeader.ID)',
    HPOBIDXX INT(6) NOT NULL COMMENT 'ID de la secuencia del alcance de negocio',
    HPOBTYCO VARCHAR(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de código del alcance de negocio (MessageHeader.BusinessScope.TypeCode)',
    HPOBINID VARCHAR(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la instancia del alcance de negocio (MessageHeader.BusinessScope.InstanceID)',
    HPOBIDID VARCHAR(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del alcance de negocio (MessageHeader.BusinessScope.ID)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO', 'INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
    
    PRIMARY KEY (`HPOCIDXX`, `HPOBIDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci 
COMMENT 'CUSRES HEADER VS BUSINESS SCOPE';