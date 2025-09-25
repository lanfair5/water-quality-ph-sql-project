-- Create the table
CREATE TABLE water_quality (
    MonitoringLocationIdentifier TEXT,
    ActivityStartDate DATE,


SELECT *
FROM water_quality;

SELECT MonitoringLocationIdentifier, AVG(ResultMeasureValue) AS Avg_pH
FROM water_quality
GROUP BY MonitoringLocationIdentifier;

SELECT *
FROM water_quality
WHERE ResultMeasureValue < 6.5 OR ResultMeasureValue > 8.5;


SELECT activitystartdate, resultmeasurevalue
FROM water_quality
Order BY activitystartdate;

SELECT MonitoringLocationIdentifier, COUNT(*) AS SampleCount
FROM water_quality
GROUP BY MonitoringLocationIdentifier;


SELECT 
  MonitoringLocationIdentifier,
  ROUND(AVG(ResultMeasureValue), 2) AS Avg_pH,
  CASE 
    WHEN AVG(ResultMeasureValue) < 6.5 THEN 'Too Acidic'
    WHEN AVG(ResultMeasureValue) > 8.5 THEN 'Too Basic'
    ELSE 'Normal'
  END AS pH_Status
FROM water_quality
GROUP BY MonitoringLocationIdentifier;









