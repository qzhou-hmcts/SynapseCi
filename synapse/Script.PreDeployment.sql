/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:setvar PipelinePassword PipelinePassword
:setvar SqlDwDatabaseName SqlDwDatabaseName

use master
go
IF NOT EXISTS
    (
        SELECT *
        FROM sys.sql_logins
        WHERE name = 'pipeline'
    )

    BEGIN
        CREATE LOGIN pipeline WITH PASSWORD = '$(PipelinePassword)'
    END

use '$(SqlDwDatabaseName)'
go