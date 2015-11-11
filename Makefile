# comments

assignment3.pdf : assignment3.tex , plot.png gitlog.txt pdf.pdf
	pdflatex assignment3.tex	

gitlog.txt :
	git log > gitlog.txt

plot.png : analyze.py inflammation-01.csv
	python3 analyze.py

.PHONY : clean
clean :
	rm -f *.pdf

