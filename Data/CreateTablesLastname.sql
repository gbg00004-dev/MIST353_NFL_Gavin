-- Create a database for NFL app
use master;

--CREATE DATABASE MIST353_NFL_RDB_Lastname;

USE MIST353_NFL_Lastname;

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
City VARCHAR(50) NOT NULL,
Colors NVARCHAR(50) NOT NULL,
Logo NVARCHAR(255) NOT NULL,
ConferenceDivisionID INT NOT NULL
    CONSTRAINT FK_Team_ConferenceDivision FOREIGN KEY (ConferenceDivisionID) REFERENCES ConferenceDivision(ConferenceDivisionID)
);

create TABLE Stadium (
    StadiumID INT identity(1,1)
        CONSTRAINT PK_Stadium PRIMARY KEY,
    StadiumName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NOT NULL
)

create TABLE TeamStadium (
    TeamStadiumID INT identity(1,1)
        CONSTRAINT PK_TeamStadium PRIMARY KEY,
    TeamID INT NOT NULL
        CONSTRAINT FK_TeamStadium_Team FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    StadiumID INT NOT NULL
        CONSTRAINT FK_TeamStadium_Stadium FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID),
    StartDate DATE NOT NULL,
    EndDate DATE NULL
);

create TABLE Game (
    GameID INT identity(1,1)
        CONSTRAINT PK_Game PRIMARY KEY,
        GameDate DATE NOT NULL,
        GameStartTime TIME NOT NULL,
        GameEndTime TIME NOT NULL,
        AwayTeamScore INT NOT NULL,
        HomeTeamScore INT NOT NULL,
    StadiumID INT NOT NULL
        CONSTRAINT FK_Game_Stadium FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID),
    AwayTeamID INT NOT NULL
        CONSTRAINT FK_Game_AwayTeam FOREIGN KEY (AwayTeamID) REFERENCES Team(TeamID),
    HomeTeamID INT NOT NULL
        CONSTRAINT FK_Game_HomeTeam FOREIGN KEY (HomeTeamID) REFERENCES Team(TeamID)
);

create Table AppUser (
    AppUserID INT identity(1,1)
        CONSTRAINT PK_AppUser PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(20) NULL,
    UserRole NVARCHAR(20) NOT NULL
);

create TABLE NFLAdmin (
    NFLAdminID INT identity(1,1)
        CONSTRAINT PK_NFLAdmin PRIMARY KEY,
    AppUserID INT NOT NULL
        CONSTRAINT FK_NFLAdmin_AppUser FOREIGN KEY (AppUserID) REFERENCES AppUser(AppUserID)
);

create TABLE NFLFan (
     NFLFanID INT identity(1,1)
        CONSTRAINT PK_NFLFan PRIMARY KEY,
    PrimaryTeamID INT NOT NULL
        CONSTRAINT FK_NFLFan_Team FOREIGN KEY (PrimaryTeamID) REFERENCES Team(TeamID),
    AppUserID INT NOT NULL
        CONSTRAINT FK_NFLFan_AppUser FOREIGN KEY (AppUserID) REFERENCES AppUser(AppUserID)
);

create TABLE AdminUpdate (
    AdminUpdateID INT identity(1,1)
        CONSTRAINT PK_AdminUpdate PRIMARY KEY,
    NFLAdminID INT NOT NULL
        CONSTRAINT FK_AdminUpdate_NFLAdmin FOREIGN KEY (NFLAdminID) REFERENCES NFLAdmin(NFLAdminID),
    UpdateDate DATE NOT NULL,
    UpdateType NVARCHAR(255) NOT NULL,
    UpdateValues NVARCHAR(255) NOT NULL
);