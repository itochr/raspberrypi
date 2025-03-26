SELECT
    DATE(timestamp) AS Date,
    MAX(temp_c) AS High_Temp_C,
    MIN(temp_c) AS Low_Temp_C,
    MAX(temp_f) AS High_Temp_F,
    MIN(temp_f) AS Low_Temp_F,
FROM `pacific-ethos-452022-u8.raspberrypi.raspberry_pi_sense_hat_temperaturedata_tblyfNWl1E5P4J7qx`
GROUP BY Date