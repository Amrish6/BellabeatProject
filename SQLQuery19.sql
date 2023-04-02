---Checked for # of participants by counting number of distinct Ids in each dataset
SELECT COUNT (DISTINCT Id) AS Total_Ids 
FROM [bellabeat_project].[dbo].[Daily_Activity_Cleaned]
---First, I wanted to see how many times each of the users wore/used the FitBit tracker
SELECT Id,
COUNT(Id) AS Total_Id
FROM [bellabeat_project].[dbo].[Daily_Activity_Cleaned]
GROUP BY Id
---Next, I wanted to breakdown the users by how much they wore their FitBit Fitness Tracker. I created three user types
SELECT Id,
COUNT(Id) AS Total_Logged_Uses,
CASE
WHEN COUNT(Id) BETWEEN 25 AND 31 THEN 'Active User'
WHEN COUNT(Id) BETWEEN 15 and 24 THEN 'Moderate User'
WHEN COUNT(Id) BETWEEN 0 and 14 THEN 'Light User'
END Fitbit_Usage_Type
FROM [bellabeat_project].[dbo].[Daily_Activity_Cleaned]
GROUP BY Id