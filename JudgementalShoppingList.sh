#!/bin/bash

# awk 'BEGIN {print "hello world"}'

#formatting the CSV files and adding the total values

echo ""

awk 'BEGIN {
    FS=",";
    
    printf("----------------------------------------------------------------------------\n")
    printf "%-12s | %-12s | %-12s | %-10s | %-10s\n",
    "Item",
    "Quantity",
    "Price",
    "Total",
    "Comment"
    printf("----------------------------------------------------------------------------\n")
    
    }
    {
        printf "%-12s | %-12s | %-12s | %-10s |\n",
        $1,
        $2,
        "$"$3,
        "$"($2*$3)
        {
            if($2*$3 > 5){print "Thats a bit expensive! Are you sure? "}
            else if($2 > 5) {print "Do you really need that many?"}
            else if($3 < 3) {print "Such a cheapstake!"} 
        }
        
    } END {
        # printf("------------------------------------------------------------------\n")
        # printf "there are %d items total!\n",
        # NR
        # printf "%-15s | %-15s | %-15s | %-10s\n",
        #     "TOTAL", sumOfQuantity,sumOfPrice, totalSum

    }' ../week9/shopping.csv

    awk -F',' 'BEGIN {sumOfQuantity=0};
        {sumOfQuantity=sumOfQuantity+$2}
        {sumOfPrice=sumOfPrice+$3}
        {totalSum=totalSum+($2*$3)}

        END {
            printf "%-12s | %-12s | %-12s | %-10s\n",
            "TOTAL", sumOfQuantity, "$"(sumOfPrice) , "$"(totalSum)
            printf("----------------------------------------------------------------------------\n")
            printf "\033[32mThere are %d items in total!\033[0m\n",
            NR
    }' ../week9/shopping.csv

    echo ""