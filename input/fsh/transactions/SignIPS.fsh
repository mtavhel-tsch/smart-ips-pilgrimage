Instance: doc-sign
InstanceOf: $SGTransactionDef
* title = "Sign IPS or other Document"
* description = "Sign IPS"
* name = "doc-sign"

* link[+].extension[triggerEvents].valueMarkdown = """Once the OCHIE has generated an International Patient Summary (IPS) document."""
* link[=].extension[messageSemantics].valueMarkdown = """The OCHIE SHALL use one of the following:
- the [IHE Document Digital Signature (DSG)](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html) profile for XML-singatures
- the IHE Document Digital Signature - JSON (DSGj)(forthcoming) profile for JSON-singatures
"""
* link[=].extension[expectedActions].valueMarkdown = """ Once the IPS has been signed it is now a Verififable Digital Health Certificate and SHALL be available for retrieval via a Smart Health Link.  """

* node[+].nodeId = "doc-sign-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)  
* node[=].extension[sourceActor].valueReference = Reference(OCHIE)

* node[+].nodeId = "doc-sign-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)  
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#doc-sign
* status = #active
* experimental = false

