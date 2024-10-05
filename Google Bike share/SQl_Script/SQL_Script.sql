USE Bike_Share;

/* DATA INTEGRATION: MERGING TABLES */

-- Create a table called Trips_2013_2019
CREATE TABLE Trips_2013_2019
(
    Start_Time smalldatetime, 
    Stop_Time smalldatetime, 
    Trip_Duration int,
    From_Station_Name nvarchar(70), 
    To_Station_Name nvarchar(70),  
    User_Type nvarchar(50), 
    Gender char(10), 
    Birth_Year smallint, 
    From_Station_Id smallint,
    To_Station_Id smallint
);

-- Insert data from Trips_2013
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthday, from_station_id, to_station_id
FROM [Trips_2013];


--Insert data from Trips_2014_Q1_Q2
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [Trips_2014_Q1_Q2];


--Repeat the insertions for the remaining tables
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [Trips_2014_Q3_07];

-- Insert [dbo].[Trips_2014_Q3_0809]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [Trips_2014_Q3_0809];


-- Insert [dbo].[Trips_2014_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2014_Q4]

-- Insert [dbo].[Trips_2015_Q1]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q1]

-- Insert [dbo].[Trips_2015_Q2]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q2]

-- Insert [dbo].[Trips_2015_Q3_07]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q3_07]

-- Insert [dbo].[Trips_2015_Q3_08]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q3_08]

-- Insert [dbo].[Trips_2015_Q3_09]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q3_09]

-- Insert [dbo].[Trips_2015_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2015_Q4]

-- Insert [dbo].[Trips_2016_Q1]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q1]

-- Insert [dbo].[Trips_2016_Q2_04]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q2_04]

-- Insert [dbo].[Trips_2016_Q2_05]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q2_05]

-- Insert [dbo].[Trips_2016_Q2_06]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q2_06]

-- Insert [dbo].[Trips_2016_Q3]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q3]

-- Insert [dbo].[Trips_2016_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2016_Q4]

-- Insert [dbo].[Trips_2017_Q1]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2017_Q1]

-- Insert [dbo].[Trips_2017_Q2]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2017_Q2]

-- Insert [dbo].[Trips_2017_Q3]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2017_Q3]

-- Insert [dbo].[Trips_2017_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2017_Q4]


-- Insert [dbo].[Trips_2018_Q1]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthday, from_station_id, to_station_id
FROM [dbo].[Trips_2018_Q1]

-- Insert [dbo].[Trips_2018_Q2]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2018_Q2]

-- Insert [dbo].[Trips_2018_Q3]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2018_Q3]

-- Insert [dbo].[Trips_2018_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2018_Q4]

-- Insert [dbo].[Trips_2019_Q1]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2019_Q1]

-- Insert [dbo].[Trips_2019_Q2]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    starttime, stoptime, tripduration, from_station_name, to_station_name, usertype, gender, birthday, from_station_id, to_station_id
FROM [dbo].[Trips_2019_Q2]

-- Insert [dbo].[Trips_2019_Q3]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2019_Q3]

-- Insert [dbo].[Trips_2019_Q4]
INSERT INTO Trips_2013_2019
(Start_Time, Stop_Time, Trip_Duration, From_Station_Name, To_Station_Name, User_Type, Gender, Birth_Year, From_Station_Id, To_Station_Id)
SELECT 
    start_time, end_time, tripduration, from_station_name, to_station_name, usertype, gender, birthyear, from_station_id, to_station_id
FROM [dbo].[Trips_2019_Q4]


-- Finally, check the total rows for the completed table
SELECT COUNT(*) AS Total_Rows FROM Trips_2013_2019;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----Create a table merging data from 2020 to 2023
CREATE TABLE Trips_2020_2023 (
	Ride_Type nvarchar(50), 
	Start_Time smalldatetime, 
	Stop_Time smalldatetime, 
	From_Station_Name nvarchar(70), 
    To_Station_Name nvarchar(70),
	Start_Lat float, 
	Start_lng float, 
	End_Lat float, 
	End_Lng float, 
	User_Type nvarchar(50)
	)

--Insert [dbo].[Trips_2020_Q1]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q1]

--Insert [dbo].[Trips_2020_Q2_04]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q2_04]


--Insert [dbo].[Trips_2020_Q2_05]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q2_05]

--Insert [dbo].[Trips_2020_Q2_06]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q2_06]

--Insert [dbo].[Trips_2020_Q3_07]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q3_07]

