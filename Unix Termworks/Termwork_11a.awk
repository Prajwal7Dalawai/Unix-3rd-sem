#Write an awk script to find out total number of books sold in each discipline as well as total book sold using associate array down table as given below.
#Electrical	34
#Mechanical	67
#Electrical	80
#Computer Science 43
#Mechanical	65
#Civil	98
#Computer Science 64


BEGIN {print"Total number of books sold in each category"}
{books [ $1 ]+=$2} 
END { for(item in books)
{ printf("\t%-17s %ls %-5d\n", item, "=", books[item]) 
total+=books[item]
}
printf("%-17s %ls %-5d\n", "Total books sold", "=", total)
}

