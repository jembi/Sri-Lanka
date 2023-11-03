/*Instance:     DataDictionarySexToAdministrativeGender
InstanceOf:   ConceptMap
Description:  "Mapping to and from data dictionary sex coding to FHIR Administrative Gender."
Usage:        #definition

* name = "DataDictionary_SexToAdministrativeGender"
* title = "ConceptMap to and From data dictionary sex to administrative gender"
* status = #active
* experimental = false
* date = "2023-08-09"

* group[+]
  * source = Canonical(CSRegisterPatientCodes)
  * target = $GENDER
  * insert ElementMap(RP21, male, equivalent)
  * insert ElementMap(RP22, female, equivalent)
  * insert ElementMap(RP23, unknown, equivalent)
  * insert ElementMap(RP24, other, equivalent)

* group[+]
  * source = $GENDER
  * target = Canonical(CSRegisterPatientCodes)
  * insert ElementMap(male, RP21, equivalent)
  * insert ElementMap(female, RP22, equivalent)
  * insert ElementMap(unknown, RP23, equivalent)
  * insert ElementMap(other, RP24, equivalent)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  */