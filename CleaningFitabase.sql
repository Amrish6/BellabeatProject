CREATE TABLE [bellabeat_project].[dbo].[Daily_Activity_WeekDay_Cleaned]
(Id FLOAT, ActivityDate DATE, TotalSteps FLOAT, TotalDistance FLOAT, LoggedActiveDistance FLOAT,VeryActiveDistance FLOAT, ModeratelyActiveDistance FLOAT, 
	LightlyActiveDistance FLOAT, SedentaryActiveDistance FLOAT, VeryActiveMinutes FLOAT, FairlyActiveMinutes FLOAT, LightlyActiveMinutes FLOAT, SedentaryActiveMinutes FLOAT,
	Calories FLOAT, [WeekDay] nvarchar(50))

INSERT INTO [bellabeat_project].[dbo].[Daily_Activity_WeekDay_Cleaned]
	(Id, ActivityDate, TotalSteps, TotalDistance, LoggedActiveDistance,VeryActiveDistance, ModeratelyActiveDistance, 
	LightlyActiveDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryActiveMinutes,
	Calories, [WeekDay])

SELECT 
	Id,
	CAST(ActivityDate AS DATE) AS ActivityDate,
	CAST(TotalSteps AS FLOAT) AS TotalSteps,
	CAST(TotalDistance AS FLOAT) AS TotalDistance,
	CAST(LoggedActiveDistance AS FLOAT) AS LoggedActiveDistance,
	CAST(VeryActiveDistance AS FLOAT) AS VeryActiveDistance,
	CAST(ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
	CAST(LightlyActiveDistance AS FLOAT) AS LightActiveDistance,
	CAST(SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
	CAST(VeryActiveMinutes AS FLOAT) AS VeryActiveMinutes,
	CAST(FairlyActiveMinutes AS FLOAT) AS FairlyActiveMinutes,
	CAST(LightlyActiveMinutes AS FLOAT) AS LightlyActiveMinutes,
	CAST(SedentaryActiveMinutes AS FLOAT) AS SedentaryActiveMinutes,
	CAST(Calories AS FLOAT) AS Calories,
	[WeekDay]

FROM [bellabeat_project].[dbo].[Daily_Activity_WeekDay]