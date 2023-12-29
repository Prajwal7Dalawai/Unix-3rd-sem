#Write a shell script that determine the period for which a specified user is working on system and display appropriate message.

echo "enter the login name of a user" 
read name
userinfo=`who | grep -w "$name" | grep "pts"` 
echo $userinfo
if [ $? -ne 0 ] 
then
 echo "$name is not logged-in yet" 
 exit
fi
hrs=`echo "$userinfo" | cut -c 34-35` 
echo "login time  $hrs"
min=`echo "$userinfo" | cut -c 37-38` 
echo "login Min $min"
hrnow=`date | cut -c 12-13` 
echo "current hrs $hrnow" 
minnow=`date | cut -c 15-16` 
echo "cuurent Min $minnow"
if [ $minnow -lt $min ] 
then
 minnow=`expr $minnow + 60`
 hrnow=`expr $hrnow + 1` 
fi
hour=`expr $hrnow - $hrs` 
minutes=`expr $minnow - $min`
echo "Mr/Ms:$name is working since $hour hrs-$minutes minutes"


