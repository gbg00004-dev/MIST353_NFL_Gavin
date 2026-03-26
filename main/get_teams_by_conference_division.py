from get_db_connection import get_db_connection

def get_teams_by_conference_division(
        conference:str =None,
          division:str =None
          
    ):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute( "(call procGetTeamsByConferenceDivision(?, ?))", (conference, division) )
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