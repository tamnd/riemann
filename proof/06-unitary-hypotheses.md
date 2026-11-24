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
  - text: Bessel periods, seesaw and separation of functionals
    path: proof/bessel-seesaw/
    sub: the proof of FunctionalsSeparate
steps: [nonempty-hyps, hyps-alt-def, closed-def, definite-side-condition-def, unitary-group-third-place-hypotheses-def, theta-local-inputs-def, covolume-bound-of-x-def]
---

## Families and the closed sense

The Lean trunk ends with one existence statement: a record called HypsAlt has an element. The previous chapter, [Theta matching](/proof/theta-matching/), uses this record, and the [trunk](/proof/trunk/) shows its place. Most fields of the record are statements about families that hold in one sense, called closed. This section defines families, largeness and the predicate Closed, whose Lean text is on its [step page](/step/closed-def/).

**Definition (Families).** Let $\varepsilon$ be a real number. A family at $\varepsilon$ has a real threshold $x_1 > 1$. For each $x > x_1$ it has an index type $I_x$. For each $x > x_1$ and $i \in I_x$ it has a datum $D(x,i)$ of the type of unitary data and size data $L(x,i)$ for that datum. It also has finite lists of real constants $c_{\mathrm{pre}}$, $c_{\mathrm{out}}$ and $c_{\mathrm{last}}$, and a list $c_{\mathrm{mid}}(C_H)$ that depends on a real parameter $C_H$. A family class is a predicate on families, for all $\varepsilon$ together.

Lean: `Formalism.MainNotions.FamP`

A datum carries a CM [[algebraic number field|WXGM3VWEK6]] and a Hermitian space. This chapter does not unfold it.

**Definition (Threshold records and largeness).** A threshold record $K$ has a real number $K_{\mathrm{pre}}$ and three functions $K_t$, $K_{\mathrm{mid}}$ and $K_{\mathrm{last}}$ from finite lists of reals to reals. A family is large for $K$ at $C_H$ if all three of these hold:

1. $K_{\mathrm{pre}} \le c$ for every $c \in c_{\mathrm{pre}}$;
2. $K_{\mathrm{mid}}(c_{\mathrm{out}}) \le c$ for every $c \in c_{\mathrm{mid}}(C_H)$;
3. $K_{\mathrm{last}}(c_{\mathrm{out}} \mathbin{+\!\!+} c_{\mathrm{mid}}(C_H)) \le c$ for every $c \in c_{\mathrm{last}}$, where $\mathbin{+\!\!+}$ joins two lists.

The function $K_t$ is not read. We write $K \le K'$ if each component of $K$ is at most the same component of $K'$, at every list. We write $K \vee K'$ for the componentwise maximum.

Lean: `Formalism.MainNotions.FamP.Large`

Largeness reads only the constants of the family, not $x$ or $i$. The code proves that largeness for $K'$ gives largeness for every $K \le K'$, and that largeness for $K \vee K'$ is largeness for $K$ and for $K'$.

**Definition (Closed).** Let $\mathcal{C}$ be a family class and let $P$ be a property of a family and a real number $C_H$. Then $P$ holds closed on $\mathcal{C}$ if there is $\varepsilon_1 > 0$ with this property: for every $\varepsilon$ with $0 < \varepsilon \le \varepsilon_1$ there is a threshold record $K$ such that $P(F, C_H)$ holds for every family $F$ at $\varepsilon$ in $\mathcal{C}$ and every $C_H$ for which $F$ is large for $K$ at $C_H$.

Lean: `Formalism.MainNotions.Closed`

The thresholds may depend on $\varepsilon$, but not on the family.

**Lemma (Conjunction of closed statements).** If $P$ and $Q$ hold closed on $\mathcal{C}$, then $P \wedge Q$ holds closed on $\mathcal{C}$.

Lean: `Formalism.MainNotions.Closed.and`

*Proof.* This is the Lean proof. Let $\varepsilon_P$ and $\varepsilon_Q$ be the bounds for $P$ and $Q$, and put $\varepsilon_1 = \min(\varepsilon_P, \varepsilon_Q)$. Let $0 < \varepsilon \le \varepsilon_1$, and let $K_P$ and $K_Q$ be the records for $P$ and $Q$ at $\varepsilon$. Take $K = K_P \vee K_Q$. A family that is large for $K$ is large for $K_P$ and for $K_Q$. So both $P$ and $Q$ hold for it. $\square$

