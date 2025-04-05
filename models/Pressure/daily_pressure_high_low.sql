SELECT
    DATE(timestamp) AS Date,
    MAX(pressure) AS high_pressure,
    MIN(pressure) AS low_pressure,
FROM {{ ref('stg_raspberrypi_data') }}
GROUP BY Date