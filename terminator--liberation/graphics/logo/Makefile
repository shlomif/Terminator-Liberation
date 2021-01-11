TERM_LIBER_svg = Terminator-Liberation.svg
TERM_LIBER_png = $(TERM_LIBER_svg).png

all: $(TERM_LIBER_png)

$(TERM_LIBER_png): $(TERM_LIBER_svg)
	inkscape --export-png=$@ --export-width=300 $<
	optipng -o7 $@

upload: all
	sky up $(TERM_LIBER_png)
	sky up $(TERM_LIBER_svg)
