Instance: HIMSRegisterPatientQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "HIMS Patient Registration Questionnaire"
Description: "Questionnaire using the HIMS data elements for the patient."
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/HIMSQuestionnaireResponseToPatient"

* insert Question(personalHealthNumber, Personal health number,string,true,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP1

* insert Question(nationalIdentityCard, National identity card,string,false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP2

* insert Question(passport, Passport,string,false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP3

* insert Question(drivingLicense, Driving license,string,false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP4

* insert Question(seniorCitizenNumber, Senior citizen number,string,false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP5

* insert Question(patientName, Name, group, false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP18
  * code[+] = $LNC#54125-0 "Patient name"
  * code[+] = $SCT#371484003 "Patient name"
  
  * insert Question(fullName, Full name,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP6
    * code[+] = $LNC#54125-0 "Patient name"
    * code[+] = $SCT#371484003 "Patient name"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP7
    * code[+] = $LNC#45392-8 "First name"
    * code[+] = $SCT#184095009 "Patient forename"

  * insert Question(surname, Family name,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP8
    * code[+] = $LNC#45394-4 "Last name"
    * code[+] = $SCT#184096005 "Patient surname"

* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = Canonical(http://hl7.org/fhir/ValueSet/administrative-gender)
  * code[+] = CSRegisterPatientCodes#RP9
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex"

* insert Question(address, Address, group, false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address"

  * insert Question(streetNameAndNr, Street name and number,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP11
    * code[+] = $LNC#56799-0 "Address"
    * code[+] = $SCT#184097001 "Patient address"

  * insert Question(city, City,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP10
    * code[+] = $LNC#LP117862-5 "City"
    * code[+] = $SCT#433178008 "City of residence"

  * insert Question(state, State,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP12
    * code[+] = $LNC#46499-0 "State of residence"

  * insert Question(country, Country,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP13
    * code[+] = $SCT#416647007 "Country of residence"

  * insert Question(postalCode, Postal code,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP14
    * code[+] = $LNC#45401-7 "Postal code"
    * code[+] = $SCT#184102003 "Patient postal code"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP15
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth"

* insert Question(contactDetails, Contact details, group, false,false)
* item[=]
  * code[+] = CSRegisterPatientCodes#RP20

  * insert Question(mobileNumber, Mobile number,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP16
    * code[+] = $SCT#428481002 "Patient mobile telephone number"

  * insert Question(landline, Landline number,string,false,false)
  * item[=]
    * code[+] = CSRegisterPatientCodes#RP17
    * code[+] = $SCT#429697006 "Patient home telephone number"