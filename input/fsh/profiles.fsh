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
* identifier[XX].system = "http://openhie.org/fhir/sri-lanka/identifier/organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Organization identifier"
* name 1..1

Profile: ObservingPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner"
Description: 
    "Represents the practitioners who participated in the observation."
* name 1..*
* name.given 1..*
* name.family 1..1
* telecom 1..*

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
Title: "HIMS Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
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
* identifier[PPN].type.text = "Passport number"

* identifier[Drivers].value 1..1
* identifier[Drivers].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"
* identifier[Drivers].type.coding.code = #DL
* identifier[Drivers].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers].type.text = "Driver's license number"

* identifier[NIC].value 1..1
* identifier[NIC].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"
* identifier[NIC].type.coding.code = #NNLKA
* identifier[NIC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[NIC].type.text = "National identity number"

* identifier[SCN].value 1..1
* identifier[SCN].system = "http://openhie.org/fhir/sri-lanka/identifier/scn"
* identifier[SCN].type.coding.code = #SCN
* identifier[SCN].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[SCN].type.text = "Senior Citizen Number"

* identifier[PHN].value 1..1
* identifier[PHN].system = "http://openhie.org/fhir/sri-lanka/identifier/phn"
* identifier[PHN].type.coding.code = #PHN
* identifier[PHN].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[PHN].type.text = "Personal Health Number"

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

Profile: Weight
Parent: Observation
Id: weight
Title: "Patient Weight"
Description: "Represents the patient's weight."
* status 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #29463-7
* code.coding.system = "http://loinc.org"
* code.text = "Body Weight"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
* performer 1..*

Profile: Height
Parent: Observation
Id: height
Title: "Patient Height"
Description: "Represents the patient's height."
* status 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #8302-2
* code.coding.system = "http://loinc.org"
* code.text = "Body Height"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* performer 1..*

Profile: BMI
Parent: Observation
Id: bmi
Title: "Patient BMI"
Description: "Represents the patient's BMI."
* status 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #39156-5
* code.coding.system = "http://loinc.org"
* code.text = "Body mass index (BMI)"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* performer 1..*
* derivedFrom 0..*

Profile: RandomBloodSugar
Parent: Observation
Id: random-blood-sugar
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* status 1..1
* code.coding.code = #15074-8
* code.coding.system = "http://loinc.org"
* code.text = "Glucose"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer 1..*
* interpretation 0..* MS
* interpretation ^definition =
    "Sri Lanka team to provide motivation for supporting this element."
* referenceRange 0..* MS
* referenceRange ^definition =
    "Sri Lanka team to provide motivation for supporting this element."

Profile: FastingBloodSugar
Parent: Observation
Id: fasting-blood-sugar
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* status 1..1
* code.coding.code = #76629-5
* code.coding.system = "http://loinc.org"
* code.text = "Fasting glucose"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer 1..*
* interpretation 0..* MS
* interpretation ^definition =
    "Sri Lanka team to provide motivation for supporting this element."
* referenceRange 0..* MS
* referenceRange ^definition =
    "Sri Lanka team to provide motivation for supporting this element."

Profile: TotalCholesterol
Parent: Observation
Id: total-cholesterol
Title: "Total Cholesterol"
Description: "Represents the patient's total cholesterol results."
* status 1..1
* code.coding.code = #2093-3
* code.coding.system = "http://loinc.org"
* code.text = "Cholesterol"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* performer 1..*
* interpretation 0..* MS
* interpretation ^definition =
    "Sri Lanka team to provide motivation for supporting this element."
* referenceRange 0..* MS
* referenceRange ^definition =
    "Sri Lanka team to provide motivation for supporting this element."

Profile: CVSRiskFactor
Parent: RiskAssessment
Id: cvs-risk-factor
Title: "Cardiovascular Risk Assesment"
Description: "Cardiovascular Risk Assesment"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    CVS 1..1
* identifier[CVS].value 1..1
* identifier[CVS].system = "http://openhie.org/fhir/sri-lanka/identifier/cvs-risk-factor"
* identifier[CVS].type.coding.code = #FILL
* identifier[CVS].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[CVS].type.text = "CVS risk factor identifier"
* status 1..1
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* occurrenceDateTime 1..1
* performer 1..1
* performer only Reference(Practitioner or PractitionerRole)
* basis 1..*
* prediction 1..*
* prediction.outcome 1..1
* prediction.probabilityDecimal 1..1
* prediction.whenRange 1..1
