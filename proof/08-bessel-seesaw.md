---
title: Bessel periods, seesaw and separation of functionals
description: The branch of the unitary hypotheses node that proves FunctionalsSeparate. It says that a Bessel period of an iterated theta lift is not zero, and that one real test vector works for all inputs at once. The page also says which ideas of the timeline (GGP determinants, independence of the Hecke characters) have no counterpart in the Lean code.
lead: The timeline says that the period of an iterated theta lift is a Bessel period, and that interlacing weights control it. The Lean code has a theorem of this shape, called FunctionalsSeparate. This page shows what it states, how the proof goes up a tower of Bessel and Fourier-Jacobi periods, and where the seesaw is.
level: L1
status: draft
lean:
  - name: UpperTheory.Lit.functionalsSeparate_of_howeUnram_of_siegelWeil
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean
    line: 17
  - name: UpperTheory.Lit.real_functionals_separate_of_hypothesis
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/RealFunctionalsSeparateOfHypothesis.lean
    line: 15
  - name: GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup.FunctionalsSeparate
    file: Development/AbelianVarietyTheory/BlockTheory/DivisorBase/LevelPlusSubgroup.lean
    line: 83
  - name: GlobalTheory.FunObj.Bplus
    file: Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean
    line: 286
  - name: GlobalTheory.FunObj.thetaChi
    file: Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean
    line: 263
  - name: GlobalTheory.FunObj.fPsiPhi
    file: Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean
    line: 326
  - name: GlobalTheory.T.exists_seesaw_pair_of_theta_data
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/ExistsSeesawPairOfThetaData.lean
    line: 40
  - name: GlobalTheory.SepRows.PairEx
    file: Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ParRowZero.lean
    line: 17
  - name: GlobalTheory.SepRows.per0
    file: Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean
    line: 81
  - name: GlobalTheory.SepRows.Ascent
    file: Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean
    line: 127
  - name: GlobalTheory.T.bessel_period_nonvanishing_ascent_of_depth_data
    file: Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthDataStatement.lean
    line: 11
  - name: GlobalTheory.Asc.ascent_of_depFixed
    file: Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthData.lean
    line: 21
  - name: GlobalTheory.T.dependence_fixed
    file: Development/AbelianVarietyTheory/Proofs/TwistedOperators/DependenceFixedStatement.lean
    line: 11
  - name: GlobalTheory.Asc.UpLast
    file: Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/TowerEx.lean
    line: 155
  - name: GlobalTheory.SepRows.weakSep_of_steps
    file: Development/AbelianVarietyTheory/Proofs/TwistedOperators/RowSeparationByRealFunctionalsOfChainSteps.lean
    line: 71
  - name: UpperTheory.Lit.Bur.BurGapPos
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/BurGapOfHyp.lean
    line: 33
  - name: UpperTheory.Lit.Bur.separate_of_burGapPos
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/SepGap.lean
    line: 222
  - name: GlobalTheory.SepReal.Interlaced
    file: Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ProjExists.lean
    line: 34
  - name: PI.BesselPeriodGGP.BesselPeriodGGP
    file: Formalism/PeriodIntegrals/BesselPeriodGGP.lean
    line: 105
  - name: UpperTheory.Lit.Rallis.RallisIPProof.rallis_of_dm
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/FockModels/RallisDM.lean
    line: 24
  - name: UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 44
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
  - tag: WEGEXJBX26
    text: Fundamental domain
  - tag: 68SJQEC11F
    text: Automorphic form
  - tag: SV5EEBF861
    text: Cusp form
  - tag: B33WNK1SVN
    text: Harish-Chandra module
next:
  - text: The unitary hypotheses node
    path: proof/unitary-hypotheses/
    sub: the parent node, which asks for FunctionalsSeparate
  - text: Theta matching
    path: proof/theta-matching/
    sub: the theta lifts and the local matching
  - text: The trunk
    path: proof/trunk/
    sub: the map of the proof
  - text: Block determinants and theta Parseval
    path: proof/determinants/
    sub: the other proof that a theta lift is not zero
  - text: The Siegel-Weil formula
    path: proof/siegel-weil/
    sub: the input SiegelWeilUnitaryConvergent
  - text: The Weil bound
    path: proof/weil-bound/
    sub: a related chapter
  - text: CM divisibility
    path: proof/cm-divisibility/
    sub: a related chapter
