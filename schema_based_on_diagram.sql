
-- patients table 
CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80),
    date_of_birth DATE
);

--medical_histories table
CREATE TABLE medical_histories (
    id SERIAL PRIMARY KEY,
    admitted_at DATE,
    patient_id INT REFERENCES patients(id),
    status VARCHAR
);

-- treatments table
CREATE TABLE treatments (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    name VARCHAR(80)
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

CREATE INDEX idx_medical_histories_patient_id ON medical_histories(patient_id);
CREATE INDEX idx_invoices_medical_history_id ON invoices(medical_history_id);
CREATE INDEX idx_invoice_id ON invoice_items(invoice_id);
CREATE INDEX idx_treatment_id ON invoice_items(treatment_id);
CREATE INDEX idx_visits_treatment_id ON treatments_medical_histories(treatment_id);
CREATE INDEX idx_visits_medical_history_id ON treatments_medical_histories(medical_history_id);
