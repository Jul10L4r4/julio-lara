all: README.md

README.md: guessinggame.sh
	echo '# Title project: Guessing Game' > README.md
	echo "make execution: `date`\\" >> README.md
	echo "Code lines in guessinggame.sh: `wc -l guessinggame.sh | egrep -o ^[0-9]+`" >> README.md
	
clean:
	rm README.md
