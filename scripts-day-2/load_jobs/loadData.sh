#!/bin/bash

gsql='java -jar /home/snoopy/gsql_client/gsql_client.jar'

# load care plans
$gsql -g simpleHealthDeux -ca tgcloud.cer loadCareplans.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadCareplans

# load encounters
$gsql -g simpleHealthDeux -ca tgcloud.cer loadEncounters.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadEncounters

# load immunizations
$gsql -g simpleHealthDeux -ca tgcloud.cer loadImmunizations.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadImmunizations

# load organizations
$gsql -g simpleHealthDeux -ca tgcloud.cer loadOrganizations.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadOrganizations

# load patients
$gsql -g simpleHealthDeux -ca tgcloud.cer loadPatients.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadPatient

# load patients symptoms
$gsql -g simpleHealthDeux -ca tgcloud.cer loadPatientSymptoms.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadPatientSymptoms

# load providers
$gsql -g simpleHealthDeux -ca tgcloud.cer loadProviders.gsql
$gsql -g simpleHealthDeux -ca tgcloud.cer RUN LOADING JOB loadProviders



