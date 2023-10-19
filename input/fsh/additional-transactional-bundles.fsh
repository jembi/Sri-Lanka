Instance: HIMS-Blood-Pressure-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Blood Pressure Bundle"
Description: "HIMS Blood Pressure Bundle"
* type = #transaction

* entry[+].fullUrl = "Observation/BloodPressureExample"
* entry[=].resource = BloodPressureExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BloodPressureExample"

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
* entry[=].request.url = "Observation/WeightExample"

* entry[+].fullUrl = "Observation/HeightExample"
* entry[=].resource = HeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HeightExample"

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
* entry[=].request.url = "Observation/RiskBehaviourPhysicalActivityExample"

* entry[+].fullUrl = "Observation/RiskBehaviourTobaccoSmokerExample"
* entry[=].resource = RiskBehaviourTobaccoSmokerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RiskBehaviourTobaccoSmokerExample"

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

Instance: HIMS-Investigations-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Investigations Bundle"
Description: "HIMS Investigations Bundle (FBS, RBS, Total Cholesterol)"
* type = #transaction

* entry[+].fullUrl = "Observation/RandomBloodSugarExample"
* entry[=].resource = RandomBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RandomBloodSugarExample"

* entry[+].fullUrl = "Observation/FastingBloodSugarExample"
* entry[=].resource = FastingBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FastingBloodSugarExample"

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

* entry[+].fullUrl = "Observation/TotalCholesterolExample"
* entry[=].resource = TotalCholesterolExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/TotalCholesterolExample"

Instance: HIMS-CVS-Risk-Factor-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS CVS Risk Factor Bundle"
Description: "HIMS CVS Risk Factor Bundle"
* type = #transaction

* entry[+].fullUrl = "RiskAssessment/CVDRiskCategoryExample"
* entry[=].resource = CVDRiskCategoryExample
* entry[=].request.method = #PUT
* entry[=].request.url = "RiskAssessment/CVDRiskCategoryExample"

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

* entry[+].fullUrl = "Observation/RiskBehaviourTobaccoSmokerExample"
* entry[=].resource = RiskBehaviourTobaccoSmokerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RiskBehaviourTobaccoSmokerExample"

* entry[+].fullUrl = "Observation/TotalCholesterolExample"
* entry[=].resource = TotalCholesterolExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/TotalCholesterolExample"

* entry[+].fullUrl = "Observation/BloodPressureExample"
* entry[=].resource = BloodPressureExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BloodPressureExample"

* entry[+].fullUrl = "Observation/RandomBloodSugarExample"
* entry[=].resource = RandomBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/RandomBloodSugarExample"

* entry[+].fullUrl = "Observation/FastingBloodSugarExample"
* entry[=].resource = FastingBloodSugarExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/FastingBloodSugarExample"

Instance: HIMS-Follow-Up-Plan-Bundle
InstanceOf: Bundle
Usage: #example
Title: "HIMS Follow-up Plan Bundle"
Description: "HIMS Follow-up Plan Bundle"
* type = #transaction

* entry[+].fullUrl = "ServiceRequest/FollowUpPlanServiceRequestExample"
* entry[=].resource = FollowUpPlanServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/FollowUpPlanServiceRequestExample"

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

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

Instance: HHIMS-OPD-Encounter-1-Bundle
InstanceOf: Bundle
Usage: #example
Title: "OPD Encounter Bundle"
Description: "OPD Encounter Bundle (Encounter Reason, Location, Doctor)"
* type = #transaction

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

Instance: HHIMS-OPD-Encounter-2-Bundle
InstanceOf: Bundle
Usage: #example
Title: "OPD Encounter Bundle"
Description: "OPD Encounter Bundle (Encounter Reason, Location, Doctor, Disease Notified, Patient Referred)"
* type = #transaction

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "Communication/NotifiableDiseasesNotifiedExample"
* entry[=].resource = NotifiableDiseasesNotifiedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Communication/NotifiableDiseasesNotifiedExample"

* entry[+].fullUrl = "ServiceRequest/GeneralReferralServiceRequestExample"
* entry[=].resource = GeneralReferralServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/GeneralReferralServiceRequestExample"

* entry[+].fullUrl = "Task/GenericTaskExample"
* entry[=].resource = GenericTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/GenericTaskExample"

Instance: HHIMS-OPD-Prescription-Bundle
InstanceOf: Bundle
Usage: #example
Title: "OPD Prescription Bundle"
Description: "OPD Encounter Bundle (Medication name, Dosage, Frequency, Duration)"
* type = #transaction

* entry[+].fullUrl = "MedicationRequest/PrescriptionsExample"
* entry[=].resource = PrescriptionsExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/PrescriptionsExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

Instance: HHIMS-OPD-Prescription-Dispenses-Bundle
InstanceOf: Bundle
Usage: #example
Title: "OPD Prescription Dispensed Bundle"
Description: "OPD Prescription Dispensed Bundle (Medication name, Dosage, Frequency, Duration, Dispensation)"
* type = #transaction

* entry[+].fullUrl = "MedicationRequest/PrescriptionsExample"
* entry[=].resource = PrescriptionsExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/PrescriptionsExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "MedicationDispense/DrugDispensationExample"
* entry[=].resource = DrugDispensationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationDispense/DrugDispensationExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

Instance: HHIMS-Procedure-Bundle
InstanceOf: Bundle
Usage: #example
Title: "Procedure Bundle"
Description: "Procedure Bundle"
* type = #transaction

* entry[+].fullUrl = "Procedure/ProceduresExample"
* entry[=].resource = ProceduresExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Procedure/ProceduresExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

Instance: HHIMS-Investigation-Requests-Bundle
InstanceOf: Bundle
Usage: #example
Title: "Investigation Requests Bundle"
Description: "Investigation Requests Bundle"
* type = #transaction

* entry[+].fullUrl = "ServiceRequest/InvestigationsServiceRequestExample"
* entry[=].resource = InvestigationsServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/InvestigationsServiceRequestExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

* entry[+].fullUrl = "Task/InvestigationsTaskExample"
* entry[=].resource = InvestigationsTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/InvestigationsTaskExample"

Instance: HHIMS-Imaging-Bundle
InstanceOf: Bundle
Usage: #example
Title: "Imaging Bundle"
Description: "Imaging Bundle"
* type = #transaction

* entry[+].fullUrl = "ServiceRequest/ImagingServiceRequestExample"
* entry[=].resource = ImagingServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/ImagingServiceRequestExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Patient/HHIMSPatientExample"
* entry[=].resource = HHIMSPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HHIMSPatientExample"

* entry[+].fullUrl = "Practitioner/GeneralPractitionerExample"
* entry[=].resource = GeneralPractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/GeneralPractitionerExample"

* entry[+].fullUrl = "Location/ProvidersLocationExample"
* entry[=].resource = ProvidersLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/ProvidersLocationExample"

* entry[+].fullUrl = "Task/ImagingTaskExample"
* entry[=].resource = ImagingTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/ImagingTaskExample"
