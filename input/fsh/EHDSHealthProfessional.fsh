Logical: EHDSHealthProfessional
Parent: EHDSPerson
Title: "Health professional model"
Description: """C.2 - EHDS refined base model for Health professional (HP) """
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."""
  * ^code = #C.2.1
* name
  * ^short = "Name"
  * ^definition = """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
  * ^code = #C.2.2

* address 0..1 
  * ^definition = """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
  * ^code = #C.2.3

* telecom 0..* 
  * ^definition = """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
  * ^code = #C.2.4

* role 0..* CodeableConcept "Role" """Health professional role. Multiple roles could be provided."""
  * ^binding.description = "ISCO, SNOMED CT"
  * ^binding.strength = #preferred
  * ^code = #C.2.5
* organization 0..1 Reference (EHDSOrganization) "Organization" """The organization where this role is available"""
  * ^code = #C.2.6
* specialty 0..* CodeableConcept "Specialty" """The specialty of a practitioner that describes the functional role they are practicing at a given organization"""
  * ^code = #C.2.7


// @Name: Include Single Codes
// @Description: Value set with explicit codes
