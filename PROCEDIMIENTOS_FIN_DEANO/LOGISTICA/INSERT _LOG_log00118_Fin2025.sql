/* INSERT PARA NUEVO AÑO */
/* TOTAL TABLAS 18 */

/* ACTUALIZAR TRIGGER DE PEDJDAHD Y GWSFACCA A 2025 */

INSERT INTO LOG.log00118 (contabla, depconse, conanoxx, concscxx, esiddocx, combanxx, regusrxx, regfecxx, reghorxx, regusrmx, regmodxx, reghormx, regestxx, regstamp) VALUES
('escaxxxx', '001', '2025', '1', 'E', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '002', '2025', '1', 'E', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '003', '2025', '1', 'E', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '005', '2025', '1', 'E', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '001', '2025', '1', 'S', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '002', '2025', '1', 'S', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '003', '2025', '1', 'S', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('escaxxxx', '005', '2025', '1', 'S', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('esgw2025', '001', '2025', '1', 'A', '', '1052359045', '2025-02-07', '00:17:00', '1052359045', '2025-02-07', '00:17:00', 'ACTIVO', '2025-02-07 00:17:00'),
('ordeserx', '001', '2025', '1', 'O', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('ordeserx', '002', '2025', '1', 'O', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('ordeserx', '003', '2025', '1', 'O', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00'),
('ordeserx', '005', '2025', '1', 'O', '', '1052359045', '2025-01-01', '00:17:00', '1052359045', '2025-01-01', '00:17:00', 'ACTIVO', '2025-01-01 00:17:00');

SELECT * FROM `log00118` WHERE `conanoxx` LIKE '%2024%';

UPDATE log00118 SET regestxx = 'INACTIVO'  WHERE `conanoxx` LIKE '%2024%';
