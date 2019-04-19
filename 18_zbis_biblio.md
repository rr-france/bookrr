`r if (knitr::is_html_output()){ '
# Bibliographie {-}
<div id="refs"></div>
'}`

`r if (knitr::is_latex_output()){ '
\\renewcommand\\bibname{Bibliographie}
'}
#\\addcontentsline{toc}{chapter}{Bibliographie}
`
