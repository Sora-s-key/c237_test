#!/bin/bash

echo -e "enter a password,\nsecurity measures require 8 or more char,\nnumbers and letters required,\ninclude both uppercase and lowercase\nenter password:"
read password
len="${#password}"
if test $len -ge 8 ; then
echo "$password" | grep -q [0-9]
if test $? -eq 0 ; then
echo "$password" | grep -q [A-Z]
if test $? -eq 0 ; then
echo "$password" | grep -q [a-z]
if test $? -eq 0 ; then
echo "Strong password"
else
echo "weak password next time include lower case characters"
fi
else
echo "weak password next time include capital characters"
fi
else
echo "please include some numbers in the password to strength your password"
fi
else
echo "password needs to be 8 or more charcters for a 'strong password'"
fi
