cat a.txt | awk '/([2-9]|[1-9][0-9]+)d([0-9][0-9]*h)?/{ print $0 }'

$ cat a.txt | awk '{ if($4=="Running" && match($6, /([2-9]|[1-9][0-9]+)d([0-9]+h)?/) ) { print $0 } }'

may be $1 for pod names
Change Running to Ejected/whichover name of status is


 oc get -nopenshift-sdn ds sdn -o json | jq -r '.spec.template.spec.containers[] | select(.name == "sdn")' | sh
 
 
 