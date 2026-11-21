---
title: The window bound VWin
description: The branch under vwin_of_row. It turns the Galois row hypothesis into VWin, a bound on lengths of Tate-Shafarevich groups of twisted Q_l/Z_l over a family of abelian number fields.
lead: The Lean code proves VWin from the row hypothesis Row0b. VWin bounds a weighted sum of lengths of Tate-Shafarevich groups over fields cut out by a primitive character and two auxiliary primes. This page says what VWin states and how the 56,145 declarations below vwin_of_row are put together.
level: L1
status: draft
lean:
  - name: UpperTheory.One.vwin_of_row
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/VwinOfRow.lean
    line: 4
  - name: UpperTheory.Top.VWin
    file: Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean
    line: 49
  - name: UpperTheory.One.Join.automorphic_window_of_inputs
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean
    line: 71
  - name: UpperTheory.V.v_window_of_literal_automorphy_n
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean
    line: 33
  - name: UpperTheory.V.HV.DescentVanishingReductions.vwin_of_hypotheses_H_E_alt
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean
    line: 25
  - name: UpperTheory.V.HV.Core.of_four_alt
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/HVCore.lean
    line: 18
  - name: UpperTheory.V.HV.vwin_of_counts
    file: Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/JointWinOfCounts.lean
    line: 30
needs:
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: NN77VYSGXR
    text: Cyclotomic field
  - tag: 0ADTQBXRMC
    text: Jacobi symbol
  - tag: BT6T702C28
    text: p-adic number
  - tag: XSGB5K2KEG
    text: Cyclotomic character
  - tag: 9MPCZ3EAJM
    text: Galois cohomology
  - tag: BK9WBMF56G
    text: Tate-Shafarevich group
  - tag: CZSCNZH8VY
    text: Length of a module
  - tag: JQEYEQJY2G
    text: Galois representation
next:
  - text: The map of the trunk
    path: proof/trunk/
    sub: where this branch sits
  - text: The Galois row
    path: proof/galois-row/
    sub: the hypothesis Row0b
  - text: The literature statements
    path: proof/literature/
    sub: the named inputs
---
## Result

This chapter is one branch of the [trunk](/proof/trunk/). The theorem `everyCharacter_of_row` ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)) needs two things from the row hypothesis: a structure of literature statements, and the statement `VWin`. This branch gives `VWin`.

```lean
theorem UpperTheory.One.vwin_of_row (h : UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc) : UpperTheory.Top.VWin :=
  UpperTheory.One.Join.automorphic_window_of_inputs (UpperTheory.LiteratureTheorems.OpenImageCondition.mk h) UpperTheory.BaseChangeIdentities.baseChangeN h
```

In words: if the row hypothesis `Row0b` holds (for local parameters that satisfy `IsRecT`), then `VWin` holds. The [Galois row](/proof/galois-row/) chapter explains `Row0b`. The rest of this section says what `VWin` states.

Fix notation. A `PChar` $\psi$ is a primitive [[Dirichlet character|JR4QSEFXWF]] of some conductor $N_\psi$. For an odd prime $l$, a number field $E$ and an integer $e$, let $H^1$ be continuous Galois cohomology of the Galois group that the code calls `GS` (attached to the finite set $S$ of places of $E$ above $l$), with coefficients $\mathbb{Q}_l/\mathbb{Z}_l$ twisted by $\chi^{-e}$. Here $\chi$ is a character to $\mathbb{Z}_l^\times$ whose pullback to the absolute Galois group is the $l$-adic [[cyclotomic character|XSGB5K2KEG]]. The code takes the Tate-Shafarevich submodule `Sha D e` of this $H^1$ (classes that are locally trivial at the chosen places in $S$), and `shaLen D e` is its [[length|CZSCNZH8VY]] as a $\mathbb{Z}_l$-module, a value in $\mathbb{N} \cup \{\infty\}$. Write $\ell_l(E, e)$ for it.

The statement `VVle E t B` ([ExistsPageN.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L12)) says: for each choice of these data, $\ell_p(E, e) < \infty$ for each prime $p$ and $0 < e < t$, and for each finite set $S$ of primes

