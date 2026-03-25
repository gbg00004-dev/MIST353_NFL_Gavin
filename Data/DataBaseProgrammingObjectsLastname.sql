USE master;

Create login APILogin
WITH PASSWORD = 'MI$T353Instructor';

use MIST353_NFL_Gavin;

Create user APIUser
For Login APILogin;

Grant Execute to APIUser;

Grant Select to APIUser;




GO
create or alter procedure procGetTeamsByConferenceDivision
(
    @Conference varchar(50) = NULL,
    @Division varchar(50) = NULL
)
AS
BEGIN
    SELECT t.TeamID, t.Team_Name, t.City, t.Colors, t.Logo, cd.Conference, cd.Division
    FROM Team t
    INNER JOIN ConferenceDivision cd ON t.ConferenceDivisionID = cd.ConferenceDivisionID
    WHERE (@Conference IS NULL OR cd.Conference = @Conference)
      AND (@Division IS NULL OR cd.Division = @Division)

END

GO

