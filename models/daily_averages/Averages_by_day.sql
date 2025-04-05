SELECT 
  DATE(TIMESTAMP) AS date, 
  ROUND(AVG(temp_c),2) AS avg_temp_c, 
  ROUND(AVG(temp_c),2) AS avg_temp_f, 
  ROUND(AVG(pressure),2) AS avg_pressure, 
  ROUND(AVG(humidity),2) AS avg_humidity
FROM {{ ref('stg_raspberrypi_data') }} 
GROUP BY Date