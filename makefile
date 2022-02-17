FILE = st

all:
	vi $(FILE).Rmd
	make knit

knit:
	Rscript -e 'rmarkdown::render("$(FILE).Rmd")'
	mv $(FILE).html docs

push:
	git commit -m 'update' -a
	git push


view:
	google-chrome docs/$(FILE).html