$$\sum_{l \in S} \log l \sum_{e=1}^{t-1} \ell_l(E, e) \le B .$$

The statement `IsChiField ψ e q d E` says that $E$ embeds in a [[cyclotomic field|NN77VYSGXR]] $\mathbb{Q}(\zeta_N)$ with $2^{e+2}, N_\psi, q, d \mid N$, as the fixed field of the classes $a \in (\mathbb{Z}/N)^\times$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$ and [[Jacobi symbols|0ADTQBXRMC]] $\left(\tfrac{a}{q}\right) = \left(\tfrac{a}{d}\right) = 1$.

The statement `WinPair ε Y q d` says: $q$ and $d$ are primes, $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$, $\tfrac12 Y^{\varepsilon/5} < \log q \le Y^{\varepsilon/5}$, $\tfrac12 Y^{\varepsilon/5}(\log Y)^2 < \log d \le Y^{\varepsilon/5}(\log Y)^2$, $q \mid d+1$, and each odd prime $p \le Y^{\varepsilon/5}$ divides $d+1$.

```lean
def VWinAt (ψ : PChar) (Ct : ℝ) : Prop :=
  ∀ eps : ℝ, 0 < eps → eps < 1 / 52 → ∀ e : ℝ → ℕ, (∀ x ≥ (1 : ℝ), PageN eps x (e x)) →
    ∃ J : ℝ, 1 ≤ J ∧ ∃ X0 : ℝ, ∀ X ≥ X0, ∀ q d : ℕ, WinPair eps (X ^ (1 / J)) q d →
      ∃ Y : ℝ, X ^ (1 / J) ≤ Y ∧ Y ^ (2 : ℝ) ≤ X ∧ ∀ x : ℝ, Y ≤ x → x ≤ Y ^ (2 : ℝ) → VAt ψ eps Ct q d (e x) x

def VWin : Prop := ∀ ψ : PChar, VWinAt ψ 401
```

So `VWin` states this. Let $\psi$ be a primitive character, let $0 < \varepsilon < \tfrac{1}{52}$, and let $e(x)$ be any integer function with $x^{2+8\varepsilon} \le 2^{e(x)} \le 2x^{2+8\varepsilon}$ for $x \ge 1$ (this is `PageN`). Then there are $J \ge 1$ and $X_0$ such that for each $X \ge X_0$ and each pair $(q, d)$ with `WinPair ε (X^{1/J}) q d`, there is $Y$ with $X^{1/J} \le Y \le X^{1/2}$ such that for every $x \in [Y, Y^2]$ and every field $E$ with `IsChiField ψ (e x) q d E`:

$$\sum_{l \in S} \log l \sum_{e=1}^{\lfloor x^{401} \rfloor - 1} \ell_l(E, e) \le \exp\!\left(\tfrac12 x^{\varepsilon}\right) \quad \text{for all finite sets } S \text{ of primes},$$

and each length in the sum is finite.

## Idea

The proof of `vwin_of_row` has two layers.

The top layer is bookkeeping. The row hypothesis is placed in a structure `OpenImageCondition`. A long list of named statements is then produced, each one by a theorem of the Lean code. The names refer to results in the literature (Bernstein-Zelevinsky, Jacquet-Shalika, Poitou-Tate, Serre-Tate and others). The statements are packed into the structure `LiteratureRankNHypothesis` and then into a larger structure `HypothesesH'`. The [literature](/proof/literature/) chapter is the place for those statements.

The lower layer is a counting argument. The code splits the length $\ell_l(E,e)$ into three parts: the prime $l = 2$, and for odd $l$ the $(-1)^e$ and $(-1)^{e+1}$ eigenspaces of complex conjugation (`shaLen_eq_add`). Each part gets its own bound (`ThmBab`, `ThmBcFree`, and `ThmHV`). The bound for the "plus" part comes from a case split. For a host datum (a character $\chi$, an exponent and two primes $q_1, d$) and a Dirichlet character $\psi$ of the host modulus, a prime $l$ falls in one of the cases I, II, III, IV, V or Z. Each case has a statement `CountI`, ..., `CountZ` that bounds a Selmer-type length polynomially in $l$, the modulus and $e$. The largest sub-branches of the tree prove these case bounds. They go through Galois representations of dimensions 2, 3 and 4: Kato-type vanishing for two-dimensional representations (case I), symplectic four-dimensional automorphy (cases II and III), unitary three-dimensional automorphy (case V), and a Hida-theory threshold statement.

