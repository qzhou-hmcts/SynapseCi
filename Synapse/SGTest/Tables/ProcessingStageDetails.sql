CREATE TABLE [SGTest].[ProcessingStageDetails] (
    [StageId]          INT       NULL,
    [StageName]        INT       NULL,
    [StageDescription] CHAR (64) NULL,
    [Enabled]          CHAR (32) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

