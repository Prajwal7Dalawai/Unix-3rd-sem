#Write an awk script to compute gross salary of an employee accordingly to rule given below.
#If basic salary is < 10000 then HRA=15% of basic & DA=45% of basic If basic salary is >=10000 then HRA=20% of basic & DA=50% of basic.

BEGIN { FS=":"
print "\n\t\tsalary statement of employees for the month of feb" print "sl.no","\t","name","\t\t","designation","\t","BASIC",
"\t","DA","\t","HRA","\t","GROSS"
print}
{slno++; basic_tot+=$5; 
	if ( $5 >= 10000 )
         {da=0.45*$5; da_tot+=da; hra=0.15*$5;hra_tot+=hra;}

else 
{ da=0.50*$5;
	da_tot+=da;
hra=0.20*$5;
hra_tot+=hra;
} 
sal_tot+=$5 + da + hra
printf "%2d\t%-15s %12-s %8d %8.2f %8.2f %8.2f\n",slno,$2,$3,$5,da,hra,$5+da+hra}
END 
{print "\n\ttotal basic paid is : rs " basic_tot 
	print "\ttotal da paid is : rs " da_tot
print "\ttotal hra paid is : rs " hra_tot 
print "total salary paid is : rs " sal_tot}

