SELECT
    DATE(timestamp) AS date,
    MAX(pressure) AS high_pressure,
    MIN(pressure) AS low_pressure,
FROM {{ ref('stg_raspberrypi_data') }}
GROUP BY date