Invariant:    HIMS-name-1
Description:  "Only letters and special characters (period, dash) allowed."
Expression:   "$this.matches('[A-Za-z-.]*')"
Severity:     #error

Logical:      HIMSPatientRegistrationDataDictionary
Title:        "Patient Registration"
Description:  "Data elements for the HIMS Patient Registration Data Dictionary."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^status = #active

* personalHealthNumber 1..1 SU string "Personal health number" "Unique identifier for the patient, according to the policies applicable to each country."
  * ^code[+] = CSRegisterPatientCodes#RP1
* nationalIdentityCard 0..* SU  string "National identity card" "Unique identifier for the patient, according to the policies applicable to each country."
  * ^code[+] = CSRegisterPatientCodes#RP2
* passport 0..* SU  string "Passport" "Unique identifier for the patient, according to the policies applicable to each country."
  * ^code[+] = CSRegisterPatientCodes#RP3
* drivingLicense 0..* SU  string "Driving license" "Unique identifier for the patient, according to the policies applicable to each country."
  * ^code[+] = CSRegisterPatientCodes#RP4
* seniorCitizenNumber 0..* SU  string "Senior citizen number" "Unique identifier for the patient, according to the policies applicable to each country."
  * ^code[+] = CSRegisterPatientCodes#RP5

* patientName 0..*  BackboneElement "Name" "Name"
  * ^code[+] = CSRegisterPatientCodes#RP18
  * fullName 0..1  string "Full name" "Patient's full name"
    * obeys HIMS-name-1
    * ^code[+] = CSRegisterPatientCodes#RP6
  * firstName 0..1  string "First name" "Patient's first name or given name"
    * obeys HIMS-name-1
    * ^code[+] = CSRegisterPatientCodes#RP7
  * surname 0..1  string "Last name" "Patient's family name or last name"
    * obeys HIMS-name-1
    * ^code[+] = CSRegisterPatientCodes#RP8
* sex 1..1 code "Sex" "Documentation of a specific instance of sex information for the patient"
  * ^code[+] = CSRegisterPatientCodes#RP9
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* address 0..*  BackboneElement "Address" "Address"
  * ^code[+] = CSRegisterPatientCodes#RP19
  * streetNameAndNr 0..1  string "Street name and number" "Street name and number"
    * ^code[+] = CSRegisterPatientCodes#RP11
  * city 0..1  string "City" "City"
    * ^code[+] = CSRegisterPatientCodes#RP10
  * state 0..1  string "State" "State"
    * ^code[+] = CSRegisterPatientCodes#RP12
  * country 0..1  string "Country" "Country"
    * ^code[+] = CSRegisterPatientCodes#RP13
  * postalCode 0..1  string "Postal code" "Postal code"
    * ^code[+] = CSRegisterPatientCodes#RP14
* birthDate 1..1 date "Date of birth" "Patient's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+] = CSRegisterPatientCodes#RP15
* contactDetails 0..*  BackboneElement "Contact details" "Contact details"
  * ^code[+] = CSRegisterPatientCodes#RP20
  * mobileNumber 0..1  string "Mobile phone number" "Patient's mobile phone number"
    * ^code[+] = CSRegisterPatientCodes#RP16
    * ^code[+] = http://hl7.org/fhir/contact-point-system#phone
  * landline 0..1  string "Landline phone number" "Patient's landline phone number"
    * ^code[+] = CSRegisterPatientCodes#RP17
    * ^code[+] = http://hl7.org/fhir/contact-point-system#phone

Mapping: HIMSPatientRegistrationDataDictionary-to-Patient
Source: HIMSPatientRegistrationDataDictionary
Target: "Patient"
* -> "Patient"
* personalHealthNumber -> "Patient.identifier.value"
* nationalIdentityCard -> "Patient.identifier.value"
* passport -> "Patient.identifier.value"
* drivingLicense -> "Patient.identifier.value"
* seniorCitizenNumber -> "Patient.identifier.value"
* patientName -> "Patient.name"
* patientName.fullName -> "Patient.name.text"
* patientName.firstName -> "Patient.name.given"
* patientName.surname -> "Patient.name.family"
* sex -> "Patient.gender"
* address -> "Patient.address"
* address.streetNameAndNr -> "Patient.address"
* address.city -> "Patient.address.city"
* address.state -> "Patient.address.state"
* address.country -> "Patient.address.country"
* address.postalCode -> "Patient.address.postalCode"
* birthDate -> "Patient.birthDate"
* contactDetails -> "Patient.telecom"
* contactDetails.mobileNumber -> "Patient.telecom.value"
* contactDetails.landline -> "Patient.telecom.value"