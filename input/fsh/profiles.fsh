Profile: ServiceProvider
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

Profile: GeneralPractitioner
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
* reasonCode 0..* MS
* reasonCode ^definition =
    "reason(s) why this should be supported."
* reasonCode from VSReasonForEncounter (extensible)
* location 0..* MS
* location ^definition =
    "reason(s) why this should be supported."
* location.location 1..1
* participant 1..*
* participant.individual 1..1

Profile: ProvidersLocation
Parent: Location
Id: providers-location
Title: "Providers Location"
Description: "Providers Location"
* identifier 0..*
* identifier ^definition =
    "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    LocationID 0..1 MS

* identifier[LocationID] ^definition =
    "reason(s) why this should be supported."
* identifier[LocationID].extension contains MultipleValuesForPatientIdentifier named LocID 1..*
* identifier[LocationID].value 1..1
* identifier[LocationID].value = "A provider's location may be associated with multiple identifiers."
* identifier[LocationID].system = "http://openhie.org/fhir/sri-lanka/identifier/provider-location"
* identifier[LocationID].type.coding.code = #PIN
* identifier[LocationID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[LocationID].type.text = "Provider location identifier"
* name 1..1
* status 1..1
* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."
* address 0..1 MS
* address ^definition =
    "reason(s) why this should be supported."
* managingOrganization 1..1

Profile: NotifiableDiseasesNotified
Parent: Communication
Id: notifiable-diseases-notified
Title: "Notifiable Diseases Notified"
Description: "Notifiable Diseases Notified"
* status 1..1
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* sent 0..1 MS
* sent ^definition =
    "reason(s) why this should be supported."

Profile: HIMSPatient
Parent: HHIMSPatient
Id: hims-patient
Title: "HIMS Patient"
Description: 
    "Is used to document demographics and other administrative information about an individual receiving care or other health-related services. 
    In addition to the profiled data elements, this profile includes all data elements from the HHIMS Patient profile."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PPN 1..1 and
    Drivers 0..1 MS and
    SCN 0..1 MS

* identifier[PPN].extension contains MultipleValuesForPatientIdentifier named PASSID 1..*
* identifier[PPN].value 1..1
* identifier[PPN].value = "A patient can have multiple passport IDs."
* identifier[PPN].system = "http://openhie.org/fhir/sri-lanka/identifier/passport"
* identifier[PPN].type.coding.code = #PPN
* identifier[PPN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN].type.text = "Passport number"

* identifier[Drivers] ^definition =
    "reason(s) why this should be supported."
* identifier[Drivers].extension contains MultipleValuesForPatientIdentifier named DriversID 1..*
* identifier[Drivers].value 1..1
* identifier[Drivers].value = "A patient may have multiple drivers license numbers."
* identifier[Drivers].system = "http://openhie.org/fhir/sri-lanka/identifier/drivers"
* identifier[Drivers].type.coding.code = #DL
* identifier[Drivers].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers].type.text = "Driver's license number"

* identifier[SCN] ^definition =
    "reason(s) why this should be supported."
* identifier[SCN].extension contains MultipleValuesForPatientIdentifier named SCNID 1..*
* identifier[SCN].value 1..1
* identifier[SCN].value = "A patient may have multiple senior citizen numbers."
* identifier[SCN].system = "http://openhie.org/fhir/sri-lanka/identifier/scn"
* identifier[SCN].type.coding.code = #SCN
* identifier[SCN].type.coding.system = "http://openhie.org/fhir/sri-lanka/CodeSystem/cs-identifier-types"
* identifier[SCN].type.text = "Senior Citizen Number"

Extension: MultipleValuesForPatientIdentifier
Id: multiple-values-for-patient-identifier
Title: "Extension For Patient Idenitifiers Needing Multiple Values"
Description: "This extension can be used by those patient identifiers where multiple values need to be associated with a single identifier slice."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Patient.identifier"
* ^context[+].type = #element
* ^context[=].expression = "Location.identifier"

