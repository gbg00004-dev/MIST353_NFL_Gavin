from get_db_connection import get_db_connection

def get_teams_in_same_conference_division_as_specified_team(team_name: str):
    
    
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("(call procGetTeamsInSameConferenceDivisionAsSpecifiedTeam(?))", (team_name,))
    rows = cursor.fetchall()
    conn.close()

    results = [
        {
            "team_name": row.team_name,
            "conference": row.conference,
            "division": row.division
        }
        for row in rows
    ]

    return {"data": results}