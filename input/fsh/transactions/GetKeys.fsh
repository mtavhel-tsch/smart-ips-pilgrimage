
Instance: GetKeys
InstanceOf: $SGTransaction
* title = "Retrieve Verification Keys"
* description = "Retrieve Verification Keys"
* name = "GetKeys"
* extension[triggerEvents].valueMarkdown = """ """
* extension[messageSemantics].valueMarkdown = """
The HCEMR SHALL use one of the following transactions:
- [Retrieve Verification Keys - DID](https://smart.who.int/trust/transactions.html#get_keys_did)
- [Retrieve Verification Keys  - API](https://smart.who.int/trust/transactions.html#get_keys_api)
"""
* extension[expectedActions].valueMarkdown = """The HCEMR shall use the verificaiton keys to verify the provance of the Verificable Smart Health Link and the Verifable IPS"""
* extension[sourceActor].valueReference = Reference($GDHCN)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = false
* type = false
* system = true
* code = #GetKeys
* kind = #operation
* status = #active
* experimental = false

