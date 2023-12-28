#Write a shell that takes a valid directory name as an arguement and it recursively descend all the subdirectories, finds the maximum length of 
#any file in that hierarchy and writes the maximum value to the standard output

for i in $* 
do
if [ -d $i ];
then
 echo "large filename size is"
 echo `ls -Rl $1 | grep "^-" | tr -s ' ' | cut -d' ' -f 5,8 | sort -n| tail -1` 
else
 echo "not directory" 
fi
done

 
