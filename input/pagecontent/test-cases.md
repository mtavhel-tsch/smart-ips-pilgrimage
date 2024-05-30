This page will include test cases developed for the test scenarios, transactions and actors included in this implementation guide. See [Testing](testing.html) for additional testing artifacts.

The testing artifacts in this implementation guide are not intended to be used to determine formal conformance, nor are they intended to be authoritative or comprehensive.


### IPS-Pilgrimage End to End Workflow

#### Issuance of verifiable health document (IPS)

##### Record Consent

```
Feature: Record Consent

Scenario: Consent is provided and saved successfully
GIVEN an IPS is generated
WHEN a new consent directive has been recorded by a origin country Digital Health Wallet
THEN the origin country Health wallet initiates a record consent request as a PUT/POST request along with FHIR consent resource compliant with ITI-108 Create request
AND the origin country HIE stores the consent resource in the consent registry
AND sends a success response as indicated by http response code

Scenario: Consent is provided but fails to save
GIVEN an IPS is generated
WHEN a new consent directive has been recorded by a origin country Digital Health Wallet
THEN the origin country Health wallet initiates a record consent request as a PUT/POST request along with FHIR consent resource compliant with ITI-108 Create request
AND the origin country HIE attempts to store the consent resource in the consent registry and fails
AND sends a failure response as indicated by http response code

Scenario: Consent is denied
GIVEN an IPS is generated
WHEN a new negative consent directive has been recorded by a origin country Digital Health Wallet
THEN
AND 
AND 

```

##### Issue SHL

```
Feature: Issue SHL

Scenario: QR Code with HCERT containing SHL is generated
GIVEN an IPS is generated
AND consent is provided
AND a Passcode and time limit is set
WHEN the origin country Digital Health Wallet sends a issue-shl-request to Origin Country HIE
THEN the Origin Country HIE constructs a SHL payload
AND embeds the SHL in HCERT
AND constructs COSE payload
AND signs the payload with Kid
AND builds CWT structure
AND serializes CWT and encodes to Base64
AND generates the QR Code

```

#### Unplanned Clinical Encounter at Hajj Health Facility

##### Verify Signature on HCERT using Kid

##### Retrieve SHL Manifest

##### Retrieve IPS Json

##### View IPS content