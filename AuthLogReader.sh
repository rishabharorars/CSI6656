#!/bin/bash

echo -e "\033[32mAuth Log:\033[0m"
cat /var/log/auth.log | awk '{

    print "\n" $1 " "$2" - " $3 ": \n" $5
    printf "\t"
}
{
   
    for (i=6; i<NF;  i++)
        printf $i " ";
        if (NF >=6)
            print $NF;

}'
