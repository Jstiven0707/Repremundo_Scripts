CREATE TABLE IF NOT EXISTS CIPO0206 (

TIPAGEND ENUM('','Todas las Subpartidas','Subpartidas especificas','Capitulos especificos','Subpartidas por franjas de precios') NOT NULL COMMENT 'Tipo de agendamiento',
FECEJECX DATE NOT NULL COMMENT 'Fecha de ejecucion',
DATCONSX TEXT NOT NULL COMMENT 'Datos de la consulta',
APLMENXX ENUM('','SI','NO') NOT NULL COMMENT 'Aplica Mensual',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`TIPAGEND`, `FECEJECX`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  COMMENT 'AGENDAMIENTOS ROBOT HULK'
