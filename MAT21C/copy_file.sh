#!/bin/bash
# You can run this in command line (Mac or Linux)
# to copy all of the dicussion sheets to your current
# directory. Run using ./copy_file.sh. You may need
# to change permissions sudo chmod 774 copy_file.sh

URL="https://www.math.ucdavis.edu/~kouba/Math21CThomasDIRECTORY"
for i in {1..10}
do
	curl "$URL"/Disc"$i".pdf > Disc"$i".pdf
done
