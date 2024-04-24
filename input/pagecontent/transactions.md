This page describes the specific transactions that are referenced in the [sequence diagrams](sequence-diagrams.html) defined by this implementation guide.

Other transactions utilized by this implementation guide my be found:

<h3 id="put_keys">Publish Verification Keys</h3>
<h4>Trigger Events</h4>
<h4>Message Semantics</h4>
The OCHIE SHALL use one of the following transactions:
- [Publish Verification Keys - API](https://smart.who.int/trust/transactions.html#put_keys_api)
<h4>Expected Actions</h4>

<h3 id="get_keys">Retrieve Verification Keys</h3>
<h4>Trigger Events</h4>
<h4>Message Semantics</h4>
The HCEMR SHALL use one of the following transactions:
- [Retrieve Verification Keys - DID](https://smart.who.int/trust/transactions.html#get_keys_did)
- [Retrieve Verification Keys  - API](https://smart.who.int/trust/transactions.html#get_keys_api)
<h4>Expected Actions</h4>
The HCEMR shall use the verificaiton keys to verify the provance of the Verificable Smart Health Link and the Verifable IPS


<h3 id="sign_shl">Sign Smart Health Link</h3>
<h4>Trigger Events</h4>
Once a Smart Health Link has been generated, it SHALL be signed.
<h4>Message Semantics</h4>
Use the  [Sign Health Certificate Claim](https://smart.who.int/trust/transactions.html#sign_claim) transaction.
<h4>Expected Actions</h4>
One the Smart Health Link has been signed, it is a Verifiable Smart Health Link which should be provided to the Pilgrim.


<h3 id="sign_ips">Sign IPS</h3>
<h4>Trigger Events</h4>
Once the OCHIE has generated an International Patient Summary (IPS) document.
<h4>Message Semantics</h4>
The OCHIE SHALL use one of the following:
- the [IHE Document Digital Signature (DSG)](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html) profile for XML-singatures
- the IHE Document Digital Signature - JSON (DSGj)(forthcoming) profile for JSON-singatures


<h4>Expected Actions</h4>
Once the IPS has been signed it is now a Verififable Digital Health Certificate and SHALL be available for retrieval via a Smart Health Link.


<h3 id="ips_view">Retrieve SHL IPS Viewer</h3>
<h4>Trigger Events</h4>
<h4>Message Semantics</h4>
<h4>Expected Actions</h4>

<h3 id="ips_manifest">Retrieve SHL IPS Manifest</h3>
<h4>Trigger Events</h4>
Initatied by the HCEMR once a Smart Health Link provided by a Pilgrim has been scanned.
<h4>Message Semantics</h4>
See the [Smart Health Link - Manifest](https://docs.smarthealthit.org/smart-health-links/spec/#shlink-manifest-request) specifcation with the following modifications:
- The *contentType* entry MAY also include the value "application/pdf" in the case that the corresponding *location* entry of the Smart Health Link is for a PDF rendering of the Verifiable IPS.
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is for an external viewing portal for the Verifiable IPS.
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is a Verifiable IPS


<h4>Expected Actions</h4>



<h3 id="consent-post-counseling">Record Consent - Post-Counseling </h3>
<h4>Trigger Events</h4>
Consent can be recorded based on a post counseling based on a blanket jurisdictional policy.

<h4>Message Semantics</h4>
The OCHIE shall support create and update per the  [IHE PCF Consent Recorder Capability Statement](https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRecorder.html). 
<h4>Expected Actions</h4>
The OCHIE SHALL act as  [IHE PCF Consent Recorder](https://profiles.ihe.net/ITI/PCF/volume-1.html#153111-consent-recorder)

<h3 id="consent-wallet">Record Consent - Digital Health Wallet </h3>
<h4>Trigger Events</h4>
Consent record based on individual's interaction with their digital health wallet.  
<h4>Message Semantics</h4>
The OCHIE shall support create and update per the  [IHE PCF Consent Recorder Capability Statement](https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRecorder.html). 
<h4>Expected Actions</h4>
The OCHIE SHALL act as  [IHE PCF Consent Recorder](https://profiles.ihe.net/ITI/PCF/volume-1.html#153111-consent-recorder)
