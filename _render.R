library('bookdown')
bookdown::render_book('index.md', output_format = commandArgs(trailingOnly = T))
