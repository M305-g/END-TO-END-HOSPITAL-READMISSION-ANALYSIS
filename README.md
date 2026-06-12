# END-TO-END-HOSPITAL-READMISSION-ANALYSIS

This project analyzes hospital readmission patterns across multiple clinical conditions, patient demographics, and geographic regions using SQL for data extraction and transformation and Power BI for visualization.

## Executive Summary

This analysis identified a high burden of hospital readmissions driven primarily by patients with chronic and complex conditions. The highest readmission rates were observed among patients with Sepsis, COPD, Heart Failure, Stroke, and Kidney Disease. Readmission risk increased substantially among patients with multiple comorbidities, prolonged hospital stays, repeated previous admissions, and those discharged to skilled nursing facilities.

Regional and gender differences were relatively small, suggesting that system-level factors such as discharge planning, post-discharge follow-up, chronic disease management, and care coordination play a greater role in influencing readmissions. These findings highlight the need for targeted interventions focused on high-risk patients to improve outcomes and reduce avoidable hospital utilization.

## My Role
- Built SQL pipelines for data extraction and KPI calculation
- Designed Power BI dashboards for executive, clinical, and demographic insights
- Validated data quality (missing values, duplicates, KPI accuracy)
- Delivered strategic recommendations to reduce readmissions

## Key Insights
- Chronic conditions drive 80%+ of readmissions
- Prior admissions and comorbidity burden are the strongest predictors
- Seasonal peaks (Jan, Dec) highlight need for proactive resource planning
- Medicare patients show highest risk, requiring equity-focused interventions

## Impact
This project demonstrates my ability to translate healthcare data into actionable strategies, combining technical skills with business impact.


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

**KPIs**

**Executive KPIs**

Total Patients

Total Readmissions

Readmission Rate %

Average Length of Stay

Average Age

Average Risk Score

**Clinical KPIs**

Average Comorbidities Count

Average Medications Count

Average Previous Readmissions

**Risk KPIs**

High-Risk Patients

High-Risk Readmission Rate

Preventable Readmission Candidates

**DAX Measures**

**Total Patients**

Total Patients =
DISTINCTCOUNT(Hospital_Readmission[patient_id])

**Total Readmissions**

Total Readmissions =
SUM(Hospital_Readmission[label])

**Readmission Rate**

Readmission Rate =
DIVIDE(
    [Total Readmissions],
    [Total Patients]
)

Format in Percentage.

**Average Length of Stay**

Avg LOS =
AVERAGE(Hospital_Readmission[length_of_stay])

**Average Age**

Avg Age =
AVERAGE(Hospital_Readmission[age])

**Average Risk Score**

Avg Risk Score =
AVERAGE(Hospital_Readmission[readmission_risk_score])

**Average Comorbidities**

Avg Comorbidities =
AVERAGE(Hospital_Readmission[comorbidities_count])

**Average Previous Readmissions**

Avg Previous Readmissions =
AVERAGE(Hospital_Readmission[prev_readmissions])

**High-Risk Patients**

High Risk Patients =
CALCULATE(
    DISTINCTCOUNT(Hospital_Readmission[patient_id]),
    Hospital_Readmission[readmission_risk_score] >= 80
)

**Dashboard Overview**

The dashboard is structured into three main analytical views: an executive overview displaying overall KPIs such as total patients and readmission rate, a clinical analysis section ranking conditions by readmission risk, and a demographic and regional view comparing performance across gender and regions. Interactive filters enable dynamic exploration of the data to uncover patterns and trends in hospital readmissions

**EXECUTIVE DASHBOARD**

**1. Readmission Trend by Month**
   
Insight

Readmissions fluctuated throughout the year rather than following a steady pattern.

The highest readmission volumes were observed in January and December.

The lowest readmission levels occurred around May and November.

The sharp increase in December suggests a potential seasonal effect or increased healthcare demand at year-end.

**Possible Causes**

**January**

Patients admitted during holiday periods may delay seeking care until conditions worsen.

Increased respiratory infections during colder months.

Reduced adherence to medications and lifestyle recommendations during festive periods.

**December**

Seasonal illnesses such as influenza and respiratory infections.

Limited outpatient availability due to holidays.

Patients postponing routine care until conditions become severe.

