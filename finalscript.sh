# usage: bash step1.sh

cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep -v "gender" | sort -u | sort -V > gender_yearsExperience.txt
echo "highest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 1
echo "lowest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | grep -v "gender" | tail -n 1
echo "number of women top ten:"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k 3 -nr | head -n 10 | grep -e female | wc -l


var1=$(cat wages.csv | cut -d , -f 3,4 | sed 's/,/ /g' | grep -v "wage" | sort -k 1 -nr | grep -e "^16" | sort -k 2 -nr | tail -n 1 | cut -d " " -f 2) 
var2=$(cat wages.csv | cut -d , -f 3,4 | sed 's/,/ /g' | grep -v "wage" | sort -k 1 -nr | grep -e "^12" | sort -k 2 -nr | tail -n 1 | cut -d " " -f 2)
echo "minimum wage difference"
echo "$var1 - $var2" | bc



