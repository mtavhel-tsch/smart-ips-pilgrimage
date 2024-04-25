
Instance: ConsentPostCounseling
InstanceOf: $SGTransaction
* title = "Record Consent - Post-Counseling"
* description = "Record Consent - Post-Counseling. Intended in bulk"
* name  = "RecordConsentBulk"
* extension[triggerEvents].valueMarkdown = """Consent can be recorded based on a post counseling based on a blanket jurisdictional policy."""
* extension[messageSemantics].valueMarkdown = """The OCHIE shall support create and update per the  [IHE PCF Consent Recorder Capability Statement](https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRecorder.html). """
* extension[expectedActions].valueMarkdown = """The OCHIE SHALL act as  [IHE PCF Consent Recorder](https://profiles.ihe.net/ITI/PCF/volume-1.html#153111-consent-recorder) """
* extension[sourceActor].valueReference = Reference(OCHIE)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = true
* type = true
* system = false
* code = #ConsentPostCounseling
* kind = #operation
* experimental = false
* status = #active
