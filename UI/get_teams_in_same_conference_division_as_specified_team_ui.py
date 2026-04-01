import streamlit as st
import requests

def get_teams_in_same_conference_division_as_specified_team_ui():
    st.header("Get Teams in Same Conference & Division as a Specified Team")

    team_name = st.text_input("Enter Team Name (e.g., Buffalo Bills)")

    if st.button("Get Teams"):
        url = f"http://127.0.0.1:8000/get_teams_in_same_conference_division_as_specified_team?team_name={team_name}"
        response = requests.get(url)

        if response.status_code == 200:
            st.json(response.json())
        else:
            st.error("Error fetching data from API")