Profile: HHIMSPatient
Parent: Patient
Id: hhims-patient
Title: "HHIMS Patient"
Description: "Is used to document demographics and other administrative information about an HHIMS individual receiving care or other health-related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NIC 0..1 MS and
    PHN 1..1

* identifier[NIC] ^definition =
    "reason(s) why this should be supported."
* identifier[NIC].extension contains MultipleValuesForPatientIdentifier named NICID 1..*
* identifier[NIC].value 1..1
* identifier[NIC].value = "A patient may have multiple national identity numbers."
* identifier[NIC].system = "http://openhie.org/fhir/sri-lanka/identifier/nic"
* identifier[NIC].type.coding.code = #NNLKA
* identifier[NIC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[NIC].type.text = "National identity number"

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
    "reason(s) why this should be supported."
* address.city 1..1
* address.line 1..*
* address.district 1..1
* address.state 1..1
* address.country 1..1
* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."

Profile: RiskBehaviourPhysicalActivity
Parent: Observation
Id: risk-behaviour-physical-activity
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* status 1..1
* code = $SCT#106020009
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
* code = $LNC#72166-2
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
* code = $LNC#85354-9
* code.text = "Blood Pressure"
* category 1..1
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
    "reason(s) why this should be supported."
* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value 1..1
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic] ^definition =
    "reason(s) why this should be supported."
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
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#29463-7
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
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#8302-2
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
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#39156-5
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
* code = $LNC#15074-8
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
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: FastingBloodSugar
Parent: Observation
Id: fasting-blood-sugar
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* status 1..1
* code = $LNC#76629-5
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
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: TotalCholesterol
Parent: Observation
Id: total-cholesterol
Title: "Total Cholesterol"
Description: "Represents the patient's total cholesterol results."
* status 1..1
* code = $LNC#2093-3
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
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: CVDRiskCategory
Parent: RiskAssessment
Id: cvd-risk-category
Title: "Cardiovascular Risk Category"
Description: "Cardiovascular Risk Category"
* status 1..1
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* occurrenceDateTime 1..1
* performer 1..1
* basis 1..*
* prediction 1..*
* prediction.outcome 1..1
* prediction.probabilityDecimal 0..1 MS
* prediction.qualitativeRisk 1..1
* prediction.qualitativeRisk from VSCVDRiskCategory (required)
* prediction.probabilityDecimal ^definition =
    "reason(s) why this should be supported."
* prediction.whenRange 1..1

Profile: ReferralTask
Parent: Task
Id: referral-task
Title: "Referral Task"
Description: "Is primarily used to track the progress of a patient's referral."
* status 1..1
* intent 1..1
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* for 1..1
* for only Reference(Patient)
* focus 1..1
* focus only Reference(ServiceRequest)
* encounter 1..1
* authoredOn 1..1
* requester 1..1
* location 1..1

Profile: GenericServiceRequest
Parent: ServiceRequest
Id: generic-service-request
Title: "Generic Service Request"
Description: "Generic Service Request"
* status 1..1
* intent 1..1
* code 1..1
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* requester 1..1
* reasonCode 0..* MS
* reasonCode ^definition =
    "reason(s) why this should be supported."
* locationReference 0..* MS
* locationReference ^definition =
    "reason(s) why this should be supported."
* occurrenceDateTime 1..1

Profile: GeneralReferralServiceRequest
Parent: GenericServiceRequest
Id: general-referral-request
Title: "General Referral Request"
Description: "General Referral Request"
* code from http://hl7.org/fhir/ValueSet/procedure-code (extensible)
* code = $SCT#3457005

Profile: FollowUpPlanServiceRequest
Parent: GenericServiceRequest
Id: follow-up-plan
Title: "Referral Request For Follow-up Plan"
Description: "Referral Request For Follow-up Plan"
* code from VSFollowUpPlan (required)
* reasonCode from VSFollowUpReasons (extensible)

