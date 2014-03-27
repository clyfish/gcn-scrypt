#!/bin/bash

sed 's/;;/\n/g' | sed '/^#\|^$/d;s/^ *//g' | awk '{if($1~/^auto_label.*:/){print (a[substr($1,1,length($1)-1)]="_auto_label_"NR)":"}else if(a[$2]){$2=a[$2];print}else{print}}'