steps: []
---
## Result

The [unitary hypotheses node](/proof/unitary-hypotheses/) needs a statement called `FunctionalsSeparate`. It gets it from one theorem:

```lean
theorem functionalsSeparate_of_howeUnram_of_siegelWeil (P : ThetaLocalInputs)
    (hH : GlobalTheory.Hk3.HoweUnram) (hSW : GlobalTheory.Published.SiegelWeilUnitaryConvergent) :
    FunctionalsSeparate :=
  real_functionals_separate_of_hypothesis P hH hSW realInputE_holds
```

This is at [FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17). Its dominator subtree has 4,530 declarations.

In words, `FunctionalsSeparate` says this. Take an iterated theta lift of a form $u$ along a row of $m$ steps, and take its Bessel period against a vector valued form $\Psi$ on a smaller unitary group. For families with large parameters, there is one real test datum $(\rho, \xi)$, chosen from the input vector $w$ only, such that this Bessel period is not zero for every nonzero Hecke eigen-direction $t$. So the Bessel periods separate the inputs.

The proof has two parts. The first part goes up a tower of Bessel and Fourier-Jacobi periods. It is proved in Lean with no literature hypothesis. The second part is a local multiplicity one statement at the real place. It turns "for each $t$ there is a test datum" into "one test datum for all $t$".

The Lean code is not reviewed by a person. It compiles, but this page does not claim that the statements are the intended ones.

## Idea

The timeline of the plan has two steps that this page compares with the code:

- Step 7: "Determinants for $W(\cdot)$ that contain the GGP periods. The values $0$ and $1$ mean interlacing weights."
- Step 12: "Seesaw: the period of the iterated lift is a Bessel period, and it does not depend on the Hecke characters (Rallis)."

The code has the first half of Step 12 in a precise form. The quantity in `FunctionalsSeparate` is, by definition, a Bessel period (a GGP period) of an iterated theta lift. The proof that it is not zero uses a seesaw identity at the bottom of a tower, and then goes up one rung at a time. Each rung changes a Fourier-Jacobi period into a Bessel period, or back. This is the method of Ginzburg, Rallis and Soudry for the descent.

The code has interlacing weights only as a sign condition on Harish-Chandra parameters at the real place. The signs take values in `Bool`, so they are the "$0$ and $1$" of the timeline. This page did not find a determinant whose entries are GGP periods. It also did not find a statement that the period does not depend on the Hecke characters. See the Notes.

## Before you read

- The [[theta correspondence|6WB6TKE70H]] for a pair of [[unitary groups|0R9R0Y1HDK]], and the [[Weil representation|H3Q2703KKV]].
- [[Hermitian forms|8NJ7XY6F1S]] over a CM field $E$, and the [[adele ring|NYJFYZ0B4M]] $\mathbb A$.
- [[Hecke characters|KPYFGB342X]]. In the code, the splitting characters of a Weil datum are maps $(\mathbb A_E)^\times \to S^1$.
- A [[fundamental domain|WEGEXJBX26]] for $U(V)(F)$ in $U(V)(\mathbb A)$. The code writes each automorphic integral as an integral over such a set.
- [[Automorphic forms|68SJQEC11F]] and [[cusp forms|SV5EEBF861]], and the Bessel and Fourier-Jacobi periods of Gan, Gross and Prasad.
- [[Harish-Chandra modules|B33WNK1SVN]] and discrete series of $U(p,q)$, for the real place.

## Plan

1. Define the iterated lift `thetaChi` and the Bessel period `Bplus`.
2. State `FunctionalsSeparate`.
3. Follow the proof of `real_functionals_separate_of_hypothesis`.
4. Look at the "seesaw pair" `PairEx`.
5. Define the bottom period `per0` and say why it is not zero.
6. Go up the tower: `Ascent`, proved with no literature input.
7. Get one nonzero period for each $t$: `WeakSep`.
8. Get one test datum for all $t$: real multiplicity one, `BurGapPos`.
9. Say where interlacing appears.

