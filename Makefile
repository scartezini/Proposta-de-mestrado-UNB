all: clean proposal.pdf
proposal.pdf:
	xelatex proposal.tex
	bibtex proposal.aux
	xelatex proposal.tex
	xelatex proposal.tex
clean:
	rm -f *.log *.aux *.bbl *.blg *.dvi *.ps *.lot *.toc *.lof *.out *~ proposal.pdf

