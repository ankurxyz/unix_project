all: 
	echo "Title of Project : **Guessing Game**  " > README.md
	echo "  "
	echo "Date and time at which Make was run is: **$$(date)**  " >> README.md
	echo "  "
	echo "Number of lines of code in guessinggame.sh file is **$$( wc -l guessinggame.sh | cut -d " " -f 1)**  " >> README.md 

clean:
	rm README.md
