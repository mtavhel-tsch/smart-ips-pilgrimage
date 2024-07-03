Profile: HajjIPS
Parent: BundleUvIps

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry contains
    consent 0..1



Profile: HajjIPS-Composition
Parent: CompositionUvIps




* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section contains
    sectionConsent 0..1 MS

* section[sectionConsent] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionConsent] ^extension[=].valueString = "Section"
* section[sectionConsent] ^short = "IPS Consent Section"
* section[sectionConsent] ^definition = "The consent section contains the patient's consent information."
* section[sectionConsent].title 1.. MS
* section[sectionConsent].title ^short = "Consent section"
* section[sectionConsent].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.\r\n\r\nMedication Summary "
* section[sectionConsent].code =  http://loinc.org#59284-0
* section[sectionConsent].entry only Reference(HajjConsent)
* section[sectionConsent].entry MS
