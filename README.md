# Raspberry Pi Data Pipeline for Environmental Monitoring

**Project Overview**:
This project leverages a **Raspberry Pi** computer with a **Sense HAT** attachment to collect environmental data such as temperature, humidity, and pressure every 30 minutes. The data is then stored in **AirTable** and transferred to **Google Cloud BigQuery** using **Airbyte** for storage and analysis. **dbt** (Data Build Tool) is used alongside BigQuery to transform the raw data into a more structured format, making it easier to analyze. The goal of the project is to create an efficient and automated pipeline for collecting, storing, and transforming environmental data for further analysis or visualization. Future improvements include integrating data visualization tools like Looker or Tableau to provide interactive dashboards and real-time data insights.

## **Technologies Used**
- **Raspberry Pi**: The core hardware for this project.
- **Sense HAT**: A hardware attachment used to collect environmental data (temperature, humidity, and pressure).
- **Programming Languages**: **Python** (for data collection and processing), **SQL** (for querying and transforming data).
- **Cloud/Services**: **AirTable** (for data storage), **Airbyte** (for data integration), **Google Cloud BigQuery** (for data warehousing), **dbt** (for data transformation).

## **How it Works**
1. Set up the Raspberry Pi: Install and configure the Raspberry Pi with the Sense HAT attachment, ensuring it’s properly connected to collect environmental data.
2. Collect Sensor Data: Configure the Sense HAT to record temperature, humidity, and pressure readings at regular intervals, every 30 minutes.
3. Store Data in AirTable: The collected data is automatically loaded into a table in AirTable, providing a simple, accessible interface for tracking and managing the data.
4. Transfer Data to BigQuery: Using Airbyte, the data from AirTable is transferred to a BigQuery data warehouse for scalable storage and analysis.
5. Transform Data with dbt: dbt (Data Build Tool) runs alongside BigQuery to transform the raw data into a more structured, analysis-ready format. *(In progress)*


## **Future Improvements**
1. Data Visualization: Integrate tools like Looker or Tableau to create interactive dashboards for better insights and visualization of temperature, humidity, and pressure trends over time.
      #### Looker Studio Dashboard
      [View the dashboard here](https://lookerstudio.google.com/reporting/b0eff32a-30a5-472f-9bbd-e0d09682c74a)
3. Optimized ETL Pipeline: Improve the ETL process for better performance, possibly incorporating tools like Apache Airflow or Kafka for scheduling and handling larger datasets.
4. Advanced Analytics: Implement machine learning models to predict future environmental conditions based on historical data and trends, potentially integrating predictive insights into the dashboard.
