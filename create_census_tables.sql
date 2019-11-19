CREATE TABLE age (
    age_id VARCHAR NOT NULL PRIMARY KEY,
    under_5 INTEGER NOT NULL,
    under_18 INTEGER NOT NULL,
    21_and_over INTEGER NOT NULL,
    55_and_over INTEGER NOT NULL,
    60_and_over INTEGER NOT NULL,
    65_and_over INTEGER NOT NULL
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

CREATE TABLE age_zip (
    FOREIGN KEY (age_id) REFERENCES age(age_id),
    FOREIGN KEY (zip_id) REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL,
);

CREATE TABLE race_zip (
    FOREIGN KEY (race_id) REFERENCES race(race_id),
    FOREIGN KEY (zip_id) REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL,
);

CREATE TABLE sex_zip (
    FOREIGN KEY (sex_id) REFERENCES sex(sex_id),
    FOREIGN KEY (zip_id) REFERENCES zip(zip_id),
    qty_pct VARCHAR NOT NULL
);

CREATE TABLE zip (
    zip_id VARCHAR NOT NULL PRIMARY KEY,
    zip INTEGER NOT NULL
);

CREATE TABLE store_sales (
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    units INTEGER NOT NULL,
    zip_id VARCHAR NOT NULL FOREIGN KEY
);

CREATE TABLE product (
    product_id VARCHAR NOT NULL PRIMARY KEY,
    product_number INTEGER NOT NULL,
    description VARCHAR NOT NULL
    pack INTEGER NOT NULL,
    size INTEGER NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE store (
    store_id VARCHAR NOT NULL PRIMARY KEY,
    store_name VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    zip VARCHAR NOT NULL
);