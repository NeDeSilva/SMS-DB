-- check if database exist before creation
-- UTF-8 encoding for full Unicord support

IF NOT EXISTS (
    SELECT 1
    FROM sys.database
    WHERE name = N'solarPower'
)
BEGIN
    CREATE DATABASE solarPower
    COLLATE Latin1_General_100_BIN2_UTF8;
END;
GO
