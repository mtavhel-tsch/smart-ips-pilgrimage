Key concepts and abbreviations are described here. Additional terms are defined in the Glossary and List of Abbreviations in the [WHO Digital Documentation of COVID-19 Certificates FHIR Implementation Guide](https://worldhealthorganization.github.io/ddcc/concepts.html).
# Key Concepts and Definitions

## **Pilgrim**
- A person who undertakes the Hajj pilgrimage to Mecca. In the context of the healthcare system, the pilgrim is the primary user, receiving healthcare services and interacting with various healthcare providers.

## **Origin Country**
- The country from which the pilgrim originates or holds citizenship. This is significant in the context of healthcare as health information and preparatory measures might be initiated in the origin country before the pilgrimage.

## **Host Country**
- The country hosting the pilgrimage, which in the case of the Hajj is the Kingdom of Saudi Arabia (KSA). The host country provides healthcare and other services to pilgrims during their stay.

## **Hajj Health Facility**
- A medical facility set up to cater specifically to the needs of Hajj pilgrims. These facilities can range from clinics to hospitals and are equipped to handle both routine health checks and emergency services.

## **Registration Nurse**
- A healthcare professional responsible for the initial registration of pilgrims at Hajj health facilities. This includes collecting and verifying pilgrim information and initiating the health service process.

## **Clinician**
- A medical professional, such as a doctor or nurse, who provides clinical care to the pilgrim. Clinicians use the pilgrim's health information, accessed via the healthcare system, to offer appropriate medical treatments.

## **International Patient Summary (IPS)**
- A digital document that contains essential healthcare information about a patient, designed to support the continuity of care and patient safety. For Hajj pilgrims, the IPS includes basic demographics, medical history, medications, allergies, and other critical health information that can be shared across borders and healthcare systems.

## **QR Code**
- A machine-readable optical label that contains information about the item to which it is attached. In this context, it holds encrypted data that allows healthcare providers access to a pilgrim's IPS when scanned.

## **PIN (Personal Identification Number)**
- A security feature that adds an extra layer of protection to the pilgrim's health information. The default PIN is often the pilgrim's birthdate, and it is used in conjunction with the QR code to access the IPS.

## **EMR (Electronic Medical Record)**
- A digital version of a patient's paper chart, used by healthcare providers for diagnosis and treatment. In the context of the Hajj, EMRs are used by host country medical facilities to manage pilgrim care.

## **HIE (Health Information Exchange)**
- The electronic sharing of health information among different organizations. In the context of the Hajj, it refers to the system that allows origin countries and the host country to exchange pilgrim health information securely.

## **Anatomical Therapeutic Chemical code (ATC)**
- A unique code assigned to a medicine according to the organ or system it works on and how it works.

## **Pilgrim Registration Number**
- Registration number provided by the Host Country uniquely associated with a Pilgrim during a pilgrimage event.

## **Clinical Practice Guidelines (CPG)**
- Clinical practice guidelines are statements that include recommendations intended to optimize patient care, informed by a systematic review of evidence and an assessment of the benefits and harms of alternative care options.

## **Clinical Quality Language (CQL)**
- This is a HL7 specification for the expression of clinical knowledge that can be used within both the Clinical Decision Support (CDS) and Clinical Quality Measurement (CQM) domains.

## **Data Dictionary**
- A centralized repository of information about data elements that contains their definition, relationships, origin, usage, and type of data. For this digital adaptation kit, the data dictionary is provided as a spreadsheet.

## **Data Element**
- A unit of data that has specific and precise meaning.

## **Defaulter**
- A person who has missed the scheduled dose of a vaccine.

## **Fast Healthcare Interoperability Resources (FHIR)**
- A standard describing data formats and elements and an application programming interface for exchanging electronic health records.

## **Functional Requirement**
- Capabilities the system must have in order to meet the end-users’ needs and achieve tasks within the business process.

## **Implementation Guide (IG)**
- A set of rules about how FHIR resources are used (or should be used) to solve a particular problem, with associated documentation to support and clarify the usage. This IG is based on WHO guidance, as represented in the Digital Adaptation Kit: SMART Guidelines for Immunizations, to support the adoption of open standards for interoperability.

## **Indicator**
- Summary measures that capture relevant information on different attributes and dimensions of health status and performance of a health system.

## **Non-functional Requirement**
- General attributes and features of the digital system to ensure usability and overcome technical and physical constraints. Examples include the ability to work offline, multiple language settings, and password protection.

## **Systemized Nomenclature of Medicine – Clinical Terms Global Patient Set (SNOMED CT GPS)**
- A systematically organized computer-processable collection of medical terms providing codes, terms, synonyms, and definitions used in clinical documentation and reporting.

### Abbreviations

<table class="list">
<thead>
  <tr>
    <th>Term</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>BPMN</td>
    <td>Business Process Model and Notation</td>
  </tr>
  <tr>
    <td>CDS</td>
    <td>Clinical decision support</td>
  </tr>
  <tr>
    <td>CQL</td>
    <td>Clinical Quality Language</td>
  </tr>
  <tr>
    <td>DAK</td>
    <td>Digital Adaptation Kit</td>
  </tr>
  <tr>
    <td>DE</td>
    <td>Data element</td>
  </tr>
  <tr>
    <td>DMN</td>
    <td>Decision Model and Notation</td>
  </tr>
  <tr>
    <td>DT</td>
    <td>Decision support table</td>
  </tr>
  <tr>
    <td>DTDS</td>
    <td>Digital tracking and decision support</td>
  </tr>
  <tr>
    <td>ED</td>
    <td>Event-driven</td>
  </tr>
  <tr>
    <td>eHealth</td>
    <td>Electronic health</td>
  </tr>
  <tr>
    <td>EIR</td>
    <td>Electronic immunization registry</td>
  </tr>
  <tr>
    <td>EMR</td>
    <td>Electronic medical record</td>
  </tr>
  <tr>
    <td>EPI</td>
    <td>Expanded Programme on Immunization</td>
  </tr>
  <tr>
    <td>FHIR</td>
    <td>Fast Healthcare Interoperability Resources</td>
  </tr>
  <tr>
    <td>HW</td>
    <td>Health Worker</td>
  </tr>
  <tr>
    <td>HL7</td>
    <td>Health Level Seven International</td>
  </tr>
  <tr>
    <td>HMIS</td>
    <td>Health management information system</td>
  </tr>
  <tr>
    <td>ICD</td>
    <td>International Classification of Diseases</td>
  </tr>
  <tr>
    <td>ICD-11</td>
    <td>International Classification of Diseases (version 11)</td>
  </tr>
  <tr>
    <td>ICF</td>
    <td>International Classification of Functioning, Disability and Health</td>
  </tr>
  <tr>
    <td>ICHI</td>
    <td>International Classification of Health Interventions</td>
  </tr>
  <tr>
    <td>ID</td>
    <td>Identification</td>
  </tr>
  <tr>
    <td>IG</td>
    <td>Implementation guide</td>
  </tr>
  <tr>
    <td>IHE</td>
    <td>Integrating the Healthcare Enterprise</td>
  </tr>
  <tr>
    <td>IIS</td>
    <td>Immunization Information System</td>
  </tr>
  <tr>
    <td>ISCO</td>
    <td>International Standard for Classification of Occupations</td>
  </tr>
  <tr>
    <td>ITU</td>
    <td>International Telecommunication Union</td>
  </tr>
  <tr>
    <td>LOINC</td>
    <td>Logical Observation Identifiers Names and Codes</td>
  </tr>
  <tr>
    <td>M&amp;E</td>
    <td>Monitoring and Evaluation</td>
  </tr>
  <tr>
    <td>MAPS</td>
    <td>mHealth Assessment and Planning for Scale</td>
  </tr>
  <tr>
    <td>mHealth</td>
    <td>Mobile Health</td>
  </tr>
  <tr>
    <td>MOH</td>
    <td>Ministry of Health</td>
  </tr>
  <tr>
    <td>NMFL</td>
    <td>National Master Facility List</td>
  </tr>
  <tr>
    <td>NFXNREQ</td>
    <td>Non-functional requirement</td>
  </tr>
  <tr>
    <td>OpenHIE</td>
    <td>Open Health Information Exchange</td>
  </tr>
  <tr>
    <td>PrEP</td>
    <td>pre-exposure prophylaxis</td>
  </tr>
  <tr>
    <td>SMART</td>
    <td>Standards-based, Machine-readable, Adaptive, Requirements-based and Testable</td>
  </tr>
  <tr>
    <td>SNOMED CT</td>
    <td>Systematized Nomenclature of Medicine - Clinical Terms</td>
  </tr>
  <tr>
    <td>VVM</td>
    <td>Vaccine Vial Monitor</td>
  </tr>
  <tr>
    <td>WHO</td>
    <td>World Health Organization</td>
  </tr>
</tbody>
</table>
