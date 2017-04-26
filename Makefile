
%.png : %.gpi
	gnuplot $<

block-plane-pulley.pdf : block-plane-pulley.tex block-plane-pulley.png
	pdflatex $<
	pdflatex $<

