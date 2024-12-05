
CREATE TABLE IF NOT EXISTS `MVCT2025` (
  `CONSECXX` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo Tiempo',
  `HELCCSCX` bigint NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `DOCNROXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `TIEMPAUS` time NOT NULL COMMENT 'Tiempo en pausa',
  `TIEMRECO` time NOT NULL COMMENT 'Tiempo de reconocimiento',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hola de creacion',
  `REGUSRMX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario modicifacion',
  `REGFECMX` date NOT NULL COMMENT 'fecha modificacion',
  `REGHORMX` time NOT NULL COMMENT 'hora modificacion',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`CONSECXX`,`DOCNROXX`,`HELCCSCX`) COMMENT 'Llave Primaria'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Tiempos logisticos MVC';


