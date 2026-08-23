PDF = peterh_resume.pdf
DOCX = peterh_resume.docx

.PHONY: all pdf docx

all: pdf docx

pdf: $(PDF)

$(PDF): peterh_resume.tex
	pdflatex peterh_resume.tex

docx: $(DOCX)

$(DOCX): peterh_resume.tex tex_to_docx.sh
	./tex_to_docx.sh
