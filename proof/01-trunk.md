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
---
## Result

Let $N \geq 1$, let $\chi$ be a [[Dirichlet character|JR4QSEFXWF]] modulo $N$, and let $L(s, \chi)$ be its [[Dirichlet L-function|24GAZHVTGB]]. The [overview](/proof/) calls the statement below `EveryCharacter`:

$$
\operatorname{Re}(s) > \tfrac12 \ \text{and} \ (\chi \neq 1 \ \text{or} \ s \neq 1) \implies L(s, \chi) \neq 0 .
$$

This page is about one theorem of the Lean code:

$$
\texttt{Row0b}(\texttt{IsRecT}) \implies \texttt{EveryCharacter} .
$$

Here $\texttt{Row0b}(\texttt{IsRecT})$ is a statement about $\ell$-adic [[Galois representations|QW17YJ6ZCT]] attached to cuspidal automorphic representations of $\mathrm{GL}_a$ over CM fields. The Lean code proves it in a separate theorem, `galoisLocalGlobalStrong_recParameter`. The two theorems together give `everyCharacter`.

## Idea

The theorem `everyCharacter` is one line. It applies `everyCharacter_of_row` to a proof of `Row0b`. All the work is below these two names.

The theorem `everyCharacter_of_row` takes one hypothesis $h$, a proof of $\texttt{Row0b}(\texttt{IsRecT})$. It uses $h$ two times.

1. It builds a value of the structure `OpenLiteratureStatements`. This structure has three fields. Two fields are $h$ itself. The third field is `RecTExists`, which says that a local Langlands map with a list of properties exists at each place of each number field. The theorem `recTExists` proves it.
2. It gives $h$ to `vwin_of_row`, which proves a statement called `VWin`. `VWin` is a bound on lengths of Tate-Shafarevich type groups of certain abelian number fields. It is stated for every primitive Dirichlet character.

Then `every_character_of_literature_of_vWin` takes the structure and `VWin` and gives `EveryCharacter`. Its proof makes seven inputs from the structure and passes them to `every_character_of_theta_integrals_local_matching`. That theorem calls `nonempty_hyps_definite_side_of_closed_bound`, which shows that a certain type of hypotheses is not empty. Then `every_character_of_green_v_win` turns this, with `VWin`, into the statement that $L(s, \psi)$ has no zero with $\operatorname{Re}(s) > \tfrac12$ for each primitive character $\psi$. A last step passes from primitive characters to all characters.

So the trunk is a chain of five theorems. Each link is short. Each large input is a separate theorem with its own chapter.

## Before you read

