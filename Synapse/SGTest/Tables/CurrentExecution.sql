CREATE TABLE [SGTest].[CurrentExecution] (
    [LocalExecutionId] INT       NOT NULL,
    [StageId]          INT       NULL,
    [PipelineId]       INT       NULL,
    [PipelineName]     CHAR (64) NULL,
    [StartDateTime]    DATETIME  NULL,
    [PipelineStatus]   CHAR (32) NULL,
    [EndDateTime]      DATETIME  NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);


GO
CREATE NONCLUSTERED INDEX [IND_LocalExecutionId]
    ON [SGTest].[CurrentExecution]([LocalExecutionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_StageId]
    ON [SGTest].[CurrentExecution]([StageId] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_PipelineId]
    ON [SGTest].[CurrentExecution]([PipelineId] ASC);

