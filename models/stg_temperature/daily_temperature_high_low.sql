SELECT
    DATE(timestamp) AS Date,
    MAX(Temp_C) AS High_Temp_C,
    MIN(Temp_C) AS Low_Temp_C,
    MAX(Temp_F) AS High_Temp_F,
    MIN(Temp_F) AS Low_Temp_F,
FROM {{ ref('stg_temperature') }}
GROUP BY Date