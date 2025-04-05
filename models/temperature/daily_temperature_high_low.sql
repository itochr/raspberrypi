SELECT
    DATE(timestamp) AS date,
    MAX(Temp_C) AS high_temp_c,
    MIN(Temp_C) AS low_temp_c,
    MAX(Temp_F) AS high_temp_f,
    MIN(Temp_F) AS low_temp_f,
FROM {{ ref('stg_raspberrypi_data') }}
GROUP BY date