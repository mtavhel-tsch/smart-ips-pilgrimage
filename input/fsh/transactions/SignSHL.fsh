Instance: SignSHL
InstanceOf: $SGTransaction
* title = "Sign Smart Health Link"
* description = "Sign Smart Health Link"
* name = "SignSHL"
* extension[triggerEvent].valueMarkdown = """Once a Smart Health Link has been generated, it SHALL be signed."""
* extension[messageSemantics].valueMarkdown = """Use the  [Sign Health Certificate Claim](https://smart.who.int/trust/transactions.html#sign_claim) transaction."""
* extension[expectedActions].valueMarkdown = """One the Smart Health Link has been signed, it is a Verifiable Smart Health Link which should be provided to the Pilgrim."""
* extension[sourceActor].valueReference = Reference(OCHIE)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = false
* type = false
* system = true
* code = #SignSHL
* kind = #operation
* status = #active
* experimental = false
