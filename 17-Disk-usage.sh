DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6

while IFS= read -r line 
do 
    USAGE=$(echo $line | awk -F " " '{print $6F})' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $THRESHOLD ]
    then 
        echo "$FOLDER is more than $THRESHOLD,Current usage is $USAGE"
    fi 
done <<< $DISK_USAGE