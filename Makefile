all: notforme.pdf

%.pdf: %.ly
	lilypond $<

clean:
	rm -f *.pdf *.ps *.midi *~

.PHONY: clean