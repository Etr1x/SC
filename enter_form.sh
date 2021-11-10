#!/bin/bash
login1='admin'
pswd1='12345'
login2='student'
pswd2='123456'
login3='user'
pswd3='123'
echo "Enter your login:"
read login
if [ $login = $login1 ] || [ $login = $login2 ] || [ $login = $login3 ]
then
echo "Enter your password:"
else
echo "Wrong login"
exit
fi
read pswd
if [ $login = $login1 ] && [ $pswd = $pswd1 ]
then
echo "Welcome, $login"
elif [ $login = $login2 ] && [ $pswd = $pswd2 ]
then
echo "Welcome, $login"
elif [ $login = $login3 ] && [ $pswd = $pswd3 ]
then
echo "Welcome, $login"
else
echo "Wrong password"
fi




