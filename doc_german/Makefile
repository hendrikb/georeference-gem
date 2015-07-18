# type "make" command in Unix to create the documentation
all:
	latex paper
	biber paper
	latex paper
	latex paper
	dvips -o paper.ps paper
	ps2pdf paper.ps paper.pdf

# type "make asme2ej" command in Unix to create the asme2ej template example
asme2ej:
	latex asme2ej
	bibtex asme2ej
	latex asme2ej
	latex asme2ej
	dvips -o asme2ej.ps asme2ej
	ps2pdf asme2ej.ps asme2ej.pdf

clean:
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg)