--Insert [dbo].[Trips_2020_Q3_08]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q3_08]

--Insert [dbo].[Trips_2020_Q3_09]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q3_09]

--Insert [dbo].[Trips_2020_Q4_10]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q4_10]

--Insert [dbo].[Trips_2020_Q4_11]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q4_11]


--Insert [dbo].[Trips_2020_Q4_12]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2020_Q4_12]

--Insert [dbo].[Trips_2021_Q1_01]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q1_01]

--Insert [dbo].[Trips_2021_Q1_02]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q1_02]

--Insert [dbo].[Trips_2021_Q1_03]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q1_03]


--Insert [dbo].[Trips_2021_Q2_04]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q2_04]

--Insert [dbo].[Trips_2021_Q2_05]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q2_05]


--Insert [dbo].[Trips_2021_Q2_06]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q2_06]

--Insert [dbo].[Trips_2021_Q3_07]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q3_07]

--Insert [dbo].[Trips_2021_Q3_08]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q3_08]

--Insert [dbo].[Trips_2021_Q3_09]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q3_09]


--Insert [dbo].[Trips_2021_Q4_10]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q4_10]

--Insert [dbo].[Trips_2021_Q4_11]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q4_11]


--Insert [dbo].[Trips_2021_Q4_12]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2021_Q4_12]


--Insert [dbo].[Trips_2022_Q1_01]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q1_01]

--Insert [dbo].[Trips_2022_Q1_02]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q1_02]

--Insert [dbo].[Trips_2022_Q1_03]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q1_03]


--Insert [dbo].[Trips_2022_Q2_04]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q2_04]

--Insert [dbo].[Trips_2022_Q2_05]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q2_05]

--Insert [dbo].[Trips_2022_Q2_06]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q2_06]

--Insert [dbo].[Trips_2022_Q3_07]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q3_07]

--Insert [dbo].[Trips_2022_Q3_08]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q3_08]


--Insert [dbo].[Trips_2022_Q3_09]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q3_09]

--Insert [dbo].[Trips_2022_Q4_10]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM [dbo].[Trips_2022_Q4_10] 


--Insert [dbo].[Trips_2022_Q4_11]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q4_11]

--Insert [dbo].[Trips_2022_Q4_12]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2022_Q4_12]

--Insert [dbo].[Trips_2023_Q1_01]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q1_01]


--Insert [dbo].[Trips_2023_Q1_02]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q1_02]

--Insert [dbo].[Trips_2023_Q1_03]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q1_03]

--Insert [dbo].[Trips_2023_Q2_04]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q2_04]

--Insert [dbo].[Trips_2023_Q2_05]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q2_05]

--Insert [dbo].[Trips_2023_Q2_06]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q2_06]

--Insert [dbo].[Trips_2023_Q3_07]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q3_07]

--Insert [dbo].[Trips_2023_Q3_08]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q3_08]

--Insert [dbo].[Trips_2023_Q3_9]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q3_9]

--Insert [dbo].[Trips_2023_Q4_10]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q4_10]

--Insert [dbo].[Trips_2023_Q4_11]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q4_11]

--Insert [dbo].[Trips_2023_Q4_12]
INSERT INTO Trips_2020_2023
	(Ride_Type, Start_Time, Stop_Time, From_Station_Name, To_Station_Name, Start_Lat, Start_lng, End_Lat, End_Lng, User_Type)
SELECT 
	rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
FROM  [dbo].[Trips_2023_Q4_12]


-- Finally, check the total rows for the completed table
SELECT COUNT(*) AS Total_Rows FROM Trips_2020_2023;



---------------------------------------------------------------------------------------------------------------------------------------
/* DATA CLEANING AND VALIDATION */
--See Total user type for Trips_2013_2019
SELECT User_Type,
	COUNT (User_Type) AS Type_count
FROM Trips_2013_2019
GROUP BY User_Type

--Drop Dependent Users for Trips_2013_2019
DELETE FROM Trips_2013_2019
WHERE User_Type = 'Dependent'

--Check nulls for From and To station Id for Trips_2013_2019
SELECT *
FROM Trips_2013_2019
WHERE From_Station_Id IS NULL OR To_Station_Id IS NULL;

--Identify any Birth year that < 1920 for Trips_2013_2019
SELECT*
FROM Trips_2013_2019
WHERE Birth_Year < 1920



--See Total user type for 2020_2023
SELECT User_Type,
	COUNT (User_Type) AS Type_count
