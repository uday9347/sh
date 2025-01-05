#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "installing the packages"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
    echo "$2 is failed"
    else
    echo "$2 is success"
    fi
}

PACKAGES=("git","nginx",)

for i in $PACKAGES
do 
    echo "$i"
    dnf install $i -y &>> $LOGFILE
    VALIDATE $? "installing $i"
done