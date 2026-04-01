import streamlit as st
import requests
import pandas as pd

def get_teams_by_conference_division_ui():
    st.header("Get Teams by Conference and Division")

    conference = st.selectbox("Select Conference:", ["AFC", "NFC"])
    division = st.selectbox("Select Division:", ["East", "West", "North", "South"])

    if st.button("Fetch Teams"):
        url = f"http://127.0.0.1:8000/get_teams_by_conference_division?conference={conference}&division={division}"
        response = requests.get(url)

        if response.status_code == 200:
            data = response.json()

            # Convert to DataFrame
            df = pd.DataFrame(data)

            # Expand the "data" column into separate columns
            df = pd.json_normalize(df["data"])

            
            df = df.rename(columns={
                "team_name": "TeamName",
                "conference": "Conference",
                "division": "Division"
            })

            st.table(df[["TeamName", "Conference", "Division"]])
        else:
            st.error("Error fetching data from API")
