Logical:      HIMSMedicalHistoryDataDictionary
Title:        "HIMS Medical History"
Description:  "Data elements for the HIMS Medical History Data Dictionary."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^status = #active

* medicalHistory 0..* string "Medical history" "Medical history for the patient."
  * ^code[+] = CSMedicalHistoryCodes#MH1
* medicalHistory from VSMedicalConditions (extensible)

Mapping: HIMSMedicalHistoryDataDictionary-to-Condition
Source: HIMSMedicalHistoryDataDictionary
Target: "Condition"
* -> "Condition"
* medicalHistory -> "Condition.code"