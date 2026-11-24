---
title: Theta integrals and local matching
description: The trunk step every_character_of_theta_integrals_local_matching, and its branch every_character_of_green_v_win. The page says what the Lean code means by theta integrals and local matching, and how the step reaches EveryCharacter.
lead: The Lean code takes a list of named inputs, two statements about theta integrals on unitary groups, a covolume bound, a local Langlands map and the statement VWin, and gets EveryCharacter from them. This page unfolds the two theta statements and follows the short branch that ends in L-function nonvanishing.
level: L1
status: draft
lean:
  - name: UpperTheory.Lit.every_character_of_theta_integrals_local_matching
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 69
  - name: UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean
    line: 44
  - name: UpperTheory.Top.every_character_of_green_v_win
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean
    line: 16
  - name: UpperTheory.Top.zero_free_all_of_green_v_win
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean
    line: 12
  - name: GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree
    file: Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean
    line: 585
  - name: GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching
    file: Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean
    line: 581
  - name: UpperTheory.Top.imprimitive
    file: Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean
    line: 5
  - name: UpperTheory.Top.zeroFreeAll_of_topG
    file: Development/AutomorphicArithmetic/CharacterBoxes/ZeroFreeAllOfTopG.lean
    line: 26
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
  - tag: WEGEXJBX26
    text: Fundamental domain
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
  - tag: 087EMZTHWN
    text: von Mangoldt function
next:
  - text: The literature inputs
    path: proof/literature/
    sub: the previous step on the trunk
  - text: The unitary hypotheses
    path: proof/unitary-hypotheses/
    sub: the next step on the trunk
  - text: The map of the trunk
    path: proof/trunk/
    sub: where this step sits
steps: [theta-local-matching, theta-integrals-agree-def, local-matching-def, green-of-regular, green-def, green-vwin, zero-free-all-of-green-v-win, imprimitive]
---
## The theorem and its inputs

The trunk of the proof (see [the map](/proof/trunk/)) reaches this step from [the literature inputs](/proof/literature/). The step proves that Dirichlet L-functions have no zero in the half-plane $\operatorname{Re}(s) > \tfrac12$. It takes seven inputs: two statements about theta integrals on unitary groups, a covolume bound, a local Langlands map, the statement VWin of [the VWin page](/proof/vwin/), and two large bundles of named statements. Sections 2 to 4 unfold the theta statements, Section 5 gives the trunk part, and Sections 6 and 7 follow the short branch. The [trunk step](/step/theta-local-matching/) gives the Lean statement.

Throughout, $E/F$ is a CM extension of number fields with conjugation $\sigma$, and $\mathbb{A}_F$ is the [[adele ring|NYJFYZ0B4M]]. We use [[Dirichlet characters|JR4QSEFXWF]], [[Dirichlet L-functions|24GAZHVTGB]] and the [[von Mangoldt function|087EMZTHWN]] $\Lambda(n)$.

**Definition (Nonvanishing for every character).** EveryCharacter is this statement. Let $N \ge 1$, let $\chi$ be a Dirichlet character modulo $N$ and let $\operatorname{Re}(s) > \tfrac12$. If $\chi \ne 1$ or $s \ne 1$, then $L(s,\chi) \ne 0$. Here $L(s,\chi)$ is the Dirichlet L-function of Mathlib.

Lean: `UpperTheory.EveryCharacter`

**Theorem (Local Langlands for $\mathrm{GL}_n$, Harris and Taylor, Henniart).** Let $w$ be a finite place of a number field $E$, and fix a place of an algebraic closure above $w$. Then there is a map $\mathrm{rc}$ from the irreducible smooth representations of $\mathrm{GL}_n(E_w)$ to $n$-dimensional Weil-Deligne representations. It is class field theory for $n = 1$. It respects segments, twists, central characters and contragredients, sends cuspidal representations to irreducible ones, is injective on good representations, and obeys a depth law and a type law.

Lean: `UpperTheory.Zero.LLC.RecTExists` (supplied by `UpperTheory.LiteratureTheorems.local_langlands_gl_recT_exists_of_literature`)

*Proof.* The supplying term returns a field of the record of open literature statements. The trunk fills that field with the proved existence theorem of the [Galois row chapter](/proof/galois-row/), so on the trunk this input is proved, not assumed. This chapter does not list all the laws. See Henniart (2000). $\square$

**Theorem (Theta integrals and local matching give every character).** Assume the unitary hypotheses, the local theta inputs, the agreement of theta integrals of Section 4, local matching of Section 3, the covolume bound, local Langlands and VWin. Then EveryCharacter holds.

Lean: `UpperTheory.Lit.every_character_of_theta_integrals_local_matching`

