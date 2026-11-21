---
id: every-character-of-literature
title: EveryCharacter from the literature and VWin
decl: UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [theta-local-matching, open-literature-statements-def, every-character-def, vwin-def]
concepts: [DNKA4WBKDS, 24GAZHVTGB, JR4QSEFXWF, 9E45NBX1G0, 6WB6TKE70H]
routine: []
open: [SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt, PositivityTheory.Pf1.HilbertSamuelMoriwaki.hsUse_outright, PositivityTheory.Pf1.HilbertSamuelMoriwaki.moriwakiBig_outright, UpperTheory.LiteratureTheorems.published_results_eigen, UpperTheory.LiteratureTheorems.published_results_first, UpperTheory.LiteratureTheorems.published_results_arithmetic, UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature, UpperTheory.LiteratureTheorems.local_langlands_gl_recT_exists_of_literature, UpperTheory.LiteratureTheorems.resolution_char_zero_of_literature, UpperTheory.LiteratureTheorems.principalisation_char_zero_of_literature, UpperTheory.LiteratureTheorems.poincare_lelong_inv_of_literature, UpperTheory.LiteratureTheorems.fargues_exact_of_literature, UpperTheory.LiteratureTheorems.zarhin_statement, UpperTheory.LiteratureTheorems.nef_rr_of_literature, UpperTheory.LiteratureTheorems.siegel_toroidal_integral_of_literature, UpperTheory.LiteratureTheorems.toroidal_for_fan_ks_of_literature, UpperTheory.LiteratureTheorems.semi_abelian_lie_seminegative_of_literature, UpperTheory.LiteratureTheorems.point_separation_pair_of_literature, UpperTheory.LiteratureTheorems.ar_degree_of_literature, UpperTheory.LiteratureTheorems.grothendieck_deformation_of_literature]
---
## Statement

Let $O$ be a proof of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). Let $h_V$ be a proof of the statement `UpperTheory.Top.VWin`. Then [EveryCharacter](/step/every-character-def/) holds.

Here `EveryCharacter` says: for each integer $N \geq 1$, each [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$ and each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, if $\chi \neq 1$ or $s \neq 1$, then the [[Dirichlet L-function|24GAZHVTGB]] satisfies $L(s, \chi) \neq 0$. This is the [[Generalized Riemann hypothesis|DNKA4WBKDS]] for Dirichlet L-functions.

The statement [VWin](/step/vwin-def/) is `∀ ψ : PChar, VWinAt ψ 401`. Here `PChar` is the type of primitive Dirichlet characters. `VWinAt ψ 401` is a statement about windows $[Y, Y^2]$ for the character $\psi$, with the constant $401$ in an exponent. The [VWin chapter](/proof/vwin/) unfolds it. In the Lean source, the local name `O` is the structure and `hV` is the proof of `VWin`.

## Proof

The proof is one application of [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/). That theorem takes seven inputs $P$, $F$, $h_A$, $h_M$, $h_X$, $h_L$ and $h_V$. The proof fills them as follows.

1. $P$, of type `UnitaryGroupThirdPlaceHypotheses`, is `published_results_eigen O`. This bundle has 60 fields. Each field is a small theorem of the same file applied to $O$.
2. $F$, of type `ThetaLocalInputs`, is `published_results_first O`. This bundle has 53 fields, built in the same way.
3. $h_A$ (`ThetaIntegralsAgree`) and $h_M$ (`LocalMatching`) are the two parts of `theta_integrals_agree_and_local_matching_of_literature O`. That theorem applies `theoremK_head2` to two leaf results named `EisBL` and `SiegelWeilStd`. It does not read $O$.
4. $h_X$, of type `CovolumeBoundOfX`, is `topCovolSlim2_use_alt_alt` applied to 15 inputs. Thirteen of them are theorems of the same file applied to $O$: `resolution_char_zero_of_literature`, `principalisation_char_zero_of_literature`, `poincare_lelong_inv_of_literature`, `fargues_exact_of_literature`, `zarhin_statement`, `nef_rr_of_literature`, `siegel_toroidal_integral_of_literature`, `toroidal_for_fan_ks_of_literature`, `semi_abelian_lie_seminegative_of_literature`, `point_separation_pair_of_literature`, `ar_degree_of_literature`, the bundle `published_results_arithmetic` and `grothendieck_deformation_of_literature`. The other two are `hsUse_outright` and `moriwakiBig_outright`. They are theorems of another file, and they do not take $O$.
5. $h_L$, of type `RecTExists`, is `local_langlands_gl_recT_exists_of_literature O`.
6. $h_V$ is the hypothesis `hV`, with no change.

Each of these terms has exactly the type that the target theorem asks for. So the application type-checks, and its result is `EveryCharacter`.

**What the proof does with $O$.** Each input above, except $h_V$, receives $O$ as an argument. But only two of the inputs read a field of $O$, directly or through other theorems.

- `local_langlands_gl_recT_exists_of_literature O` applies `llOf_alt` to `local_langlands_recT_exists_of_literature O` and to eleven more results. The theorem `local_langlands_recT_exists_of_literature` returns the field `O.localLanglandsExists`. The theorem `llOf_alt` has the type `RecTExists → ... → RecTExists`, and its proof is `fun h _ _ _ _ _ _ _ _ _ _ _ => h`. So $h_L$ is the field `localLanglandsExists` of $O$, and the eleven other inputs are not used.
- `published_results_eigen O` reads $O$ in some of its fields, for example through `cusp_u_of_literature`, `carU_above_l_of_literature` and the bundle `literature_nonexistence`.

The other inputs come from leaf theorems that cite a proof in another file and ignore $O$.

**What the proof does with VWin.** It passes $h_V$ to the target theorem with no change. The file uses `VWin` for nothing else.

## Notes

The theorem has one caller, `everyCharacter_of_row`, which builds $O$ as $\langle h, \texttt{recTExists}, h \rangle$ and gets $h_V$ from `vwin_of_row h`. See [EveryCharacter from Row0b](/step/every-character-of-row/). So in the final proof both arguments of this theorem come from the one hypothesis `Row0b` and from the theorem `recTExists`.

Many names here are long names from the literature, for example "Fargues exact", "Zarhin statement" or "Grothendieck deformation". This page does not check that each Lean statement is the published theorem of the same name.

The three bundles `published_results_eigen`, `published_results_first` and `published_results_arithmetic` hold no new mathematics. Each one is a record of earlier small theorems of the same file. One field of `published_results_eigen`, `siegelEisensteinSimplePole`, has the type `UnusedSlot72`, which is `True`.

The name `local_langlands_gl_recT_exists_of_literature` suggests that the eleven extra results (local converse theorem, Langlands exhaustion, Bernstein and Zelevinsky finiteness, and others) build `RecTExists`. They do not. The proof of `llOf_alt` ignores them and returns its first argument.

The [literature chapter](/proof/literature/) gives the counts and the sizes of the branches below this theorem.
