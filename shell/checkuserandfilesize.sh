
#!/bin/bash
#!/bin/bash
a=$(echo -e " 1) Find a User \n 2) List Big files \n 3) View Log File \n 4) Exit")
echo "$a"
printf "Your choice >"
while read num
do
case $num in
1)
printf "Find a User"
read -p "Enter your user name : " user_name

if cat /etc/passwd | grep $user_name
then    
    cat /etc/passwd | grep $user_name | awk -F ":" '{print $1" "  $4}'
else 
echo "there is no such user"
fi 
echo $(whoami) Find a User $(date) >> logfile.txt
echo "$a" 
;;
2)
printf "List Big files"
read -p "Enter the size of files:" size
find / -type f -size +$size -printf "%s" -exec ls -s {} \;
echo $(whoami) List Big files $(date) >> logfile.txt
echo "$a"
;;
3)
printf "View Log File"
echo $(whoami) View Log File  $(date) >> logfile.txt
cat logfile.txt
echo "$a"
;;
4)
printf "Exit"
exit
echo "$a"
;;
*)
echo "Invalid Choice"
;;
esac
done 
