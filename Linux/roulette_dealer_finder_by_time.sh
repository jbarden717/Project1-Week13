#!/bin/bash
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $1}'
grep "$2" $1_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $2}'
