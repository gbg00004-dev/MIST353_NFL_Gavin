USE master;
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'APILogin')
BEGIN
    CREATE LOGIN APILogin WITH PASSWORD = 'MI$T353Instructor';
END
GO

-- 2. Create database if it doesn't exist
IF DB_ID('MIST353_NFL_Gavin') IS NULL
BEGIN
    CREATE DATABASE MIST353_NFL_Gavin;
END
GO

-- 3. Switch to the database
USE MIST353_NFL_Gavin;
GO

-- 4. Create database user if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'APIUser')
BEGIN
    CREATE USER APIUser FOR LOGIN APILogin;
END
GO

-- 5. Grant permissions
GRANT EXECUTE TO APIUser;
GRANT SELECT TO APIUser;
GO








