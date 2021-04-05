META_FOLDER = wit
OUTPUT = build
ZOTERO = http://127.0.0.1:23119/better-bibtex/export/collection?/2/ZJ38YD6C.bibtex
REF_NAME = ref.bib
STATS_NAME = stats.wit.txt

all: ieeetemplate logs

# The follow logs the number of words written and dumps it into a file called
# stats.writer.txt
logs:
	@(date +"%Y-%m-%d %T" | tr "\n" ", "; wc main.md | xargs | tr " " ", ") >> $(META_FOLDER)/$(STATS_NAME)

ieeetemplate:
	@echo "Downloading biobliography file from Zotero..."
	@curl $(ZOTERO) --output $(OUTPUT)/$(REF_NAME) --silent
	@cp $(OUTPUT)/$(REF_NAME) $(REF_NAME)
	@echo "Running pandoc..."
	@pandoc --citeproc -s --natbib $(META_FOLDER)/meta.yaml --template=$(META_FOLDER)/ieeetemplate.tex -N \
	 -f markdown -t latex+raw_tex -o $(OUTPUT)/main.tex main.md
	@sed -ie 's/\\cite[t,p]{/\\cite{/g' $(OUTPUT)/main.tex
	@sed -ie 's/{natbib}/{cite}/' $(OUTPUT)/main.tex
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@bibtex $(OUTPUT)/main
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@pdflatex -aux-directory=$(OUTPUT) -output-directory=$(OUTPUT) $(OUTPUT)/main.tex
	@rm $(REF_NAME)
