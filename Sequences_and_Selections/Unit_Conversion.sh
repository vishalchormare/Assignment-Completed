#! /bin/bash -x

	read number

	feet=$(($number*12))
	inches=$(($number/12))

	echo "inches conversion to feet="$inches
	echo "inches conversion to inches="$feet
