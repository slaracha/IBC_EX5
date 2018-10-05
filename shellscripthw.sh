#usage bash shellscripthw.sh
cat wages.csv | cut -d , -f 1,2 | grep -v 'gender' |  sort -u | sed 's/,/ /g' | sort -k1,1 -k2n > unique_gender_yearexperience.txt
echo "Highest earner"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|tail -n 1
echo "Lowest earner"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|grep -v 'wage'|head -n 1
echo "Number of females in top ten earners"
cat wages.csv|sed 's/,/ /g'|sort -k 4n|sed 's/ /,/g'|tail -n 10|grep 'female'|wc -l
cat wages.csv|awk -F, '$3=="12"'|wc -l
cat wages.csv|awk -F, '$3=="16"'|wc -l
cat wages.csv|awk -F, '$3=="12"'|awk -F, '{ sum += $4 }; END { print sum }'
cat wages.csv|awk -F, '$3=="16"'|awk -F, '{ sum += $4 }; END { print sum }'
