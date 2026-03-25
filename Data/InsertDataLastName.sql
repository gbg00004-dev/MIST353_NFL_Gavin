Delete from Team;
Delete from ConferenceDivision;
DBCC Checkident ('Team', RESEED, 0);
DBCC Checkident ('ConferenceDivision', RESEED, 0);


Insert Into ConferenceDivision (Conference, Division
) Values ('AFC', 'East');
Insert Into ConferenceDivision (Conference, Division
) Values ('AFC', 'North');
Insert Into ConferenceDivision (Conference, Division
) Values ('AFC', 'South');
Insert Into ConferenceDivision (Conference, Division
) Values ('AFC', 'West');
Insert Into ConferenceDivision (Conference, Division
) Values ('NFC', 'East');
Insert Into ConferenceDivision (Conference, Division
) Values ('NFC', 'North');
Insert Into ConferenceDivision (Conference, Division
) Values ('NFC', 'South');
Insert Into ConferenceDivision (Conference, Division
) Values ('NFC', 'West');

Insert into Team (Team_Name, City, Colors, Logo, ConferenceDivisionID
) Values ('Buffalo Bills', 'Buffalo', 'Royal Blue, Red, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/BUF', 1),
('Miami Dolphins', 'Miami', 'Aqua, Orange, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/MIA', 1),
('New England Patriots', 'New England', 'Navy Blue, Red, Silver', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/NE', 1),
('New York Jets', 'New York', 'Green, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/NYJ', 1),
('Baltimore Ravens', 'Baltimore', 'Purple, Black, Metallic Gold', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/BAL', 2),
('Cincinnati Bengals', 'Cincinnati', 'Black, Orange, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/CIN', 2),
('Cleveland Browns', 'Cleveland', 'Brown, Orange, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/CLE', 2),
('Pittsburgh Steelers', 'Pittsburgh', 'Black, Gold, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/PIT', 2),
('Houston Texans', 'Houston', 'Deep Steel Blue, Battle Red, Liberty White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/HOU', 3),
('Indianapolis Colts', 'Indianapolis', 'Speed Blue, White, Metallic Silver ', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/IND', 3),
('Jacksonville Jaguars', 'Jacksonville','Teal, Black, Gold','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/JAX' ,3),
('Tennessee Titans','Nashville','Titans Blue, Titans Navy, Red','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/TEN' ,3),
('Denver Broncos', 'Denver', 'Orange, Navy Blue, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/DEN', 4),
('Kansas City Chiefs', 'Kansas City', 'Red, Gold, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/KC', 4),
('Las Vegas Raiders', 'Las Vegas', 'Silver, Black', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/LV', 4),
('Los Angeles Chargers', 'Los Angeles', 'Powder Blue, Sunshine Gold, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/LAC', 4),
('Dallas Cowboys', 'Dallas', 'Navy Blue, Metallic Silver, White', 'https://static.www.nfl.com/t_q-best/league/api/clubs/logos/DAL', 5),
('New York Giants', 'New York','Royal Blue, Red, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/NYG' ,5),
('Philadelphia Eagles','Philadelphia','Midnight Green, Silver, Black','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/PHI' ,5),
('Washington Commanders','Washington','Burgundy, Gold, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/WAS' ,5),
('Chicago Bears','Chicago','Navy Blue, Orange, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/CHI' ,6),
('Detroit Lions','Detroit','Honolulu Blue, Silver, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/DET' ,6),
('Green Bay Packers','Green Bay','Dark Green, Gold, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/GB' ,6),
('Minnesota Vikings','Minneapolis','Purple, Gold, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/MIN' ,6),
('Atlanta Falcons','Atlanta','Red, Black, Silver, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/ATL' ,7),
('Carolina Panthers','Charlotte','Black, Panther Blue, Silver, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/CAR' ,7),
('New Orleans Saints','New Orleans','Old Gold, Black, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/NO' ,7),
('Tampa Bay Buccaneers','Tampa Bay','Red, Pewter, Black, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/TB' ,7),
('Arizona Cardinals','Phoenix','Cardinal Red, Black, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/ARI' ,8),
('Los Angeles Rams','Los Angeles','Royal Blue, Solor Gold, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/LA' ,8),
('San Francisco 49ers','San Francisco','Scarlet, Gold, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/SF' ,8),
('Seattle Seahawks','Seattle','College Navy, Action Green, Wolf Grey, White','https://static.www.nfl.com/t_q-best/league/api/clubs/logos/SEA' ,8);

Insert into Stadium (StadiumName, Location
) Values ('Highmark Stadium','Orchard Park, NY'),
('Hard Rock Stadium','Miami Gardens, FL'),
('Gillette Stadium','Foxborough, MA'),
('MetLife Stadium','East Rutherford, NJ'),
('M&T Bank Stadium','Baltimore, MD'),
('Paycor Stadium','Cincinnati, OH'),
('Huntington Bank Field','Cleveland, OH'),
('Acrisure Stadium','Pittsburgh, PA'),
('NRG Stadium','Houston, TX'),
('Lucas Oil Stadium','Indianapolis, IN'),
('EverBank Stadium','Jacksonville, FL'),
('Nissan Stadium','Nashville, TN'),
('Empower Field at Mile High','Denver, CO'),
('Arrowhead Stadium','Kansas City, MO'),
('Allegiant Stadium','Las Vegas, NV'),
('SoFi Stadium','Inglewood, CA'),
('AT&T Stadium','Arlington, TX'),
('Lincoln Financial Field','Philadelphia, PA'),
('FedExField','Landover, MD'),
('Soldier Field','Chicago, IL'),
('Ford Field','Detroit, MI'),
('Lambeau Field','Green Bay, WI'),
('U.S. Bank Stadium','Minneapolis, MN'),
('Mercedes-Benz Stadium','Atlanta, GA'),
('Bank of America Stadium','Charlotte, NC'),
('Caesars Superdome','New Orleans, LA'),
('Raymond James Stadium','Tampa, FL'),
('State Farm Stadium','Glendale, AZ'),
('Levi''s Stadium','Santa Clara, CA'),
('Lumen Field','Seattle, WA');

Insert into TeamStadium (TeamID, StadiumID, StartDate, EndDate
) Values (1, 1, '1973-08-17', NULL),
(2, 2, '1987-08-16', NULL),
(3, 3, '2002-09-09', NULL),
(4, 4, '2010-04-10', NULL),
(5, 5, '1998-09-06', NULL),
(6, 6, '2000-08-19', NULL),
(7, 7, '1999-08-22', NULL),
(8, 8, '2001-08-11', NULL),
(9, 9, '2002-08-18', NULL),
(10, 10, '2008-08-17', NULL),
(11, 11, '1995-08-13', NULL),
(12, 12, '1999-08-22', NULL),
(13, 13, '2001-08-12', NULL),
(14, 14, '1972-09-24', NULL),
(15, 15, '2020-09-13', NULL),
(16, 16, '2020-09-13', NULL),
(17, 17, '2009-04-09', NULL),
(18, 18, '2003-08-17', NULL),
(19, 19, '2003-08-17', NULL),
(20, 20, '1997-09-14', NULL),
(21, 21,'1921-09-26',NULL),
(22, 22,'2002-08-18',NULL),
(23, 23,'1957-09-29',NULL),
(24, 24,'2016-07-16',NULL),
(25, 25,'2017-07-16',NULL),
(26, 26,'2017-07-16',NULL),
(27, 27,'2017-07-16',NULL),
(28, 28,'2002-08-18',NULL),
(29, 29,'2014-08-02',NULL),
(30, 30,'2002-08-18',NULL),
(31, 31,'2002-08-18',NULL);

select * from Team;
