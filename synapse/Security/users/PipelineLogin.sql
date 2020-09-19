use master
go
CREATE LOGIN pipeline WITH PASSWORD = '$(PipelinePassword)'
go
use '$(SqlDwDatabaseName)'
go