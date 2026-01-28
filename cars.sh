#!/bin/bash
#cars
#Laura Beatty
#CENG 298

FILE_PATH="my_old_cars"
IFS=":"

while true; do
	echo "Type \"1\" to Add a car"
	echo "Type \"2\" to List the cars in the inventory file"
	echo "Type \"3\" to Quit the program"
	echo

	read -r input
	[[ -z "$input" ]] && continue
	input="${input//$'\r'/}"
	echo

	case "$input" in
		1)
			read -rp "What is the year? " year
			read -rp "What is the make? " make
			read -rp "What is the model? " model
			echo 

			car_input="$year:$make:$model" 
			echo "$car_input" >> "$FILE_PATH"
			;;
		2)
			echo "Car Inventory:"
			echo

			while IFS=":" read -r year make model; do
				echo "year: $year"
				echo "make: $make"
				echo "model: $model"
				echo
			done < "$FILE_PATH"
			;;
		3)
			echo "Goodbye! Have a good day :) "
			exit
			;;
		*)
			echo "Error. Please try again."
	esac
done
