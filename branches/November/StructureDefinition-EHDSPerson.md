# Person - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Person**

## Logical Model: Person 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:EHDSPerson |

 
EHDS refined base model for Patient/subject information 

**Usages:**

* Derived from this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md)
* Use this Logical Model: [EHDS data exchange](StructureDefinition-EHDSDataSet.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.eu.fhir.xt-ehr.metadata|current/StructureDefinition/EHDSPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPerson.csv), [Excel](StructureDefinition-EHDSPerson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPerson",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson",
  "version" : "0.1.0",
  "name" : "EHDSPerson",
  "title" : "Person",
  "status" : "draft",
  "date" : "2025-11-17T15:56:36+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://Xt-EHR.eu"
        }
      ]
    }
  ],
  "description" : "EHDS refined base model for Patient/subject information",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPerson",
        "path" : "EHDSPerson",
        "short" : "Person",
        "definition" : "EHDS refined base model for Patient/subject information"
      },
      {
        "id" : "EHDSPerson.personalIdentifier",
        "path" : "EHDSPerson.personalIdentifier",
        "short" : "Personal identifier",
        "definition" : "An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) or National patient identifier for the Czech patient. Multiple identifiers could be provided. ",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSPerson.name",
        "path" : "EHDSPerson.name",
        "short" : "Name",
        "definition" : "Name associated with the patient/subject. Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPerson.dateOfBirth",
        "path" : "EHDSPerson.dateOfBirth",
        "short" : "Date of birth",
        "definition" : "The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSPerson.administrativeGender",
        "path" : "EHDSPerson.administrativeGender",
        "short" : "Administrative gender",
        "definition" : "This field must contain a recognized valid value for \"administrative gender\". If different, \"physiological gender\" should be communicated elsewhere. ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Administrative Gender"
        }
      },
      {
        "id" : "EHDSPerson.address",
        "path" : "EHDSPerson.address",
        "short" : "Address",
        "definition" : "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPerson.telecom",
        "path" : "EHDSPerson.telecom",
        "short" : "Telecom",
        "definition" : "Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSPerson.maritalStatus",
        "path" : "EHDSPerson.maritalStatus",
        "short" : "Marital status",
        "definition" : "Marital (civil) status of a person",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 marital-status"
        }
      },
      {
        "id" : "EHDSPerson.citizenship",
        "path" : "EHDSPerson.citizenship",
        "short" : "Citizenship (nationality)",
        "definition" : "Citizenship/nationality of the person.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166-1-2"
        }
      },
      {
        "id" : "EHDSPerson.communicationLanguage",
        "path" : "EHDSPerson.communicationLanguage",
        "short" : "Communication language",
        "definition" : "The language which can be used to communicate with the patient about his or her health.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP 47"
        }
      }
    ]
  }
}

```
