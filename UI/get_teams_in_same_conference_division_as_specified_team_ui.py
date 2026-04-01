import streamlit as st
import requests
import pandas as pd

def get_teams_in_same_conference_division_as_specified_team_ui():
    st.header("Get Teams in Same Conference and Division as Specified Team")

    team_name = st.text_input("Enter Team Name")

    if st.button("Fetch Teams"):
        url = f"http://127.0.0.1:8000/get_teams_in_same_conference_division_as_specified_team?team_name={team_name}"
        response = requests.get(url)

        if response.status_code == 200:
            data = response.json()

            df = pd.DataFrame(data)

            # Expand nested JSON
            df = pd.json_normalize(df["data"])

            # Rename columns
            df = df.rename(columns={
                "team_name": "TeamName",
                "conference": "Conference",
                "division": "Division"
            })

            # 🔥 Remove the team the user typed
            df = df[df["TeamName"].str.lower() != team_name.lower()]

            st.table(df[["TeamName", "Conference", "Division"]])
        else:
            st.error("Error fetching data from API")
