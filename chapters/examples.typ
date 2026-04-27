
= Chemie
#import "@preview/molchemist:0.1.1": render-mol

#figure(
  render-mol(read("../figures/ethanol.mol"), skeletal: true),
  caption: [Ethanol structure],
)

= Diagramme
#import "@preview/lilaq:0.6.0" as lq

#figure(
  lq.diagram(
    lq.plot((0, 1, 2, 3, 4), (3, 5, 4, 2, 3))
  ),
  caption: [Plot diagram],
)


= Formeln
#import "@preview/quick-maths:0.2.1": shorthands

#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
  ($<=$, math.arrow.l.double) // Replaces '≤'
)

$ x^2 = 9 quad <==> quad x = +-3 $
$ A or B |- A $
$ x <= y $