Logical:      RiskAssessmentDataDictionary
Title:        "Risk Assessment"
Description:  "Data elements for the Risk Assessment Data Dictionary."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^status = #active

* physicalActivity 0..1 string "Physical activity" "Physical activity status for the patient."
  * ^code[+] = CSRiskAssessmentCodes#RA1
* physicalActivity from VSRiskBehaviourPhysicalActivity (extensible)
* tobaccoSmoking 0..1 string "Tobacco smoking" "Tobacco smoking status for the patient."
  * ^code[+] = CSRiskAssessmentCodes#RA2
* tobaccoSmoking from VSRiskBehaviourTobaccoSmoker (extensible)

Mapping: RiskAssessmentDataDictionary-to-Patient
Source: RiskAssessmentDataDictionary
Target: "Observation"
* -> "Observation"
* physicalActivity -> "Observation.valueCodeableConcept"
* tobaccoSmoking -> "Observation.valueCodeableConcept"