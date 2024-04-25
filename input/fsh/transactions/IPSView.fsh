Instance: shl-doc-view
InstanceOf: $SGTransactionDef
* title = "Use SHL to access Document Viewer"
* description =  "Use SHL to access Document Viewer"
* name =  "shl-doc-view"

* link[+].extension[triggerEvents].valueMarkdown = """ """
* link[=].extension[messageSemantics].valueMarkdown = """ """
* link[=].extension[expectedActions].valueMarkdown = """ """

* node[+].nodeId = "shl-doc-view-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[sourceActor].valueReference = Reference(HCEMR)

* node[+].nodeId = "shl-doc-view-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[targetActor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#shl-doc-view
* status = #active
* experimental = false

