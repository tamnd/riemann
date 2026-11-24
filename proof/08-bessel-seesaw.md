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
## Iterated theta lifts and their Bessel periods

The [unitary hypotheses node](/proof/unitary-hypotheses/) needs a statement called FunctionalsSeparate. This chapter states it and proves it. It says that a Bessel period of an iterated theta lift is not zero, and that one real test datum works for all inputs at once. Section 2 states the main theorem. Sections 3 to 6 give the proof: a real intertwiner for each theta step, a nonzero bottom period, an ascent up a tower, and a passage from many test data to one. Section 7 compares the branch with the [timeline](/proof/timeline/).

Throughout, $E$ is a CM field with totally real subfield $F$, and $\mathbb A$ is the [[adele ring|NYJFYZ0B4M]] of $F$. The code works with a grid of [[hermitian spaces|8NJ7XY6F1S]] over $E$. Its nodes include row nodes $(i, 0)$ for $0 \le i \le m$, core nodes $c_i$ and a top node, with spaces $V_i$, $C_i$ and $V_{\mathrm{top}}$. The integer $m$ is even and at least $2$. Automorphic integrals run over fixed sets $[U(V)]$ with measures, which play the role of a [[fundamental domain|WEGEXJBX26]]. Each arrow of the grid is one step of the [[theta correspondence|6WB6TKE70H]]. It carries a [[Weil representation|H3Q2703KKV]] of a pair of [[unitary groups|0R9R0Y1HDK]], with [[Hecke characters|KPYFGB342X]] as splitting characters.

**Definition (Iterated theta lift).** Let $a$ be an arrow from a node with space $V$ to a node with space $V'$, and let $f$ be a Schwartz datum on $a$. The theta kernel $k_a(f; g, h)$ gives the lift
$$\theta_a(f)(F)(h) = \int_{[U(V)]} k_a(f; g, h)\, F(g)\, dg$$
of a function $F$ on $U(V)(\mathbb A)$. A real datum $\rho$ and a Schwartz datum $\Phi$ give a datum on each row arrow $(i, 0) \to (i+1, 0)$, with lift $\theta_i$. For $u$ on $U(V_0)(\mathbb A)$ the iterated lift is $\theta_\chi(\rho, \Phi, u) = \theta_{m-1} \circ \dots \circ \theta_0(u)$, a function on $U(V_m)(\mathbb A)$.

Lean: `GlobalTheory.FunObj.thetaChi`

**Definition (Bessel period).** An orthogonal decomposition of $V_m$ gives an embedding $\iota \colon U(V_{\mathrm{top}}) \to U(V_m)$. A flag in $V_m$ gives a unipotent group $N$ with a fundamental set $[N]$ and a generic character $\psi_N$. For $\varphi$ on $U(V_{\mathrm{top}})(\mathbb A)$ and $F$ on $U(V_m)(\mathbb A)$ put
$$B^+(\varphi, F) = \int_{[U(V_{\mathrm{top}})]} \int_{[N]} \varphi(h)\, F(n\, \iota(h))\, \overline{\psi_N(n)}\, dn\, dh.$$

Lean: `GlobalTheory.FunObj.Bplus`

**Lemma (Bessel periods).** Let $\varphi$ and $F$ be as above.

1. $B^+(\varphi, F)$ is the global Bessel period of Gan, Gross and Prasad for the pair $(\overline{\varphi}, F)$ and the data $(\iota, N, \psi_N)$.
2. If $[N]$ has volume $1$, $|\psi_N| = 1$, and $F(ng) = \psi_N(n) F(g)$ for $n \in N$, then $B^+(\varphi, F) = \int_{[U(V_{\mathrm{top}})]} \varphi(h)\, F(\iota(h))\, dh$.

Lean: `GlobalTheory.FunObj.Bplus_eq`

*Proof.* Part 1 holds when we unfold the two definitions. For part 2, the equivariance and $\psi_N \overline{\psi_N} = 1$ make the inner integrand equal to $\varphi(h) F(\iota(h))$. This does not depend on $n$, so the inner integral is this value times the volume of $[N]$. $\square$

**Definition (The separating number).** Let $(W, \rho_W)$ be the coefficient representation of the top group at the real places. A column is a function $\Psi$ on $U(V_{\mathrm{top}})(\mathbb A_f)$ with values in $W$ such that $\Psi(\gamma g k) = \rho_W(\gamma) \Psi(g)$ for rational $\gamma$ and for $k$ in a fixed level group. Columns form a space $\mathrm{Cols}$. For a linear form $\xi$ on $W$ put $\langle \xi, \Psi \rangle(h) = \xi\big(\rho_W(h)^{-1} \Psi(h_f)\big)$, and
$$f(\rho, \xi, \Psi, \Phi, u) = B^+\big(\langle \xi, \Psi \rangle, \theta_\chi(\rho, \Phi, u)\big).$$

