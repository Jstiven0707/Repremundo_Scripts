
INSERT INTO `wms00002` (`docsucxx`, `doctdoxx`, `docanoxx`, `docidxxx`, `docdesxx`, `regusrxx`, `regfecxx`, `regmodxx`, `reghorxx`, `regestxx`, `regstamp`) VALUES
('13908', 'ACI', '2025', '1', 'CONSECUTIVOS ACTAS INCONSISTENCIA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:46'),
('13908', 'COC', '2025', '1', 'CONSECUTIVO CONTACTOS CLIENTES', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:01'),
('13908', 'IDT', '2025', '1', 'CONSECUTIVOS INGRESO DOCUMENTOS TRANSPORTE', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:34'),
('13908', 'INV', '2025', '1', 'CONSECUTIVO INVENTARIOS', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:53'),
('13908', 'RCG', '2025', '1', 'CONSECUTIVO REPORTE DE CARGA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:34'),
('13908', 'SAL', '2025', '1', 'CONSECUTIVOS SALIDA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:16'),
('13908', 'SB', '2025',  '1', 'CONSECUTIVOS SALIDA DE BODEGA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:23'),
('13908', 'UBC', '2025', '1', 'CONSECUTIVO CABECERA UBICACIONES', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:09'),
('13908', 'UBH', '2025', '1', 'CONSECUTIVO DETALLE UBICACIONES', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:09');
COMMIT;

SELECT * FROM wms00002 WHERE `docanoxx` LIKE '%2024%';

UPDATE wms00002 SET regestxx = 'INACTIVO' WHERE `docanoxx` LIKE '%2024%';

