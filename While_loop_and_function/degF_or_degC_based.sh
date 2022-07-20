echo "Fahrenheit to Celsius"
read -p "Degree in Celsius= " degc
degf=$(( (degc*9/5)+32 ))
echo "Faherenhiet =" $degf
echo
echo "Celsius to Fahrenheit"
read -p "Degree in Fahreheit= " degf
degc=$(( (degf-32)*5/9 ))
echo "Celsius =" $degc
