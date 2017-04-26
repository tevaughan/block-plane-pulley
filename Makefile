
%.png : %.gpi
	gnuplot $<

FIGURES = max-mu.png accel-001.png accel-010.png accel-100.png

block-plane-pulley.pdf : block-plane-pulley.tex $(FIGURES)
	pdflatex $<
	pdflatex $<

.PHONY : clean

clean :
	@rm -fv *.png
	@rm -fv *.aux
	@rm -fv *.log

