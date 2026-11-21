---
id: published-results-first
title: The bundle ThetaLocalInputs from the literature
decl: UpperTheory.LiteratureTheorems.published_results_first
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [open-literature-statements-def, theta-local-inputs-def]
concepts: [H3Q2703KKV, 6WB6TKE70H, 3NZBZXYWAJ]
routine: []
open: [UpperTheory.LiteratureTheorems.bernstein_unitary_product_irreducible_of_literature, UpperTheory.LiteratureTheorems.bernstein_zelevinsky_finiteness_of_literature, UpperTheory.LiteratureTheorems.borel_casselman_of_literature, UpperTheory.LiteratureTheorems.casselman_wallach_of_literature, UpperTheory.LiteratureTheorems.complex_multiplication_j_st_of_literature, UpperTheory.LiteratureTheorems.cusp_bounded_of_literature, UpperTheory.LiteratureTheorems.cusp_decay_bound_of_literature, UpperTheory.LiteratureTheorems.cusp_decay_sobolev_of_literature, UpperTheory.LiteratureTheorems.cusp_rapid_decay_of_literature, UpperTheory.LiteratureTheorems.cusp_trace_class_of_literature, UpperTheory.LiteratureTheorems.cuspidal_mirabolic_of_literature, UpperTheory.LiteratureTheorems.discrete_series_cover_exists_of_literature, UpperTheory.LiteratureTheorems.discrete_series_cover_of_literature, UpperTheory.LiteratureTheorems.discrete_series_exists_of_literature, UpperTheory.LiteratureTheorems.discrete_series_hermitian_unique_of_literature, UpperTheory.LiteratureTheorems.discrete_series_lowest_k_type_of_literature, UpperTheory.LiteratureTheorems.discrete_series_upq_exists_of_literature, UpperTheory.LiteratureTheorems.dixmier_malliavin_factorisation_of_literature, UpperTheory.LiteratureTheorems.doubling_method, UpperTheory.LiteratureTheorems.flath_factorisation_of_literature, UpperTheory.LiteratureTheorems.formal_degree_compact_dual_of_literature, UpperTheory.LiteratureTheorems.gk_globalisation_of_literature, UpperTheory.LiteratureTheorems.gl_howe_duality_of_literature, UpperTheory.LiteratureTheorems.green_series_st_of_literature, UpperTheory.LiteratureTheorems.harish_chandra_finite_of_literature, UpperTheory.LiteratureTheorems.harish_chandra_modules_of_literature, UpperTheory.LiteratureTheorems.hecke_l_entire_and_nonzero_at_one_of_literature, UpperTheory.LiteratureTheorems.hecke_l_partial_continuation_of_literature, UpperTheory.LiteratureTheorems.hermitian_hasse_principle_of_literature, UpperTheory.LiteratureTheorems.hermitian_local_global_of_literature, UpperTheory.LiteratureTheorems.holomorphic_discrete_series_of_literature, UpperTheory.LiteratureTheorems.howe_duality_real_of_literature, UpperTheory.LiteratureTheorems.ideal_invariants_one_orbit_st_of_literature, UpperTheory.LiteratureTheorems.k_finite_vectors_unitary_of_literature, UpperTheory.LiteratureTheorems.kudla_splitting_split_unitary_of_literature, UpperTheory.LiteratureTheorems.linnik_of_literature, UpperTheory.LiteratureTheorems.logDerivOne, UpperTheory.LiteratureTheorems.metaplectic_representation_of_literature, UpperTheory.LiteratureTheorems.quadratic_class_field_theory_of_literature, UpperTheory.LiteratureTheorems.radford_shuffle_polynomial_of_literature, UpperTheory.LiteratureTheorems.rallis_inner_product_convergent_of_literature, UpperTheory.LiteratureTheorems.real_metaplectic_representation_of_literature, UpperTheory.LiteratureTheorems.schur_orthogonality_square_integrable_of_literature, UpperTheory.LiteratureTheorems.siegel_set_unitary_of_literature, UpperTheory.LiteratureTheorems.stone_von_neumann_of_literature, UpperTheory.LiteratureTheorems.strong_approx_su_of_literature, UpperTheory.LiteratureTheorems.theta_rational_invariance_of_literature, UpperTheory.LiteratureTheorems.unramified_doubling_gl_of_literature, UpperTheory.LiteratureTheorems.weil_representation_exists_of_literature, UpperTheory.LiteratureTheorems.weil_representation_unitary_pair_of_literature, UpperTheory.LiteratureTheorems.weil_siegel_formula_unitary_of_literature, UpperTheory.LiteratureTheorems.weyl_branching_of_literature, UpperTheory.LiteratureTheorems.zelevinsky_polynomial_ring_of_literature]
---
## Statement

