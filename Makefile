
%.pdf : %.fig
	fig2dev -L pdf $< > $@

%.png : %.gpi
	gnuplot $<

DOCNAME = block-plane-pulley
TEXNAME = $(DOCNAME).tex
PDFNAME = $(DOCNAME).pdf

FIGURES = crit-mu.png accel-001.png accel-010.png accel-100.png diagram.pdf

.PHONY : all clean

all : $(PDFNAME)

$(PDFNAME) : $(TEXNAME) logo.pdf $(FIGURES)
	pdflatex $(TEXNAME)
	pdflatex $(TEXNAME)

clean :
	@rm -fv *.aux
	@rm -fv *.log
	@rm -fv *.out
	@rm -fv *.png
	@rm -fv logo.pdf

