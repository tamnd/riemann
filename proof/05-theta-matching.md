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
## Result

The trunk of the proof (see [the map](/proof/trunk/)) reaches the theorem `every_character_of_theta_integrals_local_matching` from `every_character_of_literature_of_vWin` (see [the literature inputs](/proof/literature/)). The theorem has this form.

```lean
theorem every_character_of_theta_integrals_local_matching
    (P : GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses)
    (F : GlobalTheory.FunPr.ThetaLocalInputs)
    (hA : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree)
    (hM : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching)
    (hX : GlobalTheory.CovTop.CovolumeBoundOfX)
    (hL : UpperTheory.Zero.LLC.RecTExists) (hV : VWin) :
    UpperTheory.EveryCharacter
```

The conclusion `EveryCharacter` is this statement. Let $N \geq 1$, let $\chi$ be a [[Dirichlet character|JR4QSEFXWF]] modulo $N$ and let $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$. If $\chi \neq 1$ or $s \neq 1$, then $L(s, \chi) \neq 0$. Here $L(s,\chi)$ is the [[Dirichlet L-function|24GAZHVTGB]] of Mathlib (`DirichletCharacter.LFunction`).

In words, the Lean code states: if seven inputs hold, then each Dirichlet L-function has no zero in the half-plane $\operatorname{Re}(s) > \tfrac12$. The seven inputs are two large bundles of named statements (`P` and `F`), two statements on theta integrals (`hA` and `hM`), a covolume bound (`hX`), the existence of a local Langlands type map (`hL`) and the statement `VWin` (see [the VWin page](/proof/vwin/)). In the proof of the Riemann Hypothesis, all seven come from the previous step.

## Idea

The proof of the theorem has two parts, and it is three lines of Lean.

The first part is the trunk. The theorem `nonempty_hyps_definite_side_of_closed_bound` uses all inputs except `VWin`, and builds one large structure `HypsAlt`. This structure has 46 fields. They are bounds and choices for families of objects that the code calls `FamP`. This part dominates 263,288 declarations. It is the subject of [the next chapter](/proof/unitary-hypotheses/).

The second part is the branch `every_character_of_green_v_win`. It takes three inputs: the statement `Green` (about cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$), the statement `VWin`, and the structure `HypsAlt`. From them it proves `ZeroFreeAll`, which is the same nonvanishing for primitive characters only. Then a short Mathlib argument removes the condition "primitive". This branch dominates 12,087 declarations.

The theta inputs `hA` and `hM` are not used in the branch. They go only into the trunk part. So the name of the theorem refers to the two inputs, and the work that uses them is in the next chapter. This page still unfolds them, because their statements are concrete. `ThetaIntegralsAgree` says that two theta integrals into the same unitary group are proportional, with one nonzero constant, when their test functions match. `LocalMatching` says that test functions can be matched: at each place there are quotient maps of the two local Weil representations onto one common irreducible space.

## Before you read

You need these ideas.

- A number field $F$, a CM extension $E/F$ with conjugation $\sigma$, and the [[adele ring|NYJFYZ0B4M]] $\mathbb{A}_F$.
- A [[Hermitian form|8NJ7XY6F1S]] or skew-Hermitian form on $E^n$ and its [[unitary group|0R9R0Y1HDK]].
- The [[Weil representation|H3Q2703KKV]] of a pair of unitary groups, and the [[theta correspondence|6WB6TKE70H]].
- [[Schwartz functions|GE020MY43M]] on adelic spaces, [[Haar measure|CE0V9686M8]] and a [[fundamental domain|WEGEXJBX26]].
- [[Hecke characters|KPYFGB342X]] of $\mathbb{A}_E^\times$.
- [[Dirichlet characters|JR4QSEFXWF]], [[Dirichlet L-functions|24GAZHVTGB]] and the [[von Mangoldt function|087EMZTHWN]] $\Lambda(n)$.

## Plan

1. Define the theta integral $I_M(\Phi)(h)$ for one Weil model $M$, as the Lean code does.
2. Unfold `ThetaIntegralsAgree`: convergence, one nonzero proportionality constant, and two recursion laws for that constant.
3. Unfold `LocalMatching`: matched local quotient maps exist.
4. Build `HypsAlt` from the inputs (next chapter).
5. Get `Green` from `GreenRegularCharacters`, a field of `P`.
6. In the branch, prove `ZeroFreeAll` from `Green`, `VWin` and `HypsAlt`.
7. Remove the condition "primitive" with `imprimitive`.

