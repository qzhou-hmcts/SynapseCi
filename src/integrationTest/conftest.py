"""Test fixtures"""

import os
import pytest
import pyodbc
from dotenv import load_dotenv

load_dotenv(verbose=True)

# pytest_plugins = 'dataconnectors.blob_storage', 'dataconnectors.sql'


@pytest.fixture(scope="session")
def config():
    return {
        "SQL_SERVER_NAME": os.getenv("SQL_SERVER_NAME"),
        "SQL_SERVER_USERNAME": os.getenv("SQL_SERVER_USERNAME"),
        "SQL_SERVER_PASSWORD": os.getenv("SQL_SERVER_PASSWORD"),
        "SQL_DATABASE_NAME": os.getenv("SQL_DATABASE_NAME"),
    }


@pytest.fixture(scope="module")
def sql_connection(config):
    """Create a Connection Object object"""
    server = config["SQL_SERVER_NAME"]
    database = config["SQL_DATABASE_NAME"]
    username = config["SQL_SERVER_USERNAME"]
    password = config["SQL_SERVER_PASSWORD"]

    connection = """Driver={{ODBC Driver 17 for SQL Server}};Server=tcp:{dbServer}.database.windows.net,1433; \
    Database={database};Uid={username};Pwd={password};Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;'"""\
        .format(dbServer=server, username=username, password=password, database=database)
    cnxn = pyodbc.connect(connection)

    yield cnxn
    cnxn.close()