**Lemma (Weakening of closed statements).** Let $P$ hold closed on $\mathcal{C}$. Let $Q$ be a second property such that $P(F, C_H)$ implies $Q(F, C_H)$ for every family $F$ at a positive $\varepsilon$ and every $C_H$. Then $Q$ holds closed on $\mathcal{C}$.

Lean: `Formalism.MainNotions.Closed.imp`

*Proof.* This is the Lean proof. Keep the same $\varepsilon_1$ and, for each $\varepsilon$, the same record $K$. $\square$

**Remark (Formalization).** The definitions are in [ParamsHeightRankConstant.lean#L159](lean:Formalism/SharpRestriction/ParamsHeightRankConstant.lean#L159). A threshold record has the type `TransportedAlt`. The two facts on largeness are `FamP.Large.mono` and `FamP.large_sup`. The second conjunct of `FamP.Large` is `True`.

## The record HypsAlt

The record HypsAlt has two parameters: a property $N$ of family classes and a property $DR$ of bundle data. The top node uses $N = \mathrm{NL}$ and the definite side condition for $DR$. This section defines both and then the record. The step pages [HypsAlt](/step/hyps-alt-def/) and [the definite side condition](/step/definite-side-condition-def/) give the Lean text.

**Definition (The bound LinkN).** Let $F$ be a family. For a datum $D$ with rank data $t$, $f$ and $m$, put $v_D(\ell) = \big(\sum_{1 \le e < t} \mathrm{sha}_D(\ell, e)\big) \log \ell$ if $\ell$ is prime, and $v_D(\ell) = 0$ otherwise. Here $\mathrm{sha}_D(\ell, e)$ is the length of a Tate-Shafarevich group of the datum at $\ell$ in degree $e$. Let $L$ be size data for $D$ with length $\Lambda$, parameter $X$, base $b$ and count $N_c$. For an integer $j$ put

$$\eta(L,j) = \sum_{w} \mathrm{lw}(w)\, e(w)\, \eta_j(w),$$

where $w$ runs over the support places of $L$ whose weight $\mu_w$ differs from the base weight $\mu_0$, and $e(w)$ is the ramification index. Then $\mathrm{LinkN}(F)$ holds if there are real numbers $C$ and $x_0$ with this property. For all $x \ge x_0$, all $i \in I_x$ such that every such Tate-Shafarevich length of $D(x,i)$ with $0 < e < t$ is finite, and every lift $j$ of $D(x,i)$: if the series $\sum_\ell v_D(\ell)$ converges, then

$$\eta(L,j) \le d_{Z_0}(j) \Big( C \big( f\, m\, b\, \Lambda^2 + (\log X)^2 N_c \big) + \sum_{\ell} v_D(\ell) \Big),$$

with $D = D(x,i)$ and $L = L(x,i)$.

Lean: `Formalism.MainNotions.LinkN`

**Definition (NL).** For a family class $\mathcal{C}$, $\mathrm{NL}(\mathcal{C})$ is the statement that $\mathrm{LinkN}$ holds closed on $\mathcal{C}$. The parameter $C_H$ is not used.

Lean: `GlobalTheory.Fc.S0.NL`

**Definition (Definite side condition).** The definite side condition is a predicate on a datum $D$, an object $O$ over it, a real number $c$, a bundle $b$ for $(D, O, c)$, and two real numbers $C$ and $C_H$. It is one long implication. Its hypotheses are two shape conditions on $b$, covolume and isometry conditions at $(C, C_H)$, a passage condition, five real numbers with numerical facts for every letter $u$, a family of submodules over the ring of integers of the field of $D$, and division data tied on three sides that agree with those of $b$. Its conclusion is a row condition for every $u$.

Lean: `GlobalTheory.Fc.DefiniteSideCondition`

The word "definite" is only in the name. No hypothesis says that a Hermitian form is definite.

**Definition (Definite rows of a selection).** Let $DR$ be a predicate as above, let $\mathcal{A}$ be a family class, and let $\sigma$ choose a bundle for each large point of each family in $\mathcal{A}$. The selection has definite rows if the following holds closed on the subclass of $\mathcal{A}$ with three-dimensional data and character conditions: there is $C \ge 0$ such that, eventually along the selection, the chosen bundles satisfy bounds on indefinite realisation constants and $DR$ at $(C, C_H)$.

Lean: `GlobalTheory.Fc.R1.SelectionDefiniteRows`

**Definition (HypsAlt).** For $N$ and $DR$ as above, an element of $\mathrm{HypsAlt}(N, DR)$ is a record of forty-six fields. They fall into these groups.

1. Data and their bounds, seven fields: a family class $\mathcal{A}$, a selection $\sigma$ of bundles along $\mathcal{A}$, a function $c_T$ of two reals, a function from lists of reals to counting constants with two bounds, and a constant $c_I$ with $c_I > 0$.
2. Pointwise rows, ten fields: for every family in $\mathcal{A}$, every $x$ past the threshold of the selection and every index, the selected bundle has bounded realisation rows, tied twists, primitive links, a $\lambda$ row, a divisor row, a decomposition point and similar rows.
3. Rows on subclasses, eighteen fields. Most of them hold closed on a subclass of $\mathcal{A}$. Examples are a size bound for the torus, a class number formula, point counts, points and periods at zero and in twisted form, label counts and the conditions at the real place.
4. Global facts, eight fields: thin literature sets, decay of the Wu term for a gap, finite dimension of rows, three positivity rows, a mass ratio under volume and the genus mass at $2$ for every datum.
5. The two parameters, two fields: the definite rows of the selection for $DR$, and the statement $N$ on the class of three-dimensional data in $\mathcal{A}$.
6. One existence statement for $\mathcal{A}$ and $c_T$ under a Minkowski divisibility hypothesis.

Lean: `GlobalTheory.Fc.HypsAlt`

**Remark (Formalization).** The record is in [Hyps.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/Hyps.lean#L22) and the condition is in [DefiniteSideCondition.lean#L25](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/DefiniteSideCondition.lean#L25). The bound `LinkN` is in [GlobalTheoremInputs.lean#L45](lean:Formalism/SharpRestriction/GlobalTheoremInputs.lean#L45), and `S0.NL` is in `GeometricWeakTiesOfStrong.lean`. The two parameter fields of `HypsAlt` are `rRows` and `nRest`. The subclass of three-dimensional data is `D3 3 𝒜 = Des (WithChN 𝒜) 3`. This chapter does not unfold `D7`, `SizeData₂`, `BundleCondition`, `RowsU` or `DivTied3`.

## The inputs of the node

The top node takes seven inputs. This section states each one. Then it says how the trunk supplies it, because an input of the node is not always an assumption of the proof. The step pages [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/), [ThetaLocalInputs](/step/theta-local-inputs-def/) and [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) give the Lean text of three of them.

**Definition (The unitary group hypotheses).** The unitary group hypotheses are a record of sixty fields. Each field is a statement named after a theorem on [[unitary groups|0R9R0Y1HDK]], automorphic forms or the [[theta correspondence|6WB6TKE70H]], for example the doubling method, the Siegel-Weil formula or strong approximation. One field is the constant statement True. The record also contains a literature record on Galois representations and the hypotheses for the closed bound below.

Lean: `GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses`

**Definition (Theta local inputs).** The theta local inputs are local facts on Siegel sets and on Howe duality at the real places. Two more inputs compare theta integrals and match local functionals at each [[place|BT5V3TSNY6]].

Lean: `GlobalTheory.FunPr.ThetaLocalInputs`

The step pages [theta integrals agree](/step/theta-integrals-agree-def/) and [local matching](/step/local-matching-def/) state the other two inputs.

**Theorem (Rapid decay of cusp forms).** Let $\varphi$ be a smooth automorphic form on a unitary group, of uniform moderate growth, that is cuspidal. Then for every $N$ there is $C$ with $|\varphi(g)|\, h(g)^N \le C$ for all $g$, where $h(g)$ is the infimum of the height of $\gamma g$ over the rational points $\gamma$ of the group.

Lean: `GlobalTheory.Published.CuspRapidDecay` (proved by `GlobalTheory.RapidDecay.cuspRapidDecay`)

*Proof.* The code proves the statement, and we did not unfold the Lean proof. Classically, the bound follows from reduction theory on Siegel sets, as in Borel and Harish-Chandra, and the vanishing of the constant terms of [[cusp forms|SV5EEBF861]]. $\square$

**Definition (Local parameters exist).** RecTExists is the statement that local reciprocity data exist at every finite place. Precisely, for every number field $E$, algebraic closure $\Omega$ of $E$, valuation subring $A$ and finite place $w$ such that $A$ lies over $w$, there is a datum that satisfies the laws of a local reciprocity map at $w$. These laws are the [[local Langlands correspondence|9E45NBX1G0]] for the [[Weil group|TH24PGYAM5]] of the completion.

Lean: `UpperTheory.Zero.LLC.RecTExists`

**Theorem (Existence of local Langlands data).** RecTExists holds.

Lean: `UpperTheory.Zero.LLC.RecTExists` (proved by `UpperTheory.Zero.LLC.recTExists`)

*Proof.* The code proves the statement. We did not unfold the Lean proof, which the step page [rect-exists](/step/rect-exists/) describes. Classically, the existence part of the local Langlands correspondence for general linear groups is the theorem of Henniart. $\square$

The steps [RecTExists](/step/rect-exists-def/) and [IsRecT](/step/is-rect-def/) give the definitions.

**Definition (Covolume bound).** The covolume bound says that a condition $L_3$ holds closed on a fixed class of families, in this form. There is $C_0 \ge 0$ such that, at all large points of the family where the transported rows hold, the condition $L_3$ holds for the point data at every $C \ge C_0$.

Lean: `GlobalTheory.CovTop.CovolumeBoundOfX`

**Definition (Linked rows).** Let $p$ be a parameter record, built from local reciprocity data and a set of extensions. A row $r$ is linked at $p$ if $r$ holds at the linkage of the bundles of $p$, for every built and good slot. A family statement $S$ gives a row: the slot norm condition of $S$ is the row that asks $S$ on the class of three-dimensional data.

Lean: `GlobalTheory.Fc.RL.LinkedAt`

**Definition (Closed bound).** The bound at two and three for a family $F$ says that there are $C$ and $x_0$ such that, for every $x \ge x_0$, every index $i$ and every hub datum $X$ that satisfies the setup conditions at $(x,i)$, the bound at two and three holds for $L(x,i)$, the representation of $X$ and $C$. The closed bound is the statement that, for every real $c_{\mathrm{dep}}$, the slot norm row of "this bound holds closed" is linked at the parameters of dependence $c_{\mathrm{dep}}$.

Lean: `GlobalTheory.NLink.BoundAtTwoThreeFamilyFonAlt`

**Proposition (The closed bound holds).** Let the hypotheses on the bound at two and three hold, and let RecTExists hold. Then for every parameter record $p$ built from these local data, the slot norm row of the closed bound is linked at $p$.

Lean: `UpperTheory.N.boundAtTwoThree_linked_of_recT`

*Proof.* The Lean proof is a separate subtree. We did not unfold it. $\square$

**Remark (How the trunk supplies the inputs).** The top node treats all seven inputs as hypotheses, but the trunk proves each of them. We checked this in the Lean source. The [literature chapter](/proof/literature/) gives the details.

1. The theta local inputs, theta integrals agree and local matching come from theorems that read no open literature statement, as in the step [theta-local-matching](/step/theta-local-matching/).
2. The covolume bound comes from the parent theorem of the [Weil bound chapter](/proof/weil-bound/), which reads no open statement.
3. RecTExists is the second field of the record of [open literature statements](/step/open-literature-statements-def/). The step [local-langlands-gl-rect-exists-of-literature](/step/local-langlands-gl-rect-exists-of-literature/) returns this field without change. On the trunk the field is the theorem above.
4. Fifty-six of the sixty fields of the unitary group hypotheses are proved terms that read no open statement. Four fields read the open record: the Galois representations for polarized cuspidal representations, the Hecke character above $\ell$, local-global compatibility above $\ell$, and the literature record on Galois representations.
5. The closed bound comes from the proposition above. Its two inputs are a proved field of the unitary group hypotheses and RecTExists.

The step [every-character-of-literature](/step/every-character-of-literature/) fills the open record with proved terms: one theorem on local-global compatibility in the first and third fields, and RecTExists in the second. So on the trunk no input of the top node is open. Nobody has checked that each Lean statement says what the cited paper proves.

**Remark (Formalization).** The record of sixty fields is in [BernsteinUnitaryProductIrreducible.lean#L22](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/BernsteinUnitaryProductIrreducible.lean#L22). Its field `siegelEisensteinSimplePole` has the type `UnusedSlot72`, which is `True`. The classification of the residual discrete spectrum is in [DiscreteSpectrumResidualClassification.lean#L7](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/DiscreteSpectrumResidualClassification.lean#L7). `RecTExists` is in [IsRecTOfIsRec.lean#L78](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L78). In `EveryCharacterOfLiteratureOfVWin.lean` the caller gets `P` from `published_results_eigen`, `F` from `published_results_first`, `hX` from `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt`, and `hL` as `llOf_alt O.localLanglandsExists …`. It gets the closed bound from `boundAtTwoThree_linked_of_recT P.nLink`. The four fields that read `O` are `galoisRepOfPolarizedCuspidal`, `heckeLAdicCharacterAbove`, `localGlobalAboveL` and `litN`. On the trunk `O` is `⟨h, UpperTheory.Zero.LLC.recTExists, h⟩` with `h = galoisLocalGlobalStrong_recParameter`.

## The main theorem

This section states the top node and shows how its proof joins the three branches. Each branch is the subject of a later section. The step [nonempty-hyps](/step/nonempty-hyps/) gives the Lean text.

**Lemma (Stronger parameters).** Let $p$ and $p'$ be parameter records with the same local data, and let every extension in $p'$ give one in $p$. Then every row that is linked at $p$ is linked at $p'$. The open parameter statements at $p$ also give the open parameter statements at $p'$.

Lean: `GlobalTheory.Glob.open_and_linked_of_stronger_extension_alt`

*Proof.* The Lean proof maps each built and good slot of $p'$ to one of $p$ and reads the row there. We did not unfold it. $\square$

**Theorem (The unitary hypotheses node).** Assume the unitary group hypotheses, the theta local inputs, theta integrals agree, local matching, the covolume bound and RecTExists. Assume the closed bound for every $c_{\mathrm{dep}}$. Then $\mathrm{HypsAlt}(\mathrm{NL}, DR)$ is not empty, where $DR$ is the definite side condition.

Lean: `UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound`

*Proof.* We give the steps of the Lean proof.

1. The theta local inputs, Howe duality for unramified data and the convergence of the Siegel-Weil formula give the separation of functionals. The [Bessel periods chapter](/proof/bessel-seesaw/) proves this step.
2. A test vector assembly gives a rationality row. It uses the theta local inputs, Green's statement on cuspidal data, two parts of the literature record on Galois representations, theta integrals agree, local matching and the separation.
3. Most of the same inputs and the lower bound for $\lambda$ from the second branch give a Fourier coefficient fit.
4. Three twisted facts give a grid constant $c_1$. Five fields of the unitary group hypotheses and the Fourier fit give a grid constant $c_0$. Put $c = \max(c_0, c_1)$.
5. The third branch gives the open parameter statements at the parameters of dependence $c$.
6. The lemma on stronger parameters moves them to the parameters of the extension at grid $c$.
7. The same five fields, the covolume bound and RecTExists give two more rows at these parameters: a functional row and a covolume row.
8. The first branch takes the unitary group hypotheses, the rationality row, RecTExists, $c$, the grid, the closed bound at $c$ and the two rows. It returns an element of the record.

We did not unfold the proofs of steps 2, 3, 4 and 7. $\square$

The proof uses the closed bound only at $c$. It calls the second branch twice, in step 3 and inside the first branch.

**Proposition (Every character from the record of hypotheses).** Assume the six inputs of the theorem other than the closed bound, and assume the statement VWin. Then the statement EveryCharacter of the [trunk](/proof/trunk/) holds.

Lean: `UpperTheory.Lit.every_character_of_theta_integrals_local_matching`

*Proof.* The Lean proof reads one field of the unitary group hypotheses, on green regular characters. It turns this field into Green's statement and applies the bridge from Green's statement and VWin to the conclusion. The other five inputs are not read. $\square$

The step [green-vwin](/step/green-vwin/) gives the bridge, and the [VWin chapter](/proof/vwin/) proves VWin.

**Remark (Formalization).** The node is in [SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44), with its proof in [lines 45 to 68](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L45). It dominates 263,615 declarations. Step 1 is `functionalsSeparate_of_howeUnram_of_siegelWeil` (4,530) and step 3 is `fourier_coefficient_fit_of_join_alt` (4,155). Step 7 is `linked_bundles_l3_of_open_alt`. The parameters of dependence are `parametersOfExtension (extensionWithList hL cDep) SExt.none (geoCl anyGeometry)`.

## The open parameter statements

The third branch proves twelve linked rows at the parameters of dependence. The code calls them open statements, but they are proved. Each row has its own inputs.

**Definition (Open parameter statements).** Let $p$ be a parameter record. The open parameter statements at $p$ are twelve statements. Each says that one row is linked at $p$. The rows are primitivity, the $\lambda$ prime row, the divisor row, the decomposition point, the selection jump, the tie at the real place, the label row, goodness, weak geometric compatibility, multiplicity, the $\kappa$ row and the defect row. The defect row is the row form of the definite side condition.

Lean: `GlobalTheory.Fc.S0.OpenParameterStatements`

**Theorem (Open statements from the unitary hypotheses).** Assume the unitary group hypotheses and RecTExists. Then the open parameter statements hold at the parameters of dependence $c_{\mathrm{dep}}$, for every real $c_{\mathrm{dep}}$.

Lean: `GlobalTheory.T.open0_of_unitary_group_hypotheses`

*Proof.* The Lean proof builds the rows one by one, and we did not unfold them. The inputs are these.

1. Primitivity and the decomposition point use only RecTExists, and no field of the unitary group hypotheses.
2. The tie at the real place uses seven fields and a nonempty extension with a law.
3. The multiplicity row uses thirteen fields, the proved theorem on Howe duality for unramified data, and RecTExists. Among the fields are rapid decay, [[Harish-Chandra modules|B33WNK1SVN]], Casselman-Wallach, the doubling method, the classification of discrete series and strong approximation. The first part of this proof also gives the divisor row.
4. The selection jump, the $\lambda$ prime row and the $\kappa$ row come from combined real group and Harish-Chandra inputs.
5. Goodness uses Green's statement on regular characters, the polynomial ring of Zelevinsky and RecTExists. The label row uses the good Fourier entries.
6. Weak geometric compatibility comes from the tie and the ray class field statement.
7. The defect row uses four fields on the Weil representation of unitary groups.

$\square$

**Remark (Formalization).** The theorem is in [OpenOrbitOfUnramifiedExponents.lean#L75](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/OpenOrbitOfUnramifiedExponents.lean#L75). It calls `Open0ProofU.open_orbit_of_unramified_exponents_alt`. The rows `hPA` and `hDcPtG` come from `linkedAt_hPA_prmR` and `linkedAt_hDcPtG_prmR`. The row `mi` comes from `main_theorem_published_inputs_third_alt_alt` in [MainTheoremPublishedInputsThird.lean#L34](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/MainTheoremPublishedInputsThird.lean#L34), which dominates 10,941 declarations. Its first component also feeds `bk_law_entries_alt` for `hDivG`. The row `df` comes from `weil_unitary_entries'` (1,187) and `lab` from `good_ft_entries_alt_alt` (262). The branch dominates 12,608 declarations.

## Surjectivity and the lower bound for λ

The second branch proves two closed statements on one class of families: a map onto a space $X$ is surjective, and a weight $\lambda$ has a lower bound. Both are read at large points of a family.

**Definition (Eventually at points).** Let $F$ be a family and let $Q$ be a property of points of $F$ at $(x,i)$. Then $Q$ holds eventually at points if there is $x_0$ such that $Q$ holds at every point $p$ at $(x, i)$ with $x > x_1$ and $x \ge x_0$ that satisfies the point conditions.

Lean: `GlobalTheory.BigTop.EventuallyAtPoints`

**Definition (Surjectivity onto X).** Surjectivity onto $X$ says the following holds closed on the fixed class of families. If the divisor row holds for the family, then there is $C_0 \ge 0$ such that eventually at points with the extra point conditions, the map onto $X$ is surjective for the point data at every $C \ge C_0$.

Lean: `GlobalTheory.BigOn.SurjectiveOntoX`

**Definition (Lower bound for λ).** The lower bound for $\lambda$ says that, closed on the same class, eventually at points, the condition $L_6$ holds for the point data at every $C$.

Lean: `GlobalTheory.BigTop.LambdaLowerBound₂`

**Theorem (Surjectivity and the lower bound).** The unitary group hypotheses imply surjectivity onto $X$ and the lower bound for $\lambda$.

Lean: `GlobalTheory.Fc.S0.ontoX_and_lamLow_of_unitaryGroupHypotheses'`

*Proof.* The Lean proof proves the two parts separately, and we did not unfold them.

1. Surjectivity uses twelve inputs. Eleven are fields, among them Clozel's cohomological representations, Chebotarev for primes of degree one, base change for definite unitary groups and rapid decay. The twelfth is the local Langlands statement from the literature record on Galois representations.
2. The lower bound uses seven fields: rapid decay, the Siegel-Weil formula, its convergence, the doubling method, the unramified doubling, Bernstein-Zelevinsky finiteness, and the formal degree of the compact dual.

$\square$

The first part reads three fields that rest on the open record. On the trunk these fields are proved.

**Remark (Formalization).** The theorem is in [SurjectiveAndLowWeightOfUnramifiedExponents.lean#L16](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SurjectiveAndLowWeightOfUnramifiedExponents.lean#L16) and dominates 19,399 declarations. The first part is `ontoX_of_hypotheses_alt_alt` in [OntoXOfPrints.lean#L28](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/OntoXOfPrints.lean#L28), with 19,069 declarations. Its local Langlands input is `llOf_alt (P.litN.loc.llc …)`, and `llOf_alt` returns its first argument. The second part is `lamLow_of_hypotheses_alt_alt` in [LamLowOfPublished.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LamLowOfPublished.lean#L17), with 312 declarations.

## Building the record

The first branch builds the record. It collects twenty-six linked rows in one structure, adds nine global facts and two derived rows, and then reads off the forty-six fields. The closed bound enters here, and the proof turns it into the field $N$ of the record.

**Definition (All rows).** Let $p$ be a parameter record and $N$ a property of family classes. The structure of all rows at $p$ is a list of twenty-six rows, each linked at $p$. Twenty-four of them give fields of the record: eight of the ten pointwise rows, fifteen of the eighteen rows on subclasses, and a row on the counting constants. The other two rows are the definite rows of the selection and the statement $N$.

Lean: `GlobalTheory.Fc.AllRowsAlt`

**Proposition (The closed bound gives NL).** Assume the hypotheses on the bound at two and three, the published inputs of the third layer, compatibility of geometric Galois representations, a series hypothesis, four local facts and RecTExists. Then for every $c_{\mathrm{dep}}$, the closed bound at $c_{\mathrm{dep}}$ implies that the slot norm row of $\mathrm{NL}$ is linked at the same parameters.

Lean: `UpperTheory.GalC.final_alt_alt`

*Proof.* The Lean proof is a separate subtree of Galois cohomology. We did not unfold it. $\square$

**Proposition (From rows to the record).** Assume the structure of all rows at a parameter record. Assume also nine global facts: the mass ratio for CM data, thin literature sets, decay of the Wu term for a gap, finite dimension of rows, three positivity rows, the mass ratio under volume and the genus mass at $2$. Then the record $\mathrm{HypsAlt}(N, DR)$ is not empty.

Lean: `GlobalTheory.Fc.nonempty_hyps_of_allRows_alt`

*Proof.* The Lean proof derives one more closed row, the size bound for the torus, from the mass ratio under volume and the genus mass at $2$. It joins the rows by the conjunction lemma. It chooses the class $\mathcal{A}$ and the selection $\sigma$ from the joined row. Then it fills the forty-six fields. We did not unfold the choice of $\mathcal{A}$ and $\sigma$. $\square$

**Theorem (Nonempty record from linked rows).** Assume the unitary group hypotheses, the rationality row, RecTExists, a real $c_{\mathrm{dep}}$, a grid $A$ with its eventual property, and the closed bound at $c_{\mathrm{dep}}$. Assume the functional row and the covolume row at the parameters of the extension of $c_{\mathrm{dep}}$ by $A$. Then $\mathrm{HypsAlt}(\mathrm{NL}, DR)$ is not empty, where $DR$ is the definite side condition.

Lean: `GlobalTheory.Fc.S0.StageU.hypotheses_nonempty_of_unramified_exponents_alt`

*Proof.* We give the steps of the Lean proof.

1. A proved lemma on large bundles gives the mass ratio for CM data, the stronger parameters and an existence statement for bundles.
2. The literature record on Galois representations and the local hypotheses of the unitary group hypotheses give the published inputs of the third layer and the series hypothesis.
3. The proof calls the second and third branches again.
4. The proposition on the closed bound turns it into a linked $\mathrm{NL}$ row. The four local facts are the fields on depth zero support, local finiteness, local Tate duality and the local Euler characteristic.
5. The lemma on stronger parameters moves the open statements and the $\mathrm{NL}$ row to the stronger parameters.
6. A proved lemma builds the structure of all rows. Its inputs are global Artin reciprocity, seven fields of the unitary group hypotheses, the two results of the second branch, RecTExists, the moved rows, the covolume row and the functional row.
7. The proposition from rows to the record ends the proof. Three of its nine global facts come from the second form of Siegel-Weil convergence.

We did not unfold steps 1, 2 and 6. $\square$

**Remark (Names).** The words "unramified exponents", "open orbit" and "third place" occur in names of theorems and files. They match no defined object in the code.

**Remark (Formalization).** The theorem is in [HypothesesNonemptyOfUnramifiedExponents.lean#L41](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/HypothesesNonemptyOfUnramifiedExponents.lean#L41), and its proof starts at [line 42](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/HypothesesNonemptyOfUnramifiedExponents.lean#L42). It dominates 88,131 declarations. Inside the row lemma, `hServ_of_linkR` uses global Artin reciprocity and dominates 10,829 declarations, and `lg1_sLp_sO_hTF` dominates 13,601. The derived torus row is `hTu_cTmin_of_genusMass hU hG`, and the choice is `UpperTheory.Top.classSel`. The fields `hLit`, `hWu`, `hRF`, `sTy`, `sNG`, `sM`, `hU` and `hG` of `HypsAlt` come from the global facts, not from rows of `AllRowsAlt`. The parts are these.

| Part | File | Declarations |
|---|---|---|
| `allRows_of_open0_alt` | [LinkROfIsLinked.lean#L50](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LinkROfIsLinked.lean#L50) | 33,892 |
| `large_unramified_exponent_bundles_exist_alt` | [MemberBundlesLargeUnramifiedExponents.lean#L69](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/MemberBundlesLargeUnramifiedExponents.lean#L69) | 19,960 |
| `UpperTheory.GalC.final_alt_alt` | [CFinal.lean#L19](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/CFinal.lean#L19) | 15,614 |
| `nonempty_hyps_of_allRows_alt` | [NonemptyHypsOfAllRows.lean#L19](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/NonemptyHypsOfAllRows.lean#L19) | 419 |
| `hyps_e_third_layer_ser_n_of_geometric_galois` | | 1,263 |

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked.

At this node every input is a hypothesis, but the trunk proves each one. The code proves terms of the sixty literature types, but nobody has compared each Lean statement with the paper it names. The full citations are in `links/literature.yaml`. The [Siegel-Weil chapter](/proof/siegel-weil/) treats the Siegel-Weil formula.

- I. N. Bernstein and A. V. Zelevinsky, *Induced representations of reductive p-adic groups I*, Ann. Sci. École Norm. Sup. 10 (1977), pages 441 to 472.
- J. Bernstein and B. Krötz, *Smooth Fréchet globalizations of Harish-Chandra modules*, Israel J. Math. 199 (2014), pages 45 to 111.
- A. Borel and Harish-Chandra, *Arithmetic subgroups of algebraic groups*, Ann. of Math. 75 (1962), pages 485 to 535.
- W. Casselman, *Canonical extensions of Harish-Chandra modules to representations of G*, Canad. J. Math. 41 (1989), pages 385 to 438.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- R. Howe, *Transcending classical invariant theory*, J. Amer. Math. Soc. 2 (1989), pages 535 to 552.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- S. S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- A. Weil, *Sur certains groupes d'opérateurs unitaires*, Acta Math. 111 (1964), pages 143 to 211.
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965), pages 1 to 87.
- A. V. Zelevinsky, *Induced representations of reductive p-adic groups II. On irreducible representations of GL(n)*, Ann. Sci. École Norm. Sup. 13 (1980), pages 165 to 210.
