---
title: The unitary hypotheses node
description: The last node of the trunk, nonempty_hyps_definite_side_of_closed_bound, in words. It builds one record of type HypsAlt from a list of literature hypotheses about unitary groups, and it has three large branches.
lead: The Lean code ends the trunk with one existence statement. A record of forty-six fields, called HypsAlt, has an element. This page says what that record is, what the words "definite side" and "closed bound" mean in the code, and what the three large branches prove.
level: L1
status: draft
lean:
  - name: UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 44
  - name: GlobalTheory.Fc.HypsAlt
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/Hyps.lean
    line: 22
  - name: GlobalTheory.Fc.DefiniteSideCondition
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/DefiniteSideCondition.lean
    line: 25
  - name: Formalism.MainNotions.Closed
    file: Formalism/SharpRestriction/ParamsHeightRankConstant.lean
    line: 159
  - name: GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/BernsteinUnitaryProductIrreducible.lean
    line: 22
  - name: GlobalTheory.Fc.S0.StageU.hypotheses_nonempty_of_unramified_exponents_alt
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/HypothesesNonemptyOfUnramifiedExponents.lean
    line: 41
  - name: GlobalTheory.Fc.S0.ontoX_and_lamLow_of_unitaryGroupHypotheses'
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SurjectiveAndLowWeightOfUnramifiedExponents.lean
    line: 16
  - name: GlobalTheory.T.open0_of_unitary_group_hypotheses
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/OpenOrbitOfUnramifiedExponents.lean
    line: 75
needs:
  - tag: 0R9R0Y1HDK
    text: Unitary group
  - tag: 6WB6TKE70H
    text: Theta correspondence
  - tag: 9E45NBX1G0
    text: Local Langlands conjectures
  - tag: TH24PGYAM5
    text: Weil group
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: BT5V3TSNY6
    text: Place (number field)
  - tag: SV5EEBF861
    text: Cusp form
  - tag: B33WNK1SVN
    text: Harish-Chandra module
next:
  - text: Theta matching
    path: proof/theta-matching/
    sub: the previous chapter
  - text: The trunk
    path: proof/trunk/
    sub: the map of the proof
steps: [nonempty-hyps, hyps-alt-def, closed-def, definite-side-condition-def, unitary-group-third-place-hypotheses-def, theta-local-inputs-def, covolume-bound-of-x-def]
---
## Result

The previous chapter, [theta matching](/proof/theta-matching/), ends at the theorem `UpperTheory.Lit.every_character_of_theta_integrals_local_matching`. That theorem calls one more node of the [trunk](/proof/trunk/). This node is the last node of the trunk. Its statement is:

```lean
theorem nonempty_hyps_definite_side_of_closed_bound :
    GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses →
    GlobalTheory.FunPr.ThetaLocalInputs →
    GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree →
    GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching →
    GlobalTheory.CovTop.CovolumeBoundOfX →
    ∀ (hL : UpperTheory.Zero.LLC.RecTExists),
    (∀ cDep : ℝ, GlobalTheory.Fc.RL.LinkedAt (parametersOfDependence hL cDep)
        (fun Q L => SlotNormCondition Q L fun 𝒞 =>
          Closed 𝒞 fun Fm _ => BoundAtTwoThreeFamilyFonAlt Fm)) →
    Nonempty (GlobalTheory.Fc.HypsAlt S0.NL GlobalTheory.Fc.DefiniteSideCondition)
```

(Namespaces are shortened here. The full text is at [SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44).)

In words: assume seven inputs. The first is a list of about sixty statements named after published results on [[unitary groups|0R9R0Y1HDK]] and automorphic forms. The sixth, `RecTExists`, is an existence statement of local Langlands type. The seventh is a "closed bound" on certain families. Then there is at least one record of type `HypsAlt NL DefiniteSideCondition`. The caller `every_character_of_theta_integrals_local_matching` gives this record to `UpperTheory.Top.every_character_of_green_v_win`, together with `VWin`, and gets `UpperTheory.EveryCharacter`.

The node dominates 263,288 declarations. Its three largest dominator children are the three branches of this page: 89,250, 19,048 and 12,571 declarations.

## Idea

