PDFLATEX_FLAGS="-interaction=nonstopmode -file-line-error"

all: render clean

render:
	pdflatex $(PDFLATEX_FLAGS) --draftmode lib/document
	biber document
	pdflatex $(PDFLATEX_FLAGS) lib/document

clean:
	@rm -f \
		*.aux \
		*.bbl \
		*.blg \
		*.idx \
		*.ind \
		*.lof \
		*.lot \
		*.out \
		*.toc \
		*.acn \
		*.acr \
		*.alg \
		*.glg \
		*.glo \
		*.gls \
		*.fls \
		*.log \
		*.fdb_latexmk \
		*.snm \
		*.synctex \
		*.synctex.gz \
		*.nav \
		*.vrb \
		*.run.xml \
		*.upa \
		*.upb \
		*.ist \
		*.bcf
