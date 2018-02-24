#LATEX=pdflatex
LATEX=xelatex

SOURCE=darconville

all: $(SOURCE).pdf

$(SOURCE).pdf: *.tex text/*.tex
	$(LATEX) $(SOURCE)
	makeindex $(SOURCE).idx
	$(LATEX) $(SOURCE)

clean:
	rm -f *.aux *.dvi *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc *~
	rm -f $(SOURCE).pdf
	rm -f text/*.aux 

