# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=pdflatex
BIBTEX:=bibtex

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=survey

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: main

main:
	@$(LATEX) $(TARGET)
	@$(BIBTEX) $(TARGET)
	@$(LATEX) $(TARGET)
	@$(LATEX) $(TARGET)
	@$(LATEX) $(TARGET)

.PHONY: clean

clean:
	@rm -f $(TARGET)-blx.bib \
	       $(TARGET).aux \
	       $(TARGET).log \
	       $(TARGET).out \
	       $(TARGET).pdf \
	       $(TARGET).toc \
	       $(TARGET).snm \
	       $(TARGET).nav \
	       $(TARGET).bbl \
	       $(TARGET).bcf \
	       $(TARGET).blg \
	       $(TARGET).thm \
	       $(TARGET).run.xml \
	       missfont.log \
	       *~
