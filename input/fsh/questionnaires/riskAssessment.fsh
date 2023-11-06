Instance: RiskAssessmentQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "Risk Assessment Questionnaire"
Description: "Risk Assessment Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Observation
* language = #en
//* contained[+] = VSRiskBehaviourPhysicalActivity
//* contained[+] = VSRiskBehaviourTobaccoSmoker
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://openhie.org/fhir/sri-lanka/StructureMap/RiskAssessmentResponseToObservation"

* insert Question(physicalActivity, Physical activity,choice,false,false)
* item[=]
  * answerValueSet = Canonical(VSRiskBehaviourPhysicalActivity)
  * code[+] = CSRiskAssessmentCodes#RA1
  * code[+] = $LNC#77242-6	"Physical activity behavior"
  * code[+] = $SCT#106020009 "Finding of activity exercise pattern"

* insert Question(tobaccoSmoking, Tobacco smoking,choice,false,false)
* item[=]
  * answerValueSet = Canonical(VSRiskBehaviourTobaccoSmoker)
  * code[+] = CSRiskAssessmentCodes#RA2
  * code[+] = $LNC#72166-2	"Tobacco smoking status"
  * code[+] = $SCT#365981007 "Finding of tobacco smoking behavior"