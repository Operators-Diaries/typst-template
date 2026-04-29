
= Chemie
#import "@preview/molchemist:0.1.1": render-mol
#import "@preview/chemformula:0.1.2": ch

#figure(
  render-mol(read("../figures/ethanol.mol"), skeletal: true),
  caption: [Ethanol structure],
)

$ #ch("2 KMnO4 + 10 FeSO4 + 8 H2SO4 -> K2SO4 + 2 MnSO4 + 5 Fe2(SO4)3 + 8 H2O") $

= Diagramme
#import "@preview/lilaq:0.6.0" as lq

#figure(
  lq.diagram(
    lq.plot((0, 1, 2, 3, 4), (3, 5, 4, 2, 3))
  ),
  caption: [Plot diagram],
)

= Writing Shortcuts
#import "@preview/quick-maths:0.2.1": shorthands

#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
  ($<=$, math.arrow.l.double) // Replaces '≤'
)

$x = +-3$ can now be written by `"+-"` and $x <= y$ by `"<="` despite it normally rendering as *less or equal than* But the latter is unusable now. See: $#sym.lt.eq$ :(

=== Formattierung per Regex

#show regex("\\d+"): set text(red)
Numbers like 1 and 10 are automatically colored by a regex.

= Linguistik
#import "@preview/phonokit:0.5.8": *
#import "@preview/rubby:0.10.2": get-ruby
// #phonokit-init(font: "New Computer Modern") 

#let ruby = get-ruby(size: 0.6em)

#ipa("/DIs \\s Iz \\s @ \\s sEn.t@ns/") // tipa code

#ruby("ðɪs|ɪz|ə|sɛn.|təns", "This| is |a| sen|tence")
// ipa() innerhalb von ruby() funktioniert nicht