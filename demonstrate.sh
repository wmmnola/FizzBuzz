# !/bin/bash
#
# Author: Wade Marshal
PYI=$(date +%s)
python fizzbuzz.py 30
PYF=$(date +%s)
PYE=$(expr $PYF - $PYI)
echo "Python version completed"
echo "$PYE"
gcc fizzbuzz.c -o fizzbuzz
./fizzbuzz 30
