SELECT
    DATE(timestamp) AS date,
    MAX(humidity) AS high_humidity, 
    MIN(humidity) AS low_humidity
FROM {{ ref('stg_raspberrypi_data') }}
GROUP BY date