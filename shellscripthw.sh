#usage bash shellscripthw.sh
cat wages.csv | cut -d , -f 1,2 | grep -v 'gender' |  sort -u | sed 's/,/ /g' > unique_gender_yearsexperience.txt