Profile: FollowUpAtHLC 
Parent: CarePlan
Id: follow-up-at-hlc
Title: "Follow-up at HLC"
Description: "Follow-up at HLC"
* status 1..1
* intent 1..1
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* period 1..1
* contributor 1..*
* activity 1..* 
* activity.reference 1..1
* activity.reference only Reference (ServiceRequest)

Profile: HIMSComposition
Parent: Composition
Id: hims-composition
Title: "HIMS Composition"
Description: "Logically groups all resources into a single document structure."
* status 1..1
* subject 1..1
* encounter 1..1
* type 1..1
* date 1..1
* author 1..*
* title 1..1
* section 1..*

Profile: Hypertension
Parent: Observation
Id: hypertension
Title: "Hypertension"
Description: "Patient is diagnosed with Hypertension due to high blood pressure."
* status 1..1
* code = $SCT#38341003
* code.text = "Hypertension"
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueQuantity 1..1
* valueQuantity.value 1..1
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* performer 1..*
* derivedFrom 1..*
* derivedFrom only Reference(Observation)

Profile: MedicalHistory
Parent: Condition
Id: medical-history
Title: "Medical History"
Description: "Represents previous, pre-existing and new conditions."
* clinicalStatus 1..1
* verificationStatus 0..1 MS
* verificationStatus ^definition =
    "reason(s) why this should be supported."
* category 0..*
* category ^definition =
    "reason(s) why this should be supported."
* code 1..1
* code from VSMedicalConditions (extensible)
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* recorder 0..1 MS
* recorder ^definition =
    "reason(s) why this should be supported."
* asserter 0..1 MS
* asserter ^definition =
    "reason(s) why this should be supported."
* recordedDate 1..1

Profile: Allergies
Parent: AllergyIntolerance
Id: allergy-intolerance
Title: "Allergy Intolerance"
Description: "Allergy Intolerance"
* encounter 1..1
* code 0..1 MS
* code ^definition =
    "reason(s) why this should be supported."
* code.text 1..1
* code from VSAllergyIntoleranceSubstanceCondition (preferred)
* code ^binding.extension[+].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/ValueSet/vs-allergy-intolerance-snomed-ct-free-set"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* code ^binding.extension[+].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/ValueSet/vs-whoatc"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* code ^binding.extension[+].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/ValueSet/vs-absent-or-unknown-allergies"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Absent and unknown codes for allergy or intolerance."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition or or a code for absent/unknown allergy."

* clinicalStatus 0..1 MS
* clinicalStatus ^definition =
    "reason(s) why this should be supported."
* verificationStatus 0..1 MS
* verificationStatus ^definition =
    "reason(s) why this should be supported."
* patient 1..1
* onsetDateTime 0..1 MS
* onsetDateTime ^definition =
    "reason(s) why this should be supported."
* recorder 0..1 MS
* recorder ^definition =
    "reason(s) why this should be supported."
* type 1..1

Profile: Procedures
Parent: Procedure
Id: procedure
Title: "Procedures"
Description: "Procedures"
* basedOn 0..* MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* status 1..1
* category 0..1 MS
* category ^definition =
    "reason(s) why this should be supported."
* code 1..1
* code from VSProcedures (extensible)
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* performedDateTime 1..1
* recorder 0..1 MS
* recorder ^definition =
    "reason(s) why this should be supported."
* asserter 0..1 MS
* asserter ^definition =
    "reason(s) why this should be supported."
* performer 1..*
* performer.actor 1..1
* location 0..1 MS
* location ^definition =
    "reason(s) why this should be supported."

Profile: Injections
Parent: MedicationAdministration
Id: injection
Title: "Injections"
Description: "Injections"
* status 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept from VSInjections (extensible)
* subject 1..1
* context 1..1
* effectiveDateTime 1..1
* performer 1..*
* performer.actor 1..1
* dosage 1..1
* dosage.dose 1..1
* dosage.route 1..1
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes (example)
* dosage.route.text 1..1
