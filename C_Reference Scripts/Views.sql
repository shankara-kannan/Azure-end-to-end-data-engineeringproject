----AdventureWorks_Calender View----

create view gold.calendar as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Calender/',
    FORMAT='Parquet'
) as query;

-----AdventureWorks_Customers View-----

create view gold.customer as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT='Parquet'
) as query;


------AdventureWorks_Product_Subcategories View---

create view gold.Product_Subcategories as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT='Parquet'
) as query;

---AdventureWorks_Products View----

create view gold.Products as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT='Parquet'
) as query;

---AdventureWorks_Returns View----

create view gold.returns_view as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT='Parquet'
) as query;

---AdventureWorks_Sales View----


create view gold.sales as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT='Parquet'
) as query;

---AdventureWorks_Terrorities View----


create view gold.Territories as
select * from 
openrowset(
    BULK 'https://awdatalakestorage18.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT='Parquet'
) as query;


