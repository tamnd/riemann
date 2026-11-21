---
id: v-window-of-depth-zero-residual-bc-cm
title: VWin from the rank n inputs
decl: UpperTheory.One.Join.v_window_of_depth_zero_residual_bc_cm
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [base-change-isobaric-n-def, open-image-condition-def, vwin-def]
concepts: [QW17YJ6ZCT, 9MPCZ3EAJM, BK9WBMF56G]
routine: []
open: [GlobalTheory.Mem.LiteralAutomorphy.LiteratureCMHypothesis, UpperTheory.LiteratureTheorems.galois_cohomology_from_literature, UpperTheory.One.Join.automorphic_inputs_from_literature, UpperTheory.One.Join.local_inputs_from_literature, UpperTheory.V.Z.Win.RowT, UpperTheory.V.v_window_of_literal_automorphy_n]
---
## Statement

The theorem has four hypotheses.

1. `O : OpenImageCondition`. This is [the structure OpenImageCondition](/step/open-image-condition-def/), a record with one field of type `RowT`.
2. `bc : BaseChangeIsobaricN`. This is [the statement BaseChangeIsobaricN](/step/base-change-isobaric-n-def/).
3. `gal : RowT`. The proposition `RowT` is defined as `Row0b fun h rc => IsRecT h rc`.
4. `cm : LiteratureCMHypothesis`. This is a structure with 11 fields. By their names, the fields are statements on abelian varieties and complex multiplication: `GrothendieckDeformation`, `AbelianDeRham`, `AbelianDualCrystal`, `PeriodComparison`, `GaussManinPeriods`, `SerreTateGoodReductionSt`, `EllipticMainTheoremCM`, `HilbertClassFieldJ`, `SiegelKlingenDeligneRibet`, `PartialZetaFunctionalEquation` and `HeckeTateFunctionalEquation`.

The conclusion is [the window bound VWin](/step/vwin-def/).

## Proof

The proof builds one term of the structure `LiteratureRankNHypothesis` with the anonymous constructor and applies `v_window_of_literal_automorphy_n` to it. `LiteratureRankNHypothesis` has four fields, and the proof fills them as follows.

1. `loc : LitLocAlt` is `local_inputs_from_literature O`. By the [VWin chapter](/proof/vwin/), `LitLocAlt` has 18 local statements on $\mathrm{GL}_n$ of a local field.
2. `aut : LiteratureAutomorphyHypothesis` is `automorphic_inputs_from_literature O bc gal`. This structure has 15 global statements. Two of them, the fields `bc` and `gal`, are the hypotheses `bc` and `gal` themselves.
3. `coh : LitCoh` is `galois_cohomology_from_literature O`. By the VWin chapter, `LitCoh` has 12 statements on Galois cohomology.
4. `cm` is the hypothesis `cm`.

The theorem `v_window_of_literal_automorphy_n` then gives `VWin`.

## Notes

The hypothesis `O` goes to each of the three builder theorems. The field of `O` is a proof of `RowT`, the same proposition as `gal`. The row reaches the counting argument through the field `aut.gal`, which is the hypothesis `gal`.