The target `HypsAlt` is a record of forty-six fields. Most fields are statements about a class $\mathcal A$ of "families" of arithmetic data, often in the form "this holds once the constants of the family are large". The proof does not build the record field by field at the top. It works in four moves.

First, it proves twelve "open parameter statements" for one choice of parameters (branch 3). Second, it proves two estimates, `SurjectiveOntoX` and `LambdaLowerBound₂` (branch 2). Third, the top node uses these to get a constant `cDep` and two more row statements, a functional condition and a covolume bound. Fourth, branch 1 turns all of this into a record `AllRowsAlt` (one "row" per field of `HypsAlt`) and then into an element of `HypsAlt`.

Each input that is named after the literature is a hypothesis. The Lean code does not prove those inputs in this subtree. It proves that they imply the conclusion.

## Before you read

- An [[algebraic number field|WXGM3VWEK6]] $E$, its finite [[places|BT5V3TSNY6]] $w$ and the completion $E_w$.
- The [[Weil group|TH24PGYAM5]] of a local field and Weil-Deligne representations.
- The [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$.
- [[Unitary groups|0R9R0Y1HDK]] and the [[theta correspondence|6WB6TKE70H]].
- [[Cusp forms|SV5EEBF861]] and [[Harish-Chandra modules|B33WNK1SVN]]. These appear only as names of hypotheses.

## Plan

1. State what the hypotheses record `UnitaryGroupThirdPlaceHypotheses` contains.
2. Unfold `Closed`, the meaning of "closed bound".
3. Unfold `DefiniteSideCondition`, the meaning of "definite side".
4. Unfold `HypsAlt`, the record that is shown nonempty, and `NL`.
5. Unfold `RecTExists`, `LinkedAt` and the parameters.
6. Follow the proof of the top node.
7. Describe branch 3 (`open0_of_unitary_group_hypotheses`).
8. Describe branch 2 (`ontoX_and_lamLow_of_unitaryGroupHypotheses'`).
9. Describe branch 1 (`hypotheses_nonempty_of_unramified_exponents_alt`).

## The steps

### 1. The input record of literature hypotheses

`UnitaryGroupThirdPlaceHypotheses` is a structure of type `Prop` with sixty fields ([BernsteinUnitaryProductIrreducible.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/BernsteinUnitaryProductIrreducible.lean#L22)). Each field is one Prop. Most are in the namespace `GlobalTheory.Published`. A few examples:

```lean
structure UnitaryGroupThirdPlaceHypotheses : Prop where
  clozelCohomological : GlobalTheory.Published.ClozelCohomological
  greenCuspidal : GlobalTheory.Published.GreenCuspidal
  cuspRapidDecay : GlobalTheory.Published.CuspRapidDecay
  siegelWeilUnitaryConvergent : GlobalTheory.Published.SiegelWeilUnitaryConvergent
  doublingMethod : GlobalTheory.Published.DoublingMethodLocalZetaIntegrals
  ...
  siegelEisensteinSimplePole : GlobalTheory.Published.UnusedSlot72
  litN : GlobalTheory.Mem.LiteralAutomorphy.NonEndoscopicHypothesesAlt
  ...
```

The field names refer to the literature (Clozel, Green, Siegel-Weil, the doubling method, Harish-Chandra, Casselman-Wallach, Bernstein-Zelevinsky and others). This page unfolds one of them as an example. `CuspRapidDecay` says: for each datum `D : D7` and each admissible family of real embeddings, every function on the group `GA D V` that is automorphic, smooth, of uniform moderate growth and cuspidal has rapid decay. Here rapid decay means: for each $N \in \mathbb N$ there is $C$ with $|\varphi(g)| \cdot h(g)^N \le C$ for all $g$, where $h(g)$ is the infimum of a height over the rational points $\gamma g$. This is the form of the classical statement that cusp forms decay rapidly, stated for the objects of this code base. The other fields are not unfolded on this page.

One field is the trivial statement. `UnusedSlot72` is defined as `True` ([DiscreteSpectrumResidualClassification.lean#L7](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/DiscreteSpectrumResidualClassification.lean#L7)), although the field that has this type is named `siegelEisensteinSimplePole`.

### 2. "Closed bound": the predicate `Closed`

A `FamP ε` is a structure ("family") with a real parameter $\varepsilon$. It has a threshold $x_1 > 1$, an index type $I_x$ for each real $x$, a datum $D(x,i)$ of type `D7` and size data $L(x,i)$ for each $x$ and $i \in I_x$, and many named constants. A `FamClass` is a predicate on families, for all $\varepsilon$ at once. The definition of `Closed` is:

```lean
def Closed (𝒞 : FamClass) (P : ∀ {eps : ℝ}, FamP eps → ℝ → Prop) : Prop :=
  ∃ ε1 : ℝ, 0 < ε1 ∧ ∀ eps : ℝ, 0 < eps → eps ≤ ε1 → ∃ K : TransportedAlt, ∀ (Fm : FamP eps) (CH : ℝ),
    𝒞 Fm → Fm.Large K CH → P Fm CH
```

In words: there is $\varepsilon_1 > 0$ such that for each $\varepsilon \in (0, \varepsilon_1]$ there is a threshold record $K$ with this property. For each family $F$ with parameter $\varepsilon$ in the class $\mathcal C$ and each real $C_H$, if $F$ is large with respect to $K$ and $C_H$, then $P(F, C_H)$. The record $K$ has a number and three functions from lists of reals to reals. `Fm.Large K CH` says that three lists of constants of $F$ are above thresholds, and that the thresholds may depend on a fourth list (`cOut`) of constants of $F$. So `Closed 𝒞 P` means "$P$ holds for all small $\varepsilon$, for each family in $\mathcal C$ whose constants are large enough".

The "closed bound" of the theorem name is the seventh hypothesis. It applies `Closed` to `BoundAtTwoThreeFamilyFonAlt`. That predicate says: there are $C$ and $x_0$ such that for all $x \ge x_0$, all $i \in I_x$ and all auxiliary data that satisfy a setup condition `SetupAlt`, the statement `BoundAtTwoThree (L x i) X.ρ C` holds. This page does not unfold `BoundAtTwoThree`. The top caller gets this hypothesis from `UpperTheory.N.boundAtTwoThree_linked_of_recT` and the field `nLink` of the input record.

### 3. "Definite side": `DefiniteSideCondition`

The type `DefiniteSideType` is a predicate on a datum `D : D7`, an object `O`, a real $c$, a "bundle" `b : BundleCondition D O c` and two reals $C, C_H$. `DefiniteSideCondition` is one such predicate ([DefiniteSideCondition.lean#L25](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/DefiniteSideCondition.lean#L25)). Its shape is one long implication:

```lean
def DefiniteSideCondition : DefiniteSideType := fun D O c b C CH =>
  ∀ (hok1 : ...) (hsep : ...) (hP : CovolumeOntoIsometryConditions ...) (hI : PassIn3 ...)
    (lam0 C0 ce Sw C1 : ℝ) (H : ∀ u, ... .NumFacts ...) (NuC : ...) (I : DivisionCompatibilityDataThreeSided ...),
    DivTied3 ... → HEq I b.P.I → ∀ u, RowsU ...
```

In words: for each choice of side data for the bundle $b$ (two structural facts, a covolume and isometry condition, a pass condition, five reals with numerical facts, a family of submodules over the ring of integers of a field `D.what₂.LL`, and division compatibility data $I$), if the data are tied (`DivTied3`) and $I$ is the division data of $b$, then the row statement `RowsU` holds at every index $u$. This page does not unfold `RowsU`, `DivTied3` or the side conditions. The word "definite" is in the name only; the definition does not mention a definite form directly.

In `HypsAlt`, this predicate enters through the field `rRows : SelectionDefiniteRows DR 𝒜 σ`. That field says: `Closed (D3 3 𝒜)` of the statement "there is $C \ge 0$ such that, eventually along the selection, the bundles satisfy constant bounds and `DR b C CH`".

### 4. The record `HypsAlt` and the class `NL`

`HypsAlt N DR` is a structure in `Type 1` with forty-six fields ([Hyps.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/Hyps.lean#L22)). It takes a predicate `N` on family classes and a definite side predicate `DR`. The first fields are data:

- a family class $\mathcal A$,
- a selection `σ : RawSel BundleCondition 𝒜` (for each family in $\mathcal A$, each large $x$ and each $i$, a bundle),
- a function `cT : ℝ → ℝ → ℝ`.

The other fields are properties. Many are of the form `Closed (D3 3 𝒜) (...)` or "for all $x$ after the selection threshold and all $i$, the selected bundle has property ...". The properties have names such as twist condition, period admissibility, divisor condition, class number formula at the datum (`StandardLattice.ClassNumberFormula₂`), counting bounds, a surjectivity of a projection map (`zL`), and genus mass conditions. The last field is `nRest : N (D3 3 𝒜)`. Here `D3 3 𝒜` is a class derived from $\mathcal A$ (`Des (WithChN 𝒜) 3`). This page does not unfold `Des` or `WithChN`.

The theorem uses `N = NL`, where

```lean
def NL (𝒞 : FamClass) : Prop := Closed 𝒞 fun Fm _ => Formalism.MainNotions.LinkN Fm
```

`LinkN F` says: there are $C$ and $x_0$ such that for all $x \ge x_0$, all $i$ for which `ShaFinOdd (D x i)` holds, and each lift index $j$, if a series $\sum_l v(l)$ converges then

$$\eta(L, j) \le d_0(j) \Big( C \big( f\, m\, b\, L^2 + (\log x)^2 N_c \big) + \sum_l v(l) \Big).$$

Here $\eta(L,j) = \sum_w \ell(w)\, e_w\, \eta_j(w)$, summed over places $w$ in the support of $L$ where the twist $\mu_w$ differs from $\mu_0$, and $e_w$ is the ramification index. The letters $f, m, b, L, N_c, d_0(j)$ are fields of the datum and of the size data ([GlobalTheoremInputs.lean#L45](lean:Formalism/SharpRestriction/GlobalTheoremInputs.lean#L45)). So `nRest` asks that a weighted count of twisted places is bounded, in the "closed" sense.

### 5. `RecTExists`, parameters and `LinkedAt`

`RecTExists` ([IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78)) says: for each number field $E$, algebraic closure $\Omega$, valuation subring $A$ of $\Omega$ and finite place $w$ of $E$ under $A$, there is a map `rc` from irreducible representations of $\mathrm{GL}_n(E_w)$ (all $n$) to Weil-Deligne representations with the laws `LawsT`. The laws include: dimension $n$, agreement with local class field theory for $n = 1$, compatibility with Langlands classification by segments, cuspidal goes to irreducible, compatibility with twists, central characters and duals. This is an existence statement in the style of the [[local Langlands correspondence|9E45NBX1G0]] for $\mathrm{GL}_n$. The caller gets it from `local_langlands_gl_recT_exists_of_literature`.

A `Parameters hL` is a record of four parts: a position `R`, a norm choice extension `N`, an `SExt` and a `GeoP`. The parameters used here are

```lean
parametersOfDependence hL cDep =
  parametersOfExtension (extensionWithList hL cDep) SExt.none (geoCl anyGeometry)
```

This page does not unfold `extensionWithList`.

`LinkedAt p r` says: there is a further condition `R` on bases such that `LargeBaseCondition` holds for it, and the row statement `r` holds for the combined slot and the bundle linkage of `p`. A row statement `Row Q Lk H` says: there is a choice `E` of bundle properties with `RowE Q Lk E`, and `H 𝒜 σ` holds for every class $\mathcal A$ and selection $\sigma$ that are selections for `E`. `SlotNormCondition Q L N` is `Row Q L (fun 𝒜 _ => N (D3 3 𝒜))`. So the "closed bound" hypothesis says: for every real $c_{\mathrm{Dep}}$, along the parameters of dependence $c_{\mathrm{Dep}}$, every admissible selection has `Closed (D3 3 𝒜) BoundAtTwoThreeFamilyFonAlt`.

### 6. The proof of the top node

The Lean proof ([lines 45 to 68](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L45)) does these steps.

1. It gets `FunctionalsSeparate` from `functionalsSeparate_of_howeUnram_of_siegelWeil` (4,517 declarations).
2. It gets `S0.RowRat` from `test_vector_assembly_holds` through `rowRatW_of_rowTest`.
3. It gets `ConstantFunctionFits` from `fourier_coefficient_fit_of_join_alt` (4,121). This uses the second half of branch 2.
4. `evaluation_grid_of_join` gives a constant $C_{F1}$ such that `EvLgG (GridA CF)` holds for $C_F \ge C_{F1}$. `rowFun_at_gridA_alt` gives a constant $C_{F0}$.
5. It sets $c_{\mathrm{Dep}} = \max(C_{F0}, C_{F1})$.
6. Branch 3 gives `OpenParameterStatements` at the parameters of dependence $c_{\mathrm{Dep}}$.
7. `open_and_linked_of_stronger_extension_alt` moves these statements to the stronger parameters `extensionWithAtProperty ... (GridA cDep)`.
8. It gets the functional condition and the covolume bound `CovolumeBoundThirdPlaceSeries` at the stronger parameters. The second uses the input `CovolumeBoundOfX`.
9. It applies branch 1 to all of the above.

### 7. Branch 3: the twelve open parameter statements

```lean
theorem GlobalTheory.T.open0_of_unitary_group_hypotheses :
    UnitaryGroupThirdPlaceHypotheses → ∀ (hL : RecTExists) (cDep : ℝ),
      OpenParameterStatements (parametersOfDependence hL cDep)
```

`OpenParameterStatements p` is a structure of twelve fields. Each field is `LinkedAt p r` for one row statement `r`: primitivity, a lambda prime condition, a divisor condition, a decomposition point condition, a selection jump condition, a tie condition, a label condition, a goodness condition, a weak geometric compatibility, a multiplicity condition, a kappa condition, and a defect condition. The defect condition `RowDefectCondition` is the row form of `DefiniteSideCondition`. So branch 3 already proves the definite side condition in row form.

The theorem at line 75 only calls `Open0ProofU.open_orbit_of_unramified_exponents_alt` (line 39). That proof builds each of the twelve fields from one lemma and the input record. The largest part is `main_theorem_published_inputs_third_alt_alt` (10,903 declarations). It gives the multiplicity condition, from fourteen named hypotheses (Harish-Chandra finiteness, rapid decay of cusp forms, Weil representation of the unitary pair, Siegel-Weil formula, doubling method, strong approximation and others). The next parts are `weil_unitary_entries'` (1,187, the defect condition) and `good_ft_entries_alt_alt` (262, the label condition).

### 8. Branch 2: `SurjectiveOntoX` and `LambdaLowerBound₂`

```lean
theorem ontoX_and_lamLow_of_unitaryGroupHypotheses' :
    UnitaryGroupThirdPlaceHypotheses →
      GlobalTheory.BigOn.SurjectiveOntoX ∧ GlobalTheory.BigTop.LambdaLowerBound₂
```

Both conclusions have the form `Closed FamHyp (...)` for one fixed class `FamHyp`.

- `SurjectiveOntoX`: for large families $F$ in `FamHyp`, if `DIVinN F` holds, then there is $C_0 \ge 0$ such that eventually, at every point $p$ with `More p`, and for every $C \ge C_0$, the statement `(p.S false).ON (p.N C CH)` holds.
- `LambdaLowerBound₂`: for large families, eventually at every point $p$ and for every $C$, `(p.S true).L6 (p.N C CH)` holds.

Here "eventually at points" means: there is $x_0$ such that for every $x > x_1$ with $x \ge x_0$, every $i$ and every point $p$ that satisfies `PointConditions'`, the property holds. This page does not unfold `FamHyp`, `ON` or `L6`. The names suggest "onto" and "a lower bound for $\lambda$", but this page does not claim more than the definitions.

The proof is two calls. `ontoX_of_hypotheses_alt_alt` (18,718 declarations) proves the first part from twelve named hypotheses. One of them is `RecTExists`, which is made by `llOf_alt` from the field `litN.loc.llc`. Its main sub-branches are `runHolds_of_parOK` (5,645), `geoSt_of_pageSt_alt` (5,142) and `expSt_of_base_change_and_crystalline_lattices` (3,437). `lamLow_of_hypotheses_alt_alt` (312 declarations) proves the second part from seven named hypotheses: rapid decay, the Weil-Siegel formula, Siegel-Weil convergence, the doubling method, unramified doubling for $\mathrm{GL}$, Bernstein-Zelevinsky finiteness and formal degrees.

### 9. Branch 1: the record is nonempty

```lean
theorem hypotheses_nonempty_of_unramified_exponents_alt :
    UnitaryGroupThirdPlaceHypotheses → S0.RowRat →
    ∀ (hL : RecTExists) (cDep : ℝ) (A : GroupRetwisting.AtP), EvLgG A →
    LinkedAt (parametersOfDependence hL cDep) (closed bound) →
    LinkedAt (parametersOfExtension (extensionWithAtProperty ... A) ...) FunctionalCondition →
    LinkedAt (parametersOfExtension (extensionWithAtProperty ... A) ...) CovolumeBoundThirdPlaceSeries →
    Nonempty (HypsAlt S0.NL DefiniteSideCondition)
```

(The fifth line is the same "closed bound" hypothesis as in the top node.) The proof ([HypothesesNonemptyOfUnramifiedExponents.lean#L42](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/HypothesesNonemptyOfUnramifiedExponents.lean#L42)) has six steps.

1. `large_unramified_exponent_bundles_exist_alt` (19,947 declarations) gives three facts: `SiegelMassRatioCM`, `MemberE` for the stronger parameters, and `ExBL` (there is a large base condition with bundles). Its main part is `member_exists_baseLattice_alt` (13,165).
2. `hyps_e_third_layer_ser_n_of_geometric_galois` (1,263) gives two inputs `prN` and `serN` from the fields `litN` and `toHypothesesX`.
3. It calls branch 2 and branch 3 again at $c_{\mathrm{Dep}}$.
4. `UpperTheory.GalC.final_alt_alt` (15,671) turns the closed bound into `NL`. Its type `NLink.Final.mainTheorem` says: from the named hypotheses and the closed bound for `BoundAtTwoThreeFamilyFonAlt`, the same `LinkedAt` statement holds with `Closed 𝒞 LinkN`. This is where the "closed bound" hypothesis is used. Its main part is `final_of_alt` (14,915).
5. `open_and_linked_of_stronger_extension_alt` moves the open statements and the `NL` row to the stronger parameters.
6. `allRows_of_open0_alt` (34,902) gives a record `AllRowsAlt ... NL DefiniteSideCondition`. Then `nonempty_hyps_of_allRows_alt` (419) builds the `HypsAlt` element from it.

`AllRowsAlt` has one "row" for each property field of `HypsAlt`, each in the form `Lg1 KP Q Q' (fun S => ...)`. The last step joins these rows with `RowL.and` into one row, takes one selection from `ExBL`, and reads off the fields. The largest parts of `allRows_of_open0_alt` are `lg1_sLp_sO_hTF` (14,500; the $L^p$ selection, order and torsion free rows, from one Siegel-Weil hypothesis) and `hServ_of_linkR` (10,751; the service row, from global Artin reciprocity).

### What "unramified exponents" means here

The phrase "unramified exponents" is in the names of four files and theorems of this chapter. It is not in any hypothesis or conclusion of these theorems. No definition with that name enters the statements above. So this page does not give it a meaning. The same holds for "open orbit" in the name of branch 3, and for "surjective and low weight" in the file name of branch 2. The theorem names `ontoX` and `lamLow` do match the conclusions `SurjectiveOntoX` and `LambdaLowerBound₂`, and `open0` matches the structure `OpenParameterStatements` (and its near copy `S0.Open0`).

## Where it is in the code

All modules below are in `Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/` unless the name says otherwise. Size is the number of declarations that the node dominates.

| Declaration | Module | Size |
| --- | --- | --- |
| `UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound` | [SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44) | 263,288 |
| `GlobalTheory.Fc.S0.StageU.hypotheses_nonempty_of_unramified_exponents_alt` | [HypothesesNonemptyOfUnramifiedExponents.lean#L41](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/HypothesesNonemptyOfUnramifiedExponents.lean#L41) | 89,250 |
| `GlobalTheory.Fc.AllAtMemberStage0.allRows_of_open0_alt` | [LinkROfIsLinked.lean#L50](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LinkROfIsLinked.lean#L50) | 34,902 |
| `GlobalTheory.T.large_unramified_exponent_bundles_exist_alt` | [MemberBundlesLargeUnramifiedExponents.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/MemberBundlesLargeUnramifiedExponents.lean#L69) | 19,947 |
| `UpperTheory.GalC.final_alt_alt` | [CFinal.lean#L19](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/CFinal.lean#L19) | 15,671 |
| `GlobalTheory.Fc.nonempty_hyps_of_allRows_alt` | [NonemptyHypsOfAllRows.lean#L19](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/NonemptyHypsOfAllRows.lean#L19) | 419 |
| `GlobalTheory.Fc.S0.ontoX_and_lamLow_of_unitaryGroupHypotheses'` | [SurjectiveAndLowWeightOfUnramifiedExponents.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SurjectiveAndLowWeightOfUnramifiedExponents.lean#L16) | 19,048 |
| `GlobalTheory.BigOn.ontoX_of_hypotheses_alt_alt` | [OntoXOfPrints.lean#L28](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/OntoXOfPrints.lean#L28) | 18,718 |
| `GlobalTheory.BigTop.lamLow_of_hypotheses_alt_alt` | [LamLowOfPublished.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LamLowOfPublished.lean#L17) | 312 |
| `GlobalTheory.T.open0_of_unitary_group_hypotheses` | [OpenOrbitOfUnramifiedExponents.lean#L75](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/OpenOrbitOfUnramifiedExponents.lean#L75) | 12,571 |
| `GlobalTheory.T.main_theorem_published_inputs_third_alt_alt` | [MainTheoremPublishedInputsThird.lean#L34](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/MainTheoremPublishedInputsThird.lean#L34) | 10,903 |
| `GlobalTheory.Fc.HypsAlt` | [Hyps.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/Hyps.lean#L22) | 1 |
| `GlobalTheory.Fc.DefiniteSideCondition` | [DefiniteSideCondition.lean#L25](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/DefiniteSideCondition.lean#L25) | 1 |
| `GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses` | [BernsteinUnitaryProductIrreducible.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/BernsteinUnitaryProductIrreducible.lean#L22) | 1 |
| `Formalism.MainNotions.Closed` | [ParamsHeightRankConstant.lean#L159](lean:Formalism/SharpRestriction/ParamsHeightRankConstant.lean#L159) | 1 |
| `UpperTheory.Zero.LLC.RecTExists` | [IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78) | 1 |

Branches 2 and 3 are used twice: once by the top node and once inside branch 1. So in the dominator tree they hang under the top node, not under branch 1.

## Notes

- **What is hypothesis and what is proof.** The sixty fields of `UnitaryGroupThirdPlaceHypotheses`, the inputs `ThetaLocalInputs`, `ThetaIntegralsAgree`, `LocalMatching`, `CovolumeBoundOfX`, `RecTExists` and the closed bound are all assumptions of this node. The node proves that they imply the existence of a `HypsAlt` record. Whether each assumption is a correct form of the published theorem it is named after is a separate question. This page checked only `CuspRapidDecay` and `RecTExists` in any detail.
- **A trivial field.** The field `siegelEisensteinSimplePole` has type `UnusedSlot72`, which is `True`. So this field asks for nothing.
- **A pass-through.** `llOf_alt` takes `RecTExists` and eleven other hypotheses, and returns its first argument. The other eleven hypotheses are not used in its proof.
- **Not unfolded.** This page does not unfold `RowsU`, `DivTied3`, `BoundAtTwoThree`, `FamHyp`, `ON`, `L6`, `Des`, `WithChN`, `extensionWithList`, `extensionWithAtProperty`, `EvLgG`, `GridA` beyond its first line, `RowRat`, `MemberE` beyond its four conjuncts, `ExBL`, `SiegelMassRatioCM`, or most fields of `HypsAlt`. The plain words for these objects stay at the level of their names and shapes.
- **Names.** Many names in this subtree (`_alt`, `_alt_alt`, `'`, "third place", "unramified exponents", "open orbit") do not match a defined object. This page does not guess their meaning.
- **What the record is used for.** This page stops at the element of `HypsAlt`. How `every_character_of_green_v_win` uses it, together with `VWin` and the Green character input, is not on this page.
