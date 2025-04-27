Hi everyone!
I’m Shankar, working as an Azure Data Engineer.
This project showcasing a Multi-Hop Architecture (also known as the Medallion Architecture) involving Bronze, Silver, and Gold layers.
And demonstrates how real-time data ingestion, transformation, and analytics are implemented using Azure services.

---

Layers

Bronze Layer:

Ingest real-time data (HTTP).
Use Azure Data Factory.
Store raw CSVs in Azure Data Lake.


Silver Layer:

Transform data using Databricks.
Connect via Service Principal.
Store clean data as Parquet files.


Gold Layer:

Use Azure Synapse and Power BI.
Create views and Delta tables.
Deliver data for reports and dashboards.



---

Technology Used:

Azure Data Factory

Azure Data Lake

Azure Databricks

Azure Synapse

Power BI 

Service Principal Authentication 
