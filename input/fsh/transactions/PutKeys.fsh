Instance: PutKeys
InstanceOf: $SGTransaction
* title = "Publish Verification Keys"
* description = "Publish Verification Keys"
* name = "PutKeys"
* extension[triggerEvents].valueMarkdown = """ """
* extension[messageSemantics].valueMarkdown = """
The OCHIE SHALL use one of the following transactions:
- [Publish Verification Keys - API](https://smart.who.int/trust/transactions.html#put_keys_api)
"""
* extension[expectedActions].valueMarkdown = """ """
* extension[sourceActor].valueReference = Reference(OCHIE)
* extension[targetActor].valueReference = Reference($GDHCN)
* instance = false
* type = false
* system = true
* code = #PutKeys
* kind = #operation
* status = #active
* experimental = false
