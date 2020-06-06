Update the file "identities.yaml" with the credentials you want to use then run the following once logged in to the correct namespace on OpenShift:

oc create secret generic --from-file=identities.yaml jdg-connect-secret


1. Terminal in to one of the pods and copy the contents of the cace templates to the /tmp directory
2. run /opt/infinispan/cli.sh
3. Type 'connect <ip of pod>:11222'
4. Enter the user name and password of one of the users specified in the "identities.yaml" file
5. Run the following:
  
  create cache work --file=/tmp/cache.xml
  
  create cache sessions --file=/tmp/cache.xml
  
  create cache clientSessions --file=/tmp/cache.xml
  
  create cache offlineSessions --file=/tmp/cache.xml
  
  create cache offlineClientSessions --file=/tmp/cache.xml
  
  create cache actionTokens --file=/tmp/cache.xml
  
  create cache loginFailures --file=/tmp/cache.xml
