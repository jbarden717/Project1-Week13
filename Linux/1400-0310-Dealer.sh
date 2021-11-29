#!/bin/bash
grep '02:00:00 PM' 0310_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep '02:00:00 PM' 0310_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
grep '02:00:00 PM' 0310_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $1}'
grep '02:00:00 PM' 0310_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $2}'


