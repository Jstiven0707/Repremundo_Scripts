SELECT 
    CASE
        WHEN NOT EXISTS (
            SELECT TABLE_NAME
            FROM information_schema.tables
            WHERE TABLE_SCHEMA = 'WMS'
            AND TABLE_NAME LIKE '%2025'
            AND TABLE_COLLATION != 'utf8_unicode_ci'
        ) THEN 'Todo está OK en cotejamiento utf8_unicode_ci'
        ELSE (
            SELECT GROUP_CONCAT(TABLE_NAME)
            FROM information_schema.tables
            WHERE TABLE_SCHEMA = 'WMS'
            AND TABLE_NAME LIKE '%2025'
            AND TABLE_COLLATION != 'utf8_unicode_ci'
        )
    END AS resultado;