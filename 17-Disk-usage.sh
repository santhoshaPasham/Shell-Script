DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6
MESSAGE=""

while IFS= read -r line 
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $THRESHOLD ]
    then 
        MESSAGE+="$FOLDER is more than $THRESHOLD,Current usage is $USAGE \n"
    fi 
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "message" pashamsanthosha678@gmail.com