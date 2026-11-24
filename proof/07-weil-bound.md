---
title: The Weil bound and arithmetic positivity
description: The branch deep_slim_use of the volume step. It turns arithmetic positivity (Moriwaki bigness and the arithmetic Hilbert-Samuel bound) into a lower bound for the mean volume slope of small cusp sections. The page also says which ideas of the timeline (W(1_S) at least 0, the Guinand-Weil sign, the Bost slope inequality) have no counterpart in this branch.
lead: The folder WeilBound does not contain Weil's explicit formula. Its largest branch on the spine proves a positivity statement of Arakelov geometry, the statement DeepStR. This page states DeepStR, shows the inputs it comes from, and says what the code has in place of the positivity steps of the timeline.
level: L1
status: draft
lean:
  - name: PositivityTheory.HtPt.Ah.deep_slim_use
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/AhSlimU.lean
    line: 9
  - name: GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_use
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/DeepStROfUse.lean
    line: 12
  - name: GlobalTheory.CompanionTheory.Ar.Plug.DeepStR
    file: Development/AutomorphicSpectrum/Definitions/GlobalGeometry/ModelSmall.lean
    line: 63
  - name: GlobalTheory.CovHt.MeanAll
    file: Development/AbelianVarietyTheory/Definitions/Divisors/SemiposAtOfPositive.lean
    line: 101
  - name: PositivityTheory.Pf1.HilbertSamuelMoriwaki.moriwakiBig_outright
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/MoriwakiBigTheorem/Outright.lean
    line: 9
  - name: ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.MoriwakiBigStatement
    file: ReciprocityTheory/ReductiveGroups/ArithmeticGeometry/ArakelovGeometry/MoriwakiSt.lean
    line: 29
  - name: PositivityTheory.MbHsUse.HSUse
    file: Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/SmallGeneratedCountUpperOfUse.lean
    line: 12
  - name: GlobalTheory.CompanionTheory.Ar.Top.VolumeTheoremX
    file: Development/AutomorphicSpectrum/Statements/TowerExistence/GoodTowerExistsX.lean
    line: 28
  - name: GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_volume
    file: Development/AutomorphicSpectrum/Proofs/GeometryProofs/DeepStROfVolume.lean
    line: 21
  - name: GroundTheory.Heights₂.Heights.LineOfLargeDegree.Statement
    file: GroundTheory/HeightsAndTheta/Heights/KernelsLattice.lean
    line: 85
  - name: GlobalTheory.CompanionTheory.Ar.SlopeBoundSt
    file: Development/AutomorphicSpectrum/Definitions/GlobalGeometry/SlopeBoundSt.lean
    line: 72
  - name: Formalism.F.SlopeInequality
    file: Formalism/LatticeSlopes/Statement.lean
    line: 75
needs:
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: 8NJ7XY6F1S
    text: Hermitian form
  - tag: 0R9R0Y1HDK
    text: Unitary group
  - tag: SV5EEBF861
    text: Cusp form
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
  - tag: 087EMZTHWN
    text: von Mangoldt function
  - tag: 6YDZNXR19H
    text: p-adic Hodge theory
next:
  - text: The literature inputs
    path: proof/literature/
    sub: the parent step, where the volume branch starts
  - text: Block determinants and theta Parseval
    path: proof/determinants/
    sub: the other page on the determinant steps of the timeline
  - text: Theta integrals and local matching
    path: proof/theta-matching/
    sub: where the Guinand-Weil function appears
  - text: The map of the trunk
    path: proof/trunk/
    sub: where this branch sits
  - text: The Bessel seesaw
    path: proof/bessel-seesaw/
    sub: a related branch
  - text: The Siegel-Weil inputs
    path: proof/siegel-weil/
    sub: a related branch
  - text: CM divisibility
    path: proof/cm-divisibility/
    sub: a related branch
steps: []
---
## Weights, volume slopes and the statement DeepStR

The folder WeilBound of the Lean code does not contain Weil's explicit formula. Its largest branch proves a positivity statement of Arakelov geometry, DeepStR: on the components of a tower of unitary Shimura varieties, the mean volume slope of small cusp sections is at least $-C$ times an error term. Sections 2 to 5 prove it, Section 6 lists the inputs, and Section 7 compares the branch with the [timeline](/proof/timeline/).

Throughout, $E$ is a CM [[number field|WXGM3VWEK6]]. A datum fixes a [[Hermitian form|8NJ7XY6F1S]] of signature $(p, q)$ over $E$, and a [[unitary group|0R9R0Y1HDK]]. Put $N = p + q$, and let $\Psi$ be the set of CM types. A level and a field $F$ give a moduli space with components $\mathrm{Comp}$, carrying [[cusp forms|SV5EEBF861]].

**Definition (Weights and gaps).** A weight is a family of integers $u_{\tau,i}$ with $\tau \in \Psi$ and $0 \le i < N$, with $\|u\|_1 = \sum_{\tau,i} |u_{\tau,i}|$. The weight $u$ has gap $g$ if $g > 0$, each row $i \mapsto u_{\tau,i}$ is strictly decreasing, and $|u_{\tau,a} - u_{\tau,b}| \ge g$ for all $\tau$ and all $a \ne b$ with $a \ge p$.

Lean: `GlobalTheory.CovHt.WtGap`

**Definition (Error term).** For $u$ with gap $g$ and $s \in \mathbb{R}$ put

$$B(u,g) = 4\,|\Psi|\,N^2 \Big(1 + \frac{\max |u_{\tau,i}|}{g}\Big),$$

