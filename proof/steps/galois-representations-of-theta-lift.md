---
id: galois-representations-of-theta-lift
title: The Galois row from the theta lift
decl: UpperTheory.Gal.Int.galoisRepresentations_of_thetaLift
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [geo-one-holds, galois-local-global-strong-of-geometry-lift, row0b-def, tlift-k-def]
concepts: [QW17YJ6ZCT, 6WB6TKE70H, 0R9R0Y1HDK]
routine: [UpperTheory.Gal.Int.recT]
open: []
---
## Statement

Suppose that [the theta lift statement TLiftK](/step/tlift-k-def/) holds. Then [the statement Row0b](/step/row0b-def/) holds with the local condition `recT`.

Here `recT` is the `RecNotion` `fun h rc => IsRecT h rc`. So the conclusion is: for each CM field $E$, prime $\ell$, isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, integer $a \geq 1$, regular algebraic cuspidal $\pi$ of $\mathrm{GL}_a(\mathbb{A}_E)$ and Hecke character $\chi$ of $E^+$ such that $(\pi, \chi)$ is a polarized pair, there is a Galois representation $r$ with an integer $wt$ and Hodge-Tate multisets $HT_\tau$ that satisfy `PropsB recT`.

The Lean hypothesis is `up : TLiftK`.

## Proof

The proof is one application. The theorem [the Galois row from geometry and the theta lift](/step/galois-local-global-strong-of-geometry-lift/) has two hypotheses, `geo : GeoOne` and `up : TLiftK`, and the conclusion `Row0b recT`. The proof gives it two arguments.

1. For `geo`, the proof gives the theorem [GeoOne holds](/step/geo-one-holds/), `geoOne_holds`.
2. For `up`, the proof gives the hypothesis `up`.

So the step removes the hypothesis `GeoOne` and keeps the hypothesis `TLiftK`.

## Notes

The name says "of thetaLift", and the only hypothesis is the theta lift statement `TLiftK`. The geometric input `GeoOne` is proved inside the term, so it does not appear in the statement. The proof term `geoOne_holds` has about 43,000 declarations below it, so most of the size of this step is in that input.

The only user of this step is [the Galois row holds](/step/galois-row-holds/). There the hypothesis `up` is the theorem `tLiftK`.
