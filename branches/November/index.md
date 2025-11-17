# Home - Xt-EHR Metadata Standards v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/ImplementationGuide/hl7.eu.fhir.xt-ehr.metadata | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:XtEHRMetadata |

This is the specification for the Xt-EHR Metadata foundation. The Metadata foundation is justified and described in the project deliverable T5.4, and it is detailed in this specification.

The metadata foundation describes how data elements are defined, and defines some of the common data data elements.

* The foundation describes, for example, the metadata foundation describes that each data element SHALL be uniquely identifiable, have a definition, and data structures and terminologies must have a status and an owner.
* The common data definitions - including **document metadata** such as author, date, patient, etc. are captured using this same framework - in the "Commons" specification. This is where the common elements are defined.

This approach is to be used by the different specifications within the project, and can also be used as guidance in other specifications implementing the EEHRxF.

### Setup

This specification provides common metadata and supports the other specifications. It is intended to be used as a dependency of any technical specification captured as a FHIR Implementation Guide. The infrastructure put in place for this purpose is that any Implementation Guide (started from a specification "boilerplate" ) depends on this foundation.

This framework doesn't define a new approach, it rather leverages existing standards and provides them as a ready-to-use framework.
 The justification for this approach is provided in the project deliverables, and can be summarised briefly:

> In order to assess gaps and conformance, and ensure long-lived, manageable specifications across countries, for different purposes, data elements (metadata) need to be represented and described (metadata) in a consistent, machine-readable, standards-based approach.

### Governance and usage

The metadata framework is built across different work packages (especially the Commons) as they are building data definitions and have expectations on metadata. As these expectations appear, they are taken by the metadata package, and when a solution is agreed, the result is captured in this specification, so that it can be automatically used by any of the packages.

This Implementation Guide is a work result. Many people have contributed with knowledge, revisions, checking, editing. Most of the work observable in the implementation guide is a result of lengthy discussions, which have happened in different work packages.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.eu.fhir.xt-ehr.metadata",
  "url" : "https://www.xt-ehr.eu/specifications/fhir/ImplementationGuide/hl7.eu.fhir.xt-ehr.metadata",
  "version" : "0.1.0",
  "name" : "XtEHRMetadata",
  "title" : "Xt-EHR Metadata Standards",
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
  "description" : "Requirements and standards for metadata in the Xt-EHR project",
  "packageId" : "hl7.eu.fhir.xt-ehr.metadata",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r5",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r5",
      "version" : "5.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r5#0.8.0"
      }
    ],
    "grouping" : [
      {
        "id" : "CommonMetadata",
        "name" : "Core metadata",
        "description" : "Core metadata Models."
      },
      {
        "id" : "Types",
        "name" : "Data Types",
        "description" : "Data types and structures used in the core metadata."
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDataSet"
        },
        "name" : "EHDS data exchange",
        "description" : "Common elements for all EHDS data exchange.",
        "isExample" : false,
        "groupingId" : "CommonMetadata"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDocument"
        },
        "name" : "EHDS document",
        "description" : "Common elements for all EHDS document exchange.",
        "isExample" : false,
        "groupingId" : "CommonMetadata"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSHealthProfessional"
        },
        "name" : "Health professional model",
        "description" : "Health professional (HP)",
        "isExample" : false,
        "groupingId" : "Types"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSOrganization"
        },
        "name" : "Organization model",
        "description" : "Health organization",
        "isExample" : false,
        "groupingId" : "Types"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSPerson"
        },
        "name" : "Person",
        "description" : "EHDS refined base model for Patient/subject information",
        "isExample" : false,
        "groupingId" : "Types"
      }
    ],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "sourceUrl" : "index.html",
          "name" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "glossary.html",
          "name" : "glossary.html",
          "title" : "Glossary of terms",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "metadata_model.html",
          "name" : "metadata_model.html",
          "title" : "Metadata framework - requirements and specifications",
          "generation" : "markdown",
          "page" : [
            {
              "sourceUrl" : "process.html",
              "name" : "process.html",
              "title" : "Metadata process",
              "generation" : "markdown"
            },
            {
              "sourceUrl" : "versioning.html",
              "name" : "versioning.html",
              "title" : "Versioning",
              "generation" : "markdown"
            }
          ]
        },
        {
          "sourceUrl" : "using.html",
          "name" : "using.html",
          "title" : "Using the Metadata Framework",
          "generation" : "markdown",
          "page" : [
            {
              "sourceUrl" : "modelling.html",
              "name" : "modelling.html",
              "title" : "Logical models",
              "generation" : "markdown"
            },
            {
              "sourceUrl" : "profiling.html",
              "name" : "profiling.html",
              "title" : "FHIR profiling",
              "generation" : "markdown"
            },
            {
              "sourceUrl" : "terminology.html",
              "name" : "terminology.html",
              "title" : "Terminology",
              "generation" : "markdown"
            },
            {
              "sourceUrl" : "glossaries.html",
              "name" : "glossaries.html",
              "title" : "Glossaries",
              "generation" : "markdown"
            },
            {
              "sourceUrl" : "conformity.html",
              "name" : "conformity.html",
              "title" : "Conformance and Maturity assessment",
              "generation" : "markdown"
            }
          ]
        }
      ]
    },
    "parameter" : [
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "copyrightyear"
        },
        "value" : "2022+"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "releaselabel"
        },
        "value" : "ci-build"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "produce-jekyll-data"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "autoload-resources"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/capabilities"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/examples"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/extensions"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/models"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/operations"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/profiles"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/vocabulary"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/maps"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/testing"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/history"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "fsh-generated/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "template/config"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "input/images"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "template/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "input/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-qa"
        },
        "value" : "temp/qa"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-temp"
        },
        "value" : "temp/pages"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-output"
        },
        "value" : "output"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-tx-cache"
        },
        "value" : "input-cache/txcache"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-suppressed-warnings"
        },
        "value" : "input/ignoreWarnings.txt"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-history"
        },
        "value" : "https://www.xt-ehr.eu/specifications/fhir/history.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-html"
        },
        "value" : "template-page.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-md"
        },
        "value" : "template-page-md.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-contact"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-context"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-copyright"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-jurisdiction"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-license"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-publisher"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-version"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-wg"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "active-tables"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "fmm-definition"
        },
        "value" : "http://hl7.org/fhir/versions.html#maturity"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "propagate-status"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludelogbinaryformat"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "tabbed-snapshots"
        },
        "value" : "true"
      }
    ]
  }
}

```
