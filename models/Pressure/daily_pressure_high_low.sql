SELECT
    DATE(timestamp) AS Date,
    MAX(pressure) AS High_Pressure,
    MIN(pressure) AS Low_Pressure,
FROM {{ ref('stg_raspberrypi_data') }}
GROUP BY Date