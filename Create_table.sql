CREATE OR REPLACE TABLE retail_loan_applications (
    application_id VARCHAR PRIMARY KEY,
    customer_name VARCHAR,
    age INT,
    employment_type VARCHAR,
    years_at_current_job INT,
    annual_income FLOAT,
    cibil_score INT,
    existing_emi_total FLOAT,
    kyc_status VARCHAR,
    pan_aadhaar_match BOOLEAN,
    ip_address_geo_match BOOLEAN,
    application_velocity INT,
    
    -- These will be populated by our Python "Verdict Engine"
    risk_score FLOAT,
    fraud_probability FLOAT,
    decision VARCHAR
);