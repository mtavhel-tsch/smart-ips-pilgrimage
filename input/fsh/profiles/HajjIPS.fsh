Profile: HajjIPS
Parent: BundleUvIps

* entry contains
    consent 1..1
* entry[consent].resource only HajjConsent


Profile: HajjIPS-Composition
Parent: CompositionUvIps

* section[sectionAdvanceDirectives] 1..1
* section[sectionAdvanceDirectives].entry only Reference(HajjConsent)

