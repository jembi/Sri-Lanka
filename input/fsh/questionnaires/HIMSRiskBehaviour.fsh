Instance: HIMSRiskBehaviourQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "HIMS Risk Behaviour Questionnaire"
Description: "Questionnaire using the HIMS data elements for the risk behaviour observations."
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Observation
* language = #en
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/HIMSRiskBehaviourQuestionnaireResponseToObservation"

* insert Question(physicalActivity, Physical activity,choice,false,false)
* item[=]
  * answerValueSet = Canonical(VSRiskBehaviourPhysicalActivity)
  * code[+] = CSRiskBehaviourCodes#RA1
  * code[+] = $LNC#77242-6	"Physical activity behavior"
  * code[+] = $SCT#106020009 "Finding of activity exercise pattern"

* insert Question(tobaccoSmoking, Tobacco smoking,choice,false,false)
* item[=]
  * answerValueSet = Canonical(VSRiskBehaviourTobaccoSmoker)
  * code[+] = CSRiskBehaviourCodes#RA2
  * code[+] = $LNC#72166-2	"Tobacco smoking status"
  * code[+] = $SCT#365981007 "Finding of tobacco smoking behavior"