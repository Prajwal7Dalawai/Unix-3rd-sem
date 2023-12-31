##Write an awk script that accepts date argument in the form of dd-mm-yy and displays it in the form if month, day and year. 
#The script should check the validity of the argument and in the case of error, display a suitable message.

{
  split($0, arr, "-")

  if (arr[2] < 1 || arr[2] > 12 || arr[3] < 1 || arr[3] > 31) {
    print "invalid date"
    exit 0
  } else {
    print arr[2]

    if (arr[2] == 1) print "Jan"
    if (arr[2] == 2) print "Feb"
    if (arr[2] == 3) print "March"
    if (arr[2] == 4) print "April"
    if (arr[2] == 5) print "May"
    if (arr[2] == 6) print "Jun"
    if (arr[2] == 7) print "Jul"
    if (arr[2] == 8) print "Aug"
    if (arr[2] == 9) print "Sep"
    if (arr[2] == 10) print "Oct"
    if (arr[2] == 11) print "Nov"
    if (arr[2] == 12) print "Dec"

    print arr[3]
  }
}

