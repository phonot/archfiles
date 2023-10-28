#!/bin/sh
#check for volume
update_volume(){
	vol="$(pamixer --get-volume)"
}
update_volume

#RTMIN = 34
trap "update_volume" "RTMIN"

#volume needs re write
#vol | dd/mm/yy | day | hh/mm/ 
while true;
do
	xsetroot -name "$vol | $(date +%d/%m/%y) | $(date +%a) | $(date +%I:%M%p)" && sleep 60

done
	
