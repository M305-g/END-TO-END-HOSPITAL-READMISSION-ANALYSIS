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

Identified seasonal fluctuations in hospital readmissions, with peak volumes occurring in January and December and the lowest levels observed in May and November, suggesting potential year-end healthcare demand effects.

**POSSIBLE CAUSE**

### Seasonal Readmission Patterns

Monthly readmission analysis revealed notable seasonal variation, with the highest readmission volumes occurring in January and December and the lowest levels observed in May and November. These trends may reflect fluctuations in healthcare demand, delays in seeking care during holiday periods, reduced access to outpatient services, or changes in disease patterns throughout the year.

### Potential Drivers

The elevated readmissions observed in January and December may indicate the combined effects of delayed healthcare utilization during festive periods, disruptions in routine disease management, and increased pressure on healthcare services. Conversely, lower readmission activity during mid-year may reflect more stable disease control and improved continuity of outpatient care.

### Recommendations

Hospitals should strengthen discharge planning and follow-up for high-risk patients ahead of anticipated peak periods. Seasonal preparedness strategies, including proactive patient outreach, enhanced chronic disease monitoring, and appropriate resource allocation, may help mitigate preventable readmissions and improve continuity of care.

### Strategic Implication

Healthcare organizations should incorporate seasonal trends into operational planning to anticipate periods of increased readmission demand and deploy resources proactively to support vulnerable patient populations.

**2. Readmission by Region**

Insight

Regional variation in readmission rates is minimal, ranging from 75.23% in the West to 79.05% in the Central region. The Central region records the highest burden, while the West shows the lowest. The narrow spread suggests relatively homogeneous system performance across regions rather than localized outliers.

**Possible Causes**

The limited variation is consistent with a largely standardized care delivery framework across regions. Similar clinical management pathways, discharge procedures, and chronic disease profiles may be contributing to convergence in outcomes. Inadequate post-discharge follow-up systems and shared structural barriers to continuity of care may also be influencing readmission patterns uniformly.

**Recommendations**

Strengthen national discharge and transitional care protocols with emphasis on high-risk patients. Implement standardized post-discharge follow-up systems, including scheduled check-ins and community-based monitoring. Conduct comparative audits to identify subtle operational differences between regions that may explain performance gaps. Expand stratification by diagnosis, facility level, and patient risk to refine intervention targeting.

**Strategic Implication**

The narrow inter-regional gap indicates system-wide rather than regional drivers of readmissions. Reduction efforts should therefore be designed at national level with uniform policy enforcement, complemented by targeted refinements informed by deeper clinical and operational segmentation.

**3. Readmission by Season**

Insight

Seasonal variation in readmissions is evident, with winter showing the highest rates and fall the lowest. Spring and summer remain relatively stable with only marginal differences. Overall, the seasonal effect is present but not highly pronounced, suggesting a moderate environmental influence on readmission patterns rather than a dominant driver.

**Possible Causes**

Winter-related increases are likely driven by higher incidence of respiratory infections, exacerbations of chronic conditions such as COPD and heart failure, reduced mobility, and increased vulnerability among elderly populations. Summer patterns may reflect heat-related physiological stress and dehydration-related complications, partially offset by improved access to care and increased activity levels. Spring and fall typically present more stable environmental conditions with reduced infectious disease burden, contributing to lower readmission risk.

**Recommendations**

Strengthen pre-winter preparedness through intensified chronic disease monitoring and risk stratification. Expand vaccination coverage and preventive respiratory care programs ahead of high-risk months. Reinforce patient education on seasonal self-management, particularly for chronic disease populations. Adjust outpatient and emergency service capacity to accommodate predictable seasonal fluctuations.

**Strategic Implication**

Seasonal patterns indicate predictable, preventable components of readmission risk. A structured seasonal preparedness framework integrated into chronic disease management and discharge planning can reduce avoidable admissions, particularly during winter peaks, while improving system resilience across the year.

**PATIENT AND CLINICAL FACTORS DASHBOARD**

**1. Readmission by Gender**

Insight

