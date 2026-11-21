---
id: galois-row-holds
title: The Galois row holds
decl: UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [row0b-def, is-rect-def]
concepts: [QW17YJ6ZCT, 9AZ164C298, 6WB6TKE70H, 0R9R0Y1HDK, 9E45NBX1G0]
routine: [UpperTheory.Gal.Int.recT]
open: [UpperTheory.Gal.Int.galoisRepresentations_of_thetaLift, UpperTheory.TP.K.tLiftK]
---
## Statement

[The statement Row0b](/step/row0b-def/) holds with the local condition `recT`. Here `recT` is the `RecNotion` defined as `fun h rc => IsRecT h rc`, so the local clauses range over the maps that satisfy [the local condition IsRecT](/step/is-rect-def/).

In words: let $E$ be a CM field, $\ell$ a prime, $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, and $a \geq 1$. Let $\pi$ be a regular algebraic cuspidal representation of $\mathrm{GL}_a(\mathbb{A}_E)$ and $\chi$ a Hecke character of $E^+$ such that $(\pi, \chi)$ is a polarized pair. Then there is a continuous semisimple $r : \mathrm{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, with an integer $wt$ and Hodge-Tate multisets $HT_\tau$, that satisfies the conditions `PropsB` at every place, for every local map $rc$ with `IsRecT`.

## Proof

The proof is one application. The theorem `galoisRepresentations_of_thetaLift` has one hypothesis `up : TLiftK` and the conclusion `Row0b recT`. The theorem `UpperTheory.TP.K.tLiftK` proves `TLiftK`. The proof applies the first theorem to the second.

So this step adds no mathematics. It only discharges the hypothesis `TLiftK`. All the work is in the two inputs.

- `TLiftK` is a theta lift statement between definite unitary groups. Let $X$ be a hermitian space of rank $n$ and $W$ a skew-hermitian space of rank $d$ over $E$, both definite, with $d$ large. Let $U$ be an automorphic representation of $U_n(\mathbb{A}_E)$ with dominant weights that satisfy a bound in terms of $d$. Then there is an automorphic representation $U'$ of $U_d(\mathbb{A}_E)$ that is a lift of $U$ (`IsLift`): with explicit weights, and with local components related by an intertwining map at the split places. The proof `tLiftK` is the one-line `tLift_holds_k`.
- `galoisRepresentations_of_thetaLift` is the term `galoisLocalGlobalStrong_of_geometry_lift geoOne_holds up`. It feeds the proof `geoOne_holds` of the geometric statement `GeoOne` and the hypothesis `up` into a chain of implications. The chain proves the stronger statement `Row0 recT`, and then weakens it to `Row0b recT` by `Row0.row0b`.

The [Galois row chapter](/proof/galois-row/) describes both inputs and the chain in its steps 3 to 7.

## Notes

The name says "strong", but the conclusion is `Row0b`, the weaker of the two forms. The chain inside proves `Row0` first.

`recT` and `RowT` are two names for the same instance. `recT` is `fun h rc => IsRecT h rc`. `RowT` is `Row0b fun h rc => IsRecT h rc`. So the type of this theorem is `RowT`, and it can be passed to [VWin from Row0b](/step/vwin-of-row/) and to [EveryCharacter from Row0b](/step/every-character-of-row/).

The theorem has two users: `everyCharacter` (see [EveryCharacter from the Galois row](/step/every-character/)) and `UpperTheory.V.SmallClassNumbers.litN`.

The theorem does not use [local Langlands existence](/step/rect-exists/) directly. That theorem enters lower down, for example in `localGlobalCompatAtIwahoriFixed_of_unlinked`.
