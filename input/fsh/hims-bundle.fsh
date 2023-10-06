Instance: HIMS-Document
InstanceOf: Bundle
Usage: #example
Title: "HIMS Document Bundle"
Description: "HIMS Document Bundle"
* type = #document
* identifier[+].value = "document-1"
* identifier[=].system = "http://openhie.org/fhir/sri-lanka/identifier/bundle-id"
* timestamp = "2023-08-22T13:28:17-05:00"

* entry[+].fullUrl = "Composition/HIMSCompositionExample"
* entry[=].resource = HIMSCompositionExample

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample

* entry[+].fullUrl = "Observation/RiskBehaviourPhysicalActivityExample"
* entry[=].resource = RiskBehaviourPhysicalActivityExample

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample

* entry[+].fullUrl = "Organization/OrganizationExample"
* entry[=].resource = OrganizationExample

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample

* entry[+].fullUrl = "Observation/RiskBehaviourTobaccoSmokerExample"
* entry[=].resource = RiskBehaviourTobaccoSmokerExample

* entry[+].fullUrl = "Observation/BloodPressureExample"
* entry[=].resource = BloodPressureExample

* entry[+].fullUrl = "Observation/WeightExample"
* entry[=].resource = WeightExample

* entry[+].fullUrl = "Observation/HeightExample"
* entry[=].resource = HeightExample

* entry[+].fullUrl = "Observation/BMIExample"
* entry[=].resource = BMIExample

* entry[+].fullUrl = "Observation/RandomBloodSugarExample"
* entry[=].resource = RandomBloodSugarExample

* entry[+].fullUrl = "Observation/FastingBloodSugarExample"
* entry[=].resource = FastingBloodSugarExample