Instance: OrganizationExample
InstanceOf: HIMSOrganization
Usage: #example
Title: "Organization"
Description: "Organization providing health related services."
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://openhie.org/fhir/sri-lanka/identifier/hiv-organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
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
* identifier[PPN][=].type.coding.display = "Passport number"
* identifier[PPN][=].type.text = "Passport number"

* identifier[Drivers][+].value = "drivers license"
* identifier[Drivers][=].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"

* identifier[NIC][+].value = "national identity number"
* identifier[NIC][=].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"

* identifier[SCN][+].value = "senior citizen number"
* identifier[SCN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/scn"

* identifier[PHN][+].value = "personal health number"
* identifier[PHN][=].system = "http://openhie.org/fhir/sri-lanka/identifier/phn"

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
* performer = Reference(OrganizationExample)

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
* performer = Reference(OrganizationExample)