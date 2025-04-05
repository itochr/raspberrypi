SELECT
    DATE(timestamp) AS Date,
    MAX(temp_c) AS High_Temp_C,
    MIN(temp_c) AS Low_Temp_C,
    MAX(temp_f) AS High_Temp_F,
    MIN(temp_f) AS Low_Temp_F,
FROM {{ ref('Total_Data') }}
GROUP BY Date