*Proof.* The Lean proof combines three results. The proposition of Section 5 turns the Green field of the unitary hypotheses into Green's parametrization. The trunk theorem of Section 5 gives a term of the record HypsAlt; its last hypothesis is the linked bound field, sent through the local Langlands map. The corollary of Section 7 takes these two results and VWin, and gives EveryCharacter. $\square$

The branch of Sections 6 and 7 does not use the two theta inputs. They act only through HypsAlt, which [the next chapter](/proof/unitary-hypotheses/) builds. This chapter does not show how the constant of Section 4 and its recursion laws are used there.

**Remark (How the trunk supplies the inputs).** The parent step supplies all inputs from a record of three open literature statements: a dual form of local-global compatibility of Caraiani, the existence of local Langlands, and Galois representations for polarized pairs. Many supplying terms take this record as an argument and do not read it, so their inputs are proved. The two theta statements come from one proved term that ignores the record. The covolume bound comes from proved terms. Local Langlands is a field of the record, and the trunk fills that field with a proof. Four fields of the unitary hypotheses read the record, and the trunk uses one of them, the nonexistence field. The Green field, the linked bound field and the local theta inputs do not read it. The trunk proves VWin from the Galois row ([VWin chapter](/proof/vwin/)). No input of this branch is open on the trunk.

**Remark (Formalization).** `UnitaryGroupThirdPlaceHypotheses` has 60 fields and `ThetaLocalInputs` has 53. Most have the names of published theorems, for example `jacquetShalika` and `howeDualityReal`. This chapter uses only `greenRegularCharacters`, `nLink` and `litN`, and does not check each field against its published theorem. The fields that read `OpenLiteratureStatements` are `galoisRepOfPolarizedCuspidal`, `heckeLAdicCharacterAbove`, `localGlobalAboveL` and `litN`. The local Langlands term is `llOf_alt` applied to `O.localLanglandsExists`, and `llOf_alt` returns its first argument. The main theorem dominates 313,327 declarations, and its closure has 452,823.

## Weil models, theta integrals and admissible triples

The code writes global theta lifts between [[unitary groups|0R9R0Y1HDK]] of [[Hermitian forms|8NJ7XY6F1S]] out by hand, in the Schrödinger model of the [[Weil representation|H3Q2703KKV]]. The background is the [[theta correspondence|6WB6TKE70H]], with [[Schwartz functions|GE020MY43M]], [[Haar measure|CE0V9686M8]], a [[fundamental domain|WEGEXJBX26]] and [[Hecke characters|KPYFGB342X]].

**Definition (Spaces and adelic unitary groups).** Put $\mathbb{A}_E = \mathbb{A}_F \otimes_F E$. A space of size $n$ consists of a matrix $J \in M_n(E)$, an $\mathcal{O}_E$-lattice $L \subset E^n$, a matrix $\theta_w$ at each infinite place $w$ of $F$, and a basis $b_v \in \mathrm{GL}_n(F_v)$ at each finite place $v$. Its adelic unitary group is

$$U_J(\mathbb{A}) = \{ g \in \mathrm{GL}_n(\mathbb{A}_E) : g^{T} J\, \sigma(g) = J \},$$

with the subgroup $U_J(F)$ of rational points. Each $g$ has a height $\mathrm{ht}(g)$, and $\mathrm{ht}_Q(g) = \inf_{\gamma \in U_J(F)} \mathrm{ht}(\gamma g)$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc`

**Definition (Weil model).** Let $X$ and $W$ be spaces of sizes $n$ and $d$. A Weil model $M$ for $(X, W)$ consists of Darboux coordinates for the symplectic form on $X \otimes W$, indexed by pairs $(i, j)$ with $i \le n$ and $j \le d$, a vacuum vector $\varphi^0_v$ at each finite place, a measure $\mu$ on $U_X(\mathbb{A})$ and a set $D \subset U_X(\mathbb{A})$. The model is good if the coordinates send rational points to rational points, $\varphi^0_v$ is a vacuum vector at every place, $\varphi^0_v$ is the indicator function of the integral points for almost all $v$, $\mu$ is a Haar measure, and $D$ is a fundamental domain for $U_X(F)$ in $U_X(\mathbb{A})$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Model.IsGood`

The coordinates split $X \otimes W$ into two copies of $F^{n \times d}$, so the Weil representation acts on functions on $\mathbb{A}_F^{n \times d}$.

**Definition (Theta function and theta integral).** Let $\omega$ be a representation of $U_X(\mathbb{A}) \times U_W(\mathbb{A})$ on functions $\Phi$ on $\mathbb{A}_F^{n \times d}$. Put

