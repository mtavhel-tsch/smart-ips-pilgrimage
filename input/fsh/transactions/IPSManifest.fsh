Instance: IPSManifest
InstanceOf: $SGTransaction
* title = "Retrieve SHL for IPS Manifest"
* description = "Retrieve SHL for IPS Manifest"
* name = "SHLIPSManifest"
* extension[triggerEvents].valueMarkdown = """Initatied by the HCEMR once a Smart Health Link provided by a Pilgrim has been scanned."""
* extension[messageSemantics].valueMarkdown = """
See the [Smart Health Link - Manifest](https://docs.smarthealthit.org/smart-health-links/spec/#shlink-manifest-request) specifcation with the following modifications:
- The *contentType* entry MAY also include the value "application/pdf" in the case that the corresponding *location* entry of the Smart Health Link is for a PDF rendering of the Verifiable IPS.
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is for an external viewing portal for the Verifiable IPS.
- The *contentType* entry MAY also include the value "text/html" in the case that the corresponding *location* entry of the Smart Health Link is a Verifiable IPS
"""
* extension[expectedActions].valueMarkdown = """  """
* extension[sourceActor].valueReference = Reference(HCEMR)
* extension[targetActor].valueReference = Reference(OCHIE)
* instance = false
* type = false
* system = true
* code = #IPSManifest"
* kind = #operation
* experimental = false
* status = #active
