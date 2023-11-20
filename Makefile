all: main-en.pdf ic-en.pdf cto-en.pdf

%-en.pdf: %-en.dvi
	dvipdf $<

%-en.dvi: %-en.tex %.tex
	latex -interaction=nonstopmode $<
	latex -interaction=nonstopmode $<

clean:
	rm -f *.aux *.dvi *.log *.out *.pdf *.cut
