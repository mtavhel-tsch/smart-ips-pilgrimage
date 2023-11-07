Component 3 in the Digital Adaptation Kit (link forthcoming) includes user scenarios, which are narratives that describe how the different personas may interact with each other. The user scenarios are only illustrative and are intended to give an idea of a typical workflow.

**How to interpret user scenarios**

User scenarios can be helpful tools not only to better understand the context in which a digital tool would operate, but also for some insights into what key data elements would need to be recorded and accounted for in the database. Additionally, the context in which the tool would operate, illuminated by the user scenarios, provides insight into some functional and non-functional requirements that the system would also need.

As examples, the scenarios identify: key data elements that need to be recorded and/or calculated; decision-support logic that can be automated in the system; key functional and non-functional requirements that should be included in the system, and adolescent-specific considerations that should be accounted for.

### 1.0 Publication of National Public Keys for Verification
**Services**
- National HIE
- WHO GDHCN

Described in the [SMART Trust](https://smart.who.int/smart-trust) framework of the GDHCN where by a GDHCN Participant provides public keys to the WHO GDHCN Trust Network Gateway that can be used for signing health documents, in particulat the [International Patient Summary (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/).  The Trust Domain that will be used for this set of scenarios is <b>ips-piligrimage</b>

This process is a both a pre-condition for the user scenario 3.0 and 3.1 as well as a routine process at any point relevant encyption key material is updated.

### 2.0 Publication of National Terminolgies
This process for sharing National Code Systems and Value Sets that are utilized in a National HIE's profile of the IPS.  Standardized code systems should be utilized wherever possible but this recognizes that National Code Systems may be neccessary, particularly for coding of medication terminologies.  The primary goal, at least in the first phases of sharing the terminologies is not semantic interoperablity between a National HIE and Host Country EMR, rather it is  to support the Host Country Health Worker to review the IPS.


These terminolgoies should be shared from the National HIE to the WHO Terminology Service.
 * IHE profile [Sharing Value Sets and Concept Maps (SVCM)](https://profiles.ihe.net/ITI/SVCM/) (Recommended)
 * Sharing of tabluar data  

Once shared to the WHO Terminology Service, these terminologies should be retrievable from the Host Country EMR via the IHE SCVM profile.

This process is a both a pre-condition for the user scenario 3.0 and 3.1 as well as a routine process at any point relevant terminologies are updated.

### 3.0 Clinical Encoutner for Unplanned Care

This is a "Phase 1" scenario in which a Pilgrim in a Host Country has need to seek care from a Host Country Health Worker.  The Piligrim should be able to provide explict conset to a Host Country Health Worker access their patient summary information (IPS).  This consent can be given, for example, by showing a QR code (Smart Health Link) on a National Health Walletor printed QR code.  The Host Country EMR uses the QR code to access the National IHE to retrieve the patient summary.

### 4.0 Break The Glass Clinical Encounter

This is a "Phase 2" scenario in which a Pilgrim in a Host Country is not conscious and must receive emergency care.  The Host Country Health Worker accesses the patient summary via the Pilgrimage Registration Number.   Prior to this emergency care encounter, the Pilgrim would have registered their consent to provide access to their record either through the National Health Wallet App or through the National Pilgrimage Authority.