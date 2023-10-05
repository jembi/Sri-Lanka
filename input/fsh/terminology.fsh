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