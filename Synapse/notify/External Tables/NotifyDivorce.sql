CREATE EXTERNAL TABLE [notify].[NotifyDivorce] (
    [extracted_date] VARCHAR (30) NULL,
    [id] VARCHAR (50) NOT NULL,
    [service] VARCHAR (30) NOT NULL,
    [reference] VARCHAR (100) NULL,
    [type] VARCHAR (20) NOT NULL,
    [status] VARCHAR (30) NOT NULL,
    [template_id] VARCHAR (50) NOT NULL,
    [template_version] INT NOT NULL,
    [template_uri] VARCHAR (255) NOT NULL,
    [template_name] VARCHAR (100) NULL,
    [created_at] VARCHAR (30) NOT NULL,
    [sent_at] VARCHAR (30) NULL,
    [completed_at] VARCHAR (30) NULL,
    [estimated_delivery] VARCHAR (30) NULL
)
    WITH (
    DATA_SOURCE = [NotifyDivorceSecure],
    LOCATION = N'/',
    FILE_FORMAT = [csvwithheader],
    REJECT_TYPE = VALUE,
    REJECT_VALUE = 0
    );

