all: main-en.pdf main-fr.pdf

main-en.pdf: main-en.dvi
	dvipdf $<

main-en.dvi: main-en.tex core.tex
	latex $<
	latex $<

main-fr.pdf: main-fr.dvi
	dvipdf $<

main-fr.dvi: main-fr.tex core.tex
	latex $<
	latex $<

clean:
	rm -f *.aux *.dvi *.log *.out *.pdf *.cut
