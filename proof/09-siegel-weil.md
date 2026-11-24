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
## The Siegel-Weil formula on doubled unitary groups

The literature node of [the literature inputs](/proof/literature/) takes a bundle $O$ of open literature statements and produces many named statements from it. This chapter treats five: a Siegel-Weil formula, two metaplectic representations, Siegel densities, and a decay bound for cusp forms. Each of the five terms ignores $O$ and returns a theorem that the code proves. So these are proved results with names from the literature, not assumptions. Sections 1 to 4 follow the proof of the Siegel-Weil formula. Section 5 treats the metaplectic group. Section 6 treats covolumes, cusp decay and Poincaré series, and the ideas of the [timeline](/proof/timeline/) with no counterpart in the code.

Throughout, $E$ is a number field over a number field $F$, and $\sigma$ is an $F$-automorphism of $E$. A base datum, good for $\sigma$, fixes an additive character $\psi$ of $\mathbb{A}_F/F$. We write $\mathbb{A}_F$ and $\mathbb{A}_E$ for the [[adele rings|NYJFYZ0B4M]].

**Definition (Doubling datum).** Let $A$ be a definite space of size $m \ge 1$ over $E$, and $Y$ a space of size $n \ge 1$. Either $A$ is [[Hermitian|8NJ7XY6F1S]] and $Y$ is skew-Hermitian, or the reverse. Let $G_2 = U(Y \oplus -Y)$ be the doubled [[unitary group|0R9R0Y1HDK]] with Siegel parabolic $P$, and let $U_A$ be the unitary group of $A$. A doubling datum consists of:

1. a [[Hecke character|KPYFGB342X]] $\chi$ with $\chi(a) = 1$ for $a \in F^\times \cdot N(\mathbb{A}_E^\times)$ and $\chi(a) = (-1)^m$ for the other $a \in \mathbb{A}_F^\times$;
2. a [[Weil representation|H3Q2703KKV]] $\omega$ of $G_2(\mathbb{A})$ on the [[Schwartz space|GE020MY43M]] of $\mathbb{A}^\kappa$ for a finite set $\kappa$, split over the rational points, and an action $S$ of $U_A(\mathbb{A})$ on the same space;
3. a linear functional $l$, invariant under $S$ and under Heisenberg translation by diagonal vectors, such that the sum of $l(\rho(\iota(y, -y))\Phi)$ over rational $y$ is $\theta(\Phi) = \sum_{\xi \in F^\kappa} \Phi(\xi)$.

Lean: `GlobalTheory.ThK.Dbl.IsDbl`

**Definition (Flattened section).** Let $K$ be the standard maximal compact subgroup for a frame $b$. A height is a function $a$ with $a(pk) = |\det t|$ for each Iwasawa decomposition $x = pk$, where $p \in P(\mathbb{A})$ has Levi part $\mathrm{diag}(t, u)$. The flattened section of $f$ at $s_0$ is $f_s(x) = a(x)^{s - s_0} f(x)$.

Lean: `GlobalTheory.ThK.Dbl.flat`

**Definition (Value of an Eisenstein series).** Let $E(x, s, f) = \sum_{\gamma \in P(F) \backslash G_2(F)} f_s(\gamma x)$ be the Siegel [[Eisenstein series|3NZBZXYWAJ]]. It has value $v(x)$ at $s_0$ if for each $x$ there are a meromorphic function $e$ on $\mathbb{C}$ and a real $t$ such that the series converges to $e(s)$ for $\operatorname{Re} s > t$, and $e$ is analytic at $s_0$ with $e(s_0) = v(x)$.

Lean: `GlobalTheory.ThK.Dbl.EisValueAt`

Let $\mu$ be a [[Haar measure|CE0V9686M8]] on $U_A(\mathbb{A})$ and $D$ a [[fundamental domain|WEGEXJBX26]] for $U_A(F)$. The theta integral of $\Phi$ is

$$ I(\Phi)(x) = \frac{1}{\mu(D)} \int_D \theta\big(\omega(x) S_g \Phi\big)\, d\mu(g). $$

**Theorem (Siegel-Weil formula).** Take a doubling datum, a frame $b$ with compact group $K$, a height $a$, a Haar measure $\mu$ and a fundamental domain $D$. Let $\Phi$ be a Schwartz function whose $K$-translates span a space of finite dimension. Put $f(x) = l(\omega(x)\Phi)$ and $s_0 = \tfrac{m-n}{2}$. Then $E(x, s, f)$ has value $c \cdot I(\Phi)(x)$ at $s_0$, where $c = 1$ if $n < m$ and $c = 2$ if $n \ge m$.

Lean: `GlobalTheory.ThK.Dbl.SiegelWeilStd` (proved by `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd`, supplied by `UpperTheory.LiteratureTheorems.siegel_weil_std_of_literature`)

*Proof.* For $n \le m$ the Fourier coefficients of both sides agree (Section 3). For $m < n$ an induction on $n$ reduces the claim to rank $n - 1$ (Section 4). The Assembly theorem of Section 4 combines the cases with the meromorphic continuation of Section 2. $\square$

