#!/bin/bash
userid=$(id -u)

logs_folder="/var/logs/shell-script"
scriptname=$( echo $0 | cut -d "." -f1) #ex:$0 gives filename as 11-logs.sh and using cut command we r extracting file name only first fragment
echo $scriptname
logfile="$logs_folder/$scriptname.log"


mkdir -p $logs_folder # if folder is there then ignore, else create folder
#dnf install python3 -y &>>$logfile
dnf remove python3 -y &>>$logfile
