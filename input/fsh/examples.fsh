Instance: OrganizationExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization"
Description: "Organization providing health related services."
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://openhie.org/fhir/sri-lanka/identifier/organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Organization identifier"
* name = "Some Health Facility"

Instance: HIMSPatientExample
InstanceOf: HIMSPatient
Usage: #example
Title: "HIMS Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services. In addition to the profiled data elements, this profile includes all data elements from the HHIMS Patient profile."

* identifier[PPN][+].value = "A patient can have multiple passport IDs."
* identifier[PPN][=].extension[PASSID][+].valueString = "Passport-1"
* identifier[PPN][=].extension[PASSID][+].valueString = "Passport-2"
* identifier[PPN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/passport"
* identifier[PPN][=].type.coding.code = #PPN
* identifier[PPN][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN][=].type.text = "Passport number"

* identifier[Drivers][+].value = "A patient may have multiple drivers license numbers."
* identifier[Drivers][=].extension[DriversID][+].valueString = "Drivers license-1"
* identifier[Drivers][=].extension[DriversID][+].valueString = "Drivers license-2"
* identifier[Drivers][=].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"
* identifier[Drivers][=].type.coding.code = #DL
* identifier[Drivers][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers][=].type.text = "Driver's license number"

* identifier[NIC][+].value = "A patient may have multiple national identity numbers."
* identifier[NIC][=].extension[NICID][+].valueString = "National identity number-1"
* identifier[NIC][=].extension[NICID][+].valueString = "National identity number-2"
* identifier[NIC][=].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"
* identifier[NIC][=].type.coding.code = #NNLKA
* identifier[NIC][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[NIC][=].type.text = "National identity number"

* identifier[SCN][+].value = "A patient may have multiple senior citizen numbers."
* identifier[SCN][=].extension[SCNID][+].valueString = "Senior citizen number-1"
* identifier[SCN][=].extension[SCNID][+].valueString = "Senior citizen number-2"
* identifier[SCN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/scn"
* identifier[SCN][=].type.coding.code = #SCN
* identifier[SCN][=].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[SCN][=].type.text = "Senior Citizen Number"

* identifier[PHN][+].value = "personal health number"
* identifier[PHN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/phn"
* identifier[PHN][=].type.coding.code = #PHN
* identifier[PHN][=].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[PHN][=].type.text = "Personal Health Number"

* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "Mr."
* name[=].given[+] = "Mike"
* name[=].given[+] = "John"
* gender = #male
* birthDate = "1983-05-22"

* address[+].country = "Sri Lanka"
* address[=].type = #postal
* address[=].district = "Ampara"
* address[=].line[+] = "177"
* address[=].line[+] = "Nawala Road"
* address[=].city = "Nugegoda"
* address[=].postalCode = "32350"
* address[=].state = "Colombo"

* telecom[+].system = #phone
* telecom[=].value = "+27829999999"
* telecom[+].system = #email
* telecom[=].value = "someone@something.com"
* telecom[+].system = #email
* telecom[=].value = "someone2@something.com"

Instance: HHIMSPatientExample
InstanceOf: HHIMSPatient
Usage: #example
Title: "HHIMS PatientExample"
Description: "Is used to document demographics and other administrative information about an HHIMS individual receiving care or other health-related services."
* identifier[NIC][+].value = "A patient may have multiple national identity numbers."
* identifier[NIC][=].extension[NICID][+].valueString = "National identity number-1"
* identifier[NIC][=].extension[NICID][+].valueString = "National identity number-2"
* identifier[NIC][=].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"
* identifier[NIC][=].type.coding.code = #NNLKA
* identifier[NIC][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[NIC][=].type.text = "National identity number"

* identifier[PHN][+].value = "personal health number"
* identifier[PHN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/phn"
* identifier[PHN][=].type.coding.code = #PHN
* identifier[PHN][=].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[PHN][=].type.text = "Personal Health Number"

* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "Mr."
* name[=].given[+] = "Mike"
* name[=].given[+] = "John"
* gender = #male
* birthDate = "1983-05-22"

* address[+].country = "Sri Lanka"
* address[=].type = #postal
* address[=].district = "Ampara"
* address[=].line[+] = "177"
* address[=].line[+] = "Nawala Road"
* address[=].city = "Nugegoda"
* address[=].postalCode = "32350"
* address[=].state = "Colombo"

* telecom[+].system = #phone
* telecom[=].value = "+27829999999"
* telecom[+].system = #email
* telecom[=].value = "someone@something.com"
* telecom[+].system = #email
* telecom[=].value = "someone2@something.com"

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #finished
* class.code = #AMB
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HIMSPatientExample)
* period.start = "2022-12-01"
* period.end = "2023-01-20"
* reasonCode[+].coding.code = #LKRFE73
* reasonCode[=].coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-reason-for-encounter"
* location[+].location = Reference(ProvidersLocationExample)
* participant[+].individual = Reference(GeneralPractitionerExample)

Instance: ProvidersLocationExample
InstanceOf: ProvidersLocation
Usage: #example
Title: "Providers Location"
Description: "Providers Location"
* identifier[LocationID][+].value = "A provider's location may be associated with multiple identifiers."
* identifier[LocationID][=].extension[LocID][+].valueString = "Location-ID-1"
* identifier[LocationID][=].extension[LocID][+].valueString = "Location-ID-2"
* identifier[LocationID][=].system = "http://openhie.org/fhir/sri-lanka/identifier/provider-location"
* identifier[LocationID][=].type.coding.code = #PIN
* identifier[LocationID][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[LocationID].type.text = "Provider location identifier"
* name = "Name for the location"
* status = #active
* address[+].country = "Sri Lanka"
* address[=].type = #postal
* address[=].district = "Ampara"
* address[=].line[+] = "177"
* address[=].line[+] = "Nawala Road"
* address[=].city = "Nugegoda"
* address[=].postalCode = "32350"
* address[=].state = "Colombo"

* telecom[+].system = #phone
* telecom[=].value = "+27829999999"
* telecom[+].system = #email
* telecom[=].value = "someone@something.com"
* telecom[+].system = #email
* telecom[=].value = "someone2@something.com"
* managingOrganization = Reference(OrganizationExample)

Instance: NotifiableDiseasesNotifiedExample
InstanceOf: NotifiableDiseasesNotified
Usage: #example
Title: "Notifiable Diseases Notified"
Description: "Notifiable Diseases Notified"
* status = #completed
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* sent = "2023-10-06T13:28:17-05:00"

Instance: GenericObservationExample
InstanceOf: GenericObservation
Usage: #example
Title: "Generic Observation"
Description: "Generic Observation"
* status = #final
* code = $LNC#10000-8
* code.text = "Generic Observation"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

Instance: RiskBehaviourPhysicalActivityExample
InstanceOf: RiskBehaviourPhysicalActivity
Usage: #example
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* status = #final
* code = $SCT#106020009
* code.text = "Physical Activity"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept.coding.code = #Physically-active
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-risk-behaviour-physical-activity"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

Instance: RiskBehaviourTobaccoSmokerExample
InstanceOf: RiskBehaviourTobaccoSmoker
Usage: #example
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* status = #final
* code = $LNC#72166-2
* code.text = "Tobacco smoking"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept.coding.code = #User
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-risk-behaviour-tobacco-smoker"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

Instance: BloodPressureExample
InstanceOf: BloodPressure
Usage: #example
Title: "Blood Pressure Observation"
Description: "Represents the Systolic and Diastolic blood pressure for the patient."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#85354-9
* code.text = "Blood Pressure"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value = 106
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value = 60
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code = #mm[Hg]

Instance: WeightExample
InstanceOf: Weight
Usage: #example
Title: "Patient Weight"
Description: "Represents the patient's weight."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#29463-7
* code.text = "Body Weight"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 110
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

Instance: HeightExample
InstanceOf: Height
Usage: #example
Title: "Patient Height"
Description: "Represents the patient's height."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#8302-2
* code.text = "Body Height"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

Instance: BMIExample
InstanceOf: BMI
Usage: #example
Title: "Patient BMI"
Description: "Represents the patient's BMI."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#39156-5
* code.text = "Body mass index (BMI)"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 16.2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* derivedFrom[+] = Reference(WeightExample)
* derivedFrom[+] = Reference(HeightExample)

Instance: RandomBloodSugarExample
InstanceOf: RandomBloodSugar
Usage: #example
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* status = #final
* code = $LNC#15074-8
* code.text = "Glucose"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #H
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].low.value = 3.1
* referenceRange[=].low.unit = "mmol/l"
* referenceRange[=].low.code = #mmol/l
* referenceRange[=].low.system = "http://unitsofmeasure.org"

* referenceRange[=].high.value = 6.2
* referenceRange[=].high.unit = "mmol/l"
* referenceRange[=].high.code = #mmol/l
* referenceRange[=].high.system = "http://unitsofmeasure.org"

Instance: FastingBloodSugarExample
InstanceOf: FastingBloodSugar
Usage: #example
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* status = #final
* code = $LNC#76629-5
* code.text = "Fasting glucose"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 5.4
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #N
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].low.value = 3.9
* referenceRange[=].low.unit = "mmol/l"
* referenceRange[=].low.code = #mmol/l
* referenceRange[=].low.system = "http://unitsofmeasure.org"

* referenceRange[=].high.value = 5.6
* referenceRange[=].high.unit = "mmol/l"
* referenceRange[=].high.code = #mmol/l
* referenceRange[=].high.system = "http://unitsofmeasure.org"

Instance: GeneralPractitionerExample
InstanceOf: GeneralPractitioner
Usage: #example
Title: "Practitioner"
Description: 
    "Represents the practitioners who participated in the observation."
* name[+].prefix = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: TotalCholesterolExample
InstanceOf: TotalCholesterol
Usage: #example
Title: "Total Cholesterol"
Description: "Represents the patient's total cholesterol results."
* status = #final
* code = $LNC#2093-3
* code.text = "Cholesterol"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #H
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].high.value = 5
* referenceRange[=].high.unit = "mmol/l"
* referenceRange[=].high.code = #mmol/l
* referenceRange[=].high.system = "http://unitsofmeasure.org"

Instance: CVDRiskCategoryExample
InstanceOf: CVDRiskCategory
Usage: #example
Title: "Cardiovascular Risk Category"
Description: "Cardiovascular Risk Category"
* status = #final
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* performer = Reference(GeneralPractitionerExample)
* basis[+] = Reference(HIMSPatientExample)
* basis[+] = Reference(RiskBehaviourTobaccoSmokerExample)
* basis[+] = Reference(TotalCholesterolExample)
* basis[+] = Reference(BloodPressureExample)
* basis[+] = Reference(RandomBloodSugarExample)
* basis[+] = Reference(FastingBloodSugarExample)
* prediction[+].outcome = $SCT#395112001
* prediction[=].outcome.text = "Risk of heart attack"
* prediction[=].probabilityDecimal = 0.02

* prediction[=].qualitativeRisk.coding.code = #greater-than-or-equal-to-30
* prediction[=].qualitativeRisk.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-cvd-risk-category"
* prediction[=].qualitativeRisk.text = "Risk Category"

* prediction[=].whenRange.low.value = 39
* prediction[=].whenRange.low.unit = "years"
* prediction[=].whenRange.low.code = #a
* prediction[=].whenRange.low.system = "http://unitsofmeasure.org"

* prediction[=].whenRange.high.value = 49
* prediction[=].whenRange.high.unit = "years"
* prediction[=].whenRange.high.code = #a
* prediction[=].whenRange.high.system = "http://unitsofmeasure.org"

Instance: FollowUpPlanServiceRequestExample
InstanceOf: FollowUpPlanServiceRequest
Usage: #example
Title: "Referral Request For Follow-up Plan"
Description: "Referral Request For Follow-up Plan"
* status = #completed
* intent = #order
* code.coding.code = #Follow-up-at-hlc
* code.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-follow-up-plan"
* code.text = "Follow up at HLC"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* reasonCode[+].coding.code = #Followed-in-6-months-at-hlc
* reasonCode[=].coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-follow-up-reasons"
* reasonCode[=].text = "Followed in 6 months at HLC"
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: GeneralReferralServiceRequestExample
InstanceOf: GeneralReferralServiceRequest
Usage: #example
Title: "General Referral Request"
Description: "General Referral Request"
* status = #completed
* intent = #order
* code = $SCT#3457005
* code.text = "Patient referral"
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: GenericServiceRequestExample
InstanceOf: GenericServiceRequest
Usage: #example
Title: "Generic Service Request"
Description: "Generic Service Reques"
* status = #completed
* intent = #order
* code = $SCT#3457005
* code.text = "Patient referral"
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: FollowUpAtHLCExample
InstanceOf: FollowUpAtHLC
Usage: #example
Title: "Follow-up at HLC"
Description: "Follow-up at HLC"
* status = #active
* intent = #order
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* contributor[+] = Reference(GeneralPractitionerExample)
* contributor[=] = Reference(OrganizationExample)
* activity.reference = Reference(FollowUpPlanServiceRequestExample)

Instance: HIMSCompositionExample
InstanceOf: HIMSComposition
Usage: #example
Title: "HIMS Composition"
Description: "Logically groups all resources into a single document structure."
* identifier.value = "PAT0001-v1"
* identifier.system = "http://openhie.org/fhir/sri-lanka/identifier/document"
* status = #final
* subject = Reference(HIMSPatientExample)
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* type = $LNC#11502-2
* date = "2023-08-22"
* author[+] = Reference(GeneralPractitionerExample)
* author[+] = Reference(OrganizationExample)
* title = "Sri Lanka team to advise on title"

* section[+].title = "Risk Behaviour - Assessment of Physical Activity"
* section[=].code = $SCT#398636004
* section[=].entry[+] = Reference(RiskBehaviourPhysicalActivityExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Risk Behaviour - Tobacco smoking Assessment"
* section[=].code = $LNC#72166-2
* section[=].entry[+] = Reference(RiskBehaviourTobaccoSmokerExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Blood Pressure"
* section[=].code = $SCT#75367002
* section[=].entry[+] = Reference(BloodPressureExample)
* section[=].entry[+] = Reference(HypertensionExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Patient Weight"
* section[=].code = $LNC#3141-9
* section[=].entry[+] = Reference(WeightExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Patient Height"
* section[=].code = $LNC#3137-7
* section[=].entry[+] = Reference(HeightExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Patient BMI"
* section[=].code = $LNC#97057-4
* section[=].entry[+] = Reference(BMIExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Bloodwork"
* section[=].code = $LNC#LA17759-4
* section[=].entry[+] = Reference(RandomBloodSugarExample)
* section[=].entry[+] = Reference(FastingBloodSugarExample)
* section[=].entry[+] = Reference(TotalCholesterolExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Risk Assessment Report"
* section[=].code = $LNC#71482-4
* section[=].entry[+] = Reference(CVDRiskCategoryExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Referral Requests"
* section[=].code = $LNC#LA24277-8
* section[=].entry[+] = Reference(FollowUpPlanServiceRequestExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Treatment and Care"
* section[=].code = $LNC#68833-3
* section[=].entry[+] = Reference(FollowUpAtHLCExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

* section[+].title = "Previous, pre-existing and new conditions"
* section[=].code = $LNC#67804-5
* section[=].entry[+] = Reference(MedicalHistoryExample)
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"

Instance: HypertensionExample
InstanceOf: Hypertension
Usage: #example
Title: "Hypertension"
Description: "Patient is diagnosed with Hypertension due to high blood pressure."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $SCT#38341003
* code.text = "Hypertension"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

* valueQuantity.value = 140
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* derivedFrom[+] = Reference(BloodPressureExample)

Instance: MedicalHistoryExample
InstanceOf: MedicalHistory
Usage: #example
Title: "Medical History"
Description: "Represents previous, pre-existing and new conditions."
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* category[+].coding.code = #encounter-diagnosis
* category[=].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* code.coding.code = #Cerebrovascular-Accident
* code.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-medical-conditions"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* recorder = Reference(GeneralPractitionerExample)
* asserter = Reference(GeneralPractitionerExample)
* recordedDate = "2023-10-06T13:28:17-05:00"

Instance: HHIMSReferralTaskExample
InstanceOf: ReferralTask
Usage: #example
Title: "HHIMS Referral Task"
Description: "Indicates the outcome of a patient's referral."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the referral request, if any."
* for = Reference(HHIMSPatientExample)
* focus = Reference(GeneralReferralServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)

Instance: GenericTaskExample
InstanceOf: GenericTask
Usage: #example
Title: "Generic Task"
Description: "Is primarily used to track the progress of a patient's service request such as referrals and lab orders etc."
* status = #completed
* intent = #order
* for = Reference(HHIMSPatientExample)
* focus = Reference(GeneralReferralServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)

Instance: AllergiesExample
InstanceOf: Allergies
Usage: #example
Title: "Allergy Intolerance"
Description: "Example where a code is used to represent an allergy"
* code = $SCT#28647000
* code.text = "Meat"
* encounter = Reference(TargetFacilityEncounterExample)
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* patient = Reference(HHIMSPatientExample)
* onsetDateTime = "2023-10-11T17:21:33-08:00"
* recorder = Reference(GeneralPractitionerExample)
* type = #allergy

Instance: AllergiesNoCodeExample
InstanceOf: Allergies
Usage: #example
Title: "Allergy Intolerance"
Description: "Example where only a text value is used to represent an allergy"
* code.text = "Meat"
* encounter = Reference(TargetFacilityEncounterExample)
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* patient = Reference(HHIMSPatientExample)
* onsetDateTime = "2023-10-11T17:21:33-08:00"
* recorder = Reference(GeneralPractitionerExample)
* type = #allergy

Instance: PrescriptionsExample
InstanceOf: Prescriptions
Usage: #example
Title: "Prescription Request"
Description: "This is to record a patient's medication prescription request"
* identifier[PrescriptionID].value = "prescription-12345"
* identifier[PrescriptionID].system = "http://openhie.org/fhir/sri-lanka/identifier/prescription"
* identifier[PrescriptionID].type.coding.code = #FILL
* identifier[PrescriptionID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PrescriptionID].type.coding.display = "Filler Identifier"
* identifier[PrescriptionID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* medicationCodeableConcept.coding.code = #Vitamin-A-&-D
* medicationCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-medication-name"
* medicationCodeableConcept.text = "Medication"
* dosageInstruction[+].doseAndRate[+].doseQuantity.value = 3.0
* dosageInstruction[=].timing.repeat.period = 3.0
* dosageInstruction[=].timing.repeat.count = 2
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.duration = 2.0
* dosageInstruction[=].timing.repeat.durationUnit = #d
* dosageInstruction[=].timing.code.coding.code = #BID
* dosageInstruction[=].timing.code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation"
* dispenseRequest.quantity.value = 5
* note.text = "Additional information regarding the patient's medication prescription"
* note.authorReference = Reference(OrganizationExample)
* note.time = "2023-10-11T17:21:33-08:00"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(GeneralPractitionerExample)
* recorder = Reference(GeneralPractitionerExample)

Instance: ProceduresExample
InstanceOf: Procedures
Usage: #example
Title: "Procedures"
Description: "Procedures"
* status = #in-progress
* category = $SCT#409073007
* code.coding.code = #X-Ray
* code.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-procedure-imaging"
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performedDateTime = "2023-10-11T17:21:33-08:00"
* recorder = Reference(GeneralPractitionerExample)
* asserter = Reference(GeneralPractitionerExample)
* performer[+].actor = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)

Instance: InjectionsExample
InstanceOf: Injections
Usage: #example
Title: "Injections"
Description: "Example where a code is used to represent the route of drug admninistration"
* status = #completed
* medicationCodeableConcept.coding.code = #dummy-1
* medicationCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-injection"
* subject = Reference(HHIMSPatientExample)
* context = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2023-10-11T17:21:33-08:00"
* performer[+].actor = Reference(GeneralPractitionerExample)
* dosage.dose.value = 12
* dosage.route = $SCT#47625008
* dosage.route.text = "Intravenous route"

Instance: InjectionsNoCodeExample
InstanceOf: Injections
Usage: #example
Title: "Injections"
Description: "Example where only a text value is used to represent the route of drug admninistration"
* status = #completed
* medicationCodeableConcept.coding.code = #dummy-1
* medicationCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-injection"
* subject = Reference(HHIMSPatientExample)
* context = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2023-10-11T17:21:33-08:00"
* performer[+].actor = Reference(GeneralPractitionerExample)
* dosage.dose.value = 12
* dosage.route.text = "Intravenous route"

Instance: DrugDispensationExample
InstanceOf: DrugDispensation
Usage: #example
Title: "Drug Dispensation"
Description: "Drug Dispensation"
* status = #completed
* subject = Reference(HHIMSPatientExample)
* context = Reference(TargetFacilityEncounterExample)
* performer[+].actor = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* authorizingPrescription[+] = Reference(PrescriptionsExample)
* whenHandedOver = "2023-10-11T17:21:33-08:00"
* receiver[+] = Reference(HHIMSPatientExample)
* medicationCodeableConcept.coding.code = #Vitamin-A-&-D
* medicationCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-medication-name"
* medicationCodeableConcept.text = "Medication"

Instance: InvestigationsServiceRequestExample
InstanceOf: InvestigationsServiceRequest
Usage: #example
Title: "Investigations Request"
Description: "Investigations Request"
* status = #completed
* intent = #order
* code.coding.code = #FBC-WBC-th/uL
* code.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-investigation"
* code.text = "Investigation requested"
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: InvestigationsTaskExample
InstanceOf: InvestigationsTask
Usage: #example
Title: "Investigations Task"
Description: "Is primarily used to track the progress of an investigations request."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the investigations request, if any."
* for = Reference(HHIMSPatientExample)
* focus = Reference(GeneralReferralServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* executionPeriod.start = "2023-10-06T13:28:17-05:00"
* executionPeriod.end = "2023-10-09T16:28:17-05:00"

Instance: ImagingServiceRequestExample
InstanceOf: ImagingServiceRequest
Usage: #example
Title: "Imaging Request"
Description: "Imaging Request"
* status = #completed
* intent = #order
* code.coding.code = #X-Ray
* code.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-procedure-imaging"
* code.text = "Imaging requested"
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: ImagingTaskExample
InstanceOf: ImagingTask
Usage: #example
Title: "Imaging Task"
Description: "Is primarily used to track the progress of an imaging request."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the imaging request, if any."
* for = Reference(HHIMSPatientExample)
* focus = Reference(GeneralReferralServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* executionPeriod.start = "2023-10-06T13:28:17-05:00"
* executionPeriod.end = "2023-10-09T16:28:17-05:00"

Instance: ImagingExample
InstanceOf: Imaging
Usage: #example
Title: "Imaging Study"
Description: "Imaging Study"
* status = #registered
* subject = Reference(HHIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* started = "2023-10-06T13:28:17-05:00"
* basedOn[+] = Reference(ImagingServiceRequestExample)
* referrer = Reference(GeneralPractitionerExample)
* description = "Imaging Description"
* location = Reference(ProvidersLocationExample)
* series.uid = "89c0c298-6c30-11ee-b962-0242ac120002"
* series.modality = $DICOM#XA
* series.performer[+].actor = Reference(GeneralPractitionerExample)
* procedureReference = Reference(ProceduresExample)