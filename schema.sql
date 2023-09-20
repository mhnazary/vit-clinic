CREATE DATABASE vit_clinic;
CREATE TABLE animals(
    id PRIMARY KEY INTEGER,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(5,2),
);
-- Update the schema

LATER TABLE animals ADD COLUMN species VARCHAR(50);