- [[Algebraic number field|WXGM3VWEK6]], [[place|BT5V3TSNY6]] of a number field, and the completion at a place, which is a [[local field|RDV3C0PXTH]].
- [[Cuspidal representation|9AZ164C298]] of $\mathrm{GL}_a$, and the [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$.
- [[Galois representation|QW17YJ6ZCT]] and the [[Weil group|TH24PGYAM5]] of a local field.
- [[Cyclotomic field|BHKM3A1GB6]], [[Galois cohomology|EESNTXFWHZ]] and the [[Tate-Shafarevich group|JKPSBMX80N]].
- The [[Generalized Riemann hypothesis|DNKA4WBKDS]] for Dirichlet L-functions.

## Plan

1. `everyCharacter` applies `everyCharacter_of_row` to `galoisLocalGlobalStrong_recParameter`.
2. `everyCharacter_of_row` builds `OpenLiteratureStatements` from $h$ and `recTExists`, and gets `VWin` from `vwin_of_row h`.
3. `every_character_of_literature_of_vWin` turns the structure into seven inputs and calls the next theorem.
4. `every_character_of_theta_integrals_local_matching` makes a nonempty type of hypotheses and calls `every_character_of_green_v_win`.
5. `every_character_of_green_v_win` proves the zero-free statement for primitive characters and then for all characters.

## The steps

### Step 1. The top line

```lean
theorem UpperTheory.FinalTheorems.everyCharacter : UpperTheory.EveryCharacter :=
  UpperTheory.FinalTheorems.everyCharacter_of_row UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter
```

The proof is a function application. The argument `galoisLocalGlobalStrong_recParameter` ([RowSrc.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/RowSrc.lean#L6)) has type `Row0b recT`. Here `recT` is the predicate `fun h rc => IsRecT h rc` ([Development.lean#L18](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/Development.lean#L18)). This is the same predicate that `everyCharacter_of_row` asks for. The chapter [The Galois row](/proof/galois-row/) explains this proof.

### Step 2. The hypothesis Row0b

`Row0b` takes a parameter `Rc` of type `RecNotion`. A `RecNotion` is a predicate on maps `rc` from isomorphism classes of irreducible smooth representations of $\mathrm{GL}_n(E_w)$ (all $n$ together, the type `IrrGL`) to isomorphism classes of Weil-Deligne representations (the type `WD h`). Here $E_w$ is the completion of a number field $E$ at a finite place $w$, and `h : IsPlaceOver A w` says that a valuation subring $A$ of an algebraic closure $\Omega$ of $E$ lies over $w$.

```lean
def Row0b : Prop :=
  ∀ (E Ω : Type) [Field E] [NumberField E] [IsCMField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ) (a : ℕ), 1 ≤ a →
    ∀ (π : CuspSub E a) (χ : HChar (maximalRealSubfield E)), (CG.mk π).IsRegAlg → GlobalTheory.ContraPair.PolarizedPair π χ →
      ∃ (r : G E Ω →* GL (Fin a) (Qbar l)) (wt : ℤ) (HT : (E →+* Qbar l) → Multiset ℤ), PropsB Rc π ι r wt HT
```

In words. Let $E$ be a CM number field with algebraic closure $\Omega$. Let $\ell$ be a prime, let $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, and let $a \geq 1$. Let $\pi$ be an irreducible space of cusp forms on $\mathrm{GL}_a$ over $E$ (the structure `CuspSub`). Let $\chi$ be a Hecke character of the maximal totally real subfield $E^+$. Suppose that the infinity type of $\pi$ is regular algebraic (`IsRegAlg`). Suppose that $(\pi, \chi)$ is a polarized pair: $\chi_v(-1) = (-1)^a$ at each infinite place $v$ of $E^+$, and the dual of $\pi$ is the complex conjugate of $\pi$ up to a twist by $\chi \circ \mathrm{N}_{E/E^+}$ (`PolarizedPair`, [DualIsConjByOne.lean#L53](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/DualIsConjByOne.lean#L53)). Then there are a homomorphism $r : \mathrm{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, an integer $wt$ and a function $HT$ from embeddings $\tau : E \to \overline{\mathbb{Q}}_\ell$ to multisets of integers, with the properties `PropsB` ([WeightsConjBis.lean#L54](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L54)).

The six fields of `PropsB` say this.

- `cont`: $r$ is continuous.
- `ss`: $r$ is semisimple (`IsSSRep`).
- `away`: at each finite place $w$ not above $\ell$, for each map `rc` with `Rc h rc` and each local component $\sigma$ of $\pi$ at $w$, the Weil-Deligne representation of $r$ at $w$ and the value `rc σ` satisfy `AwayB`. `AwayB` says that the two have the same dimension. It also says that they are equal under the conditions `Tor` and `mono0`, and that under further conditions (`IsQpBig`, `TmW`, `Sqf`) their characteristic polynomials agree on elements of degree 0.
- `weights`: for each $\tau$, the multiset $HT(\tau)$, read in $\mathbb{C}$, is $\{ \tfrac{a-1}{2} - z \}$, where $z$ runs over the infinitesimal character of $\pi$ at $\iota \circ \tau$.
- `weights_conj`: $HT(\tau \circ c) = \{ wt - n : n \in HT(\tau) \}$, where $c$ is complex conjugation of $E$.
- `above`: at places above $\ell$, the conditions of `AboveB`. They use the predicates `IsCrysAt`, `IsdRAt`, `IsPstAt` and `IsJumpsAt` on the restriction of $r$ to a decomposition group.

The page does not unfold `Tor`, `mono0`, `TmW`, `Sqf`, `IsCrysAt`, `IsdRAt`, `IsPstAt` or `IsJumpsAt`. The names point to crystalline, de Rham and potentially semistable conditions, but this page has not checked the definitions.

The trunk uses `Row0b` with `Rc = IsRecT`. The code also gives this instance a name:

```lean
def UpperTheory.One.M.Row : Prop := UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc
```

So `One.M.Row` and the type of the hypothesis of `everyCharacter_of_row` are the same proposition ([RecT.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/UnitarySphericalFixing/SatakeParameters/RecT.lean#L6)).

### Step 3. The predicate IsRecT

```lean
def IsRecT (rc : IrrGL (w.adicCompletion E) → WD h) : Prop := ∃ a ha, LawsT (h := h) a ha rc
```

In words, `IsRecT h rc` says that there is a homomorphism $a$ from the Weil group at $w$ to $E_w^\times$, with the property `IsLocalArtin`, such that `rc` satisfies the laws `LawsT` ([IsRecTOfIsRec.lean#L55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55)). The laws are these.

- `dim`: `rc` sends a representation of $\mathrm{GL}_n$ to a Weil-Deligne representation of dimension $n$.
- `one`: on a smooth character $\chi$ of $E_w^\times = \mathrm{GL}_1(E_w)$, `rc` gives the character $\chi \circ a$.
- `langlands`: `rc` is compatible with the Langlands classification by segments (`IsL`, `segSum`).
- `cusp`: a cuspidal class goes to an irreducible Weil-Deligne representation.
- `nu`: the twist by $|\det|^s$ goes to the twist `lpTw s`.
- `absCentral`: the absolute value of the determinant of `rc x` at $\sigma$ equals $|\omega(a(\sigma))|$, where $\omega$ is the central character of $x$.
- `twist`, `central`, `dual`, `inj`, `depth`: compatibility with twists, central characters and contragredients, injectivity, and depth zero goes to tame. These five hold only for classes $x$ with the property `Good`.
- `type`: the law `TypeLaw`, which fixes the inertia polynomial of `rc` on some depth-zero cuspidal types over fields $E'$ with $E_w \cong \mathbb{Q}_g$.

The property `Good x` says that the cuspidal support of $x$ contains only characters, or twists of cuspidal representations with a nonzero vector fixed by the first congruence subgroup, over a field isomorphic to $\mathbb{Q}_g$ ([IsRecTOfIsRec.lean#L20](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L20)). So `IsRecT` is a list of properties of a local Langlands map for $\mathrm{GL}_n$. The list does not ask for a bijection, and it does not mention $\varepsilon$-factors. The same file has a stronger predicate `IsRec` with an $\varepsilon$ family, and the theorem `isRecT_of_isRec` shows that `IsRec` gives `IsRecT` (with the extra input `DepthZeroTypeInertia`).

### Step 4. The structure and RecTExists

```lean
structure UpperTheory.LiteratureTheorems.OpenLiteratureStatements : Prop where
  caraianiLocalGlobalDual : _root_.UpperTheory.One.M.Row
  localLanglandsExists : _root_.UpperTheory.Zero.LLC.RecTExists
  galoisRepOfPolarizedPairLit : _root_.UpperTheory.One.M.Row
```

The structure has three fields. The first and the third have the same type, `One.M.Row`, which is `Row0b IsRecT`. The second has type `RecTExists`:

```lean
def RecTExists : Prop :=
  ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] (A : ValuationSubring Ω)
    (w : HeightOneSpectrum (𝓞 E)) (h : IsPlaceOver A w), ∃ rc, IsRecT h rc
```

In words: for each number field $E$, each algebraic closure $\Omega$, and each finite place $w$ with a valuation subring $A$ over it, there is a map `rc` with `IsRecT h rc`.

The field names refer to the literature (a local-global result with the name Caraiani, the existence of local Langlands, and Galois representations of polarized pairs). The Lean types are the ones above. This page does not claim that a published theorem has exactly these statements. In the Lean code, no field is an axiom. The theorem `everyCharacter_of_row` fills all three fields with proofs:

```lean
theorem UpperTheory.FinalTheorems.everyCharacter_of_row (h : UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc) : UpperTheory.EveryCharacter :=
  UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin ⟨h, UpperTheory.Zero.LLC.recTExists, h⟩ (UpperTheory.One.vwin_of_row h)
```

The anonymous constructor `⟨h, recTExists, h⟩` puts $h$ in the first and third fields.

The theorem `recTExists` ([RecTExists.lean#L20](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/LocalCentralUnits/RecTExists.lean#L20)) proves `RecTExists`. The Lean proof does this. It takes a local Artin map $a$ from `artEx`. It takes a map `r` on cuspidal classes from `cuspEx`. It extends `r` to all classes with `exists_isLExt`, through the Langlands classification. Then it checks each law of `LawsT` with the lemmas `extDim`, `extTw`, `extDual`, `extInj`, `extDepth` and `typeIff`. Its dependency closure has 11,791 declarations, which is small for this proof. This page does not go below it. No later chapter in the list above covers it in detail.

### Step 5. The statement VWin

```lean
def VWin : Prop := ∀ ψ : PChar, VWinAt ψ 401
```

A `PChar` is a primitive Dirichlet character $\psi$ modulo some $N \geq 1$. `VWinAt ψ Ct` ([ExistsPageN.lean#L44](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L44)) unfolds as follows. Let $0 < \varepsilon < \tfrac{1}{52}$. Let $e : \mathbb{R} \to \mathbb{N}$ satisfy $x^{2+8\varepsilon} \leq 2^{e(x)} \leq 2x^{2+8\varepsilon}$ for $x \geq 1$. Then there are $J \geq 1$ and $X_0$ such that for each $X \geq X_0$ and each pair of numbers $(q, d)$ with `WinPair ε (X^(1/J)) q d`, there is $Y$ with $X^{1/J} \leq Y$ and $Y^2 \leq X$, and for each $x \in [Y, Y^2]$ the statement `VAt ψ ε Ct q d (e x) x` holds.

`WinPair ε Y q d` says: $q$ is a prime with $q \equiv 3 \pmod 8$ and $\tfrac12 Y^{\varepsilon/5} < \log q \leq Y^{\varepsilon/5}$; $d$ is a prime with $d \equiv 7 \pmod{16}$ and $\tfrac12 Y^{\varepsilon/5}(\log Y)^2 < \log d \leq Y^{\varepsilon/5}(\log Y)^2$; $q \mid d+1$; and each odd prime $p \leq Y^{\varepsilon/5}$ divides $d + 1$.

`VAt ψ ε Ct q d e x` says: for each number field $E$ with `IsChiField ψ e q d E`, the bound `VVle E ⌊x^Ct⌋ (√(exp(x^ε)))` holds. `IsChiField` says that $E$ embeds in a cyclotomic field $\mathbb{Q}(\zeta_M)$ with $2^{e+2}$, the modulus of $\psi$, $q$ and $d$ all dividing $M$, and that $E$ is the fixed field of the classes $a \bmod M$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$, $\left(\tfrac{a}{q}\right) = 1$ and $\left(\tfrac{a}{d}\right) = 1$.

`VVle E t B` ([ExistsPageN.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L12)) says: for each algebraic closure $\Omega$ and each choice of data `LData E Ω p` for each prime $p$, the lengths $\operatorname{len}\,\text{Ш}(D_p, e')$ are finite for $0 < e' < t$, and for each finite set $S$ of primes

$$
\sum_{\ell \in S} \log \ell \sum_{e'=1}^{t-1} \operatorname{len}_{\mathbb{Z}_\ell} \text{Ш}(D_\ell, e') \leq B .
$$

Here $\text{Ш}(D, e')$ is the submodule `Sha D e'` of $H^1$ of $\mathbb{Q}_\ell/\mathbb{Z}_\ell$ with the action through the $(-e')$-th power of a character `chi` of a Galois group unramified outside the places above $\ell$. The field `hchi` of `LData` ties `chi` to the map `cycZ`. The page does not unfold `Sha1`, `cycZ` or `locFam`.

The theorem `vwin_of_row` proves `VWin` from $h$:

```lean
theorem UpperTheory.One.vwin_of_row (h : UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc) : UpperTheory.Top.VWin :=
  UpperTheory.One.Join.automorphic_window_of_inputs (UpperTheory.LiteratureTheorems.OpenImageCondition.mk h) UpperTheory.BaseChangeIdentities.baseChangeN h
```

It wraps $h$ as an `OpenImageCondition`, adds the theorem `baseChangeN`, and calls `automorphic_window_of_inputs`. The chapter [The window statement](/proof/vwin/) explains it.

### Step 6. From the structure to seven inputs

```lean
theorem UpperTheory.LiteratureTheorems.every_character_of_literature_of_vWin (O : OpenLiteratureStatements) (hV : UpperTheory.Top.VWin) : UpperTheory.EveryCharacter
```

The proof (shortened here) is one application of `every_character_of_theta_integrals_local_matching` to seven arguments:

- `P := published_results_eigen O`, of type `UnitaryGroupThirdPlaceHypotheses`;
- `F := published_results_first O`, of type `ThetaLocalInputs`;
- `hA` and `hM`, the two parts of `theta_integrals_agree_and_local_matching_of_literature O`, of types `ThetaIntegralsAgree` and `LocalMatching`;
- `hX`, of type `CovolumeBoundOfX`, from `topCovolSlim2_use_alt_alt` applied to fifteen theorems;
- `hL := local_langlands_gl_recT_exists_of_literature O`, of type `RecTExists`;
- `hV`, which is `VWin`.

The file has many helper theorems of the form `NAME_of_literature (O : OpenLiteratureStatements) : T`. Most of them do not use `O`. They are theorems of the Lean code with an unused argument. Only four places in the file read a field of `O`: `O.localLanglandsExists` (line 284), `O.galoisRepOfPolarizedPairLit` (line 286), and `O.caraianiLocalGlobalDual` (lines 460 and 618). So all three fields reach the seven inputs. The chapter [The literature structure](/proof/literature/) follows these paths, and explains `topCovolSlim2_use_alt_alt` and `theta_integrals_agree_and_local_matching_of_literature`.

### Step 7. From the seven inputs to EveryCharacter

```lean
theorem every_character_of_theta_integrals_local_matching (P : UnitaryGroupThirdPlaceHypotheses) (F : ThetaLocalInputs) (hA : ThetaIntegralsAgree)
    (hM : LocalMatching) (hX : CovolumeBoundOfX) (hL : RecTExists) (hV : VWin) :
    UpperTheory.EveryCharacter :=
  every_character_of_green_v_win (green_of_regular P.greenRegularCharacters) hV
    (nonempty_hyps_definite_side_of_closed_bound P F hA hM hX hL fun cDep => boundAtTwoThree_linked_of_recT P.nLink (parametersOfDependence hL cDep))
```

(Namespaces are cut here; the full text is at [SiegelEisensteinSecondTermHypotheses.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L69).) The proof makes three things.

1. A proof of `Green` from the field `greenRegularCharacters` of `P`.
2. For each real number `cDep`, a linking condition, from the field `nLink` of `P`.
3. With these, `nonempty_hyps_definite_side_of_closed_bound` gives a value of type `Nonempty (HypsAlt S0.NL DefiniteSideCondition)`.

Then `every_character_of_green_v_win` ([TopPlug.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean#L16)) uses `Green`, `VWin` and the nonempty type. It first proves `ZeroFreeAll`: for each primitive character $\psi$ and each $s$ with $\operatorname{Re}(s) > \tfrac12$, $L(s, \psi) \neq 0$. Here `VWin` enters character by character, as `supplyChi ψ (hV ψ)`. Then `UpperTheory.Top.imprimitive` ([Imprimitive.lean#L5](lean:Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean#L5)) passes from $\psi$ to an arbitrary character $\chi$ through the primitive character that induces $\chi$. The chapter [Theta integrals and local matching](/proof/theta-matching/) explains these two theorems.

The theorem `nonempty_hyps_definite_side_of_closed_bound` ([SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44)) has the same six inputs and the linking condition. Its tactic proof builds a list of intermediate facts (separation of functionals, a rationality statement `RowRat`, a Fourier coefficient fit, two grid constants `CF0` and `CF1`, and open and linked parameter statements). It ends with `hypotheses_nonempty_of_unramified_exponents_alt`. The chapter [The unitary hypotheses](/proof/unitary-hypotheses/) explains it.

## Where it is in the code

All paths are relative to `lean/src`. "Closure" is the number of declarations that the name uses, directly or not (`rh graph -count closure`). "Dominated" is the size from the spine data: the number of declarations that the proof reaches only through this name. The page gives it where the spine data lists it.

| Declaration | Module | Closure | Dominated |
|---|---|---|---|
| `FinalTheorems.everyCharacter` | [MainConclusion.lean#L10](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L10) | 769,254 | |
| `FinalTheorems.everyCharacter_of_row` | [MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7) | | |
| `Gal.Int.galoisLocalGlobalStrong_recParameter` | [RowSrc.lean#L6](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/RowSrc.lean#L6) | 191,805 | 54,225 |
| `GalStar.Row0b` | [WeightsConjBis.lean#L69](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L69) | 707 | |
| `Zero.LLC.IsRecT`, `RecTExists` | [IsRecTOfIsRec.lean#L76](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L76) | 152 (`RecTExists`) | |
| `Zero.LLC.recTExists` | [RecTExists.lean#L20](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/LocalCentralUnits/RecTExists.lean#L20) | 11,791 | |
| `One.vwin_of_row` | [VwinOfRow.lean#L4](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/VwinOfRow.lean#L4) | 166,306 | 56,145 |
| `Top.VWin` | [ExistsPageN.lean#L49](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L49) | 38 | |
| `LiteratureTheorems.OpenLiteratureStatements` | [EveryCharacterOfLiteratureOfVWin.lean#L215](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L215) | | |
| `LiteratureTheorems.every_character_of_literature_of_vWin` | [EveryCharacterOfLiteratureOfVWin.lean#L810](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L810) | 643,054 | |
| `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt` | [TopCovolSlim2Use.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopCovolSlim2Use.lean#L16) | 149,286 | 52,322 |
| `LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature` | [EveryCharacterOfLiteratureOfVWin.lean#L565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565) | 48,967 | 13,076 |
| `Lit.every_character_of_theta_integrals_local_matching` | [SiegelEisensteinSecondTermHypotheses.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L69) | 457,187 | |
| `Lit.nonempty_hyps_definite_side_of_closed_bound` | [SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44) | 444,753 | |
| `Top.every_character_of_green_v_win` | [TopPlug.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean#L16) | 50,815 | 12,087 |

The whole proof of `riemannHypothesis` has 769,260 declarations in its closure. The spine data puts eight names on the trunk, from `riemannHypothesis` down to `nonempty_hyps_definite_side_of_closed_bound`. The largest single branch below the trunk is `hypotheses_nonempty_of_unramified_exponents_alt`, with 89,250 dominated declarations.

## Notes

- `everyCharacter_of_row` has one real hypothesis, $\texttt{Row0b}(\texttt{IsRecT})$. The other ingredient, `RecTExists`, is a theorem. So the name `OpenLiteratureStatements` does not mean that the statements are open in the Lean code. All three fields get proofs.
- The structure has two fields with the same type. The Lean code fills both with the same proof $h$. The two names point to two different sources in the literature, but in Lean they are one proposition.
- This page does not check that `Row0b` matches a published theorem. The names `caraianiLocalGlobalDual` and `galoisRepOfPolarizedPairLit` refer to the literature. The Lean statement is the one in Step 2, with the conditions `AwayB` and `AboveB` in the special form of this code.
- `IsRecT` is weaker than a full local Langlands correspondence in some ways. Several laws hold only on the class `Good`, there is no surjectivity, and there are no $\varepsilon$-factors. The page does not say whether this matters for the proof.
- The page does not unfold `Tor`, `mono0`, `TmW`, `Sqf`, `IsCrysAt`, `IsdRAt`, `IsPstAt`, `IsJumpsAt`, `Sha1`, `cycZ`, `locFam`, `IsLocalArtin`, `TypeLaw` in full, `Green`, `HypsAlt`, `DefiniteSideCondition`, `S0.NL`, `UnitaryGroupThirdPlaceHypotheses`, `ThetaLocalInputs`, `ThetaIntegralsAgree`, `LocalMatching` and `CovolumeBoundOfX`. Later chapters must unfold the ones they use.
- The type that `nonempty_hyps_definite_side_of_closed_bound` gives is written `HypsAlt S0.NL DefiniteSideCondition`. The type that `every_character_of_green_v_win` asks for is written `HypsAlt (fun 𝒞 => Closed 𝒞 fun Fm _ => LinkN Fm) DefiniteSideCondition`. Lean accepts the proof, so the two types are equal by definition. The page has not unfolded `S0.NL` to see this.
- The constant 401 in `VWin` and the bound $\varepsilon < \tfrac{1}{52}$ come from the code. The page does not explain where they come from.
- The closure and dominator counts come from the syntactic graph tool `rh graph` and the spine data. They count declarations, not lines.
