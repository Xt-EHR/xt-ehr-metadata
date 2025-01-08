### Information models

Information models (or logical data models) provide a technology-agnostic view on data. Information models are easier to process/validate for clinical experts and they can be implemented using different data exchange/storage standards.  

The information models approach used by Xt-EHR for EHDS follows ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."  

Granularity of an information model can be different across use cases. A base information for medication would provide an optimal model for complete description of a medication in clinical context. A more granular model could be used on a regulatory or registry level, but not all this data may be relevant for eHealth users. On a national level, medication information may often be just a code or a reference, and that too may be sufficient in that context. Therefore, EHDS models may not be directly implementable - every specification/implementation is free to extend or reduce these models to make them fit for their exact use case. However, it is expected that derived models do not conflict with the source model.

Common data models for the Xt-EHR specifications are published in [Xt-EHR Information Models repository](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/artifacts.html).


#### Publishing format

Xt-EHR Information models are published as [FHIR Logical Models](http://hl7.org/fhir/logical.html). While they may be represented similarly to the technical FHIR profiles, they remain representations of abstract data structures - simply captured as a technical artifact (a FHIR StructureDefinition) instead of a spreadsheet or document.
These models are different and separate artifacts from the profiles. For example, logical model for Patient would not be a profile on FHIR Patient resource, but a completely independent StructureDefinition. It is possible to establish relationships between those. For exammple a model for "Prescription" is defined independently of any resource or any FHIR release, but it may me mapped to its FHIR implementation as a MedicationRequest in FHIR R4 or FHIR R5, as it may be mapped to a CDA document for ePrescription.

FHIR Implementation Guide for publishing information models is based on current FHIR R5 release, but this does not imply that the actual implementations would have to use the same FHIR version or FHIR.

#### Information model mapping to implementable specifications

The metadata framework allows for mappings between information models and FHIR resources/profiles. This mapping should consider convenience of authoring and readability for the different authors. FHIR provides several mechanisms for this - namely element mapping and ConceptMaps.



#### Data types
There is an agreement that the default data types to use with FHIR logical models are FHIR data types. While these data types are physically constrained and dependent of a FHIR release, in the logical models they are used with a representative intent, and not impose on the physical format. 
For example, "dateTime" implies a specific format in FHIR resources, but in a logical model it is convened that these constraints may not apply in all cases, and some dateTime elements could have a different physical format. In other words, the logical models do not impose any physical constraints by default.

Comparison of different data types standards.
Complete mappings between the chosen approach and FHIR data types.

#### Terminology bindings

eHN Guidelines indicate preferred code systems for data elements, but not concrete value sets. MyHealth@EU specifications contain specific value sets for crossborder services. These value sets which are agreed and maintained by member states. However, creating and maintaining those value sets is an ongoing and time-consuming task even on crossborder level. It is probably not possible to agree on value sets on EHR level, because a large variety of different terminologies are used on a national or EHR level.  

Recommendations provided in eHN guidelines will be communicated as terminology bindings but not as value sets but as narratives and with a terminology binding level "preferred".  

In cases where terminology binding is required on a data exchange standard level, that binding applies according to which standard (CDA, FHIR) is used, and the code system does not have to be provided in the information model.  

#### Naming and authoring conventions

|**name**|EHDSModelName - CamelCase name with prefix "EHDS". The name part may but does not necessarily follow the resource names in FHIR.|  
|**title** |Model Name (model) - "(model)" is added to make sure information models are easily distinguishable from FHIR profiles, which may have the same or similar titles. If model is created for a specific use case, an agreed additional sufix or prefix is added.|  
|**description**|Short description of the model. Significant limitations or considerations can be provided.|  
|**characteristics**| #can-be-target - using this code ensures, that this model can be referenced from another models|  



### eHN Guidelines Datasets

All [eHN Guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) have a list of data elements required/proposed for the particular use case.  

In early 2024, eHN Subgroup of Semantics created a task force to analyse the consistency of guidelines, including the data sets and common data objects across different guidelines.  

The task force concluded that the same data is often modelled/described differently in different guidelines, and proposed harmonisation of data elements and their description (see [the results](https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365)).

eHN Guidelines datasets cannot be transformed into computable logical models directly for the following reasons:  
- granularity of modelling is insufficient (subelements might be mentioned in the textual description);  
- cardinality is not provided (0..* or 1..1 cardinalities have a clear impact for implementation);  
- data types are not provided (often, they can be guessed, but not always).   

In previous projects (e.g. XpanDH) eHN Guidelines datasets have been published as FHIR logical models. For EHDS information models, consolidated models are created following the recommendations by eHN Subgroup of Semantics consistency task force.  

This means that some models might not fully match the data sets in published guidelines.

