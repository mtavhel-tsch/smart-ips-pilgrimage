Profile: HajjConsent
Parent: IntermediateConsent
Description: "A profile of the consent resource to track consent of a pilgrim to participate

FHIR R5 upgrade notes (need this implemented as a structure map):
 * make cardinality of decision 1.. and should stop using it in lieu of verification.verified
 * use verification.verifiedBy instead of Consent.organization
 * the period extenion should be replaced by Consent.period
 * the Consent.patient should be replaced by Consent.subject
 * Consent.verification.verifiedBy should be used instead of Consent.organization
"

* provision 1..1
* provision.purpose 1..*
* provision.purpose from  IPS.HAJJ.CONSENT
* provision.period 1..1 MS

* patient 1..
* organization only Reference(HajjOrganization)

/*
* category 1.. MS
* category from IPS.HAJJ.CONSENT

// NOTE:
// in FHIR R5 should  make cardinality of decision 1..
// * decision 1..

// NOTE:
// in FHIR R5 should use verification.verifiedBy instead of Consent.organization
* organization only Reference(HajjOrganization)

// NOTE:
// in FHIR R5 the period extenion should be replaced by Consent.period
// * period 1..
* extension contains ConsentPeriod named period 1..* MS

// NOTE:
// in FHIR R5 the Consent.patient should be replaced by Consent.subject
// * subject 1..
* patient 1..


* verification 1..


// NOTE:
// in FHIR R5 Consent.verification.verifiedBy should be used instead of Consent.organization
// * verification.verifiedBy only Reference(HajjOrganization)
// * verification.verifiedBy 1..
//* verification contains
   // ConsentVerifiedBy named verifiedBy 1..* MS

* verification.ve* verificationrifiedWith 1..
* verification.verificationDate 1..
*/