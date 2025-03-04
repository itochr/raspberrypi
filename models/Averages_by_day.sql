SELECT 
  DATE(TIMESTAMP) AS Date, 
  ROUND(AVG(temp_c),2) AS AVG_TEMP_C, 
  ROUND(AVG(temp_c),2) AS AVG_TEMP_F, 
  ROUND(AVG(pressure),2) AS AVG_PRESSURE, 
  ROUND(AVG(humidity),2) AS AVG_HUMIDITY
FROM `pacific-ethos-452022-u8.raspberrypi.raspberry_pi_sense_hat_temperaturedata_tblyfNWl1E5P4J7qx` 
GROUP BY Date