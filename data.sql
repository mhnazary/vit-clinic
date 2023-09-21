INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
('Agumon', '2020-02-03', 0, true, 10.23),
('Gabumon', '2018-11-15', 2, true, 8),
('Pikachu', '2021-01-07', 1, false, 15.04),
('Devimon', '2017-05-12', 5, true, 11);

-- start Update
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
('charmander', '2020-2-8', 0, FALSE, -11);
('plantmon', '2021-11-15', 2, TRUE, -5.7);
('squirtle', '1993-04-02', 3, FALSE, -12.13);
('angemon', '2005-06-12', 1, TRUE, -45);
('boarmon', '2005-06-07', 7, TRUE, 20.4);
('blossom', '1998-10-13', 3, TRUE, 17);
('Ditto', '2022-05-14', 4, TRUE, 22);
-- end update

-- insert data into owners table
INSERT INTO onwers (id,full_name, age) VALUES
    ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);

-- insert data into species table
INSERT INTO species (id,name) VALUES
    ('Pokemon'),
    ('Digimon');

-- update animals table
