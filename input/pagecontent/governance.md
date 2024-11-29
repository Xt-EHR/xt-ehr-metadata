# Governance of Artifact repositories during and after the project

## Governance Requirements:

1. Allow continuous collaboration during the project  

1. Achieve implementable, testable technical specifications
   
1. Allow contribution and cross-content creation between technical specifications and the official deliverable documents
    1. Easy to read excerpts of technical specifications
    1. Ability to "freeze" content for deliverables

1. Support post-project continuity

1. Based on and aligned with existing standards

1. Using common tooling and ecosystem as much as possible

1. Common metadata structure to support common needs like access control, audits, etc.

1. Using open repositories

1. Support documentation and traceability of the business context and requirements behind technical specifications

1. Consistent work across work packages

1. Technical specifications should be supportive of adoption and adaptation by member states
    1. Supporting appending local processes and artifacts (constraints, extensions, terminologies)
    1. Support adoption at national scale and adapting to national rules
    1. Support adoption and adaptation by software vendors at member states

1. Open collaboration

1. Open IP properties

1. Naming Conventions for artifacts, packages and urls
and for elements

  * Elements in data models should not contain the parent name, unless the name needs that for disambiguation
    * For example: `Patient` should not contain an element called `patientName` but `name`; on the other hand, `Observation` may contain `observationDate` if this disambiguates from another element like `reportedDate`.


1. Issue management
* For every change, there should be an issue registered
  * Issues resulting in changes should be decided in meetings
  * Issues that are simple and obvious changes can be preapplied



<figure>
  {% include ig_setup.svg %}
</figure>


https://github.com/xt-EHR



## Approach

1. IG Building infrastructure
    * Repo space/org
    * Template
    * Empty IGfor anyone to clone
    * 
1. Logical models 
    1.1. one IG per package for logical models
    1.2. one IG for common models
2. technical specifications
3. terminology specifications


4. Dependencies
Inventory of standards 


5. Issues

6. Branching


7. 









1. **Creating a GitHub Organization**: For the common aspects of the project, the we established a GitHub organization. This allowed us to manage and coordinate work efficiently.


2. **Hosting Technical Specifications on HL7 Europe**: To ensure that the technical specifications outlive the project, we hosted them on HL7 Europe. Although these specifications were acted upon on behalf of the project, they continue to serve as a valuable reference today and can be further improved.

3. **Static Specifications for Version Alignment**: In situations where we needed "static" specifications to ensure deliverables aligned with a specific version, we created branches. This approach provided us with the flexibility to manage different versions as needed.
