INSERT INTO WMSRIV.wms00112 (anofesxx, fechafes, regfecxx, reghorxx, regmodxx, reghmod, regestxx, regusrxx, regstamp) VALUES
('2025', '2025-01-01', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-01-06', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-03-24', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-04-17', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-04-18', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-05-01', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-06-02', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-06-23', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-06-30', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-07-20', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-08-07', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-08-18', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-10-13', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-11-03', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-11-17', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-12-08', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00'),
('2025', '2025-12-25', '2025-01-01', '00:01:00', '2025-01-01', '00:01:00', 'ACTIVO', '1052359045', '2025-01-01 00:01:00');
COMMIT;

SELECT * FROM `wms00112` WHERE `anofesxx` LIKE '%2024%';

UPDATE wms00112 SET regestxx = 'INACTIVO' WHERE `anofesxx` LIKE '%2024%';