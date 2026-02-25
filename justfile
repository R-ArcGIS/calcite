readme:
  quarto render README.rmd --to gfm


fmt: 
  air format R/

lint:
  jarl check R

lint-fix:
  jarl check --fix