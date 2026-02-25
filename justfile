readme:
  quarto render README.rmd --to gfm

fmt: 
  air format R/ &&  bun run prettier --write inst/www

lint:
  jarl check R

lint-fix:
  jarl check --fix