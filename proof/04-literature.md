---
title: The literature layer
description: The theorem every_character_of_literature_of_vWin takes a structure of three open statements and the statement VWin, and gives EveryCharacter. Its file holds 195 theorems named after published results. This page says what they state and which of them use the three open statements.
lead: One file of the Lean code gathers about 190 results with names from the literature into a few large bundles. Only 13 of its 195 theorems use the argument that the code calls the open literature statements. This page shows how the file is built, and where its three large branches go.
level: L1
status: draft
lean:
  - name: UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 810
  - name: UpperTheory.LiteratureTheorems.OpenLiteratureStatements
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 215
  - name: UpperTheory.FinalTheorems.everyCharacter_of_row
    file: Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
    line: 7
  - name: UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 565
  - name: SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopCovolSlim2Use.lean
    line: 16
  - name: UpperTheory.Lit.every_character_of_theta_integrals_local_matching
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 69
needs:
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
  - tag: DNKA4WBKDS
    text: Generalized Riemann hypothesis
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: QW17YJ6ZCT
    text: Galois representation
  - tag: 9E45NBX1G0
    text: Local Langlands conjectures
  - tag: KPYFGB342X
    text: Hecke character
  - tag: H3Q2703KKV
    text: Weil representation
  - tag: 6WB6TKE70H
    text: Theta correspondence
  - tag: 3NZBZXYWAJ
    text: Eisenstein series
next:
  - text: The map of the trunk
    path: proof/trunk/
    sub: where this page sits
  - text: Theta integrals and local matching
    path: proof/theta-matching/
    sub: the main output of this page
  - text: The Weil bound and arithmetic positivity
    path: proof/weil-bound/
    sub: the branch below topCovolSlim2_use_alt_alt
  - text: Siegel-Weil, the metaplectic representation and cusp forms
    path: proof/siegel-weil/
    sub: the proof of SiegelWeilStd
  - text: CM curves, the invariant derivation and divisibility
    path: proof/cm-divisibility/
    sub: the CM curve and the Chowla-Selberg inputs
steps: [open-literature-statements-def, row-def, every-character-of-literature, published-results-eigen, published-results-first, theta-integrals-agree-and-local-matching-of-literature, local-langlands-gl-rect-exists-of-literature, published-results-arithmetic]
---
## Result

