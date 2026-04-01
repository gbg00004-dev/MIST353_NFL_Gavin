from .get_db_connection import get_db_connection

def get_teams_by_conference_division(
        conference:str =None,
          division:str =None
          
    ):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute( "EXEC procGetTeamsByConferenceDivision ?, ?", (conference, division) )
    rows = cursor.fetchall()
    conn.close()

    results = [
        {
            "team_name": row.Team_Name,
            "conference": row.Conference,
            "division": row.Division
        }
        for row in rows
    ]

    return {"data": results}