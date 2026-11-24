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
## The record of open statements

The literature layer is one theorem. It says that a record $\mathcal{O}$ of three statements, together with a window statement $\mathrm{VWin}$, implies the [[Generalized Riemann hypothesis|DNKA4WBKDS]] for Dirichlet L-functions. Its proof applies a later theorem with seven inputs, which one Lean file supplies through 195 small theorems with the names of published results. This section defines the statements. Sections 2 to 5 treat the small theorems, the records and the two large branches. Section 6 proves the main theorem and shows how the [trunk](/proof/trunk/) fills the record. On the trunk each field of $\mathcal{O}$ is a proved theorem, so the word "open" is only a label.

**Definition (The statement EC).** $\mathrm{EC}$ is the statement: for each integer $N \geq 1$, each [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$ and each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$ and $(\chi, s) \neq (1, 1)$, the [[Dirichlet L-function|24GAZHVTGB]] satisfies $L(s, \chi) \neq 0$.

Lean: `UpperTheory.EveryCharacter`

It is the statement of the [overview](/proof/) and of [the step EveryCharacter](/step/every-character-def/).

Fix an [[algebraic number field|WXGM3VWEK6]] $E$, an algebraic closure $\Omega$ of $E$, a valuation subring $A$ of $\Omega$ and the finite place $w$ of $E$ below $A$, with completion $E_w$. Let $\mathrm{Irr}(E_w)$ be the set of irreducible admissible representations of $\mathrm{GL}_n(E_w)$ for all $n \geq 1$, and let $\mathrm{WD}$ be the set of Weil-Deligne parameters of the Weil group $W_{E_w}$ that $A$ fixes. The code fixes a class of good representations in $\mathrm{Irr}(E_w)$. We do not unfold it.

**Definition (Local Langlands maps).** Let $a \colon W_{E_w} \to E_w^\times$ be a local Artin map. A map $\mathrm{rc} \colon \mathrm{Irr}(E_w) \to \mathrm{WD}$ satisfies the laws for $a$ if these twelve conditions hold.

1. $\dim \mathrm{rc}(x) = n$ for each representation $x$ of $\mathrm{GL}_n(E_w)$.
2. $\mathrm{rc}(\chi) = \chi \circ a$ for each smooth character $\chi$ of $E_w^\times$.
3. If $x$ is the Langlands quotient of a list $l$ of segments, then $\mathrm{rc}(x)$ is the sum of the parameters of the segments of $l$.
4. $\mathrm{rc}(x)$ is irreducible for each cuspidal $x$.
5. $\mathrm{rc}(x \otimes |\det|^s) = \mathrm{rc}(x) \otimes |\cdot|^s$ for each real $s$.
6. If $x$ has central character $\omega$, then $|\det \mathrm{rc}(x)(\sigma)| = |\omega(a(\sigma))|$ for each $\sigma$.
7. $\mathrm{rc}(x \otimes (\chi \circ \det)) = \mathrm{rc}(x) \otimes \mathrm{rc}(\chi)$ for each good $x$.
8. If $x$ is good with central character $\omega$, then $\det \mathrm{rc}(x)(\sigma) = \omega(a(\sigma))$ for each $\sigma$.
9. $\mathrm{rc}(\pi^\vee) = \mathrm{rc}(\pi)^\vee$ for each good $\pi$.
10. If $y$ is good and $\mathrm{rc}(x) = \mathrm{rc}(y)$, then $x = y$.
11. If $x$ is good and has a nonzero vector fixed by the subgroup $K_1$ of $\mathrm{GL}_n(E_w)$, then $\mathrm{rc}(x)$ is tame.
12. A type law for depth zero types holds.

The map $\mathrm{rc}$ is a local Langlands map if it satisfies the laws for some local Artin map $a$.

Lean: `UpperTheory.Zero.LLC.IsRecT`

**Definition (Existence of local Langlands maps).** $\mathrm{LLC}_\exists$ is the statement: for each number field $E$, each algebraic closure $\Omega$, each valuation subring $A$ of $\Omega$ and each finite place $w$ of $E$ below $A$, a local Langlands map exists.

Lean: `UpperTheory.Zero.LLC.RecTExists`

This is the existence half of the [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$, in a weak form. See [the statement RecTExists](/step/rect-exists-def/).

**Definition (The statement Row).** $\mathrm{Row}$ is the statement below. Let $E$ be a CM field with algebraic closure $\Omega$ and maximal totally real subfield $E^+$. Let $\ell$ be a prime, $\iota \colon \overline{\mathbb{Q}}_\ell \to \mathbb{C}$ a field isomorphism, $a \geq 1$, $\pi$ a cuspidal representation of $\mathrm{GL}_a$ over $E$ and $\chi$ a [[Hecke character|KPYFGB342X]] of $E^+$. Assume that $\pi$ is regular algebraic and that $(\pi, \chi)$ is a polarized pair. Then there are a [[Galois representation|QW17YJ6ZCT]] $r \colon \operatorname{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, an integer $w_0$ and multisets $\mathrm{HT}_\tau$ of integers, one for each embedding $\tau \colon E \to \overline{\mathbb{Q}}_\ell$, with these properties.

1. $r$ is continuous and semisimple.
2. At each finite place $v \nmid \ell$, the Weil-Deligne representation of $r$ at $v$ matches $\pi_v$ through each local Langlands map.
3. $\mathrm{HT}_\tau = \{\tfrac{a-1}{2} - z\}$, where $z$ runs over the infinitesimal character of $\pi$ at $\iota \circ \tau$.
4. $\mathrm{HT}_{\tau \circ c} = w_0 - \mathrm{HT}_\tau$, where $c$ is complex conjugation.
5. At places above $\ell$, $r$ is crystalline with Hodge-Tate jumps $\mathrm{HT}_\tau$ where $\pi$ is spherical, and de Rham and potentially semistable with matching parameters at the other places of a fixed kind.

Lean: `UpperTheory.One.M.Row`

See [the statement Row](/step/row-def/) and [the statement Row0b](/step/row0b-def/). The chapter [the Galois row](/proof/galois-row/) explains it.

**Definition (The record O).** A record $\mathcal{O}$ consists of three proofs: a proof of $\mathrm{Row}$ under the name of a dual local-global compatibility result, a proof of $\mathrm{LLC}_\exists$ under the name of the existence of the local Langlands correspondence, and a second proof of $\mathrm{Row}$ under the name of Galois representations for polarized pairs. Call them fields 1, 2 and 3.

Lean: `UpperTheory.LiteratureTheorems.OpenLiteratureStatements`

See [the step OpenLiteratureStatements](/step/open-literature-statements-def/).

**Definition (VWin).** $\mathrm{VWin}$ is the statement: for each primitive Dirichlet character $\psi$ and each $\varepsilon$ with $0 < \varepsilon < \tfrac{1}{52}$, there are $J \geq 1$ and $X_0$ such that for each $X \geq X_0$ and each admissible window pair at scale $X^{1/J}$ there is $Y$ with $X^{1/J} \leq Y$ and $Y^2 \leq X$, and a bound with the constant $401$ in an exponent holds at each $x \in [Y, Y^2]$.

Lean: `UpperTheory.Top.VWin`

The chapter [VWin](/proof/vwin/) unfolds the bound. See also [the window bound VWin](/step/vwin-def/).

**Remark (Two fields of one type).** Fields 1 and 3 of a record have the same statement $\mathrm{Row}$. Their names refer to different papers. The names do not make the statements different, and the caller fills both fields with one proof.

**Remark (Formalization).** The record is a structure in `Prop` at [EveryCharacterOfLiteratureOfVWin.lean#L215](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L215), with the fields `caraianiLocalGlobalDual`, `localLanglandsExists` and `galoisRepOfPolarizedPairLit`. `Row` is `Row0b` for the notion `IsRecT` ([RecT.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/UnitarySphericalFixing/SatakeParameters/RecT.lean#L6), [WeightsConjBis.lean#L69](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L69)). The laws are the structure `LawsT` ([IsRecTOfIsRec.lean#L55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55)), with the twelve fields `dim`, `one`, `langlands`, `cusp`, `nu`, `absCentral`, `twist`, `central`, `dual`, `inj`, `depth` and `type`. `RecTExists` is at [IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78) and `VWin` is `∀ ψ : PChar, VWinAt ψ 401` at [ExistsPageN.lean#L49](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L49). This chapter does not unfold `CuspSub`, `Good`, `TypeLaw` or `VWinAt`.

## The small theorems of the file

The file that proves the main theorem has 814 lines, of which 208 are imports. It holds 195 theorems, and each of them takes a record $\mathcal{O}$ as an argument. A script followed the references between them and found three groups. 152 theorems are one line that cites a theorem proved in another file. 30 theorems combine earlier theorems of the file. Neither group reads $\mathcal{O}$. 13 theorems read a field of $\mathcal{O}$: four directly and nine through other theorems. So 182 of the 195 theorems use the record in their signature only. This section states three of the one-line citations as samples, and the one lemma that passes a field of $\mathcal{O}$ to the main theorem.

**Theorem (Hecke-Tate functional equation, Lean form).** Let $E$ be a totally complex number field, $\varphi = (\varphi_i)_{i \in I}$ a CM type of $E$ and $\chi$ a unitary Hecke character of $E$ with infinity type $n \colon I \to \mathbb{Z}$ relative to $\varphi$, with $n \neq 0$. Let $a$ be a family of conductor exponents of $\chi$ at the finite places. Then there are functions $\Lambda$ and $\Lambda'$ on $\mathbb{C}$, completed L-functions of $\chi$ with type $n$ and of $\chi^{-1}$ with type $-n$, such that

$$\Lambda(s) = \varepsilon_\infty(n)\, \varepsilon_f(\chi, a, s)\, \Lambda'(1 - s) \quad \text{for all } s \in \mathbb{C}.$$

Lean: `GlobalTheory.Published.HeckeTateFunctionalEquation` (proved by `GlobalTheory.Top.heckeTateFE`)

*Proof.* The Lean code proves the statement in another file, and the small theorem of this file cites that proof. We did not unfold it. The statement has the form of Tate's thesis for a Hecke character with an infinity type, with an archimedean factor $\varepsilon_\infty$ and a finite factor $\varepsilon_f$. $\square$

**Theorem (Deligne-Ribet congruence, Lean form).** Let $F$ be a totally real field, $\ell$ a prime and $n \geq 1$. Let $\varepsilon$ be a ray function modulo $\ell^n$ on the ideals of $F$ whose values on ideals prime to $\ell^n$ are rational and $\ell$-integral. Let $\mathfrak{c}$ be an ideal prime to $\ell^n$ and $k \geq 1$. Let $r$ and $r'$ be the rational ray values of order $k$ attached to $\varepsilon$ and to its translate by $\mathfrak{c}$. Then $r - N(\mathfrak{c})^k\, r'$ is $\ell$-integral.

Lean: `GlobalTheory.Published.DeligneRibet` (proved by `PositivityTheory.PfDR.deligneRibet_holds`)

*Proof.* The Lean code proves the statement in another file, and the file cites that proof. We did not unfold it. By its shape, the statement is the congruence between values of partial zeta functions at negative integers of Deligne and Ribet. $\square$

**Theorem (Logarithmic derivative at 1).** There is a constant $C$ with this property. For each primitive Dirichlet character $\chi$ modulo $q > 1$,

$$\left| \frac{L'(1, \chi)}{L(1, \chi)} - Z(\chi) \right| \leq C \log(3q),$$

where $Z(\chi)$ is a sum of $1/(1 - \rho)$ over the zeros $\rho$ of $L(s, \chi)$, in a form that the code fixes.

Lean: `GlobalTheory.Mem.An.LogDerOne` (proved by `GlobalTheory.LogDerOneProof.logDerOne_holds`)

*Proof.* The Lean code proves the statement in another file, and the file cites that proof. We did not unfold it. Classically, such a bound comes from the Hadamard product of the completed L-function, evaluated at $s = 1$. $\square$

**Lemma (Local Langlands from the record).** Let $\mathcal{O}$ be a record. Then $\mathrm{LLC}_\exists$ holds, and its proof is field 2 of $\mathcal{O}$.

Lean: `UpperTheory.LiteratureTheorems.local_langlands_gl_recT_exists_of_literature`

*Proof.* The Lean proof applies a map with twelve inputs. The first input is field 2 of $\mathcal{O}$. The other eleven are small theorems of the file: the local converse theorem, depth zero induction, a Brauer group statement in degree zero, a statement on Chevalley units, global Artin reciprocity, Langlands exhaustion for $\mathrm{GL}_n$, Langlands multisegments, standard cosocles, the Zelevinsky polynomial ring, the geometric lemma and Bernstein-Zelevinsky finiteness. The map returns its first input and discards the other eleven. So the result is field 2. See [Local Langlands from the literature](/step/local-langlands-gl-rect-exists-of-literature/). $\square$

**Remark (The readers of the record).** Four theorems read a field of $\mathcal{O}$ directly. The first returns field 2. The second derives a Galois statement for polarized pairs from field 2, field 3 and other inputs. The third derives a dual local-global statement from field 1 and other inputs. The fourth is the automorphy record of Section 3, which puts field 1 into one of its slots. Nine theorems read $\mathcal{O}$ through these four, among them the lemma above, the record $\mathcal{P}$ of Section 3 and the main theorem.

**Remark (Areas of the citations).** The one-line citations cover many areas, by the names of their conclusions: L-functions and class field theory, representations of $p$-adic $\mathrm{GL}_n$ and of real groups, automorphic forms, the Weil representation and theta lifts, Galois cohomology and $p$-adic Hodge theory, and arithmetic geometry.

**Remark (An empty statement).** One cited theorem has the name of a simple pole of a Siegel Eisenstein series. Its statement is $\mathrm{True}$, so it says nothing. It fills one field of the record $\mathcal{P}$.

**Remark (The word literature).** The file names its theorems after published results, but the Lean code takes none of them as an axiom. A search of the Lean source finds no axiom declaration and no unfinished proof. Whether each Lean statement is the published theorem is a separate question. This chapter checked only the shape of the three samples. The file `links/literature.yaml` records, for a part of the inputs, how the Lean form differs from the published one.

**Remark (Formalization).** The samples are `heckeTateFunctionalEquation'`, `deligne_ribet_of_literature` and `logDerivOne` at [L223](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L223), [L229](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L229) and [L219](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L219). Their statements are at [HeckeTateFunctionalEquationCM.lean#L244](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/HeckeTateFunctionalEquationCM.lean#L244), [SiegelKlingenDeligneRibet.lean#L45](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/SiegelKlingenDeligneRibet.lean#L45) and [LogDerOne.lean#L12](lean:Development/AbelianVarietyTheory/PublishedTheorems/AutomorphicForms₂/LogDerOne.lean#L12). The direct readers are `local_langlands_recT_exists_of_literature` ([L283](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L283)), `pair_u_of_literature` ([L285](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L285)), `carU_local_global_of_literature` ([L459](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L459)) and `literature_automorphy` (field `car`). The lemma is at [L313](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L313). The twelve-input map is `UpperTheory.One.M.New.llOf_alt` ([LlOf.lean#L18](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LlOf.lean#L18)), with the proof `fun h _ _ _ _ _ _ _ _ _ _ _ => h`. The empty statement is `siegel_eisenstein_simple_pole` ([L505](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L505)), of type `UnusedSlot72`, an `abbrev` for `True`. This chapter does not unfold `IsCompletedL`, `IsRayValue` or `zsum`.

## The records of hypotheses

Nine theorems of the file build records. A record here is a structure whose fields are statements. The theorem fills each field with a small theorem of Section 2 applied to $\mathcal{O}$. The one exception is a slot of the automorphy record, which takes field 1 of $\mathcal{O}$ itself. The records hold no new mathematics. Three of them reach the main theorem, one of them through Section 5.

**Proposition (The three large records).** Let $\mathcal{O}$ be a record. Then these three records hold:

1. the record $\mathcal{P}$ of 60 hypotheses for unitary groups at a third place;
2. the record $\mathcal{F}$ of 53 local inputs for theta lifts;
3. the record $\mathcal{H}$ of 28 published theorems on Hodge bundles.

Lean: `UpperTheory.LiteratureTheorems.published_results_eigen`, `UpperTheory.LiteratureTheorems.published_results_first`, `UpperTheory.LiteratureTheorems.published_results_arithmetic`

*Proof.* Each field of each record is a small theorem of Section 2 applied to $\mathcal{O}$. Three fields of $\mathcal{P}$ are smaller records, and one of them, the non-endoscopic record, holds three more records. $\mathcal{P}$ reads $\mathcal{O}$ through four of its fields. $\mathcal{F}$ and $\mathcal{H}$ read no field of $\mathcal{O}$. See [the record UnitaryGroupThirdPlaceHypotheses](/step/published-results-eigen/), [the record ThetaLocalInputs](/step/published-results-first/) and [the record PublishedHodgeBundleTheorems](/step/published-results-arithmetic/). $\square$

**Remark (What the records contain).** The record $\mathcal{P}$ holds inputs on Galois representations, base change and local-global compatibility for unitary groups, with the doubling method and results on real and $p$-adic groups. The record $\mathcal{F}$ holds inputs on theta lifts, such as Linnik's theorem, Howe duality, Stone-von Neumann and the existence of the [[Weil representation|H3Q2703KKV]]. The record $\mathcal{H}$ holds inputs on toroidal compactifications, vanishing theorems, arithmetic Hilbert-Samuel, heights of cycles and abelian schemes.

**Remark (Formalization).** The nine records are these. The column "reads" tells whether the theorem reads a field of $\mathcal{O}$.

| Theorem | Line | Structure | Fields | Reads |
|---|---|---|---|---|
| `literature_local` | [L589](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L589) | `LocalRepresentationTheoryHypothesesAlt` | 19 | yes, through `llc` |
| `literature_automorphy` | [L609](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L609) | `GlobalAutomorphicGaloisHypotheses'` | 16 | yes, `car` directly |
| `literature_cohomology` | [L626](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L626) | `LitCoh` | 12 | no |
| `literature_nonexistence` | [L639](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L639) | `NonEndoscopicHypothesesAlt` | 5 | yes |
| `published_results_analytic` | [L645](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L645) | `GeometricGaloisRepCompatibility` | 12 | no |
| `published_results_local` | [L658](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L658) | `NLink.Hypotheses₂` | 7 | no |
| `published_results_eigen` | [L666](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L666) | `UnitaryGroupThirdPlaceHypotheses` | 60 | yes |
| `published_results_first` | [L727](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L727) | `ThetaLocalInputs` | 53 | no |
| `published_results_arithmetic` | [L781](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L781) | `PublishedHodgeBundleTheorems` | 28 | no |

The fields of `published_results_eigen` that hold smaller records are `litN`, `toHypothesesX` and `nLink`. Its field `siegelEisensteinSimplePole` is the empty statement of Section 2. The definitions of the two largest structures are [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) and [ThetaLocalInputs](/step/theta-local-inputs-def/).

## The theta branch

The theta branch gives two statements on theta integrals for unitary dual pairs. It derives them from two theorems on Siegel [[Eisenstein series|3NZBZXYWAJ]] on a doubled group: analytic continuation and a Siegel-Weil formula. The code proves both, and the branch does not read $\mathcal{O}$. The chapter [Theta integrals and local matching](/proof/theta-matching/) unfolds the two conclusions, which are the main input of the [[theta correspondence|6WB6TKE70H]] part of the proof.

In this section $E/F$ is an extension of number fields with an involution, and spaces over $E$ are Hermitian or skew-Hermitian with a signature $(r, s)$.

**Theorem (Eisenstein series on the doubled group).** Let $Y$ be a Hermitian or skew-Hermitian space of dimension $n \geq 1$, $\chi$ a Hecke character with a restriction condition, and $f$ a section of height type for a standard compact subgroup. Let $\mathcal{E}(s, x)$ be the Siegel Eisenstein series of $f$. Then:

1. there is $t \in \mathbb{R}$ such that the series converges for $\operatorname{Re}(s) > t$, and its sum is holomorphic in $s$ there;
2. for each $s_0 \in \mathbb{C}$ there are $k \geq 0$, a neighbourhood $U$ of $s_0$ and a family $H(s)$ of functions of moderate growth with $H(s) = (s - s_0)^k\, \mathcal{E}(s, \cdot)$ for $s \in U \setminus \{s_0\}$, such that $\mu(H(s))$ is holomorphic on $U$ for each linear form $\mu$ that is bounded on functions of fixed polynomial growth.

Lean: `GlobalTheory.ThK.Dbl.EisBL` (proved by `PositivityTheory.RgEis.Hd.eisBL`)

*Proof.* The Lean code proves the statement in another file, and the small theorem of this file cites that proof. We did not unfold it. $\square$

**Theorem (Siegel-Weil formula, Lean form).** Let $A$ and $Y$ be spaces of dimensions $m, n \geq 1$, one Hermitian and one skew-Hermitian. Let $A$ have signature $(r, s)$ with $\min(r, s) = 0$. Let $\chi$ satisfy the restriction condition of exponent $m$, and fix doubling data. Let $\mu$ be a Haar measure on the adelic unitary group of $A$ and $D$ a fundamental domain for its rational points. Let $\Phi$ be a Schwartz function whose translates under the compact subgroup span a space of finite dimension, and let $f_\Phi$ be the section that $\Phi$ defines. Put $s_0 = \tfrac{m - n}{2}$. Then

$$\mathcal{E}(s_0, x; f_\Phi) = c \cdot \frac{1}{\mu(D)} \int_D \theta(g, x; \Phi)\, d\mu(g), \qquad c = \begin{cases} 1 & \text{if } n < m, \\ 2 & \text{otherwise.} \end{cases}$$

Lean: `GlobalTheory.ThK.Dbl.SiegelWeilStd` (proved by `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd`)

*Proof.* The Lean code proves the statement in another file, and the file cites that proof. We did not unfold it here. The chapter [Siegel-Weil, the metaplectic representation and cusp forms](/proof/siegel-weil/) follows it. By its shape, the statement is a Siegel-Weil formula for an anisotropic space, in the line of Weil, of Kudla and Rallis, and of Ichino for unitary groups. $\square$

**Definition (Local matching and agreement of theta integrals).** An admissible triple consists of geometric data for a unitary dual pair of sizes $a$ and $a'$, characters, and test data. $\mathrm{LM}$ is the statement: each admissible triple has matched local data. $\mathrm{TIA}$ is the conjunction of three statements. First, for each admissible triple the theta integrals decay, and matched data give one constant and a coinvariance property. Second and third, two step relations compare the constants for signatures $(a, b + 2)$ and $(a, b)$, and for $(b + 2, a'')$ and $(b, a'')$, through a nonzero factor and a value of a partial L-function.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching`, `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree`

See [the statement LocalMatching](/step/local-matching-def/) and [the statement ThetaIntegralsAgree](/step/theta-integrals-agree-def/).

**Theorem (Theta integrals agree and local matching).** The two theorems above imply $\mathrm{TIA}$ and $\mathrm{LM}$. Hence $\mathrm{TIA}$ and $\mathrm{LM}$ hold.

Lean: `PositivityTheory.ThKR.theoremK_head2`

*Proof.* The Lean proof applies a reduction theorem to three inputs: a modularity statement that the code proves, and the two theorems above. We did not unfold the reduction. The two theorems are proved, so the conclusion holds. The theorem of the file that supplies it for $\mathcal{O}$ applies this implication to the two one-line citations and does not read $\mathcal{O}$. See [Theta integrals agree and local matching](/step/theta-integrals-agree-and-local-matching-of-literature/). $\square$

**Remark (Formalization).** The file states the branch as `theta_integrals_agree_and_local_matching_of_literature` ([L565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565)). `theoremK_head2` ([TheoremKOfMod.lean#L26](lean:Development/WeilBound/ThetaLifts/Reductions/FiniteClosure/TheoremKOfMod.lean#L26)) is `theoremK_head2_of_mod PositivityTheory.Sph.modSt2`. The two inputs are at [HypothesesE.lean#L46](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesE.lean#L46) and [HypothesesS.lean#L11](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesS.lean#L11), and the conclusions at [WeilTensorModels.lean#L581](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L581) and [WeilTensorModels.lean#L585](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L585). The dominator part of the branch has 8,520 declarations. Of these, `theoremK_head2_of_mod` holds 6,655 and `siegel_weil_std_of_literature` holds 1,652. The file `links/literature.yaml` calls the conclusion a project-specific statement that it could not identify in the literature, and cites Kudla and Rallis and Ichino only as probable sources of the two inputs. This chapter does not unfold `EisValueAt`, `thetaSum`, `IsDbl`, `IsTriple`, `IsMatched`, `StepBeta` or `StepAlpha`.

## The volume branch

The volume branch gives a covolume bound for families of cusp sections. It has fifteen inputs from algebraic and arithmetic geometry. Thirteen come from small theorems of the file, which do not read $\mathcal{O}$. The other two are theorems of other files with no hypotheses. So the branch is proved, and it does not use the record. Its largest part is the positivity statement of the chapter [The Weil bound and arithmetic positivity](/proof/weil-bound/).

**Definition (Covolume bound).** $\mathrm{Cov}$ is the statement: for each family in the closed class of family hypotheses, there is $C_0 \geq 0$ such that, for all large $x$ and all points $p$ of the family at $x$, the property $\mathrm{L3}$ holds at $p$ for each constant $C \geq C_0$.

Lean: `GlobalTheory.CovTop.CovolumeBoundOfX`

See [the covolume bound](/step/covolume-bound-of-x-def/) and [the predicate Closed](/step/closed-def/).

**Theorem (Covolume bound from fifteen inputs).** Assume these fifteen statements: resolution of singularities in characteristic zero, principalisation in characteristic zero, an integrated Poincaré-Lelong formula, the upper half of arithmetic Hilbert-Samuel, the inequality of Moriwaki and Yuan, Fargues's exactness of the Hodge-Tate sequence, Zarhin's trick, asymptotic Riemann-Roch for nef divisors, a Siegel toroidal integral, toroidal compactification for a fan, seminegativity of the Lie algebra of a semi-abelian scheme, point separation for pairs, a statement on arithmetic degrees, the record $\mathcal{H}$, and Grothendieck's deformation theorem. Then $\mathrm{Cov}$ holds.

Lean: `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt`

*Proof.* The Lean proof builds two records from the geometric inputs, with a Chow height formula derived from $\mathcal{H}$. The first eight inputs give the positivity of mean volume slopes, which the chapter [The Weil bound and arithmetic positivity](/proof/weil-bound/) proves. A covolume theorem then combines the two records, $\mathcal{H}$, Grothendieck's deformation theorem, proved statements on Chow forms and the positivity statement. We did not unfold the covolume theorem. $\square$

**Corollary (The covolume bound holds).** Let $\mathcal{O}$ be a record. Then $\mathrm{Cov}$ holds.

*Proof.* Thirteen of the fifteen inputs are small theorems of the file applied to $\mathcal{O}$. They do not read $\mathcal{O}$, and each cites a proof in another file. The record $\mathcal{H}$ is one of them, by the proposition of Section 3. The upper half of arithmetic Hilbert-Samuel and the inequality of Moriwaki and Yuan are theorems of other files with no hypotheses. Apply the theorem. $\square$

**Remark (Formalization).** The theorem is at [TopCovolSlim2Use.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopCovolSlim2Use.lean#L16) and the conclusion at [LiftLambdaBound.lean#L60](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LiftLambdaBound.lean#L60). The two records are `HypothesesX` and `HypothesesH`, the covolume theorem is `topCovolG_alt_alt`, and the positivity statement comes from `deep_slim_use`. The inputs from other files are `hsUse_outright` and `moriwakiBig_outright`. The dominator part has 52,186 declarations. Of these, `deep_slim_use` holds 30,358 and `topCovolG_alt_alt` holds 12,516. The file `links/literature.yaml` gives a citation and a note for each geometric input. This chapter does not unfold `Closed`, `FamHyp`, `L3`, `p.S` or `p.N`.

## The main theorem and the trunk

The main theorem collects the seven inputs of the earlier sections. Its proof reads fields of the record, so inside the theorem $\mathcal{O}$ is a real hypothesis. This section proves it and shows how the trunk discharges both of its hypotheses with proved theorems.

**Theorem (EC from theta integrals and local matching).** Assume that the records $\mathcal{P}$ and $\mathcal{F}$ hold, and that $\mathrm{TIA}$, $\mathrm{LM}$, $\mathrm{Cov}$, $\mathrm{LLC}_\exists$ and $\mathrm{VWin}$ hold. Then $\mathrm{EC}$ holds.

Lean: `UpperTheory.Lit.every_character_of_theta_integrals_local_matching`

*Proof.* The Lean proof gets a Green statement from $\mathcal{P}$, and hypotheses on the definite side from all inputs but $\mathrm{VWin}$. It then gives $\mathrm{EC}$ from these and $\mathrm{VWin}$. The chapter [Theta integrals and local matching](/proof/theta-matching/) explains it. See [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/), [Green from regular characters](/step/green-of-regular/) and [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/). $\square$

**Theorem (The literature layer).** Let $\mathcal{O}$ be a record and assume $\mathrm{VWin}$. Then $\mathrm{EC}$ holds.

Lean: `UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin`

*Proof.* Apply the previous theorem. The records $\mathcal{P}$ and $\mathcal{F}$ come from $\mathcal{O}$ by the proposition of Section 3. $\mathrm{TIA}$ and $\mathrm{LM}$ come from the theorem of Section 4. $\mathrm{Cov}$ comes from the theorem of Section 5, with thirteen small theorems applied to $\mathcal{O}$ and the two proved theorems of Moriwaki-Yuan and Hilbert-Samuel type. $\mathrm{LLC}_\exists$ comes from the lemma of Section 2, so it is field 2 of $\mathcal{O}$. $\mathrm{VWin}$ is passed on with no change. See [EveryCharacter from the literature and VWin](/step/every-character-of-literature/). $\square$

**Theorem (Local Langlands maps exist).** $\mathrm{LLC}_\exists$ holds.

Lean: `UpperTheory.Zero.LLC.recTExists`

*Proof.* The Lean proof takes a local Artin map and a map on cuspidal representations. It extends the map to all of $\mathrm{Irr}(E_w)$ by the Langlands classification and checks the twelve laws. We did not unfold these steps. $\square$

**Theorem (The Galois row).** $\mathrm{Row}$ holds.

Lean: `UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter`

*Proof.* The Lean proof derives $\mathrm{Row}$ from a proved statement on theta lifts, through Galois representations attached to theta lifts. The chapter [the Galois row](/proof/galois-row/) gives the argument. See [The Galois row holds](/step/galois-row-holds/). $\square$

**Theorem (VWin from Row).** $\mathrm{Row}$ implies $\mathrm{VWin}$.

Lean: `UpperTheory.One.vwin_of_row`

*Proof.* This is the subject of the chapter [VWin](/proof/vwin/), and we do not repeat it. See [VWin from Row0b](/step/vwin-of-row/). $\square$

**Corollary (EC from Row).** $\mathrm{Row}$ implies $\mathrm{EC}$.

Lean: `UpperTheory.FinalTheorems.everyCharacter_of_row`

*Proof.* Let $h$ be a proof of $\mathrm{Row}$. Form the record $\mathcal{O}$ with $h$ in fields 1 and 3 and the theorem on local Langlands maps in field 2. The previous theorem gives $\mathrm{VWin}$ from $h$. The literature layer gives $\mathrm{EC}$. See [EveryCharacter from Row0b](/step/every-character-of-row/). $\square$

**Corollary (EC).** $\mathrm{EC}$ holds.

Lean: `UpperTheory.FinalTheorems.everyCharacter`

*Proof.* Apply the previous corollary to the theorem on the Galois row. $\square$

**Remark (The word open).** On the trunk no field of $\mathcal{O}$ is left as a hypothesis. Field 2 is a proved theorem, and fields 1 and 3 are the one proved statement $\mathrm{Row}$. The statement $\mathrm{VWin}$ also comes from $\mathrm{Row}$. So the record is "open" in name only. Inside the main theorem, by contrast, $\mathcal{O}$ is used: field 2 is the local Langlands input, and fields 1 and 3 reach the record $\mathcal{P}$. The file `links/literature.yaml` marks the local Langlands input as the one input that reads its hypothesis. It also records that the Lean statement is weaker than the published theorem: it states existence only, with no uniqueness and no surjectivity, it does not match L-factors or $\varepsilon$-factors of pairs, and injectivity holds only on good representations. The local compatibility in $\mathrm{Row}$ is stated for the local Langlands maps of this weak form.

**Remark (Formalization).** The main theorem is at [EveryCharacterOfLiteratureOfVWin.lean#L810](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L810) and its target at [SiegelEisensteinSecondTermHypotheses.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L69). The only caller of the main theorem is `everyCharacter_of_row` ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)), which passes `⟨h, UpperTheory.Zero.LLC.recTExists, h⟩` and `vwin_of_row h`. The next line proves `everyCharacter` from `galoisLocalGlobalStrong_recParameter`. Dominator sizes, the declarations that only this node reaches from the top, are: the main theorem 503,326, its target 313,327, `vwin_of_row` 55,805, `galoisLocalGlobalStrong_recParameter` 51,591, `published_results_arithmetic` 5,089, `published_results_eigen` 3,017, `published_results_first` 2,346 and `recTExists` 325.

## Notes and references

Nobody has reviewed the Lean proofs. This chapter tells what the Lean code states. It does not say that the proof is correct. The [trust report](/trust/) says what has been checked.

The file `links/literature.yaml` gives more citations: the book of Harris and Taylor for local Langlands, papers of Chenevier and Harris, Shin, Caraiani, and Barnet-Lamb, Gee, Geraghty and Taylor for $\mathrm{Row}$, and the sources of the geometric inputs of Section 5.

- I. N. Bernstein and A. V. Zelevinsky, *Induced representations of reductive p-adic groups I*, Ann. Sci. École Norm. Sup. 10 (1977), pages 441 to 472.
- P. Deligne and K. A. Ribet, *Values of abelian L-functions at negative integers over totally real fields*, Invent. Math. 59 (1980), pages 227 to 286.
- H. Gillet and C. Soulé, *Arithmetic intersection theory*, Publ. Math. IHÉS 72 (1990), pages 93 to 174.
- G. Henniart, *Caractérisation de la correspondance de Langlands locale par les facteurs $\varepsilon$ de paires*, Invent. Math. 113 (1993), pages 339 to 350.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- H. Hironaka, *Resolution of singularities of an algebraic variety over a field of characteristic zero I, II*, Ann. of Math. 79 (1964), pages 109 to 203 and 205 to 326.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- S. S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- A. Moriwaki, *Continuity of volumes on arithmetic varieties*, J. Algebraic Geom. 18 (2009), pages 407 to 457.
- P. Scholze, *The local Langlands correspondence for $\mathrm{GL}_n$ over p-adic fields*, Invent. Math. 192 (2013), pages 663 to 715.
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965), pages 1 to 87.
- X. Yuan, *Big line bundles over arithmetic varieties*, Invent. Math. 173 (2008), pages 603 to 649.
- A. V. Zelevinsky, *Induced representations of reductive p-adic groups II. On irreducible representations of GL(n)*, Ann. Sci. École Norm. Sup. 13 (1980), pages 165 to 210.