**Mid-year decline**

Better disease stability during certain periods.

Reduced incidence of seasonal infections.

Improved access to routine outpatient services.

**Recommendations**

Increase staffing and resource allocation during peak months.

Implement seasonal disease prevention campaigns.

Strengthen follow-up for high-risk patients before holiday periods.

Promote influenza vaccination and chronic disease monitoring before winter months.

**Strategic Recommendation**

Develop a seasonal preparedness plan that anticipates periods of increased readmission demand and allocates resources proactively.

**2. Readmission by Region**

Central: 79.05%

North: 78.86%

East: 77.24%

South: 76.72%

West: 75.23%

Insight

The Central region had the highest readmission rate.

The West region had the lowest rate.

However, the difference between the highest and lowest regions was only about 3.8 percentage points.

This indicates relatively consistent readmission patterns across all regions.

**Possible Causes**

Similar chronic disease burden across regions.

Standardized healthcare policies and practices.

Common challenges in discharge planning.

Limited post-discharge follow-up systems nationwide.

Similar socioeconomic barriers affecting healthcare access.

**Recommendations**
Standardize discharge and follow-up protocols across all regions.

Benchmark best practices from lower-performing regions.

Monitor regional performance continuously.

Conduct deeper analyses by diagnosis and facility type.

**Strategic Recommendation**

Since variation is minimal, healthcare leaders should implement nationwide readmission reduction initiatives rather than region-specific interventions.

**3. Readmission by Season**

Winter: Highest

Summer: Slightly lower

Spring: Similar to summer

Fall: Lowest

Insight

Winter had the highest readmission rate.

Fall recorded the lowest readmission rate.

Seasonal differences were present but relatively modest.

The pattern suggests that environmental and disease-related factors may influence hospital utilization.

**Possible Causes**

Winter

Increased respiratory infections.

Exacerbations of COPD and heart failure.

Reduced physical activity.

Greater vulnerability among elderly patients.

Summer

Dehydration-related complications.

Heat-related worsening of chronic conditions.

Better access to outdoor activities and healthcare.

Spring/Fall

Fewer seasonal infections.

Improved disease stability.

Lower healthcare demand.

**Recommendations**

Intensify chronic disease monitoring before winter.

Promote vaccination campaigns.

Educate patients on seasonal self-management.

Increase outpatient capacity during high-risk seasons.

**Strategic Recommendation**

Introduce seasonal risk management strategies, focusing preventive efforts before winter when readmission risk is greatest.

**Strategic Recommendation**

Healthcare organizations should establish an integrated readmission reduction program that combines standardized discharge processes, early post-discharge follow-up, chronic disease management, seasonal preparedness planning, and continuous performance monitoring across all regions to improve patient outcomes and reduce preventable hospital utilization.

**PATIENT AND CLINICAL FACTORS DASHBOARD**

**1. Readmission by Gender**

Male: 47.29%

Female: 52.71%

Insight

Female patients accounted for a slightly larger proportion of readmissions than male patients

**Possible Causes**

Females may have higher healthcare utilization and are generally more likely to seek medical care.

Higher prevalence of certain chronic conditions among women in the dataset.

Women often survive longer and therefore may accumulate multiple chronic conditions.

Differences in caregiving responsibilities may delay self-care and follow-up attendance.

The difference may reflect the gender distribution of the admitted population rather than a true increase in risk.

**Recommendations**

Monitor readmission trends separately for males and females.

Strengthen patient education and discharge counselling for both groups.

Identify gender-specific barriers to follow-up care.

Conduct further analysis adjusted for age and diagnosis.

**Strategic Recommendation**

Future analyses should explore whether gender differences persist after controlling for age, disease severity, and comorbidities to support targeted interventions.

**2. Readmission by Diagnosis**

Insight

Highest Readmission Risk Conditions

Sepsis: 86.92%

COPD: 86.87%

Heart Failure: 85.86%

Stroke: 85.28%

Kidney Disease: 83.29%

Moderate Readmission Risk Conditions

Pneumonia: 73.88%

Appendicitis: 71.16%

Diabetes Mellitus: 70.54%

Fracture: 70.28%

Hypertension: 69.94%

Influenza: 68.67%

