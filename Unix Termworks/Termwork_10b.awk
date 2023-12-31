#Write an awk script to delete duplicated line from a text file. The order of the original lines must remain unchanged.

BEGIN {

}
{
 

print "Removing Duplicated lines"
 
line [++no] = $0
}
END {
for (i=1; i<=no; i++)
{
flag=1
for (j=1; j<i; j++)
if (line[i] == line[j]) flag=0
if (flag==1)
print line[i] >> "out13a.txt"
}
}

