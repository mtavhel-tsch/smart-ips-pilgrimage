Profile: HajjConsent
Parent: Consent
Description: "A profile of the consent resource to track consent of a pilgrim to participate"
* category 1..
* category from IPS.HAJJ.CONSENT
* decision 1..
* period 1..
* subject 1..
* verification 1..
* verification.verifiedBy 1..
* verification.verifiedBy only Reference(HajjOrganization)
* verification.verifiedWith 1..
* verification.verificationDate 1..
