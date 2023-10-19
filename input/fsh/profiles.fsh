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
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason (preferred)
* reasonCode ^binding.extension[+].extension[+].url = "purpose"
* reasonCode ^binding.extension[=].extension[=].valueCode = #candidate
* reasonCode ^binding.extension[=].extension[+].url = "valueSet"
* reasonCode ^binding.extension[=].extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/ValueSet/vs-reason-for-encounter"
* reasonCode ^binding.extension[=].extension[+].url = "documentation"
* reasonCode ^binding.extension[=].extension[=].valueMarkdown = "Sri Lanka Proprietary Reasons for the encounter."
* reasonCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
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
Description: "Represents the physical location of the provider."
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
Description: "Represents a message communicated to the practitioner about a patient's encounter."
* status 1..1
* subject 1..1
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

Profile: GenericObservation
Parent: Observation
Id: generic-observation
Title: "Generic Observation"
Description: "Base Observation elements that are inherited by other Observations resources."
* status 1..1
* code 1..1
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* performer 1..*

Profile: RiskBehaviourPhysicalActivity
Parent: GenericObservation
Id: risk-behaviour-physical-activity
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* code = $SCT#106020009
* code.text = "Physical Activity"
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRiskBehaviourPhysicalActivity (extensible)

Profile: RiskBehaviourTobaccoSmoker
Parent: GenericObservation
Id: risk-behaviour-tobacco-smoker
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* code = $LNC#72166-2
* code.text = "Tobacco smoking"
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRiskBehaviourTobaccoSmoker (extensible)

Profile: BloodPressure
Parent: GenericObservation
Id: blood-pressure
Title: "Blood Pressure Observation"
Description: "Represents the patient's blood pressure."
* code = $LNC#85354-9
* code.text = "Blood Pressure"
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
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
* component[Systolic].code.text = "Systolic blood pressure"
* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value 1..1
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic] ^definition =
    "reason(s) why this should be supported."
* component[Diastolic].code.text = "Diastolic blood pressure"
* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value 1..1
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code = #mm[Hg]

Profile: Weight
Parent: GenericObservation
Id: weight
Title: "Patient Weight Observation"
Description: "Represents the patient's weight."
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#29463-7
* code.text = "Body Weight"
* valueQuantity.value 1..1
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg

Profile: Height
Parent: GenericObservation
Id: height
Title: "Patient Height Observation"
Description: "Represents the patient's height."
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#8302-2
* code.text = "Body Height"
* valueQuantity.value 1..1
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

Profile: BMI
Parent: GenericObservation
Id: bmi
Title: "Patient BMI Observation"
Description: "Represents the patient's BMI."
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#39156-5
* code.text = "Body mass index (BMI)"
* valueQuantity.value 1..1
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* derivedFrom 0..*

Profile: RandomBloodSugar
Parent: GenericObservation
Id: random-blood-sugar
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* code = $LNC#15074-8
* code.text = "Glucose"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: FastingBloodSugar
Parent: GenericObservation
Id: fasting-blood-sugar
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* code = $LNC#76629-5
* code.text = "Fasting glucose"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: TotalCholesterol
Parent: GenericObservation
Id: total-cholesterol
Title: "Total Cholesterol Observation"
Description: "Represents the patient's total cholesterol results."
* code = $LNC#2093-3
* code.text = "Cholesterol"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/l"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/l
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

Profile: CVDRiskCategory
Parent: RiskAssessment
Id: cvd-risk-category
Title: "Cardiovascular Risk Assessment"
Description: "Represents the patient's CVD risk score."
* status 1..1
* subject 1..1
* encounter 1..1
* occurrenceDateTime 1..1
* code 1..1
* code = $SCT#441829007
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

Profile: GenericTask
Parent: Task
Id: generic-task
Title: "Generic Task"
Description: "Base Task elements that are inherited by other Task resources."
* status 1..1
* intent 1..1
* for 1..1
* encounter 1..1
* authoredOn 1..1
* requester 1..1
* location 1..1
* executionPeriod 0..1 MS
* executionPeriod ^definition =
    "reason(s) why this should be supported."

Profile: ReferralTask
Parent: GenericTask
Id: referral-task
Title: "Referral Task"
Description: "Is primarily used to track the progress of a patient's referral."
* focus 1..1
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."

Profile: GenericServiceRequest
Parent: ServiceRequest
Id: generic-service-request
Title: "Generic Service Request"
Description: "Base ServiceRequest elements that are inherited by other ServiceRequest resources."
* status 1..1
* intent 1..1
* code 1..1
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* subject 1..1
* encounter 1..1
* requester 1..1
* reasonCode 0..* MS
* reasonCode ^definition =
    "reason(s) why this should be supported."
* locationReference 0..* MS
* locationReference ^definition =
    "reason(s) why this should be supported."


Profile: GeneralReferralServiceRequest
Parent: GenericServiceRequest
Id: general-referral-request
Title: "General Referral Request"
Description: "Used to initiate a request for a referral."
* code 1..1
* code from http://hl7.org/fhir/ValueSet/procedure-code (extensible)
* code = $SCT#3457005
* code.text = "Patient referral"
* occurrenceDateTime 1..1

