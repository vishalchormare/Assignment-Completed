randomValue=0
IS_HEAD=0
IS_TAIL=1
headNumber=0
tailNumber=0
WINING_NUMBER=21
isTie=0

function getRandomValue(){
		randomValue=$((RANDOM%2))
		if [ $randomValue -eq $IS_HEAD ]
		then
			((head_Number++))
			echo "Cong. you got Head"
		else
			((tail_Number++))
			echo "You got tails"
		fi
		if [ $tie -eq 1 ]
		then
			if [ $(($head_Number - $tail_Number)) -eq 2 ]
			then
				#To stop iteration
				return `false`
			fi
		fi
}

function checkHeadTail(){
	local head_Number=$1
	local winingNumber=$2
	local tail_Number=$3
	local tie=$4
	local breakLoop=true
	if [ $tie -eq 0 ]
	then 
		while [ $head_Number -lt $winingNumber ] && [ $tail_Number -lt $winingNumber ]
		do
			getRandomValue
		done
	else
		while $breakLoop
		do
			breakLoop=getRandomValue
		done
	fi
	headNumber=$head_Number
	tailNumber=$tail_Number
}

function winConditionFunction(){
	local headValue=$1
	local tailValue=$2
if [ $headValue -gt $tailValue ]
	then
		echo "Head won by "$(($headValue - $tailValue))
	else
		echo "Tail won by "$(($tailValue - $headValue))
fi
}


checkHeadTail $headNumber $WINING_NUMBER $tailNumber $isTie

if [ $headNumber -eq $tailNumber ]
then
	echo "Tie"
	isTie=1
	checkHeadTail $headNumber $WINING_NUMBER $tailNumber $isTie
	echo "After tie"
	winConditionFunction $headNumber $tailNumber
else
	winConditionFunction $headNumber $tailNumber
fi
