
Logical: EHDSData
Id: EHDSData
Title: "Common model for EHDS data exchange"
Description: "Common header elements for all EHDS data exchange."

Logical: EHDSStructuredData
Id: EHDSStructuredData
Title: "Common model for EHDS structured data exchange"
Description: "Common header elements for all structured EHDS data exchange."
Characteristics: #can-be-target
* . ^short = "Resource header model"
* . ^definition = "Common header elements for all structured EHDS data exchange."
* subject 1..1 EHDSPatient "Subject" "Patient/subject information"
* authorship 1..* Base "Authorship" "Document/resource authoring details"
* authorship.author 1..1 https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional "Author" "Author by whom the resource was/were authored. Multiple authors could be provided."
* authorship.datetime 1..1 dateTime "Date and time of authoring/issuing" "Date and time of the issuing the document/resource by its author."
* lastUpdate 0..1 dateTime "Date and time of the last update to the resource" "Date and time of the last update to the document/information"
* status 1..1 CodeableConcept "Status of the resource" "Status of the resource"
* language 0..1 CodeableConcept "Language" "Language in which the resource is written. Language is expressed by the IETF language tag."
* language ^binding.strength = #preferred
* language ^binding.description = "BCP 47"
* version 0..1 string "Version" "Business version of the resource."
// do we need type?

Logical: EHDSDocument
Id: EHDSDocument
Title: "Common model for EHDS document exchange"
Description: "Common header elements for all EHDS document exchange."
Characteristics: #can-be-target
* documentId 1..* Identifier "Document ID" """Unique identifier of the document"""

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
  * externalReference 0..* RelatedArtifact "..."
  * relatedTo 0..* Reference "..."


// Report?

Logical: EHDSPatient
Title: "Patient model"
Description: """C.1 - EHDS refined base model for Patient/subject information"""
Characteristics: #can-be-target

* personalIdentifier 1..* Identifier "C.1.1 - Personal identifier" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) or National patient identifier for the Czech patient. Multiple identifiers could be provided. """
* name 0..* ANY "C.1.2 - Name" """Name associated with the patient/subject. Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc."""
* dateOfBirth 0..1 dateTime "C.1.3 - Date of birth" """The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided."""
* administrativeGender 0..1 CodeableConcept "C.1.4 - Administrative gender" """This field must contain a recognized valid value for "administrative gender". If different, "physiological gender" should be communicated elsewhere. """
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* address 0..* ANY "C.1.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* ANY "C.1.6 - Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""
* maritalStatus 0..1 CodeableConcept "C.1.7 - Marital status" """Marital (civil) status of a patient"""
  * ^binding.description = "HL7 marital-status"
  * ^binding.strength = #preferred
* citizenship 0..* CodeableConcept "C.1.8 - Citizenship (nationality)" """Citizenship/nationality of the patient."""
  * ^binding.description = "ISO 3166-1-2"
  * ^binding.strength = #preferred
* communicationLanguage 0..* CodeableConcept "C.1.9 - Communcation language" """The language which can be used to communicate with the patient about his or her health."""
  * ^binding.description = "BCP 47"
  * ^binding.strength = #preferred


  Logical: EHDSHealthProfessional
//Id: EHDShealthProfessional
Title: "Health professional model"
Description: """C.2 - EHDS refined base model for Health professional (HP) """
Characteristics: #can-be-target

* identifier 0..* Identifier "C.2.1 - Identifier" """An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."""
* name 0..1 ANY "C.2.2 - Name" """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
* address 0..1 ANY "C.2.3 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* ANY "C.2.4 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* role 0..* CodeableConcept "C.2.5 - Role" """Health professional role. Multiple roles could be provided."""
  * ^binding.description = "ISCO, SNOMED CT"
  * ^binding.strength = #preferred
* organization 0..1 Reference (EHDSOrganization) "C.2.6 - Organization" """The organization where this role is available"""
* specialty 0..* CodeableConcept "C.2.7 - Specialty" """The specialty of a practitioner that describes the functional role they are practicing at a given organization"""

Logical: EHDSOrganization
Title: "Organization model"
Description: """C.3 - EHDS refined base model for Health provider or any other type of organization"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.3.1 - Identifier" """Health provider organisation identifier"""
* type 0..* CodeableConcept "C.3.2 - Type" """Kind of organization"""
  * ^binding.description = "HL7 organization_type"
  * ^binding.strength = #preferred
* name 0..1 string "C.3.3 - Name" """Health provider organisation name"""
* address 0..* ANY "C.3.4 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* ANY "C.3.5 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* partOf 0..1 Reference (EHDSOrganization) "C.3.6 - Part of" """The organization of which this organization forms a part"""
