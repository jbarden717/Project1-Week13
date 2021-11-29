#!/bin/bash
grep '05:00:00 AM' 0312_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep '05:00:00 AM' 0312_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
grep '05:00:00 AM' 0312_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $1}'
grep '05:00:00 AM' 0312_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $2}'