## Before you read

- [[Dirichlet characters|JR4QSEFXWF]], primitive characters and conductors.
- [[Cyclotomic fields|NN77VYSGXR]] and their subfields as fixed fields of subgroups of $(\mathbb{Z}/N)^\times$.
- [[Jacobi symbol|0ADTQBXRMC]].
- [[p-adic numbers|BT6T702C28]] and the [[cyclotomic character|XSGB5K2KEG]].
- [[Galois cohomology|9MPCZ3EAJM]] and the [[Tate-Shafarevich group|BK9WBMF56G]].
- [[Length of a module|CZSCNZH8VY]].
- [[Galois representations|JQEYEQJY2G]], for the sub-branches.

## Plan

1. `vwin_of_row` wraps the row as `OpenImageCondition` and calls `automorphic_window_of_inputs` with a base change theorem.
2. `automorphic_window_of_inputs` builds the CM and abelian variety inputs and calls `v_window_of_depth_zero_residual_bc_cm`.
3. `v_window_of_depth_zero_residual_bc_cm` packs four groups of inputs into `LiteratureRankNHypothesis` and calls `v_window_of_literal_automorphy_n`.
4. `v_window_of_automorphy_csd_ss_mono_odd` extends this to `HypothesesH'` and calls `vwin_of_hypotheses_H_E_alt`.
5. `vwin_of_hypotheses_H_E_alt` proves `LemmaK` and the four counts `CountI`, `CountII`, `CountIII`, `CountV`.
6. `of_four_alt` adds `ThmBab`, `ThmBcFree` and `CountZ`, and calls `vwin_of_counts`.
7. `vwin_of_counts` combines all bounds into `JointWin 401` and then into `VWin`.

## The steps

### Step 1. The entry point

