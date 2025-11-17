# EHDS data exchange - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS data exchange**

## Logical Model: EHDS data exchange 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:EHDSDataSet |

 
Common elements for all EHDS data exchange. 

**Usages:**

* Derived from this Logical Model: [EHDS document](StructureDefinition-EHDSDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.eu.fhir.xt-ehr.metadata|current/StructureDefinition/EHDSDataSet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDataSet.csv), [Excel](StructureDefinition-EHDSDataSet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDataSet",
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet",
  "version" : "0.1.0",
  "name" : "EHDSDataSet",
  "title" : "EHDS data exchange",
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
  "description" : "Common elements for all EHDS data exchange.",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDataSet",
        "path" : "EHDSDataSet",
        "short" : "EHDS data exchange",
        "definition" : "Common elements for all EHDS data exchange."
      },
      {
        "id" : "EHDSDataSet.identifier",
        "path" : "EHDSDataSet.identifier",
        "short" : "Document ID",
        "definition" : "Unique identifier of the data object",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.subject",
        "path" : "EHDSDataSet.subject",
        "short" : "Subject",
        "definition" : "Patient/subject information",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.country",
        "path" : "EHDSDataSet.country",
        "short" : "Country",
        "definition" : "Country of the data exchange initiator.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166"
        }
      },
      {
        "id" : "EHDSDataSet.relatedPerson",
        "path" : "EHDSDataSet.relatedPerson",
        "code" : [
          {
            "code" : "A.1.2"
          }
        ],
        "short" : "Related person",
        "definition" : "Patient/subject guardian and related person information",
        "requirements" : "Some roles for the related person are essential for data access control. For example, the role of the guardian is essential for the data access control of a minor patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.relatedPerson.person",
        "path" : "EHDSDataSet.relatedPerson.person",
        "short" : "Identification and description of the person",
        "definition" : "Identification and description of the contact person for that patient. This includes relatives, guardians, caring persons etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPerson"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.relatedPerson.relationship",
        "path" : "EHDSDataSet.relatedPerson.relationship",
        "code" : [
          {
            "code" : "C.13.3"
          }
        ],
        "short" : "Relationship",
        "definition" : "The nature of the relationship between the patient and the related person.",
        "requirements" : "Some roles for the related person are essential for data access control. For example, the role of the guardian is essential for the data access control of a minor patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 RoleCode"
        }
      },
      {
        "id" : "EHDSDataSet.authorship",
        "path" : "EHDSDataSet.authorship",
        "short" : "Authorship",
        "definition" : "Document/resource authoring details",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.authorship.author",
        "path" : "EHDSDataSet.authorship.author",
        "code" : [
          {
            "code" : "A.1.6.1"
          }
        ],
        "short" : "Author",
        "definition" : "Author by whom the resource was/were authored. Multiple authors could be provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.authorship.datetime",
        "path" : "EHDSDataSet.authorship.datetime",
        "code" : [
          {
            "code" : "A.1.6.2"
          }
        ],
        "short" : "Date and time of authoring/issuing",
        "definition" : "Date and time of the issuing the document/resource by its author.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.lastUpdate",
        "path" : "EHDSDataSet.lastUpdate",
        "short" : "Date and time of the last update to the data object",
        "definition" : "Date and time of the last update to the document/information",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.status",
        "path" : "EHDSDataSet.status",
        "short" : "Status of the information",
        "definition" : "Status of the information",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.version",
        "path" : "EHDSDataSet.version",
        "short" : "Version",
        "definition" : "Business version of the data object.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.language",
        "path" : "EHDSDataSet.language",
        "code" : [
          {
            "code" : "A.1.9.12"
          }
        ],
        "short" : "Language",
        "definition" : "Language in which the information is written. Language is expressed by the IETF language tag.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP 47"
        }
      },
      {
        "id" : "EHDSDataSet.presentation",
        "path" : "EHDSDataSet.presentation",
        "short" : "Presentation form",
        "definition" : "The presentation of the data, e.g. a PDF document, a video, a text file, etc. In case of unstructured data, this is the actual content.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.presentation.author",
        "path" : "EHDSDataSet.presentation.author",
        "code" : [
          {
            "code" : "A.1.6.1"
          }
        ],
        "short" : "Author",
        "definition" : "Author by whom the resource was/were authored. Multiple authors could be provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.presentation.datetime",
        "path" : "EHDSDataSet.presentation.datetime",
        "code" : [
          {
            "code" : "A.1.6.2"
          }
        ],
        "short" : "Date and time of authoring/issuing",
        "definition" : "Date and time of the issuing the document/resource by its author.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