$$\theta(g, h; \Phi) = \sum_{\xi \in F^{n \times d}} \big(\omega(g, h)\Phi\big)(\xi), \qquad I_M(\Phi)(h) = \int_{D} \theta(g, h; \Phi)\, d\mu(g).$$

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Model.I`

This is the usual theta lift from $U_X$ to $U_W$. Convergence is not part of the definition. It is part of the decay condition of Section 4.

**Definition (Base data).** Base data consist of an additive character $\psi$ of $\mathbb{A}_F$, an embedding of $E$ over each infinite place, integer functions $m_\alpha$ and $m_\beta$ on the infinite places, a finite set $P$ of places with embeddings $\tau_v \colon E \to F_v$, and a place $v_1$ with an embedding $\tau_1$. The data are good if $E/F$ is CM, $E/\mathbb{Q}$ is Galois, $\mathcal{O}_E/\mathcal{O}_F$ is unramified and $\psi$ is standard. Also $\psi$ is unramified at $P$ and at each inert place $v$, and each inert $v$ has $v \nmid 2$ and norm more than 3.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base.IsGood`

**Definition (Geometry).** A geometry consists of numbers $a' < a$, $p$ and $q$, spaces $V$, $V'$ and $W$ of sizes $a$, $a'$ and $a + a'$, and Weil models $M$ for $(V, W)$ and $M'$ for $(V', W)$. It is good if these conditions hold.

