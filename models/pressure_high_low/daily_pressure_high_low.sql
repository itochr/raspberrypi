SELECT
    DATE(timestamp) AS Date,
    MAX(pressure) AS High_Pressure,
    MIN(pressure) AS Low_Pressure,
FROM `pacific-ethos-452022-u8.raspberrypi.raspberry_pi_sense_hat_temperaturedata_tblyfNWl1E5P4J7qx`
GROUP BY Date