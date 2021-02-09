#!/bin/bash

gsql='java -jar /home/snoopy/gsql_client/gsql_client.jar'

# load care plans
$gsql -g simpleHealth -ca tgcloud.cer loadCareplans.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadCareplans

# load encounters
$gsql -g simpleHealth -ca tgcloud.cer loadEncounters.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadEncounters

# load immunizations
$gsql -g simpleHealth -ca tgcloud.cer loadImmunizations.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadImmunizations

# load organizations
$gsql -g simpleHealth -ca tgcloud.cer loadOrganizations.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadOrganizations

# load patients
$gsql -g simpleHealth -ca tgcloud.cer loadPatients.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadPatients

# load patients symptoms
$gsql -g simpleHealth -ca tgcloud.cer loadPatientSymptoms.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadPatientSymptoms

# load providers
$gsql -g simpleHealth -ca tgcloud.cer loadProviders.gsql
$gsql -g simpleHealth -ca tgcloud.cer RUN LOADING JOB loadProviders



