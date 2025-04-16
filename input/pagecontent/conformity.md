<!-- The metadata framework is extended to support conformity or conformance. -->

**Conformity or conformance** is defined as: fulfilment of a product, process, or service of specified requirements (ISO/DIS 27269:2024, EN ISO/HL7 10781:2023)

**Compliance** means conformity in fulfilling official such as regulatory requirements (Merriam-Webster dictionary, refined). Note: ISO 37301 refinements: outcome of meeting all the organization’s obligations set by legislation and government agencies; adherence of a product, service or process to legal and regulatory requirements, fulfilling legislative and contractual requirements

**Maturity**
Maturity of a particular EHR system represents required minimal level of conformance of that system with stated requirements. Regulators can specify different levels of required maturity of the EHr systems in a particular time. For this Conformity Framework following maturity levels has been specified:

| Level | Definition |
| --- | --- |
| Level 1 | Lowest maturity level - information is provided in basic, unstructured, narrative form. Corresponds to CDA L1. |
| Level 2 | Medium maturity level - Information is provided in clearly identified sections or structures, mostly in the narrative form. Corresponds to CDA L2. |
| Level 3 |Highest maturity level - Information is provided in fully structured form as in the Level 2, coded information can be provided where required. Corresponds to CDA L3. |

### EHR system functional profile

[from D8.1 draft]
A functional profile gathers (at least) functional requirements (including data contents) for a set of EHR systems which have the purpose of use matching the profile. Profile sets requirements for all systems which have a certain purpose of use.

One EHR system may fulfil several functional profiles (e.g. prescribing, outpatient management, …).

Requirements in functional profiles are rather high level but must refer to more detailed specifications such as implementation guides (of WP6, WP7).

Definition: Functional profile is a subset of comprehensive list of functional and data requirements reflecting the purpose of certain EHR systems or a specific healthcare delivery setting (EN ISO/HL7 10781:2023, adapted). Note: one system may conform to several functional profiles

> TODO: Decide how to implement conformity requirements in our deliverables.


### Conformance Framework
To enable assessment of the conformity, the Conformance Framework allows capturing the required/expected as well as the actual capabilities of EHR systems. This framework allows conformity rules to be stated on a detailed level for data sets [Article 15, 1.1] of the priority categories [Article 14] of EHDS.


### Components of the Conformance Framework

#### Actor/Role

Actors and system roles are information systems or components of information systems that produce, manage, or act on health information (IHE). In a given specification, roles such as producer and consumer are used to group more detailed requirements and obligations for systems which act in a given role.


#### Data operations

