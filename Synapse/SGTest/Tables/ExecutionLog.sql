CREATE TABLE [SGTest].[ExecutionLog] (
    [LogId]            INT       NOT NULL,
    [LocalExecutionId] INT       NULL,
    [StageId]          INT       NULL,
    [PipelineId]       INT       NULL,
    [PipelineName]     CHAR (64) NULL,
    [StartDateTime]    DATETIME  NULL,
    [PipelineStatus]   CHAR (32) NULL,
    [EndDateTime]      DATETIME  NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

