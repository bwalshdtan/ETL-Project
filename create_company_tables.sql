CREATE TABLE customer (
    customer_id VARCHAR NOT NULL,
    home_store VARCHAR NOT NULL,
    customer_first_name VARCHAR NOT NULL,
    customer_email VARCHAR NOT NULL,
    customer_since VARCHAR NOT NULL,
    loyalty_card_number VARCHAR NOT NULL,
    birthdate VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    birth_year VARCHAR NOT NULL
);

CREATE TABLE dates (
    transaction_date VARCHAR NOT NULL,
    date_id VARCHAR NOT NULL,
    week_id VARCHAR NOT NULL,
    week_desc VARCHAR NOT NULL,
    month_id VARCHAR NOT NULL,
    month_name VARCHAR NOT NULL,
    quarter_id VARCHAR NOT NULL,
    quarter_name VARCHAR NOT NULL,
    year_id VARCHAR NOT NULL
);

CREATE TABLE generations (
    birth_year VARCHAR NOT NULL,
    generation VARCHAR NOT NULL
);

CREATE TABLE pastry_inventory (
    sales_outlet_id VARCHAR NOT NULL,
    transaction_date VARCHAR NOT NULL,
    product_id VARCHAR NOT NULL,
    start_of_day VARCHAR NOT NULL,
    quantity_sold VARCHAR NOT NULL,
    waste VARCHAR NOT NULL,
    %_waste VARCHAR NOT NULL
);

CREATE TABLE product (
    product_id VARCHAR NOT NULL,
    product_group VARCHAR NOT NULL,
    product_category VARCHAR NOT NULL,
    product_type VARCHAR NOT NULL,
    product VARCHAR NOT NULL,
    product_description VARCHAR NOT NULL,
    unit_of_measure VARCHAR NOT NULL,
    current_wholesale_price VARCHAR NOT NULL,
    tax_exempt_yn VARCHAR NOT NULL,
    promo_yn VARCHAR NOT NULL,
    new_product_yn VARCHAR NOT NULL
);

CREATE TABLE sales_targets (
    sales_outlet_id VARCHAR NOT NULL,
    year_month VARCHAR NOT NULL,
    beans_goal VARCHAR NOT NULL,
    beverage_goal VARCHAR NOT NULL,
    food_goal VARCHAR NOT NULL,
    merchandise_goal VARCHAR NOT NULL,
    total_goal VARCHAR NOT NULL
);

CREATE TABLE sales_outlets (
    sales_outlet_id VARCHAR NOT NULL,
    sales_outlet_type VARCHAR NOT NULL,
    store_sqaure_feet VARCHAR NOT NULL,
    store_address VARCHAR NOT NULL,
    store_city VARCHAR NOT NULL,
    store_state_province VARCHAR NOT NULL,
    store_telephone VARCHAR NOT NULL,
    store_postal_code VARCHAR NOT NULL,
    store_longitude VARCHAR NOT NULL,
    store_latitude VARCHAR NOT NULL,
    manager VARCHAR NOT NULL,
    neighborhood VARCHAR NOT NULL
);

CREATE TABLE staff (
    staff_id VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    position VARCHAR NOT NULL,
    start_date VARCHAR NOT NULL,
    location VARCHAR NOT NULL
);