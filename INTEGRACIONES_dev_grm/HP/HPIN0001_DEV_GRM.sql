-- TABLA HPIN0001 - HP - CUSDEC HEADER MESSAGE

CREATE TABLE HPIN0001 (

CUSIDXXX INT(6) PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT 'Indica el ID del cusdec header',
CUSMENID BIGINT(16) NOT NULL COMMENT 'ID del mensaje (MenssageHeader.ID)',
CUSUUIDX VARCHAR(36) NOT NULL  COMMENT 'UUID del mensaje',
CUSREFID BIGINT(16) NOT NULL COMMENT 'ID del mensaje padre (MensaggeHeaderRegerenceID)',
CUSUUIDR VARCHAR(36) NOT NULL COMMENT 'UUID del mensaje padre (MensaggeHeaderRegerenceUUID)',
CUSCREXX DATETIME NOT NULL COMMENT 'fecha de creacion del mensaje (MensaggeHeader.CreationDateTime)',
CUSSYSEN TINYTEXT NOT NULL COMMENT'ID del sistema que envia el documento (MensaggeHeader.SenderBusinessSystemID) ',
CUSSYSRE TINYTEXT NOT NULL COMMENT'ID del sistema que recibe el documento (MensaggeHeader.RecipientBusinessSystemID)',
CUSSENPA JSON  NOT NULL COMMENT 'Informacion que llega en la posicion senderparty (MensaggeHeader.SenderParty)',
CUSRECPA JSON  NOT NULL COMMENT' Infromacion que llega en la posicion recipientparty  (MensaggeHeader.BusniessScope)',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'

) AUTO_INCREMENT=100 COMMENT = 'CUSDEC HEADER MESSAGE';
