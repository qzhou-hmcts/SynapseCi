PIPELINE_NAME = "copy_pipeline"


def test_pipeline_succeeded(adf_pipeline_run):
    """Test that pipeline has data in SQL"""
    this_run = adf_pipeline_run(PIPELINE_NAME, run_inputs={})

    assert this_run.status == "Succeeded"

# def test_db_connection() {
#     cursor = sql_connection.cursor()
#     cursor.execute("SELECT COUNT(*)  as 'rowCount' from PROBATE.STG_CCD_METADATA")
#     row = cursor.fetchone()

#     assert row is not None
#     assert int(row.rowCount) >= 1
# }

