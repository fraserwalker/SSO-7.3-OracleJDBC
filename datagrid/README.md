Update the file "identities.yaml" with the credentials you want to use then run the following once logged in to the correct namespace on OpenShift:

oc create secret generic --from-file=identities.yaml jdg-connect-secret
