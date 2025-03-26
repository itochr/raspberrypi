SELECT 
  DATE(TIMESTAMP) AS Date, 
  ROUND(AVG(temp_c),2) AS AVG_TEMP_C, 
  ROUND(AVG(temp_c),2) AS AVG_TEMP_F, 
  ROUND(AVG(pressure),2) AS AVG_PRESSURE, 
  ROUND(AVG(humidity),2) AS AVG_HUMIDITY
FROM {{ ref('Total_Data') }} 
GROUP BY Date