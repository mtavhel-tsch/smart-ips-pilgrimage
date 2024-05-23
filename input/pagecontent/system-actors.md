These are the actors for ips-pilgrimage
###  Counselor {#counselor}
Type: (person)


Description: Counselor from origin country supporting Hajj pilgrim during initial health screening
{% include actor-counselor.md %}
	


The Counselor actor participates in the following transactions as a source:


The Counselor actor participates in the following transactions as a target:


The Counselor actor participates in the following questionnaires:

###  Pilgrim {#pilgrim}
Type: (person)


Description: The Hajj pilgrim
{% include actor-pilgrim.md %}
	


The Pilgrim actor participates in the following transactions as a source:


The Pilgrim actor participates in the following transactions as a target:


The Pilgrim actor participates in the following questionnaires:
-  Questionnaire: <a href="Questionnaire-shl-configure-privacy-settings.html">configure SHL privacy settings on wallet (shl-configure-privacy-settings)</a> 
-  Questionnaire: <a href="Questionnaire-consent-wallet-questionnaire.html">fill consent form for sharing IPS during Hajj on wallet (consent-wallet-questionnaire)</a> 

###  Origin Country  Wallet {#ochw}
Type: (system)


Description: The pilgrim's origin country's digital health wallet
{% include actor-ochw.md %}
	


The Origin Country  Wallet actor participates in the following transactions as a source:
-  Transaction: <a href="transaction-shl-request.hmtl">request SHL from HIE (shl-request)</a> 
-  Transaction: <a href="transaction-record-consent-request.hmtl">record consent from wallet - request (record-consent-request)</a> 


The Origin Country  Wallet actor participates in the following transactions as a target:


The Origin Country  Wallet actor participates in the following questionnaires:

###  Origin Country  HIE {#ochie}
Type: (system)


Description: The pilgrim's origin country's HIE or national system
{% include actor-ochie.md %}
	


The Origin Country  HIE actor participates in the following transactions as a source:
-  Transaction: <a href="transaction-issue-shl.hmtl">issue SHL (issue-shl)</a> 
-  Transaction: <a href="transaction-record-consent-response.hmtl">record consent from wallet - response (record-consent-response)</a> 


The Origin Country  HIE actor participates in the following transactions as a target:


The Origin Country  HIE actor participates in the following questionnaires:

