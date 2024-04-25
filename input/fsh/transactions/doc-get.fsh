Instance: doc-get
InstanceOf: $SGTransactionDef
* title = "Get IPS or other Document"
* description = "Get IPS"
* name = "doc-get"

* link[+].extension[triggerEvents].valueMarkdown = """SHL Manifest was retrieved and refers to IPS or other document"""
* link[=].extension[messageSemantics].valueMarkdown = """Same for retrieving a FHIR Document Bundle such as IPS using GET"""
* link[=].extension[expectedActions].valueMarkdown = """ Return the requested bundle assuming access controls and jurisidictional policies are met"""

* node[+].nodeId = "doc-get-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)  
* node[=].extension[sourceActor].valueReference = Reference(HCEMR)

* node[+].nodeId = "doc-get-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#doc-get
* status = #active
* experimental = false