$$\mathrm{err}(s,u,g) = \big(\log B(u,g) + s\big)\,\|u\|_1 + q \sum_{\tau} \big(\max_i u_{\tau,i} - \min_i u_{\tau,i}\big).$$

Lean: `GlobalTheory.CovHt.errX`

**Definition (Volume slope).** Fix $x \in \mathbb{R}$, $Z$, $u$ and a level $B$. Let $\Lambda_B(G)$ be the lattice of cusp sections of weight $G$ on $Z$ that are integral for height valuations at the primes of a finite set $S_B$ and for reference valuations elsewhere. The norm of a section $f$ of weight $G$ at a frame point is its point norm times $(2\pi x)^{-|G|/2}$, where $|G|$ is the sum of the entries of $G$. Let $S_\tau(t)$ be the set of $f \in \Lambda_B(\tau u)$ with norm at most $e^{\tau t}$ at every good embedding and every frame point. With $d$ the dimension of the flag variety put

$$V(t) = \limsup_{k \to \infty} \frac{d!\,\log \# S_{8k}(t)}{[F:\mathbb{Q}]\,(8k)^{d+1}}, \qquad \mu_{\mathrm{vol}}^B(Z,u) = \inf_{t \in \mathbb{R}} \Big(\frac{V(t)}{\delta} - t\Big),$$

where $\delta$ is the top degree of $u$ on $Z$.

Lean: `GlobalTheory.CompHt.compVolSlope`

If $\delta > 0$, then $s \le \mu_{\mathrm{vol}}^B(Z,u)$ if and only if $\delta(s + t) \le V(t)$ for all $t$: there are many small cusp sections.

**Definition (Mean slope bound).** $\mathrm{MeanAll}(s, C)$ holds for the moduli space and $x$ if for every $u$ with gap $g$ there are real numbers $\mathrm{sl}(Z)$, $Z \in \mathrm{Comp}$, with $\mathrm{sl}(Z) \le \mu_{\mathrm{vol}}^{B(u,g)}(Z,u)$ and

$$-C\,\mathrm{err}(s,u,g) \le \frac{1}{\#\mathrm{Comp}} \sum_{Z} \mathrm{sl}(Z).$$

Lean: `GlobalTheory.CovHt.MeanAll`

**Definition (The arithmetic size of a datum).** For a datum $D$ with host field $E$ and an odd prime $d$, let $\mathrm{rd}(E)$ be the root discriminant and $\chi_d$ the quadratic [[Dirichlet character|JR4QSEFXWF]] modulo $d$, with [[Dirichlet L-function|24GAZHVTGB]] $L(s,\chi_d)$. Put

$$\ell(D) = \log \mathrm{rd}(E) + \Big|\operatorname{Re} \frac{L'}{L}(1,\chi_d)\Big|, \qquad x(D) = |\varphi_0(\xi_0)|,$$

where $\varphi_0$ is a fixed embedding of $E$ in the CM type of the host and $\xi_0 = -1/(N\mathfrak{c} \cdot \sqrt{-d}) \in E$ for a fixed ideal $\mathfrak{c}$.

Lean: `GlobalTheory.CovHt.ell`

**Definition (DeepStR).** DeepStR is the statement that there is $C \ge 0$ with this property. Let $D$ be a datum with $m^2 \le k$, let $T$ be a core of $D$ that satisfies the laws, let $1 \le j < m$, and let $Y$ be a good tower object of depth $j$ over $T$ whose level has at most $15$ prime factors. Then $\mathrm{MeanAll}(\ell(D), C)$ holds for $Y$ with $x = x(D)$.

Lean: `GlobalTheory.CompanionTheory.Ar.Plug.DeepStR`

**Remark (Formalization).** The definitions are in [SemiposAtOfPositive.lean#L101](lean:Development/AbelianVarietyTheory/Definitions/Divisors/SemiposAtOfPositive.lean#L101), [IsHomogeneousCompIdeal.lean#L280](lean:Development/AbelianVarietyTheory/Definitions/Divisors/IsHomogeneousCompIdeal.lean#L280) and [ModelSmall.lean#L63](lean:Development/AutomorphicSpectrum/Definitions/GlobalGeometry/ModelSmall.lean#L63). The parameter `xiR D` is `‖D.host.φ₀ D.host.xi0‖`, a number, not the norm of a vector. The count runs along multiples of $8$ because `MeanAll` calls `compVolSlope` with the parameter $8$. This chapter does not unfold `D7`, `CoreJ`, `LawsJ`, `Deep`, `Good` or `Y.U`.

## Arithmetic positivity: Moriwaki and Hilbert-Samuel

The positivity comes from two theorems of arithmetic intersection theory: the inequality of Moriwaki and Yuan, and the upper half of arithmetic Hilbert-Samuel. Both concern an arithmetic variety $X$ of dimension $D + 1$ in a product of projective spaces, with a hermitian line bundle $\overline{A}$.

**Definition (Intersection system).** An intersection system $\mathrm{II}$ attaches a real number $\mathrm{II}(W; L_1, \dots, L_n)$ to each arithmetic variety $W$ and each family of hermitian line bundles on it. It is admissible if it satisfies a fixed list of axioms of arithmetic intersection numbers. Write $\overline{A}^{D+1} = \mathrm{II}(X; \overline{A}, \dots, \overline{A})$, and $h_{\overline{A}}(C) = \mathrm{II}(C; \overline{A})$ for an arithmetic curve $C \subset X$.

Lean: `ReciprocityTheory.ChartRestriction.G.Geo.IsIntersectionSystem`

**Definition (Arithmetic volume).** The arithmetic volume of $\overline{A}$ is

$$\mathrm{vol}(\overline{A}) = \limsup_{n \to \infty} \frac{\log \#\{s \in H^0(X, nA) : \|s\|_{\sup} \le 1\}}{n^{D+1}/(D+1)!}.$$

Lean: `ReciprocityTheory.ChartRestriction.G.Geo.arVolP`

**Theorem (Moriwaki and Yuan, inequality form).** Let $\mathrm{II}$ be admissible, let $X$ be birational to its coordinates, and let $\overline{A}$ be semipositive, invariant under conjugation, nef on the fibres and nef on the generic fibre. Then $\overline{A}^{D+1} \le \mathrm{vol}(\overline{A})$.

Lean: `ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.MoriwakiBigStatement` (proved by `PositivityTheory.Pf1.HilbertSamuelMoriwaki.moriwakiBig_outright`)

*Proof.* The Lean proof combines three proved inputs: a resolution statement for coordinate ideals, an admissible intersection system built from the Poincaré-Lelong formula, and a statement on Zariski dense families of curves. We did not unfold it. Classically, the inequality follows from the continuity of the volume of Moriwaki and the bigness criterion of Yuan. $\square$

**Theorem (Upper half of arithmetic Hilbert-Samuel).** Let $\mathrm{II}$, $X$ and $\overline{A}$ be as above.

1. (Arithmetic Kleiman.) If $h_{\overline{A}}(C) \ge 0$ for every arithmetic curve $C \subset X$, then $\overline{A}^{D+1} \ge 0$.
2. If $D \ge 1$ and $\overline{A}$ is generated by small sections, then

   $$\limsup_{n \to \infty} \frac{\log \#\{\text{small sections of } nA\}}{n^{D+1}/(D+1)!} \le \overline{A}^{D+1}.$$

3. The same bound holds for normalized sections if $\overline{A}$ has integral multidegree with bounded monomials.

Lean: `PositivityTheory.MbHsUse.HSUse` (proved by `PositivityTheory.Pf1.HilbertSamuelMoriwaki.hsUse_outright`)

*Proof.* The Lean proof uses the same three inputs, and we did not unfold it. Classically, parts 2 and 3 are the upper bound in the arithmetic Hilbert-Samuel theorem of Gillet and Soulé, as given by Abbes and Bouche and by Zhang. $\square$

**Corollary (Successive minima).** Let $\deg$ be the geometric degree for $A$.

1. If $h_{\overline{A}}(C) \ge e \deg C$ for every arithmetic curve $C \subset X$, then $(D+1)\,e \deg X \le \overline{A}^{D+1}$.
2. If a Zariski dense family $\mathcal{F}$ of arithmetic curves has $h_{\overline{A}}(C) \le e' \deg C$ for all $C \in \mathcal{F}$, then $\overline{A}^{D+1} \le (D+1)\,e' \deg X$.

Lean: `GlobalTheory.CompanionTheory.Ar.Giv.hsLinks_of_use`

*Proof.* This is the classical argument. The Lean proof gets part 1 from arithmetic Kleiman and a proved finiteness of points on curves, and part 2 from the theorem of Moriwaki and Yuan. Let $\overline{A}(a)$ be $\overline{A}$ with its metric multiplied by $e^{-a}$. Then $h_{\overline{A}(a)}(C) = h_{\overline{A}}(C) + a \deg C$ and $\overline{A}(a)^{D+1} = \overline{A}^{D+1} + (D+1)\,a \deg X$. For part 1, apply arithmetic Kleiman to $\overline{A}(-e)$. For part 2, suppose $\overline{A}^{D+1} > (D+1)\,e' \deg X$ and choose $\varepsilon > 0$ with $\overline{A}(-e'-\varepsilon)^{D+1} > 0$. By Moriwaki and Yuan, a multiple of $\overline{A}(-e'-\varepsilon)$ has a nonzero section $s$ of sup norm at most $1$. Every curve $C$ outside the divisor of $s$ has $h_{\overline{A}}(C) \ge (e'+\varepsilon)\deg C$. Some $C \in \mathcal{F}$ lies outside that divisor, which is a contradiction. $\square$

**Remark (Formalization).** The statements are in [MoriwakiSt.lean#L29](lean:ReciprocityTheory/ReductiveGroups/ArithmeticGeometry/ArakelovGeometry/MoriwakiSt.lean#L29), [SmallGeneratedCountUpperOfUse.lean#L12](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/SmallGeneratedCountUpperOfUse.lean#L12) and [PenVol.lean#L35](lean:ReciprocityTheory/ReductiveGroups/ArithmeticGeometry/BirationalGeometry/PenVol.lean#L35). The proofs `moriwakiBig_outright` and `hsUse_outright` ([Outright.lean#L9](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/MoriwakiBigTheorem/Outright.lean#L9)) take no hypotheses. Both go through `hsChain`, which dominates 3,745 declarations, so each has dominator size 3. The site still lists both in [the literature inputs](/proof/literature/), because the intersection numbers are abstract. `MoriwakiBigStatement` has $\le$ where the published result for nef bundles has equality. `HSUse` has only the $\limsup$ upper bound. In both, the intersection numbers come from an abstract `IntersectionSystem` with the axioms `IsIntersectionSystem`, not from the Gillet-Soulé construction, so the results depend on those axioms.

## An absolute Siegel lemma and a slope bound for the Lie algebra

This section bounds the maximal slope of the Lie algebra of a semi-abelian scheme. It is close to the Bost slope method but uses no slope inequality: a short vector comes from a Siegel lemma, and a degree bound bounds its length.

**Definition (Hermitian lattices and slopes).** A hermitian lattice $F$ of rank $i$ over $\mathcal{O}_K$ has normalized degree $\widehat{\deg}_n F = \widehat{\deg} F / [K:\mathbb{Q}]$ and slope $\mu(F) = \widehat{\deg}_n F / i$. The maximal slope of a hermitian bundle $B$ is $\mu_{\max}(B) = \sup \{ \widehat{\deg}_n F / \operatorname{rank} F : 0 \ne F \subseteq B \}$. For a finite extension $K'/K$ and $v \ne 0$ in $K'^i$, $\deg_{K'}(v)$ is the normalized degree of the line spanned by $v$ in $F \otimes \mathcal{O}_{K'}$.

Lean: `GroundTheory.Heights₂.Heights.HermitianBundle.slopeMax`

**Theorem (Absolute Siegel lemma).** Let $F$ be a hermitian lattice of rank $i \ge 1$ over $\mathcal{O}_K$ and $\varepsilon > 0$. Then there are a finite extension $K'/K$ and $v \ne 0$ in $K'^i$ with $\mu(F) - \tfrac12 \log i - \varepsilon \le \deg_{K'}(v)$.

Lean: `GroundTheory.Heights₂.Heights.LineOfLargeDegree.Statement` (proved by `GlobalTheory.CompanionTheory.Ar.Giv.lineOfLargeDegree_of_use`)

*Proof.* The Lean proof applies part 2 of the corollary on successive minima to a projective space attached to $F$, with proved lemmas on coordinates and dual bases. We did not unfold it. The statement has the form of the Siegel lemma of Bombieri and Vaaler, with slopes in place of heights. $\square$

A polarized datum over a number field $L$ is a semi-abelian scheme $t$ over $\mathcal{O}_L$ with an action of the host and principally polarized generic fibre, together with its Lie algebra $B$ with the Hodge metric. Put $\ell(B) = \log(2 + \operatorname{rank} B + \max(-\widehat{\deg}_n B, 0))$.

**Lemma (Length of a vector in the Lie algebra).** There is $C_0 \ge 0$ such that for every polarized datum over $L$ and every $x \ne 0$ in $B$,

$$-\frac{1}{[L:\mathbb{Q}]} \sum_{\sigma \colon L \to \mathbb{C}} \log |x|_\sigma \le C_0\, \ell(B).$$

Lean: `GlobalTheory.CompanionTheory.Ar.Sl.LineSt`

*Proof.* The Lean proof derives the lemma from a key degree statement on theta sections of the polarization, which it proves from two proved statements on bad reduction. We did not unfold these proofs. $\square$

**Theorem (Slope bound for the Lie algebra).** There is $C \ge 0$, independent of all data, such that $\mu_{\max}(B) \le C\,\ell(B)$ for every polarized datum over every number field $L$.

Lean: `GlobalTheory.CompanionTheory.Ar.SlopeBoundSt` (proved by `GlobalTheory.CompanionTheory.Ar.Sl.TopSlope.slopeBound`)

*Proof.* Put $C = C_0 + 2$ and $\ell = \ell(B)$. Then $\ell \ge \log 2 \ge 2/3$ and $\log \operatorname{rank} B \le \ell$. Let $0 \ne F \subseteq B$. The Siegel lemma with $\varepsilon = 1$ gives $L'/L$ and $x \ne 0$ in $F \otimes \mathcal{O}_{L'}$ with $\mu(F) - \tfrac12 \log \operatorname{rank} B - 1 \le -\frac{1}{[L':\mathbb{Q}]} \sum_\sigma \log |x|_\sigma$. The lemma over $L'$, with the same $\ell$, bounds the right side by $C_0 \ell$. Since $1 \le \tfrac32 \ell$, we get $\mu(F) \le \tfrac12 \ell + 1 + C_0 \ell \le (C_0 + 2)\,\ell$. $\square$

**Remark (Formalization).** The Siegel lemma is in [KernelsLattice.lean#L85](lean:GroundTheory/HeightsAndTheta/Heights/KernelsLattice.lean#L85), `SlopeBoundSt` in [SlopeBoundSt.lean#L72](lean:Development/AutomorphicSpectrum/Definitions/GlobalGeometry/SlopeBoundSt.lean#L72), and $\mu_{\max}$ in [Slopes.lean#L35](lean:GroundTheory/HeightsAndTheta/Heights/HeightsOfSets/Slopes.lean#L35). `TopSlope.slopeBound` ([SlopeBoundOfLargeDegreeLine.lean#L94](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/SlopeBoundOfLargeDegreeLine.lean#L94)) takes the Siegel lemma and `KeyDegSt` as hypotheses. On the trunk, `slopeBound_and_lemmaS_of_siegel` supplies `KeyDegSt` from `key_degree_of_bad_reduction key_bad_reduction_holds`. The second conclusion `Prov.LemmaS` is an `abbrev` for `SlopeBoundSt`, so the proof gives the same term twice.

## The good tower and the volume theorem

The volume theorem bounds from below the mean slope of Hodge line bundles on a tower of integral models of unitary Shimura varieties. Its proof is the largest part of the branch.

**Definition (Root towers and their slopes).** A root tower $T$ has an index $j$ with $1 \le j < N$, a finite set $\mathrm{Comp}_T$ of components, a finite set of bad primes, and for each $B \in \mathbb{N}$ and component $c$ an arithmetic model with lines $\ell_u$ of weight $u$ and top intersection number $\mathrm{PP}_{B,c}$. The slope of $u$ at $c$ is

$$\mathrm{slope}_B(c, u) = \frac{\mathrm{PP}_{B,c}(\ell_u^{\,d+1})}{(d+1)\,\mathrm{vol}(c)\,\deg_{\mathrm{Fl}}(u)},$$

with $\mathrm{vol}(c)$ the volume of $c$ and $\deg_{\mathrm{Fl}}(u)$ the flag degree.

Lean: `GlobalTheory.CompanionTheory.Ar.Top.RootTower.slope`

**Definition (Weight hypothesis).** A real weight $u$ satisfies the weight hypothesis at $j$ with gap $g$ if $g > 0$, $u$ is regular dominant, its gap at $j$ is at least $g$ for each $\tau$, and $|u_{\tau,a} - u_{\tau,b}| \ge g$ for $a \ne b$ with $a$ in the small block. The small block is $\{i < j\}$ if $j \le N - j$ and $\{i \ge j\}$ otherwise. The bracket is

$$[u]_{B} = \big(\log(B\,\mathrm{rd}(E)) + |\operatorname{Re} L'/L(1,\chi_d)|\big)\,\|u\|_1 + \min(j, N - j)\,\mathrm{spread}(u).$$

Lean: `GlobalTheory.CompanionTheory.Ar.Top.WeightHyp`

**Theorem (Good towers and the volume theorem).** Assume the ten inputs listed in the proof of the last theorem of Section 5.

1. (Good towers.) If $p, q \ge 1$ and $Y$ is a global integral model with split components, then $Y$ has a root tower with a good origin that satisfies the extra conditions.
2. (Volume theorem.) There is $C \ge 0$ with this property. Let $E$ be abelian over $\mathbb{Q}$, $q \ge 1$, $3q + 1 \le p + q$, and let $T$ be a root tower with a good origin that satisfies the extra conditions and has at most $4\,|\Psi|\,(p+q)^2$ bad primes. Then for every full intersection system, $T$ is proportional, has components of equal volume, satisfies tower estimates T1 and T2 and a flag height statement, and satisfies the mean slope bound: for every $u$ that satisfies the weight hypothesis with gap $g$, and every integer $B \ge 128$ with $B(u,g) < B + 1$ and at most $B$ bad primes, $-C\,[u]_B \le \frac{1}{\#\mathrm{Comp}_T} \sum_{c} \mathrm{slope}_B(c, u)$.

Lean: `GlobalTheory.CompanionTheory.Ar.Link.good_tower_volume_theorem_bis` (statements `GlobalTheory.CompanionTheory.Ar.Top.GoodTowerExistsX` and `GlobalTheory.CompanionTheory.Ar.Top.VolumeTheoremX`)

*Proof.* The Lean proof builds a conjunction of given statements from eight of the inputs and the Siegel lemma. It contains the slope bound of Section 3. It then applies the final theorem of the volume part to the given statements, the integrality of points, the quotient by a finite flat subgroup and Zarhin's trick. We did not unfold the final theorem. The term in $L'/L(1,\chi_d)$ comes from the Chowla-Selberg formula. $\square$

**Theorem (Chowla-Selberg).** Let $K$ be imaginary quadratic with discriminant $-d$, $d > 4$, Kronecker character $\chi$ and class number $h$. Let $\tau_c$ be points of the upper half plane attached to the ideal classes $c$ by an embedding of $K$. Then

$$L(1,\chi) = \frac{\pi h}{\sqrt{d}}, \qquad \frac{1}{h} \sum_{c} \log\big(\operatorname{Im}\tau_c\,|\eta(\tau_c)|^4\big) = \gamma - \log(2\sqrt{d}) - \frac{L'}{L}(1,\chi).$$

Lean: `GlobalTheory.LFunction_one_and_mean_log_eta`

*Proof.* This is the classical argument; the Lean proof reaches it through a sum of the Dedekind zeta function over ideals of each norm, which we did not unfold. Write the Dedekind zeta function of $K$ as a sum of Eisenstein series at the $\tau_c$ and compare residues and constant terms at $s = 1$, using the Kronecker limit formula. $\square$

**Remark (Formalization).** The two statements are in [GoodTowerExistsX.lean#L22](lean:Development/AutomorphicSpectrum/Statements/TowerExistence/GoodTowerExistsX.lean#L22) and the slope in [Proportional.lean#L62](lean:Development/AutomorphicSpectrum/Definitions/DivisibilityTowers/Proportional.lean#L62). The mean slope bound is the sixth part `MeanSlope` of `VolumeTheoremX`. `good_tower_volume_theorem_bis` calls `given_of_use` and `final_theorem_of_inputs_right` and dominates 21,078 declarations. `volume_theorem_of_inputs` dominates 8,967. This chapter does not unfold `Top.Given`, `Extra`, or the first five parts of `VolumeTheoremX`. `Top.Given` is a conjunction of fourteen statements, and its eleventh part is the Hilbert-Samuel package `Prov.HS`.

## From the volume theorem to DeepStR

This section turns the intersection slope of Section 4 into the volume slope of Section 1: an intersection number gives a count of small sections. For $B \in \mathbb{R}$ put

$$\mathrm{cost}(B) = \sum_{p \in S_B} \Big(\frac{1}{p-1} + 40\,\frac{v_p(\operatorname{disc} E)}{[E:\mathbb{Q}]} + [p = 2]\Big) \log p,$$

where $S_B$ is the set of height primes up to $B$.

**Proposition (Intersection slopes bound volume slopes).** Assume asymptotic Riemann-Roch for nef divisors, the given statements, and $\overline{A}^{D+1} \le \mathrm{vol}(\overline{A})$ for normalized lattices. Let $E$ be Galois over $\mathbb{Q}$, the moduli space have compatible laws and uniform data, and $|\tau(\xi_0)| = x$ for all $\tau$. Let $T$ be a proportional root tower with good origin satisfying T1, and $\kappa$ a bijection of components. Let $u$ satisfy the weight hypothesis with gap $g$, with $B(u,g) \le B$. Then for every component $Z$

$$\mathrm{slope}_{\lfloor B \rfloor}(\kappa Z, u) - 2\,\mathrm{cost}(B)\,\|u\|_1 \le \mu_{\mathrm{vol}}^B(Z, u).$$

Lean: `GlobalTheory.CompanionTheory.Ar.Plug.SlopeVolM.slope_sub_cost_le_compVolSlope`

*Proof.* The Lean proof combines four proved inputs: a bound for the top degree, frames on $Z$, a frame bound that turns the intersection slope into small sections, and a comparison of height and reference valuations that costs $\mathrm{cost}(B)\,\|u\|_1$ on each side. We did not unfold them. $\square$

**Theorem (Mean volume slopes on abelian CM towers).** Assume the inputs of the proposition, an admissible intersection system and the two statements of Section 4. Then there is $C \ge 0$ with this property. Let $E$ be abelian over $\mathbb{Q}$ with $|\Psi| \ge 2$, $q \ge 1$ and $3q + 1 \le p + q$. Let the level be good, with the data of the proposition and an algebraically closed function field, and let $2\operatorname{disc}(E)$ and the level number have at most $4\,|\Psi|\,(p+q)^2$ prime factors. Then $\mathrm{MeanAll}(\log \mathrm{rd}(E) + |\operatorname{Re} L'/L(1,\chi_d)|, C)$ holds.

Lean: `GlobalTheory.CompanionTheory.Ar.Plug.top_meanAll`

*Proof.* The inputs give $C_T \ge 0$ and, for the data, a root tower $T$ with $j = p$, a bijection $\kappa$, proportionality, T1 and the mean slope bound. The bad primes of $T$ are those of $2\operatorname{disc}(E)$ times the level number. Put $C = C_T + 120$. Let $u$ have gap $g$ and put $B = B(u,g)$. Since $q < p$, the weight hypothesis holds at $j = p$ and $\min(j, N-j) = q$. Since $|\Psi| \ge 2$ and $N \ge 4$, $\lfloor B \rfloor \ge 4\,|\Psi|\,N^2 \ge 128$, which also bounds the bad primes. Put $\mathrm{sl}(Z) = \mathrm{slope}_{\lfloor B \rfloor}(\kappa Z, u) - 2\,\mathrm{cost}(B)\,\|u\|_1$. The proposition gives $\mathrm{sl}(Z) \le \mu_{\mathrm{vol}}^B(Z,u)$. The mean slope is at least $-C_T [u]_{\lfloor B \rfloor}$, and $[u]_{\lfloor B \rfloor} \le \mathrm{err}(s,u,g)$ with $s = \log \mathrm{rd}(E) + |\operatorname{Re} L'/L(1,\chi_d)|$. A proved bound gives $0 \le \mathrm{cost}(B) \le 60(\log B + \log \mathrm{rd}(E))$, so $2\,\mathrm{cost}(B)\,\|u\|_1 \le 120\,\mathrm{err}(s,u,g)$. So the mean of $\mathrm{sl}$ is at least $-(C_T + 120)\,\mathrm{err}(s,u,g)$. $\square$

**Theorem (DeepStR from the volume theorem).** Under the hypotheses of the previous theorem, DeepStR holds.

Lean: `GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_volume`

*Proof.* Take $C$ from the previous theorem, and $D$, $T$, $j$, $Y$ as in DeepStR. A proved statement gives the laws, the good level and an abelian host field at depth $j$. From $m^2 \le k$ we get $q \ge 1$ and $3q + 1 \le p + q$. There are $2n \ge 2$ CM types. At most $n + 1$ bad primes are at most $n$, a proved count bounds the others using the bound $15$, and $(p+q)^2 \ge 16$. So there are at most $4\,|\Psi|\,(p+q)^2$ bad primes. The tower object gives $|\tau(\xi_0)| = x(D)$. The previous theorem gives $\mathrm{MeanAll}(s, C)$ with $s = \ell(D)$. $\square$

**Theorem (Positivity of mean volume slopes).** Assume the six statements of Section 6, the upper half of arithmetic Hilbert-Samuel, and the inequality of Moriwaki and Yuan. Then DeepStR holds.

Lean: `PositivityTheory.HtPt.Ah.deep_slim_use` (through `GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_use`)

*Proof.* First the eight inputs become ten. Resolution, principalisation and Poincaré-Lelong give an admissible intersection system, and resolution and principalisation give the resolution statement for coordinate ideals. Fargues's exactness gives the Hodge-Tate statement. Three more inputs are proved without hypotheses: extension of homomorphisms of semi-abelian schemes, GAGA for sections, and the quotient by a finite flat subgroup. The ten inputs give the Siegel lemma, the given statements (which contain the volume inequality for normalized lattices) and the two statements of Section 4. The previous theorem gives DeepStR. $\square$

**Remark (Formalization).** The anchor `deep_slim_use` is in [AhSlimU.lean#L9](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/AhSlimU.lean#L9). It calls `deepStR_of_use` ([DeepStROfUse.lean#L12](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/DeepStROfUse.lean#L12)). That proof takes `Prov.HS` out of `Top.Given` and then the part `BirationalPullbackPushforwardFormula`, whose statement is the volume inequality for normalized lattices, not a pullback formula. It calls `deepStR_of_volume` ([DeepStROfVolume.lean#L21](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/DeepStROfVolume.lean#L21)), which calls `abelian_cm_comp_laws_bound`, equal to `top_meanAll`. The comparison ([UniformAllNormHeightBound.lean#L300](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/UniformAllNormHeightBound.lean#L300)) is used only inside `top_meanAll`. Dominator sizes: `deep_slim_use` 30,358, `deepStR_of_use` 29,968, `deepStR_of_volume` 1,218, `lineOfLargeDegree_of_use` 1,206, `TopSlope.slopeBound` 850. The closure of `deep_slim_use` has 87,553 declarations.

## The inputs of the branch

The anchor assumes eight statements: the two theorems of Section 2 and the six below. Its parent receives fifteen hypotheses and passes these eight on. On the trunk they come from a theorem that cites each as a published result, see [the literature step](/proof/literature/). The Lean code also proves all eight, so on the trunk none is an open assumption. We did not unfold these proofs, and no person has reviewed them.

**Theorem (Resolution of singularities, Hironaka).** Let $X$ be reduced, of finite type and separated over a field of characteristic zero. Blow-ups give a smooth $X' \to X$, an isomorphism over the smooth locus, under which the singular locus becomes a simple normal crossings divisor.

Lean: `GlobalTheory.CompanionTheory.Hypotheses₂.ResolutionCharZero` (supplied by `UpperTheory.LiteratureTheorems.resolution_char_zero_of_literature`)

*Proof.* The anchor assumes it. On the trunk a proved term supplies it. $\square$

**Theorem (Principalisation, Hironaka).** Let $X$ be smooth, quasi-compact and separated over a field of characteristic zero, $I$ an ideal sheaf whose support contains no component of $X$, and $E$ a simple normal crossings divisor. Blow-ups in smooth centres transverse to $E$ make the pullback of $I$ an effective Cartier divisor with simple normal crossings support. They are isomorphisms outside the support of $I$.

Lean: `GlobalTheory.CompanionTheory.Hypotheses₂.PrincipalisationCharZero` (supplied by `UpperTheory.LiteratureTheorems.principalisation_char_zero_of_literature`)

*Proof.* The anchor assumes it. On the trunk a proved term supplies it. $\square$

**Theorem (Poincaré-Lelong formula, integrated form).** Let $X$ be an arithmetic subvariety of a product of projective spaces, with smooth conjugation invariant metrized line bundles $L_j$, $A$ and $B$, $B$ of weight zero, and let $s$ be a section of $A$. Then $\int \log \|s\|$ against the Chern forms of $B$ and the $L_j$ is the sum of $m_W \int_W \log h_B$ over the horizontal components $W$ of $\operatorname{div}(s)$, minus $\int \log h_B$ against $c_1(\overline{A})$.

Lean: `GlobalTheory.CompanionTheory.Hypotheses₂.PoincareLelongInv` (supplied by `UpperTheory.LiteratureTheorems.poincare_lelong_inv_of_literature`)

*Proof.* The anchor assumes it. On the trunk a proved term supplies it. Classically it follows from $dd^c \log |s|^2 = [\operatorname{div} s] - c_1(A)$ and Stokes' theorem. $\square$

**Theorem (Hodge-Tate exactness, Fargues).** Let $G$ be a $p$-divisible group over the integers $\mathcal{O}$ of a complete algebraically closed field of characteristic zero, and $B$ the $\mathcal{O}$-linear Weil pairing between the Tate modules of $G$ and its dual. Then $x \in \mathcal{O} \otimes T_p G$ is in the kernel of the Hodge-Tate map if and only if $B(x, y) = 0$ for all $y$ in the kernel of $\operatorname{dlog}$ of the dual.

Lean: `GlobalTheory.CompanionTheory.Ar.HT.FarguesExact` (supplied by `UpperTheory.LiteratureTheorems.fargues_exact_of_literature`)

*Proof.* The anchor assumes it, a result of [[p-adic Hodge theory|6YDZNXR19H]]. On the trunk a proved term supplies it. $\square$

**Theorem (Zarhin's trick).** Let $R$ be the valuation ring of an algebraically closed valued field and $A$ an abelian scheme over $R$ with a relatively ample line bundle. Then $A$ is a retract of a principally polarized abelian scheme over $R$ through homomorphisms $i$, $r$ with $r \circ i = \mathrm{id}$.

Lean: `GlobalTheory.CompanionTheory.Ar.GR.ZarhinStatement` (supplied by `UpperTheory.LiteratureTheorems.zarhin_statement`)

*Proof.* The anchor assumes it. On the trunk the code proves it from the existence of the dual abelian scheme, also proved. $\square$

**Theorem (Asymptotic Riemann-Roch for nef divisors).** Let $X$ be a variety of dimension $D$ in a product of projective spaces and $a$ a multidegree that is nef on the generic fibre. Then the sections of $\mathcal{O}(\tau a)$ are finite dimensional over $\mathbb{Q}$, and $D!$ times their dimension over $\tau^D$ tends to the degree of $a$ on $X$.

Lean: `GlobalTheory.CompanionTheory.Ar.Pub.NefRR` (supplied by `UpperTheory.LiteratureTheorems.nef_rr_of_literature`)

*Proof.* The anchor assumes it. On the trunk a proved term supplies it. $\square$

**Remark (Formalization).** The parent is `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt`, which dominates 52,322 declarations. Its other child `topCovolG_alt_alt` (12,516) turns `DeepStR` into the covolume bound of [the literature step](/proof/literature/). The hypotheses come from `every_character_of_literature_of_vWin` ([EveryCharacterOfLiteratureOfVWin.lean#L812](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L812)). The six theorems above take `O : OpenLiteratureStatements` and do not use it. Their bodies are direct proved terms; the Zarhin body is `zarhin (dual_abelian_scheme_of_literature O)`, which also ignores `O`. `links/literature.yaml` records how each Lean form differs from the published theorem.

## The timeline steps without a counterpart

This chapter covers steps 4, 5, 6 and 13 of the [timeline](/proof/timeline/). Its positivity is the bound on mean volume slopes, not a positivity of the Weil functional.

**Remark (Step 4).** Step 4 reads $W(1_S) \ge 0$ through a determinant, as Stepanov's method with multiplicity one. The code has no counterpart: no quantity $W(1_S)$ and no positivity proved by a determinant. See [the determinants page](/proof/determinants/).

**Remark (Step 6).** Step 6 says that $W(1_{(0,1]} + X^{\eta} 1_{(0,1/X]}) \ge 0$ gives a bound larger than $1 - \eta$. The code has no such test function and no counterpart.

**Definition (Guinand-Weil function).** With $\Lambda$ the [[von Mangoldt function|087EMZTHWN]] and $\gamma$ Euler's constant, for $y > 0$ put

$$G(y) = \sum_{1 \le n \le y} \Lambda(n)\Big(\frac{y}{n} - 1\Big) - y \log y + (1 + \gamma)\,y.$$

Lean: `Formalism.BasicNotions.Gfun`

**Remark (Step 5).** For the Guinand-Weil sign of step 5, the code has the function $G$. It is used for [the theta matching](/proof/theta-matching/) and is not in the closure of the anchor.

**Theorem (Slope inequality for Euclidean lattices).** Let $L \ne 0$ and $M$ be discrete subgroups of finite dimensional real inner product spaces, $\varphi \colon L \to M$ injective, and $\|\varphi(x)\| \le C\|x\|$ for all $x$. Then $\mu(L) \le \mu_{\max}(M) + \log C$.

Lean: `Formalism.F.SlopeInequality` (proved by `Formalism.F.slopeInequality_of`)

*Proof.* The Lean proof starts from a Gram determinant bound: if $\|\sum c_i w_i\| \le C \|\sum c_i v_i\|$ for all real $c$, then $\det(\langle w_i, w_k \rangle) \le C^{2r} \det(\langle v_i, v_k \rangle)$ for $r$ vectors. From it, slopes are bounded. Apply the Gram bound to a basis $v$ of $L$ and $w = \varphi(v)$. It gives $\operatorname{covol}(\varphi L) \le C^r \operatorname{covol}(L)$ with $r = \operatorname{rank} L$, so $\mu(L) - \log C \le \mu(\varphi L) \le \mu_{\max}(M)$. $\square$

**Remark (Step 13).** For the Bost slope inequality of step 13, the code proves the theorem above, but this branch does not use it.

**Remark (Formalization).** The name `WeilBound` does not refer to Weil's explicit formula. The names with "Weil" in this branch are about Weil pairings. The words "Guinand", "Stepanov" and "Bost" do not occur in the Lean source. The slope inequality is in [Statement.lean#L75](lean:Formalism/LatticeSlopes/Statement.lean#L75). `slopeInequality_of` takes `SlopeLeMuMax` as a hypothesis, supplied as `slopeLeMuMax_of (slopesBdd_of gram_det_le)`.

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked.

Chen's arithmetic Fujita approximation gives the volume as a limit of self-intersections. The heights of subvarieties are those of Bost, Gillet and Soulé. The citations for Poincaré-Lelong, Fargues, Zarhin and nef Riemann-Roch are in `links/literature.yaml`.

- A. Abbes and T. Bouche, *Théorème de Hilbert-Samuel « arithmétique »*, Ann. Inst. Fourier 45 (1995), pages 375 to 401.
- E. Bombieri and J. Vaaler, *On Siegel's lemma*, Invent. Math. 73 (1983), pages 11 to 32.
- J.-B. Bost, *Périodes et isogénies des variétés abéliennes sur les corps de nombres*, Séminaire Bourbaki, Exp. 795, Astérisque 237 (1996), pages 115 to 161.
- J.-B. Bost, H. Gillet and C. Soulé, *Heights of projective varieties and positive Green forms*, J. Amer. Math. Soc. 7 (1994), pages 903 to 1027.
- H. Chen, *Arithmetic Fujita approximation*, Ann. Sci. Éc. Norm. Supér. (4) 43 (2010), pages 555 to 578.
- S. Chowla and A. Selberg, *On Epstein's zeta-function*, J. Reine Angew. Math. 227 (1967), pages 86 to 110.
- H. Gillet and C. Soulé, *Arithmetic intersection theory*, Publ. Math. IHÉS 72 (1990), pages 93 to 174.
- H. Hironaka, *Resolution of singularities of an algebraic variety over a field of characteristic zero I, II*, Ann. of Math. 79 (1964), pages 109 to 203 and 205 to 326.
- A. Moriwaki, *Continuity of volumes on arithmetic varieties*, J. Algebraic Geom. 18 (2009), pages 407 to 457.
- X. Yuan, *Big line bundles over arithmetic varieties*, Invent. Math. 173 (2008), pages 603 to 649.
- S. Zhang, *Positive line bundles on arithmetic varieties*, J. Amer. Math. Soc. 8 (1995), pages 187 to 221.
- S. Zhang, *Small points and adelic metrics*, J. Algebraic Geom. 4 (1995), pages 281 to 296.
