create MASTER key ENCRYPTION by PASSWORD='Shankar@1';

-- DATABASE SCOPED CREDENTIAL --
Create DATABASE SCOPED CREDENTIAL cred_shan
with 
    IDENTITY='Managed Identity'
;

---external DATA SOURCE---

create external DATA SOURCE ds_silver
with (
    LOCATION='https://awdatalakestorage18.dfs.core.windows.net/silver',
    CREDENTIAL=cred_shan
);

create external DATA SOURCE ds_gold
with (
    LOCATION='https://awdatalakestorage18.dfs.core.windows.net/gold',
    CREDENTIAL=cred_shan
);
----external file format---
create external file format parquet
with (
     FORMAT_TYPE=Parquet,
     DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
);

---external table---
create external table gold.extracts
with(
    location='sales_extracts',
    DATA_SOURCE=ds_gold,
    FILE_FORMAT=PARQUET

)
as 
select * from gold.sales;