## The steps

### Step 1. Theta integrals

All definitions are in the namespace `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels`, in the file [WeilTensorModels.lean](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L286).

A space `Spc F E n` has a matrix $J \in M_n(E)$, an $\mathcal{O}_E$-lattice $L \subset E^n$, a matrix $\theta_w$ at each infinite place $w$, and a basis at each finite place. The group `UA σ J` is the adelic unitary group $U_J(\mathbb{A}) = \{ g : g^{T} J \, \sigma(g) = J \}$ with entries in $\mathbb{A}_F \otimes_F E$. A `Model σ X W` for spaces $X$ of size $n$ and $W$ of size $d$ has Darboux coordinates for the symplectic form on $X \otimes W$, a vacuum vector at each finite place, a measure $\mu$ on $U_X(\mathbb{A})$ and a set `dom`. A representation `om` of $U_X(\mathbb{A}) \times U_W(\mathbb{A})$ acts on functions $\Phi$ on $\mathbb{A}_F^{n \times d \times 2}$ (the Lean index set is `Fin n × Fin d`).

```lean
def theta (om : Rep σ X W) (Φ : (Fin n × Fin d → AF F) → ℂ) (g : UA σ X.J) (h : UA σ W.J) : ℂ :=
  thetaSum F (om (g, h) Φ)

def Model.I (M : Model σ X W) (om : Rep σ X W) (Φ : (Fin n × Fin d → AF F) → ℂ) (h : UA σ W.J) : ℂ :=
  ∫ g in M.dom, theta om Φ g h ∂M.μ
```

