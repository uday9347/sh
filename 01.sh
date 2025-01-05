#!/bin/bash

#automating the web instances 

ID =$(id -u )
echo "$ID"
if [ $ID -ne 0 ]
then 
    echo "please make it as root user"
else
    echo "root user"
fi    
