#!/bin/bash
grep '08:00:00 PM' 0312_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep '08:00:00 PM' 0312_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
grep '08:00:00 PM' 0312_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $1}'
grep '08:00:00 PM' 0312_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $2}'


