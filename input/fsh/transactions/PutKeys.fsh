Instance: keys-put
InstanceOf: $SGTransactionDef
* title = "Publish Verification Keys"
* description = "Publish Verification Keys"
* name = "keys-put"

* link[+].extension[triggerEvents].valueMarkdown = """ """
* link[=].extension[messageSemantics].valueMarkdown = """
The OCHIE SHALL use one of the following transactions:
- [Publish Verification Keys - API](https://smart.who.int/trust/transactions.html#put_keys_api)
"""
* link[=].extension[expectedActions].valueMarkdown = """ """

* node[+].nodeId = "keys-put-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)     
* node[=].extension[sourceActor].valueReference = Reference(OCHIE)

* node[+].nodeId = "keys-put-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)  
* node[=].extension[targetActor].valueReference = Reference($GDHCN)

* extension[code] = $IPSHajjTrans#keys-put
* status = #active
* experimental = false
