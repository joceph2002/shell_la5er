
# this is lessonns from 6to9

#EXIT CODE let us know whether command successful or not if succes is type 0 and if fail it types other number
<<'END_COMMENT'
package=htop

#this is will save it to this and keep the screen clean
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
	echo "The installation of $package was successful."
	echo "The new command is available here:"
	which $package
else
	echo "Package: $package failed to install." >> package_install_failure.log
fi
END_COMMENT
#while loops

#Universal Update script

#for loops

for i in {1..10}
do
	echo "$i"
	sleep 0.5
done
echo "This is the End"










