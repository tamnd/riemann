---
id: automorphic-window-of-inputs
title: VWin from three inputs
decl: UpperTheory.One.Join.automorphic_window_of_inputs
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [base-change-isobaric-n-def, open-image-condition-def, cm-abelian-inputs-from-literature, v-window-of-depth-zero-residual-bc-cm, vwin-def]
concepts: [QW17YJ6ZCT, BK9WBMF56G]
routine: []
open: [UpperTheory.V.Z.Win.RowT]
---
## Statement

The theorem has three hypotheses.

1. `O : OpenImageCondition`. This is [the structure OpenImageCondition](/step/open-image-condition-def/), a record with one field of type `RowT`.
2. `bc : BaseChangeIsobaricN`. This is [the statement BaseChangeIsobaricN](/step/base-change-isobaric-n-def/), an isobaric base change from unitary groups to $\mathrm{GL}_n$ over CM fields.
3. `gal : RowT`. The proposition `RowT` is defined as `Row0b fun h rc => IsRecT h rc`, the Galois row with the local condition `IsRecT`.

The conclusion is [the window bound VWin](/step/vwin-def/).

## Proof

The proof is one application. It applies [VWin from the rank n inputs](/step/v-window-of-depth-zero-residual-bc-cm/) (`v_window_of_depth_zero_residual_bc_cm`) to the four arguments `O`, `bc`, `gal` and `cm_abelian_inputs_from_literature O`. The fourth argument comes from [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/). It has the type `LiteratureCMHypothesis`.

## Notes

The theorem only adds one argument, the CM and abelian variety package, to `v_window_of_depth_zero_residual_bc_cm`. That package takes `O` as an argument, but no theorem that builds its fields reads `O` (see the notes of [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/)).

The only user is [VWin from Row0b](/step/vwin-of-row/), which passes the same hypothesis as `O` (inside `OpenImageCondition.mk`) and as `gal`.
