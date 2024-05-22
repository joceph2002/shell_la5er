echo 'hello asaat'
echo "hi asaat"
echo hlkjlalkj

first_name=youssef
echo sup $first_name how are you mann?


echo 
echo what is your first name?
read F_name
echo what is your Last name?
read L_name
echo Welcome, $F_name $L_name glad to see you.
echo Done

#this is commment (positional arguments)
echo $1 + $2 = $3

#this is already on
echo our shell name is $BASH
echo our home directoryis $HOME
echo our pwd is --> $PWD

echo input your names:
read name1 name2 name3

echo your names are: $name1 $name3


#this is how to enter at same line

read -p 'username: ' user_var
read -sp 'password: ' pass_var #to not show the password
echo "username : $user_var"
echo "password : $pass_var"

#now to get the reply if read is empty
echo 
echo type anything to test REPLY methd
read
echo 'opss'
echo $Reply


#now for if statements

count=10
if [ $count -eq 10 ]
then 
   echo "condition is truueee"
fi

#Integer Comparisons:  -eq: Equal to  Example: if [ "$a" -eq "$b" ] -ne: Not equal to  Example: if [ "$a" -ne "$b" ] -gt: Greater than  Example: if [ "$a" -gt "$b" ] -lt: Less than  Example: if [ "$a" -lt "$b" ] -ge: Greater than or equal to  Example: if [ "$a" -ge "$b" ] -le: Less than or equal to  Example: if [ "$a" -le "$b" ] String Comparisons:  =: Equal to  Example: if [ "$str1" = "$str2" ] !=: Not equal to  Example: if [ "$str1" != "$str2" ] <: Less than (ASCII alphabetical order)  Example: if [[ "$str1" < "$str2" ]] >: Greater than (ASCII alphabetical order)  Example: if [[ "$str1" > "$str2" ]]#






word=a

if   [[ $word == "b" ]]
then 
  echo "condition b is true"
elif [[ $word == "a" ]]
then 
  echo "condition a is true"
else 
  echo "no one is true"
fi







echo
echo


#FILE test OPERATORs
# to see whether the file exisst orr not and whehter is regular or special file

echo -e "enter the name of the file: \c" #this -e and /c to keep the cursor on the same line

read file_name

if [[ -e $file_name ]]
then 
  echo "the file named $file_name EXIST"
else
  echo "the file named $file_name Not Found"
fi



#append output to the end of text file

echo -e "Enter the name of the file: \c"
read file_name01
if [[ -f $file_name01 ]]
then 
	if [[ -w $file_name01 ]]
	then 
	   echo "the $file_name01 exist: type some data; to quit use ctrl + d"
	   cat >> $file_name01
	else
	   echo "the $file_name01 caan't be mofified"
	fi
  else
	echo "the $file_name01 DOsn't exist"
fi













echo 

age=25
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then

	echo "age is valid"
  else
	  echo "age not valid"
fi



#arithemetic operation

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 / num2 ))
echo $(( num1 * num2 ))
echo $(( num1 % num2 ))




#this is the case statments

vehicle=$1
case $vehicle in
	"car" )
		echo "Rent of $vehicle is 100$" ;;
	"van" )
		echo "Rent of $vehicle is 200$" ;;
	"truck" )
		echo "Rent of $vehicle is 400$" ;;
	* )
		echo "this $vehicle Unkown vehicle" ;;
esac




# while loops

n=1
while [ $n -le 3 ]
do	
	echo "$n"
	n=$(( n+1 ))
	# or do (( ++n ))
	sleep 1
done
	

#Untill Loops
num=1
until [ $num > 4 ]
do
	echo $num
	n=$(( n+1 ))
done

#For loops

for fruits in banana apple orange
do 
	echo "my favorite fruit is: $fruits"

done





