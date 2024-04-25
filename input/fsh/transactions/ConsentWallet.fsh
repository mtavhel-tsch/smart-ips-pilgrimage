
Instance: ConsentWallet
InstanceOf: $SGTransaction
* title = "Record Consent - Digital Health Wallet"
* description = "Record consent on a digital health wallet"
* name = "RecordConsentWallet"
* extension[triggerEvent].valueMarkdown = """ Consent record based on individual's interaction with their digital health wallet.  """
* extension[messageSemantics].valueMarkdown = """The OCHIE shall support create and update per the  [IHE PCF Consent Recorder Capability Statement](https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRecorder.html). """
* extension[expectedActions].valueMarkdown = """
The OCHIE SHALL act as  [IHE PCF Consent Recorder](https://profiles.ihe.net/ITI/PCF/volume-1.html#153111-consent-recorder)
"""
* extension[sourceActor].valueReference = Reference(OCHW)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = true
* type = true
* system = false
* code = #ConsentWallet
* kind = #operation
* experimental = false
* status = #active