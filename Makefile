all: notforme konj muisamaa

notforme: notforme.pdf

konj: konj.pdf

muisamaa: muisamaa.pdf

%.pdf: %.ly
	lilypond $<

clean:
	rm -f *.pdf *.ps *.midi *~

.PHONY: clean
