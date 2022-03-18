#/bin/bash

$namespace = "test"

kubectl update config --name cluster1
kubectl get pods -n test

# count the number of pods for that namespace
var cntpods = 5 

for(i=0; i<=cntpods; i++ )
Begin
{
 logfile = logfile & kubectl logs -f -n test podid&i
	exit;
}

tar logfile logfile.tar
 