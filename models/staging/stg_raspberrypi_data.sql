{{
    config(
        materialized='table'
    )

}}


with Raw_Data as (
    SELECT id, timestamp, temp_c, temp_f, pressure, humidity
    FROM {{ source('bigquery', 'raspberry_pi_sense_hat_temperaturedata_tblyfNWl1E5P4J7qx') }}
    ORDER BY id
)

SELECT * FROM Raw_Data 
WHERE timestamp is NOT NULL
    AND temp_c is NOT NULL
    AND temp_f is NOT NULL
    AND pressure is NOT NULL
    AND humidity is NOT NULL