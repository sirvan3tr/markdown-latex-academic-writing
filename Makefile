META_FOLDER = meta
OUTPUT = build

all: latex logs

# If you decide to go with pandoc-citeproc
#	pandoc -s -F pandoc-crossref -F pandoc-citeproc meta.yaml --data-dir=data-dir --template=mytemplate.tex -N \
#	-f markdown -t latex+raw_tex+tex_math_dollars+citations -o main.pdf main.md

# You can still use pandoc-crossref to easily reference figures with [@fig:label] --csl=$(META_FOLDER)/bibliography.csl 

# The follow logs the number of words written and dumps it into a file called
# stats.writer.txt
logs:
	@(date +"%Y-%m-%d %T" | tr "\n" ", "; wc main.md | xargs | tr " " ", ") >> stats.writer.txt

out:
	@echo "Downloading biobliography file from Zotero..."
	@curl http://127.0.0.1:23119/better-bibtex/export/collection?/2/ZJ38YD6C.bibtex --output $(OUTPUT)/ref.bib --silent
	@echo "Running pandoc..."
	@pandoc $(META_FOLDER)/meta.yaml \
		--template=$(META_FOLDER)/ieeetemplate.tex -N \
		--citeproc --bibliography=ref.bib \
		--csl=$(META_FOLDER)/bibliography.csl \
		-o $(OUTPUT)/out.tex main.md
	@echo "Finished."

latex:
	@echo "Downloading biobliography file from Zotero..."
	@curl http://127.0.0.1:23119/better-bibtex/export/collection?/2/ZJ38YD6C.bibtex --output $(OUTPUT)/ref.bib --silent
	@cp $(OUTPUT)/ref.bib ref.bib
	@echo "Running pandoc..."
	@pandoc --citeproc -s --natbib $(META_FOLDER)/meta.yaml --template=$(META_FOLDER)/ieeetemplate.tex -N \
	 -f markdown -t latex+raw_tex -o $(OUTPUT)/main.tex main.md
	@sed -ie 's/\\cite[t,p]{/\\cite{/g' $(OUTPUT)/main.tex
	@sed -ie 's/{natbib}/{cite}/' $(OUTPUT)/main.tex
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@bibtex $(OUTPUT)/main
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@rm ref.bib

paper:
	@pandoc -s -F pandoc-crossref --natbib meta.yaml -N \
	 -f markdown -t latex+raw_tex -o main.tex main.md
	@pdflatex main.tex &> ~/sites
	@bibtex main &> ~/sites
	@pdflatex main.tex &> ~/sites
	@pdflatex main.tex &> ~/sites
