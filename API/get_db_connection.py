# get_db_connection.py
import os
import pyodbc
from dotenv import load_dotenv

from pathlib import Path

env_path = Path(__file__).resolve().parent.parent / ".env"
load_dotenv(env_path)

def get_db_connection():
    server = os.getenv("DB_SERVER")
    database = os.getenv("DB_NAME")
    username = os.getenv("DB_LOGIN")
    password = os.getenv("DB_PASSWORD")

    conn_str = (
        "DRIVER={ODBC Driver 18 for SQL Server};"
        f"SERVER=localhost;"
        f"DATABASE=master;"
        f"UID=APILogin;"
        f"PWD=MI$T353Instructor;"
        f"TrustServerCertificate=yes;"
    )

    return pyodbc.connect(conn_str)