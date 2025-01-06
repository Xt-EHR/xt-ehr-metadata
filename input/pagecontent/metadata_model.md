### The Metadata foundation

The metadata foundation is depicted in the following diagram:  
Metadata is a way to define data points - and the framework provides this definition in a structured way.  
The aspects of metadata that have been deemed valuable for the project are structured in metadata objects (which is the standard approach from metadata standards and data management practices). 

The diagram below shows the current components of the metadata framework. These components are combined in a way to support a good description of the data elements and structures in the project specifications, and conrtibute to interoperable and reusable specifications:

•	A data structure (as a functional representation, or as a technical specification) contains elements (logical or physical, respectively). 
  *	A data model is a technology-agnostic logical representation of a data structure or set of data elements. This can be done at project level, national level, etc.
  * A profile is the realisation of the model in a specific technology (e.g. CDA, FHIR).
*	Each data element has certain attributes – name, definition (in context), data type, cardinality, value domain, and possibly some mappings to concepts. 
*	When value sets are defined (typically in physical implementations) they are associated with the element. 
* Value sets contain concepts from a code system. 
* A concept is an abstract representation of a term
* Concepts are captured in a code system
* Code system is a systematized collection of concepts – each equipped with a code, textual designation, and potentially relationships with other concepts (hierarchy, properties, etc).


<figure>
  {% include metadata.svg %}
</figure>



