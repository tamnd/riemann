---
id: published-results-arithmetic
title: The bundle PublishedHodgeBundleTheorems from the literature
decl: UpperTheory.LiteratureTheorems.published_results_arithmetic
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [open-literature-statements-def]
concepts: []
routine: []
open: [GlobalTheory.CovTop.PublishedHodgeBundleTheorems, UpperTheory.LiteratureTheorems.ab_mul_n_st_of_literature, UpperTheory.LiteratureTheorems.abelian_de_rham_of_literature, UpperTheory.LiteratureTheorems.ar_calc_of_literature, UpperTheory.LiteratureTheorems.arith_hilbert_samuel_of_literature, UpperTheory.LiteratureTheorems.chow_form_exists_of_literature, UpperTheory.LiteratureTheorems.cycle_heights_of_literature, UpperTheory.LiteratureTheorems.formal_algebraisation_of_literature, UpperTheory.LiteratureTheorems.good_chern_weil_of_literature, UpperTheory.LiteratureTheorems.green_series_st_of_literature, UpperTheory.LiteratureTheorems.grothendieck_messing_of_literature, UpperTheory.LiteratureTheorems.hasse_norm_st_of_literature, UpperTheory.LiteratureTheorems.induced_simple_lowest_alcove_of_literature, UpperTheory.LiteratureTheorems.kawamata_viehweg_of_literature, UpperTheory.LiteratureTheorems.l2_extension_log_canonical_of_literature, UpperTheory.LiteratureTheorems.landherr_st_of_literature, UpperTheory.LiteratureTheorems.nadel_vanishing_and_non_klt_divisor_of_literature, UpperTheory.LiteratureTheorems.nef_numerics_of_literature, UpperTheory.LiteratureTheorems.principal_polarisation_one_section_of_literature, UpperTheory.LiteratureTheorems.principalisation_of_literature, UpperTheory.LiteratureTheorems.prismatic_dieudonne_hodge_of_literature, UpperTheory.LiteratureTheorems.ray_class_field_st_of_literature, UpperTheory.LiteratureTheorems.semi_abelian_hom_extension_of_literature, UpperTheory.LiteratureTheorems.semistable_reduction_st_of_literature, UpperTheory.LiteratureTheorems.serre_holomorphic_sections_of_literature, UpperTheory.LiteratureTheorems.strong_approx_su_of_literature, UpperTheory.LiteratureTheorems.toroidal_compactification_of_literature, UpperTheory.LiteratureTheorems.vol_ge_of_literature, UpperTheory.LiteratureTheorems.vol_nef_of_literature]
---
## Statement

Let $O$ be a proof of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). Then the proposition `GlobalTheory.CovTop.PublishedHodgeBundleTheorems` holds.

`PublishedHodgeBundleTheorems` is a structure of type `Prop` with 28 fields. The fields have the short names `p1` to `p26` and `q1` to `q18`, with gaps (for example there is no `p6` and no `q2`). The type of each field is a named statement of the namespace `GlobalTheory.Published`:

- `p1` `ToroidalCompactification`, `p2` `VolGe`, `p3` `VolNef`, `p4` `ArCalc`, `p5` `AbelianDeRham`, `p8` `RayClassFieldSt`, `p12` `SemistableReductionSt`, `p13` `StrongApproxSU`, `p14` `GreenSeriesSt`, `p16` `GoodChernWeil`, `p19` `LandherrSt`, `p20` `HasseNormSt`, `p22` `SemiAbelianHomExtension`, `p23` `InducedSimpleLowestAlcove`, `p25` `principalPolarisationOneSection`, `p26` `AbMulNSt`;
- `q1` `GrothendieckMessing`, `q4` `PrismaticDieudonneHodge`, `q6` `KawamataViehweg`, `q7` `NefNumerics`, `q8` `L2ExtensionLogCanonical`, `q9` `ArithHilbertSamuel`, `q10` `ChowFormExists`, `q11` `CycleHeights`, `q13` `SerreHolomorphicSections`, `q15` `NadelVanishingAndNonKltDivisor`, `q16` `Principalisation`, `q18` `FormalAlgebraisation`.

By their names, these are results of arithmetic geometry: toroidal compactifications, volumes of line bundles, arithmetic intersection and Hilbert-Samuel formulas, abelian schemes and their deformations, vanishing theorems, resolution and principalisation, and class field theory. This page does not unfold the 28 statements.

## Proof

The proof is a term in the `where` form. It fills each field with one theorem of the same file, applied to $O$. The theorem for a field has the type of that field. The theorem name is the snake case form of the statement name with the suffix `_of_literature`. For example, `p1` gets `toroidal_compactification_of_literature O` and `q1` gets `grothendieck_messing_of_literature O`. Filling the fields is bookkeeping.

Most field theorems prove their statements with one term from another file. For example, `toroidal_compactification_of_literature` is `GlobalTheory.toroidalCompactification_holds`, and `principalisation_of_literature` is `PositivityTheory.ResPlug.WeightsCompactStabilizer.principalisation_closed`. Four field theorems pass $O$ on to other theorems of the file.

- `vol_ge_of_literature` applies `volGe_of_hilbertSamuel` to `arith_hilbert_samuel_of_literature O`, `ar_calc_of_literature O` and `nef_numerics_of_literature O`.
- `vol_nef_of_literature` uses `arith_hilbert_samuel_of_literature O`.
- `arith_hilbert_samuel_of_literature` uses `principalisation_of_literature O`.
- `grothendieck_messing_of_literature` is `GrothendieckDeformation.grothendieckMessing` applied to `grothendieck_deformation_of_literature O`.

None of these chains reaches a field of $O$.

**Use of $O$.** The proof does not read any field of $O$. It is not one of the 13 theorems of the file that read $O$. So $O$ is an argument in name only.

**Named results.** No direct dependency is a named result of `links/literature.yaml`. One indirect dependency is: `grothendieck_deformation_of_literature`, through `grothendieck_messing_of_literature`. That entry points to the Grothendieck-Messing deformation theory of abelian schemes (Messing 1972, Mazur and Messing 1974). The entry marks it as `reads_hypothesis: true`, but its note says that it passes $O$ only to theorems that ignore $O$. The computation above agrees: it reads no field of $O$.

## Notes

The theorem takes $O$ but does not need it.

The field names `p1` to `q18` are numbers with gaps. The file `ToKnownTheoremsOf.lean` adds three theorems `PublishedHodgeBundleTheorems.p18`, `q2` and `q12`. Each takes the structure as an argument `_h`, ignores it, and proves its statement with a theorem of the code. So these three "fields" are not fields of the structure.

The field `q1` has the type `GrothendieckMessing`, which, by the note in `links/literature.yaml`, has a hypothesis that $p$ is nilpotent. The named result `GrothendieckDeformation` has no such hypothesis.

The field theorems `green_series_st_of_literature` and `strong_approx_su_of_literature` also fill fields of [the bundle ThetaLocalInputs](/step/published-results-first/). `ray_class_field_st_of_literature` and `strong_approx_su_of_literature` also fill fields of [the bundle UnitaryGroupThirdPlaceHypotheses](/step/published-results-eigen/).

The only caller is [EveryCharacter from the literature and VWin](/step/every-character-of-literature/). There this bundle is one of the 15 inputs of `topCovolSlim2_use_alt_alt`, which gives `CovolumeBoundOfX`.

This page does not check that each Lean statement is the published theorem of the same name.
