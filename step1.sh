cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /' | uniq -u
