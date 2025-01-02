


##### Message Semantics Request
- The message semantics for retrieve SHL Manifest Request shall be a POST request as specified by [SMART Health Link Manifest Request](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/links-specification.html#smart-health-link-manifest-request), along with the passcode provided in the body of the request.


##### Message Semantics Response
- The response semantics shall follow the [SMART Health Link Manifest Request](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/links-specification.html#smart-health-link-manifest-request) and respond accordingly.
 - The returned manifest shall be a location that points to the document references within the folder for the pilgrim in the following syntax: "{host}/DocumentReference?_list={folder_id}"