product
-
prodcut_id INT PK FK >-< store_sales.product_id
product_number VARCHAR
description VARCHAR
pack INT
size INT
price INT

store
-
store_id INT PK FK >-< store_sales.store_id
store_name VARCHAR
address VARCHAR
city VARCHAR
state VARCHAR
zip INT

store_sales
-
store_id INT FK
product_id INT FK
units INT
zip INT FK >-< age_zip.zip

age
-
age_id FK -< age_zip.age_id
age_group

sex
-
sex_id
sex_group

race
-
race_id
race_group

age_zip
-
age_id INT FK
zip INT
qty_pct INT

race_zip
-
race_id INT FK >- race.race_id
zip INT FK >- store_sales.zip
qty_pct INT

sex_zip
-
sex_id INT FK >- sex.sex_id
zip INT FK >- store_sales.zip
qty_pct INT