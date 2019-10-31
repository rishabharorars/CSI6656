#!/bin/bash


echo -e "\033[32mYour shopping list is as follows:\033[0m"
#command for vowel only !!
awk 'BEGIN {
    FS=","
}
    /^[aeiou]/{
        print "Starts with a Vowel: " $1
}' ../week9/shopping.csv


echo "-----------------------------------"
echo ""
echo -e "\033[32mLines that start with the letter O\033[0m"

#command that start with letter O only of the Vowel
awk 'BEGIN{
    FS=","
}
    /^o/{
        print "Starts with letter o: " $1
}' ../week9/shopping.csv

echo "-----------------------------------"
echo ""


echo -e "\033[32mLines that have more than one word in the items\033[0m"

#command that have more than one word in the items
awk -v count=1 'NF>count'  ../week9/shopping.csv

# awk -v',''BEGIN {
#     count=1
#  }
#         'NF>count'{
#           print "has more than one word: "

# }' ../week9/shopping.csv


echo "-----------------------------------"
echo ""


echo -e "\033[32mLines that have a whole number price\033[0m"
#command to find the lines that have a whole number price
# awk '!/\./{print}' ../week9/shopping.csv

awk 'BEGIN {
    FS=","
}
    !/\./{
        print "whole number price: " $1
}' ../week9/shopping.csv

echo "-----------------------------------"
echo ""














