

my_name="YYoussef"

echo "Hello, my name is $my_name."

now=$(date)
echo "today is $now"
echo "our current directory is $(pwd)"
echo "the files are $(ls)"
echo ""
date
echo ""
echo "Your username is $USER"

expr 10 + 6

mynum=200

if [ $mynum -eq 300 ]
then
	echo "Yes they are equal."
else
	echo "No, they not Equal"
fi

# to check if the file exists or not

echo "enter the name of the file."
read myfile

if [ -f "$myfile" ]
then
	echo "the file $myfile exist."
else
	echo "the file $myfile do not exist."
fi

command=htop

if command -v $command
then
	echo "$command is available, let's Run it..."
else
	echo "$command is Not available, installing it..."
	sudo apt update && sudo apt install -y $command
fi

man -k $command
sleep 1
$command

