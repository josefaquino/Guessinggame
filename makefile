# Author: JRA
# Date: 2017/10/08

date=$(shell date)

n_lines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")

README.md: guessinggame.sh

	echo "Unix GuessingGame  " > README.md
	echo "Date and Time \`make\` was run: $(date)  " >> README.md
	echo "Lines: \`guessinggame.sh\`: $(n_lines)  " >> README.md
