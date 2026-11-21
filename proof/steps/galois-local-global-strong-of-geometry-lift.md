---
id: galois-local-global-strong-of-geometry-lift
title: The Galois row from geometry and the theta lift
decl: UpperTheory.Gal.Int.galoisLocalGlobalStrong_of_geometry_lift
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [geo-one-def, row0b-def, tlift-k-def]
concepts: [QW17YJ6ZCT, 6WB6TKE70H]
routine: [UpperTheory.Gal.Int.recT, UpperTheory.GalStar.Row0.row0b]
open: [UpperTheory.Gal.Int.galoisLocalGlobal_of_geometry_lift]
---
## Statement

Suppose that [the geometric statement GeoOne](/step/geo-one-def/) holds and that [the theta lift statement TLiftK](/step/tlift-k-def/) holds. Then [the statement Row0b](/step/row0b-def/) holds with the local condition `recT`, that is, with `fun h rc => IsRecT h rc`.

The Lean hypotheses are `geo : GeoOne` and `up : TLiftK`.

## Proof

The proof has two steps.

1. The theorem `galoisLocalGlobal_of_geometry_lift geo up` gives `Row0 recT`. `Row0` is the same statement as `Row0b`, with the structures `Props` and `Away` in place of `PropsB` and `AwayB`.
2. The theorem `Row0.row0b recT` turns `Row0 recT` into `Row0b recT`. The two statements differ only in the tame clause of the local conditions. `Away` asks for it when $E_w \cong \mathbb{Q}_g$ (`IsQp`). `AwayB` asks for it only when also $n = 1$ or $16 n^2 < g$ (`IsQpBig`). So `Row0` is the stronger statement, and the weakening is routine.

The proof of `galoisLocalGlobal_of_geometry_lift` is `rest (coreAll_of (seedFinOdd_of_geoOne geo) (congFinOdd_of_ex wtLacEx_holds) up)`. So `geo` enters only through `seedFinOdd_of_geoOne`, and `up` enters only through `coreAll_of`. The [Galois row chapter](/proof/galois-row/) describes `coreAll_of` and `rest` in its steps 4 and 5.

## Notes

The name says "Strong", but the conclusion is `Row0b`, the weaker form. The theorem without "Strong", `galoisLocalGlobal_of_geometry_lift`, proves the stronger `Row0`. So the names are the opposite of the strength of the conclusions.

The user of this step is [the Galois row from the theta lift](/step/galois-representations-of-theta-lift/).
