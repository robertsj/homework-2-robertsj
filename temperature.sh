echo "Enter a Fahrenheit temperature to be converted to Celsius and Kelvin."
read fahTemp

firstCalc=$((fahTemp - 32))

num9=9
num5=5
div=`echo "scale=3; $num5/$num9" | bc`

secCalc=`echo "scale=3; $firstCalc*$div" | bc`

varF=" F "
varEq="= "
varC=" C"

echo "$fahTemp$varF$varEq$secCalc$varC"

thirdCalc=`echo "scale=3; $secCalc+273.150" | bc`

varK=" K"

echo "$fahTemp$varF$varEq$thirdCalc$varK"