Female patients represent a slightly higher proportion of readmissions (52.71%) compared to males (47.29%). The difference is modest and does not suggest a strong gender-driven disparity in isolation.

**Possible Causes**
The observed pattern may reflect higher healthcare utilization among females, leading to increased detection and follow-up of conditions that can result in readmission. Differences in chronic disease prevalence, particularly conditions with higher long-term morbidity, may also contribute. Longer life expectancy in females can increase cumulative multimorbidity burden. In addition, social and caregiving roles may influence care-seeking behavior and adherence to post-discharge instructions. The distribution may also be partially confounded by baseline gender proportions in the admitted cohort rather than true risk differentials.

**Recommendations**

Disaggregate readmission analysis by gender alongside age, diagnosis, and comorbidity burden to isolate independent effects. Strengthen discharge counselling with attention to adherence and follow-up compliance for both groups. Identify and address barriers to post-discharge care that may differ by gender. Implement routine gender-stratified monitoring as part of readmission dashboards.

**Strategic Implication**

Gender alone is unlikely to be a primary driver of readmission risk. More robust conclusions require multivariable adjustment to determine whether observed differences persist after controlling for clinical and demographic confounders, enabling more precise targeting of interventions.

**2. Readmission by Diagnosis**

Insight

Readmission risk varies substantially by diagnosis, with a clear concentration among complex, chronic, and high-acuity conditions. Sepsis (86.92%), COPD (86.87%), heart failure (85.86%), stroke (85.28%), and kidney disease (83.29%) form a high-risk cluster. In contrast, conditions such as influenza (68.67%), hypertension (69.94%), and fracture (70.28%) demonstrate comparatively lower readmission rates. The pattern indicates that disease complexity, chronicity, and post-discharge care dependency are key determinants of readmission risk.

**Possible Causes**

High readmission in sepsis is consistent with ongoing infection risk, organ dysfunction, and treatment resistance following discharge. COPD and heart failure reflect chronic disease instability driven by medication non-adherence, environmental triggers, and inadequate self-management. Stroke and kidney disease are associated with long-term functional impairment, rehabilitation gaps, and high comorbidity burden. Moderate-risk conditions such as pneumonia and diabetes mellitus often relate to incomplete recovery, suboptimal outpatient control, and preventable exacerbations. Lower-risk conditions like influenza and appendicitis tend to have more defined treatment pathways and clearer recovery trajectories, reducing variability in post-discharge outcomes.

**Recommendations**

Introduce diagnosis-specific discharge protocols with embedded risk stratification. Prioritize high-risk groups for structured follow-up within the early post-discharge window. Expand multidisciplinary chronic disease management programs integrating cardiology, respiratory, nephrology, and rehabilitation services. Strengthen patient education focusing on early warning signs, medication adherence, and lifestyle modification. Implement proactive post-discharge surveillance for sepsis and cardiopulmonary conditions.

**Strategic Implication**

Readmission burden is primarily driven by a small subset of high-complexity diagnoses. Targeted intervention on sepsis, COPD, heart failure, stroke, and kidney disease will yield disproportionate impact on overall readmission reduction, making diagnosis-level prioritization the most efficient lever for system-wide improvement.

**3. Readmission by Treatment Type**

Insight

Readmission rates are highest among patients managed conservatively (81.78%), while medical (76.90%), surgical (76.81%), and interventional (76.67%) treatments show relatively comparable and lower rates. The pattern suggests that treatment modality, particularly conservative management, is strongly associated with subsequent readmission risk.

**Possible Causes**

Conservative management likely reflects a higher baseline severity or frailty profile, where patients are not suitable for definitive surgical or interventional approaches. This group may include advanced-stage chronic disease patients, leading to symptom-driven care rather than curative intervention. For surgical patients, readmissions are typically driven by postoperative complications such as infection, bleeding, or delayed recovery. Medical management cases may reflect issues with long-term disease control, medication adherence, and disease progression. Interventional procedures may still carry risks related to procedural complications or need for staged treatment, but overall appear more controlled relative to conservative care pathways.

**Recommendations**

