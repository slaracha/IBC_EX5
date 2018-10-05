#usage bash shellscripthw.sh
cat wages.csv | cut -d , -f 1,2 | grep -v 'gender' |  sort -u | sed 's/,/ /g' | sort -k1,1 -k2n > unique_gender_yearexperience.txt
echo "Highest earner"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|tail -n 1
echo "Lowest earner"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|grep -v 'wage'|head -n 1
echo "Number of females in top ten earners"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|tail -n 10|grep 'female'|wc -l
NumofPeople12=$(cat wages.csv|awk -F, '$3=="12"'|wc -l)
NumofPeople16=$(cat wages.csv|awk -F, '$3=="16"'|wc -l)
ValofWages12=$(cat wages.csv|awk -F, '$3=="12"'|awk -F, '{ sum += $4 }; END { print sum }')
ValofWages16=$(cat wages.csv|awk -F, '$3=="16"'|awk -F, '{ sum += $4 }; END { print sum }')
AverageWage12=$(echo "$ValofWages12 / $NumofPeople12"|bc -l)
AverageWage16=$(echo "$ValofWages16 / $NumofPeople16"|bc -l)
echo "Average wage after 12 years of education"
echo "$AverageWage12"
echo "Average wage after 16 years of education"
echo "$AverageWage16"
echo "The effect of graduating from college (16 vs 12) results in a higher minimum wage on average of"  
echo "$AverageWage16 - $AverageWage12"|bc 

