Logical: EHDSDocument
Parent: EHDSDataSet
Id: EHDSDocument
Title: "Common model for EHDS document exchange"
Description: "Common header elements for all EHDS document exchange."
Characteristics: #can-be-target
* identifier
  * ^min = 1

* documentType 1..1 CodeableConcept "Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
  * ^binding.description = "LOINC"
  * ^binding.strength = #preferred
// WHY LOINC? what is the document type? is it a document type or a document category?

* eventType 0..* CodeableConcept "Event type" """Categorization of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement betwen data sharing parties. This meta-data element serves primarily for searching and filtering purpuses."""
  * ^binding.description = "LOINC, SNOMED CT, dicom-cid-33-Modality"
  * ^binding.strength = #preferred

* documentTitle 1..1 string "Document title" """Document title, such as Hospital Discharge Report, Laboratory Result Report, etc."""
* documentStatus 1..1 CodeableConcept "Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
  * ^binding.description = "hl7:CompositionStatus"
  * ^binding.strength = #preferred

* period 0..1 Period "Period" """Time of service that is being documented"""
// * reportDateTime 1..1 dateTime "Report date and time" """Date and time of the report creation."""
//replaced by issuedDateTime
* issuedDateTime 1..1 dateTime "Report date and time" """Date and time of the report creation."""

* attestation 0..* Base "Attestation" """Document attestation details"""
  * attester 1..1 EHDSHealthProfessional "Attester" """Attester who validated the document. Mulitple attesters could be provided."""
  * datetime 1..1 dateTime "DateTime" """Date and time of the approval of the document by Attester."""
* legalAuthentication 0..1 Base "Legal authentication" """Document legal authentication"""
  * legalAuthenticator 1..1 EHDSHealthProfessional "Legal authenticator" """The person taking responsibility for the medical content of the document"""
  * datetime 1..1 dateTime "DateTime" """Date and time when the document was authorized."""
* authorSpecialty 0..* CodeableConcept "Specialty" """Additional details about where the content was created (e.g. clinical specialty)"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* custodian 1..1 EHDSOrganization "Document custodian" """Organisation that is in charge of maintaining the document/report."""
* documentFormat 0..1 CodeableConcept "Document format" """An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."""
  * ^binding.description = "HL7 Document Format Codes"
  * ^binding.strength = #preferred

// commented out. what is confidentiality?
//* confidentiality 0..1 CodeableConcept "Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
//  * ^binding.description = "hl7:Confidentiality"
//  * ^binding.strength = #preferred

* knowledgeResources 0..* Base "Related documents and information sources"
  * externalReference 0..* Reference "..."



// Report?