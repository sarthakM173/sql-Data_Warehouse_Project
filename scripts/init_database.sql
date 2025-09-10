/*
================================================================
Create Database And Schemas
================================================================
Script purpose:
  This script creates a new database after checking if it exists.
  If exists drop and recreate, additionally script set up 3 new schemas within DB 
  bronze,silver,gold

WARNING:
  Running this script will drop entire 'DataWareHouse' if it exists and all data will permanently be deleted
*/

USE master;
GO

--Drop and recreate the 'DataWareHouse' database	
IF Exists(SELECT 1 FROM sys.databases Where name='DataWareHouse')
Begin
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; --ROLLBACK IMMEDIATE terminates all connections to the DB
	DROP DATABASE DataWareHouse
END;

GO

--Create DataWareHouse
CREATE DATABASE DataWareHouse;

USE DataWareHouse;

--Create Schemas
C	REATE SCHEMA bronze;
GO 
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
