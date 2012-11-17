all: notforme konj

notforme: notforme.pdf

konj: konj.pdf

%.pdf: %.ly
	lilypond $<

clean:
	rm -f *.pdf *.ps *.midi *~

.PHONY: clean
