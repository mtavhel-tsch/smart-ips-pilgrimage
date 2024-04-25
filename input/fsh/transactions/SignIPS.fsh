
Instance: SignIPS
InstanceOf: $SGTransaction
* title = "Sign IPS"
* description = "Sign IPS"
* name = "SignIPS"
* extension[triggerEvents].valueMarkdown = """Once the OCHIE has generated an International Patient Summary (IPS) document."""
* extension[messageSemantics].valueMarkdown = """The OCHIE SHALL use one of the following:
- the [IHE Document Digital Signature (DSG)](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html) profile for XML-singatures
- the IHE Document Digital Signature - JSON (DSGj)(forthcoming) profile for JSON-singatures
"""
* extension[expectedActions].valueMarkdown = """ Once the IPS has been signed it is now a Verififable Digital Health Certificate and SHALL be available for retrieval via a Smart Health Link.  """
* extension[sourceActor].valueReference = Reference(OCHIE)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = false
* type = false
* system = true
* code = #SignIPS
* kind = #operation
* status = #active
* experimental = false