Profile: FollowUpPlanServiceRequest
Parent: GenericServiceRequest
Id: follow-up-plan
Title: "Referral Request For Follow-up Plan"
Description: "Used to initiate a referral request for a Follow-up Plan."
* code 1..1
* code from VSFollowUpPlan (extensible)
* reasonCode from VSFollowUpReasons (extensible)
* occurrenceTiming 1..1
* occurrenceTiming.repeat.duration 1..1
* occurrenceTiming.repeat.durationUnit 1..1
* occurrenceTiming.repeat.count 1..1
* occurrenceTiming.repeat.count = 1

Profile: FollowUpAtHLC 
Parent: CarePlan
Id: follow-up-at-hlc
Title: "Follow-up at HLC"
Description: "Used to record the follow-up event for the patient at HLC."
* status 1..1
* intent 1..1
* subject 1..1
* encounter 1..1
* period 1..1
* contributor 1..*
* activity 1..* 
* activity.reference 1..1
* activity.reference only Reference(FollowUpPlanServiceRequest)

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
Description: "Used to represent the patient's allergies."
* encounter 1..1
* code 0..1 MS
* code ^definition =
    "reason(s) why this should be supported."
* code.text 1..1
* code from VSAllergies (extensible)
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

Profile: Prescriptions
Parent: MedicationRequest
Id: medication-request
Title: "Prescription Request"
Description: "This is to record a patient's medication prescription request"
* authoredOn 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PrescriptionID 1..1
* identifier[PrescriptionID].value 1..1
* identifier[PrescriptionID].system = "http://openhie.org/fhir/sri-lanka/identifier/prescription"
* identifier[PrescriptionID].type.coding.code = #FILL
* identifier[PrescriptionID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PrescriptionID].type.coding.display = "Filler Identifier"
* identifier[PrescriptionID].type.text = "Prescription identifier"

* status 1..1
* intent 1..1
* subject 1..1
* encounter 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept from VSMedicationNames (extensible)
* dosageInstruction.doseAndRate.doseQuantity 1..1
* dosageInstruction.timing.repeat.count 1..1
* dosageInstruction.timing.repeat.duration 1..1
* dosageInstruction.timing.repeat.durationUnit 1..1
* dosageInstruction.timing.repeat.period 1..1
* dosageInstruction.timing.repeat.periodUnit 1..1
* dosageInstruction.timing.repeat.frequency 1..1
* dosageInstruction.timing.code 0..1 MS
* dosageInstruction.timing.code ^definition =
    "reason(s) why this should be supported."
* note 0..* MS
* note ^definition =
    "reason(s) why this should be supported."
* dispenseRequest.quantity 0..1 MS
* dispenseRequest.quantity ^definition =
    "reason(s) why this should be supported."
* requester 0..1 MS
* requester ^definition =
    "reason(s) why this should be supported."
* performer 0..1 MS
* performer ^definition =
    "reason(s) why this should be supported."
* recorder 0..1 MS
* recorder ^definition =
    "reason(s) why this should be supported."

Profile: Procedures
Parent: Procedure
Id: procedure
Title: "Procedures"
Description: "This represents the procedure that was performed on a patient."
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
Description: "Used to represent medication that is administered intravenously."
* status 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept from http://hl7.org/fhir/ValueSet/medication-codes (example)
* medicationCodeableConcept.text 1..1
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

Profile: DrugDispensation
Parent: MedicationDispense
Id: drug-dispensation
Title: "Drug Dispensation"
Description: "Used to represent dispensed medication for a patient."
* status 1..1
* subject 1..
* context 1..1
* performer 0..1 MS
* performer ^definition =
    "reason(s) why this should be supported."
* location 0..1 MS
* location ^definition =
    "reason(s) why this should be supported."
* authorizingPrescription 1..*
* whenHandedOver 1..1
* receiver 1..*
* medicationCodeableConcept 1..1
* medicationCodeableConcept from VSMedicationNames (extensible)

Profile: InvestigationsServiceRequest
Parent: GenericServiceRequest
Id: investigations-request
Title: "Investigations Request"
Description: "Used to initiate a request for an investigation."
* code from VSInvestigations (extensible)
* occurrenceDateTime 1..1

Profile: InvestigationsTask
Parent: GenericTask
Id: investigations-task
Title: "Investigations Task"
Description: "Is primarily used to track the progress of an investigations request."
* basedOn 1..*
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* executionPeriod 1..1

Profile: ImagingServiceRequest
Parent: GenericServiceRequest
Id: imaging-request
Title: "Imaging Request"
Description: "Used to initiate the request for imaging to be done."
* code from VSImagingProcedures (extensible)
* occurrenceDateTime 1..1

Profile: ImagingTask
Parent: GenericTask
Id: imaging-task
Title: "Imaging Task"
Description: "Is primarily used to track the progress of an imaging request."
* basedOn 1..*
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* executionPeriod 1..1

Profile: Imaging
Parent: ImagingStudy
Id: imaging-study
Title: "Imaging Study"
Description: "Used to represent the content or results of a imaging study."
* status 1..1
* subject 1..1
* encounter 1..1
* started 0..1 MS
* started ^definition =
    "reason(s) why this should be supported."
* basedOn 1..1
* referrer 0..1 MS
* referrer ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* location 0..1 MS
* location ^definition =
    "reason(s) why this should be supported."
* series 1..*
* series.uid 1..1
* series.modality 1..1
* series.description 0..1 MS
* series.description ^definition =
    "reason(s) why this should be supported."
* series.started 0..1 MS
* series.started ^definition =
    "reason(s) why this should be supported."
* series.performer 1..*
* series.performer.actor 1..1
* procedureReference 1..1