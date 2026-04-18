#set document(title: "Typst Template Example", author: ("Annhilati"), date: datetime(day: 11, month: 04, year: 2026))
#set heading(numbering: "1.")
#set figure(supplement: [Figur])
#set text(font: "New Computer Modern", lang: "de")
#set page(numbering: "1")

#align(center)[
  #text(size: 28pt, weight: "bold")[#context document.title]
  #v(0em)
  #text(size: 14pt)[#context document.author.join(", ")]
  #v(1em)
  #text(10pt)[#context document.date.display("[day]. [month repr:long] [year]")]
  #v(3em)
]

#heading(level: 1, numbering: none)[Abstract]

#lorem(10) @fig:SL

#outline()

#pagebreak()

#columns(2)[
  
  #include "chapters/introduction.typ"
  
  #figure(
    image("figures/SL.jpg", width: 60%),
    caption: [Beschreibung des Bildes]
  ) <fig:SL>
]

#bibliography("references.yaml", style: "angewandte-chemie")