`vwin_of_row` uses the hypothesis $h$ twice. It builds `OpenImageCondition.mk h`, a structure with one field `galoisRepOfPolarizedPairLit : RowT` ([TemperedProductOfSquareIntegrable.lean#L207](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TemperedProductOfSquareIntegrable.lean#L207)). Here `RowT` is by definition `Row0b fun h rc => IsRecT h rc` ([WeakOfAtt.lean#L47](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/AutomorphyLifting/WeakOfAtt.lean#L47)), the same Prop as the type of $h$. It also passes $h$ as the argument `gal : RowT`.

The third input is `baseChangeN : BaseChangeIsobaricN` ([DefiniteNHolds.lean#L5](lean:Development/AutomorphicArithmetic/Foundations/BaseChangeIdentities/DefiniteNHolds.lean#L5)). It states: for a CM field $E$ such that $E$ over its maximal real subfield is unramified at all finite places, and for an automorphic representation $\pi$ of the unitary group in the sense of `IsAutRepU`, there is a base change datum `IsBaseChangeN` with isobaric pieces of sizes $N_1 + \dots + N_c = n$. This theorem is not in the dominator subtree of `vwin_of_row`. Other parts of the proof use it too.

`IsRecT h rc` says that a map `rc` from irreducible representations of $\mathrm{GL}_n$ of a local field to Weil-Deligne representations has a local Artin map $a$ and satisfies the list of laws `LawsT` ([IsRecTOfIsRec.lean#L55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55)): dimension, characters, the Langlands classification by segments, twists, central characters, duality, injectivity on "good" representations, depth and a type law. This page does not unfold these laws further.

### Step 2. CM and abelian variety inputs

```lean
theorem UpperTheory.One.Join.automorphic_window_of_inputs (O : OpenImageCondition)
 (bc : BaseChangeIsobaricN) (gal : RowT) : UpperTheory.Top.VWin :=
  v_window_of_depth_zero_residual_bc_cm O bc gal (cm_abelian_inputs_from_literature O)
```

The theorem `cm_abelian_inputs_from_literature` ([TopMainZj.lean#L59](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean#L59)) fills the 11 fields of `LiteratureCMHypothesis`. Their names are `GrothendieckDeformation`, `AbelianDeRham`, `AbelianDualCrystal`, `PeriodComparison`, `GaussManinPeriods`, `SerreTateGoodReductionSt`, `EllipticMainTheoremCM`, `HilbertClassFieldJ`, `SiegelKlingenDeligneRibet`, `PartialZetaFunctionalEquation` and `HeckeTateFunctionalEquation`. The names refer to results in the literature. Each field is given by a theorem of the Lean code. For example `elliptic_main_theorem_cm_of_open O` is defined as `PositivityTheory.Prw.ellipticMainTheoremCM_holds`, and it does not use `O`. The largest part of this sub-branch (489 declarations) is `UpperTheory.Lit.serreTateGoodReduction`. The whole sub-branch has 594 declarations.

### Step 3. The rank n package

```lean
theorem UpperTheory.One.Join.v_window_of_depth_zero_residual_bc_cm (O : OpenImageCondition)
 (bc : BaseChangeIsobaricN) (gal : RowT) (cm : LiteratureCMHypothesis) : UpperTheory.Top.VWin :=
  UpperTheory.V.v_window_of_literal_automorphy_n
    ⟨local_inputs_from_literature O, automorphic_inputs_from_literature O bc gal,
     galois_cohomology_from_literature O, cm⟩
```

`LiteratureRankNHypothesis` ([LitAut.lean#L59](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/LitAut.lean#L59)) has four fields. `loc : LitLocAlt` has 18 local statements on $\mathrm{GL}_n$ of a local field (Bernstein-Zelevinsky finiteness, Langlands classification, local converse theorem, depth zero induction and others). `aut : LiteratureAutomorphyHypothesis` has 15 global statements. Two of them are the inputs `bc` and `gal`. So the row enters the counting argument here, as the field `aut.gal`. `coh : LitCoh` has 12 statements on Galois cohomology (Poitou-Tate, local finiteness, local Tate duality, Euler characteristics, Greenberg-Wiles, Bloch-Kato). `cm` is Step 2. The three builder theorems are small (23, 20 and 13 declarations), because each field comes from a theorem that is proved elsewhere.

### Step 4. The extended hypotheses

```lean
theorem v_window_of_automorphy_csd_ss_mono_odd (hN : LiteratureRankNHypothesis) : VWin :=
  vwin_of_hypotheses_H_E_alt (published_hypotheses_from_patching_alt hN UpperTheory.V.Z.Tf.SR.descWeak)
```

`v_window_of_literal_automorphy_n` is equal to this theorem. `published_hypotheses_from_patching_alt` ([PublishedHypothesesFromPatching.lean#L98](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/PublishedHypothesesFromPatching.lean#L98)) builds `HypothesesH'`. This structure keeps `litN := hN` and adds fields for Clozel's conjectures on cohomology (`ClozelCohC`, `ClozelConjC`), Galois representations for totally real fields in rank 2, strong multiplicity one, quadratic base change, newforms, a descent statement `DescWeak`, cyclotomic statements and the existence of a definite quaternion algebra. Its dominator subtree has 3,579 declarations. The largest parts are `RankTwoDescent.descS` (1,534) and `clozelConjC` (787).

### Step 5. Lemma K and the four counts

```lean
theorem vwin_of_hypotheses_H_E_alt (hH : HypothesesH') : VWin :=
  have hK := lemmaK_litN_alt hH.litN
  have hE := ends0_alt hH
  have h4 := countII_and_countIII_of_printsH_of_sp4In hH hK (sp4In0_alt hH)
  of_four_alt hH.litN hK
    (count_i_of_printed_bound_k_kato_automorphy hH hK (katoTwoW_of_printsH hH)
      (automorphyUnramified_of_litN_of_gdEnd hH.litN hE.1))
    h4.1 h4.2 (count_v_of_printed_bound_k_reduced_unitary_lift hH hK hE.2)
```

This theorem is the main fork. Its dominator subtree has 48,252 declarations.

`LemmaK CK` ([LemmaK.lean#L13](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/GeneratorCountTuples/LemmaK.lean#L13)) states: for a prime $l$, a totally complex number field $L$ that contains a primitive root of unity of order $l$ (order 4 if $l = 2$), and $e \ge 1$, the group $H^2$ with coefficients $\mathbb{Z}_l$ twisted by $\chi^{e+1}$ is finite, and $\log \# H^2 \le \exp\!\big((2en)^{C_K} \log(2D)\big)$, where $n = [L:\mathbb{Q}]$ and $D = |\mathrm{disc}\, L|$.

The counts live on a `Host` ([DirichletPrimeToLPartMulLPowerPart.lean#L148](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/DirichletPrimeToLPartMulLPowerPart.lean#L148)): a primitive character $\chi$ of conductor $q$, an exponent $\mathrm{ex} \ge 2$ and primes $q_1 \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$ coprime to $q$. Its modulus is $N = \mathrm{lcm}(2^{\mathrm{ex}+2}, q)\, q_1 d$. The set `h.X c e` is the set of Dirichlet characters $\psi$ modulo $N$ that are trivial on a subgroup $H$ and satisfy $\psi(-1) = (-1)^e$. For such $\psi$ the code defines a length `Vlen` (a Tate-Shafarevich-type length for the twist $\psi^{-1}\chi^{-e}$ over $\mathbb{Q}$), and `VLe Ω c e ψ B` says that this length is finite and its normalized value times $\log l$ is at most $B$. Then ([Counts.lean#L60](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Counts.lean#L60)):

```lean
def CountShape (P : ∀ (h : Host) (l : ℕ) [Fact l.Prime] (c : Coef l) (_ : ℕ), DirichletCharacter c.O h.N → Prop) : Prop :=
  ∀ χ : PChar, ∃ C : ℕ, ∀ h : Host, h.chi = χ → ∀ t : ℕ, h.Big t →
    ∀ (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (l : ℕ) [Fact l.Prime] (c : Coef l) (e : ℕ),
      l ≠ 2 → 0 < e → e < t → ∀ ψ ∈ h.X c e, P h l c e ψ → VLe Ω c e ψ (((l : ℝ) * h.N * e) ^ C)
```

In words: for each $\chi$ there is an exponent $C$ such that, for each host with large enough primes, each odd prime $l$, each $0 < e < t$ and each $\psi$ in case $P$, the length is at most $(l N e)^C$. `CountII`, `CountIII` and `CountV` are this shape for the cases `CaseII`, `CaseIII` and `CaseV` (with $R_1 \le 2^{c_2(\psi)}$). `CountI` has a different shape: it bounds the sum $\sum_{l} \log l \sum_{\psi} V_n$ over primes $l$ in case I by $(N t)^C$. The cases are conditions on $l$, $e$ and $\psi$, such as $l - 1 \mid 2e$, $l$ in a finite bad set `Bchi χ`, or the parity of the order of $\psi$.

The inputs to the counts are statements on Galois representations.

- `KatoTwoW` ([KatoTwoW.lean#L10](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/KatoQuadraticCharacters/SphericalDecomposition/KatoTwoW.lean#L10)) states: if a two-dimensional representation $W$ of $G_\mathbb{Q}$, twisted by $\bar\chi^{-e}$, is attached to a newform of weight $2e+1$, and $W$ satisfies the side conditions `Used` and `WitAQ`, then the Bloch-Kato Selmer groups of two twists of $W$ vanish. It feeds `CountI`.
- `SymplecticFourImageDense` ([IsAut4.lean#L14](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/IsAut4.lean#L14)) states: for good raw data `D` in the case of $(h, e, \psi)$, the data is finite, has no "end", and all its irreducible pieces are automorphic four-dimensional representations in the sense of `IsAut4Alt`. It feeds `CountII` and `CountIII`.
- `ends0_alt` gives `GdEndAlt` and `ThmS6Core_s`. The second one feeds `CountV`. Under `ends0_alt` sits `UnitaryThreeAutomorphyDense` ([SymUse.lean#L27](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/SymUse.lean#L27)): for each bound $B$ there is $m \ge B$ with $m \equiv j \pmod{l-1}$ and an irreducible three-dimensional representation of $G_L$ with prescribed seed data. This page does not unfold `IsSeedAlt`, `Raw`, `Used` or `WitAQ`.

### Step 6. Adding the other bounds

```lean
theorem of_four_alt (hN : LiteratureRankNHypothesis) (hK : ∃ CK : ℝ, LemmaK CK)
    (h1 : CountI) (h2 : CountII) (h3 : CountIII) (h5 : CountV) : VWin := by
  obtain ⟨B, hB⟩ := Win.thmBab_of_lemmaK (pt_s hN) hN.coh.lfK hN.coh.ltK FW.ferreroWashington hK
  obtain ⟨CK, hL⟩ := hK
  exact vwin_of_counts (pt_s hN) hN.coh.lfK hN.coh.ltK hL (hB 401 (by norm_num))
    (Odd.thmBcFree_of (ML.iv (pt_s hN) hN.coh.uo)) h1 h2 h3 h5 (countZ X.propZ)
```

The proof gets three more facts. `ThmBab K 401` comes from Lemma K, Poitou-Tate, local finiteness, local Tate duality and a statement named `ferreroWashington`. It gives a window $Y$ in which the $l = 2$ part (`BaAt`) and the parts over cyclotomic layers (`BbAt`) are bounded by $\exp(x^{4\varepsilon/5})$. `ThmBcFree` ([PrimeSetBoundDataOfPrimitiveChar.lean#L64](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/PrimeSetBoundDataOfPrimitiveChar.lean#L64)) bounds the "minus" part `VVminusLe` for every CM field of the family. `CountZ` comes from `PropZ`, which says that the length is $0$ for the trivial character when $l \ge 5$, $e \ge 2$ is even and $l - 1 \mid 2e$.

### Step 7. From counts to VWin

```lean
theorem vwin_of_counts (hP : PoitouTateDuality) (hF : LocalFinitenessK) (hT : LocalTateDualityK) {CK : ℝ}
    (hK : LemmaK CK) {K : BConst} (hB : ThmBab K 401) (hc : ThmBcFree) (h1 : CountI) (h2 : CountII) (h3 : CountIII)
    (h5 : CountV) (hZ : CountZ) : VWin :=
  vwin_of_joint (jointWin_of_counts hP hF hT hK hB h1 h2 h3 h5 hZ) ((thmBc_iff (by norm_num)).2 hc)
```

The six counts give `PointHV` and then `ThmHV K 401`. This is a bound $((\mathrm{cond}\,E)\, t)^C + C \exp(x^{4\varepsilon/5})$ for the "plus" part `VVplusLe` over each CM field $E$ with `IsChiField`. `JointWin 401` puts the windows of `ThmBab` and `ThmHV` together. Then `vwin_of_joint` ([AdmissibleOfPageN.lean#L131](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean#L131)) fixes $\psi$, shows that a field with `IsChiField` is a CM field, adds the three parts with `vvle_of_parts`, and checks that the sum is at most $\exp(\tfrac12 x^\varepsilon)$ for $x$ large.

## Where it is in the code

Sizes are dominator subtree sizes: the number of declarations that only this declaration reaches from the root.

| Declaration | Module | Size |
|---|---|---|
| `UpperTheory.One.vwin_of_row` | [VwinOfRow.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/VwinOfRow.lean#L4) | 56,145 |
| `UpperTheory.One.Join.automorphic_window_of_inputs` | [TopMainZj.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean#L71) | 56,142 |
| `UpperTheory.One.Join.v_window_of_depth_zero_residual_bc_cm` | [TopMainZj.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean#L55) | 55,494 |
| `UpperTheory.V.v_window_of_literal_automorphy_n` | [WindowBoundOfLiteratureLevel.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean#L33) | 55,435 |
| `…DescentVanishingReductions.vwin_of_hypotheses_H_E_alt` | [WindowBoundOfLiteratureLevel.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean#L25) | 48,252 |
| `UpperTheory.V.Z.Kato.WeilSphericalRecords.katoTwoW_of_printsH` | [KatoTwoWOfPublishedH.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/KatoTwoWOfPublishedH.lean#L48) | 9,560 |
| `…DescentVanishingReductions.sp4In0_alt` | [Sp4In0.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/Sp4In0.lean#L18) | 6,409 |
| `UpperTheory.V.Z.Sym.W.unitary_three_automorphy_dense_of_prints` | [UnitaryThreeInputsOfLiterature.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/UnitaryThreeInputsOfLiterature.lean#L30) | 4,233 |
| `…DescentVanishingReductions.published_hypotheses_from_patching_alt` | [PublishedHypothesesFromPatching.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/PublishedHypothesesFromPatching.lean#L98) | 3,579 |
| `UpperTheory.V.ZK.lemmaK_litN_alt` | [KFinal.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/KFinal.lean#L11) | 2,843 |
| `UpperTheory.V.Z.Int.slopeAll` | [SlopeAll.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/IntegralDeterminants/SlopeAll.lean#L11) | 2,415 |
| `UpperTheory.V.Th.core_alt_bis` | [ThFinal.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/ThFinal.lean#L17) | 1,148 |
| `UpperTheory.V.HV.Core.of_four_alt` | [HVCore.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/HVCore.lean#L18) | 957 |
| `UpperTheory.One.Join.cm_abelian_inputs_from_literature` | [TopMainZj.lean](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean#L59) | 594 |

Some notes on the largest sub-branches:

- `katoTwoW_of_printsH` (9,560) proves `KatoTwoW`. It reads the row from `hH.litN.aut.gal` and uses `quadBC2`. Most of its size is `twoS` (9,180) and below it `Kato.Final.zetaUr` (8,227), with parts named after Kato's Euler system and Hecke projectors on newforms.
- `sp4In0_alt` (6,409) proves `SymplecticFourImageDense`. Its largest parts are `seedIIs_alt` (3,294) and `indCs` (2,035).
- `unitary_three_automorphy_dense_of_prints` (4,233) proves `UnitaryThreeAutomorphyDense`. It is reached through `ends0_alt` and `linkedUnlE_alt`.
- `lemmaK_litN_alt` (2,843) proves `∃ CK, LemmaK CK` from `LiteratureRankNHypothesis`. Its largest part is `bOdd` (1,794).
- `slopeAll` (2,415) proves `SlopeAll`: for a cuspidal polarized $\pi$ on a CM field with regular infinitesimal character given by a strictly decreasing $m$, the Satake parameters at each place have slopes in the range set by $m$. It is used by `intK` and `intP`. One path to it starts at `count_i_of_printed_bound_k_kato_automorphy`.
- `core_alt_bis` (1,148) proves `DenseThresholdMainCase`, a statement on ordinary points of a universal ordinary determinant ring in a Hida setting for $2 \le n \le 4$. It is reached through `linkedUnlE_alt`.

## Notes

- The field of `OpenImageCondition` is never read in this branch. A search for `galoisRepOfPolarizedPairLit` finds only its definition here, and one use for a different structure in `EveryCharacterOfLiteratureOfVWin.lean`. The `…_of_open O` theorems that this page looked at do not use `O`. The row reaches the counts only through the argument `gal`, which becomes `LiteratureAutomorphyHypothesis.gal`. This page has not checked every `…_of_open` theorem one by one.
- The names of the literature statements (`BernsteinZelevinskyFiniteness`, `PoitouTateDuality`, `ferreroWashington` and so on) refer to published results. This page does not check that the Lean statements match the published theorems. The [literature](/proof/literature/) chapter treats them.
- This page does not unfold `GS`, `Sha1`, `locFam`, `cycZ` or `ShaU`. The reading of `shaLen` as the length of a Tate-Shafarevich group of $\mathbb{Q}_l/\mathbb{Z}_l(-e)$ follows the names and the visible definitions, not a full unfolding.
- This page does not unfold the cases `CaseI` to `CaseV` past their definitions in `Host`, nor `Bchi`, `pK`, `hStar`, `pOne` and `ordC`, which enter `Host.Big`.
- This page does not explain why the constant is 401, why $\varepsilon < 1/52$, or why `PageN` uses the exponent $2 + 8\varepsilon$. The code fixes these values. The reasons belong to the part of the proof that uses `VWin`, under `every_character_of_literature_of_vWin`.
- The dominator sizes count declarations, not difficulty. Many small sub-branches (for example the three builders in Step 3) are small because their fields are proved in other parts of the tree.
