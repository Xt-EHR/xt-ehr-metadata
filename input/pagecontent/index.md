This is the specification for the Xt-EHR Metadata foundation. The Metadata foundation is justified and described in the project deliverable T5.4, and it is detailed in this specification.  

The metadata foundation describes how data elements are defined, and defines some of the common data data elements. 

* The foundation describes, for example, the metadata foundation describes that each data element SHALL be uniquely identifiable, have a definition, and data structures and terminologies must have a status and an owner.
* The common data definitions - including **document metadata** such as author, date, patient, etc. are captured using this same framework - in the "Commons" specification. This is where the common elements are defined.

This approach is to be used by the different specifications within the project, and can also be used as guidance in other specifications implementing the EEHRxF.


### Setup

This specification provides common metadata and supports the other specifications. It is intended to be used as a dependency of any technical specification captured as a FHIR Implementation Guide. 
The infrastructure put in place for this purpose is that any Implementation Guide (started from a specification "boilerplate" ) depends on this foundation. 

<figure>
  {% include ig_setup.svg %}
</figure>

This framework doesn't define a new approach, it rather leverages existing standards and provides them as a ready-to-use framework.  
The justification for this approach is provided in the project deliverables, and can be summarised briefly:  
>  In order to assess gaps and conformance, and ensure long-lived, manageable specifications across countries, for different purposes, data elements (metadata) need to be represented and described (metadata) in a consistent, machine-readable, standards-based approach.

<br/><br/>




### Governance and usage

The metadata framework is built across different work packages (especially the Commons) as they are building data definitions and have expectations on metadata. As these expectations appear, they are taken by the metadata package, and when a solution is agreed, the result is captured in this specification, so that it can be automatically used by any of the packages.

This Implementation Guide is a work result. Many people have contributed with knowledge, revisions, checking, editing. Most of the work observable in the implementation guide is a result of lengthy discussions, which have happened in different work packages.  



<br/><br/>