Apply enhanced risk stratification for patients discharged under conservative management, treating them as a high-priority cohort for transitional care. Implement structured early follow-up protocols across all treatment categories, with intensified monitoring for conservative cases. Strengthen discharge planning with explicit escalation pathways and symptom surveillance education. Audit clinical criteria for conservative management to ensure appropriate case selection and identify potential opportunities for more definitive interventions where clinically feasible.

**Strategic Implication**

Treatment modality functions as a proxy for underlying clinical complexity. A targeted transitional care framework focusing on conservatively managed patients is likely to yield the highest reduction in preventable readmissions, while standardized post-discharge protocols across all modalities will stabilize overall system performance.

**RISK AND ACTIONABLE DASHBOARD**

**1.Previous Readmissions vs Current Readmission**

Insight

A strong monotonic relationship exists between prior readmission history and current readmission risk. Patients with no prior readmissions exhibit the lowest probability (27.79%), while risk increases sharply after the first readmission (69.50%) and escalates further with repeated episodes, reaching near-certain recurrence at 4–5 prior readmissions (≥96%). Prior utilization history emerges as the most powerful predictor of future readmission within the dataset.

**Possible Causes**

Repeated readmissions typically reflect unresolved clinical instability, including poorly controlled chronic diseases and progressive multimorbidity. Failure of prior discharge plans suggests gaps in care coordination and transitional care processes. Medication non-adherence, inadequate follow-up, and limited outpatient access contribute to disease recurrence and decompensation. Social determinants such as low support systems, financial constraints, and poor health literacy further compound self-management challenges. Cumulative hospital exposure may also lead to functional decline, increasing vulnerability to subsequent admissions.

**Recommendations**

Incorporate prior readmission count as a primary risk stratification variable in discharge planning workflows. Activate high-intensity case management for patients with even a single prior readmission. Ensure pre-arranged follow-up appointments before discharge and enforce early post-discharge contact within 48–72 hours. Assign dedicated care coordinators for patients with recurrent admissions to oversee continuity across inpatient and outpatient settings. Integrate social risk screening to address non-clinical drivers of repeated utilization.

**Strategic Implication**

Readmission history should be treated as a core predictive signal for healthcare utilization risk stratification. Embedding prior admission data into automated risk models enables proactive transitional care targeting, which is likely to yield substantial reductions in recurrent hospitalizations and improve continuity of care for high-risk patients.

**2. Discharge Disposition (Risk Score Distribution)**

   Insight
   
Readmission risk varies markedly by discharge destination. Skilled nursing facility (SNF) discharges show the highest readmission rate (92.80%), followed by home health (75.85%). Patients discharged directly home (34.07%) or to rehabilitation services (34.00%) demonstrate substantially lower readmission rates. The pattern indicates that higher post-acute care dependence is associated with increased readmission risk, likely reflecting underlying clinical complexity rather than care setting alone.

**Possible Causes**

Patients discharged to skilled nursing facilities typically represent a high-risk cohort characterized by advanced age, frailty, and multimorbidity, with limited physiological reserve. The elevated readmission rate may reflect disease severity rather than deficiencies in care alone. Home health patients often require ongoing medical support but may face gaps in caregiver availability, adherence challenges, and fragmented coordination between providers. Conversely, patients discharged home or to rehabilitation facilities generally have better functional status and more structured recovery pathways, contributing to lower readmission risk. Rehabilitation settings may also provide more intensive recovery oversight, reducing early deterioration.

**Recommendations**

Strengthen structured communication pathways between acute hospitals and skilled nursing facilities, including standardized handover protocols and shared care plans. Implement early post-discharge surveillance for SNF and home health populations, focusing on the first 7–14 days. Enhance clinical oversight in post-acute settings through regular multidisciplinary reviews. Improve alignment of discharge criteria with patient functional status and expected care needs to reduce mismatch between patient acuity and post-acute placement.

**Strategic Implication**

Post-acute care transitions represent a critical vulnerability point in the care continuum. Integrated care pathways linking hospitals with SNFs and home health services, supported by coordinated monitoring and shared accountability frameworks, are essential for reducing preventable readmissions in high-dependency patient populations.

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

**Possible Causes1                                                                                                                      )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   

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


