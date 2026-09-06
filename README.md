**End-to-End Hospital Readmission Analysis**

I analyzed hospital readmission patterns across clinical conditions, patient demographics, and geographic regions using SQL for data extraction and transformation and Power BI for visualization — to identify the clinical, demographic, and system-level factors driving avoidable readmissions.

**Executive Summary**

I analyzed hospital readmission patterns using SQL for data processing and Power BI for visualization to identify the clinical, demographic, and system-level drivers of avoidable readmissions.

The analysis showed that readmissions are driven predominantly by clinical complexity rather than demographic variation. High-acuity conditions — sepsis, COPD, heart failure, stroke, and kidney disease — accounted for the largest share of readmissions. 

Risk increased sharply with comorbidity burden, prior admission history, and conservative treatment pathways, showing a strong cumulative vulnerability effect. System-level factors like discharge disposition and insurance status further shaped outcomes, with skilled nursing facility discharges and Medicare patients showing the highest readmission rates.

Seasonal peaks in January and December point to added pressure from environmental and healthcare system strain.

Overall, readmissions in this dataset are largely predictable and concentrated within a small, identifiable high-risk population — which makes them highly responsive to targeted intervention rather than broad, one-size-fits-all programs.

**My Role**

Built SQL pipelines for data extraction and KPI calculation

Designed Power BI dashboards for executive, clinical, and demographic insights

Validated data quality — checked for missing values, duplicates, and KPI accuracy

Delivered strategic recommendations to reduce readmissions

**Business Impact**

This analysis lets healthcare systems prioritize high-risk patients, optimize discharge workflows, and reduce avoidable readmissions before they happen.

The value here is concentration: readmission risk isn't spread evenly across the patient population, it's stacked in a small, identifiable group. Patients with even one prior readmission jump from a 27.79% to a 69.50% readmission probability, and patients with four or more comorbidities cross 75%. 

That means a hospital doesn't need to change how it manages every discharge — it needs to flag this specific cohort (prior-readmission history, 4+ comorbidities, or a diagnosis in the sepsis/COPD/heart failure/stroke/kidney disease cluster) for high-intensity, high-touch follow-up.

Since US hospitals are typically penalized financially for excess readmissions under value-based care programs, and each avoidable readmission carries both a direct cost (extra inpatient stay) and a regulatory penalty risk, narrowing intervention to this high-risk group is where the return on investment is highest per dollar spent — rather than spreading limited case-management resources thinly across the entire discharged population.

**Objective**

To analyze hospital readmission patterns across clinical conditions, patient demographics, and geographic regions in order to identify high-risk groups and the underlying system inefficiencies in post-discharge care.

**Project Questions**

Why are patients being readmitted?

Which patient groups and diagnoses have the highest readmission rate?

How can the hospital reduce preventable readmissions?

**Data Information**

Source: Hospital Readmission Dataset (Kaggle)

The dataset contains structured hospital records covering patient admissions and readmissions across multiple clinical conditions. It includes patient demographics (gender, region), medical conditions, and readmission outcomes, and is structured to support aggregation at the condition, gender, and regional level — enabling calculation of readmission rates and risk classification.

**Tools & Technologies**

SQL — data extraction, aggregation, and analysis

Power BI — dashboard development and visualization

Excel — data validation and preprocessing

**Data Quality Checkup**

I ran a full data quality assessment covering completeness, consistency, validity, accuracy, and duplication. This included checks for missing values, duplicate records, and inconsistent categorical entries, plus a logical integrity check on the readmission variables themselves. KPI recalculations confirmed the accuracy of the derived readmission rates across clinical conditions.

KPIs

Executive KPIs: Total Patients, Total Readmissions, Readmission Rate %, Average Length of Stay, Average Age, Average Risk Score.
Clinical KPIs: Average Comorbidities Count, Average Medications Count, Average Previous Readmissions.
Risk KPIs: High-Risk Patients, High-Risk Readmission Rate, Preventable Readmission Candidate.

**Dashboard Overview**

The dashboard is structured into three analytical views:

Executive Dashboard — overall KPIs (total patients, readmission rate), plus readmission trend by month, region, and season
Patient and Clinical Factors Dashboard — readmission by gender, diagnosis, and treatment type

Risk and Actionable Dashboard — prior readmissions vs. current readmission, discharge disposition, comorbidity burden, and insurance type

Interactive filters let users explore the data dynamically to surface patterns across all three views.

**Findings**

Readmissions are driven predominantly by clinical complexity rather than demographic variation.

High-acuity, chronic conditions form a clear high-risk cluster: sepsis (86.92%), COPD (86.87%), heart failure (85.86%), stroke (85.28%), and kidney disease (83.29%) — versus lower-risk conditions like influenza (68.67%), hypertension (69.94%), and fracture (70.28%).

Prior readmission history is the single strongest predictor: risk starts at 27.79% with no prior readmissions, jumps to 69.50% after just one prior readmission, and exceeds 96% at 4–5 prior readmissions.

