Instance: HIMSMedicalHistoryQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "HIMS Medical History Questionnaire"
Description: "Questionnaire using the HIMS data elements for the Medical History conditions."
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Condition
* language = #en
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/HIMSMedicalHistoryQRToCondition"

* insert Question(medicalHistory, Medical history,choice,true,false)
* item[=]
  * answerValueSet = Canonical(VSMedicalConditions)
  * code[+] = CSMedicalHistoryCodes#MH1
  * code[+] = $LNC#64285-0	"Medical history screening form"
  * code[+] = $SCT#417662000 "History of clinical finding in subject"