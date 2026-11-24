---
title: From the row statement to every character
description: The trunk of the Lean proof below everyCharacter. One hypothesis about Galois representations, called Row0b, gives the statement EveryCharacter through a short chain of theorems.
lead: The Lean code proves EveryCharacter from one statement, Row0b. This page says what Row0b, VWin, RecTExists and OpenLiteratureStatements state, how the chain uses them, and which chapter proves each input.
level: L1
status: draft
lean:
  - name: UpperTheory.FinalTheorems.everyCharacter
    file: Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
    line: 10
  - name: UpperTheory.FinalTheorems.everyCharacter_of_row
    file: Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
    line: 7
  - name: UpperTheory.GalStar.Row0b
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean
    line: 69
  - name: UpperTheory.Zero.LLC.IsRecT
    file: Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean
    line: 76
  - name: UpperTheory.One.M.Row
    file: Development/AutomorphicArithmetic/Foundations/UnitarySphericalFixing/SatakeParameters/RecT.lean
    line: 6
  - name: UpperTheory.Zero.LLC.RecTExists
    file: Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean
    line: 78
  - name: UpperTheory.Zero.LLC.recTExists
    file: Development/AutomorphicArithmetic/Foundations/LocalLanglands/LocalCentralUnits/RecTExists.lean
    line: 20
  - name: UpperTheory.LiteratureTheorems.OpenLiteratureStatements
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 215
  - name: UpperTheory.Top.VWin
    file: Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean
    line: 49
  - name: UpperTheory.One.vwin_of_row
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/VwinOfRow.lean
    line: 4
  - name: UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 810
  - name: UpperTheory.Lit.every_character_of_theta_integrals_local_matching
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 69
  - name: UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 44
  - name: UpperTheory.Top.every_character_of_green_v_win
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean
    line: 16
needs:
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
  - tag: DNKA4WBKDS
    text: Generalized Riemann hypothesis
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: BT5V3TSNY6
    text: Place (number field)
  - tag: RDV3C0PXTH
    text: Local field
  - tag: 9AZ164C298
    text: Cuspidal representation
  - tag: QW17YJ6ZCT
    text: Galois representation
  - tag: TH24PGYAM5
    text: Weil group
  - tag: 9E45NBX1G0
    text: Local Langlands conjectures
  - tag: BHKM3A1GB6
    text: Cyclotomic field
  - tag: EESNTXFWHZ
    text: Galois cohomology
  - tag: JKPSBMX80N
    text: Tate-Shafarevich group
next:
  - text: The Galois row
    path: proof/galois-row/
    sub: the proof of Row0b
  - text: The window statement
    path: proof/vwin/
    sub: the proof of VWin from Row0b
  - text: The literature structure
    path: proof/literature/
    sub: the inputs built from OpenLiteratureStatements
  - text: Theta integrals and local matching
    path: proof/theta-matching/
    sub: from the inputs to EveryCharacter
  - text: The unitary hypotheses
    path: proof/unitary-hypotheses/
    sub: the nonempty hypotheses on the definite side
steps: [every-character-of-row]
---
## The statement and the shape of the proof

This chapter proves the [[Generalized Riemann hypothesis|DNKA4WBKDS]] for [[Dirichlet L-functions|24GAZHVTGB]] in the form that the [overview](/proof/) calls EveryCharacter. The proof is a chain of five short theorems. The chain starts from one statement about [[Galois representations|QW17YJ6ZCT]], the Galois row of Section 3. The Lean code proves the row, and it proves the one other input, the existence of local Langlands maps of Section 2. A record of three "open literature statements" sits in the middle of the chain, and the chain fills all three fields with proofs. So the final theorem has no hypothesis. Each large input has its own chapter, linked below. The step [EveryCharacter from Row0b](/step/every-character-of-row/) follows this chapter.

