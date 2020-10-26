#!/bin/sh

input="users.csv"

while IFS= read -r line; do

    UID=$(echo $line|cut -d\; -f1)
    curl -u "basil:Herakles0815" \
	 -H "OCS-APIRequest: true" \
	 -X DELETE "https://amxa.opsone-cloud.ch/ocs/v1.php/cloud/users/$UID"
	 
    sleep 5
    
done < "$input"
