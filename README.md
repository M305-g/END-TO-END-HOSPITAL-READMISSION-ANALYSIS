# END-TO-END-HOSPITAL-READMISSION-ANALYSIS
This project analyzes hospital readmission patterns across multiple clinical conditions, patient demographics, and geographic regions using SQL for data extraction and transformation and Power BI for visualization.

1.  **Objective**

To analyze hospital readmission patterns across clinical conditions, patient demographics, and geographic regions in order to identify high-risk groups and underlying system inefficiencies in post-discharge care.

**Project Questions**

Why are the patients readmitted?

Which patient groups and diagnosis have highest readmission rate?

How can hospital reduce preventable readmissions

**Data Information**
The dataset used in this project contains structured hospital records focused on patient admissions and readmissions across multiple clinical conditions. It includes key variables such as patient demographics (gender, region), medical conditions, and readmission outcomes, enabling comprehensive healthcare performance analysis.

The data is organized to support aggregation at condition, gender, and regional levels, allowing calculation of key performance indicators such as readmission rates and risk classification. It is suitable for SQL-based analysis and Power BI dashboard development, providing a strong foundation for identifying high-risk conditions, evaluating demographic patterns, and assessing regional healthcare performance

**Tools & Technologies**

SQL (data extraction, aggregation, and analysis)

Power BI (dashboard development and visualization)

Excel (data validation and preprocessing

**Data Quality Checkup**
A comprehensive data quality assessment was performed covering completeness, consistency, validity, accuracy, and duplication checks. The dataset was validated for missing values, duplicate records, inconsistent categorical entries, and logical integrity of readmission variables. KPI recalculations confirmed the accuracy of derived readmission rates across clinical conditions.


📊 **Dashboard Overview**

The Power BI dashboard provides an interactive analysis of hospital readmission patterns across clinical conditions, patient demographics, and geographic regions. It is designed to support healthcare decision-making by highlighting key performance indicators and identifying high-risk areas contributing to readmissions.

The dashboard is structured into three main analytical views: an executive overview displaying overall KPIs such as total patients and readmission rate, a clinical analysis section ranking conditions by readmission risk, and a demographic and regional view comparing performance across gender and regions. Interactive filters enable dynamic exploration of the data to uncover patterns and trends in hospital readmissions


**Key Insights**

1. Overall readmission is high

Male readmission rate: 76.62%

Female readmission rate: 77.89%

This indicates that roughly 3 out of every 4 patients are being readmitted, which is clinically and operationally significant. It suggests a potential systemic issue rather than an isolated patient group problem.

2. Gender difference is minimal but consistent

Females have a ~1.27 percentage point higher readmission rate than males.

Absolute difference is small, but direction is consistent (female > male).

This implies gender alone is not a strong predictor, but may still interact with other factors (age, condition type, comorbidities, discharge quality).

3. Volume vs proportion insight

Females: 4184 patients, 3259 readmitted → higher absolute burden

Males: 3816 patients, 2924 readmitted

So the system is also dealing with more female readmissions in absolute terms, not just rate difference

**Also**

Key findings

Highest risk conditions include Sepsis (86.92%), COPD (86.87%), Heart Failure (85.86%), Stroke (85.28%), and Kidney Disease (83.29%). These conditions are predominantly chronic or high-acuity illnesses requiring continuous monitoring and structured post-discharge care.

Moderate risk conditions such as Pneumonia (73.88%), Appendicitis (71.16%), Diabetes (70.54%), Fracture (70.28%), Hypertension (69.64%), and Influenza (68.67%) still demonstrate unexpectedly high readmission rates, suggesting gaps in discharge planning and outpatient follow-up even for lower complexity cases.

Chronic diseases represent the largest contributors to readmission volume and severity, highlighting the importance of long-term disease management strategies.

**Also**

Key findings (regional performance)

Central region: 79.05% (Rank 1 – highest readmission)

North region: 78.86% (Rank 2)

East region: 77.24% (Rank 3)

South region: 76.72% (Rank 4)

West region: 75.23% (Rank 5 – lowest readmission)

Regional analysis reveals a narrow performance range in readmission rates (75.23%–79.05%), with the Central region ranking highest and the West region lowest. The minimal variation across regions suggests that readmission is driven primarily by system-level factors rather than geographic disparities, indicating a need for standardized improvement strategies across all regions.”



