#!usr/bin
echo "Enter days"
read dt
sc=$(( $dt * 86400 ))
date -d @$sc

