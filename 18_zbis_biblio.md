`r if (knitr::is_html_output()){ '
# Bibliographie {-}
<div id="refs"></div>
'}
if(knitr::is_latex_output()){ '
\\addcontentsline{toc}{chapter}{Bibliographie}
%\\renewcommand\\bibname{Bibliographie}
'}`
