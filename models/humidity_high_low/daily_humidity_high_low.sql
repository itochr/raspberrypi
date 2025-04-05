SELECT
    DATE(timestamp) AS Date,
    MAX(humidity) AS High_Humidity, 
    MIN(humidity) AS Low_Humidity
FROM {{ ref('Total_Data') }}
GROUP BY Date