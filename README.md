# ETL-Project

This project’s goal is to Extract, Transform, and Load data into a database of our creation. 
We chose to create a database for a small natural food company that can help analyze their sales to California stores and compare the market demographics of the stores in order to better target their marketing efforts in the state. 

## Extract
We were able to download 2 CSV files from the 2010 US Census that contained demographic data of California zip codes, broken down by gender, race and age group. 

We also had a CSV file containing sales data of the food company to stores across the country.

## Transform
Using Pandas we were able to transform the data in the CSV files to Data Frames to create the 9 database tables as found in our Entity Relationship Diagram.

We defined the demographic breakdowns within the age, race, and sex tables. The product and store tables defined the possible sales for the company. The store sales table shows the number of units of products sold to each store and can be matched to the demographics of the store zip code through the demographic junction tables.

## Load
Using SQLAlchemy we were able to load our tables into a relational database, as managed by PostgreSQL. We chose a relational database in order to best be able to analyze the data through join queries in the future for the company. All of the data was also structured very clearly, therefore a non-relational database was not needed. 

## Conclusion
This database will be very useful and easy to use for the company’s analyst to use and share the results with the marketing team. 
