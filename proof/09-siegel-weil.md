---
title: Siegel-Weil, the metaplectic representation and cusp forms
description: The literature inputs on the Siegel-Weil formula, the metaplectic representation and the decay of cusp forms. The page shows that the Lean code proves them, follows the proof of the Siegel-Weil formula for unitary groups, and says which ideas of timeline steps 3, 16 and 18 (the sixfold cover of GL_5, the relative trace formula, Cauchy-Schwarz on a projected Poincaré series) have no counterpart in the code.
lead: The literature node of the proof names a Siegel-Weil formula, two metaplectic representations, a convergent Siegel-Weil formula and a cusp decay bound. In the Lean code each of them is a theorem with a proof, not a citation. The largest is the Siegel-Weil formula on doubled unitary groups. This page follows its proof, and says what the code has in place of the period integrals and Poincaré series of the note.
level: L1
status: draft
lean:
  - name: UpperTheory.LiteratureTheorems.siegel_weil_std_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 563
  - name: GlobalTheory.ThK.Dbl.SiegelWeilStd
    file: Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesS.lean
    line: 11
  - name: PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStd.lean
    line: 8
  - name: PositivityTheory.SiegelWeilFormula.Atop.siegelWeilStd_of
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/FockVacuumBounds/SiegelWeilStdLeaves.lean
    line: 40
  - name: PositivityTheory.SiegelWeilFormula.CTSplit
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean
    line: 155
  - name: PositivityTheory.Rg.Sw.HSt.holLeadB
    file: Development/WeilBound/RepresentationTheoryGL/SiegelWeilProof/HolomorphicContinuation/CayleyCosetSums/HolLeadB.lean
    line: 9
  - name: UpperTheory.LiteratureTheorems.metaplectic_representation_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 463
  - name: GlobalTheory.Published.MetaplecticRepresentation
    file: Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/MetaplecticRepresentation.lean
    line: 94
  - name: UpperTheory.LiteratureTheorems.real_metaplectic_representation_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 491
  - name: GlobalTheory.Published.RealMetaplecticRepresentation
    file: Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/RealMetaplecticRepresentation.lean
    line: 351
  - name: UpperTheory.LiteratureTheorems.siegelWeilU_unitary_convergent_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 581
  - name: HeckeCharacterZeroLocus.SiegelWeilU.SiegelWeilUnitaryConvergent
    file: Formalism/UnipotentAdelicQuotients/SiegelWeilUnitaryConvergent.lean
    line: 46
  - name: UpperTheory.LiteratureTheorems.cusp_decay_sobolev_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 337
  - name: GlobalTheory.Published.CuspDecaySobolev
    file: Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/ExistsGrowthSobNeTopOfIsAutFunSm.lean
    line: 18
  - name: UpperTheory.Lit.Cusp.exists_cusp_form_theta_period_ne_zero
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/Period.lean
    line: 18
  - name: GlobalTheory.T.poincareSeries_pairing_ne_zero_of_large_level
    file: Development/AbelianVarietyTheory/Proofs/TwistedOperators/PoincareSeriesIdentityTermDominatesStatement.lean
    line: 11
needs:
  - tag: 6WB6TKE70H
    text: Theta correspondence
  - tag: H3Q2703KKV
    text: Weil representation
  - tag: 0R9R0Y1HDK
    text: Unitary group
  - tag: 8NJ7XY6F1S
    text: Hermitian form
  - tag: NYJFYZ0B4M
    text: Adele ring
  - tag: KPYFGB342X
    text: Hecke character
  - tag: GE020MY43M
    text: Schwartz space
  - tag: CE0V9686M8
    text: Haar measure
  - tag: WEGEXJBX26
    text: Fundamental domain
  - tag: 3NZBZXYWAJ
    text: Eisenstein series
  - tag: 68SJQEC11F
    text: Automorphic form
  - tag: 9AZ164C298
    text: Cuspidal representation
next:
  - text: The literature inputs
    path: proof/literature/
    sub: the parent node, where these statements are named
  - text: Theta integrals and local matching
    path: proof/theta-matching/
    sub: where the Siegel-Weil formula is used
  - text: The Galois row
    path: proof/galois-row/
    sub: a second Siegel-Weil statement, siegelWeilStd_k
  - text: Bessel periods, seesaw and separation of functionals
    path: proof/bessel-seesaw/
    sub: where SiegelWeilUnitaryConvergent is a hypothesis
  - text: CM curves, the invariant derivation and divisibility
    path: proof/cm-divisibility/
    sub: the other literature inputs of the note
