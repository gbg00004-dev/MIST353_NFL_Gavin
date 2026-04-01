import streamlit as st
import requests

def get_teams_by_conference_division_ui():
    st.header("Get Teams by Conference and Division")

    conference = st.selectbox("Select Conference:", ["AFC", "NFC"])
    division = st.selectbox("Select Division:", ["East", "West", "North", "South"])

    if st.button("Get Teams"):
        url = f"http://127.0.0.1:8000/get_teams_by_conference_division?conference={conference}&division={division}"
        response = requests.get(url)

        if response.status_code == 200:
            st.json(response.json())
        else:
            st.error("Error fetching data from API")