Lean: `GlobalTheory.FunObj.fPsiPhi`

The inputs $u$ come from the row data. A family $R$ gives a model $M_0$ of a discrete series at the real places of the bottom node and a space $\mathcal E$ of Hecke eigen-directions. For a smooth vector $w$ of $M_0$ and $t \in \mathcal E$, the row form $u_{w,t}$ is the value of the multilinear map $t$ on $w$.

**Definition (Separation of functionals).** The pair $(\rho, \xi)$ separates at $w$ if for each nonzero $t \in \mathcal E$ there are $\Psi \in \mathrm{Cols}$ and $\Phi$ such that the integrals of $f(\rho, \xi, \Psi, \Phi, u_{w,t})$ converge and $f(\rho, \xi, \Psi, \Phi, u_{w,t}) \neq 0$. FunctionalsSeparate says: for all $\varepsilon$ and all $C_F \ge 6510$ there is $x_0$ such that, for every family of size $x \ge x_0$ that satisfies the size conditions, every grid with Weil data over it, every choice of measures of row type and every nonzero $w$, some pair $(\rho, \xi)$ separates at $w$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup.FunctionalsSeparate`

The order of the quantifiers is the content: $(\rho, \xi)$ depends on $w$ but not on $t$, while $\Psi$ and $\Phi$ may depend on $t$.

**Remark (A trivial case).** If $\xi = 0$ separates at $w$, then $\mathcal E = 0$, because $\langle 0, \Psi \rangle = 0$ gives $f = 0$. The code proves this as an example.

**Remark (Formalization).** The definitions are in [BplusOfEquivariant.lean#L263](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L263), [BplusOfEquivariant.lean#L286](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L286), [BplusOfEquivariant.lean#L326](lean:Development/AbelianVarietyTheory/Definitions/Divisors/BplusOfEquivariant.lean#L326) and [LevelPlusSubgroup.lean#L83](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/LevelPlusSubgroup.lean#L83). Part 2 of the lemma is `Bplus_of_equivariant`. The predicate is `Separates`, with $\mathcal E$ = `R.EEat R.triv`, $u_{w,t}$ = `rowForm R w t` and convergence `FConv`. This chapter does not unfold `SizeRows`, `Cols` or `rowForm`.

## The main theorem and its inputs

The main theorem has three inputs in its signature. On the trunk each comes from a proved term.

**Theorem (Functionals separate).** Assume the local theta inputs, unramified Howe duality and the convergent Siegel-Weil formula for unitary groups. Then FunctionalsSeparate holds.

Lean: `UpperTheory.Lit.functionalsSeparate_of_howeUnram_of_siegelWeil`

*Proof.* Apply the next theorem to the three inputs and to the real matrix coefficient identity of Section 4, which is proved. $\square$

**Theorem (Separation from the real input).** Assume the three inputs above and the real matrix coefficient identity. Then FunctionalsSeparate holds.

Lean: `UpperTheory.Lit.real_functionals_separate_of_hypothesis`

*Proof.* The Lean proof combines these steps.

1. The local inputs and the real intertwiners of Section 3 make the row a tower of spaces of forms, with convergent integrals.
2. The bottom period is not zero (Section 4).
3. The core lifts reach a spanning set. This uses the local inputs, Howe duality and the Siegel-Weil formula.
4. Steps 2 and 3 and the ascent (Section 5) give a nonzero Bessel period for each $t$.
5. Local multiplicity one makes the test datum independent of $t$ (Section 6). $\square$

**Theorem (Unramified Howe duality).** Let $\omega$ be the Weil representation of an unramified local unitary dual pair $U(J_S) \times U(J_T)$ over a complete discretely valued field, on a space $M$. Let $s \ne 0$ be a vacuum vector whose translates span $M$. If $w \in M$ is fixed by the integral points of $U(J_S)$, then $w$ lies in the span of the vectors $\omega(1, h) s$. The same holds with the two groups exchanged.

Lean: `GlobalTheory.Hk3.HoweUnram` (proved by `GlobalTheory.Hk3.howeUnram_holds`)

*Proof.* The Lean proof shows one half with a lemma on fixed vectors. It gets the other half from the same lemma, after it swaps the two groups through a hermitian adjoint. We did not unfold the lemma. $\square$

[The Siegel-Weil chapter](/proof/siegel-weil/) treats the convergent Siegel-Weil formula.

**Remark (How the trunk supplies the inputs).** On the trunk the caller passes the proved Howe duality theorem above. The Siegel-Weil formula and every local theta input come from terms that are named after the literature but never read their literature argument, directly or through the terms they call. So no open assumption of the code reaches this branch. The ascent, the dependence statement, the real identity and the multiplicity one bound are proved inside the branch. We did not check that each proved input is a correct form of the published theorem it is named after.

**Remark (Formalization).** The size of a node is the number of declarations that it dominates in the spine of the main theorem. A size of 1 is a definition that is used in more than one place. The anchor is at [FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17) (4,530). Its body is `real_functionals_separate_of_hypothesis P hH hSW realInputE_holds`, at [RealFunctionalsSeparateOfHypothesis.lean#L15](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/RealFunctionalsSeparateOfHypothesis.lean#L15) (3,524). Step 3 is `GlobalTheory.T.twist_core_surjective` ([TwistCoreSurjectiveOfLocalComponents.lean#L32](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/TwistCoreSurjectiveOfLocalComponents.lean#L32), 332). Howe duality is in [HoweUnram.lean#L8](lean:Development/AbelianVarietyTheory/PublishedTheorems/GaloisGeometry₂/HoweUnram.lean#L8). The caller is `nonempty_hyps_definite_side_of_closed_bound` ([SiegelEisensteinSecondTermHypotheses.lean#L44](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44)). On the trunk the inputs come from `published_results_eigen O` and `published_results_first O` ([EveryCharacterOfLiteratureOfVWin.lean#L666](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L666) and line 727). The Siegel-Weil field is `siegel_weil_unitary_convergent_of_literature O`, which returns `UpperTheory.Lit.Sw47.convergent`. No field of `O` that the file reads reaches this branch.

## The real intertwiner of one theta step

Each step of the row tower needs a real intertwiner between two discrete series models.

**Definition (Real intertwiner).** Let $M$ and $M'$ be real discrete series models for $U(V)$ and $U(V')$, $\omega$ a Weil representation of $U(V) \times U(V')$, and $\mathrm{Pol}$ the polynomial Fock vectors. A linear map $I \colon \mathrm{Pol} \to \mathrm{Hom}(M', M)$ is a real intertwiner for $\omega$ if:

1. $I \ne 0$;
2. the matrix coefficients of each $I(\phi)$ are bounded by a constant times the norms of the vectors;
3. $I$ is equivariant for $U(V)$ at each real place, for the group and for its Lie algebra;
4. $I$ is invariant for $U(V')$ at each real place, for the group and for its Lie algebra.

Lean: `Formalism.IndefR.Links.IsItW`

**Proposition (Existence of real intertwiners).** Let $S$ and $S'$ be families of real parameters that form the pair of one theta step, and let $M$ and $M'$ be discrete series models with these parameters. Then there is one linear map $I \colon \mathrm{Pol} \to \mathrm{Hom}(M', M)$ that is a real intertwiner for each Weil representation with the right exponents, at the point of each vacuum vector.

Lean: `GlobalTheory.SepRows.PairEx` (proved by `GlobalTheory.T.exists_seesaw_pair_of_theta_data`)

*Proof.* The Lean proof takes two fields of the local record: a cover of the discrete series and the local statements on [[Harish-Chandra modules|B33WNK1SVN]]. They identify the theta models with the discrete series of the cover. It builds the local intertwiner at each real place and takes the tensor product. We did not unfold these steps. On the trunk both fields are proved terms. $\square$

**Remark (The name seesaw).** The theorem states no identity between two periods. The seesaw identity of the branch is the exchange of two integrals in the last seesaw lemma of Section 5.

**Remark (Formalization).** `PairEx` is at [ParRowZero.lean#L17](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ParRowZero.lean#L17), `IsItW` at [LinksChar.lean#L58](lean:Formalism/LocalToGlobal/IndefiniteReal/LinksChar.lean#L58), and the theorem at [ExistsSeesawPairOfThetaData.lean#L40](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/ExistsSeesawPairOfThetaData.lean#L40) (3). The four conditions are the fields `ne`, `bdd`, `eqK` with `eqg`, and `invK` with `invg`.

## The bottom period and the real place

The tower starts with a period on the smallest pair of the grid. It is not zero because an identity of real matrix coefficients holds when the signs interlace.

**Definition (Bottom period).** Let $\iota_0 \colon U(V_0) \to U(C_0)$ be the stabilizer embedding of a fixed decomposition of $C_0$. For $F$ on $U(C_0)(\mathbb A)$ and $u$ on $U(V_0)(\mathbb A)$ put
$$P_0(F, u) = \int_{[U(V_0)]} F(\iota_0(h))\, u(h)\, dh.$$

Lean: `GlobalTheory.SepRows.per0`

**Definition (Interlacing).** Let $\lambda_1, \dots, \lambda_{n+1}$ and $\mu_1, \dots, \mu_n$ be Harish-Chandra parameters with signs $\varepsilon_i, \varepsilon'_j \in \{0, 1\}$. Merge the two lists. The pair is interlaced if, for any two neighbours of the merged list, their signs are equal exactly when they come from different lists.

Lean: `GlobalTheory.SepReal.Interlaced`

This is the sign form of the [branching law for discrete series](/learn/periods/#interlacing-and-the-branching-law-for-discrete-series). An admissible pair with bound $B$ has $n \ge 3$, regular parameters, interlacing of $(\lambda, \mu)$ and of $(\lambda - e_s, \mu)$, gaps at least $1000 (n+1)^3$, at least one negative sign $\varepsilon'_j$ and no more negative than positive signs, and entries at most $B$ in absolute value.

**Theorem (Real matrix coefficient identity).** There is $C > 0$ with this property. Let $\pi$ and $\sigma$ be discrete series of $U(n+1)$ and $U(n)$ at a real place whose parameters form an admissible pair with bound $B$. Then there are $v = \pi(g_0) v_0$, with $v_0$ a unit lowest $K$-type vector, a smooth unit vector $w'$ of $\sigma$ and $c > 0$ such that
$$\int_{U(n)} \overline{\langle v, \pi(\iota h) v \rangle}\, \langle b, \sigma(h) w' \rangle\, dh = c\, \langle w', w' \rangle\, \langle b, w' \rangle$$
for every $b$. The coefficients of $v$ satisfy explicit decay bounds.

Lean: `UpperTheory.Lit.Branch.RealInputE` (proved by `UpperTheory.Lit.realInputE_holds`)

*Proof.* The Lean proof combines a large projection of $\pi(g_0) v_0$ to $\sigma$ with an eigenvalue statement for the map to $\sigma$. We did not unfold these proofs. $\square$

**Proposition (The bottom period is not zero).** For $\varepsilon$, $C_F$ and large families as in FunctionalsSeparate, for every nonzero row form $t$ and every nonzero $w$, there are a core form $y$ and a $K$-finite vector $v$ with $P_0(y(v), t(w)) \ne 0$.

Lean: `GlobalTheory.SepRows.PeriodNe` (proved by `UpperTheory.Lit.Branch.periodNe_of_eigen`)

*Proof.* The Lean proof combines the real identity with three fields of the local record: Harish-Chandra modules, Casselman-Wallach globalization and the rapid decay of cusp forms. The identity gives a nonzero local period at the real place. A proved theorem then gives a [[cusp form|SV5EEBF861]] whose global period against the theta lift is not zero. We did not unfold it. $\square$

**Remark (Formalization).** `per0` is at [OffQOfSizeRows.lean#L81](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L81) and `PeriodNe` at line 119. `Interlaced` is at [ProjExists.lean#L34](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/ProjExists.lean#L34), with the admissible pairs `Par` and the signs in `Bool`. `RealInputE` is in [BranchDefs.lean#L11](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/BranchDefs.lean#L11) and `realInputE_holds` in [RealBranch.lean#L231](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/FockModels/RealBranch.lean#L231) (942). `periodNe_of_eigen` is in [BranchPeriod.lean#L14](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/BranchPeriod.lean#L14) (651).

## The ascent through the tower

If the bottom period is not zero, so is the Bessel period at the top. The proof climbs a tower of periods. Each rung turns a Fourier-Jacobi period into a Bessel period, or back. This is the method of [Ginzburg, Rallis and Soudry](/learn/periods/#the-descent-of-ginzburg-rallis-and-soudry) for the descent, run upwards. The ascent has no literature input.

**Definition (Column chain).** Each core arrow $c_{i+1} \to c_i$ with a Schwartz datum $f$ gives a down lift $\mathrm{dn}_i(f)$, the integral of a function on $U(C_{i+1})(\mathbb A)$ against the theta kernel. A column chain is a family $\Psi_0, \dots, \Psi_m$ of rapidly decreasing [[automorphic forms|68SJQEC11F]] on $U(C_i)(\mathbb A)$ with $\Psi_i = \mathrm{dn}_i(f_i)(\Psi_{i+1})$ for a depth vector $f_i$, for each $i < m$.

Lean: `GlobalTheory.SepRows.IsColChain`

**Lemma (Depth vectors are fixed).** For each $i < m$, each depth vector on the row arrow or the core arrow at $i$ is fixed by the Weil action of the level groups of the two nodes.

Lean: `GlobalTheory.SepRows.DepFixed` (proved by `GlobalTheory.T.dependence_fixed`)

*Proof.* The Lean proof has no hypothesis. We did not unfold it. $\square$

Fix a column chain and a function $u$ on $U(V_0)(\mathbb A)$ whose partial lifts decrease rapidly. For $2k + 2 \le m$, let $J_k$ be the Fourier-Jacobi period of $\Psi_{2k+1}$ against the partial lift of $u$ to $V_{2k+1}$, and $B_k$ the Bessel period of $\Psi_{2k+2}$ against the partial lift to $V_{2k+2}$. Write $J_k \ne 0$ or $B_k \ne 0$ if some data $\rho$, $\Phi$, and a vacuum vector for $J_k$, make it nonzero.

**Lemma (Vacuum irreducibility).** Let $\ell$ be a tame functional on theta functions: linear, continuous, bounded along Heisenberg translates and compatible with integrals of translates. Let $f_0 \ne 0$ be a vacuum vector for a lattice $\Gamma$. If $\ell$ kills the translates of $f_0$ by the annihilator of $\Gamma$, then $\ell$ kills every vacuum vector for $\Gamma$.

Lean: `GlobalTheory.Asc.Irr` (proved by `GlobalTheory.T.tame_functional_vacuum_irreducibility`)

*Proof.* This is the classical argument; the Lean proof reaches it through its own proof, which we did not unfold. The vacuum vectors for $\Gamma$ form an irreducible module for the Heisenberg group. So a functional that kills the orbit of one nonzero vector kills the module. $\square$

**Lemma (The last seesaw).** Let $X = T \oplus L''$ with $\dim L'' = 1$, and let $W_0 \subset W$ give a Fourier-Jacobi period of depth $0$. Let the characters and lattices satisfy the compatibility conditions of the frames. Let $\varphi$ on $U(W_0)(\mathbb A)$ and $u$ on $U(T)(\mathbb A)$ decrease rapidly, and let $\Xi$ be a vacuum vector for $(W_0, X)$. If
$$\int_{[U(T)]} \theta_X(\varphi, \Xi)\big(\iota(h, 1)\big)\, u(h)\, dh \ne 0,$$
then there are vacuum vectors $\Phi$ and $\Phi_0$ such that the Fourier-Jacobi period of $\theta_T(u, \Phi)$ against $\varphi$ and $\Phi_0$ is not zero.

Lean: `GlobalTheory.Asc.UpLast` (proved by `GlobalTheory.T.lastSeesaw_periodNonvanishing`)

*Proof.* Put
$$\ell(\Xi') = \int_{[U(W_0)] \times [U(T)]} \varphi(y_1)\, u(y_2)\, \omega_X\big(y_1, \iota(y_2, 1)\big) \Xi'(0)\, dy_1\, dy_2$$
for theta functions $\Xi'$ on $(W_0, X)$. Rapid decay makes $\ell$ well defined and tame. Integrate first over $y_1$: this gives the integral of the hypothesis, so $\ell(\Xi) \ne 0$. Now take $\Xi' = \Phi \boxtimes \overline{\Phi_0}$. The tensor rule of the Weil representation gives $\omega_X(y_1, \iota(y_2, 1))\Xi'(0) = \omega(y_1, y_2)\Phi(0) \cdot \overline{\omega_z(y_1)\Phi_0(0)}$. Integrate first over $y_2$: this gives the Fourier-Jacobi period of $\theta_T(u, \Phi)$ against $\varphi$ and $\Phi_0$. The exchange of the two integrals is the seesaw identity. If every such period were zero, $\ell$ would kill the box vectors and their translates. By vacuum irreducibility, $\ell$ would kill $\Xi$, a contradiction. $\square$

**Lemma (The rungs).** Let the grid carry good frames.

1. If $P_0(\Psi_0, u) \ne 0$, then $J_0 \ne 0$.
2. If $J_k \ne 0$, then $B_k \ne 0$.
3. If $B_k \ne 0$, then $J_{k+1} \ne 0$.
4. If $2k + 2 = m$, then the data that make $B_k \ne 0$ also make $B^+(\Psi_m, \theta_\chi(\rho, \Phi, u)) \ne 0$.

Lean: `GlobalTheory.Asc.RungB` (with `GlobalTheory.Asc.Rung0`, `GlobalTheory.Asc.RungJ` and `GlobalTheory.Asc.TowerEx`)

*Proof.* Part 1 reduces to the last seesaw. Parts 2 and 3 apply a statement on the lift of one form, from a Fourier-Jacobi period to a Bessel period or back, with the fact that partial lifts are fixed by the level groups. All rungs use that Fock conjugates of the vacuum vectors span the depth data. Part 4 is the end condition of the frames. We did not unfold these proofs beyond the last seesaw. $\square$

**Theorem (Ascent).** Let $\Psi_0, \dots, \Psi_m$ be a column chain and $u$ as above. If $P_0(\Psi_0, u) \ne 0$, then there are $\rho$ and $\Phi$ with
$$B^+\big(\Psi_m, \theta_\chi(\rho, \Phi, u)\big) \ne 0.$$

Lean: `GlobalTheory.SepRows.Ascent` (proved by `GlobalTheory.T.bessel_period_nonvanishing_ascent_of_depth_data`)

*Proof.* Good frames exist because depth vectors are fixed. Part 1 of the rungs gives $J_0 \ne 0$. Induction on $k$ with parts 2 and 3 gives $B_k \ne 0$ whenever $2k + 2 \le m$. Since $m$ is even and $m \ge 2$, write $m = 2r$ and take $k = r - 1$. Part 4 gives the claim. $\square$

**Remark (Formalization).** The theorem is at [BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthDataStatement.lean#L11) (2,123). Its proof `ascent_of_depFixed` ([BesselPeriodNonvanishingAscentOfDepthData.lean#L21](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselPeriodNonvanishingAscentOfDepthData.lean#L21), 2,122) calls `ascent_of_rungs`, the induction above, with $J_k \ne 0$ as `NZJ` and $B_k \ne 0$ as `NZB`. Its last step `Ends.top` needs `D.R.m_even`. The rungs are at [NonvanishingThetaTowerBottomRungStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/NonvanishingThetaTowerBottomRungStatement.lean#L11) (15), [FourierJacobiToBesselNonvanishingTowerStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/FourierJacobiToBesselNonvanishingTowerStatement.lean#L11) (71) and [BesselToFourierJacobiNonvanishingTowerStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/BesselToFourierJacobiNonvanishingTowerStatement.lean#L11) (119). The frames come from [ExistsGoodGridFramesOfDepthFixedStatement.lean#L12](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/ExistsGoodGridFramesOfDepthFixedStatement.lean#L12) (1,356) and the spanning from [FockConjugatesSpanDepthDataStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/FockConjugatesSpanDepthDataStatement.lean#L11) (226). Vacuum irreducibility is at [TameFunctionalVacuumIrreducibilityStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/TameFunctionalVacuumIrreducibilityStatement.lean#L11) (45), the last seesaw at [LastSeesawPeriodNonvanishingStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/LastSeesawPeriodNonvanishingStatement.lean#L11) (12), and `dependence_fixed` at [DependenceFixedStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/DependenceFixedStatement.lean#L11) (30). `Ascent` is at [OffQOfSizeRows.lean#L127](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L127). The one form statements `UpBF` and `UpFB` are in [TowerEx.lean](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/TowerEx.lean#L129) and `UpLast` at [TowerEx.lean#L155](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/TowerEx.lean#L155). The closure of the ascent has 14,131 declarations, with no literature hypothesis and no axiom. This chapter does not unfold `Frames`, `Ends`, `Loc`, `StBF` or `StFB`.

## One test datum for all inputs

The ascent gives a nonzero Bessel period for each $t$, with a test datum that depends on $t$. Local multiplicity one at the real place removes this dependence: the period factors through one fixed real functional.

**Proposition (Weak separation).** For $\varepsilon$, $C_F$ and large families as in FunctionalsSeparate, for every nonzero row form $t$ and every nonzero $w$, there are $\rho$, $\xi$, $\Psi \in \mathrm{Cols}$ and $\Phi$ with $f(\rho, \xi, \Psi, \Phi, t(w)) \ne 0$.

Lean: `GlobalTheory.SepRows.WeakSep` (proved by `GlobalTheory.SepRows.weakSep_of_steps`)

*Proof.* The bottom period gives $y$ and $v$ with $P_0(y(v), t(w)) \ne 0$. The core lifts put $y(v)$ in the span of the bottom terms $\Psi_0$ of column chains whose top term is $\langle \xi, \Psi \rangle$ with $\Psi \in \mathrm{Cols}$. The period $P_0(\cdot, t(w))$ is linear on this span, so one such $\Psi_0$ has $P_0(\Psi_0, t(w)) \ne 0$. The ascent applied to its chain gives $\rho$ and $\Phi$ with $f(\rho, \xi, \Psi, \Phi, t(w)) \ne 0$. $\square$

**Theorem (Real multiplicity one with a large gap).** Let $J$ and $J_0$ be hermitian matrices of sizes $n$ and $m \ge 1$, with $J(z, z) < 0$ and $J_0$ positive definite, and let $\chi$ be a generic character. Let $\sigma$ be an irreducible unitary representation of $U(J)$ whose parameter has a gap at least $120 n^3$, and $\pi_0$ an irreducible finite dimensional representation of $U(J_0)$. Then the Bessel functionals for $(\sigma, \pi_0, \chi)$ on the smooth vectors of $\sigma$ form a space of dimension at most $1$.

Lean: `UpperTheory.Lit.Bur.BurGapPos` (proved by `UpperTheory.Lit.burGapPos`)

*Proof.* The Lean proof derives it from a proved uniqueness statement for Bessel maps with a gap, which we did not unfold. $\square$

**Lemma (Factorization).** Assume the multiplicity one bound, that the dual coefficient space is a tensor product over the real places, that theta lifts separate points at the top, and that the row is a tower. Fix the data and a nonzero $w$. Then there is a function $a(\rho, \xi)$ such that for every row form $t$, every $\Psi \in \mathrm{Cols}$ and every $\Phi$ there is $\ell \in \mathbb C$ with $f(\rho, \xi, \Psi, \Phi, t(w)) = a(\rho, \xi)\, \ell$ for all $(\rho, \xi)$.

Lean: `UpperTheory.Lit.Bur.factor_gap`

*Proof.* The row tower gives a model $M_B$ at the top row node and a map $\rho \mapsto \mathrm{vec}(\rho, w)$ into $M_B$ with $\theta_\chi(\rho, \Phi, t(w)) = F'(\mathrm{vec}(\rho, w))$ for a form $F'$ that does not depend on $\rho$. The other three conditions give a functional $\ell_0(\xi, v)$ with $B^+(\langle \xi, \Psi \rangle, F'(v)) = \ell_0(\xi, v)\, \ell$, where $\ell$ depends only on $F'$ and $\Psi$. Put $a(\rho, \xi) = \ell_0(\xi, \mathrm{vec}(\rho, w))$. $\square$

**Theorem (Separation from weak separation).** Assume the four conditions of the factorization, weak separation, convergence of the row, the size gap conditions, and that eigen-directions give row forms. Then FunctionalsSeparate holds.

Lean: `UpperTheory.Lit.Bur.separate_of_burGapPos` (through `UpperTheory.Lit.bessel_separate_of_step_gap`)

*Proof.* Fix $w \ne 0$. If $\mathcal E = 0$, any pair separates, and the proof takes $\xi = 0$. Otherwise take $t_0 \ne 0$ in $\mathcal E$. Weak separation gives $(\rho_0, \xi_0, \Psi_0, \Phi_0)$ with $f \ne 0$ at $t_0$, so $a(\rho_0, \xi_0) \ne 0$. Let $t \ne 0$ be in $\mathcal E$. Weak separation gives $(\rho, \xi, \Psi, \Phi)$ with $f(\rho, \xi, \Psi, \Phi, u_{w,t}) \ne 0$, so the number $\ell$ for $(t, \Psi, \Phi)$ is not zero. Then $f(\rho_0, \xi_0, \Psi, \Phi, u_{w,t}) = a(\rho_0, \xi_0)\, \ell \ne 0$, and the integrals converge by the convergence of the row. So $(\rho_0, \xi_0)$ separates at $w$. $\square$

**Remark (Formalization).** `WeakSep` is at [OffQOfSizeRows.lean#L130](lean:Development/AbelianVarietyTheory/Definitions/TwistedInnerProducts/OffQOfSizeRows.lean#L130). It is proved by `rowSeparation_by_realFunctionals_of_chain_steps` ([RowSeparationByRealFunctionalsOfChainStepsStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/RowSeparationByRealFunctionalsOfChainStepsStatement.lean#L11), 8), through `weakSep_of_steps` ([RowSeparationByRealFunctionalsOfChainSteps.lean#L71](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/RowSeparationByRealFunctionalsOfChainSteps.lean#L71)) with the inputs `PeriodNe`, `CoreOnto` and `Ascent`. `BurGapPos` is at [BurGapOfHyp.lean#L33](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/BurGapOfHyp.lean#L33) and `burGapPos` in [Separate.lean#L32](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/Separate.lean#L32) (145), through `besselMapUniqGap`. `separate_of_burGapPos` is at [SepGap.lean#L222](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/BesselModels/SepGap.lean#L222) (56). `bessel_separate_of_step_gap` ([BesselSeparate.lean#L9](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/BesselSeparate.lean#L9), 288) supplies `CoefTensor` and `TopSep`. The step from $\mathcal E$ to row forms is `GoodRows`. On the trunk all inputs of the theorem are proved. This chapter does not unfold `CoreOnto`, `IsGapDS` or `besselForms`.

## The timeline steps without a counterpart

Step 7 of the timeline asks for determinants for $W(\cdot)$ that contain the GGP periods, with values $0$ and $1$ as interlacing weights. Step 12 says that the period of the iterated lift is a Bessel period that does not depend on the Hecke characters (Rallis). The code has the first half of Step 12, by definition (Section 1).

**Remark (Step 7, determinants).** We found no determinant for $W(\cdot)$ whose entries are GGP periods. The periods enter one at a time, and the passage from many $t$ to one test datum is a dimension bound, not a determinant. The determinant objects of the code serve the hermitian forms and matrix groups. The quantity $W(\cdot)$ has no counterpart here. See [Block determinants and theta Parseval](/proof/determinants/).

**Remark (Step 7, the values $0$ and $1$).** The only counterpart is the sign vectors in $\{0, 1\}$ of the interlacing condition and of the local statement below. We claim no more.

**Remark (Step 12, the Hecke characters).** We found no statement that the period does not depend on the Hecke characters. The one form statements of the rungs hold for all splitting characters that satisfy a product relation, such as $\chi_V = \chi_A \chi_z$. This is uniformity, not an identity between periods for different characters.

**Remark (Rallis).** The name Rallis occurs in a proved Rallis inner product formula: the Petersson inner product of two theta lifts is a zeta integral at a fixed point. FunctionalsSeparate does not use it, and its parent is in the literature branch. The other proof that a theta lift is not zero, through a Rallis identity, is in [Block determinants and theta Parseval](/proof/determinants/).

**Definition (Local Gan-Gross-Prasad statement).** Let $k \ge 2$ be even. Let $u$, $v$, $b$ be parameters with $v_i < u_i$, $u_{i+1} < v_i$, $-b_0 < u_{k-1}$ and half-integral differences. Let $\sigma$ be a discrete series, $\pi$ a finite dimensional representation and $w$ a unit lowest $K$-type vector of $\sigma$. The statement asks for $x$, $x_0$ with
$$\int_{U_W \times N} \langle \sigma(x_0) w, \sigma(p_1 p_2)\sigma(x) w \rangle\, \overline{\psi(p_2)}\, \pi(p_1)^{-1}\, dp_1\, dp_2 \ne 0.$$

Lean: `PI.BesselPeriodGGP.BesselPeriodGGP`

This is the [local Gan-Gross-Prasad conjecture](/learn/periods/#the-gan-gross-prasad-conjectures) at the real place in an interlacing case. The code states it as a proposition only. It is not reachable from the main theorem, and we claim no proof of it. The branch uses the results of Sections 4 and 6 instead.

**Remark (Formalization).** The determinant objects are in `Formalism.QuantumDeterminants`, and the uniform rung statements are `UpBF`, `UpFB` and `UpLast`. The Rallis theorem is `UpperTheory.Lit.Rallis.RallisIPProof.rallis_of_dm` ([RallisDM.lean#L24](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/FockModels/RallisDM.lean#L24), 93). It proves `RallisInnerProductConvergent` from `ResidueKilled.DM`, `SiegelWeilUnitaryConvergent` and `WeilThetaConvergence`, and its parent is `rallis_inner_product_convergent_of_literature`. The local statement is at [BesselPeriodGGP.lean#L105](lean:Formalism/PeriodIntegrals/BesselPeriodGGP.lean#L105), with the signs `eps48`. It is not in the spine, and we found no proof of it.

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked. The guide to this chapter lists the background, from [seesaw pairs](/learn/theta/#seesaw-pairs) to [local multiplicity one](/learn/periods/#local-multiplicity-one).

The list gives the classical sources for the periods, the descent, the seesaw identity, Howe duality, multiplicity one, the discrete series and the Rallis formula.

- A. Aizenbud, D. Gourevitch, S. Rallis and G. Schiffmann, *Multiplicity one theorems*, Ann. of Math. 172 (2010), pages 1407 to 1434.
- W. T. Gan, B. H. Gross and D. Prasad, *Symplectic local root numbers, central critical L-values, and restriction problems in the representation theory of classical groups*, Astérisque 346 (2012), pages 1 to 109.
- W. T. Gan, Y. Qiu and S. Takeda, *The regularized Siegel-Weil formula (the second term identity) and the Rallis inner product formula*, Invent. Math. 198 (2014), pages 739 to 831.
- D. Ginzburg, S. Rallis and D. Soudry, *On explicit lifts of cusp forms from $\mathrm{GL}_m$ to classical groups*, Ann. of Math. 150 (1999), pages 807 to 866.
- B. H. Gross and D. Prasad, *On the decomposition of a representation of $\mathrm{SO}_n$ when restricted to $\mathrm{SO}_{n-1}$*, Canad. J. Math. 44 (1992), pages 974 to 1002.
- Harish-Chandra, *Discrete series for semisimple Lie groups II*, Acta Math. 116 (1966), pages 1 to 111.
- H. He, *On the Gan-Gross-Prasad conjecture for U(p,q)*, Invent. Math. 209 (2017), pages 837 to 884.
- R. Howe, *Transcending classical invariant theory*, J. Amer. Math. Soc. 2 (1989), pages 535 to 552.
- A. Ichino and T. Ikeda, *On the periods of automorphic forms on special orthogonal groups and the Gross-Prasad conjecture*, Geom. Funct. Anal. 19 (2010), pages 1378 to 1425.
- S. Kudla, *Seesaw dual reductive pairs*, in Automorphic Forms of Several Variables, Progr. Math. 46, Birkhäuser, 1984, pages 244 to 268.
- S. Rallis, *Injectivity properties of liftings associated to Weil representations*, Compositio Math. 52 (1984), pages 139 to 169.
- B. Sun and C.-B. Zhu, *Multiplicity one theorems: the Archimedean case*, Ann. of Math. 175 (2012), pages 23 to 44.
