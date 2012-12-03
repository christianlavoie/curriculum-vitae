template.pdf: template.dvi
	dvipdf template.dvi

template.dvi: template.tex
	latex template.tex
	latex template.tex

clean:
	rm template.aux template.dvi template.log template.out template.pdf