Let $O$ be a proof of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). Then the proposition `GlobalTheory.FunPr.ThetaLocalInputs` holds.

`ThetaLocalInputs` is a structure of type `Prop` with 53 fields. Each field is a proposition. The type of each field is a named statement. For all fields but one, it is in the namespace `GlobalTheory.Published`, for example `GreenSeriesSt`, `Linnik`, `CuspidalMirabolic`, `WeylBranching`, `FlathFactorisation`, `WeilSiegelFormulaUnitary`, `DoublingMethodLocalZetaIntegrals`, `StoneVonNeumann`, `CasselmanWallach` and `WeilRepresentationExists`. One field, `logDerOne`, has the type `GlobalTheory.Mem.An.LogDerOne`. By their names, the fields are results on representations of $\mathrm{GL}_n$ over local fields, on real groups and discrete series, on cusp forms, on the [[Weil representation|H3Q2703KKV]] and the [[theta correspondence|6WB6TKE70H]], and on Hecke L-functions. This page does not unfold the 53 statements.

## Proof

The proof is a term in the `where` form. It fills each of the 53 fields with one theorem of the same file, applied to $O$. The theorem for a field has the type of that field. For example, the field `greenSeriesSt` gets `green_series_st_of_literature O`, the field `linnik` gets `linnik_of_literature O`, and the field `logDerOne` gets `logDerivOne O`. Each theorem name is the field name in snake case with the suffix `_of_literature`, except for `doublingMethod` (theorem `doubling_method`) and `logDerOne` (theorem `logDerivOne`).

Each field theorem has the form `NAME_of_literature (O : OpenLiteratureStatements) : P`. Most of them prove $P$ with one term from another file and do not use $O$. For example, `linnik_of_literature` is `UpperTheory.Lit.linnik`, `logDerivOne` is `GlobalTheory.LogDerOneProof.logDerOne_holds`, and `strong_approx_su_of_literature` is `GlobalTheory.StrongApproxSUProof.strongApproxSU`. Four field theorems pass $O$ on to other theorems of the same file: `doubling_method`, `flath_factorisation_of_literature`, `rallis_inner_product_convergent_of_literature` and `zelevinsky_polynomial_ring_of_literature`. None of these chains reaches a field of $O$.

So the structure is only a record of 53 earlier results. Its proof is bookkeeping.

**Use of $O$.** The proof does not read any field of $O$, directly or through other theorems. Of the 195 theorems in the file, the 13 that read $O$ are listed in the [literature chapter](/proof/literature/). None of the 53 field theorems is among them. So $O$ is an argument in name only.

**Named results.** No direct dependency of this theorem is a named result of the file `links/literature.yaml`. The 53 field theorems do not have their own pages.

## Notes

The theorem takes $O$ but does not need it. The same proof, with $O$ removed, would prove `ThetaLocalInputs` with no hypothesis.

Some field theorems also fill fields of other bundles. `green_series_st_of_literature` and `strong_approx_su_of_literature` also appear in [the bundle PublishedHodgeBundleTheorems](/step/published-results-arithmetic/). Twenty of the field theorems also appear in [the bundle UnitaryGroupThirdPlaceHypotheses](/step/published-results-eigen/).

There is a second structure with the name `ThetaLocalInputs`, in the namespace `GlobalTheory.NRows`. It has other fields (`bz`, `bern`, `geo`, `unl` and more). This theorem builds the structure of the namespace `GlobalTheory.FunPr`.

This theorem has one caller in the file, [EveryCharacter from the literature and VWin](/step/every-character-of-literature/), which passes it as the input $F$ to [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/).

Many field names point to the literature, for example "Stone-von Neumann", "Casselman-Wallach" or "Howe duality". This page does not check that each Lean statement is the published theorem of the same name.
