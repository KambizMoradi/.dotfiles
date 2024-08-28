#ntfy_android_token=35db8dbfa219d3969425f7440a09c2968d96773f0e2c40eb7740fd664d0c47a2

msg=$1
# msg='Hi Kami'

max_retry=50
counter=0

until ntfy publish $ntfy_android_token $msg
do
   sleep 1
   [[ counter -eq $max_retry ]] && echo "Failed!" && exit 1
   echo "Trying again. Try #$counter"
   ((counter++))
done