## The steps

### Step 1. The iterated lift and the Bessel period

The code works with a grid of hermitian spaces $V_{i,j}$ over $E$, with nodes such as `.grid i 0`, `.core i` and `.top 0`. For a node $X$, `Fn G X` is the type of functions on $U(V_X)(\mathbb A)$. The type `M : Vol G` gives each node a set `M.fd X` and a measure `M.ν X`, and an integral over `M.fd X` plays the role of an integral over $[U(V_X)] = U(V_X)(F) \backslash U(V_X)(\mathbb A)$.

One lift step along an arrow $a$ of the grid is `liftA`. It is the integral of a theta kernel against the input form, over the fundamental set of the source. The iterated lift `liftP` composes these steps along a path. For a form $u$ on $U(V_{0,0})(\mathbb A)$, a real datum $\rho$ and a Schwartz datum $\Phi$, the code sets ([BplusOfEquivariant.lean#L263](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L263))

$$\theta_\chi(\rho, \Phi, u) = \theta_{m-1} \circ \dots \circ \theta_0 (u),$$

the lift along the row path from `.grid 0 0` to `.grid m 0`. Each $\theta_i$ uses the Weil datum on the edge $i$ and the Schwartz function given by $(\rho, \Phi)$.

The Bessel period is `Bplus` ([BplusOfEquivariant.lean#L286](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L286)). Let $V_{\mathrm{top}}$ be the space of the node `.top 0`, and let $\iota : U(V_{\mathrm{top}}) \to U(V_{m,0})$ be the stabilizer embedding `embTop` for an orthogonal decomposition of $V_{m,0}$. Let $N$ be the unipotent radical of a flag in $V_{m,0}$ (the type `NFlag`), and let $\psi_N$ be the generic character `besChar`. Then for $\varphi$ on $U(V_{\mathrm{top}})(\mathbb A)$ and $F$ on $U(V_{m,0})(\mathbb A)$,

$$B^+(\varphi, F) = \int_{[U(V_{\mathrm{top}})]} \int_{[N]} \varphi(h)\, F(n\, \iota(h))\, \overline{\psi_N(n)}\, dn\, dh.$$

The lemma `Bplus_eq` says that this is the general Bessel period `Per.besPer` of the pair, with $\overline{\varphi}$ in place of $\varphi$. So `Bplus` is the global GGP period of Bessel type.

The last definition is `fPsiPhi` ([BplusOfEquivariant.lean#L326](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L326)):

$$f(\rho, \xi, \Psi, \Phi, u) = B^+\big(\langle \xi, \Psi \rangle, \theta_\chi(\rho, \Phi, u)\big).$$

Here $\Psi$ is a vector valued function and $\xi$ is a linear functional on its target space. The scalar function `pairVec c ξ Ψ` is $h \mapsto \xi\big(c.\rho(h)^{-1} \Psi(h_f)\big)$.

So the code does contain the first claim of timeline Step 12, as a definition: the number that is studied is the Bessel period of the iterated lift.

### Step 2. The statement `FunctionalsSeparate`

`FunctionalsSeparate` is at [LevelPlusSubgroup.lean#L83](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/LevelPlusSubgroup.lean#L83). Leaving out the bookkeeping of the families, it says:

> For all $\varepsilon$ and all $C_F \geq 6510$ there is $x_0$ such that the following holds for each family whose size $x$ is at least $x_0$ and which satisfies the size conditions `SizeRows`. For each grid $G$ with Weil data $W$, each choice of measures $M$ of row type, and each nonzero vector $w$ in the space `SmT (R.MY 0)`, there are $\rho$ and $\xi$ with `Separates R W M w ρ ξ`.

And `Separates` (line 65 of the same file) says: for each nonzero $t$ in the eigenspace `R.EEat R.triv` there are $\Psi$ in the column space `Cols G W.θ` and a datum $\Phi$ such that the integrals converge (`FConv`) and

$$f(\rho, \xi, \Psi, \Phi, u_{w,t}) \neq 0,$$

where $u_{w,t}$ = `rowForm R w t` is the form built from $w$ and $t$.

The order of the quantifiers is the content. The pair $(\rho, \xi)$ depends on $w$, but not on $t$. The forms $\Psi$ and $\Phi$ may depend on $t$.

### Step 3. The proof of `real_functionals_separate_of_hypothesis`

The theorem `real_functionals_separate_of_hypothesis` ([RealFunctionalsSeparateOfHypothesis.lean#L15](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/RealFunctionalsSeparateOfHypothesis.lean#L15), 3,524 declarations) takes four inputs: the literature record `ThetaLocalInputs`, the hypotheses `HoweUnram` and `SiegelWeilUnitaryConvergent`, and the real statement `RealInputE`. The fourth input is proved: it is `realInputE_holds` (942 declarations). The first three are hypotheses that come from the parent node.

The proof is a sequence of `have` steps:

1. `rowModels`, `rowStep`, `rowTower`: one theta step maps a space of forms of a given type to the next one, so the whole row is a tower of such spaces (`RowTower`). The step `rowStep` uses the "seesaw pair" of Step 4.
2. `conv`: the integrals of the row converge.
3. `per`: the bottom period is not zero (`PeriodNe`, Step 5).
4. `onto`: the core lifts are onto (`CoreOnto`). This is `twist_core_surjective`, with 332 declarations. It uses `HoweUnram` and `SiegelWeilUnitaryConvergent`.
5. `weak`: for each $t$ some Bessel period is not zero (`WeakSep`, Step 7). This step calls the ascent `bessel_period_nonvanishing_ascent_of_depth_data` (Step 6).
6. The last line, `bessel_separate_of_step_gap`, makes the test datum independent of $t$ (Step 8).

### Step 4. The "seesaw pair" `PairEx`

The anchor `exists_seesaw_pair_of_theta_data` ([ExistsSeesawPairOfThetaData.lean#L40](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/ExistsSeesawPairOfThetaData.lean#L40)) has the type `ThetaLocalInputs → PairEx`. Its name says "seesaw". Its content is different.

`PairEx` ([ParRowZero.lean#L17](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ParRowZero.lean#L17)) says: for each pair of real parameters and each pair of discrete series models $M$, $M'$, there is a linear map

$$I : \mathrm{Pol} \to \mathrm{Hom}(M', M)$$

where $\mathrm{Pol}$ is the space `PolF` of the code, such that, for each Weil representation $\omega$ and each vacuum vector $f$, the operator $I(f)$ has the property `IsItW` ([LinksChar.lean#L58](lean:Formalism/LocalToGlobal/IndefiniteReal/LinksChar.lean#L58)). This property says that $I(f)$ is nonzero, bounded, equivariant for one group of the dual pair and invariant for the other, at the real places.

So `PairEx` is the existence of a real intertwiner for one theta step. It is not a seesaw identity between two periods. Its proof uses the fields `discreteSeriesCover` and `harishChandraModules` of `ThetaLocalInputs`, so it rests on literature hypotheses. Its own subtree has only 3 declarations, because the lemmas it calls are shared with other branches.

### Step 5. The bottom period

At the bottom of the tower, the code uses the period `per0` ([OffQOfSizeRows.lean#L81](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L81)):

$$P_0(F, u) = \int_{[U(V_{0,0})]} F(\iota_0(h))\, u(h)\, dh,$$

where $F$ is a form on the core node `.core 0` and $\iota_0$ is a stabilizer embedding. This is a period of GGP type for the smallest pair of the tower.

`PeriodNe` (line 119) says that, for some core vectors, $P_0 \neq 0$. It is proved by `Branch.periodNe_of_eigen` (651 declarations) from `HarishChandraModules`, `CasselmanWallach`, `CuspRapidDecay` and `RealInputE`. The statement `RealInputE` is a real matrix coefficient identity of the form

$$\int \overline{\langle v, \pi(\iota h) v \rangle}\, \langle b, \sigma(h) w' \rangle\, dh = c\, \langle w', w' \rangle\, \langle b, w' \rangle, \qquad c > 0,$$

with bounds on decay. So the real place gives a nonzero local period, and a cusp form with a nonzero global period exists.

### Step 6. The ascent

This is the main step. `Ascent` ([OffQOfSizeRows.lean#L127](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L127)) says:

> Let $\Psi_0, \dots, \Psi_m$ be a chain of rapidly decreasing forms on the core nodes, with $\Psi_i$ the down lift of $\Psi_{i+1}$ (`IsColChain`). Let $u$ be rapidly decreasing on the row. If $P_0(\Psi_0, u) \neq 0$, then there are $\rho$ and $\Phi$ with $B^+(\Psi_m, \theta_\chi(\rho, \Phi, u)) \neq 0$.

In words: if the bottom period is not zero, then the Bessel period at the top of the iterated lift is not zero.

The theorem `bessel_period_nonvanishing_ascent_of_depth_data : DepFixed → Ascent` ([BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11), 2,123 declarations) proves it. The hypothesis `DepFixed` says that the depth vectors are fixed by the level groups. It is proved by `dependence_fixed` ([DependenceFixedStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/DependenceFixedStatement.lean#L11)).

The proof `ascent_of_depFixed` ([BesselPeriodNonvanishingAscentOfDepthData.lean#L21](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthData.lean#L21)) puts together four facts about a tower of periods:

- `Rung0`: if $P_0 \neq 0$, then the first Fourier-Jacobi period of the tower is not zero.
- `RungB`: if the Fourier-Jacobi period at level $2k+1$ is not zero, then the Bessel period at level $2k+2$ is not zero.
- `RungJ`: if the Bessel period at level $2k+2$ is not zero, then the Fourier-Jacobi period at level $2k+3$ is not zero.
- The frames (`existsGoodGridFrames_of_depthFixed`, 1,356 declarations): the grid has the orthogonal decompositions that each rung needs, and the top Bessel period of the tower is `Bplus`.

Each rung is a statement about the lift of one form, `UpBF` and `UpFB` in [TowerEx.lean](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/TowerEx.lean#L129). The rungs share one fact about the Heisenberg group: a tame functional on theta functions that kills the translates of one nonzero vacuum vector kills all vacuum vectors (`tame_functional_vacuum_irreducibility`, 45 declarations).

The seesaw is in `Rung0`. Its key lemma is `UpLast` ([TowerEx.lean#L155](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/TowerEx.lean#L155)). For an orthogonal sum $X = T \oplus L''$ with $\dim L'' = 1$, it says: if

$$\int_{[U(T)]} \theta_{X}(\varphi, \Xi)\big(\iota(h, 1)\big)\, u(h)\, dh \neq 0,$$

then the Fourier-Jacobi period of the lift $\theta_T(u, \Phi)$ against $\varphi$ is not zero for some vacuum vectors $\Phi$, $\Phi_0$. The proof `upLast` writes both sides as one double integral over $[U(W_0)] \times [U(T)]$ of $\varphi(y_1)\, u(y_2)\, \omega(y_1, \iota(y_2, 1))\Xi(0)$, and changes the order of integration. This exchange of the two integrals is the seesaw identity.

The closure of `bessel_period_nonvanishing_ascent_of_depth_data` has 14,131 declarations. It contains no literature hypothesis and no axiom. So, if the Lean statements are the intended ones, the ascent is a theorem of the code and not an input.

### Step 7. A nonzero period for each $t$

`WeakSep` ([OffQOfSizeRows.lean#L130](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L130)) says that for each $t$ there are $\rho, \xi, \Psi, \Phi$ with $f(\rho, \xi, \Psi, \Phi, u_{w,t}) \neq 0$. Here $(\rho, \xi)$ may depend on $t$.

The proof `weakSep_of_steps` ([RowSeparationByRealFunctionalsOfChainSteps.lean#L71](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/RowSeparationByRealFunctionalsOfChainSteps.lean#L71)) is short:

1. `PeriodNe` gives core vectors with $P_0 \neq 0$.
2. `CoreOnto` puts these vectors in the span of the vectors that a chain can reach.
3. So there is a chain $\Psi_0, \dots, \Psi_m$ with $\Psi_m = \langle \xi, \Psi \rangle$ and $P_0(\Psi_0, u) \neq 0$.
4. `Ascent` gives $B^+(\Psi_m, \theta_\chi(\rho, \Phi, u)) \neq 0$.

### Step 8. One test datum for all $t$

The last step is `bessel_separate_of_step_gap` (288 declarations). Its main part is `separate_of_burGapPos` ([SepGap.lean#L222](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/SepGap.lean#L222)). It uses a factorization, the lemma `factor_gap` in the same file. It gives one function $a(\rho, \xi)$, the same for all $t$, $\Psi$ and $\Phi$, such that for each $t$, $\Psi$ and $\Phi$ there is a number $\ell$ with

$$f(\rho, \xi, \Psi, \Phi, u_{w,t}) = a(\rho, \xi) \cdot \ell \quad \text{for all } (\rho, \xi).$$

To build $a$, the code uses that the line of real Bessel functionals at the top has dimension at most one. Now take any $t$. `WeakSep` gives $(\rho_0, \xi_0)$ with $f \neq 0$, so $a(\rho_0, \xi_0) \neq 0$. For a second $t'$, `WeakSep` gives some $(\rho', \xi', \Psi', \Phi')$ with $f \neq 0$, so the number $\ell$ for $(t', \Psi', \Phi')$ is not zero. Then $f(\rho_0, \xi_0, \Psi', \Phi', u_{w,t'}) = a(\rho_0, \xi_0) \cdot \ell \neq 0$. So the one datum $(\rho_0, \xi_0)$ works for every $t$. This is `FunctionalsSeparate`.

The dimension bound is `BurGapPos` ([BurGapOfHyp.lean#L33](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/BurGapOfHyp.lean#L33)):

> Let $J$ and $J_0$ be hermitian matrices with a frame in which $J(z, z) < 0$ and $J_0$ is positive definite. Let $\chi$ be a generic character, $\sigma$ an irreducible unitary representation of $U(J)$ with a gap at least $120 n^3$ in its parameter (`IsGapDS`), and $\pi_0$ an irreducible finite dimensional representation of $U(J_0)$. Then the space `besselForms` of Bessel functionals for $(\sigma, \pi_0, \chi)$ on the smooth vectors of $\sigma$ has rank at most $1$.

This is real local multiplicity one for Bessel models, in a case with a large gap. It is proved in the code by `burGapPos` (145 declarations), not assumed.

### Step 9. Interlacing

The interlacing condition of the timeline appears at the real place as `Interlaced` ([ProjExists.lean#L34](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ProjExists.lean#L34)). Let $\lambda_1, \dots, \lambda_{n+1}$ be the Harish-Chandra parameter of a discrete series of a unitary group in $n+1$ variables, with signs $\varepsilon_i \in \{\text{true}, \text{false}\}$, and let $\mu_1, \dots, \mu_n$ with signs $\varepsilon'_j$ be one for $n$ variables. Merge the two lists in increasing order. Then `Interlaced ε λ ε' μ` says: for two neighbours $x$, $y$ of the merged list, the signs are equal if and only if $x$ and $y$ come from different lists.

This is the sign form of the branching law for discrete series. The signs are values in `Bool`, so they are the "$0$ and $1$" of timeline Step 7. The structure `Par` (line 52) adds this condition and size bounds to a pair of parameters. The quantifier `ForPair` (line 81), which is used in the statement `RealInputE` of Step 5, ranges over such pairs.

There is a second form in `Formalism`. The statement `BesselPeriodGGP` ([BesselPeriodGGP.lean#L105](lean:Formalism/PeriodIntegrals/BesselPeriodGGP.lean#L105)) says: for $k \geq 2$ even and Harish-Chandra parameters $u$, $v$, $b$ with the interlacing `InterlacingCondition` ($v_i < u_i$, $u_{i+1} < v_i$ and $-b_0 < u_{k-1}$) and half-integral differences, a discrete series $\sigma$ and a finite dimensional $\pi$ of the right type have a nonzero local Bessel integral

$$\int \langle \sigma(x_0) w, \sigma(p_1 p_2)\sigma(x) w \rangle\, \overline{\psi(p_2)}\, \pi(p_1)^{-1}\, dp_1\, dp_2 \neq 0.$$

This is the local GGP statement at the real place in the interlacing case. It is not reachable from the main theorem, so it is not part of the proof.

## Where it is in the code

Size is the number of declarations that the node dominates in the spine of the main theorem. A size of 1 is a definition that is used in more than one place.

| Declaration | Module | Size |
| --- | --- | --- |
| `UpperTheory.Lit.functionalsSeparate_of_howeUnram_of_siegelWeil` | [FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17) | 4,530 |
| `UpperTheory.Lit.real_functionals_separate_of_hypothesis` | [RealFunctionalsSeparateOfHypothesis.lean#L15](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/RealFunctionalsSeparateOfHypothesis.lean#L15) | 3,524 |
| `GlobalTheory.T.bessel_period_nonvanishing_ascent_of_depth_data` | [BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11) | 2,123 |
| `GlobalTheory.Asc.ascent_of_depFixed` | [BesselPeriodNonvanishingAscentOfDepthData.lean#L21](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthData.lean#L21) | 2,122 |
| `GlobalTheory.T.existsGoodGridFrames_of_depthFixed` | [ExistsGoodGridFramesOfDepthFixedStatement.lean#L12](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/ExistsGoodGridFramesOfDepthFixedStatement.lean#L12) | 1,356 |
| `GlobalTheory.T.fockConjugates_span_depth_data` | [FockConjugatesSpanDepthDataStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/FockConjugatesSpanDepthDataStatement.lean#L11) | 226 |
| `GlobalTheory.T.bessel_to_fourierJacobi_nonvanishing_tower` | [BesselToFourierJacobiNonvanishingTowerStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselToFourierJacobiNonvanishingTowerStatement.lean#L11) | 119 |
| `GlobalTheory.T.fourierJacobi_to_bessel_nonvanishing_tower` | [FourierJacobiToBesselNonvanishingTowerStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/FourierJacobiToBesselNonvanishingTowerStatement.lean#L11) | 71 |
| `GlobalTheory.T.tame_functional_vacuum_irreducibility` | [TameFunctionalVacuumIrreducibilityStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/TameFunctionalVacuumIrreducibilityStatement.lean#L11) | 45 |
| `GlobalTheory.T.nonvanishing_thetaTower_bottom_rung` | [NonvanishingThetaTowerBottomRungStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/NonvanishingThetaTowerBottomRungStatement.lean#L11) | 15 |
| `GlobalTheory.T.lastSeesaw_periodNonvanishing` | [LastSeesawPeriodNonvanishingStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/LastSeesawPeriodNonvanishingStatement.lean#L11) | 12 |
| `GlobalTheory.T.dependence_fixed` | [DependenceFixedStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/DependenceFixedStatement.lean#L11) | 30 |
| `UpperTheory.Lit.realInputE_holds` | [RealBranch.lean#L231](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/FockModels/RealBranch.lean#L231) | 942 |
| `UpperTheory.Lit.Branch.periodNe_of_eigen` | [BranchPeriod.lean#L14](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/BranchPeriod.lean#L14) | 651 |
| `GlobalTheory.T.twist_core_surjective` | [TwistCoreSurjectiveOfLocalComponents.lean#L32](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/TwistCoreSurjectiveOfLocalComponents.lean#L32) | 332 |
| `UpperTheory.Lit.bessel_separate_of_step_gap` | [BesselSeparate.lean#L9](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/BesselSeparate.lean#L9) | 288 |
| `UpperTheory.Lit.burGapPos` | [Separate.lean#L32](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/Separate.lean#L32) | 145 |
| `UpperTheory.Lit.Bur.separate_of_burGapPos` | [SepGap.lean#L222](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/SepGap.lean#L222) | 56 |
| `GlobalTheory.T.rowSeparation_by_realFunctionals_of_chain_steps` | [RowSeparationByRealFunctionalsOfChainStepsStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/RowSeparationByRealFunctionalsOfChainStepsStatement.lean#L11) | 8 |
| `GlobalTheory.T.exists_seesaw_pair_of_theta_data` | [ExistsSeesawPairOfThetaData.lean#L40](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/ExistsSeesawPairOfThetaData.lean#L40) | 3 |
| `UpperTheory.Lit.Rallis.RallisIPProof.rallis_of_dm` | [RallisDM.lean#L24](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/FockModels/RallisDM.lean#L24) | 93 |
| `PI.BesselPeriodGGP.BesselPeriodGGP` | [BesselPeriodGGP.lean#L105](lean:Formalism/PeriodIntegrals/BesselPeriodGGP.lean#L105) | not in the spine |

The node `functionalsSeparate_of_howeUnram_of_siegelWeil` is a child of `nonempty_hyps_definite_side_of_closed_bound` ([SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44)). The node `rallis_of_dm` is in a different branch: its parent is `rallis_inner_product_convergent_of_literature`, under the literature branch.

## Notes

- **What is hypothesis and what is proof.** `ThetaLocalInputs`, `HoweUnram` and `SiegelWeilUnitaryConvergent` are hypotheses of this branch. They are used in the "seesaw pair" (Step 4), in the bottom period (Step 5) and in `CoreOnto` (Step 3). The ascent (Step 6), the dependence statement `dependence_fixed`, `RealInputE` and the multiplicity one bound `BurGapPos` are proved in the code. The page did not check whether each hypothesis is a correct form of the published theorem it is named after.
- **The name "seesaw".** The theorem `exists_seesaw_pair_of_theta_data` builds a real intertwiner for one theta step. It does not state a seesaw identity. The real seesaw identity of the branch is the change of the order of integration in `upLast` (Step 6).
- **Timeline Step 7, determinants.** The page found no determinant for $W(\cdot)$ whose entries are GGP periods. In this branch the periods enter one at a time, and the step from many $t$ to one test datum is a dimension bound (`BurGapPos`), not a determinant. The namespace `Formalism.QuantumDeterminants` is used for the hermitian forms and the matrix groups of the real place, not for a determinant of periods. The quantity $W(\cdot)$ of the timeline has no counterpart here.
- **Timeline Step 7, "$0$ and $1$".** The only counterpart is the `Bool` valued sign vectors of `Interlaced` and of `eps48` in `BesselPeriodGGP`. The timeline does not say more, so the page does not claim more.
- **Timeline Step 12, independence of the Hecke characters.** The page found no statement that the period does not depend on the Hecke characters. The rung statements `UpBF`, `UpFB` and `UpLast` hold for all splitting characters that satisfy a product relation (for example $\chi_V = \chi_A \chi_z$). This is a uniform statement in the characters, not an identity between periods for different characters.
- **Rallis.** The name Rallis appears in `rallis_of_dm`, which proves `RallisInnerProductConvergent` from `ResidueKilled.DM`, `SiegelWeilUnitaryConvergent` and `WeilThetaConvergence`. That statement is a Rallis inner product formula: the Petersson inner product of two theta lifts is a zeta integral at the point `sZero`. It is not used by `FunctionalsSeparate`. The other proof that a theta lift is not zero, through a Rallis identity, is on the page [Block determinants and theta Parseval](/proof/determinants/).
- **The GGP statement in Formalism.** `BesselPeriodGGP` is a clear statement of local nonvanishing in the interlacing case, but it is not reachable from the main theorem. The proof uses `RealInputE` and `BurGapPos` in its place.
- **Not unfolded.** This page does not unfold `SizeRows`, `Cols`, `rowForm`, `RowTower`, `CoreOnto` beyond its role, `Frames`, `Ends`, `Loc`, `StBF`, `StFB`, `IsGapDS` or `besselForms`. The plain words for these objects stay at the level of their names and shapes.
