CREATE TABLE [SGTest].[PipelineParameters] (
    [ParameterId]    INT       NULL,
    [PipelineId]     INT       NULL,
    [ParameterName]  CHAR (64) NULL,
    [ParameterValue] CHAR (64) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

