SELECT id, timestamp, Pressure
FROM {{ ref('Total_Data') }}