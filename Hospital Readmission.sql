SELECT * 
FROM sakila.hospital_readmission_datasets;

SELECT COUNT(*) AS total_records
FROM sakila.hospital_readmission_datasets;

SELECT COUNT(*) AS total_columns
FROM sakila.hospital_readmission_datasets;

SELECT
    SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS patient_id_nulls,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_nulls,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender_nulls,
    SUM(CASE WHEN primary_diagnosis IS NULL THEN 1 ELSE 0 END) AS diagnosis_nulls
FROM sakila.hospital_readmission_datasets;
; 

SELECT
    patient_id,
    COUNT(*) AS duplicate_count
FROM sakila.hospital_readmission_datasets
GROUP BY patient_id
HAVING COUNT(*) > 1;

SELECT DISTINCT gender
FROM sakila.hospital_readmission_datasets;

SELECT DISTINCT treatment_type
FROM hospital_readmission;

SELECT DISTINCT insurance_type
FROM sakila.hospital_readmission_datasets;

SELECT *
FROM sakila.hospital_readmission_datasets
WHERE age < 0
   OR age > 100;
   
SELECT *
FROM sakila.hospital_readmission_datasets
WHERE length_of_stay < 0; 

SELECT *
FROM sakila.hospital_readmission_datasets
WHERE comorbidities_count < 0;

SELECT
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age,
    MIN(length_of_stay) AS min_stay,
    MAX(length_of_stay) AS max_stay,
    AVG(length_of_stay) AS avg_stay
FROM sakila.hospital_readmission_datasets; 

SELECT
    ROUND(100.0 * SUM(label) / COUNT(*),2) AS readmission_rate
FROM sakila.hospital_readmission_datasets;


SELECT
    gender,
    COUNT(*) AS patients,
    SUM(label) AS readmitted,
    ROUND(100.0 * SUM(label) / COUNT(*),2) AS readmission_rate
FROM sakila.hospital_readmission_datasets
GROUP BY gender;

SELECT
    primary_diagnosis,
    COUNT(*) AS patients,
    SUM(label) AS readmitted,
    ROUND(100.0 * SUM(label) / COUNT(*),2) AS readmission_rate
FROM sakila.hospital_readmission_datasets
GROUP BY primary_diagnosis
ORDER BY readmission_rate DESC;

WITH high_risk AS (
    SELECT *
    FROM sakila.hospital_readmission_datasets
    WHERE readmission_risk_score >= 80
)
SELECT
    COUNT(*) AS high_risk_patients,
    SUM(label) AS actual_readmissions
FROM high_risk;

WITH readmission_groups AS (
    SELECT
        label,
        AVG(length_of_stay) AS avg_los
    FROM sakila.hospital_readmission_datasets
    GROUP BY label
)
SELECT *
FROM readmission_groups;

WITH diagnosis_rates AS (
    SELECT
        primary_diagnosis,
        ROUND(100.0 * SUM(label) / COUNT(*),2) AS readmission_rate
    FROM  sakila.hospital_readmission_datasets
    GROUP BY primary_diagnosis
)
SELECT *,
       RANK() OVER(ORDER BY readmission_rate DESC) AS diagnosis_rank
FROM diagnosis_rates;

WITH region_rates AS (
    SELECT
        region,
        ROUND(100.0 * SUM(label) / COUNT(*),2) AS readmission_rate
    FROM sakila.hospital_readmission_datasets
    GROUP BY region
)
SELECT *,
       DENSE_RANK() OVER(ORDER BY readmission_rate DESC) AS region_rank
FROM region_rates;

SELECT
    admission_date,
    SUM(label) AS daily_readmissions,
    SUM(SUM(label)) OVER(
        ORDER BY admission_date
    ) AS running_total
FROM sakila.hospital_readmission_datasets
GROUP BY admission_date;

SELECT
    patient_id,
    primary_diagnosis,
    readmission_risk_score,
    ROW_NUMBER() OVER(
        PARTITION BY primary_diagnosis
        ORDER BY readmission_risk_score DESC
    ) AS patient_rank
FROM sakila.hospital_readmission_datasets;

SELECT
    patient_id,
    admission_date,
    prev_readmissions,
    LAG(prev_readmissions) OVER(
        ORDER BY admission_date
    ) AS previous_patient_readmission_count
FROM sakila.hospital_readmission_datasets;