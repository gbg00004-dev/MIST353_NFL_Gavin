import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "..", "API"))

from fastapi import FastAPI
from .get_teams_by_conference_division import get_teams_by_conference_division
from .get_teams_in_same_conference_division_as_specified_team import get_teams_in_same_conference_division_as_specified_team
app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello, World!"}

@app.get("/get_teams_by_conference_division")
def read_teams_in_same_conference_division(conference: str = None, division: str = None):
    return get_teams_by_conference_division(conference=conference, division=division)

@app.get("/get_teams_in_same_conference_division_as_specified_team")
def read_teams_in_same_conference_division_as_specified_team(team_name: str):
    return get_teams_in_same_conference_division_as_specified_team(team_name=team_name)


import pyodbc
from .get_db_connection import get_db_connection

@app.get("/get_teams_for_specified_fan")
def get_teams_for_specified_fan(first_name: str, last_name: str):
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("EXEC GetTeamsForSpecifiedFan ?, ?", first_name, last_name)
    rows = cursor.fetchall()

    results = []
    for row in rows:
        results.append({
            "team_name": row.TeamName,
            "conference": row.Conference,
            "division": row.Division
        })

    return results
