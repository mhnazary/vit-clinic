
-- patients table 
CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80),
    date_of_birth DATE
);

-- treatments table
CREATE TABLE treatments (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    name VARCHAR(80)
);

--medical_histories table
CREATE TABLE medical_histories (
    id SERIAL PRIMARY KEY,
    admitted_at DATE,
    patient_id INT REFERENCES patients(id),
    status VARCHAR
);

