echo "highest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 1
echo "lowest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | grep -v "gender" | tail -n 1
echo "number of women top ten:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 10 | grep -e female | wc -l
