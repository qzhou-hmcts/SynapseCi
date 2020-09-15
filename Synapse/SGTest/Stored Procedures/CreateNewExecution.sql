CREATE PROC [SGTest].[CreateNewExecution] AS

SET NOCOUNT ON;

BEGIN

	DECLARE @LocalExecutionId UNIQUEIDENTIFIER = NEWID()

	TRUNCATE TABLE SGTest.[CurrentExecution];

	INSERT INTO SGTest.[CurrentExecution]
		(
		[LocalExecutionId],
		[StageId],
		[PipelineId],
		[PipelineName]
		)
	SELECT
		@LocalExecutionId,
		p.[StageId],
		p.[PipelineId],
		p.[PipelineName]
	FROM
		SGTest.[PipelineProcesses] p
		INNER JOIN SGTest.[ProcessingStageDetails] s
			ON p.[StageId] = s.[StageId]
	WHERE
		p.[Enabled] = 1
		AND s.[Enabled] = 1

	SELECT
		@LocalExecutionId AS 'ExecutionId'

END
