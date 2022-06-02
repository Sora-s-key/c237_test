#!/bin/sh


#Limit to only allow 1 parameter
if (( $# != 1 ))

then
    echo "Please enter  1 file as your parameter"
    exit 1
fi


if test -f "$1"
then
    echo "ERROR: File already exists."
    exit 1
else
    touch $1
    echo $1 " has been created for you."
fi
