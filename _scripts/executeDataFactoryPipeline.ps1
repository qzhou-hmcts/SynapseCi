<#
.SYNOPSIS
  Triggering an ADF Pipeline run given run_inputs
.DESCRIPTION
  Trigger ADF pipeline and returns the status of the execution
.PARAMETER PipelineName
   Azure datafactory pipeline name to trigger
.PARAMETER ResourceGroupName
   Azure datafactory resource groupe
.PARAMETER DataFactoryName
   Azure datafactory name
.OUTPUTS
  Status of the pipeline execution set on pipelineExecutionStatus environment variable
#>

param
(
    [parameter(Mandatory = $false)] [String] $PipelineName,
    [parameter(Mandatory = $false)] [String] $ResourceGroupName,
    [parameter(Mandatory = $false)] [String] $DataFactoryName
)
Write-Host "Executing pipeline with name $PipelineName"
$runId = Invoke-AzDataFactoryV2Pipeline -ResourceGroupName mi-test-rg -DataFactoryName mi-ingestion-adf-test -PipelineName $PipelineName
Write-Host "Executed pipeline with execution id $runId"

$executionDetails = Get-AzDataFactoryV2PipelineRun -ResourceGroupName mi-test-rg -DataFactoryName mi-ingestion-adf-test -PipelineRunId $runId
$executionStatus = $executionDetails.Status
$outputStatus = @('Succeeded', 'TimedOut', 'Failed', 'Cancelled')
$maxRetries = 60
$currentRetries = 0
while ( (-not ($outputStatus -contains $executionStatus)) -and  ($currentRetries -lt $maxRetries)) {
    $executionDetails = Get-AzDataFactoryV2PipelineRun -ResourceGroupName mi-test-rg -DataFactoryName mi-ingestion-adf-test -PipelineRunId $runId
    $executionStatus = $executionDetails.Status
    Start-Sleep -Seconds 5
    $currentRetries += 1
}

Write-Host "Execution retries $currentRetries"
Write-Host "Execution pipeline status $executionStatus"


echo "##vso[task.setvariable variable=pipelineExecutionStatus;isOutput=true]$executionStatus"