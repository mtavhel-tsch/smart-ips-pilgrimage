
Instance: consent-wallet
InstanceOf: $SGTransactionDef
* title = "Record Consent - Digital Health Wallet"
* description = "Record consent on a digital health wallet"
* name = "consent-wallet"

* link[+].extension[triggerEvents].valueMarkdown = """ Consent record based on individual's interaction with their digital health wallet.  """
* link[=].extension[messageSemantics].valueMarkdown = """The OCHIE shall support create and update per the  [IHE PCF Consent Recorder Capability Statement](https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRecorder.html). """
* link[=].extension[expectedActions].valueMarkdown = """
The OCHIE SHALL act as  [IHE PCF Consent Recorder](https://profiles.ihe.net/ITI/PCF/volume-1.html#153111-consent-recorder)
"""

* node[+].nodeId = "consent-wallet-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)    
* node[=].extension[sourceActor].valueReference = Reference(OCHW)

* node[+].nodeId = "consent-wallet-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)    
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#consent-wallet
* kind = #operation
* experimental = false
* status = #active