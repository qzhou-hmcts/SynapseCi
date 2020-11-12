/*
Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:setvar PipelinePassword PipelinePassword
:setvar DbName SqlDwDatabaseName
:setvar readerGroup readerGroup

IF NOT EXIST (SELECT * FROM sys.sysusers where name = $(readerGroup))
BEGIN
    CREATE USER [$(readerGroup)] FOR EXTERNAL PROVIDER;
    EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = $(readerGroup);
END