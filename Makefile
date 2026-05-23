.SUFFIXES : .pdf .typ .mscz .svg

.mscz.pdf:
	musescore  $< -o $@

.mscz.svg:
	musescore  $< -o $@

.typ.pdf:
	typst compile $<


FILES = Liturgie/Gloire-a-Dieu_Cambourian/Gloire_a_Dieu-Cambourian.svg \
	Liturgie/CNA-502/Envoie_ton_esprit_saint.svg \
	Mon_Petit_Livre_dOrgue.pdf 

all: ${FILES}



clean:
	rm -f ${FILES}