Overall Insight

Conditions requiring long-term management and intensive monitoring had the highest readmission rates.

Acute and more treatable conditions demonstrated comparatively lower readmission rates.

**Possible Causes**

**Sepsis (86.92%)**

Persistent infection.

Antibiotic resistance.

Organ dysfunction after discharge.

Incomplete recovery.

**COPD (86.87%)**

Smoking continuation.

Respiratory infections.

Incorrect inhaler use.

Poor adherence to treatment.

**Heart Failure (85.86%)**

Fluid overload.

Medication non-adherence.

Excessive sodium intake.

Disease progression.

**Stroke (85.28%)**

Neurological disability.

Limited rehabilitation.

Poor caregiver support.

Recurrent vascular events.

**Kidney Disease (83.29%)**

Disease progression.

Dialysis-related complications.

Multiple comorbidities.

Electrolyte imbalance.

**Pneumonia (73.88%)**

Incomplete treatment.

Reinfection.

Advanced age.

**Appendicitis (71.16%)**

Surgical complications.

Postoperative infection.

Delayed recovery.

**Diabetes Mellitus (70.54%)**

Poor glycemic control.

Medication non-adherence.

Lifestyle challenges.

**Fracture (70.28%)**

Postoperative complications.

Falls.

Limited rehabilitation.

**Hypertension (69.94%)**

Poor blood pressure control.

Irregular medication use.

**Influenza (68.67%)**

Secondary infections.

Elderly vulnerability.

**Recommendations**

Develop disease-specific discharge pathways.

Prioritize high-risk diagnoses for intensive follow-up.

Implement multidisciplinary chronic disease clinics.

Improve patient education regarding symptom recognition.

**Strategic Recommendation**

Hospitals should establish targeted readmission reduction programs focusing on sepsis, COPD, heart failure, stroke, and kidney disease, as these diagnoses contribute disproportionately to readmission burden.

**3. Readmission by Treatment Type**

Conservative: 81.78%

Medical: 76.90%

Surgical: 76.81%

Interventional: 76.67%

Insight

Patients managed conservatively experienced the highest readmission rates.

Surgical, medical, and interventional treatments demonstrated relatively similar outcomes.

**Possible Causes**

**Conservative Treatment**

May represent patients unsuitable for surgery due to severe illness.

Greater burden of chronic diseases.

Symptom management rather than definitive treatment.

Higher likelihood of disease recurrence.

**Surgical Treatment**

Postoperative complications.

Infection.

Poor wound healing.

**Medical Treatment**

Medication adherence issues.

Progressive disease.

Need for ongoing monitoring.

**Interventional Treatment**

Procedure-related complications.

Need for staged interventions.

Disease recurrence.

**Recommendations**

Strengthen monitoring of patients receiving conservative management.

Review whether conservative treatment patients require more intensive follow-up.

Enhance discharge education for all treatment groups.

Schedule early post-discharge reviews.

**Strategic Recommendation**

Healthcare systems should adopt risk-based transitional care models, prioritizing patients undergoing conservative treatment because they may represent clinically complex populations with higher vulnerability to readmission.

**RISK AND ACTIONABLE DASHBOARD**

1. Previous Readmissions vs Current Readmission
   
0	27.79%

1	69.50%

2	90.42%

3	95.30%

4	96.20%

5	100.00%

Insight

Readmission risk increased dramatically as the number of previous readmissions increased.

Patients with no previous readmissions had the lowest risk (27.79%).

After just one previous readmission, the risk more than doubled.

Patients with 4–5 previous readmissions had an extremely high likelihood of returning to the hospital.

Previous readmission history appears to be one of the strongest predictors of future readmission.

**Possible Causes**

Poor control of chronic illnesses.

Persistent underlying health problems.

Multiple comorbidities.

Failure of previous discharge interventions.

Medication non-adherence.

Limited access to outpatient follow-up.

Social challenges affecting self-management.

Functional decline from repeated hospitalizations.

**Recommendations**

Flag patients with ≥1 previous readmission as high-risk.

Implement intensive case management.

Schedule follow-up appointments before discharge.

Conduct follow-up calls within 48–72 hours.

Assign care coordinators to patients with repeated admissions.

**Strategic Recommendation**

