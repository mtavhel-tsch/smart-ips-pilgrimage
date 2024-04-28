#!/bin/bash

#
# Bash script to create auto generated page content
#
# IG Slug: (ips-pilgrimage)
# IG Base URL: (http://smart.who.int/)
# IG Publisher: (WHO)
# IG Version: (1.1.4)
#
#
#clean out the actor and transactions pages
cat << EOF > input/pagecontent/transactions.md
These are the transactions for ips-pilgrimage
EOF

cat << EOF > input/pagecontent/actors.md
These are the actors for ips-pilgrimage
EOF
      
# Found Actors:
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
#   actor code: ochie
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
#   actor code: ochie
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
# Found Inner Actors (no child lanes):
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
#   actor code: ochie
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
#   actor code: ochie
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
# Found Unique Actors (no child lanes):
#   actor code: counselor
#   actor code: pilgrim
#   actor code: ochw
#   actor code: ochie
# Found Transactions:
#   transaction code: issue-shl
#   transaction code: shl-request
#   transaction code: record-consent-response
#   transaction code: record-consent-request
#   transaction code: issue-shl
#   transaction code: shl-request
# Found Unique Transactions:
#   transaction code: issue-shl
#   transaction code: shl-request
#   transaction code: record-consent-response
#   transaction code: record-consent-request
# Found User Tasks:
#   questionniare code: shl-configure-privacy-settings
#   questionniare code: consent-wallet-questionnaire
#   questionniare code: shl-configure-privacy-settings
#   questionniare code: shl-configure-privacy-settings
# Found Unique User Tasks:
#   questionniare code: shl-configure-privacy-settings
#   questionniare code: consent-wallet-questionnaire
#   questionniare code: shl-configure-privacy-settings
#   questionniare code: shl-configure-privacy-settings
# Looking at actors
# Unique actor: Counselor

#  Found actorType (person) for role (Counselor) with code (counselor) 

touch input/pagecontent/actor-counselor.md 

cat << EOF >> input/pagecontent/actors.md
###  Counselor {#counselor}
Type: (person)


Description: Counselor from origin country supporting Hajj pilgrim during inital health screening
{% include actor-counselor.md %}


EOF
	
# Unique actor: Pilgrim

#  Found actorType (person) for role (Pilgrim) with code (pilgrim) 

touch input/pagecontent/actor-pilgrim.md 

cat << EOF >> input/pagecontent/actors.md
###  Pilgrim {#pilgrim}
Type: (person)


Description: The Hajj pilgrim
{% include actor-pilgrim.md %}


EOF
	
# Unique actor: Origin Country  Wallet

#  Found actorType (system) for role (Origin Country  Wallet) with code (ochw) 

touch input/pagecontent/actor-ochw.md 

cat << EOF >> input/pagecontent/actors.md
###  Origin Country  Wallet {#ochw}
Type: (system)


Description: The pilgrim's origin country's digital health wallet
{% include actor-ochw.md %}


EOF
	
# Unique actor: Origin Country  HIE

#  Found actorType (system) for role (Origin Country  HIE) with code (ochie) 

touch input/pagecontent/actor-ochie.md 

cat << EOF >> input/pagecontent/actors.md
###  Origin Country  HIE {#ochie}
Type: (system)


Description: The pilgrim's origin country's HIE or national system
{% include actor-ochie.md %}


EOF
	
# Processing collab process: health-check-wallet-consent-and-shl-issuance-2
# Check process: (Health Check and SHL Issuance, Wallet Consent) - (health-check-wallet-consent-and-shl-issuance-2)
# Send/Receive task pairs: (generate-shl)->(display-shl) 
# Send/Receive task pairs: (generate-shl)->(display-shl) 
# Checking if Activity_1jht4ag = generate-shl
# Checking if Activity_1n6cwq1 = generate-shl
# Checking if display-shl = generate-shl
# Checking if generate-shl = generate-shl
# Checking if Activity_09e0qyv = generate-shl
# Checking if Activity_0s13xkg = generate-shl
# Checking if Activity_05usf1p = generate-shl
# Checking if Activity_0f7z820 = generate-shl
# Checking if Activity_0jf6sb5 = generate-shl
# Checking if Activity_1akt4be = generate-shl
# Checking if Activity_04p41ni = generate-shl
# Got source actor: ochie
# Got target actor: ochw

