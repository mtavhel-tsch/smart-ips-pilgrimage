
Instance: keys-get
InstanceOf: $SGTransactionDef
* title = "Retrieve Verification Keys"
* description = "Retrieve Verification Keys"
* name = "keys-get"

* link[+].extension[triggerEvents].valueMarkdown = """ """
* link[=].extension[messageSemantics].valueMarkdown = """
The HCEMR SHALL use one of the following transactions:
- [Retrieve Verification Keys - DID](https://smart.who.int/trust/transactions.html#get_keys_did)
- [Retrieve Verification Keys  - API](https://smart.who.int/trust/transactions.html#get_keys_api)
"""
* link[=].extension[expectedActions].valueMarkdown = """The HCEMR shall use the verificaiton keys to verify the provance of the Verificable Smart Health Link and the Verifable IPS"""

* node[+].nodeId = "keys-get-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)    
* node[=].extension[sourceActor].valueReference = Reference($GDHCN)

* node[+].nodeId = "keys-get-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)     
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#keys-get
* status = #active
* experimental = false

