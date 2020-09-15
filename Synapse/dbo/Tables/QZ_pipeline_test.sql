CREATE TABLE [dbo].[QZ_pipeline_test] (
    [col1] INT          NULL,
    [col2] INT          NULL,
    [col3] VARCHAR (20) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);



