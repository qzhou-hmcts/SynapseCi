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
        "AZ_SQL_SERVER_NAME": os.getenv("AZ_SQL_SERVER_NAME"),
        "AZ_SQL_SERVER_USERNAME": os.getenv("AZ_SQL_SERVER_USERNAME"),
        "AZ_SQL_SERVER_PASSWORD": os.getenv("AZ_SQL_SERVER_PASSWORD"),
        "AZ_SQL_DATABASE_NAME": os.getenv("AZ_SQL_DATABASE_NAME"),
    }


@pytest.fixture(scope="module")
def sql_connection(config):
    """Create a Connection Object object"""
    server = config["AZ_SQL_SERVER_NAME"]
    database = config["AZ_SQL_DATABASE_NAME"]
    username = config["AZ_SQL_SERVER_USERNAME"]
    password = config["AZ_SQL_SERVER_PASSWORD"]

    connection = """Driver={{ODBC Driver 17 for SQL Server}};Server=tcp:{dbServer}.database.windows.net,1433; \
    Database={database};Uid={username};Pwd={password};Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;'"""\
        .format(dbServer=server, username=username, password=password, database=database)
    cnxn = pyodbc.connect(connection)

    yield cnxn
    cnxn.close()
