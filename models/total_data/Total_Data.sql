{{
    config(
        materialized='table'
    )

}}


with Raw_Data as (
    SELECT id, timestamp, temp_c AS Temp_C, temp_f AS Temp_F, pressure AS Pressure, humidity AS Humidity
    FROM {{ ref('raw_raspberrypi_data') }}
    ORDER BY id
)

SELECT * FROM Raw_Data 
WHERE timestamp is NOT NULL
    AND Temp_C is NOT NULL
    AND Temp_F is NOT NULL
    AND Pressure is NOT NULL
    AND Humidity is NOT NULL