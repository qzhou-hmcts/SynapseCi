CREATE TABLE [SGTest].[PipelineProcess] (
    [PipelineId]   INT       NULL,
    [StageId]      INT       NULL,
    [PipelineName] CHAR (64) NULL,
    [Enabled]      CHAR (32) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

