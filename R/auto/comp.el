(TeX-add-style-hook
 "comp"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("mathpazo" "sc") ("fontenc" "T1") ("helvet" "scaled") ("mhchem" "version=3") ("placeins" "section")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "color"
    "framed"
    "alltt"
    "mathtools"
    "mathpazo"
    "geometry"
    "url"
    "hyperref"
    "fontenc"
    "helvet"
    "bookmark"
    "booktabs"
    "datetime"
    "siunitx"
    "mhchem"
    "float"
    "morefloats"
    "placeins"
    "longtable")))

