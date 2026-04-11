#import "@preview/hydra:0.6.2": *

#set text(font: "New Computer Modern")
#set document(title: "LaTeX Template Example", author: "Annhilati")
#set page(numbering: "1")
#set heading(numbering: "1.")

#align(center)[
  #text(size: 28pt, weight: "bold")[Mein Titel]
  #v(0em)
  #text(size: 14pt)[Annhilati]
  #v(1em)
  #text(10pt)[11. April 2026]
  #v(3em)
]

#heading(level: 2, numbering: none)[Abstract]

Hier steht dein Abstract...

#outline()

#pagebreak()

#columns(2)[
  
  #include "chapters/introduction.typ"
  
  #figure(
    image("figures/SL.jpg", width: 60%),
    caption: [Beschreibung des Bildes]
  ) <fig:SL>
]

#bibliography("references.bib", style: "angewandte-chemie")