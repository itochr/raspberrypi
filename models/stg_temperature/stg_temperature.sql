SELECT id, timestamp, Temp_C, Temp_F
FROM {{ ref('Total_Data') }}