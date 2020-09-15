CREATE TABLE [dbo].[divorcesinglecolumn] (
    [EventId]             VARCHAR (100)   NULL,
    [D8DivorceWho]        VARCHAR (10)    NULL,
    [D8DocumentsUploaded] NVARCHAR (3000) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

