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
## Result

This page covers four steps of the [timeline](/proof/timeline/): step 4 ($W(1_S) \geq 0$ through a determinant), step 5 (the Guinand-Weil sign), step 6 (a positivity $W(\cdot) \geq 0$ for a test function with a factor $X^{\eta}$) and step 13 (the Bost slope inequality). The Lean code has no direct counterpart for steps 4 and 6. It has the Guinand-Weil function of step 5 and a proved Bost slope inequality for step 13, but neither is in this branch. The Notes section gives the details.

What the code does have, under the folder `Development/WeilBound`, is a positivity theorem of a different kind. The anchor of this page is this theorem ([AhSlimU.lean#L9](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/AhSlimU.lean#L9)).

```lean
theorem deep_slim_use (h₁ : ResolutionCharZero) (h₂ : PrincipalisationCharZero)
    (hPL : PoincareLelongInv) (hU : PositivityTheory.MbHsUse.HSUse)
    (hBig : MoriwakiBigStatement) (hF : HT.FarguesExact) (hZ : GR.ZarhinStatement)
    (hN : Pub.NefRR) : Plug.DeepStR
```

The conclusion `DeepStR` ([ModelSmall.lean#L63](lean:Development/AutomorphicSpectrum/Definitions/GlobalGeometry/ModelSmall.lean#L63)) says this. There is a constant $C \geq 0$ with the following property. Take data $D$ (a structure `D7`), a core `T : CoreJ D` that satisfies the laws `LawsJ`, with $m^2 \leq k$ for the two integers $m, k$ of $D$. Take $1 \leq j < m$, a tower object `Y : Deep T j` that is good for some $e$ and $o$, and whose level has at most 15 prime factors. Then

$$\texttt{MeanAll}\ (Y.U)\ (\xi_R(D))\ (\ell(D))\ C$$

holds, where

$$\ell(D) = \log \mathrm{rd}(E) + \left|\operatorname{Re} \frac{L'}{L}(1, \chi_d)\right|.$$

Here $E$ is the CM field of the host of $D$ (a [[number field|WXGM3VWEK6]]), $\mathrm{rd}(E) = |\operatorname{disc} E|^{1/[E:\mathbb{Q}]}$ is its root discriminant, and $\chi_d$ is the quadratic [[Dirichlet character|JR4QSEFXWF]] modulo the prime $d$ of $D$ ([SemiposAtOfPositive.lean#L105](lean:Development/AbelianVarietyTheory/Definitions/Divisors/SemiposAtOfPositive.lean#L105)). The number $\xi_R(D)$ is the norm of a fixed vector $\varphi_0$.

In words, the Lean code states: if eight published theorems hold, then on the unitary Shimura varieties of the tower, the mean volume slope of small cusp sections is at least $-C$ times an error term. The error term grows like $\log \mathrm{rd}(E) + |L'/L(1,\chi_d)|$ times the size of the weight.

## Idea

A lower bound on a slope is a positivity statement. It says that a lattice of sections is not too thin. The branch gets it from two theorems of arithmetic intersection theory.

- Moriwaki and Yuan: for a nef hermitian line bundle $\overline{A}$ on an arithmetic variety of dimension $D+1$, the self-intersection $\overline{A}^{D+1}$ is at most the arithmetic volume. So a lower bound for $\overline{A}^{D+1}$ gives many small sections.
- The arithmetic Hilbert-Samuel bound (Gillet-Soulé, Abbes-Bouche, Zhang): the number of small sections grows at most like $\overline{A}^{D+1}$. Together with Zhang's successive minima, this controls the intersection number from both sides.

The branch then builds a tower of integral models of unitary Shimura varieties (the `RootTower` of `GoodTowerExistsX`). On that tower it computes the arithmetic intersection numbers of the Hodge line bundles twisted by a weight $u$ (the statement `VolumeTheoremX`). A Bost-style bound on the slopes of the Lie algebra, and the Chowla-Selberg formula, give the error term $\ell(D)$. The volume theorem then gives the lower bound for the mean slope.

`DeepStR` is not the end. It feeds `topCovolG_alt_alt`, which gives a height lower bound (`HeightCondition`) and then the covolume bound `CovolumeBoundOfX` of [the literature step](/proof/literature/).

## Before you read

You need these ideas.

- A [[number field|WXGM3VWEK6]] $K$, its ring of integers $\mathcal{O}_K$, CM fields and the root discriminant.
- A [[Hermitian form|8NJ7XY6F1S]] and its [[unitary group|0R9R0Y1HDK]]. A unitary Shimura variety of signature $(p, q)$.
- [[Cusp forms|SV5EEBF861]], as sections of an automorphic line bundle with a sup norm.
- A hermitian lattice over $\mathcal{O}_K$: a projective $\mathcal{O}_K$-module with a hermitian norm at each complex place. Its degree, its slope $\mu$ and its maximal slope $\mu_{\max}$.
- Arithmetic intersection numbers and the arithmetic volume (Arakelov geometry).
- [[Dirichlet characters|JR4QSEFXWF]], [[Dirichlet L-functions|24GAZHVTGB]] and the [[von Mangoldt function|087EMZTHWN]] $\Lambda(n)$ (only for the Notes on step 5).
- For one input: [[p-adic Hodge theory|6YDZNXR19H]] (the Hodge-Tate sequence of Fargues).

## Plan

1. Unfold the error term and `MeanAll`.
2. State the two positivity inputs, `MoriwakiBigStatement` and `HSUse`, and the volume they use.
3. Get an absolute Siegel lemma (`LineOfLargeDegree`) and a slope bound for the Lie algebra (`SlopeBoundSt`).
4. Get a good tower and the volume theorem (`GoodTowerExistsX`, `VolumeTheoremX`).
5. Get `DeepStR` from the volume theorem (`deepStR_of_volume`).
6. Say which inputs are literature and which are proved.

## The steps

### Step 1. The mean slope and the error term

The definitions are in the namespace `GlobalTheory.CovHt` ([SemiposAtOfPositive.lean#L101](lean:Development/AbelianVarietyTheory/Definitions/Divisors/SemiposAtOfPositive.lean#L101)). A weight $u$ is a family of integers $u_{\tau,i}$, with one row for each index $\tau$ and $p + q$ entries in each row. Write $\|u\|_1 = \sum_{\tau,i} |u_{\tau,i}|$. The condition `WtGap u g` says that $g > 0$, that each row is strictly decreasing, and that $|u_{\tau,a} - u_{\tau,b}| \geq g$ when $a \neq b$ and $a \geq p$. For a number $s$ the error term is

$$\mathrm{err}(s,u,g) = (\log B(u,g) + s)\,\|u\|_1 + q \sum_{\tau} \Big(\max_i u_{\tau,i} - \min_i u_{\tau,i}\Big),$$

where $B(u,g)$ is an explicit bound (`bndB`). Then `MeanAll s C` says: for each $u$ and $g$ with `WtGap u g`, there are real numbers $\mathrm{sl}(Z)$, one for each connected component $Z$, with

$$\mathrm{sl}(Z) \leq \mu_{\mathrm{vol}}(Z, u) \quad\text{and}\quad -C\,\mathrm{err}(s,u,g) \leq \frac{1}{\#\mathrm{Comp}} \sum_{Z} \mathrm{sl}(Z).$$

The volume slope $\mu_{\mathrm{vol}}(Z,u)$ is `compVolSlope` ([IsHomogeneousCompIdeal.lean#L280](lean:Development/AbelianVarietyTheory/Definitions/Divisors/IsHomogeneousCompIdeal.lean#L280)). For $t \in \mathbb{R}$, let $V(t)$ count the lattice sections of weight $\tau u$ on $Z$ whose sup norm at the good embeddings is at most $e^{\tau t}$, normalized in $\tau$. Then $s \leq \mu_{\mathrm{vol}}(Z,u)$ means $\delta (s + t) \leq V(t)$ for all $t$, where $\delta > 0$ is the top degree of $u$ on $Z$. So a lower bound on the mean slope says: on average over the components, there are many small cusp sections.

In `DeepStR` the value of $s$ is $\ell(D) = \log \mathrm{rd}(E) + |\operatorname{Re} L'/L(1,\chi_d)|$.

### Step 2. Arithmetic positivity: Moriwaki and Hilbert-Samuel

The arithmetic volume is defined in [PenVol.lean#L35](lean:ReciprocityTheory/ReductiveGroups/ArithmeticGeometry/BirationalGeometry/PenVol.lean#L35). For a family of lattices $\Lambda_n$ and a smallness condition $P$,

$$\mathrm{vol}(P,\Lambda) = \limsup_{n \to \infty} \frac{\log \#\{s \in \Lambda_n : P(n, s)\}}{n^{D+1}/(D+1)!}.$$

`MoriwakiBigStatement` ([MoriwakiSt.lean#L29](lean:ReciprocityTheory/ReductiveGroups/ArithmeticGeometry/ArakelovGeometry/MoriwakiSt.lean#L29)) works with an arithmetic variety $X$ of dimension $D+1$ inside a product of projective spaces, and a hermitian line bundle $\overline{A}$ (`HermLine`) that is semipositive, invariant under complex conjugation, nef on the fibres and nef on the generic fibre. It says

$$\overline{A}^{D+1} \leq \mathrm{vol}(\overline{A}),$$

where $\overline{A}^{D+1}$ is computed by an `IntersectionSystem` $II$ that satisfies the axioms `IsIntersectionSystem`, and the volume counts sections with sup norm at most 1.

`HSUse` ([SmallGeneratedCountUpperOfUse.lean#L12](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/SmallGeneratedCountUpperOfUse.lean#L12)) is three statements. `ArithKleiman` says that a nef bundle with nonnegative heights on arithmetic curves has $\overline{A}^{D+1} \geq 0$. `G7` and `ArithmeticVolumeNef` say that the normalized count of small sections has $\limsup \leq \overline{A}^{D+1}$. The proof `hsLinks_of_use` turns `HSUse` and `MoriwakiBigStatement` into six statements. Two of them are Zhang's successive minima bounds: if every curve $C$ has height at least $e \deg C$, then $(D+1)\,e \deg X \leq \overline{A}^{D+1}$, and if a Zariski dense set of curves has height at most $e' \deg C$, then $\overline{A}^{D+1} \leq (D+1)\,e' \deg X$.

Both inputs are proved in Lean without hypotheses: `moriwakiBig_outright` ([Outright.lean#L9](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/MoriwakiBigTheorem/Outright.lean#L9)) and `hsUse_outright` (line 13 of the same file). Their proofs go through `hsChain`, which dominates 3,745 declarations. The site also lists them in [the literature inputs](/proof/literature/), because the intersection numbers are abstract.

### Step 3. The Siegel lemma and the slope bound

`LineOfLargeDegree.Statement` ([KernelsLattice.lean#L85](lean:GroundTheory/HeightsAndTheta/Heights/KernelsLattice.lean#L85)) is an absolute Siegel lemma. For each number field $K$, each hermitian lattice $F$ of rank $i \geq 1$ over $\mathcal{O}_K$ and each $\varepsilon > 0$, there is a finite extension $K'$ and a vector $v \neq 0$ with

$$\mu(F) - \tfrac12 \log i - \varepsilon \leq \deg_{K'}(v).$$

The proof `lineOfLargeDegree_of_use` gets it from the successive minima upper bound of Step 2.

`SlopeBoundSt` ([SlopeBoundSt.lean#L72](lean:Development/AutomorphicSpectrum/Definitions/GlobalGeometry/SlopeBoundSt.lean#L72)) is a bound on the Lie algebra of a semi-abelian scheme $t$ over $\mathcal{O}_L$ with principal generic fibre. Let $B$ be the Lie algebra with the Hodge metric. Then there is a constant $C \geq 0$, independent of all data, with

$$\mu_{\max}(B) \leq C \log\big(2 + \operatorname{rank} B + \max(-\widehat{\deg}_n B, 0)\big).$$

Here $\mu_{\max}(B)$ is the supremum of the slopes $\widehat{\deg}_n(F)/\operatorname{rank} F$ over the nonzero submodules $F$, and $\widehat{\deg}_n$ is the degree divided by $[L:\mathbb{Q}]$ ([Slopes.lean#L35](lean:GroundTheory/HeightsAndTheta/Heights/HeightsOfSets/Slopes.lean#L35)). This is the place where the branch is closest to the Bost slope method. The proof `TopSlope.slopeBound` ([SlopeBoundOfLargeDegreeLine.lean#L94](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/SlopeBoundOfLargeDegreeLine.lean#L94)) does not use a slope inequality. For each $F \neq 0$ it takes a short vector of $F$ from the Siegel lemma, over an extension $L'$. Then a key degree bound ($-\text{mean}\log|x| \leq C\ell$) bounds the degree of that vector. Together they give $\mu(F) \leq (C+2)\ell$.

### Step 4. The good tower and the volume theorem

`good_tower_volume_theorem_bis` gives two statements ([GoodTowerExistsX.lean#L22](lean:Development/AutomorphicSpectrum/Statements/TowerExistence/GoodTowerExistsX.lean#L22)).

`GoodTowerExistsX` says: for a CM field $E$, a host, a datum with $p, q \geq 1$ and a global integral model with split components, there is a root tower $T$ with a good origin that satisfies the condition `Extra`.

`VolumeTheoremX` ([GoodTowerExistsX.lean#L28](lean:Development/AutomorphicSpectrum/Statements/TowerExistence/GoodTowerExistsX.lean#L28)) says: there is $C \geq 0$ such that for $E$ abelian over $\mathbb{Q}$, $q \geq 1$, $3q + 1 \leq p + q$, and at most $4\,\#\mathrm{CMType}\,(p+q)^2$ bad primes in $T$, six things hold for every full intersection system $II$. The last of them is `MeanSlope`. For a weight $u$ and $B \geq 128$ above the bad primes,

$$-C \Big( \big(\log(B\,\mathrm{rd}(E)) + |\operatorname{Re} L'/L(1,\chi_d)|\big)\,\|u\|_1 + \min(j, N - j)\,\mathrm{spread}(u) \Big) \leq \frac{1}{\#\mathrm{Comp}} \sum_{c} \mathrm{slope}(c, u),$$

where $\mathrm{slope}(c, u)$ is the self-intersection of the line bundle of weight $u$ on the component $c$, divided by $(\dim + 1)$, the volume and the flag degree ([Proportional.lean#L62](lean:Development/AutomorphicSpectrum/Definitions/DivisibilityTowers/Proportional.lean#L62)). This proof is the largest part of the branch: `volume_theorem_of_inputs` dominates 8,967 declarations. The Chowla-Selberg formula `GlobalTheory.LFunction_one_and_mean_log_eta` gives the term with $L'/L(1,\chi_d)$. It says $L(1,\chi) = \pi h/\sqrt{d}$, and the mean of $\log(\operatorname{Im}\tau\,|\eta(\tau)|^4)$ over the ideal classes is $\gamma - \log(2\sqrt{d}) - L'/L(1,\chi)$.

### Step 5. From the volume theorem to DeepStR

`deepStR_of_volume` ([DeepStROfVolume.lean#L21](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/DeepStROfVolume.lean#L21)) takes `NefRR`, the bundle `Top.Given`, an intersection system, the birational pullback formula, `GoodTowerExistsX` and `VolumeTheoremX`. It checks the bad prime count and the conditions on $(p,q)$ for the data of `DeepStR`. Then it compares the intersection slope of Step 4 with the volume slope of Step 1. The lemma `SlopeVolM.slope_sub_cost_le_compVolSlope` ([UniformAllNormHeightBound.lean#L300](lean:Development/AutomorphicSpectrum/Proofs/GeometryProofs/UniformAllNormHeightBound.lean#L300)) gives

$$\mathrm{slope}(c, u) - 2\,\mathrm{cost}(l, B)\,\|u\|_1 \leq \mu_{\mathrm{vol}}(c, u).$$

This is where the Moriwaki inequality of Step 2 is used: an intersection number gives a count of small sections.

The proof of the anchor, `deepStR_of_use` ([DeepStROfUse.lean#L12](lean:Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/HilbertSamuelApplications/DeepStROfUse.lean#L12)), joins Steps 2 to 5 in five lines. It builds the Siegel lemma, `Top.Given`, and the tower and volume pair. It takes `Prov.HS` and the birational pullback formula out of `Top.Given`, and calls `deepStR_of_volume`.

### Step 6. What is literature and what is proved

The parent `topCovolSlim2_use_alt_alt` receives fifteen hypotheses and passes eight of them to `deep_slim_use`. In the proof of the Riemann Hypothesis, `every_character_of_literature_of_vWin` supplies them ([EveryCharacterOfLiteratureOfVWin.lean#L812](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L812)).

| Hypothesis | Source | Published result (from `links/literature.yaml`) |
|---|---|---|
| `ResolutionCharZero` | `resolution_char_zero_of_literature` | Hironaka's resolution of singularities |
| `PrincipalisationCharZero` | `principalisation_char_zero_of_literature` | Principalisation of ideals (Hironaka) |
| `PoincareLelongInv` | `poincare_lelong_inv_of_literature` | The Poincaré-Lelong formula |
| `HSUse` | `hsUse_outright` (proved in Lean) | Arithmetic Hilbert-Samuel, upper bound |
| `MoriwakiBigStatement` | `moriwakiBig_outright` (proved in Lean) | Moriwaki and Yuan on volumes |
| `FarguesExact` | `fargues_exact_of_literature` | Exactness of the Hodge-Tate sequence (Fargues) |
| `ZarhinStatement` | `zarhin_statement` | Zarhin's trick |
| `NefRR` | `nef_rr_of_literature` | Asymptotic Riemann-Roch for nef divisors |

Everything else in the branch is proved in Lean from these eight inputs. That includes the Siegel lemma, `SlopeBoundSt`, the tower, the volume theorem and the comparison of Step 5. The proofs have not been reviewed by a person.

## Where it is in the code

Sizes are dominator sizes: the number of declarations that only this node reaches on the way down from the top. All paths are relative to `lean/src`.

| Declaration | File | Size |
|---|---|---|
| `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt` (parent) | `.../ThirdPlaceSeries/TopCovolSlim2Use.lean` | 52,322 |
| `PositivityTheory.HtPt.Ah.deep_slim_use` | `.../HilbertSamuelApplications/AhSlimU.lean` | 30,358 |
| `GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_use` | `.../HilbertSamuelApplications/DeepStROfUse.lean` | 29,968 |
| `GlobalTheory.CompanionTheory.Ar.Link.good_tower_volume_theorem_bis` | `.../HilbertSamuelApplications/GoodTowerVolumeTheoremBis.lean` | 21,078 |
| `volume_theorem_of_inputs` (under the previous line) | | 8,967 |
| `GlobalTheory.CompanionTheory.Ar.Plug.deepStR_of_volume` | `.../GeometryProofs/DeepStROfVolume.lean` | 1,218 |
| `GlobalTheory.CompanionTheory.Ar.Giv.lineOfLargeDegree_of_use` | `.../HilbertSamuelApplications/LineOfLargeDegreeOfUse.lean` | 1,206 |
| `GlobalTheory.CompanionTheory.Ar.Sl.TopSlope.slopeBound` | `.../GeometryProofs/SlopeBoundOfLargeDegreeLine.lean` | 850 |
| `PositivityTheory.Pf1.HilbertSamuelMoriwaki.moriwakiBig_outright` | `.../MoriwakiBigTheorem/Outright.lean` | 3 |
| `PositivityTheory.Pf1.HilbertSamuelMoriwaki.hsUse_outright` | `.../MoriwakiBigTheorem/Outright.lean` | 3 |

The `HilbertSamuelApplications` and `MoriwakiBigTheorem` files are in `Development/WeilBound/CoreStatements/AutomorphicKernels/MoriwakiBigness/`. The `GeometryProofs` files are in `Development/AutomorphicSpectrum/Proofs/`. The parent file is in `Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/`. The other child of the parent, `topCovolG_alt_alt`, dominates 12,516. The two `outright` theorems have size 3 because their proof `hsChain` (3,745) is shared: its dominator is `every_character_of_literature_of_vWin`. The full closure of `deep_slim_use` (all declarations it uses, shared or not) has 87,553 declarations. In the dominated part, about 14,800 declarations are in `Development/AutomorphicSpectrum/Proofs`, about 6,700 in `Development/WeilBound/CoreStatements` and about 6,400 in `GroundTheory/HeightsAndTheta/Heights`.

## Notes

- The name `WeilBound` of the folder does not refer to Weil's explicit formula. The names with "Weil" in this branch are about Weil pairings on abelian schemes. The words "Guinand", "Stepanov" and "Bost" do not occur in the Lean source.
- Timeline step 4 ($W(1_S) \geq 0$ through a determinant, read as Stepanov with multiplicity one) has no counterpart in the code. There is no quantity $W(1_S)$ and no positivity proved by a determinant. See also [the determinants page](/proof/determinants/).
- Timeline step 6 ($W(1_{(0,1]} + X^{\eta} 1_{(0,1/X]}) \geq 0$ gives a bound larger than $1 - \eta$) has no counterpart in the code. There is no test function of this form and no exponent $\eta$ of this kind. The positivity in this branch is the lower bound on mean slopes of Step 1, with an error term in $\log \mathrm{rd}(E)$ and $|L'/L(1,\chi_d)|$.
- Timeline step 5 (the Guinand-Weil sign): the code has a Guinand-Weil type function, `Gfun` in `Formalism/LocalRingCardinality/DataParams₂.lean`, with $G(y) = \sum_{n \leq y} \Lambda(n)(y/n - 1) - y \log y + (1+\gamma)\,y$. It is used on the side of [the theta matching](/proof/theta-matching/). It is not in the closure of `deep_slim_use`. The only L-function term in this branch is $L'/L(1,\chi_d)$, which comes from Chowla-Selberg, not from an explicit formula.
- Timeline step 13 (the Bost slope inequality): the code proves a slope inequality for Euclidean $\mathbb{Z}$-lattices, `Formalism.F.SlopeInequality` ([Statement.lean#L75](lean:Formalism/LatticeSlopes/Statement.lean#L75)). If $\varphi : L \to M$ is injective and $\|\varphi x\| \leq C\|x\|$, then $\mu(L) \leq \mu_{\max}(M) + \log C$. Its proof is `slopeInequality_of`. It is not used in this branch. Here the role of a slope bound is played by `SlopeBoundSt`, which is proved from the Siegel lemma and a degree bound, not from a slope inequality.
- In `TopSlope.slopeBound` the second conclusion `Prov.LemmaS` is the same statement as `SlopeBoundSt` (an `abbrev`). The proof gives the same term twice.
- `MoriwakiBigStatement` is weaker than the published theorem: it has $\leq$ where the published result for nef bundles has equality. `HSUse` has only the $\limsup$ upper bound. In both, the intersection numbers come from an abstract `IntersectionSystem` with the axioms `IsIntersectionSystem`, not from the Gillet-Soulé construction. So the results depend on those axioms.
- This page does not unfold `Top.Given` (a large conjunction of about twenty statements), the structures `D7`, `CoreJ`, `LawsJ` and `Deep`, the condition `Extra`, or the first five parts of `VolumeTheoremX`.
- The site does not claim that the proof is correct. The Lean code states the results above, and nobody has reviewed it. The [trust report](/trust/) says what has been checked.
