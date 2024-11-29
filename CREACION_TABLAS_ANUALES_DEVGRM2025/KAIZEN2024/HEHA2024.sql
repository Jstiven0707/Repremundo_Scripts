
--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HEHA2024`
--

CREATE TABLE IF NOT EXISTS `HEHA2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `IDHALLTP` int(10) NOT NULL COMMENT 'Id del Hallazgo',
  `DESCHALL` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Hallazgo',
  `DESCHANA` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Analista Gaimp para Coordinador',
  `HELCESTA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Ticket',
  `TIPTICKX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Ticket',
  `HELCIDCL` int(5) NOT NULL COMMENT 'Id de la Clasificacion',
  `DOIBEDIX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Check Verificacion Auditor',
  `IDFORXXX` int(11) NOT NULL COMMENT 'Id Formulario',
  `IDPREXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id pregunta',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`HELCCSCX`,`IDHALLTP`,`IDFORXXX`,`IDPREXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Auditoria Hallazgos';

