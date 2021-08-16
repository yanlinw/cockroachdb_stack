CREATE DATABASE IF NOT EXISTS example;

USE example;

CREATE TABLE IF NOT EXISTS drivers (
    id UUID DEFAULT gen_random_uuid(),
    city STRING NOT NULL,
    name STRING,
    dl STRING UNIQUE,
    address STRING,
    CONSTRAINT primary_key PRIMARY KEY (city ASC, id ASC)
);


UPSERT INTO drivers (city, name) VALUES ('new york', 'Catherine Nelson');