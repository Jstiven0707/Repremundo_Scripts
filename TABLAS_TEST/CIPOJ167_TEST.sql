CREATE TABLE CIPOJ167(

IDPRXXXX INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT 'ID DE LA PREGUNTA',
NOMPROXX VARCHAR (30) NOT NULL COMMENT 'NOMBRE TIPO DE PRODUCTO',
TIPRODXX VARCHAR (50) NOT NULL COMMENT'EJEMPLO TIPO DE PRODUCTO',
PRECLASI  varchar(255) NOT NULL COMMENT 'PREGUNTAS PARA CLASIFICACION',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

KEY idx_IDPRXXXX(IDPRXXXX)
) AUTO_INCREMENT=100 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  COMMENT'PREGUNTAS TIPOS DE PRODUCTOS NOMECLATURA'
