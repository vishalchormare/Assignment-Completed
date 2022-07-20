array=()
count_of_index=0
count=1
while [ $count -le 10 ]
do
   num=$(( RANDOM % 1000 ))

   length=0
   while [ $length -ne 3 ]
   do
      length=0
      temp=$num
      while [ $temp -gt 0 ]
      do
         temp=$(( $temp / 10 ))
         length=$(( $length + 1 ))
      done

      if [ $length -eq 3 ]
      then
         array[$count_of_index]=$num
         count_of_index=$(( $count_of_index + 1 ))
         break
      else
         num=$(( RANDOM % 1000 ))
      fi
   done
   count=$(( $count + 1 ))
done
echo ${array[@]}

#j=0
#num1=$(( $j + 1 ))
#echo $num1 
for (( i=0; i<$(( 10 - 1 )); i++ ))
do
	for (( j=0; j<$(( 10 - 1 - $i )); j++ ))
	do
		num1=$(( $j + 1 ))
		if [ ${array[j]} -gt ${array[num1]} ]
		then
			temp=${array[j]}
			array[$j]=${array[num1]}
			array[$num1]=$temp
		fi
	done
done
echo "After sorting, the array is:${array[@]}"

echo "The second largest element is: ${array[8]}"
echo "The second smallest element is: ${array[1]}"
