Instance: shl-get-manifest
InstanceOf: $SGTransactionDef
* title = "Get SHL Manifest"
* description = "Get SHL Manifest"
* name = "shl-get-manifest"

* link[+].extension[triggerEvents].valueMarkdown = """Initatied by the HCEMR once a Smart Health Link provided by a Pilgrim has been scanned."""
* link[=].extension[messageSemantics].valueMarkdown = """
See the [Smart Health Link - Manifest](https://docs.smarthealthit.org/smart-health-links/spec/#shlink-manifest-request) specifcation with the following modifications:
- The *contentType* entry MAY also include the value "application/pdf" in the case that the corresponding *location* entry of the Smart Health Link is for a PDF rendering of the Verifiable Digital Health Certificate (e.g. Verifiable IPS).
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is for an external viewing portal for Verifiable Digital Health Certificate (e.g. Verifiable IPS).
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is a Verifiable Digital Health Certificate (e.g. Verifiable IPS).
"""
* link[=].extension[expectedActions].valueMarkdown = """  """

* node[+].nodeId = "shl-get-manifest-source"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[actor].valueReference = Reference(HCEMR)  

* node[+].nodeId = "shl-get-manifest-target"
* node[=].type = #ActorDefinition
* node[=].profile = canonical(SGActor)
* node[=].extension[actor].valueReference = Reference(OCHIE)

* extension[code] = $IPSHajjTrans#shl-get-manifest
* experimental = false
* status = #active




// this is not a true FHIR operation 
// Instance: IPSManifestOperation
// InstanceOf: $SGTransactionOp
// * title = "Retrieve SHL for IPS Manifest"
// * description = "Retrieve SHL for IPS Manifest"
// * name = "IPSManifest"
// * extension[transaction].valueReference = Reference(IPSManifest)
// * instance = false
// * type = false
// * system = true
// * code = #IPSManifest"
// * kind = #operation
// * experimental = false
// * status = #active