**Remark (Formalization).** The statement is in [HypothesesS.lean#L11](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesS.lean#L11) and `flat` in [Hypotheses2.lean#L48](lean:Development/WeilBound/ThetaLifts/LatticeBasics/Hypotheses2.lean#L48). The proof `Fin.siegelWeilStd` ([SiegelWeilStd.lean#L8](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStd.lean#L8)) takes no hypotheses. The literature term is at [L563](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L563). [The literature inputs](/proof/literature/) calls it a leaf citation, a one-line call of a proof in another file. The literature node is `every_character_of_literature_of_vWin`. The code takes $\sigma$ to be an $F$-automorphism of $E$, not the conjugation of a CM field. The Galois row has a separate `siegelWeilStd_k` in `SiegelWeilFinFinal.lean`, proved by `siegelWeilStd_of_ct_k`. Dominator sizes: 1,652 and 1,651; the closure of `Fin.siegelWeilStd` has 21,500 declarations.

## The Schrödinger model and Fourier coefficients

The proof moves each Schwartz function to a function on $m \times n$ matrices. There the Siegel parabolic acts by explicit formulas, the theta sum is a sum over rational matrices, and the Fourier coefficients of the theta integral are orbit integrals.

**Definition (Transform and orbit integral).** Put $T\Phi(X) = l(\rho(X b_2^T)\Phi)$ for adelic $m \times n$ matrices $X$, where $b_2$ is the second half of the frame and $\rho$ the Heisenberg action. Put $\mathrm{gram}(X, Z) = X^T J_A\, \sigma(Z)$ with $J_A$ the matrix of $A$, and let $\operatorname{tt}$ be the matrix trace followed by the trace from $\mathbb{A}_E$ to $\mathbb{A}_F$. For a nondegenerate Hermitian $n \times n$ matrix $T$,

$$ \mathrm{orb}_T(\Phi) = \frac{1}{\mu(D)} \int_D \sum_{X \,:\, \mathrm{gram}(X, X) = -2T} T\Phi(g^{-1} X)\, d\mu(g), $$

with $X$ rational. For a function $\varphi$ on $G_2(\mathbb{A})$, its $T$-th Fourier coefficient $W_T(\varphi)(x)$ is the integral of $\varphi(n(\beta) x)\, \psi(-\operatorname{tt}(T\beta))$ over a fundamental domain of Hermitian $\beta$.

Lean: `PositivityTheory.SiegelWeilFormula.SD.orb`

The letter $T$ names both the transform and a coefficient matrix, as in the code.

**Proposition (The Schrödinger model).** The transform has five properties.

1. $T$ is a bijection onto the Schwartz space of $m \times n$ matrices.
2. $\begin{pmatrix} 1 & \beta \\ 0 & 1 \end{pmatrix}$ multiplies $T\Phi(X)$ by $\psi(-\tfrac12 \operatorname{tt}(\beta\, \mathrm{gram}(X, X)))$. The Levi element $\mathrm{diag}(t, u)$ sends $T\Phi$ to $\chi(\det t)\, |\det t|^{m/2}\, T\Phi(X u^{-T})$. The element $g \in U_A(\mathbb{A})$ acts by $X \mapsto g^{-1} X$.
3. For a Weyl element $w$ with sign $\varepsilon$ and a measure $\nu$ of covolume one, $T(\omega(w)\Phi)(X) = \int \psi(\varepsilon \operatorname{tt}\, \mathrm{gram}(X, Z))\, T\Phi(Z)\, d\nu(Z)$.
4. $\sum_X T\Phi(X) = \theta(\Phi)$ over rational $X$, and $\omega$ commutes with $S$.
5. $0 < \mu(D) < \infty$, the theta function is integrable on $D$, and $I(\Phi)$ is continuous and left invariant under $G_2(F)$.

Lean: `PositivityTheory.SiegelWeilFormula.TAll` (proved by `PositivityTheory.SiegelWeilFormula.Fin.tAll_of`)

*Proof.* The Lean proof assembles five results. Part 5 comes from the theorem on Siegel sets for unitary groups. Only part 3 uses Poisson summation, in the form

$$ \sum_X \int \psi(\varepsilon \operatorname{tt}\, \mathrm{gram}(X, Z))\, f(Z)\, d\nu(Z) = \sum_X f(X) $$

for Schwartz $f$ on matrices, with both sums over rational $X$. Part 3 follows from this, from parts 1 and 4, from the invariance $\theta(\omega(w)\Phi) = \theta(\Phi)$, and from a uniqueness statement for the model. $\square$

**Theorem (Meromorphic continuation).** The Siegel Eisenstein series of a $K$-finite section converges and is holomorphic for $\operatorname{Re} s > t$. Near each point $s_1$, some power $(s - s_1)^k$ times the series is holomorphic with values in functions of moderate growth.

Lean: `GlobalTheory.ThK.Dbl.EisBL` (proved by `PositivityTheory.RgEis.Hd.eisBL`)

*Proof.* This is the classical continuation of Eisenstein series; the Lean proof reaches it through majorants of Schwartz-Bruhat sections, which we did not unfold. $\square$

**Lemma (Theta coefficients).** For each $\Phi$, each $x$ and each nondegenerate $T$, $W_T(I(\Phi))(x) = \mathrm{orb}_T(\omega(x)\Phi)$.

Lean: `PositivityTheory.SiegelWeilFormula.ThetaCoef` (proved by `PositivityTheory.SiegelWeilFormula.Fin.thetaCoef`)

*Proof.* This is the classical argument; the Lean proof reaches it through the Siegel set theorem and the Proposition, which we did not unfold. Write the theta sum in the model by part 4. By part 2 the unipotent element multiplies each term by a character of $\beta$. Integration over $\beta$ keeps the terms with $\mathrm{gram}(X, X) = -2T$, and integration over $D$ gives the orbit integral. Part 5 justifies the exchange of sums and integrals. $\square$

**Remark (Formalization).** The bundle `SD` is in [AuxiliaryPrimeFunction.lean#L34](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L34). The five parts are `TBij`, `TPar` ([L178](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L178)), `TWeyl` ([L186](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L186)), `TTheta` and `ThetaAuto`; `ThetaCoef` is at [L197](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L197). The Poisson formula `TW.Twp.poisson` enters `siegelWeilStd_pre` ([SiegelWeilStdPre.lean#L19](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilStandard/SiegelWeilStdPre.lean#L19)) only through `tWeyl_of`. Part 5 is `Tauto.thetaAuto` with `GlobalTheory.T.siegel_set_unitary`. `EisBL` is at [HypothesesE.lean#L46](lean:Development/WeilBound/ThetaLifts/LatticeBasics/HypothesesE.lean#L46).

## The cases n < m and n = m

For $n \le m$ the proof compares Fourier coefficients; for $n = m$ the constant is 2. A function $h$ of $s$ has holomorphic value $v$ at $s_0$ if some meromorphic extension of $h$ near $s_0$ is analytic there with value $v$.

**Proposition (Whittaker coefficients).** Let $\Phi$ be $K$-finite, $T$ nondegenerate and $w$ a Weyl element. Put

$$ h(s) = \int f_s\big(w\, n(\beta)\, x\big)\, \psi(-\operatorname{tt}(T\beta))\, d\lambda(\beta). $$

If $n < m$, then $h$ has holomorphic value $\mathrm{orb}_T(\omega(x)\Phi)$ at $s_0$. If $n = m$, then $h$ has holomorphic value $2\, \mathrm{orb}_T(\omega(x)\Phi)$ at $s_0 = 0$.

Lean: `PositivityTheory.SiegelWeilFormula.WhitK` (proved by `PositivityTheory.SiegelWeilFormula.KWhit.whitK_of`); `PositivityTheory.SiegelWeilFormula.WhitEq` (proved by `PositivityTheory.SiegelWeilFormula.KWhit.whitEq_of`)

*Proof.* This is the classical argument; the Lean proof reaches it through a general Whittaker statement and identities of local densities, which we did not unfold. The integral factors into local Whittaker integrals. Their product at $s_0$ is a product of local densities, which the Siegel mass formula identifies with the orbit integral. For $n = m$ the density identity gives the factor 2. $\square$

**Theorem (The cases n < m and n = m).** Let $\Phi$ be $K$-finite. If $n < m$, then for each $x$ the series $E(x, s, f)$ has holomorphic value $I(\Phi)(x)$ at $s_0$. If $n = m$, it has holomorphic value $2\, I(\Phi)(x)$ at $s_0 = 0$.

Lean: `PositivityTheory.SiegelWeilFormula.Main` (proved by `PositivityTheory.SiegelWeilFormula.KMain.mainOf`); `PositivityTheory.SiegelWeilFormula.MainEq` (proved by `PositivityTheory.SiegelWeilFormula.Atop.mainEq_of`)

*Proof.* This is the classical argument; the Lean proof reaches it through absolute convergence, the model, the theta coefficients, the Whittaker coefficients, an unfolding identity and bounds on local data, which we did not unfold. By the Lemma on theta coefficients and the Proposition, the nondegenerate Fourier coefficients of both sides agree at $s_0$, with the factor 2 when $n = m$. The degenerate coefficients agree by the unfolding identity. A function on $G_2(F) \backslash G_2(\mathbb{A})$ is fixed by its Fourier coefficients. For $n < m$ a second implication, with the meromorphic continuation and a strong form of convergence, turns the holomorphic value into the formula with $c = 1$. $\square$

**Remark (Formalization).** `WhitK` is at [AuxiliaryPrimeFunction.lean#L266](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L266) and `Main` at [L271](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/AuxiliaryPrimeFunction.lean#L271). `whitK_of` calls `whitGenLt`, which uses `PfSWUS.HMass.siegelDensitiesLowA`; `whitEq_of` calls `whitGenEq`, which uses `Rg.Base1.densEq`. `HeadOf` turns `Main` into `SWStdLt` with `EisBL`, `SecK` and `EisStrong`. Absolute convergence is `AbsSt.absThm`. This chapter does not unfold `WhitK`, `WhitEq` or `AbsThm`.

## The case m < n: induction on the rank

For $m < n$ every nondegenerate orbit integral is zero, and the proof runs an induction on $n$. The constant term along a new unipotent splits into a lower rank coefficient and a term that scales in a known way. Holomorphy of the leading Taylor coefficient removes the second term. The induction runs on vacuum vectors and then extends to all $K$-finite vectors.

**Definition (Lower rank datum).** For a datum of size $n \ge 2$, a lower rank datum consists of a datum of size $n - 1$, an index $i_0$, an injection $e$ onto the other indices, and a continuous homomorphism $j : G_2(Y') \to G_2(Y)$ that restricts to the identity on the image of $e$ and is trivial in the row and column of $i_0$. A pair $(\Phi, \Phi')$ with $T\Phi'(X \circ e) = T\Phi(X)$ whenever column $i_0$ of $X$ is zero is a restriction pair. A pair $(T, T')$ is a sub pair if $T$ has zero row and column $i_0$ and $T'$ is the rest of $T$.

Lean: `PositivityTheory.SiegelWeilFormula.LD`

**Lemma (Orbit restriction).** If $m < n$, then $\mathrm{orb}_T(\Phi) = 0$ for nondegenerate $T$. For a sub pair $(T, T')$ and a restriction pair $(\Phi, \Phi')$, $\mathrm{orb}_T(\Phi) = \mathrm{orb}_{T'}(\Phi')$.

Lean: `PositivityTheory.SiegelWeilFormula.OrbRes` (proved by `PositivityTheory.SiegelWeilFormula.Afc.orbRes`)

*Proof.* This is the classical argument; the Lean proof reaches it through lemmas on Gram matrices of embedded matrices, which we did not unfold. If $m < n$, then $\mathrm{gram}(X, X)$ has rank at most $m$, so it is not $-2T$, and the sum is empty. For a sub pair, $\mathrm{gram}(X, X) = -2T$ forces the column $i_0$ of $X$ to have norm zero. Since $A$ is definite, that column is zero, and the restriction pair matches the terms. $\square$

**Proposition (Constant term split).** Let $f$ be a $K$-finite section at $s_1$. There is $t$ such that for $\operatorname{Re} z > t$, for a fundamental domain $\mathcal{U}$ of volume one for the unipotent $u_M$ of the embedding, and for each sub pair $(T, T')$, there is $c_2$ with

$$ \int_{\mathcal{U}} W_T\big(E(\cdot, z, f)\big)(u_M(u)\, x)\, d\nu(u) = W'_{T'}\Big(g \mapsto \sum_{\gamma} a(j(\gamma g) x)^{z - s_1} f(j(\gamma g) x)\Big)(1) + c_2(x), $$

with $\gamma$ over $P'(F) \backslash G_2(Y')(F)$, and $c_2(\iota(y) x) = e^{\tau(n - 2z)} c_2(x)$ for each dilation $y$ of size $\tau$ in the direction $i_0$.

Lean: `PositivityTheory.SiegelWeilFormula.CTSplit` (proved by `PositivityTheory.SiegelWeilFormula.Act.ctSplit_of`)

*Proof.* This is the classical argument; the Lean proof reaches it through five parts (independence of the domain, a compact domain, absolute convergence, the first term identity and a law for the second term), which we did not unfold. Split the cosets by the Bruhat decomposition. The open cell gives the lower rank Eisenstein series. The other cells give a term on which the dilation acts by $e^{\tau(n-2z)}$. $\square$

**Lemma (Holomorphy of the leading term).** Let $1 \le m < n$ with signature $(m, 0)$ or $(0, m)$. Let $\hat{E}(z, g) = d(z) \sum_{\gamma} a(\gamma g)^{z - s_0} f(\gamma g)$ for a polynomial $d$, with locally uniform convergence for $\operatorname{Re} z > t$. Assume that $\hat{E}$ extends holomorphically to a right domain containing $s_0$, and that on each set $x\,\iota(\mathrm{GL}_n)$ the height is a multiple of the local height and $f$ a multiple of $F_0(p, q, e)$. Let $\partial_z^i \hat{E}(s_0, \cdot) = 0$ for $i < j$, and let the singular tests along the Hermitian unipotent kill $\partial_z^j \hat{E}(s_0, \cdot)$. Then each $y \mapsto \partial_z^j \hat{E}(s_0, g\, \iota(y))$ equals $F_0(p, q, e)(y)\, H(Z(y))$ with $H$ holomorphic on the Siegel domain.

Lean: `PositivityTheory.SiegelWeilFormula.HolLead` (proved by `PositivityTheory.Rg.Sw.HSt.holLeadB`)

*Proof.* This is the classical argument; the Lean proof reaches it through a chain of lemmas on Cayley coset sums, which we did not unfold. For a definite signature the singular tests are Cauchy-Riemann equations, so a coefficient that they kill is holomorphic after division by $F_0(p, q, e)$. $\square$

The Lemma does not say that the series has no pole at $s_0$. It says that a leading Taylor coefficient killed by the singular tests is holomorphic of a fixed weight.

**Proposition (Induction step on vacuum vectors).** Let $m < n$, and fix a lower rank datum. If the Eisenstein series of every vacuum vector of rank $n - 1$ has holomorphic value $2 I(\Phi')$ at $s_0$, then the same holds for every vacuum vector of rank $n$.

Lean: `PositivityTheory.SiegelWeilFormula.Step` (proved by `PositivityTheory.SiegelWeilFormula.AStep.stepOf`)

*Proof.* This is the classical argument; the Lean proof reaches it through 25 inputs, which we did not unfold. By the Constant term split, the constant term is a lower rank coefficient plus $c_2$. By hypothesis and Orbit restriction, the lower rank coefficient matches that of $2 I(\Phi)$. The nondegenerate coefficients of both sides vanish. The term $c_2$ scales by $e^{\tau(n - 2z)}$, and the Lemma makes the leading coefficient holomorphic, which forces $c_2$ to vanish. $\square$

**Corollary (The case m ≤ n).** Let $m \le n$ and $\Phi$ be $K$-finite. Then for each $x$, $E(x, s, f)$ has holomorphic value $2\, I(\Phi)(x)$ at $s_0$.

Lean: `PositivityTheory.SiegelWeilFormula.MainLe` (proved by `PositivityTheory.SiegelWeilFormula.Atop.mainLeOf`)

*Proof.* Induct on $n - m$. For $n = m$ use the Theorem of Section 3. For $m < n$ the Proposition gives the claim on vacuum vectors, and a separate proved statement extends it to all $K$-finite vectors. $\square$

**Theorem (Assembly).** The Siegel-Weil formula follows from the meromorphic continuation, the fact that $x \mapsto l(\omega(x)\Phi)$ is a $K$-finite section at $s_0$, the formula for $n < m$, and the Corollary.

Lean: `PositivityTheory.SiegelWeilFormula.FieldOf` (proved by `PositivityTheory.SiegelWeilFormula.Atop.fieldOf`)

*Proof.* For $n < m$ use the formula with $c = 1$. For $n \ge m$ the Corollary gives the holomorphic value $2 I(\Phi)(x)$, and the meromorphic continuation and the section property turn it into a value in the sense of Section 1. $\square$

**Corollary (Theta integrals agree).** Two theta integrals into the same unitary group are proportional, and the local matching of [the theta matching chapter](/proof/theta-matching/) holds.

Lean: `UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature` (proved by `PositivityTheory.ThKR.theoremK_head2`)

*Proof.* The Lean proof applies a reduction theorem to the meromorphic continuation and the Siegel-Weil formula. Each theta integral is a value of an Eisenstein series, so two of them are proportional. See [the step](/step/theta-integrals-agree-and-local-matching-of-literature/). $\square$

**Remark (Formalization).** `LD` is at [LowerRankDatum.lean#L94](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L94), `HolLead` at [L20](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L20), `CTSplit` at [L155](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L155), `OrbRes` at [L175](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L175), `Step` at [L178](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L178) and `FieldOf` at [L194](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/LowerRankDatum.lean#L194). `Step` speaks of vacuum vectors only; the extension is `VacAll`, proved by `Atop.vacAllOfC`. `holLeadB` is in [HolLeadB.lean#L9](lean:Development/WeilBound/RepresentationTheoryGL/SiegelWeilProof/HolomorphicContinuation/CayleyCosetSums/HolLeadB.lean#L9). `ctSplit_of` ([CtSplitOf.lean#L10](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/SiegelWeilActions/CtSplitOf.lean#L10)) ignores its two arguments. `Atop.siegelWeilStd_of` ([SiegelWeilStdLeaves.lean#L40](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/SiegelWeilFormula/FockVacuumBounds/SiegelWeilStdLeaves.lean#L40)) takes 17 hypotheses, has 14 `have` lines and ends with `Atop.fieldOf`. The corollary is at [L565](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L565) and is `theoremK_head2 (eis_bl O) (siegel_weil_std O)`. Dominator sizes: the corollary 8,520, `theoremK_head2` 6,823, `holLeadB` 660 (shared).

## The metaplectic representation

The Weil representation of a real symplectic group lives on its double cover, the metaplectic group. The code states it twice and proves both forms. The only cover in this part of the code is this double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$.

Let $\iota$ be finite, let $\rho(p, q)\varphi(x) = e^{2\pi i (x \cdot q + p \cdot q / 2)}\varphi(x + p)$ be the Heisenberg action on $L^2(\mathbb{R}^\iota)$, and let $\varphi_0(x) = e^{-\pi x \cdot x}$. For a symplectic matrix put $\mathrm{hol}\begin{pmatrix} A & B \\ C & D \end{pmatrix} = \tfrac12((A + D) + i(C - B))$.

**Theorem (Metaplectic representation).** There are a topological group $G$, a surjective covering map $\mathrm{pr} : G \to \mathrm{Sp}(\iota, \mathbb{R})$ whose kernel has two elements, a strongly continuous representation $\Omega$ on $L^2$ by isometries, and a jointly continuous representation $\omega$ on the Schwartz space, such that:

1. $\omega$ agrees with $\Omega$ on Schwartz functions, and $\omega(g)\rho(w) = \rho(\mathrm{pr}(g) w)\omega(g)$;
2. the nontrivial element of the kernel acts by $-1$;
3. $\big(\int \omega(g)\varphi_0\, \overline{\varphi_0}\big)^2 \det \mathrm{hol}(\mathrm{pr}\, g) = \big(\int \varphi_0 \overline{\varphi_0}\big)^2$ for each $g$;
4. if $\mathrm{pr}(g)$ is orthogonal, then $\omega(g)\varphi_0 = c\, \varphi_0$ with $c^2 \det \mathrm{hol}(\mathrm{pr}\, g) = 1$.

Lean: `GlobalTheory.Published.MetaplecticRepresentation` (proved by `GlobalTheory.metaplecticRepresentation_holds`, supplied by `UpperTheory.LiteratureTheorems.metaplectic_representation_of_literature`)

*Proof.* This is the classical construction of Weil; the Lean proof reaches it through a metaplectic cover theorem and an identification of the Schwartz space inside $L^2(\mathbb{R}^\iota)$, which we did not unfold. $\square$

**Theorem (Real metaplectic representation).** Let $\iota$ be nonempty. There are $G$, a surjective covering map $\mathrm{pr}$ with kernel $\{1, \varepsilon\}$, a strongly continuous representation $\Omega$ by isometries with $\Omega(\varepsilon) = -1$, and an action $\omega$ on Schwartz functions, such that:

1. $\Omega$ intertwines the Heisenberg action and agrees with $\omega$;
2. if $\gamma : \mathbb{R}^k \to G$ is continuous and $\mathrm{pr} \circ \gamma$ is smooth, then $t \mapsto \omega(\gamma(t)) f$ is smooth for Schwartz $f$;
3. each $X = \begin{pmatrix} A & B \\ C & D \end{pmatrix} \in \mathfrak{sp}$ gives a one-parameter subgroup $\gamma$ with $\mathrm{pr}\, \gamma(t) = \exp(tX)$, and the derivative of $\omega(\gamma(t)) f$ at $0$ is

$$ \frac{1}{4\pi i} \sum_{j,k} B_{jk}\, \partial_j \partial_k f - \sum_{j,k} A_{jk}\, x_k\, \partial_j f - \frac{\operatorname{tr} A}{2} f - \pi i \sum_{j,k} C_{jk}\, x_j x_k f. $$

Lean: `GlobalTheory.Published.RealMetaplecticRepresentation` (proved by `PositivityTheory.ThKR.realMetaplecticRepresentation_holds`, supplied by `UpperTheory.LiteratureTheorems.real_metaplectic_representation_of_literature`)

*Proof.* This is the classical oscillator representation; the Lean proof reaches it through a proved real form of the metaplectic theorem, which we did not unfold. $\square$

**Remark (Formalization).** The statements are in [MetaplecticRepresentation.lean#L94](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/MetaplecticRepresentation.lean#L94) and [RealMetaplecticRepresentation.lean#L351](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/RealMetaplecticRepresentation.lean#L351). The first proof ([MetaplecticRepresentationHolds.lean#L17](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/MetaplecticRepresentationHolds.lean#L17)) uses `GlobalTheory.T.metaplectic_cover_weil_representation` and `schwartz_L2_euclidean_identification`. The second literature term is `PositivityTheory.Stage1.PM.realMetaplecticRepresentation`. The literature terms are at [L463](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L463) and [L491](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L491), with dominator sizes 42 and 133.

## Covolumes, cusp decay and Poincaré series

Timeline steps 3, 16 and 18 of the note use a sixfold cover of $\mathrm{GL}_5$, a relative trace formula, a Cauchy-Schwarz bound on a projected Poincaré series, and covolumes. The code has none of the first three. What it has is on unitary groups: covolumes appear as finite volume and Siegel densities, and Poincaré series appear once, to build a [[cusp form|9AZ164C298]] with a nonzero theta period. The last Remark lists the gaps.

**Theorem (Finite volume and Siegel densities).** Let $E/F$ be a CM extension and $J$ a nondegenerate Hermitian matrix of size $M$. Then:

1. $U_J(\mathbb{A})$ has a Haar measure, and every fundamental domain $\mathcal{F}$ for $U_J(F)$ has finite measure;
2. if $2n < M$, $T$ is a nondegenerate Hermitian $n \times n$ matrix and $\Phi = \Phi_\infty \otimes \Phi_f$ with $\Phi_\infty$ smooth of compact support and $\Phi_f$ pure, then for all choices of measures, domain and $\psi$ there are continuous local densities $g_\infty$ and $g_v$, the product $\prod_v g_v(T)$ converges, and the mean over $\mathcal{F}$ of $\sum_{\mathrm{gram}(X) = T} \Phi(g^{-1}X)$ is $g_\infty(T) \prod_v g_v(T)$.

Lean: `HeckeCharacterZeroLocus.SiegelWeilU.SiegelWeilUnitaryConvergent` (proved by `GlobalTheory.CompanionTheory.SW.siegelWeilUnitaryConvergent`, supplied by `UpperTheory.LiteratureTheorems.siegelWeilU_unitary_convergent_of_literature`)

*Proof.* The Lean proof pairs two proved theorems: the finite volume of the unitary group, which is the theorem of Borel and Harish-Chandra, and the Siegel densities for Hermitian forms, which is Siegel's mass formula in the convergent range. We did not unfold either. $\square$

**Theorem (Convergent Siegel-Weil formula).** Let $\operatorname{rank} A < \operatorname{rank} B \le 2 \operatorname{rank} A$ and $\operatorname{rank} A + w(B) < \operatorname{rank} B$, with $w(B)$ the Witt index. Then for each Fock vector the theta kernel is integrable, and the Siegel Eisenstein series has value at $s_0$ equal to the mean of the theta integral.

Lean: `GlobalTheory.Published.SiegelWeilUnitaryConvergent` (proved by `UpperTheory.Lit.Sw47.convergent`)

*Proof.* This is Weil's convergent Siegel-Weil formula; the Lean proof is a proved term that ignores the bundle $O$, and we did not unfold it. $\square$

**Theorem (Rapid decay of cusp forms).** Fix an open compact subgroup $U$. For all $N$ and $M$ there are $d$ and $C$ such that each smooth, cuspidal, right $U$-invariant [[automorphic form|68SJQEC11F]] $\varphi$ with all growth norms finite satisfies

$$ \sup_g |\varphi(g)|\, h(g)^M \le C \sum_{|w| \le d} \sup_g \frac{|X_w \varphi(g)|}{\mathrm{ht}(g)^N}, $$

where $h(g)$ is the infimum of the height over rational translates of $g$ and $X_w$ runs over Lie derivatives along words of length at most $d$.

Lean: `GlobalTheory.Published.CuspDecaySobolev` (proved by `GlobalTheory.Size.cuspDecaySobolev_of_bound`, supplied by `UpperTheory.LiteratureTheorems.cusp_decay_sobolev_of_literature`)

*Proof.* The Lean proof applies a reduction from decay bounds to Sobolev bounds to a geometric decay bound for cusp forms on Siegel sets. This is the classical route, and we did not unfold either input. $\square$

**Proposition (The identity term dominates).** Let $\varphi$ be continuous and automorphic with $|\varphi| \le b$ and $|\varphi(x)| > b/2$ at some $x$. Let $0 \le s \le 1$, let $r$ be the rank, $N\mathfrak{m}$ the norm of the level, and $Q$ and $|\tau|$ two constants of the datum, which satisfies the length and adelic conditions. If $2 e^{Q + (6r + 9)|\tau|} \le s^{|\tau|} \sqrt{N\mathfrak{m}}$ and $1 < s^{|\tau|} \sqrt{N\mathfrak{m}}$, then $\int_{\mathcal{F}} P(h)\, \varphi(h)\, d\mu(h) \ne 0$ for the Poincaré series $P$ of the datum.

Lean: `GlobalTheory.T.poincareSeries_pairing_ne_zero_of_large_level` (proved by `GlobalTheory.IdDom.identity_dominates`)

*Proof.* This is the classical argument; the Lean proof reaches it through one theorem that the identity term dominates, which we did not unfold. Unfold the integral. The identity term is large because $|\varphi(x)| > b/2$, and the inequality makes it larger than the sum of the other terms. $\square$

**Theorem (A cusp form with nonzero theta period).** Assume the theorems on Harish-Chandra modules, Casselman-Wallach globalization and rapid decay of cusp forms, the existence of packets and the depth estimate. Under the eigenvalue condition of the datum, for each nonzero row $t$ there are a cusp form $y$ in the core forms and vectors $v, w$ with $\mathrm{per}_0(y(v), t(w)) \ne 0$.

Lean: `UpperTheory.Lit.Cusp.exists_cusp_form_theta_period_ne_zero`

*Proof.* The Lean proof combines two results. Under the first three inputs, a Poincaré series is a cusp form in the core forms. By the Proposition, its pairing with a suitable automorphic function is not zero at large level. On the trunk all five inputs are proved terms. $\square$

This theorem is used to show that local functionals separate. That proof also takes the convergent Siegel-Weil formula as an input; see [Bessel periods and the seesaw](/proof/bessel-seesaw/).

**Remark (Formalization).** `SiegelWeilUnitaryConvergent` is in [SiegelWeilUnitaryConvergent.lean#L46](lean:Formalism/UnipotentAdelicQuotients/SiegelWeilUnitaryConvergent.lean#L46), with `SiegelDensities` at [L18](lean:Formalism/UnipotentAdelicQuotients/SiegelWeilUnitaryConvergent.lean#L18). Its proof is `⟨finVol_unitaryGroup, GlobalTheory.T.siegel_densities_of_hermitian_form⟩`. The statement of the same name in `GlobalTheory.Published` is supplied by `siegel_weil_unitary_convergent_of_literature`, which ignores $O$. The covolume bound `CovolumeBoundOfX` of [the theta matching chapter](/proof/theta-matching/) ([LiftLambdaBound.lean#L60](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/LiftLambdaBound.lean#L60)) is a different statement and also matches step 18. `CuspDecaySobolev` is in [ExistsGrowthSobNeTopOfIsAutFunSm.lean#L18](lean:Development/AbelianVarietyTheory/PublishedTheorems/TwistedTraceFormula/ExistsGrowthSobNeTopOfIsAutFunSm.lean#L18); its route is `CuspGeo.cuspDecayBound`. The Poincaré chain is in `functionalsSeparate_of_howeUnram_of_siegelWeil` ([FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/FunctionalsSeparateOfHoweUnramOfSiegelWeil.lean#L17)). The period theorem ([Period.lean#L18](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/Period.lean#L18)) calls `exists_multT_eq_poin` ([ExistsMultTEqPoin.lean#L75](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/RealBands/ExistsMultTEqPoin.lean#L75)), which takes three of the five inputs, and the Proposition ([PoincareSeriesIdentityTermDominatesStatement.lean#L11](lean:Development/AbelianVarietyTheory/Proofs/TwistedOperators/PoincareSeriesIdentityTermDominatesStatement.lean#L11)). `Branch.periodNe_of_eigen` supplies the inputs from `ThetaLocalInputs`, `packEx_of_eigen` and `gridDepth_pays_every_loss`. For the timeline items below: the GL5 folder is `Formalism/LocalToGlobal/GlobalTheory/GL5`, and `GL5LogLValueBoundByZeta` is a bound on $L$-values. The Kazhdan-Patterson theorem is `GlobalTheory.EisRes.eisCore_of_kazhdanPatterson`, with hypothesis `GlobalTheory.ThK.KP`. The relative trace is `relTrace`. The Poincaré folder is `BlockTheory/PoincareCuspForms`.

**Remark (Timeline steps without a counterpart).** These items of timeline steps 3, 16 and 18 have no counterpart in the code.

1. The sixfold cover of $\mathrm{GL}_5$ (steps 3 and 16). The only cover here is the double cover of Section 5. A folder of 15 files named GL5 holds measure and stabilizer lemmas. A theorem named after Kazhdan and Patterson takes a bundle of published statements on unitary groups and $\mathrm{GL}$, with no cover.
2. The statement "$N$ is automorphic" (step 3). The code builds no automorphic form from the counting function $N$. The nearest result is the Siegel-Weil formula: a period integral of thetas is an Eisenstein series.
3. The relative trace formula (step 16). A name for a relative trace exists, but it is a trace of fields.
4. A Cauchy-Schwarz bound on a projected Poincaré series (step 16). Cauchy-Schwarz appears only as general lemmas, and the Poincaré series of the code give a lower bound, not an upper bound.
5. The index of theta series (step 18). Only its covolume part has a counterpart: the finite volume above.

A folder named PoincareCuspForms has 18 files, but its name does not describe its content. The Poincaré series of this section are elsewhere.

## Notes and references

The formula goes back to Siegel and Weil. The regularized form is due to Kudla and Rallis and, for unitary groups, to Ichino; the literature list of the site cites these two for the theta integrals. Gan, Hanke and Yu give an exact mass formula. Finite volume is due to Borel and Harish-Chandra. We found no reference with pages in these repos for the decay of cusp forms or for the Poincaré series.

[The Galois row](/proof/galois-row/) uses a separate Siegel-Weil statement. This chapter does not compare the two, and does not check that each statement matches the published theorem of its name. The Lean code is not reviewed by people, and the site does not claim that it is correct. The [trust report](/trust/) says what has been checked.

- A. Borel and Harish-Chandra, *Arithmetic subgroups of algebraic groups*, Ann. of Math. 75 (1962), pages 485 to 535.
- W. T. Gan, J. P. Hanke and J.-K. Yu, *On an exact mass formula of Shimura*, Duke Math. J. 107 (2001), pages 103 to 133.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- S. S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- C. L. Siegel, *Über die analytische Theorie der quadratischen Formen*, Ann. of Math. 36 (1935), pages 527 to 606.
- C. L. Siegel, *A mean value theorem in geometry of numbers*, Ann. of Math. 46 (1945), pages 340 to 347.
- A. Weil, *Sur certains groupes d'opérateurs unitaires*, Acta Math. 111 (1964), pages 143 to 211.
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965), pages 1 to 87.