steps: []
---
## Result

The node `every_character_of_literature_of_vWin` (see [the literature inputs](/proof/literature/)) takes a bundle `O : OpenLiteratureStatements` and gets many named statements from it. Five of them are the subject of this page.

| Theorem | What it gives | Line |
|---|---|---|
| `siegel_weil_std_of_literature` | `SiegelWeilStd`, the Siegel-Weil formula for doubled unitary groups | [L563](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L563) |
| `metaplectic_representation_of_literature` | `MetaplecticRepresentation`, the Weil representation of the metaplectic cover of $\mathrm{Sp}_{2n}(\mathbb{R})$ | [L463](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L463) |
| `real_metaplectic_representation_of_literature` | `RealMetaplecticRepresentation`, the same with a Lie algebra action | [L491](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L491) |
| `siegelWeilU_unitary_convergent_of_literature` | `SiegelWeilUnitaryConvergent`, finite volume and Siegel densities | [L581](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L581) |
| `cusp_decay_sobolev_of_literature` | `CuspDecaySobolev`, rapid decay of cusp forms with a Sobolev bound | [L337](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L337) |

Each theorem takes `O` as an argument and does not read it. Each one is a call to a theorem that the code proves. So in the Lean code these statements are not assumptions. They are proved results with names from the literature.

