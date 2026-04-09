import streamlit as st
import requests
import pandas as pd

def get_teams_for_specified_fan_ui():
    st.header("Get Teams for Specified Fan")

    first_name = st.text_input("Enter Fan First Name")
    last_name = st.text_input("Enter Fan Last Name")

    if st.button("Fetch Team"):
        url = f"http://127.0.0.1:8000/get_teams_for_specified_fan?first_name={first_name}&last_name={last_name}"
        response = requests.get(url)

        if response.status_code == 200:
            data = response.json()
            df = pd.DataFrame(data)

            df = df.rename(columns={
                "team_name": "TeamName",
                "conference": "Conference",
                "division": "Division"
            })

            st.table(df[["TeamName", "Conference", "Division"]])
        else:
            st.error("Error fetching data from API")
