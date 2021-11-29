#!/bin/bash
grep '08:00:00 AM' 0315_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $1}'
grep '08:00:00 AM' 0315_Dealer_schedule | awk -F '\t' '{print $1}' | awk -F ' ' '{print $2}'
grep '08:00:00 AM' 0315_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $1}'
grep '08:00:00 AM' 0315_Dealer_schedule | awk -F '\t' '{print $3}' | awk -F ' ' '{print $2}'


