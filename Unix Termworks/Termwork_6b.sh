#Write a shell script to list all the files in a directory whose filename is at least 10 characters. (use expr command to check the length)

echo "enter the string" 
read str
le=`expr length $str` 
if [ $le -le 10 ] 
then
 echo "String is less than or equal 10 characters" 
else
  echo $str 
  fi
