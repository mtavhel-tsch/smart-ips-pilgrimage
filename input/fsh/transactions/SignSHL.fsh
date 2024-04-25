Instance: shl-sign
InstanceOf: $SGTransactionDef
* title = "Sign Smart Health Link"
* description = "Sign Smart Health Link"
* name = "shl-sign"

* link[+].extension[triggerEvents].valueMarkdown = """Once a Smart Health Link has been generated, it SHALL be signed."""
* link[=].extension[messageSemantics].valueMarkdown = """Use the  [Sign Health Certificate Claim](https://smart.who.int/trust/transactions.html#sign_claim) transaction."""
* link[=].extension[expectedActions].valueMarkdown = """One the Smart Health Link has been signed, it is a Verifiable Smart Health Link which should be provided to the Pilgrim."""

* node[+].nodeId = "shl-sign-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[sourceActor].valueReference = Reference(OCHIE)

* node[+].nodeId = "shl-sign-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#shl-sign
* status = #active
* experimental = false
