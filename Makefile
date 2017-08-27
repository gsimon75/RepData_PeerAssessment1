TARGETS=PA1_template.html PA1_template.md

all:		$(TARGETS)

.PHONY:		clean
clean:
		rm -f $(TARGETS)

%.html %.md:	%.Rmd
		# echo 'library(knitr);knit2html("$^");' | R --no-save`
		echo 'library(rmarkdown); render("$^", output_format="html_document");' | R --no-save