The main result is `SiegelWeilStd` ([HypothesesS.lean#L11](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesS.lean#L11)). In words: let $E/F$ be a CM extension of number fields. Let $A$ be a definite Hermitian (or skew-Hermitian) space of size $m$, and $Y$ a skew-Hermitian (or Hermitian) space of size $n$. Let $\omega$ be a Weil representation of the doubled group $G_2 = U(Y \oplus -Y)$ on Schwartz functions $\Phi$, with a Hecke character $\chi$. Then the Siegel Eisenstein series $E(x, s, \Phi)$ has a value at $s_0 = \tfrac{m-n}{2}$, and

$$ E(x, s_0, \Phi) = c \cdot \frac{1}{\mu(D)} \int_{D} \theta\big(\omega(x) S_g \Phi\big) \, d\mu(g), \qquad c = \begin{cases} 1 & n < m, \\ 2 & n \ge m. \end{cases} $$

Here $D$ is a [[fundamental domain|WEGEXJBX26]] for $U_A(F)$ in $U_A(\mathbb{A})$, $\mu$ is a [[Haar measure|CE0V9686M8]], $S_g$ is the action of $g \in U_A(\mathbb{A})$, and $\theta(\Phi) = \sum_{\xi} \Phi(\xi)$ is the theta sum over rational points. The theorem `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd` ([SiegelWeilStd.lean#L8](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStd.lean#L8)) proves it with no hypotheses.

## Idea

Timeline step 3 of the note says that the quantity $N$ of the note is automorphic, because a function $\mu$ comes from a theta function on a sixfold cover of $\mathrm{GL}_5$, as a period integral of thetas. Step 16 uses a relative trace formula on the same cover, and bounds a projected Poincaré series with Cauchy-Schwarz. Step 18 is about covolumes and the index of theta series.

The Lean code does not contain a cover of $\mathrm{GL}_5$, a relative trace formula, or a Cauchy-Schwarz bound on a projected Poincaré series. What it does contain is near to these ideas, on unitary groups.

- A theta integral (a period of a theta function over $U_A(F) \backslash U_A(\mathbb{A})$) is an Eisenstein series. This is the Siegel-Weil formula above. It is the closest counterpart to "a period integral of thetas is automorphic". The proof is the classical one: compare Fourier coefficients, then use an induction on $n$.
- The metaplectic cover is the double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$, not a sixfold cover of $\mathrm{GL}_5$.
- Covolumes appear as the finite volume of $U(F) \backslash U(\mathbb{A})$ and as Siegel densities, in `SiegelWeilUnitaryConvergent`.
- Poincaré series appear in one place: to build a cusp form whose theta period is not zero. The identity term of the series is larger than the rest at large level. This is a lower bound, not a Cauchy-Schwarz upper bound.

## Before you read

You need these ideas.

- A number field $F$, a CM extension $E/F$, and the [[adele ring|NYJFYZ0B4M]].
- [[Hermitian forms|8NJ7XY6F1S]], skew-Hermitian forms and their [[unitary groups|0R9R0Y1HDK]].
- The [[Weil representation|H3Q2703KKV]], its Schrödinger model, and the [[theta correspondence|6WB6TKE70H]].
- [[Schwartz functions|GE020MY43M]] and [[Hecke characters|KPYFGB342X]].
- [[Eisenstein series|3NZBZXYWAJ]] induced from a Siegel parabolic, and their Fourier coefficients.
- [[Automorphic forms|68SJQEC11F]] and cusp forms (see [[cuspidal representation|9AZ164C298]]).

## Plan

1. Read the statement `SiegelWeilStd`.
2. The Schrödinger model: the formulas that the proof uses.
3. The case $n < m$: Fourier coefficients of both sides agree.
4. The case $n = m$: the constant 2.
5. The case $m < n$: an induction on $n$ with a constant term split.
6. Holomorphy at $s_0$: the `SiegelWeilProof` modules.
7. Where the formula is used: `theoremK_head2`.
8. The two metaplectic statements.
9. Finite volume and Siegel densities (timeline step 18).
10. Cusp decay and Poincaré series (timeline steps 3 and 16).

## The steps

### Step 1. The statement

The statement is long. It quantifies over the fields $F, E$, the conjugation $\sigma$, a base datum `B` (with an additive character $\psi$), the sizes $m, n \ge 1$, and the spaces `A : Spc F E m` and `Y : Spc F E n`. It asks that $A$ is definite (`min r s = 0`), and that one of $A, Y$ is Hermitian and the other is skew-Hermitian. Then it takes:

- a Hecke character $\chi$ with `ResEtaPow χ m` (its restriction to $\mathbb{A}_F^\times$ is $\eta^m$, where $\eta$ is 1 on norms from $E$ and on a given subgroup $K$, and $-1$ elsewhere);
- a doubling datum `IsDbl B.ψ dd χ om S l`: a Weil representation `om` of $G_2(\mathbb{A})$, the action `S` of $U_A(\mathbb{A})$, and a functional `l` with $\sum_{y} l(\cdot)$ over rational $y$ equal to `thetaSum`;
- a frame `b` for the doubled form, the standard maximal compact `K`, and a height `a` with $a(pk) = |\det t|$;
- a Haar measure $\mu$ and a fundamental domain $D$;
- a $K$-finite Schwartz function $\Phi$.

The conclusion is `EisValueAt`. It says: for each $x$, there is a meromorphic function that is equal to the Eisenstein series of the section $x \mapsto l(\omega(x)\Phi)$ for large $\operatorname{Re}(s)$, is analytic at $s_0$, and takes the value $c \cdot \tfrac{1}{\mu(D)}\int_D \theta(\omega(x)S_g\Phi)\,d\mu(g)$ there. The section is flattened by `flat`: $f_s(x) = a(x)^{s - s_0} f(x)$ ([Hypotheses2.lean#L48](lean:Development/WeilBound/ThetaLifts/LatticeBasics/Hypotheses2.lean#L48)).

### Step 2. The Schrödinger model

The proof works with the data bundle `SD` in [AuxiliaryPrimeFunction.lean#L34](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L34). It defines a transform $T\Phi(X) = l(\rho(X b_2^T)\Phi)$ on $m \times n$ matrices $X$. Five properties are bundled in `TAll`.

- `TBij`: $T$ is a bijection onto the Schwartz space of matrices.
- `TPar` ([L178](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L178)): the Siegel parabolic acts by explicit formulas. The unipotent element $\begin{pmatrix} 1 & \beta \\ 0 & 1 \end{pmatrix}$ multiplies $T\Phi(X)$ by $\psi\big(-\tfrac12 \operatorname{tr}(\beta \, \mathrm{gram}(X,X))\big)$. The Levi element $\begin{pmatrix} t & 0 \\ 0 & u \end{pmatrix}$ gives $\chi(\det t)\,|\det t|^{m/2}\, T\Phi(X u^{-T})$. The group $U_A$ acts by $X \mapsto g^{-1}X$.
- `TWeyl` ([L186](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L186)): the Weyl element acts by a Fourier transform, $T(\omega(w)\Phi)(X) = \int \psi\big(\varepsilon \operatorname{tr}\,\mathrm{gram}(X,Z)\big)\, T\Phi(Z)\,d\nu(Z)$.
- `TTheta`: $\sum_X T\Phi(X) = \theta(\Phi)$ over rational $X$.
- `ThetaAuto`: $0 < \mu(D) < \infty$, the theta integral $I(\Phi)$ is continuous, and it is left invariant under $G_2(F)$.

The proof gets `TAll` from a Poisson summation theorem (`TW.Twp.poisson`) in `siegelWeilStd_pre` ([SiegelWeilStdPre.lean#L19](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdPre.lean#L19)).

### Step 3. The case n < m

Here the constant is 1. The proof compares Fourier coefficients along the unipotent radical of the Siegel parabolic. For a nondegenerate Hermitian matrix $T$ of size $n$, the orbit integral is

$$ \mathrm{orb}_T(\Phi) = \frac{1}{\mu(D)}\int_D \sum_{X \,:\, \mathrm{gram}(X,X) = -2T} T\Phi(g^{-1}X)\, d\mu(g). $$

The code uses the letter $T$ both for this matrix and for the transform $T\Phi$ of Step 2.

Two statements carry the comparison.

- `ThetaCoef` ([L197](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L197)): the $T$-th Fourier coefficient of the theta integral $I(\Phi)$ at $x$ is $\mathrm{orb}_T(\omega(x)\Phi)$.
- `WhitK` ([L266](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L266)): for $n < m$, the $T$-th Fourier coefficient of the Eisenstein series (a Whittaker-type integral over $\beta$) is holomorphic at $s_0$ with value $\mathrm{orb}_T(\omega(x)\Phi)$.

From these, `Main` ([L271](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L271)) says that the Eisenstein series is holomorphic at $s_0$ with value $I(\Phi)(x)$. The proof also needs the degenerate coefficients and absolute convergence (`AbsThm`). Then `HeadOf` turns `Main` into `SWStdLt`, the statement for $n < m$.

### Step 4. The case n = m

Here $s_0 = 0$ and the constant is 2. The statement `MainEq` covers this case. It is proved in `Atop.mainEq_of`, from the same inputs as `Main` and a statement `WhitEq` on the Fourier coefficients in the case $m = n$.

### Step 5. The case m < n

Here the proof is an induction on $n$. A lower rank datum `LD` ([LowerRankDatum.lean#L94](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L94)) embeds a problem of size $n-1$ into the problem of size $n$. Three statements do the work.

- `OrbRes` ([L175](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L175)): for $m < n$ there is no $X$ of full rank, so each nondegenerate orbit integral is 0. The other orbit integrals are restrictions of orbit integrals of the smaller problem.
- `CTSplit` ([L155](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L155)): the constant term along the unipotent of the embedding is a Fourier coefficient of a lower rank Eisenstein series, plus a second term that scales by $e^{\tau(n-2z)}$.
- `Step` ([L178](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L178)): if the formula with constant 2 holds at rank $n-1$, it holds at rank $n$, for $m < n$.

`MainLe` puts `MainEq` and `Step` together and gets the formula with constant 2 for all $m \le n$. The statement `FieldOf` ([L194](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L194)) says that `EisBL`, `SecK`, `SWStdLt` (the case $n < m$) and `MainLe` (the case $m \le n$) give `SiegelWeilStd`. The theorem `Atop.fieldOf` proves it. The theorem `Atop.siegelWeilStd_of` ([SiegelWeilStdLeaves.lean#L40](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/FockVacuumBounds/SiegelWeilStdLeaves.lean#L40)) does this assembly. It is a list of 16 `have` lines and one `exact`. The constant term split itself is proved in `Act.ctSplit_of` ([CtSplitOf.lean#L10](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilActions/CtSplitOf.lean#L10)).

### Step 6. Holomorphy at s0

The induction needs to know that the Eisenstein series has no pole at $s_0$ in the range $m < n$. This is `HolLead` ([LowerRankDatum.lean#L20](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L20)). It is proved by `holLeadB` ([HolLeadB.lean#L9](lean:Development/WeilBound/RepresentationTheoryGL/SiegelWeilProof/HolomorphicContinuation/CayleyCosetSums/HolLeadB.lean#L9)), in the folder `CayleyCosetSums`. The folder `Development/WeilBound/RepresentationTheoryGL/SiegelWeilProof` has 635 modules and 5,141 declarations. 4,940 of them are in the spine. Most of its large nodes are shared with other parts of the proof, so their dominator is `everyCharacter`, not `siegelWeilStd`. Examples are `holLeadB` (660), `Rg.Sw.Glob.top7` (658) and `Rg.Sw.lc_of` (619). The closure of `Fin.siegelWeilStd` has 21,500 declarations. 3,682 of them are in the `SiegelWeilProof` modules.

The meromorphic continuation of the Eisenstein series is a separate statement, `EisBL` ([HypothesesE.lean#L46](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesE.lean#L46)). It is proved by `PositivityTheory.RgEis.Hd.eisBL`.

### Step 7. Where the formula is used

The theorem `theta_integrals_agree_and_local_matching_of_literature` ([L565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565)) is `theoremK_head2 (eis_bl O) (siegel_weil_std O)`. It gives `ThetaIntegralsAgree` and `LocalMatching`, the two theta inputs of [the theta matching chapter](/proof/theta-matching/). So the Siegel-Weil formula is the source of the statement that two theta integrals into the same unitary group are proportional. Other users of `SiegelWeilStd` in the spine include `theoremK_head2_of_mod`, `closeSph`, `swAnisoX_of` and `siegelWeilAniso_of`.

### Step 8. The metaplectic representation

`MetaplecticRepresentation` ([MetaplecticRepresentation.lean#L94](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/MetaplecticRepresentation.lean#L94)) says: for each finite index set, there are a topological group $G$ and a covering map $\mathrm{pr} : G \to \mathrm{Sp}(\mathbb{R})$ onto, with a kernel of 2 elements, a unitary representation $\Omega$ on $L^2$ and a representation $\omega$ on Schwartz space. They agree on Schwartz functions, $\omega$ is continuous, $\omega$ intertwines the Heisenberg action, and the nontrivial kernel element acts by $-1$. For the Gaussian $\varphi_0(x) = e^{-\pi x \cdot x}$ it fixes the square of the vacuum matrix coefficient:

$$ \Big(\int \omega(g)\varphi_0 \, \overline{\varphi_0}\Big)^2 \det\big(\mathrm{holPart}(\mathrm{pr}\,g)\big) = \Big(\int \varphi_0\overline{\varphi_0}\Big)^2, \qquad \mathrm{holPart}\begin{pmatrix} A & B \\ C & D\end{pmatrix} = \tfrac12\big((A+D) + i(C-B)\big). $$

The proof is `GlobalTheory.metaplecticRepresentation_holds` ([MetaplecticRepresentationHolds.lean#L17](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/MetaplecticRepresentationHolds.lean#L17)).

`RealMetaplecticRepresentation` ([RealMetaplecticRepresentation.lean#L351](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/RealMetaplecticRepresentation.lean#L351)) is a second version. It has the same kind of double cover. It also says that $\omega$ is smooth along smooth curves, and that each $X$ in the Lie algebra $\mathfrak{sp}$ gives a one-parameter subgroup that lifts $\exp(tX)$, with derivative the quadratic operator of $X$. Both statements are also fields of the bundle `ThetaLocalInputs`.

### Step 9. Finite volume and Siegel densities

`SiegelWeilUnitaryConvergent` ([SiegelWeilUnitaryConvergent.lean#L46](lean:Formalism/UnipotentAdelicQuotients/SiegelWeilUnitaryConvergent.lean#L46)) says: for a CM extension $E/F$ and a nondegenerate Hermitian matrix $J$ of size $M$, two facts hold. The fundamental domain $\mathcal{F}$ of $U_J(F)$ in $U_J(\mathbb{A})$ has finite volume. And `SiegelDensities` ([L18](lean:Formalism/UnipotentAdelicQuotients/SiegelWeilUnitaryConvergent.lean#L18)) holds: for $2n < M$ and nondegenerate Hermitian $T$, the mean over $\mathcal{F}$ of the theta sum over $X$ with $\mathrm{gram}(X) = T$ is a product of local densities, $g_\infty(T)\prod_v g_v(T)$. This is the convergent range of the Siegel-Weil formula, in the form of Siegel's mass formula.

This is the code's counterpart of "covolumes" in timeline step 18. The proof `CompanionTheory.SW.siegelWeilUnitaryConvergent` has two parts: `finVol_unitaryGroup` and `siegel_densities_of_hermitian_form`. The spine has 43 users of this statement. The covolume bound `CovolumeBoundOfX` of [the theta matching chapter](/proof/theta-matching/) is a different statement ([LiftLambdaBound.lean#L60](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LiftLambdaBound.lean#L60)).

### Step 10. Cusp decay and Poincaré series

`CuspDecaySobolev` ([ExistsGrowthSobNeTopOfIsAutFunSm.lean#L18](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/ExistsGrowthSobNeTopOfIsAutFunSm.lean#L18)) says: for each open $U$ and each $N, M$, there are $d$ and $C$ so that each smooth, automorphic, $U$-invariant cusp function $\varphi$ with finite Sobolev growth norm satisfies

$$ \mathrm{decay}_M(\varphi) \le C \cdot \mathrm{growthSob}_{d,N}(\varphi). $$

So cusp forms decay faster than each power of the height, with a constant controlled by a Sobolev norm. The proof goes through `cuspDecaySobolev_of_bound` and `CuspGeo.cuspDecayBound`.

The Poincaré series of the code are in the proof of `FunctionalsSeparate`, in the theorem `functionalsSeparate_of_howeUnram_of_siegelWeil` ([FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17)). The chain is this.

- `exists_cusp_form_theta_period_ne_zero` ([Period.lean#L18](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/Period.lean#L18)): for each nonzero row $t$ there are a cusp form $y$ in `CoreForms` and vectors $v, w$ with $\mathrm{per}_0(y(v), t(w)) \ne 0$. This is a theta period that is not zero.
- `exists_multT_eq_poin` ([ExistsMultTEqPoin.lean#L75](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/ExistsMultTEqPoin.lean#L75)): a Poincaré series is a cusp form. It uses absolute convergence and moderate growth of the series.
- `poincareSeries_pairing_ne_zero_of_large_level` ([PoincareSeriesIdentityTermDominatesStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/PoincareSeriesIdentityTermDominatesStatement.lean#L11)): if $2e^{Q + (6r + 9)|\tau|} \le s^{|\tau|}\sqrt{N\mathfrak{m}}$, where $r$ is the rank and $N\mathfrak{m}$ the norm of the level, then $\int_{\mathcal{F}} \mathrm{poin}\cdot\varphi \ne 0$. The identity term is larger than the sum of the other terms.

The theorem `functionalsSeparate_of_howeUnram_of_siegelWeil` takes `GlobalTheory.Published.SiegelWeilUnitaryConvergent` as an input. That is a second statement with the same name as the one in Step 9, in a different namespace.

## Where it is in the code

Sizes are dominator sizes from the current spine: the number of declarations that only this node reaches on the way down from the top. A small size does not mean a small proof. It can mean that the proof is shared with other parts of the code. All paths are relative to `lean/src`.

| Declaration | Module (file) | Size |
|---|---|---|
| `UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature` | `ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean` | 8,520 |
| `PositivityTheory.ThKR.theoremK_head2` | `ThetaLifts/Reductions/FiniteClosure/TheoremKOfMod.lean` | 6,823 |
| `UpperTheory.LiteratureTheorems.siegel_weil_std_of_literature` | `ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean` | 1,652 |
| `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd` | `SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStd.lean` | 1,651 |
| `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd_of_ct` | `SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdOfCt.lean` | 1,172 |
| `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd_pre` | `SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdPre.lean` | 1,128 |
| `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd_mid` | `SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdMid.lean` | 798 |
| `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd_of` | `SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdOf.lean` | 621 |
| `PositivityTheory.SiegelWeilFormula.Act.ctSplit_of` | `SiegelWeilFormula/SiegelWeilActions/CtSplitOf.lean` | 464 |
| `PositivityTheory.SiegelWeilFormula.Atop.siegelWeilStd_of` | `SiegelWeilFormula/FockVacuumBounds/SiegelWeilStdLeaves.lean` | 54 |
| `PositivityTheory.Rg.Sw.HSt.holLeadB` | `SiegelWeilProof/HolomorphicContinuation/CayleyCosetSums/HolLeadB.lean` | 660 (shared) |
| `UpperTheory.LiteratureTheorems.real_metaplectic_representation_of_literature` | `ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean` | 133 |
| `UpperTheory.LiteratureTheorems.metaplectic_representation_of_literature` | same file | 42 |
| `UpperTheory.LiteratureTheorems.siegelWeilU_unitary_convergent_of_literature` | same file | 6 |
| `UpperTheory.LiteratureTheorems.cusp_decay_sobolev_of_literature` | same file | 5 |
| `UpperTheory.Lit.functionalsSeparate_of_howeUnram_of_siegelWeil` | `LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean` | 4,530 |
| `UpperTheory.Lit.Cusp.exists_cusp_form_theta_period_ne_zero` | `RealBands/Period.lean` | 448 |
| `UpperTheory.Lit.Cusp.exists_multT_eq_poin` | `RealBands/ExistsMultTEqPoin.lean` | 186 |
| `GlobalTheory.T.poincareSeries_pairing_ne_zero_of_large_level` | `TwistedOperators/PoincareSeriesIdentityTermDominatesStatement.lean` | 65 |

The `ThirdPlaceSeries` and `LocalTypeDictionary` files are in `Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/`. The `RealBands` files are in `Development/AutomorphicArithmetic/ThetaCorrespondence/`. The `ThetaLifts` file is in `Development/WeilBound/`. The `SiegelWeilFormula` files are in `Development/WeilBound/CoreStatements/AutomorphicKernels/`. The `SiegelWeilProof` files are in `Development/WeilBound/RepresentationTheoryGL/`. The `TwistedOperators` file is in `Development/AbelianVarietyTheory/Proofs/`.

Closures (all declarations used, shared or not, without Mathlib) are larger: `Fin.siegelWeilStd` 21,500, `theoremK_head2` 23,711, `theta_integrals_agree_and_local_matching_of_literature` 38,926, the metaplectic proof 1,094, the real metaplectic proof 1,049, the convergent Siegel-Weil proof 5,387 and the cusp decay proof 2,722.

## Notes

- No counterpart in the code: the sixfold cover of $\mathrm{GL}_5$ (timeline steps 3 and 16). A search for a cover of $\mathrm{GL}_5$ finds nothing. The only name with `GL5` is a one-line statement `GL5LogLValueBoundByZeta`. The only cover in this part of the code is the double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$.
- No counterpart in the code: the statement "$N$ is automorphic" (timeline step 3). The code has no automorphic form built from the counting function $N$ of the note. The nearest result is the Siegel-Weil formula, which says that a theta integral on a unitary group is an Eisenstein series.
- No counterpart in the code: the relative trace formula (timeline step 16). The name `relTrace` exists, but it is a trace of fields and is not related.
- No counterpart in the code: a Cauchy-Schwarz bound on a projected Poincaré series (timeline step 16). Cauchy-Schwarz appears only as general lemmas. The Poincaré series of the code give a lower bound (a period is not zero), not an upper bound.
- No counterpart in the code: the index of theta series (timeline step 18). The covolume part of step 18 corresponds to the finite volume in `SiegelWeilUnitaryConvergent` and to `CovolumeBoundOfX`. Congruences between lifts and forms are not on this page.
- The folder `Development/AbelianVarietyTheory/BlockTheory/PoincareCuspForms` has 18 files and 390 declarations, but only 66 are in the spine and each has size at most 3. Its name does not describe its content. The Poincaré series of Step 10 are in other folders.
- [The literature inputs](/proof/literature/) calls `siegel_weil_std_of_literature` a leaf citation. That word means a one-line theorem that calls a proof in another file. This page follows that proof (Steps 2 to 6).
- The Galois row uses a separate Siegel-Weil statement, `siegelWeilStd_k`, with its own copies of the definitions (`TPar_k`, `ThetaCoef_k`, `CTSplit_k`). See [the Galois row](/proof/galois-row/). This page does not compare the two.
- This page does not unfold the proofs of `WhitK`, `WhitEq`, `CTSplit`, `HolLead` or `AbsThm`. It does not check that each statement matches the published theorem of the same name.
- The Lean code is not reviewed by people. The site does not claim that the proof is correct. The [trust report](/trust/) says what has been checked.
