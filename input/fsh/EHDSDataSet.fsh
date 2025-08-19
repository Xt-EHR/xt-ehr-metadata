Logical: EHDSDataSet
Id: EHDSData
Title: "Common model for EHDS data exchange"
Description: "Common header elements for all EHDS data exchange."
Characteristics: #can-be-target
* . ^short = "Resource header model"
* . ^definition = "Common header elements for all structured EHDS data exchange."

* metadata 1..1 Base "Metadata" "Metadata grouper"
  * identifier 0..* Identifier "Document ID" """Unique identifier of the data object"""
  * subject 1..1 EHDSPatient "Subject" """Patient/subject information"""

  * authorship 1..* Base "Authorship" "Document/resource authoring details"
    * author 1..1 EHDSHealthProfessional "Author" "Author by whom the resource was/were authored. Multiple authors could be provided."
    * datetime 1..1 dateTime "Date and time of authoring/issuing" "Date and time of the issuing the document/resource by its author."

  * lastUpdate 0..1 dateTime "Date and time of the last update to the resource" "Date and time of the last update to the document/information"
  * status 1..1 CodeableConcept "Status of the resource" "Status of the resource"
  * statusReason 0..1 CodeableConcept "Reason for the status of the resource" "Reason for the status of the resource"
  * version 0..1 string "Version" "Business version of the resource."
  * language 0..1 CodeableConcept "Language" "Language in which the resource is written. Language is expressed by the IETF language tag."
  * language ^binding.strength = #preferred
  * language ^binding.description = "BCP 47"
* presentedForm 0..* EHDSAttachment "The human-readable representation of the data set" 
