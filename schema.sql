
-- Add owner_id as a foreign key referencing owners(id)
ALTER TABLE animals
ADD COLUMN owner_id INTEGER;

ALTER TABLE animals
ADD CONSTRAINT fk_owner
FOREIGN KEY (owner_id)
REFERENCES owners (id);

-- Add species_id as a foreign key referencing species(id)
ALTER TABLE animals
ADD COLUMN species_id INTEGER;

ALTER TABLE animals
ADD CONSTRAINT fk_species
FOREIGN KEY (species_id)
REFERENCES species (id);

CREATE DATABASE vit_clinic;
CREATE TABLE animals(
    id PRIMARY KEY SERIAL,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(5,2),
    owner_id INTEGER REFERENCES owners(id)
    species_id INTEGER REFERENCES species(id),
);
-- Update the schema

ALTER TABLE animals ADD COLUMN species VARCHAR(50);


CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);