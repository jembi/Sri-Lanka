Instance: OrganizationExample
InstanceOf: HIMSOrganization
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
Title: "Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."

* identifier[PPN][+].value = "A patient can have multiple passport IDs."
* identifier[PPN][=].extension[PASSID][+].valueString = "Passport-1"
* identifier[PPN][=].extension[PASSID][+].valueString = "Passport-2"
* identifier[PPN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/passport"
* identifier[PPN][=].type.coding.code = #PPN
* identifier[PPN][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN][=].type.text = "Passport number"

* identifier[Drivers][+].value = "drivers license"
* identifier[Drivers][=].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"
* identifier[Drivers][=].type.coding.code = #DL
* identifier[Drivers][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers][=].type.text = "Driver's license number"

* identifier[NIC][+].value = "national identity number"
* identifier[NIC][=].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"
* identifier[NIC][=].type.coding.code = #NNLKA
* identifier[NIC][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[NIC][=].type.text = "National identity number"

* identifier[SCN][+].value = "senior citizen number"
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

Instance: RiskBehaviourPhysicalActivityExample
InstanceOf: RiskBehaviourPhysicalActivity
Usage: #example
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* status = #final
* code.coding.code = #106020009
* code.coding.system = "http://snomed.info/sct"
* code.text = "Physical Activity"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept.coding.code = #Physically-active
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-risk-behaviour-physical-activity"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)

Instance: RiskBehaviourTobaccoSmokerExample
InstanceOf: RiskBehaviourTobaccoSmoker
Usage: #example
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* status = #final
* code.coding.code = #72166-2
* code.coding.system = "http://loinc.org"
* code.text = "Tobacco smoking"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept.coding.code = #User
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-risk-behaviour-tobacco-smoker"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)

Instance: BloodPressureExample
InstanceOf: BloodPressure
Usage: #example
Title: "Blood Pressure Observation"
Description: "Represents the Systolic and Diastolic blood pressure for the patient."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #85354-9
* code.coding.system = "http://loinc.org"
* code.text = "Blood Pressure"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)

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
* code.coding.code = #29463-7
* code.coding.system = "http://loinc.org"
* code.text = "Body Weight"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 110
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)

Instance: HeightExample
InstanceOf: Height
Usage: #example
Title: "Patient Height"
Description: "Represents the patient's height."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #8302-2
* code.coding.system = "http://loinc.org"
* code.text = "Body Height"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)

Instance: BMIExample
InstanceOf: BMI
Usage: #example
Title: "Patient BMI"
Description: "Represents the patient's BMI."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #39156-5
* code.coding.system = "http://loinc.org"
* code.text = "Body mass index (BMI)"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 16.2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)
* derivedFrom[+] = Reference(WeightExample)
* derivedFrom[+] = Reference(HeightExample)

Instance: RandomBloodSugarExample
InstanceOf: RandomBloodSugar
Usage: #example
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* status = #final
* code.coding.code = #15074-8
* code.coding.system = "http://loinc.org"
* code.text = "Glucose"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)
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
* code.coding.code = #76629-5
* code.coding.system = "http://loinc.org"
* code.text = "Fasting glucose"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 5.4
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)
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

Instance: ObservingPractitionerExample
InstanceOf: ObservingPractitioner
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
* code.coding.code = #2093-3
* code.coding.system = "http://loinc.org"
* code.text = "Cholesterol"
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(ObservingPractitionerExample)
* interpretation[+].coding.code = #H
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].high.value = 5
* referenceRange[=].high.unit = "mmol/l"
* referenceRange[=].high.code = #mmol/l
* referenceRange[=].high.system = "http://unitsofmeasure.org"

Instance: CVSRiskFactorExample
InstanceOf: CVSRiskFactor
Usage: #example
Title: "Cardiovascular Risk Assesment"
Description: "Cardiovascular Risk Assesment"
* identifier[CVS].value = "risk-assessment-cardiac"
* identifier[CVS].system = "http://openhie.org/fhir/sri-lanka/identifier/cvs-risk-factor"
* identifier[CVS].type.coding.code = #FILL
* identifier[CVS].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[CVS].type.text = "CVS risk factor identifier"
* status = #final
* subject = Reference(HIMSPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* performer = Reference(ObservingPractitionerExample)
* basis[+] = Reference(HIMSPatientExample)
* basis[+] = Reference(RiskBehaviourTobaccoSmokerExample)
* basis[+] = Reference(TotalCholesterolExample)
* basis[+] = Reference(BloodPressureExample)
* basis[+] = Reference(RandomBloodSugarExample)
* basis[+] = Reference(FastingBloodSugarExample)
* prediction[+].outcome.coding.code = #395112001
* prediction[=].outcome.coding.system = "http://snomed.info/sct"
* prediction[=].outcome.text = "Risk of heart attack"
* prediction[=].probabilityDecimal = 0.02

* prediction[=].whenRange.low.value = 39
* prediction[=].whenRange.low.unit = "years"
* prediction[=].whenRange.low.code = #a
* prediction[=].whenRange.low.system = "http://unitsofmeasure.org"

* prediction[=].whenRange.high.value = 49
* prediction[=].whenRange.high.unit = "years"
* prediction[=].whenRange.high.code = #a
* prediction[=].whenRange.high.system = "http://unitsofmeasure.org"
