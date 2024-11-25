-- TABLA  APOU0001- APPLE - CABECERA 214

CREATE TABLE APOU0001 (
DOCNROXX VARCHAR(15) NOT NULL COMMENT 'NUMERO DEL DO',
C2141DXX VARCHAR(9) NOT NULL  COMMENT 'ID del consecutivo de la transaccion STST02 Y SESE02',
C214COTR ENUM ('','214') NOT NULL COMMENT 'codigo que define el tipo de transaccion STST01',
C214AUID VARCHAR(2) NOT NULL COMMENT 'codigo que identificael tipo de informacion de la autorizacion ISAIS01',
C214AUIA VARCHAR(10) NOT NULL COMMENT 'informacion adicional del que envia la informacion',
C214SEIN VARCHAR(2) NOT NULL COMMENT 'Codigo que identifica el tipo de informacion de seguridad',
C214ICQI VARCHAR(2) NOT NULL COMMENT 'codigo de la estructura ISA.ISAO5',
C214IDSE VARCHAR(15) NOT NULL COMMENT 'Identificacion del que envia ISA.ISA06',
C214INID VARCHAR(2) NOT NULL COMMENT  'Identificador del calificador de intercambio ISA.ISA07',
C214REID VARCHAR(2) NOT NULL COMMENT 'Identificador del que recibe ISA.ISA08',
C214INDA DATE NOT NULL COMMENT 'Fecha de intercambio ISA.ISA09',
C214INTI TIME NOT NULL COMMENT'Hora de intercambio ISA.ISA10',
C214ICSI VARCHAR(1) NOT NULL COMMENT 'Identificador de la agencia responsable del intercambio ISA.ISA11 ',
C214ICVN VARCHAR(5) NOT NULL COMMENT 'CODIGO QUE ESPECIFICA LA VERSION DEL INTERCAMBIO ISA.ISA12',
C214ICINCN BIGINT(12) NOT NULL COMMENT 'Numero de control asignador para el intercambio por el envia ISA.ISA13',
C214ACRE VARCHAR(1) NOT NULL COMMENT 'CODIGO DE RECONOCIMIENTO ISA.ISA14',
C214USIN ENUM('','P','T') NOT NULL COMMENT 'Bandera que indica el uso donde p es produccion t es test ISA.ISA15',
C214CESP ENUM('','*') NOT NULL COMMENT 'Delimitador de la informacion',
C214FUID VARCHAR(2) NOT NULL COMMENT 'Codigo del grupo de la aplicacion',
C214ASCO VARCHAR(15) NOT NULL COMMENT 'Codigo que identifica en que envia el mensaje GS.GSO2',
C214ARCO VARCHAR(15) NOT NULL COMMENT 'Codigo que identifica quien recibe el mensaje GS.GS03',
C214GDAT DATE NOT NULL COMMENT 'Fecha GS.GS04',
C214GRCN BIGINT(12) AUTO_INCREMENT NOT NULL COMMENT 'Numero de control ORIGINADO Y MANTENIDO POR EL QUE ENVIA CS.CS07',
C214GREA VARCHAR(2) NOT NULL COMMENT 'Codigo que identifica la agencia',
C214VRII VARCHAR(12) NOT NULL COMMENT 'Codigo que identifica la version GS.GS08',
C214RIXX VARCHAR(30) NOT NULL COMMENT 'Informacion de referencia para la definicion particular de una transaccion B10.B1001',
C214SCAP VARCHAR(4) NOT NULL COMMENT 'Codigo alfa del portador estandar B10.B1003',
C214RI1M VARCHAR(30) NOT NULL COMMENT 'Informacion de referencia',
C214RICN ENUM('','1M') NOT NULL COMMENT 'identificador de referencia L.11.L1102',
C214RI8S VARCHAR (30) NOT NULL COMMENT 'Informacion de referencia particular L11.L1101',
C214N1EI VARCHAR(3) NOT NULL COMMENT 'Codigo de identificacion de la organizacion N1.N101',
C214N1NA VARCHAR(60) NOT NULL COMMENT 'Descripcion nombre del origen N1.N102',
C214N1CQ VARCHAR(2) NOT NULL COMMENT 'Codigo de identificacion de la estructura del codigo N1.N103',
C214NICX VARCHAR(80) NOT NULL COMMENT 'Codigo que identifica a una parte u otra parte del codigo N1.N104',
C214SENF  INT(7) NOT NULL COMMENT 'Numero de filas generadas para el mensaje SE.SE01',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`DOCNROXX`, `C2141DXX`),
KEY idx_DOCNROXX (DOCNROXX)

) AUTO_INCREMENT = 100  COMMENT = 'CABECERA 214';
