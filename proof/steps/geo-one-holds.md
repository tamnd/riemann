---
id: geo-one-holds
title: GeoOne holds
decl: UpperTheory.Gal.Int.Geo.geoOne_holds
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [geo-one-def]
concepts: [QW17YJ6ZCT, G44NQXCWT9, 6YDZNXR19H]
routine: []
open: [UpperTheory.Gal.Int.Geo.geometric_realization_of_weight_one, UpperTheory.Gal.Int.Geo.weight_one_geometric_realization]
---
## Statement

[The geometric statement GeoOne](/step/geo-one-def/) is true.

In words: let $E$ be a CM field, $\ell$ a prime, $a$ odd, and $U$ an automorphic representation of $U_a(\mathbb{A}_E)$ that satisfies the hypotheses of `GeoOne` at the places $w_0$, $v'$ and the sets $T$, $S$. Then there are Galois representations $\rho$ with `VBase`, with the Frobenius condition `ESAt` at the good split places away from $\ell$, and with the conditions `CrysAt`, `JumpsOcc` and `PhiKilled` at the suitable places above $\ell$.

## Proof

The proof is one application. The theorem `geometric_realization_of_weight_one` has one hypothesis `hW : HolomorphicLefschetzFormula` and the conclusion `GeoOne`. The proof gives it the theorem `weight_one_geometric_realization`, which proves `HolomorphicLefschetzFormula`.

1. `weight_one_geometric_realization` unfolds `HolomorphicLefschetzFormula` and applies `GlobalTheory.T.lefschetz_fixedPoint_finite_etale_correspondence`. As the [Galois row chapter](/proof/galois-row/) says, `HolomorphicLefschetzFormula` states: let $Z$ be smooth and projective of relative dimension $n$ over $\mathbb{C}$, let $c_1, c_2 : Y \to Z$ be finite étale, and suppose that the fixed points $y$ with $c_1(y) = c_2(y)$ form a finite set $F$ with tangent matrices $A_y$ such that $\det(1 - A_y) \neq 0$. Then for each $p$, $$\sum_{q=0}^{n} (-1)^q \operatorname{tr}\big(c_{1*} \circ c_2^* \mid H^{p,q}\big) = \sum_{y \in F} \frac{[X^p] \det(1 + X A_y)}{\det(1 - A_y)}.$$ This has the shape of the holomorphic Lefschetz fixed-point formula.
2. `geometric_realization_of_weight_one hW` is `geoOne_of_parts steps_holds (kodaira_spencer_of_weight_one hW) Pl.planEx_holds`. The three parts are a structure `Steps` of local steps (crystalline, Hodge-Tate jump and Frobenius steps for the cohomology of a tower), a structure `KSAll` of six Kodaira-Spencer statements, and a statement `PlanEx`. The Lefschetz formula $hW$ enters only in the field `KSHodge` of `KSAll`, through `ksHodge_of_geo hW FixK_holds`.

## Notes

The hypothesis of `geometric_realization_of_weight_one` is a theorem of the code, so `geoOne_holds` has no hypotheses. The names "weight one" and "geometric realization" are swapped between the two theorems: `weight_one_geometric_realization` proves the Lefschetz formula, and `geometric_realization_of_weight_one` proves `GeoOne`.

The step has about 43,000 declarations below it. This is the largest part of the Galois row.

The user of this step is [the Galois row from the theta lift](/step/galois-representations-of-theta-lift/).