Develop predictive models that automatically classify patients with prior readmissions as high priority for transitional care interventions.

**2. Discharge Disposition (Risk Score Distribution)**
   
Discharge Destination	Readmission Rate

Skilled Nursing Facility	92.80%

Home Health	75.85%

Home	34.07%

Rehabilitation	34.00%

Insight

Patients discharged to skilled nursing facilities experienced the highest readmission rates.

Home health patients also demonstrated elevated readmission risk.

Patients discharged home or to rehabilitation centers had substantially lower readmission rates.

**Possible Causes**

**Skilled Nursing Facility**

Patients are often older and medically complex.

Greater dependency and frailty.

Multiple chronic illnesses.

Higher disease severity.

**Home Health**

Ongoing healthcare needs requiring nursing support.

Limited caregiver availability.

Challenges adhering to treatment plans.

**Home**

Better functional status.

Lower illness severity.

Greater independence.

**Rehabilitation**

Structured therapy and monitoring.

Improved recovery support.

Better transition planning.

**Recommendations**

Enhance communication between hospitals and skilled nursing facilities.

Develop shared care plans.

Increase monitoring during the first weeks after discharge.

Improve staff education in post-acute settings.

**Strategic Recommendation**

Establish integrated care pathways between hospitals and post-acute care facilities to reduce preventable readmissions among medically complex patients.

**3. Comorbidity Burden**
   
Number of Comorbidities	Readmission Rate

2	38.95%

4	75.05%

6	96.18%

8	97.14%

10	100.00%

Insight

Readmission rates increased substantially with increasing comorbidity burden.

Patients with six or more comorbidities experienced extremely high readmission rates.

Those with ten comorbidities were universally readmitted.

Comorbidity burden is one of the strongest drivers of hospital utilization.

**Possible Causes**

Complex treatment regimens.

Polypharmacy and drug interactions.

Multiple specialist appointments.

Difficulty coordinating care.

Greater physiological vulnerability.

Higher likelihood of complications.

Functional limitations.

**Recommendations**

Prioritize patients with multiple comorbidities for enhanced care management.

Use multidisciplinary teams.

Perform comprehensive medication reviews.

Develop individualized care plans.

Coordinate specialist follow-up.

**Strategic Recommendation**

Implement integrated chronic disease management programs targeting patients with multiple coexisting conditions.

**4. Insurance Type**
   
Insurance Type	Readmission Rate

Medicare	95.36%

Uninsured	76.11%

Medicaid	70.59%

Private	66.00%

Insight

Medicare beneficiaries had the highest readmission rates.

Privately insured patients had the lowest rates.

Uninsured and Medicaid patients experienced intermediate but still elevated readmission levels.

Insurance status appears to influence healthcare utilization patterns.

**Possible Causes**

**Medicare**

Medicare populations are predominantly older adults.

Higher prevalence of chronic diseases.

Greater illness severity.

Multiple comorbidities.

Increased healthcare needs.

**Uninsured**

Delayed healthcare seeking.

Limited access to preventive services.

Financial barriers to medication adherence.

Reduced outpatient follow-up.

**Medicaid**

Greater socioeconomic vulnerability.

Transportation barriers.

Higher burden of chronic illness.

Limited health literacy.

**Private Insurance**

Better access to outpatient care.

Greater continuity of care.

Improved access to medications and specialists.

**Recommendations**

Provide targeted discharge support for Medicare beneficiaries.

Strengthen care coordination for uninsured and Medicaid patients.

Link vulnerable patients with financial assistance programs.

Improve access to community-based follow-up services.

**Strategic Recommendation**

Healthcare organizations should adopt equity-focused readmission reduction strategies that address both clinical complexity and socioeconomic barriers affecting different insurance groups.

## Conclusion

Hospital readmissions were strongly associated with disease severity, multimorbidity, prior hospitalization history, and post-discharge care needs. Patients with chronic and high-acuity conditions represented the greatest readmission burden, emphasizing the importance of risk-based care strategies. Strengthening discharge planning, enhancing follow-up care, improving chronic disease management, and implementing predictive approaches for identifying high-risk patients may help reduce preventable readmissions and optimize healthcare resources.



**AUTHOR**
MWANAHAMISI JUMA


