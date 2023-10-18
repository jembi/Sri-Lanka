Instance: HIMS-Transactional-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS FULL Transactional Bundle"
Description: "HIMS FULL Transactional Bundle"
* type = #transaction

* entry[+].fullUrl = "Patient/HIMSPatientExample"
* entry[=].resource = HIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIMSPatientExample"

* entry[+].fullUrl = "Observation/RiskBehaviourPhysicalActivityExample"
* entry[=].resource = RiskBehaviourPhysicalActivityExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RiskBehaviourPhysicalActivityExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Observation/RiskBehaviourTobaccoSmokerExample"
* entry[=].resource = RiskBehaviourTobaccoSmokerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RiskBehaviourTobaccoSmokerExample"

* entry[+].fullUrl = "Observation/BloodPressureExample"
* entry[=].resource = BloodPressureExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BloodPressureExample"

* entry[+].fullUrl = "Observation/WeightExample"
* entry[=].resource = WeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/WeightExample"

* entry[+].fullUrl = "Observation/HeightExample"
* entry[=].resource = HeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HeightExample"

* entry[+].fullUrl = "Observation/BMIExample"
* entry[=].resource = BMIExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BMIExample"

* entry[+].fullUrl = "Observation/RandomBloodSugarExample"
* entry[=].resource = RandomBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RandomBloodSugarExample"

* entry[+].fullUrl = "Observation/FastingBloodSugarExample"
* entry[=].resource = FastingBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FastingBloodSugarExample"

* entry[+].fullUrl = "Observation/TotalCholesterolExample"
* entry[=].resource = TotalCholesterolExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/TotalCholesterolExample"

* entry[+].fullUrl = "RiskAssessment/CVDRiskCategoryExample"
* entry[=].resource = CVDRiskCategoryExample
* entry[=].request.method = #PUT
* entry[=].request.url = "RiskAssessment/CVDRiskCategoryExample"

* entry[+].fullUrl = "ServiceRequest/FollowUpPlanServiceRequestExample"
* entry[=].resource = FollowUpPlanServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/FollowUpPlanServiceRequestExample"

* entry[+].fullUrl = "CarePlan/FollowUpAtHLCExample"
* entry[=].resource = FollowUpAtHLCExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/FollowUpAtHLCExample"

* entry[+].fullUrl = "Condition/MedicalHistoryExample"
* entry[=].resource = MedicalHistoryExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/MedicalHistoryExample"