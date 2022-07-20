#! /bin/bash -x

	dice1=$(( $RANDOM %20 + 10))
        dice2=$(( $RANDOM %20 + 10))
	dice3=$(( $RANDOM %20 + 10))
	dice4=$(( $RANDOM %20 + 10))
	dice5=$(( $RANDOM %20 + 10))
        sum=$((dice1+dice2+dice3+dice4+dice5))
	avg=$((sum / 5 ))
	echo=$avg

