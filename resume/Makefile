PDF = peterh_resume.pdf
DOCX = peterh_resume.docx

.PHONY: all pdf clean

all: pdf

pdf:
	./docx_to_pdf.sh
	pandoc peterh_resume_base.md -o peterh_resume.docx 
	pandoc peterh_resume_cba.md -o peterh_resume_cba.docx 
	pandoc peterh_resume_cba_bbt.md -o peterh_resume_cba_bbt.docx
clean:
	rm -f $(PDF)
