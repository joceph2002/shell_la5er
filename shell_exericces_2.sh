
#For loops 

for fruits in banana  apple orange
do 
	echo "my favorite fruit is $fruits "

done


for i in {1..10..2}
do
	echo $i
done

echo 
echo 



for (( ia=a; ia<5; ia++ ))
do 
	echo $ia
done

echo 

for command in ls pwd date
do
	echo "---------$command----------"
	$command

done


#SELECT

#select names in mark john adam
#do 
	#echo "$names selected"
#done

#Breaks and continue
# 1/ Breaks --> get out of the loop it stop it

for i in {1..10}
do 
	if [ $i -gt 5 ]
	then
		break
	fi
	echo "$i"
done


echo
#2/ Continue --> means whether the program meet or sees the keyword in the loop then whatever comes after will be skipped

for i in {1..10}
do
	if [ $i -eq 3 -o $i -eq 6 ]
	then 
		continue
	fi
	echo "$i"
done

#Function

function name (){
	echo -e "plz type your birth year number \c"
	read nmr
	age=$((2024-$nmr))
	echo "you have $age yo"
}

name
