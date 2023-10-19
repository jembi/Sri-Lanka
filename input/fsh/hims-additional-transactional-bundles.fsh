Instance: HIMS-Blood-Pressure-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Blood Pressure Bundle"
Description: "HIMS Blood Pressure Bundle"
* type = #transaction

* entry[+].fullUrl = "Observation/BloodPressureExample"
* entry[=].resource = BloodPressureExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BloodPressureExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

Instance: HIMS-Weight-Height-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Weight and Height Bundle"
Description: "HIMS Weight and Height Bundle"
* type = #transaction

* entry[+].fullUrl = "Observation/WeightExample"
* entry[=].resource = WeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/WeightExample"

* entry[+].fullUrl = "Observation/HeightExample"
* entry[=].resource = HeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HeightExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

Instance: HIMS-Medical-History-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Medical History"
Description: "HIMS Medical History"
* type = #transaction

* entry[+].fullUrl = "Condition/MedicalHistoryExample"
* entry[=].resource = MedicalHistoryExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/MedicalHistoryExample"

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIMSPatientExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

Instance: HIMS-Risk-Behaviour-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Risk Behaviour"
Description: "HIMS Risk Behaviour (Physical Activity, Tobacco Smoking)"
* type = #transaction

* entry[+].fullUrl = "Observation/RiskBehaviourPhysicalActivityExample"
* entry[=].resource = RiskBehaviourPhysicalActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/RiskBehaviourPhysicalActivityExample"

* entry[+].fullUrl = "Observation/RiskBehaviourTobaccoSmokerExample"
* entry[=].resource = RiskBehaviourTobaccoSmokerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/RiskBehaviourTobaccoSmokerExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"