import os



# def test_pipeline_succeeded(adf_pipeline_run):
#     """Test that pipeline has data in SQL"""
#     this_run = adf_pipeline_run(PIPELINE_NAME, run_inputs={})

#     assert this_run.status == "Succeeded"

def test_pipeline_succeeded():
    """Test verify pipeline execution, Pipeline was executed using executeDataFactoryPipeline.ps1 and result set on pipelineExecutionStatus"""
    run_status = os.getenv("PIPELINE_EXECUTION_SATTUS")

    assert run_status == "Succeeded"

def test_db_connection(sql_connection):
    cursor = sql_connection.cursor()
    cursor.execute("SELECT COUNT(*)  as 'rowCount' from payment.BulkEnvelopCase")
    row = cursor.fetchone()

    assert row is not None
    assert int(row.rowCount) >= 1