#
# Creating tranasaction page slugs for issue-shl}
#
touch input/pagecontent/transaction-issue-shl-preamble.md 
touch input/pagecontent/transaction-issue-shl-trigger-events.md 
touch input/pagecontent/transaction-issue-shl-message-semantics.md 
touch input/pagecontent/transaction-issue-shl-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  issue SHL {#issue-shl}

(issue SHL)


{% include transaction-issue-shl-preamble.md %}
#### Trigger Events
{% include transaction-issue-shl-trigger-events.md %}
#### Message Semantics
{% include transaction-issue-shl-message-semantics.md %}
#### Expected Actions
{% include transaction-issue-shl-expected-actions-semantics.md %}

EOF

			  
# Send/Receive task pairs: (shl-config-send)->(shl-config-receive) 
# Send/Receive task pairs: (shl-config-send)->(shl-config-receive) 
# Checking if Activity_1jht4ag = shl-config-send
# Checking if Activity_1n6cwq1 = shl-config-send
# Checking if display-shl = shl-config-send
# Checking if generate-shl = shl-config-send
# Checking if Activity_09e0qyv = shl-config-send
# Checking if Activity_0s13xkg = shl-config-send
# Checking if Activity_05usf1p = shl-config-send
# Checking if Activity_0f7z820 = shl-config-send
# Checking if Activity_0jf6sb5 = shl-config-send
# Checking if Activity_1akt4be = shl-config-send
# Checking if Activity_04p41ni = shl-config-send
# Got source actor: ochw
# Got target actor: ochie

#
# Creating tranasaction page slugs for shl-request}
#
touch input/pagecontent/transaction-shl-request-preamble.md 
touch input/pagecontent/transaction-shl-request-trigger-events.md 
touch input/pagecontent/transaction-shl-request-message-semantics.md 
touch input/pagecontent/transaction-shl-request-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  request SHL from HIE {#shl-request}

(request SHL from HIE)


{% include transaction-shl-request-preamble.md %}
#### Trigger Events
{% include transaction-shl-request-trigger-events.md %}
#### Message Semantics
{% include transaction-shl-request-message-semantics.md %}
#### Expected Actions
{% include transaction-shl-request-expected-actions-semantics.md %}

EOF

			  
# Send/Receive task pairs: (Activity_04bcbu9)->(Activity_1i7ra1n) 
# Send/Receive task pairs: (Activity_04bcbu9)->(Activity_1i7ra1n) 
# Checking if Activity_1jht4ag = Activity_04bcbu9
# Checking if Activity_1n6cwq1 = Activity_04bcbu9
# Checking if display-shl = Activity_04bcbu9
# Checking if generate-shl = Activity_04bcbu9
# Checking if Activity_09e0qyv = Activity_04bcbu9
# Checking if Activity_0s13xkg = Activity_04bcbu9
# Checking if Activity_05usf1p = Activity_04bcbu9
# Checking if Activity_0f7z820 = Activity_04bcbu9
# Checking if Activity_0jf6sb5 = Activity_04bcbu9
# Checking if Activity_1akt4be = Activity_04bcbu9
# Checking if Activity_04p41ni = Activity_04bcbu9
# Got source actor: ochie
# Got target actor: ochw

#
# Creating tranasaction page slugs for record-consent-response}
#
touch input/pagecontent/transaction-record-consent-response-preamble.md 
touch input/pagecontent/transaction-record-consent-response-trigger-events.md 
touch input/pagecontent/transaction-record-consent-response-message-semantics.md 
touch input/pagecontent/transaction-record-consent-response-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  record consent from wallet - response {#record-consent-response}

(record consent from wallet - response)


{% include transaction-record-consent-response-preamble.md %}
#### Trigger Events
{% include transaction-record-consent-response-trigger-events.md %}
#### Message Semantics
{% include transaction-record-consent-response-message-semantics.md %}
#### Expected Actions
{% include transaction-record-consent-response-expected-actions-semantics.md %}

EOF

			  
# Send/Receive task pairs: (consent-wallet-send)->(consent-wallet-receive) 
# Send/Receive task pairs: (consent-wallet-send)->(consent-wallet-receive) 
# Checking if Activity_1jht4ag = consent-wallet-send
# Checking if Activity_1n6cwq1 = consent-wallet-send
# Checking if display-shl = consent-wallet-send
# Checking if generate-shl = consent-wallet-send
# Checking if Activity_09e0qyv = consent-wallet-send
# Checking if Activity_0s13xkg = consent-wallet-send
# Checking if Activity_05usf1p = consent-wallet-send
# Checking if Activity_0f7z820 = consent-wallet-send
# Checking if Activity_0jf6sb5 = consent-wallet-send
# Checking if Activity_1akt4be = consent-wallet-send
# Checking if Activity_04p41ni = consent-wallet-send
# Got source actor: ochw
# Got target actor: ochie

#
# Creating tranasaction page slugs for record-consent-request}
#
touch input/pagecontent/transaction-record-consent-request-preamble.md 
touch input/pagecontent/transaction-record-consent-request-trigger-events.md 
touch input/pagecontent/transaction-record-consent-request-message-semantics.md 
touch input/pagecontent/transaction-record-consent-request-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  record consent from wallet - request {#record-consent-request}

(record consent from wallet - request)
This is the IHE PCF record consent transaction

See 
   https://profiles.ihe.net/ITI/PCF/ITI-108.html
Access Consent - Create (ITI-108)
Access Consent - Update (ITI-108)
https://profiles.ihe.net/ITI/PCF/CapabilityStatement-IHE.PCF.consentRegistry.html

{% include transaction-record-consent-request-preamble.md %}
#### Trigger Events
{% include transaction-record-consent-request-trigger-events.md %}
#### Message Semantics
{% include transaction-record-consent-request-message-semantics.md %}
#### Expected Actions
{% include transaction-record-consent-request-expected-actions-semantics.md %}

EOF

			  
# Processing collab process: health-check-wallet-consent-and-shl-issuance
# Check process: (Health Check and SHL Issuance, Wallet Consent) - (health-check-wallet-consent-and-shl-issuance)
# Send/Receive task pairs: (Activity_0f7z820)->(Activity_05usf1p) 
# Send/Receive task pairs: (Activity_0f7z820)->(Activity_05usf1p) 
# Checking if Activity_1jht4ag = Activity_0f7z820
# Checking if Activity_1n6cwq1 = Activity_0f7z820
# Checking if display-shl = Activity_0f7z820
# Checking if generate-shl = Activity_0f7z820
# Checking if Activity_09e0qyv = Activity_0f7z820
# Checking if Activity_0s13xkg = Activity_0f7z820
# Checking if Activity_05usf1p = Activity_0f7z820
# Checking if Activity_0f7z820 = Activity_0f7z820
# Checking if Activity_0jf6sb5 = Activity_0f7z820
# Checking if Activity_1akt4be = Activity_0f7z820
# Checking if Activity_04p41ni = Activity_0f7z820
# Got source actor: Lane_1c4knx0
# Got target actor: Lane_0bs69mf

#
# Creating tranasaction page slugs for issue-shl}
#
touch input/pagecontent/transaction-issue-shl-preamble.md 
touch input/pagecontent/transaction-issue-shl-trigger-events.md 
touch input/pagecontent/transaction-issue-shl-message-semantics.md 
touch input/pagecontent/transaction-issue-shl-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  issue SHL {#issue-shl}

(issue SHL)


{% include transaction-issue-shl-preamble.md %}
#### Trigger Events
{% include transaction-issue-shl-trigger-events.md %}
#### Message Semantics
{% include transaction-issue-shl-message-semantics.md %}
#### Expected Actions
{% include transaction-issue-shl-expected-actions-semantics.md %}

EOF

			  
# Send/Receive task pairs: (Activity_1jgswii)->(Activity_00mp7in) 
# Send/Receive task pairs: (Activity_1jgswii)->(Activity_00mp7in) 
# Checking if Activity_1jht4ag = Activity_1jgswii
# Checking if Activity_1n6cwq1 = Activity_1jgswii
# Checking if display-shl = Activity_1jgswii
# Checking if generate-shl = Activity_1jgswii
# Checking if Activity_09e0qyv = Activity_1jgswii
# Checking if Activity_0s13xkg = Activity_1jgswii
# Checking if Activity_05usf1p = Activity_1jgswii
# Checking if Activity_0f7z820 = Activity_1jgswii
# Checking if Activity_0jf6sb5 = Activity_1jgswii
# Checking if Activity_1akt4be = Activity_1jgswii
# Checking if Activity_04p41ni = Activity_1jgswii
# Got source actor: Lane_0bs69mf
# Got target actor: Lane_1c4knx0

#
# Creating tranasaction page slugs for shl-request}
#
touch input/pagecontent/transaction-shl-request-preamble.md 
touch input/pagecontent/transaction-shl-request-trigger-events.md 
touch input/pagecontent/transaction-shl-request-message-semantics.md 
touch input/pagecontent/transaction-shl-request-expected-actions-semantics.md 

cat << EOF >> input/pagecontent/transactions.md
###  request SHL from HIE {#shl-request}

(request SHL from HIE)


{% include transaction-shl-request-preamble.md %}
#### Trigger Events
{% include transaction-shl-request-trigger-events.md %}
#### Message Semantics
{% include transaction-shl-request-message-semantics.md %}
#### Expected Actions
{% include transaction-shl-request-expected-actions-semantics.md %}

EOF

			  
# Processing collab process: Process_0oa4p13
# Check process: (Health Check and SHL Issuance, Wallet Consent) - (Process_0oa4p13)
