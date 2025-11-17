# Organization model - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization model**

## Logical Model: Organization model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganization | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:EHDSOrganization |

 
Health organization 

**Usages:**

* Use this Logical Model: [EHDS document](StructureDefinition-EHDSDocument.md)
* Refer to this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md) and [Organization model](StructureDefinition-EHDSOrganization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.eu.fhir.xt-ehr.metadata|current/StructureDefinition/EHDSOrganization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSOrganization.csv), [Excel](StructureDefinition-EHDSOrganization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSOrganization",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganization",
  "version" : "0.1.0",
  "name" : "EHDSOrganization",
  "title" : "Organization model",
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
  "description" : "Health organization",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSOrganization",
        "path" : "EHDSOrganization",
        "short" : "Organization model",
        "definition" : "Health organization"
      },
      {
        "id" : "EHDSOrganization.identifier",
        "path" : "EHDSOrganization.identifier",
        "short" : "Identifier",
        "definition" : "Health provider organisation identifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSOrganization.type",
        "path" : "EHDSOrganization.type",
        "short" : "Type",
        "definition" : "Kind of organization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 organization_type"
        }
      },
      {
        "id" : "EHDSOrganization.name",
        "path" : "EHDSOrganization.name",
        "short" : "Name",
        "definition" : "Health provider organisation name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSOrganization.address",
        "path" : "EHDSOrganization.address",
        "short" : "Address",
        "definition" : "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSOrganization.telecom",
        "path" : "EHDSOrganization.telecom",
        "short" : "Telecom",
        "definition" : "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSOrganization.partOf",
        "path" : "EHDSOrganization.partOf",
        "short" : "Part of",
        "definition" : "The organization of which this organization forms a part",
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
      }
    ]
  }
}

```
