# usage: bash step1.sh

cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep -v "gender" | sort -u | sort -V > gender_yearsExperience.txt
echo "highest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 1
echo "lowest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | grep -v "gender" | tail -n 1
echo "number of women top ten:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 10 | grep -e female | wc -l

cat wages.csv |cut -d , -f 3,4 | sed 's/,/ /g' | grep -v "wage" | sort -k 1 -nr 
