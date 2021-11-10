#!/usr/bin
yes=y
no=n
echo "Adding new user"
echo "Enter username"
read username
echo "Enter password"
read password
echo "Change password when first login? y/n"
read change
if [ $change != $yes ] && [ $change != $no ]
then
echo "Invalid argument"
exit
fi
echo "Set the date on which the user's account will no longer be accessible. YYYY-MM-DD"
read expire
echo "Set the maximum number of days during which a password is valid"
read maxdays
echo "Set the number of days of warning before a password change is required"
read warndays
echo "Creating user..."
useradd -e $expire $username
if [ $change = $yes ]
then
echo "$username:$password" | chpasswd
passwd -e -q $username
elif [ $change = $no ]
then
echo "$username:$password" | chpasswd
fi
chage -E $expire $username
chage -M $maxdays $username
chage -W $warndays $username

echo "User created"
