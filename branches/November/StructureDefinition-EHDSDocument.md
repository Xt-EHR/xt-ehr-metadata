# EHDS document - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EHDS document**

## Logical Model: EHDS document 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDocument | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:EHDSDocument |

 
Common elements for all EHDS document exchange. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.eu.fhir.xt-ehr.metadata|current/StructureDefinition/EHDSDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDocument.csv), [Excel](StructureDefinition-EHDSDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDocument",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDocument",
  "version" : "0.1.0",
  "name" : "EHDSDocument",
  "title" : "EHDS document",
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
  "description" : "Common elements for all EHDS document exchange.",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDocument",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDocument",
        "path" : "EHDSDocument",
        "short" : "EHDS document",
        "definition" : "Common elements for all EHDS document exchange."
      },
      {
        "id" : "EHDSDocument.identifier",
        "path" : "EHDSDocument.identifier",
        "min" : 1
      },
      {
        "id" : "EHDSDocument.documentType",
        "path" : "EHDSDocument.documentType",
        "short" : "Document type",
        "definition" : "Identifies the type of document at hand, e.g. Hospital discharge report.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC"
        }
      },
      {
        "id" : "EHDSDocument.eventType",
        "path" : "EHDSDocument.eventType",
        "short" : "Event type",
        "definition" : "Categorization of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement betwen data sharing parties. This meta-data element serves primarily for searching and filtering purpuses.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, SNOMED CT, dicom-cid-33-Modality"
        }
      },
      {
        "id" : "EHDSDocument.documentTitle",
        "path" : "EHDSDocument.documentTitle",
        "short" : "Document title",
        "definition" : "Document title, such as Hospital Discharge Report, Laboratory Result Report, etc.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDocument.documentStatus",
        "path" : "EHDSDocument.documentStatus",
        "short" : "Document status",
        "definition" : "The status of the Hospital discharge report. E.g., preliminary, final.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:CompositionStatus"
        }
      },
      {
        "id" : "EHDSDocument.period",
        "path" : "EHDSDocument.period",
        "short" : "Period",
        "definition" : "Time of service that is being documented",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDocument.issuedDateTime",
        "path" : "EHDSDocument.issuedDateTime",
        "short" : "Report date and time",
        "definition" : "Date and time of the report creation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDocument.attestation",
        "path" : "EHDSDocument.attestation",
        "short" : "Attestation",
        "definition" : "Document attestation details",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDocument.attestation.attester",
        "path" : "EHDSDocument.attestation.attester",
        "short" : "Attester",
        "definition" : "Attester who validated the document. Mulitple attesters could be provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDocument.attestation.datetime",
        "path" : "EHDSDocument.attestation.datetime",
        "short" : "DateTime",
        "definition" : "Date and time of the approval of the document by Attester.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDocument.legalAuthentication",
        "path" : "EHDSDocument.legalAuthentication",
        "short" : "Legal authentication",
        "definition" : "Document legal authentication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDocument.legalAuthentication.legalAuthenticator",
        "path" : "EHDSDocument.legalAuthentication.legalAuthenticator",
        "short" : "Legal authenticator",
        "definition" : "The person taking responsibility for the medical content of the document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDocument.legalAuthentication.datetime",
        "path" : "EHDSDocument.legalAuthentication.datetime",
        "short" : "DateTime",
        "definition" : "Date and time when the document was authorized.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDocument.authorSpecialty",
        "path" : "EHDSDocument.authorSpecialty",
        "short" : "Specialty",
        "definition" : "Additional details about where the content was created (e.g. clinical specialty)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDocument.custodian",
        "path" : "EHDSDocument.custodian",
        "short" : "Document custodian",
        "definition" : "Organisation that is in charge of maintaining the document/report.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganization"
          }
        ]
      },
      {
        "id" : "EHDSDocument.documentFormat",
        "path" : "EHDSDocument.documentFormat",
        "short" : "Document format",
        "definition" : "An identifier of the document constraints, encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Document Format Codes"
        }
      },
      {
        "id" : "EHDSDocument.knowledgeResources",
        "path" : "EHDSDocument.knowledgeResources",
        "short" : "Related documents and information sources",
        "definition" : "Related documents and information sources",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDocument.knowledgeResources.externalReference",
        "path" : "EHDSDocument.knowledgeResources.externalReference",
        "short" : "...",
        "definition" : "...",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      }
    ]
  }
}

```
