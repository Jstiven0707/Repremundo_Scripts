
CREATE TABLE IF NOT EXISTS `HELD2025` (
  `HELCCSCX` bigint NOT NULL COMMENT 'CONSECUTIVO DE CABECERA DEL TICKET',
  `HELDIDXX` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo detalle ',
  `HELCDESC` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL TICKET',
  `HELCESTA` enum('PENDIENTE','SOLUCIONADO','EN ESPERA','EN PROCESO','DEVUELTO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del seguimiento del ticket',
  `TIPTICKX` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `HELCIDCL` int NOT NULL,
  `HELSNRAP` enum('','SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Opcion de causal de reapertura',
  `HELOTRAP` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion otra causal de reapertura',
  `HELDREAX` enum('','EL AGENTE NO SOLUCIONO EL TICKET','LA SOLUCION NO FUE CLARA','SE VOLVIO A PRESENTAR ERRORES','OTRA') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'indica la causal de reapertura',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`HELDIDXX`),
  KEY `HELCCSCX` (`HELCCSCX`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Del Ticket' AUTO_INCREMENT=774 ;


