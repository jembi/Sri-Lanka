Instance: HIMSRiskBehaviourQuestionnaire-TobaccoSmoking
InstanceOf: sdc-questionnaire-extr-smap
Title: "HIMS Risk Behaviour Questionnaire"
Description: "Questionnaire using the HIMS data elements for the tobacco smoking risk behaviour observation."
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Observation
* language = #en
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/HIMSRiskBehaviourQuestionnaireResponseToObservation-TobaccoSmoking"

* insert Question(tobaccoSmoking, Tobacco smoking,choice,false,false)
* item[=]
  * answerValueSet = Canonical(VSRiskBehaviourTobaccoSmoker)
  * code[+] = CSRiskBehaviourCodes#RA2
  * code[+] = $LNC#72166-2	"Tobacco smoking status"
  * code[+] = $SCT#365981007 "Finding of tobacco smoking behavior"