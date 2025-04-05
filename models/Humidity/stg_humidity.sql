SELECT id, timestamp, Humidity
FROM {{ ref('Total_Data') }}