-- Create a database for NFL app
--use master;

--CREATE DATABASE MIST#%#_NFL_RDB_Lastname;

use MIST353_NFL_RDB_Lastname;

-- Create tables for first iteration
create TABLE ConferenceDivision (
    ConferenceDivisionID INT identity(1,1)
        CONSTRAINT PK_ConferenceDivision PRIMARY KEY,
    Conference NVARCHAR(50) NOT NULL,
        constraint CK_ConferenceNames CHECK (Conference IN ('AFC', 'NFC')),
    Division NVARCHAR(50) NOT NULL
        constraint CK_DivisionNames CHECK (Division IN ('East', 'West', 'North', 'South'))
);
create TABLE Team (
    TeamID INT identity(1,1)
        CONSTRAINT PK_Team PRIMARY KEY,
Team_Name VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL
ConferenceDivisionID INT NOT NULL
    CONSTRAINT FK_Team_ConferenceDivision FOREIGN KEY ConferenceDivisionID
        REFERENCES ConferenceDivision(ConferenceDivisionID)
);