Let $\mathsf{EC}$ be the statement `UpperTheory.EveryCharacter` of the [overview](/proof/). It says: for each modulus $N \geq 1$, each [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$ and each complex $s$ with $\operatorname{Re}(s) > \tfrac12$ and $(\chi, s) \neq (1, 1)$, the [[Dirichlet L-function|24GAZHVTGB]] has $L(s, \chi) \neq 0$. This is the [[Generalized Riemann hypothesis|DNKA4WBKDS]] for Dirichlet L-functions, in the form "no zeros to the right of the line".

Let $\mathsf{O}$ be the structure `OpenLiteratureStatements` and let $\mathsf{V}$ be the statement `UpperTheory.Top.VWin`. The Lean code proves

$$
\mathsf{O} \wedge \mathsf{V} \;\Longrightarrow\; \mathsf{EC}.
$$

```lean
theorem UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin
    (O : OpenLiteratureStatements) (hV : UpperTheory.Top.VWin) : UpperTheory.EveryCharacter
```

The statement is at [EveryCharacterOfLiteratureOfVWin.lean#L810](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L810). Its only caller is `everyCharacter_of_row`, one step below the top of the [trunk](/proof/trunk/).

## Idea

The proof of this theorem is one application of a later theorem, `every_character_of_theta_integrals_local_matching`. That theorem needs seven inputs. Two of them are very large structures of hypotheses with 60 and 53 fields. Each field is a statement that the code names after a published result: the Hecke and Tate functional equation, the theorem of Deligne and Ribet, the Siegel and Weil formula, and so on.

The file fills these fields with 195 small theorems. Each one has the form `NAME_of_literature (O : OpenLiteratureStatements) : P`. The argument `O` is in the signature of every one of them. But 182 of the 195 theorems never read it. Most of them (152) are one line: they cite a theorem that the Lean code proves in another file, and they ignore `O`. Others (30) combine earlier theorems of the same file. Only 13 theorems read a field of `O`, directly or through other theorems.

The structure `O` has three fields. Two of them have the same type `UpperTheory.One.M.Row`, a statement on the existence of Galois representations. The third is a form of the local Langlands correspondence. At the call site, the Lean code fills the two `Row` fields with the same proof, and fills the third with a theorem that it proves. So the word "open" in the name is a label. In the final proof, nothing in `O` is left as a hypothesis.

Three branches carry most of the weight below this theorem: the main theorem of the [next chapter](/proof/theta-matching/) (313,327 declarations in its dominator part), a volume bound (52,186) and a theta statement (8,520).

## Before you read

- An [[algebraic number field|WXGM3VWEK6]] $E$ and its finite places $w$, with the completion $E_w$.
- A [[Galois representation|QW17YJ6ZCT]] $r \colon \operatorname{Gal}(\overline{E}/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$.
- The [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$ over a $p$-adic field.
- A [[Hecke character|KPYFGB342X]] and its L-function.
- The [[Weil representation|H3Q2703KKV]], the [[theta correspondence|6WB6TKE70H]] and [[Eisenstein series|3NZBZXYWAJ]]. These are the subject of the next chapter. This page only names them.

## Plan

1. State the three fields of `OpenLiteratureStatements`.
2. Show how the caller fills them.
3. Sort the 195 theorems of the file into groups, and say which ones use `O`.
4. Show how the nine bundle theorems collect the small theorems into structures.
5. Show the proof of the main theorem as one call with seven inputs.
6. Describe the two large branches that the file feeds: the theta branch and the volume branch.

## The steps

### Step 1. The three open statements

The structure is a `Prop` with three fields ([L215](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L215)):

```lean
structure UpperTheory.LiteratureTheorems.OpenLiteratureStatements : Prop where
  caraianiLocalGlobalDual : UpperTheory.One.M.Row
  localLanglandsExists : UpperTheory.Zero.LLC.RecTExists
  galoisRepOfPolarizedPairLit : UpperTheory.One.M.Row
```

The field names refer to the literature (a local-global compatibility result, the existence of the local Langlands correspondence, and Galois representations for polarized pairs). The types are what the Lean code uses. Two fields have the same type.

**The type `Row`.** It is `Row0b` with the predicate `IsRecT` put in ([RecT.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/UnitarySphericalFixing/SatakeParameters/RecT.lean#L6)). The definition `Row0b` ([WeightsConjBis.lean#L69](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L69)) says: for each CM field $E$, each prime $\ell$, each field isomorphism $\iota \colon \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, each $a \geq 1$, each cuspidal object $\pi$ of the type `CuspSub E a` and each Hecke character $\chi$ of the maximal real subfield of $E$, if $\pi$ is regular algebraic and $(\pi, \chi)$ is a polarized pair, then there are a homomorphism $r \colon \operatorname{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, an integer weight and a family of Hodge and Tate multisets with the properties `PropsB`. The fields of `PropsB` say: $r$ is continuous and semisimple, $r$ matches $\pi$ at places away from $\ell$ (through each local map that satisfies `IsRecT`), the weights match the infinitesimal character of $\pi$, the weights are symmetric under complex conjugation, and a condition `AboveB` holds at places above $\ell$. The chapter [/proof/galois-row/](/proof/galois-row/) unfolds this statement.

**The type `RecTExists`.** It says ([IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78)): for each number field $E$, each algebraic closure $\Omega$, each valuation subring $A$ of $\Omega$ and each finite place $w$ of $E$ below $A$, there is a map `rc` from irreducible representations of $\mathrm{GL}_n(E_w)$ (all $n$) to Weil and Deligne parameters, with `IsRecT`. The predicate `IsRecT` asks for a local Artin map $a$ and the 13 laws of `LawsT`: dimension, the case $n = 1$ through $a$, compatibility with the Langlands classification by segments, cuspidal goes to irreducible, twists by $|\det|^s$ and by characters, central characters, duals, injectivity on "good" representations, tame parameters at depth zero, and a type law. This page does not unfold `Good` or `TypeLaw`.

### Step 2. How the caller fills `O`

The caller is one line ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)):

```lean
theorem UpperTheory.FinalTheorems.everyCharacter_of_row
    (h : UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc) :
    UpperTheory.EveryCharacter :=
  every_character_of_literature_of_vWin ⟨h, UpperTheory.Zero.LLC.recTExists, h⟩
    (UpperTheory.One.vwin_of_row h)
```

In words: the two `Row` fields both get the same proof $h$. The field `localLanglandsExists` gets `recTExists`, a theorem that the Lean code proves (its dominator part has 325 declarations). The statement $\mathsf{V}$ comes from $h$ too, by `vwin_of_row`. That step is the chapter [/proof/vwin/](/proof/vwin/). Then `everyCharacter` supplies $h$ from `galoisLocalGlobalStrong_recParameter`, which is the chapter [/proof/galois-row/](/proof/galois-row/). So the Lean code does not leave $\mathsf{O}$ as an assumption of the final theorem.

### Step 3. The 195 theorems and their use of `O`

Each of the 195 theorems in the file takes `O`. A script read each proof term and followed the references between the theorems of the file. The result is in this table.

| Group | Count | What the proof does | Uses `O` |
|---|---|---|---|
| Direct users | 3 | reads a field of `O` | yes, directly |
| Indirect users | 10 | combines theorems of the file, and one of them reads `O` | yes, through other theorems |
| Combiners and bundles | 30 | builds its result from earlier theorems of this file, by a theorem of another file or as a structure | no |
| Leaf citations | 151 | is one line that cites a theorem proved in another file | no |
| Trivial | 1 | `siegel_eisenstein_simple_pole` proves `UnusedSlot72`, which is `True`, by `trivial` | no |

The three direct users are these.

| Theorem | Line | Conclusion | Field of `O` |
|---|---|---|---|
| `local_langlands_recT_exists_of_literature` | [L283](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L283) | `RecTExists` | `localLanglandsExists` (it returns the field) |
| `pair_u_of_literature` | [L285](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L285) | `GalS.PairUAlt` | `galoisRepOfPolarizedPairLit`, also the first one |
| `carU_local_global_of_literature` | [L459](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L459) | `GalS.CarUAlt` | `caraianiLocalGlobalDual` |

The ten indirect users are `local_langlands_gl_recT_exists_of_literature`, `cusp_u_of_literature`, `hecke_l_adic_character_crystalline_of_literature`, `hecke_l_adic_character_above_of_literature`, `carU_above_l_of_literature`, the bundles `literature_local`, `literature_automorphy`, `literature_nonexistence` and `published_results_eigen`, and the main theorem. The bundle `literature_automorphy` also reads `O.caraianiLocalGlobalDual` directly in its field `car`.

One indirect user has a form to note. The theorem `local_langlands_gl_recT_exists_of_literature` ([L313](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L313)) proves `RecTExists` by `llOf_alt`. The signature of `llOf_alt` is `RecTExists → LocalConverseGL → … → BernsteinZelevinskyFiniteness → RecTExists`. Its first input is `RecTExists` itself, from `O`. The output type is the same as the first input type. This page does not unfold the proof of `llOf_alt`.

The leaf citations cover many areas. The table sorts them by the names of their conclusions. The names come from the code. This page does not claim that each Lean statement is the published theorem of the same name. It unfolds three of them below, as samples.

| Area (by name) | Examples of conclusions | Uses `O` |
|---|---|---|
| L-functions and class field theory | `HeckeTateFunctionalEquation`, `PartialZetaFunctionalEquation`, `DeligneRibet`, `GlobalArtinReciprocity`, `ChebotarevDegreeOne`, `Linnik`, `LogDerOne`, `HilbertClassFieldJ`, `RayClassFieldSt` | no |
| Representations of $p$-adic $\mathrm{GL}_n$ | `BernsteinZelevinskyFiniteness`, `SegmentRepresentation`, `LanglandsExhaustionGL`, `LocalConverseGL`, `DepthZeroSupport`, `MoyPrasadJacquetIso`, `GreenRegularCharacters` | no |
| Real groups | `DiscreteSeriesExists`, `DiscreteSeriesClassification`, `HarishChandraFinite`, `CasselmanWallach`, `HolomorphicDiscreteSeries`, `KFiniteVectorsUnitary` | no |
| Automorphic forms | `CuspRapidDecay`, `CuspidalSpectrumGL`, `JacquetShalika`, `FlathTensorProduct`, `CuspidalMultiplicityOne`, `AutomorphicFormsFiniteGL` | no |
| Weil representation and theta | `WeilRepresentationExists`, `StoneVonNeumann`, `WeilSiegelFormulaUnitary`, `SiegelWeilStd`, `EisBL`, `GLHoweDuality`, `HoweDualityReal` | no |
| Galois cohomology and $p$-adic Hodge theory | `PoitouTateNormalised`, `LocalTateDuality`, `GlobalEulerChar`, `BlochKatoLocal`, `FontaineBcris`, `BhattScholzeIntegral`, `DeRhamPotSemistable` | no |
| Arithmetic geometry | `ToroidalCompactification`, `KawamataViehweg`, `NadelVanishingAndNonKltDivisor`, `ArithHilbertSamuel`, `CycleHeights`, `FarguesExact`, `ZarhinStatement`, `ResolutionCharZero` | no |

**Three samples.** The theorem `heckeTateFunctionalEquation'` ([L223](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L223)) is `GlobalTheory.Top.heckeTateFE` and ignores `O`. Its conclusion ([HeckeTateFunctionalEquationCM.lean#L244](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/HeckeTateFunctionalEquationCM.lean#L244)) says: for a totally complex number field $E$, a CM type $\varphi$, a unitary Hecke character $\chi$ of $E$ with infinity type $n \neq 0$ relative to $\varphi$, and conductor exponents $a$, there are functions $\Lambda, \Lambda'$ that are completed L-functions of $\chi$ and $\chi^{-1}$, with

$$
\Lambda(s) = \varepsilon_\infty(n) \, \varepsilon_f(\chi, a, s) \, \Lambda'(1 - s) \quad \text{for all } s \in \mathbb{C}.
$$

This page does not unfold `IsCompletedL`, `archEps` ($\varepsilon_\infty$) or `finEps` ($\varepsilon_f$).

The theorem `deligne_ribet_of_literature` ([L229](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L229)) is `PositivityTheory.PfDR.deligneRibet_holds` and ignores `O`. Its conclusion `DeligneRibet` ([SiegelKlingenDeligneRibet.lean#L45](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/SiegelKlingenDeligneRibet.lean#L45)) is a congruence. For a totally real field $F$, a prime $\ell$, $n \geq 1$, a function $\varepsilon$ on ideals that is a ray function modulo $\ell^n$ with values that satisfy `InZl l`, an ideal $\mathfrak{c}$ prime to $\ell^n$ and $k \geq 1$: if $r$ is the value attached to $\varepsilon$ and $k$, and $r'$ is the value attached to the translate of $\varepsilon$ by $\mathfrak{c}$, then $r - N(\mathfrak{c})^k r'$ satisfies `InZl l`. This page does not unfold `IsRayValue` or `InZl`.

The theorem `logDerivOne` ([L219](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L219)) ignores `O`. Its conclusion `LogDerOne` ([LogDerOne.lean#L12](lean:Development/AbelianVarietyTheory/PublishedTheorems/AutomorphicForms₂/LogDerOne.lean#L12)) says: there is a constant $C$ such that for each primitive Dirichlet character $\chi$ modulo $q > 1$,

$$
\left| \frac{L'(1, \chi)}{L(1, \chi)} - Z(\chi) \right| \leq C \log(3q),
$$

where $Z(\chi)$ is `zsum χ 0 1 (fun ρ => 1 / (1 - ρ))`. This page does not unfold `zsum`.

### Step 4. The nine bundles

Nine theorems of the file build structures. Each has the form `theorem NAME (O) : S where field := ...`, and each field is one of the small theorems applied to `O`. The one exception is the field `car` of `literature_automorphy`, which reads `O` directly.

| Bundle | Line | Structure built | Fields | Uses `O` |
|---|---|---|---|---|
| `literature_local` | [L589](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L589) | `LocalRepresentationTheoryHypothesesAlt` | 19 | yes, through `llc` |
| `literature_automorphy` | [L609](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L609) | `GlobalAutomorphicGaloisHypotheses'` | 16 | yes |
| `literature_cohomology` | [L626](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L626) | `LitCoh` | 12 | no |
| `literature_nonexistence` | [L639](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L639) | `NonEndoscopicHypothesesAlt` | 5 | yes, through the first two bundles |
| `published_results_analytic` | [L645](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L645) | `GeometricGaloisRepCompatibility` | 12 | no |
| `published_results_local` | [L658](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L658) | `NLink.Hypotheses₂` | 7 | no |
| `published_results_eigen` | [L666](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L666) | `UnitaryGroupThirdPlaceHypotheses` | 60 | yes |
| `published_results_first` | [L727](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L727) | `ThetaLocalInputs` | 53 | no |
| `published_results_arithmetic` | [L781](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L781) | `PublishedHodgeBundleTheorems` | 28 | no |

The names of the bundles refer to the literature, but the bundles hold no new mathematics. They are records of earlier results. The bundle `published_results_eigen` contains the next three bundles of the table as its fields `litN`, `toHypothesesX` and `nLink`.

### Step 5. The proof of the main theorem

The proof is one term:

```lean
  every_character_of_theta_integrals_local_matching
    (published_results_eigen O) (published_results_first O)
    (theta_integrals_agree_and_local_matching_of_literature O).1
    (theta_integrals_agree_and_local_matching_of_literature O).2
    (topCovolSlim2_use_alt_alt (resolution_char_zero_of_literature O) ...
       (published_results_arithmetic O) (grothendieck_deformation_of_literature O))
    (local_langlands_gl_recT_exists_of_literature O) hV
```

The target theorem ([SiegelEisensteinSecondTermHypotheses.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L69)) has this signature:

```lean
theorem UpperTheory.Lit.every_character_of_theta_integrals_local_matching
    (P : UnitaryGroupThirdPlaceHypotheses) (F : ThetaLocalInputs)
    (hA : ThetaIntegralsAgree) (hM : LocalMatching) (hX : CovolumeBoundOfX)
    (hL : RecTExists) (hV : VWin) : UpperTheory.EveryCharacter
```

So the main theorem feeds seven inputs. $P$ is the 60-field bundle. $F$ is the 53-field bundle. $hA$ and $hM$ come from the theta branch. $hX$ comes from the volume branch. $hL$ is the local Langlands statement, through `llOf_alt`. $hV$ is the hypothesis $\mathsf{V}$, passed on with no change. Two inputs of the volume branch, `hsUse_outright` and `moriwakiBig_outright`, are theorems of other files. They are not theorems of this file.

The statement $\mathsf{V}$ is ([ExistsPageN.lean#L49](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L49)):

```lean
def UpperTheory.Top.VWin : Prop := ∀ ψ : PChar, VWinAt ψ 401
```

`VWinAt ψ 401` is a statement about all $\varepsilon$ with $0 < \varepsilon < \tfrac{1}{52}$ and windows $[Y, Y^2]$ in a range below $X$, with the constant $401$ in an exponent. The chapter [/proof/vwin/](/proof/vwin/) unfolds it. This file does not use $\mathsf{V}$ for anything except to pass it on.

### Step 6. The theta branch

The theorem `theta_integrals_agree_and_local_matching_of_literature` ([L565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565)) does not use `O`:

```lean
theorem theta_integrals_agree_and_local_matching_of_literature (O : OpenLiteratureStatements) :
    ThetaIntegralsAgree ∧ LocalMatching :=
  PositivityTheory.ThKR.theoremK_head2 (eis_bl_of_literature O) (siegel_weil_std_of_literature O)
```

The theorem `theoremK_head2` ([TheoremKOfMod.lean#L26](lean:Development/WeilBound/ThetaLifts/Reductions/FiniteClosure/TheoremKOfMod.lean#L26)) proves `EisBL → SiegelWeilStd → ThetaIntegralsAgree ∧ LocalMatching`. Both of its inputs are leaf citations: each one is one line that calls a theorem proved in another file. The chapter [Siegel-Weil, the metaplectic representation and cusp forms](/proof/siegel-weil/) follows the proof of `SiegelWeilStd`.

- `EisBL` ([HypothesesE.lean#L46](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesE.lean#L46)) says: for a section $f$ of the right type on a doubled group, the Eisenstein series converges for $\operatorname{Re}(s) > t$ for some $t$, is holomorphic there, and near each point $s_0$ a power $(s - s_0)^k$ times it is a holomorphic family of functions of moderate growth.
- `SiegelWeilStd` ([HypothesesS.lean#L11](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesS.lean#L11)) says: in a set of cases on two spaces (one Hermitian and one skew-Hermitian), the Eisenstein series at the point $s = \tfrac{m - n}{2}$ equals a constant ($1$ or $2$) times the average of a theta sum over a fundamental domain. This has the shape of a Siegel and Weil formula. This page does not unfold `EisValueAt`, `thetaSum` or `IsDbl`.
- `LocalMatching` ([WeilTensorModels.lean#L581](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L581)) says: for each triple that satisfies `IsTriple`, there are data `R`, `Rf` with `IsMatched`.
- `ThetaIntegralsAgree` ([WeilTensorModels.lean#L585](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L585)) is three statements: decay and a constant (`OneConst`, `Coinv`) for each matched triple, and two step relations `StepBeta`, `StepAlpha` that compare the constants for spaces of sizes $b + 2$ and $b$, with a nonzero factor $C$ and a value of a partial L-function.

The chapter [/proof/theta-matching/](/proof/theta-matching/) unfolds these. The dominator part of this branch has 8,520 declarations. Of these, `theoremK_head2_of_mod` holds 6,655 and `siegel_weil_std_of_literature` holds 1,652.

### Step 7. The volume branch

The theorem `topCovolSlim2_use_alt_alt` ([TopCovolSlim2Use.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopCovolSlim2Use.lean#L16)) has 15 hypotheses and the conclusion `CovolumeBoundOfX`. Thirteen hypotheses come from theorems of this file, with names such as `ResolutionCharZero`, `PoincareLelongInv`, `FarguesExact`, `ZarhinStatement`, `NefRR`, `SiegelToroidalIntegral`, `ToroidalForFanKS`, `ArDegree`, `GrothendieckDeformation`, and the 28-field bundle `PublishedHodgeBundleTheorems`. None of them uses `O`. The other two are `hsUse_outright` and `moriwakiBig_outright`.

The proof builds two records `HypothesesX` and `HypothesesH` from the inputs, and then calls `topCovolG_alt_alt` with them and with `deep_slim_use`. In the dominator part (52,186 declarations), `deep_slim_use` holds 30,358 and `topCovolG_alt_alt` holds 12,516.

The conclusion is ([LiftLambdaBound.lean#L60](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LiftLambdaBound.lean#L60)):

```lean
def CovolumeBoundOfX : Prop := Closed FamHyp fun Fm CH =>
  ∃ C0 : ℝ, 0 ≤ C0 ∧ EventuallyAtAllPoints Fm fun _ _ _ p => ∀ C, C0 ≤ C → (p.S false).L3 (p.N C CH)
```

In words: for each family `Fm` in the class that `Closed FamHyp` gives, there is $C_0 \geq 0$ such that, for all large $x$ and all points $p$ of the family at $x$ that satisfy `RowsTAlt`, the property `L3` holds for each constant $C \geq C_0$. This page does not unfold `Closed`, `FamHyp`, `L3` or the point data `p.S`, `p.N`.

## Where it is in the code

Sizes are the sizes of the dominator parts: the declarations that only this node reaches from the top. The main theorem has 503,326.

| Declaration | Module | Size |
|---|---|---|
| `every_character_of_literature_of_vWin` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 503,326 |
| `every_character_of_theta_integrals_local_matching` | ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses | 313,327 |
| `topCovolSlim2_use_alt_alt` | ThirdPlaceSeries/TopCovolSlim2Use | 52,186 |
| `theta_integrals_agree_and_local_matching_of_literature` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 8,520 |
| `GlobalTheory.TorKSField.toroidalForFanKS` | (cited by `toroidal_for_fan_ks_of_literature`) | 5,077 |
| `published_results_arithmetic` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 5,089 |
| `siegel_toroidal_integral_of_literature` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 3,656 |
| `published_results_eigen` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 3,017 |
| `published_results_first` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 2,346 |
| `OpenLiteratureStatements` | ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin | 1 |

The module prefix is `Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/`. The file itself has 814 lines, of which 208 are imports.

## Notes

- **The word "literature".** The file names its theorems after published results. The Lean code does not take any of them as an axiom here. Each leaf theorem cites a proof in another file. Whether each Lean statement matches the published theorem is a separate question. This page checked only the three samples in step 3, and only for their shape. It did not check side conditions.
- **The argument `O` is mostly unused.** 182 of the 195 theorems do not read it. It is in their signatures only. The count comes from a script that reads the proof terms of the file and follows references inside the file. A theorem that cites another file is counted as "no", because the cited theorems do not take `O`.
- **Two fields of one type.** The fields `caraianiLocalGlobalDual` and `galoisRepOfPolarizedPairLit` both have the type `Row`, and the caller fills both with the same proof. The different names do not mean different statements in the Lean code.
- **A loop in a signature.** `llOf_alt` takes `RecTExists` and returns `RecTExists`. With `recTExists` proved elsewhere, this is not a gap. But this page does not know why the code takes this path, and it does not unfold `llOf_alt`.
- **`UnusedSlot72`.** One field of `published_results_eigen`, `siegelEisensteinSimplePole`, has the type `UnusedSlot72`, which is `True`. The name suggests a Siegel Eisenstein simple pole result, but the Lean statement is empty.
- **Not unfolded.** This page does not unfold `CuspSub`, `PropsB.above`, `Good`, `TypeLaw`, `IsCompletedL`, `archEps`, `finEps`, `IsRayValue`, `InZl`, `zsum`, `EisValueAt`, `thetaSum`, `IsTriple`, `IsMatched`, `StepBeta`, `StepAlpha`, `Closed`, `FamHyp`, `L3`, `PChar` or `VWinAt` in full. The later chapters treat some of them.
- **Correctness.** This page tells what the Lean code states. It does not say that the proof is correct. See the [trust report](/trust/).
