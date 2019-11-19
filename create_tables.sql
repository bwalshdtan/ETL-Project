CREATE TABLE age (
    age_id VARCHAR NOT NULL PRIMARY KEY,
    under_5 INTEGER NOT NULL,
    under_18 INTEGER NOT NULL,
    over_21 INTEGER NOT NULL,
    over_55 INTEGER NOT NULL,
    over_60 INTEGER NOT NULL,
    over_65 INTEGER NOT NULL
);

CREATE TABLE race (
    race_id VARCHAR NOT NULL PRIMARY KEY,
    white VARCHAR NOT NULL,
    black VARCHAR NOT NULL,
    native_american VARCHAR NOT NULL,
    indian VARCHAR NOT NULL,
    chinese VARCHAR NOT NULL,
    filipino VARCHAR NOT NULL,
    japanese VARCHAR NOT NULL,
    korean VARCHAR NOT NULL,
    vietmanese VARCHAR NOT NULL,
    other_Asian VARCHAR NOT NULL,
    hawaiian VARCHAR NOT NULL,
    guamian  VARCHAR NOT NULL,
    samoan VARCHAR NOT NULL,
    pacific_islander VARCHAR NOT NULL,
    other VARCHAR NOT NULL
);

CREATE TABLE sex (
    sex_id VARCHAR NOT NULL PRIMARY KEY,
    male VARCHAR,
    female VARCHAR
);

CREATE TABLE zip (
    zip_id VARCHAR NOT NULL PRIMARY KEY,
    zip INTEGER NOT NULL
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
    size INTEGER NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE age_zip (
	age_id VARCHAR REFERENCES age(age_id),
    zip_id VARCHAR REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL
);

CREATE TABLE race_zip (
    race_id VARCHAR REFERENCES race(race_id),
	zip_id VARCHAR REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL
);

CREATE TABLE sex_zip (
	sex_id VARCHAR REFERENCES sex(sex_id),
	zip_id VARCHAR REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL
);

CREATE TABLE store_sales (
	store_id VARCHAR REFERENCES store(store_id),
	product_id VARCHAR REFERENCES product(product_id),
    units FLOAT NOT NULL,
	zip_id VARCHAR REFERENCES zip(zip_id)
);