FROM Trips_2020_2023
GROUP BY User_Type

--identify Total bicycle types for Trips_2020_2023
SELECT Ride_Type,
	COUNT (Ride_Type) AS _count
FROM Trips_2020_2023
GROUP BY  Ride_Type

--Check nulls for From_Station_Name to To_Station_Name for Trips_2020_2023
SELECT* 
FROM Trips_2020_2023
WHERE From_Station_Name is null or To_Station_Name is null


--Check nulls for End_Lng for Trips_2020_2023
SELECT* 
FROM Trips_2020_2023
WHERE End_Lng is null




-- Change user types to 'Casual' and 'Subscriber' for Trips_2020_2023
--Note that I encountered backlog space error so i use the temp table below
ALTER TABLE Trips_2020_2023
ADD User_Type2 nvarchar(50);

-- Update User_Type2 based on the values in User_Type
UPDATE Trips_2020_2023
SET User_Type2 = CASE 
                    WHEN User_Type = 'casual' THEN 'Customer'
                    ELSE 'Subscriber'
                 END;

-- Drop the old User_Type column
BEGIN TRANSACTION;
ALTER TABLE Trips_2020_2023
DROP COLUMN User_Type;

COMMIT;




--Try temp table 
SELECT *, 
    CASE 
        WHEN User_Type = 'casual' THEN 'Customer'
        ELSE 'Subscriber'
    END AS User_Type2
INTO #TempTrips_2020_2023
FROM Trips_2020_2023;


--View top 100 of the #tempTrips
SELECT top 100* from #TempTrips_2020_2023



------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*DATA ANALYSIS */

--What is the dominant gender for the subscribers. Data are in Trips_2013_2019
SELECT Gender,
	COUNT (Gender) AS Gender_count
FROM Trips_2013_2019
GROUP BY Gender


/*  What is the most popular age group? I create an extra age group column 
	< 18 
	18-35
	35-45
	45-60
	60 +

 */
 --Create a temp table holding Trips_2013_2019
 SELECT  Birth_Year INTO #Age_group
FROM Trips_2013_2019
WHERE Birth_Year is not null

--Add the age group column
ALTER TABLE #Age_group
ADD Age_Group nvarchar(50), 
	Age smallint

--Get the Age from the BirthYear Column 
UPDATE #Age_group 
SET Age = 2024 - Birth_Year

--Create an age group columns based on the Age column
UPDATE #Age_group
SET Age_Group = CASE 
    WHEN Age < 18 THEN '<18'
    WHEN Age BETWEEN 18 AND 34 THEN '18-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 59 THEN '45-59'
    ELSE '60+'
END;


--Identify the Age Group for the subscribers 
SELECT Age_Group, COUNT(Age_Group) AS _Count
FROM #Age_group
WHERE AGE < 100
GROUP BY Age_Group


--Compute the median Age for subcribers
SELECT AVG(Age) as Avg_Age
FROM #Age_group
WHERE Age <= 100 

--Drop temp table after use 
DROP TABLE #Age_group
DROP TABLE #TempTrips_2020_2023


/* Find the Trips duration for each customer types  */
--Run the #Duration_2020_2023 temp table 
SELECT Start_Time, Stop_Time, 
    CASE 
        WHEN User_Type = 'casual' THEN 'Customer'
        ELSE 'Subscriber'
    END AS User_Type2
INTO #Duration_2020_2023
FROM Trips_2020_2023;

--Compute the average trips duration with Trips_2013_2019 union #Duration_2020_2023
SELECT 
    User_Type2, 
    AVG(CAST(Trip_Duration AS FLOAT)) AS Avg_Trip_Duration
FROM
(
SELECT DATEDIFF(SECOND, Start_Time, Stop_Time) AS Trip_Duration, User_Type2
FROM #Duration_2020_2023

UNION ALL 

SELECT Trip_Duration, User_Type
FROM [dbo].[Trips_2013_2019]
) AS Combined 

GROUP BY User_Type2

--Drop temp table after use 
DROP TABLE #Duration_2020_2023

--What are the popular Bike Type by User_Type?
SELECT 
	User_Type, 
	Ride_Type, 
	COUNT(Ride_Type) as Total
FROM [dbo].[Trips_2020_2023]

WHERE User_Type is not null 

GROUP BY User_Type, Ride_Type
ORDER BY 1, 3 DESC
-----------------------------------------------------------------------------------------------
--What are the popular starting time and stop time for user type 

