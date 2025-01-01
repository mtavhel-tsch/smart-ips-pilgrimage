Instance:   PilgrimFolder
InstanceOf: IHE.MHD.Minimal.Folder
Title: "My Hajj Pilgrimage Minimal Folder"
Description:      "Folder for Pilgrim"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:5e2d58a3-2286-4a0e-8637-86f51be2d184"
* identifier[entryUUID].use = #official
* identifier[uniqueId].system = "urn:ietf:rfc:3986"
* identifier[uniqueId].value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46391"
* identifier[uniqueId].use = #usual
* status = #current
* mode = #working
* code = MHDlistTypes#folder
* entry[0].item = Reference(DocumentReference/FHIRIPSDocumentReference)
* entry[1].item = Reference(DocumentReference/IPSPDFDocumentReference)

Instance:   FHIRIPSDocumentReference
InstanceOf: IHE.MHD.Minimal.DocumentReference
Title:      "FHIR IPS json reference"
Description: "Example of a minimal DocumentReference resource. This is very unlikely to be acceptable anywhere, but it is the minimum required."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
* identifier[entryUUID].use = #official
* status = #current
* content.attachment.contentType = #text/plain
* content.attachment.url = "https://worldhealthorganization.github.io/smart-ips-pilgrimage/branches/2.0.0/Bundle-MyIPS.json"

Instance:   IPSPDFDocumentReference
InstanceOf: IHE.MHD.Minimal.DocumentReference
Title:      "FHIR IPS json reference"
Description: "Example of a minimal DocumentReference resource. This is very unlikely to be acceptable anywhere, but it is the minimum required."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
* identifier[entryUUID].use = #official
* status = #current
* content.attachment.contentType = #text/plain
* content.attachment.url = "https://worldhealthorganization.github.io/smart-ips-pilgrimage/branches/2.0.0/MyIPS.pdf"