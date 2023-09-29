
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

--Delete the species column from the animals table
ALTER TABLE animals DROP COLUMN species;


CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INTEGER
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE specializations (
    vet_id INTEGER,
    species_id INTEGER,
    PRIMARY KEY (vet_id, species_id),
    FOREIGN KEY (vet_id) REFERENCES vets (id),
    FOREIGN KEY (species_id) REFERENCES species (id)
);

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    date_of_graduation DATE
);


CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER,
    vet_id INTEGER,
    visit_date DATE,
    FOREIGN KEY (animal_id) REFERENCES animals (id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);

