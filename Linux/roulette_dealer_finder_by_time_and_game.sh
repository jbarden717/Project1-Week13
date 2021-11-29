#!/bin/bash
echo -n "Enter the game to search: Enter 2 for BlackJack, 3 for Roulette and 4 for Texas Holdem"
read GAME 
if [[ $GAME = 2 ]]
then 
echo ""
echo "Dealer for the game BlackJack"
fi
if [[ $GAME = 3 ]]
then 
echo ""
echo "Dealer for the game Roulette"
fi
if [[ $GAME = 4 ]]
then 
echo""
echo "Dealer for the game Texas Holdem"
fi
echo ""
echo "Time"
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
echo ""
echo "Dealer First Name"
grep "$2" $1_Dealer_schedule | awk -v var="$GAME" -F '\t' '{print $var}' | awk -F ' ' '{print $1}'
echo ""
echo "Dealer Last Name"
grep "$2" $1_Dealer_schedule | awk -v var="$GAME" -F '\t' '{print $var}' | awk -F ' ' '{print $2}'
