# Health professional model - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health professional model**

## Logical Model: Health professional model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:EHDSHealthProfessional |

 
Health professional (HP) 

**Usages:**

* Use this Logical Model: [EHDS data exchange](StructureDefinition-EHDSDataSet.md) and [EHDS document](StructureDefinition-EHDSDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.eu.fhir.xt-ehr.metadata|current/StructureDefinition/EHDSHealthProfessional)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSHealthProfessional.csv), [Excel](StructureDefinition-EHDSHealthProfessional.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSHealthProfessional",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional",
  "version" : "0.1.0",
  "name" : "EHDSHealthProfessional",
  "title" : "Health professional model",
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
  "description" : "Health professional (HP) ",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSHealthProfessional",
        "path" : "EHDSHealthProfessional",
        "short" : "Health professional model",
        "definition" : "Health professional (HP) "
      },
      {
        "id" : "EHDSHealthProfessional.name",
        "path" : "EHDSHealthProfessional.name",
        "code" : [
          {
            "code" : "C.2.2"
          }
        ],
        "definition" : "Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"
      },
      {
        "id" : "EHDSHealthProfessional.address",
        "path" : "EHDSHealthProfessional.address",
        "code" : [
          {
            "code" : "C.2.3"
          }
        ],
        "definition" : "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "max" : "1"
      },
      {
        "id" : "EHDSHealthProfessional.telecom",
        "path" : "EHDSHealthProfessional.telecom",
        "code" : [
          {
            "code" : "C.2.4"
          }
        ],
        "definition" : "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."
      },
      {
        "id" : "EHDSHealthProfessional.identifier",
        "path" : "EHDSHealthProfessional.identifier",
        "code" : [
          {
            "code" : "C.2.1"
          }
        ],
        "short" : "Identifier",
        "definition" : "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.role",
        "path" : "EHDSHealthProfessional.role",
        "code" : [
          {
            "code" : "C.2.5"
          }
        ],
        "short" : "Role",
        "definition" : "Health professional role. Multiple roles could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISCO, SNOMED CT"
        }
      },
      {
        "id" : "EHDSHealthProfessional.organization",
        "path" : "EHDSHealthProfessional.organization",
        "code" : [
          {
            "code" : "C.2.6"
          }
        ],
        "short" : "Organization",
        "definition" : "The organization where this role is available",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganization"
            ]
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.specialty",
        "path" : "EHDSHealthProfessional.specialty",
        "code" : [
          {
            "code" : "C.2.7"
          }
        ],
        "short" : "Specialty",
        "definition" : "The specialty of a practitioner that describes the functional role they are practicing at a given organization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
