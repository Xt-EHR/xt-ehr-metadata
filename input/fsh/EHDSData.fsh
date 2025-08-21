Logical: EHDSDataSet
Id: EHDSDataSet
Title: "EHDS data exchange"
Description: "Common elements for all EHDS data exchange."

* identifier 0..* Identifier "Document ID" """Unique identifier of the data object"""
* subject 0..1 EHDSPerson "Subject" """Patient/subject information"""
* country 0..1 CodeableConcept "Country" """Country of the data exchange initiator."""
  * ^binding.strength = #preferred
  * ^binding.description = "ISO 3166"

* relatedPerson 0..* BackboneElement "Related person" """Patient/subject guardian and related person information"""
  * ^code = #A.1.2
  * ^requirements = "Some roles for the related person are essential for data access control. For example, the role of the guardian is essential for the data access control of a minor patient."
  * person 0..1 EHDSPerson "Identification and description of the person" "Identification and description of the contact person for that patient. This includes relatives, guardians, caring persons etc." 
  * relationship 0..1 CodeableConcept "Relationship" "The nature of the relationship between the patient and the related person." 
    * ^binding.description = "HL7 RoleCode"
    * ^binding.strength = #preferred
    * ^code = #C.13.3
    * ^requirements = "Some roles for the related person are essential for data access control. For example, the role of the guardian is essential for the data access control of a minor patient."

* authorship 1..* Base "Authorship" "Document/resource authoring details"
  * author 1..1 https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional "Author" "Author by whom the resource was/were authored. Multiple authors could be provided."
    * ^code = #A.1.6.1
  * datetime 1..1 dateTime "Date and time of authoring/issuing" "Date and time of the issuing the document/resource by its author."
    * ^code = #A.1.6.2
* lastUpdate 0..1 dateTime "Date and time of the last update to the data object" "Date and time of the last update to the document/information"
* status 1..1 CodeableConcept "Status of the information" "Status of the information"
* version 0..1 string "Version" "Business version of the data object."
* language 0..1 CodeableConcept "Language" "Language in which the information is written. Language is expressed by the IETF language tag."
* language ^binding.strength = #preferred
* language ^binding.description = "BCP 47"
  * ^code = #A.1.9.12
* presentation 1..* Base "Presentation form" "The presentation of the data, e.g. a PDF document, a video, a text file, etc. In case of unstructured data, this is the actual content."
  * author 1..1 https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional "Author" "Author by whom the resource was/were authored. Multiple authors could be provided."
    * ^code = #A.1.6.1
  * datetime 1..1 dateTime "Date and time of authoring/issuing" "Date and time of the issuing the document/resource by its author."
    * ^code = #A.1.6.2

// Logical: EHDSDataSet2
// Parent: EHDSDataSet

// * authorship.author
//   * ^min = 1
//   * ^max = "*"
  
//   * ^type[0].code = https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet
//   * ^type[+].code = https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet2
// //  * ^type[+].targetProfile[0] = EHDSHealthProfessional