1. $a + a'$ is even, and $a + a' < m_\alpha(w) - m_\beta(w)$ at each infinite place $w$.
2. $2(p+q) + 1 < (a - a')/2$ and $2(p+q) + 1 < a'$.
3. $V$ is Hermitian with signature $(a - p, p)$, and $V'$ is Hermitian with signature $(q, a' - q)$.
4. $W$ is skew-Hermitian with signature $(a + a' - p - q, p + q)$.
5. $M$ and $M'$ are good.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo.IsGood`

**Definition (Characters).** Character data consist of characters $\alpha$ and $\beta$ of $\mathbb{A}_E^\times$ and disjoint finite sets $S_0$ and $Q$ of finite places of $F$. Put $\nu = \alpha/\beta$ and $T = S_0 \cup Q$. Let $\eta$ be the quadratic character of $\mathbb{A}_F^\times$ that is trivial exactly on $F^\times N(\mathbb{A}_E^\times)$. The data are good if these conditions hold.

1. $\alpha$ and $\beta$ are Hecke characters with exponents $m_\alpha$ and $m_\beta$, and their restrictions to $\mathbb{A}_F^\times$ are $\eta^{a'}$ and $\eta^{a}$.
2. $T \subseteq P$, $\nu$ is ramified at every place of $E$ above $T$, and $\alpha$ and $\beta$ are unramified outside $T$.
3. $v_1$ is good: $v_1 \notin T$, and the rational prime below $v_1$ splits completely in $E$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars.IsGood`

**Definition (Admissible triple).** An admissible triple consists of good base data, a good geometry, good character data and two representations. The first, $\omega$, is a Weil representation of $U_V \times U_W$ in $M$ with splitting characters $(\beta, \beta/\alpha)$. The second, $\omega'$, is a Weil representation of $U_{V'} \times U_W$ in $M'$ with splitting characters $(\alpha, \alpha/\beta)$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsTriple`

**Remark (Formalization).** The definitions of Sections 2 to 4 are in [WeilTensorModels.lean](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L286). The group is `UA σ J`, and the quotient height is `qht`. The sum over rational points is `thetaSum` ([HilbertNinetyQuotientHomEqIff.lean#L107](lean:Development/AbelianVarietyTheory/Definitions/Divisors/HilbertNinetyQuotientHomEqIff.lean#L107)). The functions have the type `(Fin n × Fin d → AF F) → ℂ`, so they live on $\mathbb{A}_F^{n \times d}$, not on a space of $2nd$ coordinates. The triple is at [WeilTensorModels.lean#L388](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L388).

## Local matching

Local matching says that the two local theta lifts of a triple share an irreducible quotient at every place, in the form of Howe duality. The [step page](/step/local-matching-def/) gives the Lean statement.

**Definition (Matched maps at the finite places).** Finite matched maps give, for each finite place $v$, linear maps $p_v$ and $p'_v$ from the local Schwartz-Bruhat spaces of $\omega_v$ and $\omega'_v$ onto a space $\Pi_v$, with these conditions.

1. $p_v$ kills the $U_V(F_v)$-coinvariants, and $p'_v$ kills the $U_{V'}(F_v)$-coinvariants.
2. If $p_v \varphi = p'_v \varphi'$, then the same holds after $h \in U_W(F_v)$ acts on both.
3. $\Pi_v$ is nonzero and has no proper nonzero $U_W(F_v)$-stable subspace.
4. If $v \notin T$, the two vacuum vectors have the same nonzero image.
5. If $v \in T$, the images satisfy a zeta condition with two explicit local integrals.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsFinMaps`

**Definition (Matched maps at the infinite places).** Real matched maps give a nonzero irreducible space $\Pi_\infty$ and two linear maps from the polynomial Fock spaces of the two models onto $\Pi_\infty$. The maps kill the Lie algebra images of $U_V$ and $U_{V'}$, are invariant under the maximal compact subgroups, and respect the action of $U_W$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsRealMaps`

**Definition (Matched test functions).** Let $S_o$ be the span of the pure tensors $\bigotimes_v \varphi'_v$ whose component at $v_1$ is supported on matrices of full rank in a linear model. A pair $(\Phi, \Phi')$ is matched if $\Phi' \in S_o$, both functions are limits of sums of pure tensors, and for some finite $T' \supseteq T$ the pieces have the same image in $\Pi_\infty \otimes \bigotimes_{v \in T'} \Pi_v$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Match`

**Definition (Local matching).** Local matching is the statement: for every admissible triple there are real maps and finite maps that match it.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching`

Classically, local matching comes from Howe duality (Howe 1989) and theta dichotomy (Harris, Kudla and Sweet 1996). The code proves it through the theorem of Section 4.

**Remark (Formalization).** The zeta condition is `IsZetaAt`, with the integrals `bigP` and `smallP`, and the matched triple is `IsMatched` ([WeilTensorModels.lean#L581](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L581)).

## One constant and its recursion laws

The agreement of theta integrals says that the integrals converge, and that the two lifts of matched test functions are proportional with one nonzero constant $c$. Two recursion laws split a hyperbolic plane off one space and relate $c$ to the constant $c_1$ of the smaller triple. The [step page](/step/theta-integrals-agree-def/) gives the Lean statement.

**Definition (Decay).** An admissible triple has decay if three conditions hold. For each adelic Schwartz function $\Phi$, $\theta(\cdot, h; \Phi)$ is integrable on $D$. For each $\Phi' \in S_o$ and each $N$, there are $C$ and $k$ with $|\theta(g, h; \Phi')| \, \mathrm{ht}_Q(g)^N \le C\, \mathrm{ht}(h)^k$ for all $g$ and $h$. For each $\Phi' \in S_o$, $I_{M'}(\Phi')$ converges and has moderate growth.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Decay`

**Definition (One constant).** Fix a matched triple. A number $c$ is a proportionality constant if $I_M(\Phi)(h) = c \cdot I_{M'}(\Phi')(h)$ for all matched pairs $(\Phi, \Phi')$ and all $h$. The triple has one constant if some $I_{M'}(\Phi')$ with $\Phi' \in S_o$ is not zero and there is exactly one proportionality constant, which is nonzero.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.OneConst`

**Definition (Coinvariants).** A matched triple has exact coinvariants if $S_o$ is stable under $\omega'$ and, at each good place $v$, the kernels of $p_v$ and $p'_v$ are the coinvariant spaces, $p'_v$ is onto on the full rank functions, and every functional that kills the coinvariants of $\omega'_v$ factors through $p'_v$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Coinv`

**Definition (Adapted plane).** A plane in a space $Y$ of size $n$ is a pair of isotropic vectors $x$, $y$ with $\langle x, y \rangle = 1$ and an orthogonal embedding $\iota$ of a space $Y_1$ of size $n - 2$ with $\iota^{T} J\, \sigma(\iota) = J_1$. It is adapted if the lattices, the splittings $z = s x + \iota u + t y$ and the Cartan matrices are compatible. It carries the ideal $\mathfrak{b} = \{ s : s x \in L \}$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Plane.IsAdapted`

**Definition (Step factor).** Let $e_1$, $e_2$ and $s$ be units of $\mathbb{Z}$, and let $\mathfrak{b}$ and $\mathfrak{c}$ be fractional ideals of $E$. For $z \in \mathbb{Z}$ put

$$\mathrm{stepFac}(z) = \nu(\mathfrak{b})^{e_1}\, \nu(\mathfrak{c})^{e_2} \prod_{v \in P \cap T} \nu_v(s)\, \varepsilon(\psi, \nu_v, z), \qquad \varepsilon(\psi, \nu_v, z) = N(v)^{-c z}\, g(\psi, \nu_v)\, \nu_v(\varpi_v)^{c},$$

where $c$ is the conductor exponent of $\nu_v$ and $g(\psi, \nu_v)$ is a Gauss sum.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.stepFac`

Let $L^{S_0}(s, \nu)$ be the partial Euler product of $\nu$ over the places of $E$ not above $S_0$.

**Definition (Recursion law $\beta$).** Let $G$ and $G_1$ be geometries with the same $V$ and $p$, and with $q = q_1 + 1$. The space $V'$ has size $b + 2$ and $V'_1$ has size $b$, with an adapted plane at the indices $0$ and $b+1$, and $W$ loses an adapted plane at the indices $a$ and $a + b + 1$. The law says: there is $C \ne 0$ such that for all matched data, there is $u$ with $u \cdot C \cdot \mathrm{stepFac}(-(a-b-2)/2) = 1$ and

$$c \cdot L^{S_0}\big(\tfrac{a-b-2}{2} + 1, \nu\big) = u \cdot c_1.$$

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.StepBeta`

**Definition (Recursion law $\alpha$).** Let $G$ and $G_1$ be geometries with the same $V'$, with $q = q_1 = 0$ and $p = p_1 + 1$. The space $V$ has size $b + 2$ and $V_1$ has size $b$, with adapted planes at the indices $0$ and $b+1$ in $V$ and in $W$. The law says: there is $C \ne 0$ such that for all matched data,

$$c = C \cdot \mathrm{stepFac}\big(1 - \tfrac{b+2-a'}{2}\big) \cdot L^{S_0}\big(\tfrac{b+2-a'}{2}, \nu\big) \cdot c_1.$$

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.StepAlpha`

**Definition (Agreement of theta integrals).** This is the conjunction of three statements. Every admissible triple has decay, and every matched triple has one constant and exact coinvariants. For some units $e_1$, $e_2$, $s$, the law $\beta$ holds for all $F$, $E$ and $\sigma$. For some units, the law $\alpha$ holds for all $F$, $E$ and $\sigma$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree`

**Theorem (Agreement of theta integrals and local matching).** The agreement of theta integrals holds, and local matching holds.

Lean: `UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature` (through `PositivityTheory.ThKR.theoremK_head2`)

*Proof.* The Lean proof combines two proved inputs, a statement on Eisenstein series and a standard form of the Siegel-Weil formula, with proved pieces of Howe duality, a spherical splitting statement and a core Siegel-Weil statement. We did not unfold it. The term takes the record of open literature statements as an argument and does not read it. $\square$

So both theta statements are proved on the trunk, with the Eisenstein and Siegel-Weil inputs; see the [Siegel-Weil page](/proof/siegel-weil/).

**Remark (Formalization).** The step factor is at [WeilTensorModels.lean#L552](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L552), the laws at [WeilTensorModels.lean#L559](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L559), and the conjunction at [WeilTensorModels.lean#L585](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L585). The partial L-value is `charL`. The bound in `Decay` uses `qht g`, not `ht g`. The proof term is `theoremK_head2` applied to `eisBL` and `siegelWeilStd`, and it dominates 8,520 declarations. This chapter does not unfold `EisBL` or `SiegelWeilStd`.

## The trunk part and Green's parametrization

The trunk part uses all inputs except VWin and builds the record HypsAlt; [the next chapter](/proof/unitary-hypotheses/) follows it. The branch also needs Green's parametrization of the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$, which comes from a proved field of the unitary hypotheses.

**Theorem (Nonempty hypothesis record).** Assume the unitary hypotheses, the local theta inputs, the two theta statements, the covolume bound and local Langlands. Assume also, for each dependence constant, the linked bound at the parameters that local Langlands gives. Then the record HypsAlt, with the closed linked condition and the definite side condition, is not empty.

Lean: `UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound`

*Proof.* The Lean proof combines the nonexistence field with ten proved inputs, among them a test vector assembly from the theta statements and an $L^3$ bound for linked bundles from the covolume bound. We did not unfold them. See the [step page](/step/nonempty-hyps/) and [the next chapter](/proof/unitary-hypotheses/). $\square$

The closed linked condition is the form that the branch asks for. HypsAlt has 46 fields: a family class, a selection and 44 bounds and choices. See the [step page](/step/hyps-alt-def/).

**Theorem (Green, regular characters).** Let $g$ be a prime, $d > 0$ and $K$ a field of degree $d$ over $\mathbb{F}_g$. A character $\theta$ of $K^\times$ is regular if the $\theta^{g^i}$ with $0 \le i < d$ are distinct. There is a map $\theta \mapsto \tau_\theta$ from characters of $K^\times$ to class functions on $\mathrm{GL}_d(\mathbb{F}_g)$ with these properties.

1. For regular $\theta$, $\tau_\theta$ is cuspidal irreducible with $\tau_\theta(1) = \prod_{i=1}^{d-1} (g^i - 1)$.
2. If $\theta$ is regular and $y$ has an irreducible characteristic polynomial with a root $z$, then $\tau_\theta(y) = (-1)^{d-1} \sum_{i<d} \theta(z^{g^i})$.
3. For regular $\theta$ and $\theta'$, $\tau_\theta = \tau_{\theta'}$ if and only if $\theta' = \theta^{g^i}$ for some $i < d$.
4. Every cuspidal irreducible character is $\tau_\theta$ for some regular $\theta$.

Lean: `GlobalTheory.Published.GreenRegularCharacters` (proved by `GlobalTheory.T.greenCuspidalCharsByRegularChars_proof`)

*Proof.* This is the classical argument of Green (1955); the Lean proof reaches it through a proof file of its own on cuspidal characters and Frobenius orbits, which we did not unfold. The bundle takes the field from this proved term and does not read the record of open literature statements. $\square$

**Definition (Green's parametrization).** For every label datum over $\mathbb{Z}/g$ and every $d > 0$, there is a map $P \mapsto \tau_P$ from prime labels of degree $d$, the monic irreducible polynomials of the right degree, to class functions on $\mathrm{GL}_d(\mathbb{F}_g)$. Each $\tau_P$ is cuspidal of label $P$ with the degree formula above, the map is injective, and every cuspidal function is some $\tau_P$.

Lean: `GlobalTheory.GLq.Green`

**Proposition (Green from regular characters).** Green's theorem on regular characters implies Green's parametrization.

Lean: `GlobalTheory.GreenBridge.green_of_regular`

*Proof.* This is the classical argument; the Lean proof reaches it through a comparison of Frobenius orbits of regular characters with prime labels, which we did not unfold. Property 3 gives injectivity, and property 4 gives surjectivity. See the [step page](/step/green-of-regular/) and the [definition page](/step/green-def/). $\square$

**Remark (Formalization).** The main proof builds the last hypothesis from `P.nLink` through `boundAtTwoThree_linked_of_recT`. The record is `HypsAlt S0.NL DefiniteSideCondition`, with `S0.NL 𝒞 = Closed 𝒞 (fun Fm _ => LinkN Fm)` ([GeometricWeakTiesOfStrong.lean#L36](lean:Development/AbelianVarietyTheory/Definitions/GlobalTwisting/GeometricWeakTiesOfStrong.lean#L36)). The theta inputs enter `test_vector_assembly_holds`, and the covolume bound enters `linked_bundles_l3_of_open_alt`. This chapter unfolds `CovolumeBoundOfX` only to its first level: for families in `FamHyp`, small $\varepsilon$ and large parameters, a condition `L3` holds. It does not unfold `HypsAlt`, `DefiniteSideCondition` or `LinkN`. The trunk theorem dominates 263,615 declarations. The Green field is at [GreenRegularCharacters.lean#L13](lean:Development/AbelianVarietyTheory/PublishedTheorems/GaloisCohomology₂/GreenRegularCharacters.lean#L13), `Green` at [LabelDatum.lean#L108](lean:Development/AbelianVarietyTheory/Definitions/NonGaloisDescent/LabelDatum.lean#L108), and `green_of_regular` at [SumRangeEqRoots.lean#L225](lean:Development/AbelianVarietyTheory/Proofs/InertiaEigenvalues/SumRangeEqRoots.lean#L225).

## Zero-free half-planes for primitive characters

The branch first proves the nonvanishing for primitive characters. A Landau-type criterion turns a bound on long windows for a weighted von Mangoldt sum into a zero-free half-plane. HypsAlt and Green's parametrization give families whose windows carry the bound, and VWin gives their hosts. The [step page](/step/zero-free-all-of-green-v-win/) gives the Lean statement.

**Definition (Nonvanishing for primitive characters).** ZeroFreeAll is this statement: for every primitive Dirichlet character $\psi$ and every $s$ with $\operatorname{Re}(s) > \tfrac12$, $L(s, \psi) \ne 0$.

Lean: `Formalism.HC.ZeroFreeAll`

**Remark (The point $s = 1$).** ZeroFreeAll has no exception at $s = 1$, and the trivial character modulo 1 is primitive with L-function $\zeta$. Mathlib gives $\zeta$ the value $(\gamma - \log 4\pi)/2 \ne 0$ at its pole by convention. So the case $s = 1$ is true only by the convention. EveryCharacter has the exception. This chapter does not check how the chain treats this point.

**Definition (Level sum).** A level carries a finite set of nontrivial characters $\psi'$ with weights $w(\psi')$, equal to $1$ for one exceptional character and to $(3o + 1)^{-1}$ for the others, with $o$ a parameter of the level. Put

$$G_z(y) = \sum_{n \le y} \Lambda(n)\Big(\frac{y}{n} - 1\Big) - y \log y + (1 + \gamma) y, \qquad G_m(y) = G_z(y) + \sum_{\psi'} w(\psi') \operatorname{Re} g_{\psi'}(y),$$

where $g_{\psi'}(y) = \sum_{n \le y} \Lambda(n)\, \psi'(n) (y/n - 1) + y\, c_{\psi'}$, and $c_{\psi'}$ comes from the logarithmic derivative of $L(s, \psi')$ at $s = 1$.

Lean: `Formalism.HC.Level.Gm`

A set $S \subseteq \mathbb{R}$ has windows of scale $\lambda > 1$ if for every $y$ there is $Y \ge y$ with $[Y, Y^\lambda] \subseteq S$.

**Theorem (Landau-type criterion).** Let $\lambda > 1$ and $\theta \in (0, 1)$. If $\{x : G_m(x) \le x^\theta\}$ has windows of scale $\lambda$, then $L(s, \psi') \ne 0$ for every character $\psi'$ of the level and every $s$ with $\operatorname{Re}(s) > \theta$.

Lean: `Formalism.HC.Level.FormB` (proved by `UpperTheory.Comparison₂.formB`)

*Proof.* This is the classical argument; the Lean proof reaches it through a family attached to the level and a deduction of zero-free regions from windows of powers, which we did not unfold. Classically, a zero $\rho$ with $\operatorname{Re}(\rho) > \theta$ makes $G_m$ larger than $x^\theta$ somewhere in each long window, by Landau's theorem on Dirichlet series with nonnegative coefficients. $\square$

**Theorem (Window inequality).** For every level, on the windows of a family where the tied chain condition holds, $G_m(x) \le x^{1/2 + (e_D + e_L + 7)\varepsilon}$, with $\varepsilon$ the parameter and $e_D$, $e_L$ the exponents of the family.

Lean: `UpperTheory.Comparison₂.level_gm_le_on_family_scales`

*Proof.* The Lean proof derives the inequality from proved Artin inputs and a core of the tied chain condition. We did not unfold it. $\square$

**Definition (Connected family classes).** TopG is this statement. Let $\lambda > 1$ and let $G$ be a requirement with hosts on windows of scale $\lambda$. If each family in the class of $G$ at $\lambda$ satisfies the condition HypV, then the class is connected: there are exponents $e_D$, $e_L$ and some $\varepsilon_1 > 0$ such that for every $\varepsilon \in (0, \varepsilon_1)$ some family in the class satisfies the tied chain condition at all large $x$ in its window set.

Lean: `UpperTheory.Top.TopG`

**Theorem (Nonvanishing from connected classes).** Let $\lambda > 1$. Assume TopG, and assume that for each primitive $\psi$ hosts exist on windows of scale $\lambda$ for the requirement of $\psi$. Then ZeroFreeAll holds.

Lean: `UpperTheory.Top.zeroFreeAll_of_topG`

*Proof.* Fix $\psi$ and its cyclic level. Each family in the class satisfies HypV, so TopG gives $e_D$, $e_L$ and $\varepsilon_1$. Let $\operatorname{Re}(s) > \tfrac12$ and put $\delta = \min(\operatorname{Re}(s) - \tfrac12, \tfrac12)$. Choose $\varepsilon \in (0, \varepsilon_1)$ with $(e_D + e_L + 7)\varepsilon \le \delta/2$, and take the family that TopG gives. With $\theta = \tfrac12 + \delta/2$, the window inequality gives $G_m(x) \le x^{\theta}$ on its windows, which have scale $\lambda$. Since $\theta < \operatorname{Re}(s)$, the criterion gives $L(s, \psi) \ne 0$. $\square$

**Theorem (Shape theorem).** Green's parametrization implies that HypsAlt, with the closed linked condition and the definite side condition, implies TopG.

Lean: `UpperTheory.Top.shape_closed_link_n_of_green`

*Proof.* The Lean proof derives TopG from 52 named conditions on a family class, using Green's parametrization. A second proved term feeds the 46 fields of HypsAlt into these slots, with two small conversions. We did not unfold these proofs. $\square$

**Lemma (Hosts from VWin).** For every primitive $\psi$, the window statement for $\psi$ with the constant 401 gives hosts on windows of scale $\tfrac32$ for the requirement of $\psi$.

Lean: `UpperTheory.Top.supplyChi`

*Proof.* The Lean proof builds the hosts from an admissible supply for $\psi$. We did not unfold it. $\square$

**Theorem (Nonvanishing for primitive characters).** Assume Green's parametrization, VWin and a term of HypsAlt with the closed linked condition and the definite side condition. Then ZeroFreeAll holds.

Lean: `UpperTheory.Top.zero_free_all_of_green_v_win`

*Proof.* The shape theorem and the term of HypsAlt give TopG. VWin is the window statement with the constant 401 for every primitive character, so the lemma gives hosts at $\lambda = \tfrac32$. The previous theorem gives ZeroFreeAll. $\square$

**Remark (Formalization).** `ZeroFreeAll` and `Gm` are in [ExplicitFormulaErrorOfHostConditions.lean#L18](lean:Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean#L18), and a primitive character is a `PChar`. Mathlib's `riemannZeta_one` gives the value at $s = 1$. `TopG` is at [ZeroFreeAllOfTopG.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ZeroFreeAllOfTopG.lean#L12), with hosts `HostExW la G.req` and the tied chain condition `ChainTied`. The shape theorem proves `TopShapeAlt True True N TopG`, and `forall_goal_of_shape_of_hyps` feeds the fields. This chapter does not unfold `TopShapeAlt` or `ChainTied`. Dominator sizes: `zero_free_all_of_green_v_win` 12,065, `shape_closed_link_n_of_green` 9,550, `supplyChi` 1,462, `zeroFreeAll_of_topG` 417, `level_gm_le_on_family_scales` 300, `formB` 95.

## Imprimitive characters and the end of the branch

The last step removes the word "primitive". A character and the primitive character that induces it have L-functions that differ by finitely many Euler factors, with no zeros when $\operatorname{Re}(s) > 0$. The [step page](/step/imprimitive/) gives the Lean statement.

**Theorem (Imprimitive characters).** ZeroFreeAll implies EveryCharacter.

Lean: `UpperTheory.Top.imprimitive`

*Proof.* Let $\chi$ be a character modulo $N$, let $\operatorname{Re}(s) > \tfrac12$, and let $\chi \ne 1$ or $s \ne 1$. This condition is needed only for the Mathlib identity below. Let $\chi^*$ be the primitive character that induces $\chi$. ZeroFreeAll gives $L(s, \chi^*) \ne 0$. If $\chi \ne 1$, then $\chi^* \ne 1$, because the trivial character modulo 1 induces only trivial characters. So $\chi^* \ne 1$ or $s \ne 1$, and Mathlib gives

$$L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \big(1 - \chi^*(p)\, p^{-s}\big).$$

For each prime $p$, $|\chi^*(p)\, p^{-s}| \le p^{-\operatorname{Re}(s)} < 1$, so the factor is not zero. So $L(s, \chi) \ne 0$. $\square$

**Corollary (Every character from Green and VWin).** Assume Green's parametrization, VWin and a term of HypsAlt with the closed linked condition and the definite side condition. Then EveryCharacter holds.

Lean: `UpperTheory.Top.every_character_of_green_v_win`

*Proof.* The theorem on primitive characters gives ZeroFreeAll, and the theorem on imprimitive characters gives EveryCharacter. See the [step page](/step/green-vwin/). $\square$

**Remark (Formalization).** `imprimitive` is at [Imprimitive.lean#L5](lean:Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean#L5). It uses `PChar.of χ`, the Mathlib lemmas `changeLevel_primitiveCharacter`, `changeLevel_one` and `LFunction_changeLevel`, and it dominates 1 declaration. The corollary dominates 12,070 declarations, and its closure has 50,160. The main theorem also dominates nodes that both its children reach, for example `theorem_A_closed_form_holds` (3,015) and `globalLatticeIndexTheorem_of_lengthBoundAtPlaces` (2,223).

## Notes and references

Nobody has reviewed the Lean proofs. The site does not claim that the proof is correct. The [trust report](/trust/) says what has been checked.

The theta lift goes back to Weil and Howe. The splitting characters are those of Kudla, and the Fock space is that of Kashiwara and Vergne. The comparison of two lifts follows Rallis, Kudla and Rallis, and Ichino.

- J. A. Green, *The characters of the finite general linear groups*, Trans. Amer. Math. Soc. 80 (1955), pages 402 to 447.
- M. Harris, S. Kudla and W. J. Sweet, *Theta dichotomy for unitary groups*, J. Amer. Math. Soc. 9 (1996), pages 941 to 1004.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- R. Howe, *θ-series and invariant theory*, Proc. Sympos. Pure Math. 33, Part 1 (1979), pages 275 to 285.
- R. Howe, *Transcending classical invariant theory*, J. Amer. Math. Soc. 2 (1989), pages 535 to 552.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- M. Kashiwara and M. Vergne, *On the Segal-Shale-Weil representations and harmonic polynomials*, Invent. Math. 44 (1978), pages 1 to 47.
- S. Kudla, *Splitting metaplectic covers of dual reductive pairs*, Israel J. Math. 87 (1994), pages 361 to 401.
- S. S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- S. Rallis, *Langlands' functoriality and the Weil representation*, Amer. J. Math. 104 (1982), pages 469 to 515.
- S. Rallis, *Injectivity properties of liftings associated to Weil representations*, Compositio Math. 52 (1984), pages 139 to 169.
- A. Weil, *Sur certains groupes d'opérateurs unitaires*, Acta Math. 111 (1964), pages 143 to 211.
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965), pages 1 to 87.