Here `thetaSum` is $\sum_{\xi} \Phi(\xi)$ over the rational points $\xi \in F^{n \times d}$ ([HilbertNinetyQuotientHomEqIff.lean#L107](lean:Development/AbelianVarietyTheory/Definitions/Divisors/HilbertNinetyQuotientHomEqIff.lean#L107)). So the theta function is $\theta(g,h;\Phi) = \sum_{\xi} (\omega(g,h)\Phi)(\xi)$, and the theta integral is

$$ I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi) \, d\mu(g). $$

The predicate `Model.IsGood` asks that $\mu$ is a Haar measure and that `dom` is a fundamental domain for $U_X(F)$ in $U_X(\mathbb{A})$. So $I_M(\Phi)$ is a function on $U_W(\mathbb{A})$. This is the usual global theta lift from $U_X$ to $U_W$, written out by hand.

### Step 2. The data of a triple

The two theta statements quantify over a "triple". The structure `IsTriple B G X om om'` ([WeilTensorModels.lean#L388](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L388)) has five parts.

- `B.IsGood`: $E/F$ is a CM extension with conjugation $\sigma$, $E/\mathbb{Q}$ is Galois, $E/F$ is unramified, the additive character $\psi$ of $\mathbb{A}_F$ is standard, and at each inert place $v$ the residue field has more than 3 elements and $v \nmid 2$.
- `G.IsGood`: there are three spaces. $V$ is Hermitian of size $a$ and signature $(a-p, p)$. $V'$ is Hermitian of size $a'$ and signature $(q, a'-q)$. $W$ is skew-Hermitian of size $a+a'$ and signature $(a+a'-p-q, p+q)$. The sizes satisfy $a' < a$, $a + a'$ is even, $2(p+q)+1 < a'$ and $2(p+q)+1 < (a-a')/2$. Also $a + a' < m_\alpha(w) - m_\beta(w)$ at each infinite place $w$, where $m_\alpha, m_\beta$ are the weights of two characters.
- `X.IsGood`: $\alpha$ and $\beta$ are Hecke characters of $\mathbb{A}_E^\times$ with infinity types $m_\alpha, m_\beta$, with given restrictions to $\mathbb{A}_F^\times$, unramified outside a finite set $T$ of places, and with $\nu = \alpha/\beta$ ramified at each place of $T$.
- `weil`, `weil'`: `om` is a Weil representation of $U_V \times U_W$ with splitting characters $(\beta, \beta/\alpha)$, and `om'` is one of $U_{V'} \times U_W$ with splitting characters $(\alpha, \alpha/\beta)$.

So a triple gives two theta lifts into the same group $U_W$: one from $U_V$ with $\omega$, one from $U_{V'}$ with $\omega'$.

### Step 3. ThetaIntegralsAgree

```lean
def ThetaIntegralsAgree : Prop :=
  (∀ F E ... σ B a a' G X om om', IsTriple B G X om om' → Decay B G om om' ∧
      ∀ R Rf, IsMatched B G X om om' R Rf → OneConst B G X om om' R Rf ∧ Coinv B G X om om' Rf) ∧
  (∃ e₁ e₂ s : ℤˣ, ∀ F E ... σ, StepBeta σ e₁ e₂ s) ∧
  ∃ e₁ e₂ s : ℤˣ, ∀ F E ... σ, StepAlpha σ e₁ e₂ s
```

The statement is at [WeilTensorModels.lean#L585](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L585). It has three parts.

The first part is about one triple. `Decay` says that $g \mapsto \theta(g,h;\Phi)$ is integrable on `dom` for each adelic Schwartz function $\Phi$. It says the same for $\omega'$ and each $\Phi'$ in a subspace `So`, with a bound $|\theta(g,h;\Phi')| \, \mathrm{ht}(g)^N \leq C \, \mathrm{ht}(h)^k$ and moderate growth of $I_{M'}(\Phi')$. `OneConst` says three things: some $I_{M'}(\Phi')$ is not zero, there is exactly one $c$ with `IsConst c`, and that $c$ is not zero. Here `IsConst c` means

$$ I_M(\Phi)(h) = c \cdot I_{M'}(\Phi')(h) \quad \text{for all } h \text{ and all matched pairs } (\Phi, \Phi'). $$

`Coinv` says that at good places the kernels of the local maps are exactly the coinvariant spaces `augAt`, and that `So` is stable under $\omega'$.

The second and third parts, `StepBeta` and `StepAlpha` ([WeilTensorModels.lean#L559](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L559)), are recursion laws for the constant $c$. Take a geometry $G$ and a smaller geometry $G_1$ where one space is smaller by 2 (one hyperbolic plane $H$ split off). Then there is a $C \neq 0$ so that the constants $c$ and $c_1$ of the two triples satisfy a relation. In `StepAlpha` it is

$$ c = C \cdot \mathrm{stepFac}(z) \cdot L^{S_0}\!\left(\tfrac{b+2-a'}{2}, \nu\right) \cdot c_1, $$

with $z = 1 - \tfrac{b+2-a'}{2}$. In `StepBeta` the partial L-value $L^{S_0}(\tfrac{a-b-2}{2}+1, \nu)$ multiplies $c$ instead, and the step factor is inverted. Here $L^{S_0}(s,\nu)$ is the partial Euler product of $\nu$ over the places of $E$ not above $S_0$ (`charL`). The factor `stepFac` ([WeilTensorModels.lean#L552](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L552)) is a product of values of $\nu$ on two fractional ideals and, for each place $v \in T$, a value of $\nu_v$ times an epsilon factor built from a Gauss sum (`eps`, `gauss`).

### Step 4. LocalMatching

```lean
def LocalMatching : Prop :=
  ∀ (F E : Type) ... (σ : E →ₐ[F] E) (B : Base F E) (a a' : ℕ)
    (G : Geo σ a a') (X : Chars F E) om om', IsTriple B G X om om' → ∃ R Rf, IsMatched B G X om om' R Rf
```

The statement is at [WeilTensorModels.lean#L581](lean:Development/AbelianVarietyTheory/BlockTheory/DivisorBase/WeilTensorModels.lean#L581). For each triple there are real maps `R` and finite maps `Rf` with `IsMatched`.

`IsFinMaps` asks, for each finite place $v$, two linear maps $p_v$ and $p'_v$ from the local Schwartz-Bruhat spaces of $\omega_v$ and $\omega'_v$ onto one space $\Pi_v$. The maps are onto. They kill the $U_V(F_v)$ and $U_{V'}(F_v)$ coinvariants. They respect the action of $U_W(F_v)$: if $p_v\varphi = p'_v\varphi'$, then the same holds after $h$ acts on both. The space $\Pi_v$ is nontrivial and has no proper nonzero $U_W(F_v)$-stable subspace. Outside $T$ the two vacuum vectors have the same nonzero image. At $v \in T$ the condition `IsZetaAt` relates the images to two explicit local integrals (`bigP` and `smallP`). `IsRealMaps` asks the same at the infinite places, with Lie algebra and maximal compact actions on the polynomial Fock space `Pol`.

So `LocalMatching` says: the local theta lifts of $\omega_v$ and $\omega'_v$ to $U_W(F_v)$ have a common irreducible quotient, at every place, with matched spherical vectors. A pair $(\Phi,\Phi')$ is matched (`Match`, `PolMatch`) when their pure tensor pieces have the same image in $\Pi_\infty \otimes \bigotimes_{v \in T'} \Pi_v$ for some finite set $T' \supseteq T$, up to limits.

In the proof of the Riemann Hypothesis, both `hA` and `hM` come from `theta_integrals_agree_and_local_matching_of_literature`, which applies `PositivityTheory.ThKR.theoremK_head2` to two statements named `EisBL` and `SiegelWeilStd`. That proof dominates 13,076 declarations. The names refer to Eisenstein series and the Siegel-Weil formula in the literature. This page does not unfold `EisBL` or `SiegelWeilStd`.

### Step 5. The trunk part

The Lean statement is long. Here it is shortened: the part `(...)` stands for a condition `SlotNormCondition` on the family bound `BoundAtTwoThreeFamilyFonAlt`.

```lean
theorem nonempty_hyps_definite_side_of_closed_bound :
    UnitaryGroupThirdPlaceHypotheses → ThetaLocalInputs → ThetaIntegralsAgree → LocalMatching →
    CovolumeBoundOfX → ∀ (hL : RecTExists),
    (∀ cDep : ℝ, LinkedAt (parametersOfDependence hL cDep) (...)) →
    Nonempty (HypsAlt S0.NL DefiniteSideCondition)
```

The main proof passes `P.nLink` through `boundAtTwoThree_linked_of_recT` to supply the last hypothesis. The result is a term of `HypsAlt N DefiniteSideCondition` with `N = S0.NL`. By definition, `S0.NL 𝒞` is `Closed 𝒞 fun Fm _ => LinkN Fm` ([GeometricWeakTiesOfStrong.lean#L36](lean:Development/AbelianVarietyTheory/Definitions/GlobalTwisting/GeometricWeakTiesOfStrong.lean#L36)). This is exactly the form that the branch asks for. In the proof, `hA` and `hM` go into `test_vector_assembly_holds`, `fourier_coefficient_fit_of_join_alt`, `evaluation_grid_of_join`, `twisted_local_factors_match` and `twisted_square_theta_integrals_eq`. [The next chapter](/proof/unitary-hypotheses/) follows this proof.

### Step 6. Green from regular characters

```lean
theorem green_of_regular (hG : GlobalTheory.Published.GreenRegularCharacters) : GlobalTheory.GLq.Green
```

`GreenRegularCharacters` is a field of `P` ([GreenRegularCharacters.lean#L13](lean:Development/AbelianVarietyTheory/PublishedTheorems/GaloisCohomology₂/GreenRegularCharacters.lean#L13)). For a prime $g$, an integer $d > 0$ and a field $K$ of degree $d$ over $\mathbb{F}_g$, it gives a map $\theta \mapsto \tau_\theta$ from characters of $K^\times$ to class functions on $\mathrm{GL}_d(\mathbb{F}_g)$. For a regular $\theta$ (the powers $\theta^{g^i}$, $0 \le i < d$, are distinct), $\tau_\theta$ is cuspidal, has degree $\prod_{i=1}^{d-1}(g^i - 1)$, and on an element $y$ with irreducible characteristic polynomial and a root $z$ it is $(-1)^{d-1}\sum_{i<d} \theta(z^{g^i})$. Two regular characters give the same $\tau$ exactly when they are Frobenius conjugate, and each cuspidal character is some $\tau_\theta$. The name refers to Green's theorem on the characters of finite general linear groups. `Green` ([LabelDatum.lean#L108](lean:Development/AbelianVarietyTheory/Definitions/NonGaloisDescent/LabelDatum.lean#L108)) is the same kind of parametrisation, by "prime labels" (polynomials over $\mathbb{Z}/g$) in place of characters. The proof `green_of_regular` is in the file [SumRangeEqRoots.lean#L225](lean:Development/AbelianVarietyTheory/Proofs/InertiaEigenvalues/SumRangeEqRoots.lean#L225).

### Step 7. The branch: ZeroFreeAll

```lean
theorem UpperTheory.Top.zero_free_all_of_green_v_win (hG : GlobalTheory.GLq.Green) (hV : UpperTheory.Top.VWin)
    (h : Nonempty (HypsAlt (fun 𝒞 => Closed 𝒞 fun Fm _ => LinkN Fm) DefiniteSideCondition)) :
    Formalism.HC.ZeroFreeAll :=
  h.elim fun h => UpperTheory.Top.zeroFreeAll_of_topG (la := 3 / 2) (by norm_num)
    (forall_goal_of_shape_of_hyps _ _ _ _ (shape_closed_link_n_of_green hG) trivial trivial h)
    fun ψ => UpperTheory.Top.supplyChi ψ (hV ψ)
```

A `PChar` is a primitive Dirichlet character $\psi$ of some conductor $N$. `ZeroFreeAll` says: for each `PChar` $\psi$ and each $s$ with $\operatorname{Re}(s) > \tfrac12$, $L(s,\psi) \neq 0$ ([ExplicitFormulaErrorOfHostConditions.lean#L18](lean:Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean#L18)). The statement has no exception at $s = 1$. The trivial character modulo 1 is primitive, and its L-function is $\zeta$, so at $s = 1$ the statement says that `riemannZeta 1` is not zero. Mathlib gives $\zeta$ a value at its pole by a convention, and the lemma `riemannZeta_one` says that this value is $(\gamma - \log 4\pi)/2$, which is not zero. So the case $s = 1$ is true, but only because of the convention. The proof has three pieces.

First, `shape_closed_link_n_of_green` (9,548 declarations) proves `TopShapeAlt True True N TopG` from `Green`. `TopShapeAlt V NR N G` is a long implication: if about 50 named conditions on a family class $\mathcal{A}$ hold (and $V$, $NR$, and $N(\mathcal{A}')$ for a derived class), then $G$ holds. The theorem `forall_goal_of_shape_of_hyps` feeds the 46 fields of `HypsAlt` into these slots. It is a direct pass of fields, with two small conversions. The result is `TopG`.

Second, `TopG` ([ZeroFreeAllOfTopG.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ZeroFreeAllOfTopG.lean#L12)) says: for each $\lambda > 1$ and each requirement $G$, if suitable hosts exist on windows of scale $\lambda$ (`HostExW la G.req`), and each family in the class `G.cls la` satisfies `HypV`, then the class is `FamilyClassConnected`. That means: for small $\varepsilon$ there is a family `Fm` in the class whose members satisfy the inequality `ChainTied` for all large $x$ in its window set.

Third, `supplyChi` (1,463 declarations) turns `VWinAt ψ 401` into `HostExW (3/2) (GChi ψ).req`. So `VWin` supplies the hosts for each $\psi$, at $\lambda = 3/2$.

The theorem `zeroFreeAll_of_topG` (417 declarations) then ends the proof. For $\psi$, it takes the level `Level.cyc ψ`, built from the subgroup generated by $\psi$. The code defines

$$ G_m(y) = G_z(y) + \sum_{\psi'} w(\psi') \operatorname{Re} g_{\psi'}(y), \qquad G_z(y) = \sum_{n \le y} \Lambda(n)\Big(\frac{y}{n} - 1\Big) - y \log y + (1 + \gamma) y, $$

where the sum is over the nontrivial characters $\psi'$ of the level, $w(\psi')$ is a weight, $\gamma$ is Euler's constant, and $g_{\psi'}(y) = \sum_{n \le y} \Lambda(n)\psi'(n)(y/n - 1) + y \cdot c_{\psi'}$ with $c_{\psi'}$ the constant `logDerivativeAtOne`. Two proved facts combine. `level_gm_le_on_family_scales` (300 declarations) says that on the windows of a family where `ChainTied` holds, $G_m(x) \le x^{1/2 + (e_D + e_L + 7)\varepsilon}$. `formB` (95 declarations) gives `FormB`: if $G_m(x) \le x^\theta$ for all $x \in [Y, Y^\lambda]$, for arbitrarily large $Y$, then $L(s,\psi') \ne 0$ for $\operatorname{Re}(s) > \theta$ and all $\psi'$ in the level. The lemma `level_of_tiedWin` takes $s$ with $\operatorname{Re}(s) > \tfrac12$, chooses $\varepsilon$ so small that $\tfrac12 + (e_D+e_L+7)\varepsilon < \operatorname{Re}(s)$, and applies the two facts.

### Step 8. Imprimitive characters

```lean
theorem UpperTheory.Top.imprimitive :
    ZeroFreeAll → ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ), 1 / 2 < s.re → (χ ≠ 1 ∨ s ≠ 1) →
      DirichletCharacter.LFunction χ s ≠ 0
```

This is the last step of the branch ([Imprimitive.lean#L5](lean:Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean#L5)). Let $\chi^*$ be the primitive character that induces $\chi$. Mathlib gives

$$ L(s,\chi) = L(s,\chi^*) \prod_{p \mid N} \big(1 - \chi^*(p) p^{-s}\big). $$

The first factor is not zero by `ZeroFreeAll`. For each $p$, $|\chi^*(p)p^{-s}| \le p^{-\operatorname{Re}(s)} < 1$, so the factor $1 - \chi^*(p)p^{-s}$ is not zero. The condition $\chi \neq 1$ or $s \ne 1$ is needed only for the Mathlib lemma `LFunction_changeLevel`. The theorem `every_character_of_green_v_win` is this step applied to `zero_free_all_of_green_v_win`.

## Where it is in the code

Sizes are dominator sizes: the number of declarations that only this node reaches on the way down from the top. All paths are relative to `lean/src`.

| Declaration | Module (file) | Size |
|---|---|---|
| `UpperTheory.Lit.every_character_of_theta_integrals_local_matching` | `ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean` | 312,785 |
| `UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound` | same file | 263,288 |
| `UpperTheory.Top.every_character_of_green_v_win` | `ThirdPlaceSeries/TopPlug.lean` | 12,087 |
| `UpperTheory.Top.zero_free_all_of_green_v_win` | `ThirdPlaceSeries/TopPlug.lean` | 12,082 |
| `UpperTheory.Top.shape_closed_link_n_of_green` | `ThirdPlaceSeries/TopShape.lean` | 9,548 |
| `UpperTheory.Top.supplyChi` | `CharacterBoxes/SupplyChi.lean` | 1,463 |
| `UpperTheory.Top.zeroFreeAll_of_topG` | `CharacterBoxes/ZeroFreeAllOfTopG.lean` | 417 |
| `UpperTheory.Top.imprimitive` | `CharacterBoxes/Imprimitive.lean` | 1 |
| `UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature` | `ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean` | 13,076 |
| `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree` | `BlockTheory/DivisorBase/WeilTensorModels.lean` | definition |
| `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching` | `BlockTheory/DivisorBase/WeilTensorModels.lean` | definition |

The `ThirdPlaceSeries` files are in `Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/`. The `CharacterBoxes` files are in `Development/AutomorphicArithmetic/`. The full closure of the main theorem (all declarations it uses, shared or not) has 457,187 declarations. The closure of `every_character_of_green_v_win` has 50,815. Besides the two big children, the main theorem dominates some smaller nodes that both children reach, for example `theorem_A_closed_form_holds` (3,025) and `globalLatticeIndexTheorem_of_lengthBoundAtPlaces` (2,272).

## Notes

- The theorem is named after the theta inputs, but the branch `every_character_of_green_v_win` does not use them. They act only through `HypsAlt`, which the next chapter builds. This page does not show how `OneConst`, `StepAlpha` or `StepBeta` are used there.
- `UnitaryGroupThirdPlaceHypotheses` has about 60 fields and `ThetaLocalInputs` has 53 fields. Most are named after published theorems (for example `jacquetShalika`, `casselmanWallach`, `howeDualityReal`). This page uses only `greenRegularCharacters`, `nLink` and `litN` by name. It does not check that each field matches the published theorem of the same name. See [the literature inputs](/proof/literature/) for where these fields come from.
- This page does not unfold `CovolumeBoundOfX` past its first level. It says that for families in the class `FamHyp`, for small $\varepsilon$ and large parameters, a condition named `L3` holds.
- `RecTExists` says that for each number field $E$, each finite place $w$ and each choice of a place above $w$ in an algebraic closure, there is a map `rc` from irreducible representations of $\mathrm{GL}_n(E_w)$ to Weil-Deligne representations that satisfies the laws `LawsT` (compatibility with twists, duals, central characters, cuspidal support, and more). This page does not list all the laws.
- `TopShapeAlt`, `HypsAlt`, `DefiniteSideCondition`, `ChainTied` and `LinkN` are very long. This page names them and their role, and does not unfold their content.
- `ZeroFreeAll` has no exception at $s = 1$ for the trivial character modulo 1. `EveryCharacter` has this exception. This page does not check how the chain treats the point $s = 1$ for the trivial character.
- The site does not claim that the proof is correct. The Lean code states the results above. The [trust report](/trust/) says what has been checked.
