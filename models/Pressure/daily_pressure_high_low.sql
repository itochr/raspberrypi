SELECT
    DATE(timestamp) AS Date,
    MAX(pressure) AS High_Pressure,
    MIN(pressure) AS Low_Pressure,
FROM {{ ref('Total_Data') }}
GROUP BY Date