#usage bash shellscripthw.sh
cat wages.csv | cut -d , -f 1,2 | grep -v 'gender' |  sort -u | sed 's/,/ /g' | sort -k1,1 -k2n 
