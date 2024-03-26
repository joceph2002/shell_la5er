
# this is final exercices for the shell using vim and pushing to github

#variable
#EX1/

echo "------WElcome Back to the Rabbit Hole"

echo -e "what is you Nake_Name: \c"
sleep 2
read name
echo "$name, Be Ready for your journey"

echo -e "when you born just year: \c"
read year_ofbirth

age=$((2024-$year_ofbirth))

echo "$age" 

if (( $age>18 && $age<50 ))
then
	echo "ok, $name Looks you are eligible for this."
elif (( $age<18 ))
then
	echo "$name, you still young, go get some milk to drink"
else 
	echo "$name, my uncle you are too old for this"
fi

echo

# now we will check if the file is in or no and whet is it

echo -e "what file you want to check: \c"
read file_name
if [ -e "$file_name" ]
then
	echo "file $file_name exists in the current directory"
	if [ -r "$file_name" ]
	then
		echo "the $file_name is Readable"
	else
		echo "the $file_name is not Readable"
	fi
	
	if [ -w "$file_name" ]
	then
		echo "the $file_name is writable"
	else
		echo "the $file_name is not Writable"
	fi

else
	echo "file $file_name Do NoT exist in this directory"

fi
echo



echo "Here is what's inside the file:"
echo
cat "$file_name"
echo

echo "What do you want to write in the file?"
read typing
echo "$typing" >> "$file_name"
echo "Done."

echo
echo "Here is the updated content of the file:"
cat "$file_name"



# Get the current day of the week
day=$(date +"%A")

# Use a case statement to display messages based on the day
case "$day" in
    "Monday")
        echo "It's Monday! Time to start a new week."
        ;;
    "Tuesday")
        echo "Happy Tuesday! Keep up the good work."
        ;;
    "Wednesday")
        echo "Wednesday is here! Halfway through the week."
        ;;
    "Thursday")
        echo "Thursday already? Keep pushing forward."
        ;;
    "Friday")
        echo "TGIF! Have a fantastic Friday."
        ;;
    "Saturday")
        echo "Enjoy your weekend! It's Saturday."
        ;;
    "Sunday")
        echo "Happy Sunday! Relax and recharge."
        ;;
    *)
        echo "Error: Unable to determine the day of the week."
        ;;
esac


#while loop
