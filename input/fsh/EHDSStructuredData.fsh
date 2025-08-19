Logical: EHDSStructuredData
Id: EHDSStructuredData
Parent: EHDSData
Title: "Common model for EHDS structured data exchange"
Description: "Common header elements for all structured EHDS data exchange."
Characteristics: #can-be-target
* . ^short = "Resource header model"
* . ^definition = "Common header elements for all structured EHDS data exchange."
* subject 1..1 EHDSPatient "Subject" "Patient/subject information"
* authorship 1..* Base "Authorship" "Document/resource authoring details"
  * author 1..1 https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional "Author" "Author by whom the resource was/were authored. Multiple authors could be provided."
    * ^code = #A.1.6.1
  * datetime 1..1 dateTime "Date and time of authoring/issuing" "Date and time of the issuing the document/resource by its author."
    * ^code = #A.1.6.2
* lastUpdate 0..1 dateTime "Date and time of the last update to the resource" "Date and time of the last update to the document/information"
* status 1..1 CodeableConcept "Status of the resource" "Status of the resource"
* language 0..1 CodeableConcept "Language" "Language in which the resource is written. Language is expressed by the IETF language tag."
* language ^binding.strength = #preferred
* language ^binding.description = "BCP 47"
  * ^code = #A.1.9.12

* version 0..1 string "Version" "Business version of the resource."
// do we need type?