For a [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N \geq 1$, $L(s, \chi)$ is the Dirichlet L-function of Mathlib, continued to all $s \in \mathbb{C}$. For the trivial character the function has a pole at $s = 1$, and Mathlib gives it a value there by convention.

**Definition (EveryCharacter).** EveryCharacter is the statement that for every $N \geq 1$, every Dirichlet character $\chi$ modulo $N$ and every $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$ and ($\chi \neq 1$ or $s \neq 1$), we have $L(s, \chi) \neq 0$.

Lean: `UpperTheory.EveryCharacter`

**Definition (ZeroFreeAll).** ZeroFreeAll is the statement that for every primitive Dirichlet character $\psi$, of any modulus $N \geq 1$, and every $s$ with $\operatorname{Re}(s) > \tfrac12$, we have $L(s, \psi) \neq 0$.

Lean: `Formalism.HC.ZeroFreeAll`

**Remark (The point s = 1).** ZeroFreeAll has no exception at $s = 1$. The trivial character modulo $1$ has L-function $\zeta$, and Mathlib proves that its conventional value at the pole is not zero. EveryCharacter never needs this case.

**Theorem (Generalized Riemann Hypothesis for Dirichlet L-functions).** EveryCharacter holds.

Lean: `UpperTheory.FinalTheorems.everyCharacter`

*Proof.* The theorem on the Galois row in Section 3 proves the row. The theorem "EveryCharacter from the row" in Section 5 turns the row into EveryCharacter. $\square$

**Remark (The chain).** Sections 2 to 4 state the inputs. The links are these.

1. The row gives the literature record and VWin (Section 5).
2. The record gives six inputs, and VWin is the seventh (Section 5).
3. The six inputs and a linking condition give a nonempty type of hypotheses (Section 6).
4. Green's parametrization, VWin and the nonempty type give ZeroFreeAll (Section 6).
5. ZeroFreeAll gives EveryCharacter (Section 6).

**Remark (Formalization).** `everyCharacter` is in [MainConclusion.lean#L10](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L10). Its proof is `everyCharacter_of_row` applied to `galoisLocalGlobalStrong_recParameter` ([RowSrc.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/RowSrc.lean#L6)). That term has type `Row0b recT`, where `recT` is `fun h rc => IsRecT h rc` ([Development.lean#L18](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/Development.lean#L18)). The same file derives `riemannHypothesis` by `riemannHypothesis_of_everyCharacter`. The definitions are in [EveryCharacter.lean#L13](lean:Development/AutomorphicArithmetic/CharacterBoxes/EveryCharacter.lean#L13) and [ExplicitFormulaErrorOfHostConditions.lean#L18](lean:Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean#L18). The closure of `everyCharacter` has 757,477 declarations, and that of `riemannHypothesis` has 757,483. A closure counts the declarations a name uses. A name dominates what the proof reaches only through it. A search of `lean/src` finds no `axiom` declaration and no `sorry`.

## Local Langlands maps

This section states the local input of the trunk: a map from irreducible smooth representations of $\mathrm{GL}_n$ over a local field to Weil-Deligne representations, with a list of laws. The laws are a part of the [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$. The Lean code proves that such a map exists.

Let $E$ be an [[algebraic number field|WXGM3VWEK6]] with algebraic closure $\Omega$. Let $w$ be a finite [[place|BT5V3TSNY6]] of $E$, let $A$ be a valuation subring of $\Omega$ that lies over $w$, and let $E_w$ be the completion, a [[local field|RDV3C0PXTH]]. It fixes a [[Weil group|TH24PGYAM5]] $W_w$. Let $\mathrm{Irr}(E_w)$ be the set of isomorphism classes of irreducible smooth representations of $\mathrm{GL}_n(E_w)$, for all $n$ together. Let $\mathrm{WD}(w)$ be the set of isomorphism classes of Weil-Deligne representations of $W_w$. A local notion is a predicate on maps $\mathrm{rc} \colon \mathrm{Irr}(E_w) \to \mathrm{WD}(w)$ for all $E$, $\Omega$, $w$, $A$.

**Definition (Good classes).** A class $y \in \mathrm{Irr}(E_w)$ of $\mathrm{GL}_m(E_w)$ is a good cuspidal class if $m = 1$, or if $E_w$ is continuously isomorphic to $\mathbb{Q}_g$ for a prime $g$ and $y = y_0 \otimes \chi$ for a smooth character $\chi$ of $E_w^\times$ and a class $y_0$ with a nonzero vector fixed by the first congruence subgroup $K_1$. A class $x$ is good if it has a [[cuspidal|9AZ164C298]] support whose members are all good cuspidal classes.

Lean: `UpperTheory.Zero.LLC.Good`

**Definition (Laws of a local Langlands map).** Let $a \colon W_w \to E_w^\times$ be a homomorphism that is a local Artin map. A map $\mathrm{rc} \colon \mathrm{Irr}(E_w) \to \mathrm{WD}(w)$ satisfies the laws for $a$ if the following hold.

1. (Dimension.) $\mathrm{rc}$ sends a class of $\mathrm{GL}_n(E_w)$ to a class of dimension $n$.
2. (Rank one.) For a smooth character $\chi$ of $E_w^\times = \mathrm{GL}_1(E_w)$, $\mathrm{rc}(\chi) = \chi \circ a$.
3. (Langlands classification.) If $x$ is attached to the list of segments $\Delta_1, \dots, \Delta_k$, where $\Delta_i$ starts at the cuspidal class $\sigma_i$ and has length $l_i$, then
$$\mathrm{rc}(x) = \bigoplus_{i=1}^{k} \big(\mathrm{rc}(\sigma_i) \otimes |\cdot|^{(l_i - 1)/2}\big) \otimes \mathrm{Sp}(l_i).$$
4. (Cuspidal classes.) A cuspidal class goes to an irreducible Weil-Deligne representation.
5. (Unramified twist.) $\mathrm{rc}(x \otimes |\det|^s) = \mathrm{rc}(x) \otimes |\cdot|^s$ for $s \in \mathbb{R}$.
6. (Absolute central law.) If $x$ has central character $\omega$, then $|\det \mathrm{rc}(x)(\sigma)| = |\omega(a(\sigma))|$ for $\sigma \in W_w$.
7. (Laws for good classes.) For a good class $x$: $\mathrm{rc}(x \otimes \chi) = \mathrm{rc}(x) \otimes \mathrm{rc}(\chi)$; $\det \mathrm{rc}(x)(\sigma) = \omega(a(\sigma))$; the contragredient of $x$ goes to the dual of $\mathrm{rc}(x)$; $\mathrm{rc}(x') = \mathrm{rc}(x)$ implies $x' = x$; and if $x$ has a nonzero $K_1$-fixed vector, then $\mathrm{rc}(x)$ is tame.
8. (Type law.) Let $E_w \cong \mathbb{Q}_g$, and let $\sigma$ be inflated from the cuspidal representation of $\mathrm{GL}_n(\mathbb{F}_g)$ attached to a regular character $\theta$ of $\mathbb{F}_{g^n}^\times$. Then $\mathrm{rc}(\sigma)$ satisfies the condition mono0, and on an inertia element its characteristic polynomial is $\prod_{j=0}^{n-1} (X - \theta(z^{g^j}))$. Here $z$ is the residue of the image of the element under a local Artin map at a place $w'$ of norm $g^n$, with $g \notin w'^2$, of a finite extension of $E$.

Lean: `UpperTheory.Zero.LLC.LawsT`

**Definition (IsRecT).** A map $\mathrm{rc}$ satisfies IsRecT if there is a local Artin map $a$ such that $\mathrm{rc}$ satisfies the laws for $a$.

Lean: `UpperTheory.Zero.LLC.IsRecT`

**Definition (RecTExists).** RecTExists is the statement that for every number field $E$, every algebraic closure $\Omega$, every finite place $w$ and every valuation subring $A$ of $\Omega$ over $w$, there is a map $\mathrm{rc}$ with IsRecT.

Lean: `UpperTheory.Zero.LLC.RecTExists`

**Theorem (Existence of local Langlands maps).** RecTExists holds.

Lean: `UpperTheory.Zero.LLC.recTExists`

*Proof.* Fix $E$, $\Omega$, $w$ and $A$. The Lean proof combines three proved inputs. They give a local Artin map $a$, a map $r$ on cuspidal classes with the rank one, cuspidal and type laws, and an extension of $r$ to a map $\mathrm{rc}$ on $\mathrm{Irr}(E_w)$ that follows the Langlands classification and agrees with $r$ on cuspidal classes. The extension uses the exhaustion of $\mathrm{Irr}(E_w)$ by Langlands data and the uniqueness of multisegments. So the rank one, cuspidal and classification laws hold. Proved lemmas on the extension give the dimension, central, twist, dual, injectivity and depth laws. A proved criterion reduces the type law to cuspidal classes, because a representation inflated from a cuspidal one is cuspidal. There $\mathrm{rc} = r$. $\square$

**Proposition (A full correspondence satisfies the laws).** Let $\mathrm{rc}$ be a full local Langlands correspondence: for a local Artin map $a$ and Deligne $\varepsilon$-factors, $\mathrm{rc}$ is bijective, matches the $\varepsilon$-factors of pairs, and satisfies the dimension, rank one, twist, central, dual, classification, determinant, product, support, spherical, Satake and depth laws for all classes. Assume the depth zero type inertia statement. Then $\mathrm{rc}$ satisfies IsRecT.

Lean: `UpperTheory.Zero.LLC.isRecT_of_isRec`

*Proof.* The type law is the depth zero type inertia statement. Injectivity follows from bijectivity, the absolute central law from the central law, and the unramified twist law from the full laws by a proved lemma. The other laws are in the full list. $\square$

**Remark (IsRecT is weaker than local Langlands).** IsRecT does not ask for a bijection, and it does not mention $\varepsilon$-factors or $L$-factors. Several of its laws hold only on good classes. This chapter does not say whether the gap matters for the proof. The correspondence of Harris and Taylor, of Henniart and of Scholze is much stronger. The proposition above is not on the trunk. The trunk uses the existence theorem directly, so it needs neither the full correspondence nor the depth zero type inertia statement.

**Remark (Formalization).** The definitions are in [IsRecTOfIsRec.lean#L20](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L20) to [IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78). `LawsT` is at [line 55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55) and `IsRecT` at [line 76](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L76). The proof of `recTExists` is in [RecTExists.lean#L20](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/LocalCentralUnits/RecTExists.lean#L20). It uses `artEx`, `cuspEx`, `exists_isLExt`, the lemmas `extDim`, `extTw`, `extDual`, `extInj`, `extDepth` and the criterion `typeIff`. Closures: 11,316, and 152 for `RecTExists`. This chapter does not unfold `IsLocalArtin`, the condition `mono0`, or the hypotheses of `TypeLaw` in full. See also the steps [the predicate IsRecT](/step/is-rect-def/), [the statement RecTExists](/step/rect-exists-def/) and [local Langlands existence](/step/rect-exists/).

## The Galois row

This section states the Galois row Row0b and the theorem that proves it. Row0b attaches an $\ell$-adic Galois representation to a regular algebraic polarized [[cuspidal representation|9AZ164C298]] of $\mathrm{GL}_a$ over a CM field. It asks for local-global compatibility with a local notion: away from $\ell$ through Weil-Deligne representations, and above $\ell$ through $p$-adic Hodge theory. The trunk uses the local notion IsRecT.

Let $E$ be a CM field with totally real subfield $E^+$, conjugation $c$ and $G_E = \mathrm{Gal}(\Omega/E)$. Let $\ell$ be a prime, $\iota \colon \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ an isomorphism, and $a \geq 1$. Let $\pi$ be an irreducible space of cusp forms on $\mathrm{GL}_a$ over $E$, and let $\chi$ be a Hecke character of $E^+$.

**Definition (Polarized pair).** The pair $(\pi, \chi)$ is polarized if $\chi_v(-1) = (-1)^a$ at each infinite place $v$ of $E^+$, and there is a nondegenerate pairing between $\pi \otimes (\chi \circ \mathrm{N}_{E/E^+})^{-1}$ and $\pi$ that is invariant when the group acts on the second factor through complex conjugation. So $\pi^c \cong \pi^\vee \otimes (\chi \circ \mathrm{N}_{E/E^+})$.

Lean: `GlobalTheory.ContraPair.PolarizedPair`

**Definition (Compatibility away from ℓ).** Let $x, y \in \mathrm{WD}(w)$. The pair $(x, y)$ is compatible if the following hold.

1. $x$ and $y$ have the same dimension.
2. If $y$ satisfies the conditions Tor and mono0, then $x = y$.
3. Suppose that $E_w$ is continuously isomorphic to $\mathbb{Q}_g$ with $\dim y = 1$ or $16 (\dim y)^2 < g$, and that $y$ satisfies the conditions TmW, Sqf and mono0. Then $x$ satisfies mono0, and the characteristic polynomials of $x$ and $y$ agree at every $\sigma \in W_w$ of degree $0$.

Lean: `UpperTheory.GalStar.AwayB`

**Definition (Properties of the Galois representation).** Let $R$ be a local notion. Let $r \colon G_E \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ be a homomorphism, $\mathrm{wt} \in \mathbb{Z}$, and $\mathrm{HT}$ a map from embeddings $\tau \colon E \to \overline{\mathbb{Q}}_\ell$ to multisets of integers. The triple $(r, \mathrm{wt}, \mathrm{HT})$ has the properties for $R$, $\pi$ and $\iota$ if the following hold.

1. $r$ is continuous.
2. $r$ is semisimple.
3. Let $w$ be a finite place with $\ell \notin w$, $A$ a valuation subring over $w$, $\mathrm{rc}$ a map with $R(\mathrm{rc})$, and $\sigma$ a local component of $\pi$ at $w$. Then the Weil-Deligne representation of $r$ at $w$ and $\mathrm{rc}$ of the normalized class of $\sigma$ are compatible.
4. For each $\tau$, the multiset $\mathrm{HT}(\tau)$, read in $\mathbb{C}$, is $\{ \tfrac{a-1}{2} - z \}$, where $z$ runs over the infinitesimal character of $\pi$ at $\iota \circ \tau$.
5. $\mathrm{HT}(\tau \circ c) = \{ \mathrm{wt} - n : n \in \mathrm{HT}(\tau) \}$.
6. At each place $w$ above $\ell$, with the decomposition group identified with the Galois group of a finite extension of $\mathbb{Q}_\ell$: if a local component $\sigma$ of $\pi$ at $w$ is spherical, then $r$ is crystalline and de Rham at $w$ with Hodge-Tate jumps $\mathrm{HT}(\tau)$. If $R(\mathrm{rc})$ and the value $y$ of $\mathrm{rc}$ at $\sigma$ satisfies mono0 and either Tor or the conditions of item 3 of the last definition, then $r$ is de Rham and potentially semistable at $w$ with these jumps, and its Weil-Deligne representation at $w$ is compatible with $y$.

Lean: `UpperTheory.GalStar.PropsB`

**Definition (Row0b).** For a local notion $R$, Row0b$(R)$ is the statement that for every CM field $E$, every $\ell$, $\iota$ and $a \geq 1$, every $\pi$ and every $\chi$ such that $\pi$ is regular algebraic and $(\pi, \chi)$ is polarized, there is a triple $(r, \mathrm{wt}, \mathrm{HT})$ with the properties for $R$, $\pi$ and $\iota$.

Lean: `UpperTheory.GalStar.Row0b`

**Definition (The row).** The row is the statement Row0b(IsRecT).

Lean: `UpperTheory.One.M.Row`

**Theorem (The Galois row).** The row holds.

Lean: `UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter`

*Proof.* The Lean proof applies a theorem on the Galois representations of theta lifts to a proved theorem on theta lifts. The chapter [The Galois row](/proof/galois-row/) and the step [the Galois row holds](/step/galois-row-holds/) explain it. $\square$

**Remark (Comparison with the literature).** The row has the shape of the theorems of Chenevier and Harris and of Shin on Galois representations of polarized pairs, with the local-global compatibility of Caraiani away from $\ell$ and of Barnet-Lamb, Gee, Geraghty and Taylor above $\ell$. This chapter does not check that the row matches a published theorem. The compatibility away from $\ell$ is stated for the maps of IsRecT, so it depends on the Lean form of local Langlands.

**Remark (Formalization).** `Row0b` is in [WeightsConjBis.lean#L69](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L69). `PropsB` is at [line 54](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L54), with `AwayB` and `AboveB` above it. `PolarizedPair` is in [DualIsConjByOne.lean#L53](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/DualIsConjByOne.lean#L53). `One.M.Row` is in [RecT.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/UnitarySphericalFixing/SatakeParameters/RecT.lean#L6), and it is the type of the hypothesis of `everyCharacter_of_row`. The proof is `galoisRepresentations_of_thetaLift UpperTheory.TP.K.tLiftK`. The closure of `Row0b` has 707 declarations. The closure of `galoisLocalGlobalStrong_recParameter` has 181,653, and it dominates 51,591. Item 3 uses `rc (algNorm σ)`. The local datum of item 6 is a `LocBridge`. This chapter does not unfold `Tor`, `mono0`, `TmW`, `Sqf`, `IsCrysAt`, `IsdRAt`, `IsPstAt` or `IsJumpsAt`. The names point to crystalline, de Rham and potentially semistable conditions, but we did not check the definitions. See also the steps [the statement Row0b](/step/row0b-def/) and [the statement Row](/step/row-def/).

## The window bound

The second consequence of the row is VWin. For each primitive character it bounds a sum of lengths of [[Tate-Shafarevich groups|JKPSBMX80N]], weighted by $\log \ell$, over certain abelian fields inside [[cyclotomic fields|BHKM3A1GB6]].

**Definition (Window pairs).** Let $\varepsilon > 0$ and $Y > 0$. A pair of numbers $(q, d)$ is a window pair for $(\varepsilon, Y)$ if:

1. $q$ is prime, $q \equiv 3 \pmod 8$ and $\tfrac12 Y^{\varepsilon/5} < \log q \leq Y^{\varepsilon/5}$;
2. $d$ is prime, $d \equiv 7 \pmod{16}$ and $\tfrac12 Y^{\varepsilon/5} (\log Y)^2 < \log d \leq Y^{\varepsilon/5} (\log Y)^2$;
3. $q \mid d + 1$, and every odd prime $p \leq Y^{\varepsilon/5}$ divides $d + 1$.

Lean: `UpperTheory.Top.WinPair`

**Definition (Fields of a character).** Let $\psi$ be a primitive character modulo $N_\psi$, and let $e$, $q$, $d$ be natural numbers. A number field $E$ is a field of $(\psi, e, q, d)$ if there are $M$ with $2^{e+2}$, $N_\psi$, $q$ and $d$ all dividing $M$, an embedding $j \colon E \to \mathbb{Q}(\zeta_M)$ and a primitive $M$-th root of unity $\zeta$ with this property: the automorphism $\zeta \mapsto \zeta^a$ fixes $j(E)$ if and only if $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$, $\left(\tfrac{a}{q}\right) = 1$ and $\left(\tfrac{a}{d}\right) = 1$.

Lean: `UpperTheory.Top.IsChiField`

**Definition (Tate-Shafarevich lengths).** Let $p$ be a prime. A $p$-datum for $E$ and $\Omega$ consists of the set $S$ of places of $E$ above $p$, a valuation subring of $\Omega$ over each of them, and a character $\chi_D \colon G_{E,S} \to \mathbb{Z}_p^\times$ of the Galois group unramified outside $S$ whose composition with $G_E \to G_{E,S}$ is the cyclotomic character. For $e \in \mathbb{Z}$, $\text{Ш}(D, e)$ is the submodule of $H^1(G_{E,S}, \mathbb{Q}_p/\mathbb{Z}_p(\chi_D^{-e}))$ cut out by local conditions at $S$ ([[Galois cohomology|EESNTXFWHZ]]). Its length is $\operatorname{len}_{\mathbb{Z}_p} \text{Ш}(D, e) \in \mathbb{N} \cup \{\infty\}$.

Lean: `Formalism.GaloisCohomology.shaLen`

**Definition (Bounded lengths).** Let $t \in \mathbb{N}$ and $B \in \mathbb{R}$. The field $E$ has lengths bounded by $(t, B)$ if for every algebraic closure $\Omega$ and every choice of a $p$-datum $D_p$ for each prime $p$:

1. $\operatorname{len} \text{Ш}(D_p, e)$ is finite for every $p$ and $0 < e < t$;
2. for every finite set $S$ of primes,
$$\sum_{\ell \in S} \log \ell \sum_{e=1}^{t-1} \operatorname{len}_{\mathbb{Z}_\ell} \text{Ш}(D_\ell, e) \leq B .$$

Lean: `UpperTheory.Top.VVle`

**Definition (VWin).** Let $\psi$ be a primitive character and $C \in \mathbb{R}$. The window bound for $\psi$ with constant $C$ says the following. Let $0 < \varepsilon < \tfrac{1}{52}$, and let $e \colon \mathbb{R} \to \mathbb{N}$ satisfy $x^{2+8\varepsilon} \leq 2^{e(x)} \leq 2 x^{2+8\varepsilon}$ for $x \geq 1$. Then there are $J \geq 1$ and $X_0$ such that for every $X \geq X_0$ and every window pair $(q, d)$ for $(\varepsilon, X^{1/J})$, there is $Y$ with $X^{1/J} \leq Y$ and $Y^2 \leq X$ with this property: for every $x \in [Y, Y^2]$, every field of $(\psi, e(x), q, d)$ has lengths bounded by $\big(\lfloor x^C \rfloor, \sqrt{\exp(x^\varepsilon)}\big)$. VWin is the statement that the window bound holds for every primitive $\psi$ with $C = 401$.

Lean: `UpperTheory.Top.VWin`

**Theorem (VWin from the row).** If the row holds, then VWin holds.

Lean: `UpperTheory.One.vwin_of_row`

*Proof.* The Lean proof wraps the row as a record with one field, the open image condition. It adds a proved base change theorem, and it applies the automorphic window theorem to the record, the base change theorem and the row. The chapter [The window statement](/proof/vwin/) and the step [VWin from Row0b](/step/vwin-of-row/) explain it. $\square$

**Remark (The constants).** The constant $401$ and the bound $\varepsilon < \tfrac{1}{52}$ come from the code. This chapter does not explain where they come from. The record "open image condition" states the existence of Galois representations, not an open image property, so its name is misleading.

**Remark (Formalization).** The definitions are in [ExistsPageN.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L12) to [ExistsPageN.lean#L49](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L49). The window bound for one character is `VWinAt ψ Ct` ([ExistsPageN.lean#L44](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L44)), with `VAt` and `PageN` inside. The data $D_p$ are `LData E Ω p`, with the field `hchi` that ties `chi` to `cycZ`. This chapter does not unfold `Sha1`, `cycZ` or `locFam`. The proof of `vwin_of_row` ([VwinOfRow.lean#L4](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/VwinOfRow.lean#L4)) is `automorphic_window_of_inputs (OpenImageCondition.mk h) baseChangeN h`. Its closure has 164,523 declarations and it dominates 55,805. `VWin` has closure 38. See the step [the window bound VWin](/step/vwin-def/).

## The literature record

The record of this section collects three statements under names from the literature. The trunk builds it from the row and the existence theorem of Section 2, so all three fields have proofs. The record feeds many inputs that cite published theorems. Most of them ignore the record and return a theorem that the code proves.

**Definition (The literature record).** A proof of the literature record is a triple of proofs: of the row (the field named after the local-global compatibility of Caraiani), of RecTExists (the field named after the existence of local Langlands), and of the row again (the field named after Galois representations of polarized pairs).

Lean: `UpperTheory.LiteratureTheorems.OpenLiteratureStatements`

**Theorem (EveryCharacter from the row).** If the row holds, then EveryCharacter holds.

Lean: `UpperTheory.FinalTheorems.everyCharacter_of_row`

*Proof.* Let $h$ be a proof of the row. The triple $(h, \text{the existence theorem of Section 2}, h)$ is a proof of the literature record, and no field is an axiom. The theorem "VWin from the row" gives VWin from $h$. The next theorem gives EveryCharacter from the record and VWin. So $h$ is used three times: twice in the record and once for VWin. $\square$

**Theorem (EveryCharacter from the record and VWin).** If the literature record and VWin hold, then EveryCharacter holds.

Lean: `UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin`

*Proof.* The proof makes six inputs from the record:

1. the hypotheses on the unitary group at the third place;
2. the local inputs of the theta correspondence;
3. the agreement of theta integrals and
4. local matching, both from one theorem with an Eisenstein series input and a Siegel-Weil input;
5. the covolume bound, from a theorem with fifteen proved arguments, among them resolution of singularities, principalisation, the Poincaré-Lelong formula, the upper half of arithmetic Hilbert-Samuel, the inequality of Moriwaki and Yuan, Hodge-Tate exactness, Zarhin's trick and asymptotic Riemann-Roch;
6. RecTExists.

With VWin as the seventh input, the theorem "EveryCharacter from theta integrals and local matching" of Section 6 gives EveryCharacter. $\square$

**Remark (Literature names).** The field names point to sources in the literature, but in the code the first and the third field are the same proposition, and the trunk fills both with the same proof. This chapter does not claim that a published theorem has exactly these statements. The [literature chapter](/proof/literature/) compares each Lean form with the published theorem.

**Remark (Formalization).** The record is in [EveryCharacterOfLiteratureOfVWin.lean#L215](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L215), with fields `caraianiLocalGlobalDual`, `localLanglandsExists` and `galoisRepOfPolarizedPairLit`. `everyCharacter_of_row` ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)) builds it as `⟨h, recTExists, h⟩`. The theorem `every_character_of_literature_of_vWin` is at [line 810](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L810), and its closure has 634,302 declarations. The six inputs are `published_results_eigen O`, `published_results_first O`, the two parts of `theta_integrals_agree_and_local_matching_of_literature O` ([line 565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565); closure 38,926, dominated 8,520), `topCovolSlim2_use_alt_alt` ([TopCovolSlim2Use.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopCovolSlim2Use.lean#L16)) applied to fifteen terms (closure 147,778, dominated 52,186), and `local_langlands_gl_recT_exists_of_literature O`. Most `_of_literature` terms ignore `O`. Four places read a field: `O.localLanglandsExists` (line 284, through `local_langlands_recT_exists_of_literature`), `O.galoisRepOfPolarizedPairLit` (line 286, in `pair_u_of_literature`), and `O.caraianiLocalGlobalDual` (line 460 in `carU_local_global_of_literature`, and line 618 in `literature_automorphy`). The sixth input `llOf_alt` returns `localLanglandsExists`. See also the steps [OpenLiteratureStatements](/step/open-literature-statements-def/) and [EveryCharacter from the literature and VWin](/step/every-character-of-literature/).

## From the seven inputs to all characters

The seven inputs give Green's parametrization of cuspidal characters of finite general linear groups, a linking condition, and a nonempty type of hypotheses on the definite side. With VWin these give ZeroFreeAll. A short classical argument passes from primitive to all characters. The chapters [Theta integrals and local matching](/proof/theta-matching/) and [The unitary hypotheses](/proof/unitary-hypotheses/) explain the inputs.

**Definition (Green's parametrization).** Green is the statement that for every prime $g$, every label datum $L$ and every $d \geq 1$ there is a map $\tau$ from polynomials over $\mathbb{F}_g$ to class functions on $\mathrm{GL}_d(\mathbb{F}_g)$ with these properties. For every prime label $P$ of degree $d$, $\tau(P)$ is a cuspidal character with label $P$ for $L$, and $\tau(P)(1) = \prod_{i=1}^{d-1} (g^i - 1)$. The map $\tau$ is injective on prime labels. Every cuspidal character of $\mathrm{GL}_d(\mathbb{F}_g)$ is $\tau(P)$ for a prime label $P$.

Lean: `GlobalTheory.GLq.Green`

**Theorem (Nonempty hypotheses on the definite side).** Assume the six inputs of Section 5: the unitary hypotheses at the third place, the theta local inputs, the agreement of theta integrals, local matching, the covolume bound and RecTExists. Assume also that for every $c \in \mathbb{R}$ the linking condition holds at the parameters of dependence $c$. Then the type of hypotheses on the definite side, for closed families with the link condition, is nonempty.

Lean: `UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound`

*Proof.* The Lean proof builds a list of facts. The functionals separate, by the local inputs, a proved unramified Howe duality and the convergence of the Siegel-Weil formula. A rationality statement follows from the assembly of test vectors, and a fit of constant functions follows too. Two grid constants $C_0$ and $C_1$ come from the evaluation grid. Put $C = \max(C_0, C_1)$. At the parameters of dependence $C$ the proof gets the open parameter statements, the open and linked statements, and linked bundles. A theorem on unramified exponents turns these facts and the linking condition at $C$ into an element of the type. We did not unfold these steps. The step [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/) gives more. $\square$

**Theorem (EveryCharacter from theta integrals and local matching).** Assume the six inputs and VWin. Then EveryCharacter holds.

Lean: `UpperTheory.Lit.every_character_of_theta_integrals_local_matching`

*Proof.* The field on regular characters of the unitary hypotheses gives Green's parametrization; see the step [Green from regular characters](/step/green-of-regular/). For every $c \in \mathbb{R}$, the field on links of the unitary hypotheses gives the linking condition at the parameters of dependence $c$. The last theorem then gives the nonempty type. The next theorem, applied to Green's parametrization, VWin and the nonempty type, gives EveryCharacter. $\square$

**Theorem (Zero-free half-plane).** Assume Green's parametrization and VWin, and assume that the type of hypotheses on the definite side, for closed families with the link condition, is nonempty. Then ZeroFreeAll holds, and so EveryCharacter holds.

Lean: `UpperTheory.Top.every_character_of_green_v_win`

*Proof.* Choose an element of the type. Green's parametrization gives a shape statement for closed linked families, and with the element it gives a goal statement. A zero-free criterion with parameter $\lambda = \tfrac32$ turns the goal statement into ZeroFreeAll. VWin enters one character at a time: the window bound for $\psi$ supplies the data that the criterion needs at $\psi$. The lemma below gives EveryCharacter. The steps [ZeroFreeAll from Green, VWin and HypsAlt](/step/zero-free-all-of-green-v-win/) and [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/) give the details. $\square$

**Lemma (From primitive to all characters).** ZeroFreeAll implies EveryCharacter.

Lean: `UpperTheory.Top.imprimitive`

*Proof.* Let $\chi$ be a character modulo $N$, and let $s$ satisfy $\operatorname{Re}(s) > \tfrac12$ and ($\chi \neq 1$ or $s \neq 1$). Let $f \mid N$ be the conductor of $\chi$, and let $\chi^*$ be the primitive character modulo $f$ that induces $\chi$. If $\chi \neq 1$, then $\chi^* \neq 1$, because $\chi$ is $\chi^*$ changed to level $N$ and the trivial character changes to the trivial character. So $\chi^* \neq 1$ or $s \neq 1$, and in this case

$$L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \big(1 - \chi^*(p)\, p^{-s}\big).$$

ZeroFreeAll gives $L(s, \chi^*) \neq 0$. For each prime $p \mid N$ we have $|\chi^*(p)| \leq 1$ and $|p^{-s}| = p^{-\operatorname{Re}(s)} < 1$. So $|\chi^*(p)\, p^{-s}| < 1$, and the factor $1 - \chi^*(p)\, p^{-s}$ is not zero. So $L(s, \chi) \neq 0$. The argument for the factors needs only $\operatorname{Re}(s) > 0$. $\square$

**Remark (Two forms of the hypothesis type).** The nonempty theorem gives the type for the class predicate NL. The zero-free theorem asks for it for the predicate "closed with the link condition". NL is defined as this predicate, so the types agree by unfolding one definition.

**Remark (Formalization).** The two theorems on theta integrals and on the nonempty type are in [SiegelEisensteinSecondTermHypotheses.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L69) and [SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44). Their closures have 452,823 and 440,406 declarations. The linking condition is `boundAtTwoThree_linked_of_recT P.nLink`. The nonempty type is `Nonempty (HypsAlt S0.NL DefiniteSideCondition)`, and `GlobalTheory.Fc.S0.NL 𝒞` is defined as `Closed 𝒞 fun Fm _ => LinkN Fm` ([GeometricWeakTiesOfStrong.lean#L36](lean:Development/AbelianVarietyTheory/Definitions/GlobalTwisting/GeometricWeakTiesOfStrong.lean#L36)). The largest branch below the trunk is `hypotheses_nonempty_of_unramified_exponents_alt`, which dominates 88,131. `every_character_of_green_v_win` ([TopPlug.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean#L16)) calls `zero_free_all_of_green_v_win`. Its closure has 50,160 declarations, and it dominates 12,070. The lemma is in [Imprimitive.lean#L5](lean:Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean#L5) and uses Mathlib's `LFunction_changeLevel`. The spine data puts eight names on the trunk, from `riemannHypothesis` down to `nonempty_hyps_definite_side_of_closed_bound`. This chapter does not unfold `Green`'s labels, `HypsAlt`, `DefiniteSideCondition`, `LinkN`, `UnitaryGroupThirdPlaceHypotheses`, `ThetaLocalInputs`, `ThetaIntegralsAgree`, `LocalMatching` or `CovolumeBoundOfX`. Later chapters must unfold the ones they use. See also the steps [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) and [from primitive to all Dirichlet characters](/step/imprimitive/).

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked. The closure and dominator counts come from the syntactic graph tool `rh graph` and the spine data. They count declarations, not lines.

Local Langlands for $\mathrm{GL}_n$ is due to Harris and Taylor, Henniart and Scholze. The other sources below are those that the field names and the definitions point to.

- I. N. Bernstein and A. V. Zelevinsky, *Induced representations of reductive p-adic groups. I*, Ann. Sci. ENS 10 (1977), pages 441 to 472.
- A. Caraiani, *Local-global compatibility and the action of monodromy on nearby cycles*, Duke Math. J. 161 (2012), pages 2311 to 2413.
- G. Chenevier and M. Harris, *Construction of automorphic Galois representations II*, Camb. J. Math. 1 (2013), pages 53 to 73.
- L. Clozel, M. Harris and R. Taylor, *Automorphy for some l-adic lifts of automorphic mod l Galois representations*, Publ. Math. IHÉS 108 (2008), pages 1 to 181.
- J. A. Green, *The characters of the finite general linear groups*, Trans. Amer. Math. Soc. 80 (1955), pages 402 to 447.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- P. Scholze, *The local Langlands correspondence for GL_n over p-adic fields*, Invent. Math. 192 (2013), pages 663 to 715.
- S. W. Shin, *Galois representations arising from some compact Shimura varieties*, Ann. of Math. 173 (2011), pages 1645 to 1741.
- A. V. Zelevinsky, *Induced representations of reductive p-adic groups II. On irreducible representations of GL(n)*, Ann. Sci. École Norm. Sup. (4) 13 (1980), pages 165 to 210.
