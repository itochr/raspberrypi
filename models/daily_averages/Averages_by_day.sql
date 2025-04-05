SELECT 
  DATE(TIMESTAMP) AS Date, 
  ROUND(AVG(temp_c),2) AS Avg_Temp_C, 
  ROUND(AVG(temp_c),2) AS Avg_Temp_F, 
  ROUND(AVG(pressure),2) AS Avg_Pressure, 
  ROUND(AVG(humidity),2) AS Avg_Humidity
FROM {{ ref('Total_Data') }} 
GROUP BY Date