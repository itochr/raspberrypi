SELECT
    DATE(timestamp) AS Date,
    MAX(humidity) AS High_Humidity, 
    MIN(humidity) AS Low_Humidity
FROM `pacific-ethos-452022-u8.raspberrypi.raspberry_pi_sense_hat_temperaturedata_tblyfNWl1E5P4J7qx`
GROUP BY Date