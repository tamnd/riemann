---
id: vwin-of-row
title: VWin from Row0b
decl: UpperTheory.One.vwin_of_row
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [vwin-def, row0b-def, is-rect-def]
concepts: [QW17YJ6ZCT, BK9WBMF56G, JR4QSEFXWF]
routine: [UpperTheory.LiteratureTheorems.OpenImageCondition]
open: [UpperTheory.One.Join.automorphic_window_of_inputs, UpperTheory.BaseChangeIdentities.baseChangeN]
---
## Statement

Suppose that [the statement Row0b](/step/row0b-def/) holds with the local condition [IsRecT](/step/is-rect-def/). Then [the window bound VWin](/step/vwin-def/) holds.

The Lean hypothesis is `h : Row0b fun h rc => IsRecT h rc`. (Inside the lambda, the name `h` is a different, local variable: the proof that $A$ lies over $w$.)

## Proof

The proof applies the theorem `automorphic_window_of_inputs` to three arguments.

1. `OpenImageCondition.mk h`. The structure `OpenImageCondition` has one field, `galoisRepOfPolarizedPairLit`, of type `RowT`. `RowT` is defined as `Row0b fun h rc => IsRecT h rc`, which is the type of `h`. So the proof puts `h` in the structure.
2. `baseChangeN`, a theorem of the code that proves `BaseChangeIsobaricN`. In words, `BaseChangeIsobaricN` says: for each CM field $E$ such that $E/E^+$ is unramified at every finite place, and each $n \ge 1$ and each space $\pi$ of functions on `UA E n` (by its name, the adelic points of a unitary group in $n$ variables) with `IsAutRepU π`, there is a decomposition $n = \sum_i N_i$ and data $V_i$, $\sigma$, $m$, $P$ with `IsBaseChangeN`. By its name, this is an isobaric base change to $\mathrm{GL}_n$. This page does not unfold `IsBaseChangeN`.
3. `h` itself, as the argument `gal : RowT`.

The theorem `automorphic_window_of_inputs` then gives `VWin`. Its proof is the application of `v_window_of_depth_zero_residual_bc_cm` to the same three arguments and to `cm_abelian_inputs_from_literature O`. The [VWin chapter](/proof/vwin/) describes the tree below it.

## Notes

The hypothesis `h` is passed twice: once inside `OpenImageCondition` and once as `gal`. The VWin chapter reports that the field of `OpenImageCondition` is never read in this branch, and that the row reaches the counts only through `gal`. If that is right, the structure `OpenImageCondition` is a wrapper with no effect on the proof.

`baseChangeN` is not a hypothesis of `vwin_of_row`. It is a theorem of the code. So `vwin_of_row` has only one hypothesis, the Galois row.

The user of this step is [EveryCharacter from Row0b](/step/every-character-of-row/). There the hypothesis is the proof from [the Galois row holds](/step/galois-row-holds/).