Operations performed on data elements. The operations have been selected from the [HL7 Obligation codes code system](https://build.fhir.org/ig/HL7/fhir-extensions/CodeSystem-obligation.html).

| Data operation | Description |
| --- | --- |
| able to populate | Conformant applications producing resources SHALL/SHOULD/MAY be able to correctly populate this element. Notes: Typically, this means that an application needs to demonstrate during some conformance testing process that there are some conditions under which it populates the element with a correct value. (i.e. not a data-absent-reason or equivalent.) This obligation does not impose expectations on the circumstances in which the element will be sent, only that it can be in at least some situations. |
| display | Conformant applications SHALL/SHOULD/MAY display the value of this element when presenting the data from the resource to a human user. Notes: exactly how it is displayed is not specified, but it means that a human looking at the content of the resource is made aware of the value of the element so that they can consider the meaning of the resource |
| process | Conformant applications SHALL/SHOULD/MAY consider the value of this element when processing the resource as specified by the IG. Notes: this implies that the IG that specifies this obligation provides details about what processing is to be performed, and the obligation specifically relates to the processing specified in the IG of any ElementDefinition.valueAlternatives extensions as well as the value (or other extensions explicitly declared beneath the element in the profile containing the obligation. Examples might include consideration in decision support, consideration in claims evaluation, etc. |
| persist | Conformant applications SHALL/SHOULD/MAY ensure that the value for this element is stored in a persistent data store. Notes: Exactly what the data store is not specified, nor how long it is stored for, but it is understood that the same value will be available in later exchanges. |
| explain | Documentation applicable to Conformant applications SHALL/SHOULD explain how this element is handled. Notes: this is really a rule about specifications, implying that another specification (which might be application documentation) either makes this element populate, or explains how the use cases that involve this element do not arise, or how they are handled. An example: IPA marks Patient.active must-handle and must-explain. Client applications must process Patient.active correctly if they see it, but many (though not all) specifications and/or applications ensure that Patient.active will never be false, and so it will never be populated e.g. MedMij in Netherlands prohibits use of Patient.active, and explains that it is never false. |
| no-alter | Conformant applications SHALL/SHOULD ensure that this element does not change between receiving and transfer. Notes: This does not mean that the element value cannot change, only that changing the element value for an element marked with this obligation moves an application from being an exchanger to a Consumer and a Producer, and those obligations apply. |

##### Mapping between EHDS verbs and Data operations (HL7 Obligation) concepts.

Acording to the regulation the EHR system is defined as “… any system where the appliance or software allows to **store**, **intermediate**, **export**, **import**, **convert**, **edit** or **view** personal electronic health data that belongs to the priority categories of personal electronic health data”.

EHDS regulation uses several different terms to define the EHR systems and its required functionalities. In this chapter we tried to find match between EHDS terms and applicable HL7 FHIR obligations, that are used as a basis for this Conformity model.

| EHDS Term | EN ISO/HL7 10781​ | HL7 Obligation Code |
| --- | --- | --- |
| store | store | persist |
| intermediate | exchange | no-alter |
| export | | process |
| import | | process |
| convert | | process, able-to-populate |
| edit | | able-to-populate, populate-if-known |
| view | | display |
| issue, enter, insert, register​ | capture, maintain​ | able-to-populate, persist​ |
| issue, enable access​ | transmit​ | send​ |
| accept, receive​ | receive​, Import | process​ |
| accept, provide access​ | render, present​ | process, display​ |
| download​ | export​ | process |
| accept​ | import​ | process, persist |

#### Data elements

Data element of a data set or a technical interoperability specification. The framework can be applied both
on logical models and implementable specification level.

#### Requirement strength

Reference to [RFC2119](https://datatracker.ietf.org/doc/html/rfc2119) "Key words for use in RFCs to Indicate Requirement Levels", also referred to by HL7 FHIR [conformance rules](https://build.fhir.org/conformance-rules.html#conflang).
For Xt-EHR we have opted to use the words "SHALL" and "SHOULD".

1. **SHALL** ...mean that the definition is an absolute requirement of the specification.
2. **SHOULD** ...mean that there may exist valid reasons in particular circumstances to ignore a particular item, but the full implications must be understood and carefully weighed before choosing a different course.
3. **MAY** ...mean that an item is truly optional. This is the default value in application of this framework.

#### Conformity rules

A conformity framework rule for a required level of conformity of the logical model and/or implementation specification is the combination of a data element, a data operation, and a requirement strength, e.g.:

| System function | Data element | Data operation | Requirement strength | Comment |
| --- | --- | --- | --- | --- |
| Prescription function | Prescription.identifier | able-to-populate | SHALL | A prescriber using an EHR system SHALL be able to populate the prescription identifier. |
| Dispense function | Prescription.identifier | process | SHALL | An EHR system with a prescription function SHALL be able to populate the prescription identifier. |
| ... | ... |  ... |  ... | ... |



| System function | Data element | Data operation | Requirement strength | Comment |
| --- | --- | --- | --- | --- |
| Test result producer | observation.code | able-to-populate | SHALL | An EHR system with a test result producer function SHALL be able to populate the observation test code. |
| Test result producer | observation.value | able-to-populate | SHALL | An EHR system with a test result producer function SHALL be able to populate the observation test result value. |
| Test result consumer | observation.name | display | SHALL | An EHR system with a test result consumer function SHALL be able to populate the observation test name. |
| Test result consumer | observation.value | display | SHALL | An EHR system with a test result consumer function SHALL be able to populate the observation result value. |
| Test result consumer | observation.value.unit | display | SHALL | An EHR system with a test result consumer function SHALL be able to populate the observation result value unit. |
| ... | ... |  ... |  ... | ... |

##### Rules and cardinality
Rules specify obligations to perform certain operation. This represent a different requirement than cardinality, however there is a logical link between the two in most cases. .....

> TODO: Find better description

> TODO: Add conformity assertions