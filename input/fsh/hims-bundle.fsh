Instance: VLSMS-VL-Request-Document
InstanceOf: Bundle
Usage: #example
Title: "VLSMS VL Request Bundle"
Description: "Represents the VLSMS VL Request Bundle (Document Type)."
* type = #document
* identifier[+].value = "document-1"
* identifier[=].system = "http://openhie.org/fhir/sri-lanka/identifier/bundle-id"
* timestamp = "2023-08-22T13:28:17-05:00"

* entry[+].fullUrl = "Composition/HIMSCompositionExample"
* entry[=].resource = HIMSCompositionExample

* entry[+].fullUrl = "Observation/RiskBehaviourPhysicalActivityExample"
* entry[=].resource = RiskBehaviourPhysicalActivityExample