CREATE TABLE age (
    age_id VARCHAR NOT NULL PRIMARY KEY,
    age_group VARCHAR NOT NULL
);

CREATE TABLE race (
    race_id VARCHAR NOT NULL PRIMARY KEY,
    race_group VARCHAR NOT NULL
);

CREATE TABLE sex (
    sex_id VARCHAR NOT NULL PRIMARY KEY,
    sex_group VARCHAR
);

CREATE TABLE store (
    store_id VARCHAR NOT NULL PRIMARY KEY,
    store_name VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    zip VARCHAR NOT NULL
);

CREATE TABLE product (
    product_id VARCHAR NOT NULL PRIMARY KEY,
    product_number INTEGER NOT NULL,
    description VARCHAR NOT NULL,
    pack_qty INTEGER NOT NULL,
    size VARCHAR NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE age_zip (
	age_group VARCHAR REFERENCES age(age_id),
    zip VARCHAR NOT NULL,
    qty_pct VARCHAR
);

CREATE TABLE race_zip (
    race_id VARCHAR REFERENCES race(race_id),
	zip VARCHAR NOT NULL,
    qty_pct VARCHAR NOT NULL
);

CREATE TABLE sex_zip (
	sex_id VARCHAR REFERENCES sex(sex_id),
	zip VARCHAR NOT NULL,
    qty_pct VARCHAR
);

CREATE TABLE store_sales (
	store_id VARCHAR REFERENCES store(store_id),
	product_id VARCHAR REFERENCES product(product_id),
    units FLOAT NOT NULL,
	zip VARCHAR NOT NULL
);

