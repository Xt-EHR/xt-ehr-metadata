# The Conformity-Maturity Framwork

This framework allows conformity rules to be stated on a detailed level for data sets [Article 15, 1.1] of the priority categories [Article 14] of EHDS.

## EHR system functional profile

[from D8.1 draft]
A functional profile gathers (at least) functional requirements (including data contents) for a set of EHR systems which have the purpose of use matching the profile. Profile sets requirements for all systems which have a certain purpose of use.

One EHR system may fulfil several functional profiles (e.g. prescribing, outpatient management, …).

Requirements in functional profiles are rather high level but must refer to more detailed specifications such as implementation guides (of WP6, WP7).

## Actor/Role

> Not sure we need this... is this here the same as functional profile? E.g. a "Prescription function" vs. "Prescriber actor"

## Data operations

Operations performed on data elements. The operations have been selected from the [HL7 Obligation codes code system](https://build.fhir.org/ig/HL7/fhir-extensions/CodeSystem-obligation.html).

| Data operation | Description |
| --- | --- |
| able to populate | Conformant applications producing resources SHALL/SHOULD/MAY be able to correctly populate this element. Notes: Typically, this means that an application needs to demonstrate during some conformance testing process that there are some conditions under which it populates the element with a correct value. (i.e. not a data-absent-reason or equivalent.) This obligation does not impose expectations on the circumstances in which the element will be sent, only that it can be in at least some situations. |
| display | Conformant applications SHALL/SHOULD/MAY display the value of this element when presenting the data from the resource to a human user. Notes: exactly how it is displayed is not specified, but it means that a human looking at the content of the resource is made aware of the value of the element so that they can consider the meaning of the resource |
| process | Conformant applications SHALL/SHOULD/MAY consider the value of this element when processing the resource as specified by the IG. Notes: this implies that the IG that specifies this obligation provides details about what processing is to be performed, and the obligation specifially relates to the processing specified in the IG of any ElementDefinition.valueAlternatives extensions as well as the value (or other extensions explicitly declared beneath the element in the profile containing the obligation. Examples might include consideration in decision support, consideration in claims evaluation, etc. |
| ... | ... |

> TODO: confirm the subset of operations

Mapping between EHDS verbs and HL7 Obligation concepts.

> TODO: confirm the mappings

| EHDS Verb | EN ISO/HL7 10781​ | HL7 Obligation Code |
| --- | --- | --- |
| Issue, enter, insert, register​ | Capture, Maintain​ | populate​ |
| Issue, enable access​ | Transmit​ | send​ |
| Accept, receive​ | Receive​ | handle​ |
| Accept, provide access​ | Render, Present​ | handle, display​ |
| Download​ | Export​ | populate(?) |
| Accept (+ insert?)​ | Import​ | handle + persist(?) |

  
  
​

## Data elements

Data element of a data set or a technical interoperability specification. The framework can be applied both
on logical models and implementable specification level.

## Requirement strength 

Reference to [RFC2119](https://datatracker.ietf.org/doc/html/rfc2119) "Key words for use in RFCs to Indicate Requirement Levels", also referred to by HL7 FHIR [conformance rules](https://build.fhir.org/conformance-rules.html#conflang).
For Xt-EHR we have opted to use the words "SHALL" and "SHOULD".

1. **MUST**   This word, or the terms "REQUIRED" or "SHALL", mean that the
   definition is an absolute requirement of the specification.

2. **MUST NOT**   This phrase, or the phrase "SHALL NOT", mean that the
   definition is an absolute prohibition of the specification.

3. **SHOULD**   This word, or the adjective "RECOMMENDED", mean that there
   may exist valid reasons in particular circumstances to ignore a
   particular item, but the full implications must be understood and
   carefully weighed before choosing a different course.

4. **SHOULD NOT**   This phrase, or the phrase "NOT RECOMMENDED" mean that
   there may exist valid reasons in particular circumstances when the
   particular behavior is acceptable or even useful, but the full
   implications should be understood and the case carefully weighed
   before implementing any behavior described with this label.

5. **MAY**   This word, or the adjective "OPTIONAL", mean that an item is
   truly optional.  One vendor may choose to include the item because a
   particular marketplace requires it or because the vendor feels that
   it enhances the product while another vendor may omit the same item.
   An implementation which does not include a particular option MUST be
   prepared to interoperate with another implementation which does
   include the option, though perhaps with reduced functionality. In the
   same vein an implementation which does include a particular option
   MUST be prepared to interoperate with another implementation which
   does not include the option (except, of course, for the feature the
   option provides.)

## Rule

A conformity framework rule for a system functional profile is the combination of a data element, a data operation, and a requirement strength, e.g.

| System functional profile | Data element | Data operation | Requirement strength | Comment |
| --- | --- | --- | --- | --- |
| Prescription function | Prescription.identifier | able to populate | SHALL | An EHR system with a prescription function SHALL be able to populate the prescription identifier. Note that .identifier has cardinality `1..` in the current ePrescription logical model. |
| ... | ... |  ... |  ... | 