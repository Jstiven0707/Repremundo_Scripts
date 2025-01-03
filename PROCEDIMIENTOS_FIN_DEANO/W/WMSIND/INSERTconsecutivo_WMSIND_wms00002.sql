
INSERT INTO `wms00002` (`docsucxx`, `doctdoxx`, `docanoxx`, `docidxxx`, `docdesxx`, `regusrxx`, `regfecxx`, `regmodxx`, `reghorxx`, `regestxx`, `regstamp`) VALUES
('000031', 'ACI', '2025', '1', 'CONSECUTIVOS ACTAS INCONSISTENCIA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:16:48'),
('000031', 'COC', '2025', '1', 'CONSECUTIVO CONTACTOS CLIENTES', 'ADMIN', '2025-01-01', '2025-01-01', '11:50', 'ACTIVO', '2025-01-01 00:42:15'),
('000031', 'IDT', '2025', '1', 'CONSECUTIVOS INGRESO DOCUMENTOS TRANSPORTE', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:01:13'),
('000031', 'INV', '2025', '1', 'CONSECUTIVO INVENTARIOS', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:27:13'),
('000031', 'RCG', '2025', '1', 'CONSECUTIVO REPORTE DE CARGA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:01:13'),
('000031', 'SAL', '2025', '1', 'CONSECUTIVOS SALIDA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:15:10'),
('000031', 'SB',  '2025', '1', 'CONSECUTIVOS SALIDA DE BODEGA', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:23'),
('000031', 'UBC', '2025', '1', 'CONSECUTIVO CABECERA UBICACIONES', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:33'),
('000031', 'UBH', '2025', '1', 'CONSECUTIVO DETALLE UBICACIONES', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:33'),
('000031', 'VEH', '2025', '1', 'REGISTRO VEHICULOS', 'ADMIN', '2025-01-01', '2025-01-01', '01:00', 'ACTIVO', '2025-01-01 00:00:33');
COMMIT;

SELECT * FROM wms00002 WHERE `docanoxx` LIKE '2024';

UPDATE wms00002 SET regestxx = 'INACTIVO' WHERE `docanoxx` LIKE '2024';
