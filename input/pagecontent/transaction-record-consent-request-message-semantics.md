##### Message Semantics Request
- The message semantics for Record Consent Request utilizes a FHIR Consent resource set as PUT or POST http request.


- See [https://profiles.ihe.net/ITI/PCF/ITI-108.html](https://profiles.ihe.net/ITI/PCF/ITI-108.html) for more details. 

- Specifically,
    - Access Consent - Create (ITI-108)
    - Access Consent - Update (ITI-108)

##### Message Semantics Response
See the ITI 108 Create and Update sections. The success or failure of the create/ update interaction is indicated by the http response code (e.g., 400, 200, etc.).