--Rerun the temp table
SELECT Start_Time, 
    CASE 
        WHEN User_Type = 'casual' THEN 'Customer'
        ELSE 'Subscriber'
    END AS User_Type2
INTO #TempTrips_2020_2023
FROM Trips_2020_2023;


--I layered the subqueries and aggregate the hour count by users type
SELECT
	User_Type, 
	Starting_Hr,
	COUNT (Starting_Hr) as Count_hour	
FROM (
	SELECT  
		DATEPART(HOUR,Start_Time) AS Starting_Hr,
		 User_Type

			 
	FROM 
		(SELECT Start_Time,  User_Type
		FROM [dbo].[Trips_2013_2019]

		UNION ALL 

		SELECT*
		FROM #TempTrips_2020_2023)
		AS Combined2
		) AS Combined3
GROUP BY User_Type, Starting_Hr
ORDER BY 1, 2,3 DESC



--Explore weekday and weekend patterns 
--Which is the most popular day for the user type
SELECT
	User_Type, 
	Date_name, 
	COUNT (Date_name) as Count_day			 
FROM 
	(SELECT  
		User_Type,	
		DATENAME(dw, Start_Time) as Date_name
	FROM 
		(SELECT Start_Time,  User_Type
		FROM [dbo].[Trips_2013_2019]

		UNION ALL 

		SELECT*
		FROM #TempTrips_2020_2023)
		AS Combined2
		) AS Combined3
GROUP BY User_Type, Date_name
ORDER BY 1 ,3 DESC



--Identify the busiest month of each year 
SELECT
	User_Type, 
	Year_,
	Month_,
	COUNT(Month_) as Month_Count		 
FROM 
	(SELECT  
		User_Type,	
		DATEPART(yy, Start_Time) AS Year_, 
		DATEPART(m, Start_Time) AS Month_
	FROM 
		(SELECT Start_Time,  User_Type
		FROM [dbo].[Trips_2013_2019]

		UNION ALL 

		SELECT*
		FROM #TempTrips_2020_2023)
		AS Combined2
		) AS Combined3
WHERE Year_ NOT IN (2013, 2024) -- As 2013 and 2014 dont have adequate months 
GROUP BY User_Type, Year_, Month_
ORDER BY 1, 2, 3  ASC


-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Find the most popular starting point for Casual members
SELECT
	From_Station_Name, 
	Start_cnt, 
	latitude, 
	longitude
FROM
(
SELECT 
	From_Station_Name, 
	COUNT(From_Station_Name) as Start_cnt

FROM [dbo].[Trips_2020_2023]
WHERE User_Type = 'casual'
GROUP BY From_Station_Name
) AS Combined INNER JOIN [dbo].[Station_name] ON 
	Combined.From_Station_Name = Station_name.name
ORDER BY Start_cnt DESC


-- Find the most popular ending point for Casual members
SELECT
	To_Station_Name, 
	To_cnt, 
	latitude, 
	longitude
FROM
(
SELECT 
	To_Station_Name, 
	COUNT(To_Station_Name) as To_cnt

FROM [dbo].[Trips_2020_2023]
WHERE User_Type = 'casual'
GROUP BY To_Station_Name
) AS Combined INNER JOIN [dbo].[Station_name] ON 
	Combined.To_Station_Name = Station_name.name
ORDER BY To_cnt DESC


-- Find the most popular starting point for Subscriber members
SELECT
	From_Station_Name, 
	Start_cnt, 
	latitude, 
	longitude
FROM
(
SELECT 
	From_Station_Name, 
	COUNT(From_Station_Name) as Start_cnt

FROM [dbo].[Trips_2020_2023]
WHERE User_Type = 'member'
GROUP BY From_Station_Name
) AS Combined INNER JOIN [dbo].[Station_name] ON 
	Combined.From_Station_Name = Station_name.name
ORDER BY Start_cnt DESC
	

	-- Find the most popular ending point for Subscriber members
SELECT
	To_Station_Name, 
	To_cnt, 
	latitude, 
	longitude
FROM
(
SELECT 
	To_Station_Name, 
	COUNT(To_Station_Name) as To_cnt

FROM [dbo].[Trips_2020_2023]
WHERE User_Type = 'member'
GROUP BY To_Station_Name
) AS Combined INNER JOIN [dbo].[Station_name] ON 
	Combined.To_Station_Name = Station_name.name
ORDER BY To_cnt DESC



















