CREATE TABLE [dbo].[divorcetwocolumn] (
    [EventId]                  VARCHAR (100) NULL,
    [D8DivorceWho]             VARCHAR (10)  NULL,
    [D8DocumentsUploadedId]    VARCHAR (100) NULL,
    [D8DocumentsUploadedValue] NVARCHAR (1)  NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

