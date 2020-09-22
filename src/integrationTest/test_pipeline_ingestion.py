PIPELINE_NAME = ""


def test_pipeline_succeeded(sql_connection):
    """Test that pipeline has data in SQL"""
    # this_run = adf_pipeline_run(PIPELINE_NAME, run_inputs={})

    # Assert
    cursor = sql_connection.cursor()
    cursor.execute("SELECT COUNT(*)  as 'rowCount' from PROBATE.STG_CCD_METADATA")
    row = cursor.fetchone()
    # assert this_run.status == "Succeeded"
    assert row is not None
    assert int(row.rowCount) >= 1
