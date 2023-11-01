Instance: RegisterPatientQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "Patient Registration Questionnaire"
Description: "Patient Registration Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* contained[+] = RegisterPatientCodes.RP9
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/QuestionnaireResponseToPatient"

* insert Question(personalHealthNumber, Unique identifier for the patient,string,true,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP1

* insert Question(nationalIdentityCard, Unique identifier for the patient,string,true,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP2

* insert Question(pasport, Unique identifier for the patient,string,true,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP3

* insert Question(drivingLicense, Unique identifier for the patient,string,true,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP4

* insert Question(seniorCitizenNumber, Unique identifier for the patient,string,true,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP5

* insert Question(patientName, Patient name, group, false,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP18
  * code[+] = $LNC#54125-0 "Patient name"
  * code[+] = $SCT#371484003 "Patient name"
  
  * insert Question(fullName, Patient full name,string,false,false)
  * item[=]
    * code[+] = RegisterPatientCodes#RP6
    * code[+] = $LNC#54125-0 "Patient name"
    * code[+] = $SCT#371484003 "Patient name"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = RegisterPatientCodes#RP7
    * code[+] = $LNC#45392-8 "First name"
    * code[+] = $SCT#184095009 "Patient forename"

  * insert Question(surname, Family name,string,false,false)
  * item[=]
    * code[+] = RegisterPatientCodes#RP8
    * code[+] = $LNC#45394-4 "Last name"
    * code[+] = $SCT#184096005 "Patient surname"

* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = Canonical(http://hl7.org/fhir/ValueSet/administrative-gender)
  * code[+] = RegisterPatientCodes#RP9
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex"

* insert Question(address, Patient address, group, false,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address"

  * insert Question(streetNameAndNr, Street name and number,string,false,false)
    * item[=]
      * code[+] = RegisterPatientCodes#RP11
      * code[+] = $LNC#56799-0 "Address"
      * code[+] = $SCT#184097001 "Patient address"

  * insert Question(city, Address city,string,false,false)
    * item[=]
      * code[+] = RegisterPatientCodes#RP10
      * code[+] = $LNC#LP117862-5 "City"
      * code[+] = $SCT#433178008 "City of residence"

  * insert Question(state, Address state,string,false,false)
    * item[=]
      * code[+] = RegisterPatientCodes#RP12
      * code[+] = $LNC#46499-0 "State of residence"

  * insert Question(country, Address country,string,false,false)
    * item[=]
      * code[+] = RegisterPatientCodes#RP13
      * code[+] = $SCT#416647007 "Country of residence"

  * insert Question(postalCode, Address postal code,string,false,false)
    * item[=]
      * code[+] = RegisterPatientCodes#RP14
      * code[+] = $LNC#45401-7 "Postal code"
      * code[+] = $SCT#184102003 "Patient postal code"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP15
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth"

* insert Question(contactDetails, Patient contact details, group, false,false)
* item[=]
  * code[+] = RegisterPatientCodes#RP20

  * insert Question(mobileNumber, Patient mobile number,string,true,false)
  * item[=]
    * code[+] = RegisterPatientCodes#RP16
    * code[+] = $SCT#428481002 "Patient mobile telephone number"

  * insert Question(landline, Patient landline number,string,true,false)
  * item[=]
    * code[+] = RegisterPatientCodes#RP17
    * code[+] = $SCT#429697006 "Patient home telephone number"