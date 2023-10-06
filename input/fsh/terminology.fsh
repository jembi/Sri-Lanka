Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

CodeSystem: CSRiskBehaviourPhysicalActivity
Id: cs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
* ^caseSensitive = true
* #Physically-active "Physically active" "Sri Lanka team to provide defitinion for this coded value"
* #Physically-not-active "Physically not active" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSRiskBehaviourPhysicalActivity
Id: vs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
* include codes from system CSRiskBehaviourPhysicalActivity

CodeSystem: CSRiskBehaviourTobaccoSmoker
Id: cs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
* ^caseSensitive = true
* #Non-User "Non-User" "Sri Lanka team to provide defitinion for this coded value"
* #User "User" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSRiskBehaviourTobaccoSmoker
Id: vs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
* include codes from system CSRiskBehaviourTobaccoSmoker

CodeSystem: CSIdentifierTypes
Id: cs-identifier-types
Title: "Patient Business Identifier Types"
Description: "Patient Business Identifier Types"
* ^experimental = false
* ^caseSensitive = true
* #SCN "Senior Citizen Number" "Sri Lanka team to provide defitinion for this coded value"
* #PHN "Personal Health Number" "Sri Lanka team to provide defitinion for this coded value"

CodeSystem: CSFollowUpPlan
Id: cs-follow-up-plan
Title: "Follow-up plan"
Description: "Follow-up plan"
* ^experimental = false
* ^caseSensitive = true
* #Reffered-to-medical-clinic-of-same-institute "Reffered to medical clinic of same institute" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-specialised-clinic "Referred to specialised clinic" "Sri Lanka team to provide defitinion for this coded value"
* #Follow-up-at-hlc "Follow up at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-dental-clinic "Referred to Dental Clinic" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-wwc "Referred to WWC" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSFollowUpPlan
Id: vs-follow-up-plan
Title: "Follow-up plan"
Description: "Follow-up plan"
* ^experimental = false
* include codes from system CSFollowUpPlan

CodeSystem: CSFollowUpReasons
Id: cs-follow-up-reasons
Title: "Follow up at HLC"
Description: "Follow up at HLC"
* ^experimental = false
* ^caseSensitive = true
* #Followed-in-3-months-at-hlc "Followed in 3 months at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-6-months-at-hlc "Followed in 6 months at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-1-year-at-hlc "Followed in 1 year at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-3-years-at-hlc "Followed in 3 years at HLC" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSFollowUpReasons
Id: vs-follow-up-reasons
Title: "Follow up at HLC"
Description: "Follow up at HLC"
* ^experimental = false
* include codes from system CSFollowUpReasons