#!/bin/bash
# This script was made by Mohammad Sadique Iqbal

# Addition Function
function addition {
	local firstnum=$1
	local secondnum=$2
	echo "First Num: $firstnum Second Num: $secondnum"
	let sum=$firstnum+$secondnum
	echo "Sum: $sum"
}

function subtraction {
	local firstnum=$1
	local secondnum=$2
	echo "First Num: $firstnum Second Num: $secondnum"
	let diff=$firstnum-$secondnum
	echo "Difference: $diff"
}

function multiplication {
	local firstnum=$1
	local secondnum=$2
	echo "First Num: $firstnum Second Num: $secondnum"
	let prod=$firstnum*$secondnum
	echo "Product: $prod"
}

function division {
	local firstnum=$1
	local secondnum=$2
	echo "First Num: $firstnum Second Num: $secondnum"
	let div=$firstnum/$secondnum
	echo "Divide: $div"
}

echo "Welcome to BASH calculator"
echo "Please choose the operation to perform"
echo "Press a (Addition)"
echo "Press b (Subtraction)"
echo "Press c (Multiplication)"
echo "Press d (Division)"
echo "Press any other key to Quit"
read -p "Choose Option: " opt
while [[ $opt == "a" || $opt == "b" || $opt == "c" || $opt == "d" ]]
do
	echo "Please choose the two number to perform operation on ----"
	read -p "Enter first Number: " num1
	read -p "Enter second Number: " num2
	case $opt in
		a) addition $num1 $num2;;
		b) subtraction $num1 $num2;;
		c) multiplication $num1 $num2;;
		d) division $num1 $num2;;
		*) exit 1
	esac
	echo -e "\n"
	echo "Please choose the operation to perform"
	echo "Press a (Addition)"
	echo "Press b (Subtraction)"
	echo "Press c (Multiplication)"
	echo "Press d (Division)"
	echo "Press any other key to Quit"
	read -p "Choose Option: " opt
done
