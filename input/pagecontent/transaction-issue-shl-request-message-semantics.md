


##### Message Semantics Request
- The message semantics for retrieve SHL Request shall include parameters that are required to construct a [SMART Health Link Payload](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/links-specification.html#construct-a-smart-health-link-payload), specifically
  - flag for Passcode
  - expiration time
Record Consent Request utilizes a FHIR Consent resource set as PUT or POST http request.


##### Message Semantics Response
- The Issue SHL Request - Response shall include a serialized CWT via a QR Code Image as specified in the Expected Actions section.

