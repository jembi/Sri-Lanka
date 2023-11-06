Logical:      HIMSRiskBehaviourDataDictionary
Title:        "HIMS Risk Behaviour"
Description:  "Data elements for the HIMS Risk Behaviour Data Dictionary."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^status = #active

* physicalActivity 0..1 string "Physical activity" "Physical activity status for the patient."
  * ^code[+] = CSRiskBehaviourCodes#RA1
* physicalActivity from VSRiskBehaviourPhysicalActivity (extensible)
* tobaccoSmoking 0..1 string "Tobacco smoking" "Tobacco smoking status for the patient."
  * ^code[+] = CSRiskBehaviourCodes#RA2
* tobaccoSmoking from VSRiskBehaviourTobaccoSmoker (extensible)

Mapping: HIMSRiskBehaviourDataDictionary-to-Patient
Source: HIMSRiskBehaviourDataDictionary
Target: "Observation"
* -> "Observation"
* physicalActivity -> "Observation.valueCodeableConcept"
* tobaccoSmoking -> "Observation.valueCodeableConcept"