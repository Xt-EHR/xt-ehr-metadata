### Information models

Information models (or logical data models) provide a technology-agnostic view on data. Information models are easier to process/validate for clinical experts and they can be implemented using different data exchange/storage standards.  

The information models approach used by Xt-EHR for EHDS follows ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."  

Granularity of an information model can be different across use cases. A base information for medication would provide an optimal model for complete description of a medication in clinical context. A more granular model could be used on a regulatory or registry level, but not all this data may be relevant for eHealth users. On a national level, medication information may often be just a code or a reference, and that too may be sufficient in that context. Therefore, EHDS models are not designed to be directly implemented - every specification/implementation is free to extend or reduce these models to make them fit for their exact use case. However, it is expected that derived models do not conflict with the source model.

Information models are published in [Xt-EHR Information Models repository](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/artifacts.html).

#### Publishing format

Information models are published as FHIR Logical Models (not to be confused with FHIR data exchange profiles). Each information model is conveyed by FHIR StructureDefinition resource (type "logical") and it is not tied to any other resources. For example, logical model for Patient would not be a profile on FHIR Patient resource, but a completely independent StructureDefinition.

FHIR Implementation Guide for publishing information models is based on FHIR R5 version (or any other newest current version). This does not imply that the actual implementations would have to use the same FHIR version or FHIR.

#### Information model mapping to implementable specifications

Mappings between information models and FHIR resources/profiles will be provided. 
The preferred mapping format would be FHIR StructureMap resource, which would allow mapping to FHIR as well as to CDA. StructureMap provides a fully computable and machineprocessable mapping, but at the same time it is not easily readable for human users. Therefore, simplified solutions should be considered (ConceptMap, spreadsheet, etc).


#### Data types
Default data types to use with FHIR logical models are FHIR data types, which are implementation-specific and contain additional information and options which we would not want to impose on an information model level.  

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


### Considerations and Decisions

See Issues of the GitHub repository:
- [issues regarding metadata strategy](https://github.com/Xt-EHR/xt-ehr-metadata/issues)  
- [issues regarding information models](https://github.com/Xt-EHR/xt-ehr-common/issues)

Bonn workshop decisions:
- Patient and Practitioner will not have an underlying Person object.
- All cardinalities for eHN datasets elements are provided as 0..* unless the text specifically states otherwise.
- Data types are guessed from the description. If subelements are expected, the data type is BackboneElement.
- Preferred code systems are provided in textual description.
