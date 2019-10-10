# usage: bash step1.sh

cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep -v "gender" | sort -u | sort -V > gender_yearsExperience.txt



