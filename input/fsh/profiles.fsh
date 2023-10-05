Profile: HIMSOrganization
Parent: Organization
Id: organization
Title: "Organization"
Description: "Organization providing health related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/sri-lanka/identifier/hiv-organization" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* name 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status 1..1
* class 1..1
* subject 1..1
* period 1..1

Profile: HIMSPatient
Parent: Patient
Id: hims-patient
Title: "Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* ^description = 
    "Sri Lanka team to provide a rationale for this structure defintion and when it is appopriate to use it. It should also describe the must support (aka MS) elements."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PPN 1..1 and
    Drivers 0..1 and
    NIC 0..1 and
    SCN 0..1 and
    PHN 1..1

* identifier[PPN].extension contains MultipleValuesForPatientIdentifier named PASSID 1..*
* identifier[PPN].value 1..1
* identifier[PPN].value = "A patient can have multiple passport IDs."
* identifier[PPN].system = "http://openhie.org/fhir/sri-lanka/identifier/passport"
* identifier[PPN].type.coding.code = #PPN
* identifier[PPN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN].type.coding.display = "Passport number"
* identifier[PPN].type.text = "Passport number"

* identifier[Drivers].value 1..1
* identifier[Drivers].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"

* identifier[NIC].value 1..1
* identifier[NIC].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"

* identifier[SCN].value 1..1
* identifier[SCN].system = "http://openhie.org/fhir/sri-lanka/identifier/scn"

* identifier[PHN].value 1..1
* identifier[PHN].system = "http://openhie.org/fhir/sri-lanka/identifier/phn"

* name 1..*
* name.given 1..*
* name.family 1..1
* gender 1..1
* birthDate 1..1
* address 0..* MS
* address ^definition =
    "Sri Lanka team to provide motivation for supporting this element."
* address.city 1..1
* address.line 1..*
* address.district 1..1
* address.state 1..1
* address.country 1..1
* contact.telecom 0..* MS
* contact.telecom ^definition =
    "Sri Lanka team to provide motivation for supporting this element."

Extension: MultipleValuesForPatientIdentifier
Id: multiple-values-for-patient-identifier
Title: "Extension For Patient Idenitifiers Needing Multiple Values"
Description: "This extension can be used by those patient identifiers where multiple values need to be associated with a single identifier slice."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Patient.identifier"

Profile: RiskBehaviourPhysicalActivity
Parent: Observation
Id: risk-behaviour-physical-activity
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* ^description = 
    "Sri Lanka team to provide a rationale for this structure defintion and when it is appopriate to use it."
* status 1..1
* code.coding.code = #106020009
* code.coding.system = "http://snomed.info/sct"
* code.text = "Physical Activity"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRiskBehaviourPhysicalActivity (required)
* performer 1..*

Profile: RiskBehaviourTobaccoSmoker
Parent: Observation
Id: risk-behaviour-tobacco-smoker
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* ^description = 
    "Sri Lanka team to provide a rationale for this structure defintion and when it is appopriate to use it."
* status 1..1
* code.coding.code = #72166-2
* code.coding.system = "http://loinc.org"
* code.text = "Tobacco smoking"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRiskBehaviourTobaccoSmoker (required)
* performer 1..*

Profile: BloodPressure
Parent: Observation
Id: blood-pressure
Title: "Blood Pressure Observation"
Description: "Represents the patient's blood pressure."
* ^description = 
    "Sri Lanka team to provide a rationale for this structure defintion and when it is appopriate to use it. It should also describe the must support (aka MS) elements."
* status 1..1
* code.coding.code = #85354-9
* code.coding.system = "http://loinc.org"
* code.text = "Blood Pressure"
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Slice based on the type of component.code."
* component contains
    Systolic 0..1 MS and
    Diastolic 0..1 MS

* component[Systolic] ^definition =
    "Sri Lanka team to provide motivation for supporting this slice."
* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value 1..1
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic] ^definition =
    "Sri Lanka team to provide motivation for supporting this slice."
* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value 1..1
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code = #mm[Hg]
* performer 1..*