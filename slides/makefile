once:
	latexmk -pdf --aux-directory=.tmp/ main.tex

nonstop:
	latexmk -pdf -pvc -interaction=nonstopmode --aux-directory=.tmp/ main.tex

clean:
	rm -rf .tmp/
