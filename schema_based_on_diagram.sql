
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

--invoices table
CREATE TABLE invoices (
    id SERIAL PRIMARY KEY,
    total_amount FLOAT,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id int REFERENCES medical_histories(id)
);

--invoice_items table
CREATE TABLE invoice_items (
    id SERIAL PRIMARY KEY,
    unit_price FLOAT,
    quantity INT,
    total_price FLOAT,
    invoice_id int REFERENCES invoices(id),
    treatment_id int REFERENCES treatments(id)
);

-- treatments_medical_histories table
CREATE TABLE treatments_medical_histories (
    treatment_id INT REFERENCES treatments(id),
    medical_history_id int REFERENCES medical_histories(id),
    PRIMARY KEY (treatment_id, medical_history_id)
);