Comorbidity burden shows a clear dose-response relationship: 38.95% risk at two comorbidities, 75.05% at four, over 96% at six or more, and near-universal readmission at ten.

Conservative treatment carries the highest readmission rate (81.78%) compared to medical (76.90%), surgical (76.81%), and interventional (76.67%) treatment.

Discharge disposition matters significantly: skilled nursing facility discharges show the highest readmission rate (92.80%), followed by home health (75.85%), while home discharge (34.07%) and rehabilitation (34.00%) are far lower.

Insurance type correlates strongly with readmission: Medicare patients show the highest rate (95.36%), private insurance the lowest (66.00%), with uninsured (76.11%) and Medicaid (70.59%) in between.

Gender shows only a modest difference — 52.71% of readmissions are female patients versus 47.29% male.
Regional variation is minimal, ranging from 75.23% in the West to 79.05% in the Central region.

Seasonal variation exists but is secondary to clinical drivers — winter shows the highest readmission rate and fall the lowest, with volumes peaking in January and December and dropping in May and November.

**Insights**

Readmission risk is concentrated in a small, identifiable high-risk population — specific diagnoses, prior-admission history, and high comorbidity count — rather than spread evenly across the patient base, which makes targeted intervention far more efficient than broad-based programs.

Prior admission history and comorbidity count are the two strongest structural predictors in this dataset, both following a clear escalating pattern, and should anchor any predictive risk-scoring model built from this data.

Discharge disposition and insurance status act as compound proxies for both clinical severity and access-related barriers — they're markers of underlying risk, not independent causes on their own.

Because regional variation is minimal while clinical variation is large, readmission-reduction efforts are better designed at a system-wide level and then refined locally, rather than built region-by-region from scratch.

Conservative treatment pathways likely reflect underlying patient frailty and case severity rather than the treatment approach itself causing higher readmission.

Seasonal effects are real but secondary — they're worth planning capacity around, but they don't explain nearly as much of the variation as clinical complexity does.

**Recommendations**

**Risk Stratification & Predictive Targeting**

Build prior-admission count and comorbidity burden into an automated risk-scoring model as the primary stratification variables.

Flag any patient with even one prior readmission for high-intensity case management, rather than waiting for a pattern to emerge.

Prioritize diagnosis-specific discharge protocols for the high-risk cluster: sepsis, COPD, heart failure, stroke, and kidney disease.

**Discharge Planning & Transitional Care**

Standardize handover protocols and shared care plans between hospitals and skilled nursing facilities or home health providers.

Enforce early post-discharge contact within 48–72 hours, especially for SNF and home health discharges.

Pre-arrange follow-up appointments before discharge instead of leaving scheduling to the patient.

**Chronic Disease & Comorbidity Management**

Build stratified, multidisciplinary care pathways for patients with four or more comorbidities.

Run routine medication reconciliation at both discharge and follow-up to catch polypharmacy risk early.

Expand integrated chronic disease programs — cardiology, respiratory, nephrology, rehabilitation — around the high-risk diagnosis cluster.

**Equity & Access**

Build targeted linkage-to-care support for Medicaid and uninsured patients focused on outpatient access and medication affordability.

Embed social risk screening into standard discharge workflows to catch financial and logistical barriers before they cause a readmission.

Design an equity-informed care model that addresses clinical risk and socioeconomic barriers together, rather than treating insurance status as a side note.

**Seasonal & Operational Preparedness**

Increase discharge-planning capacity and proactive patient outreach ahead of the January/December and winter peaks.
Expand preventive respiratory care and vaccination coverage ahead of high-risk months.

Since regional variation is minimal, roll out new protocols system-wide rather than piloting region-by-region.

**Limitations**

Several "possible causes" in this analysis — such as attributing insurance-status differences to access barriers, or gender differences to care-seeking behavior — are informed hypotheses based on patterns in the data, not confirmed through direct investigation or multivariable adjustment. They're a starting point for further research, not a proven causal link.

The dataset's source isn't specified in this write-up; adding it would let a technical reviewer assess sample representativeness and potential bias.

Regional and seasonal findings are based on the categories available in the dataset and may not capture finer-grained facility-level or weekly variation.

This analysis identifies correlations and risk patterns; a follow-up predictive model with proper validation would be needed before using these findings to allocate real clinical resources.

**Conclusion**

Hospital readmissions in this dataset were strongly associated with disease severity, multimorbidity, prior hospitalization history, and post-discharge care needs. Patients with chronic and high-acuity conditions represented the greatest readmission burden, underscoring the value of risk-based care strategies over blanket interventions.

Strengthening discharge planning, improving follow-up care, expanding chronic disease management, and building predictive models to flag high-risk patients earlier can help reduce preventable readmissions and make better use of healthcare resources.

Contact

Mwanahamisi Juma 


