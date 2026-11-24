---
title: The window bound VWin
description: The branch under vwin_of_row. It turns the Galois row hypothesis into VWin, a bound on lengths of Tate-Shafarevich groups of twisted Q_l/Z_l over a family of abelian number fields.
lead: The Lean code proves VWin from the row hypothesis Row0b. VWin bounds a weighted sum of lengths of Tate-Shafarevich groups over fields cut out by a primitive character and two auxiliary primes. This page says what VWin states and how the 55,805 declarations below vwin_of_row are put together.
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
steps: [vwin-def, vwin-of-row, automorphic-window-of-inputs, v-window-of-depth-zero-residual-bc-cm, cm-abelian-inputs-from-literature, open-image-condition-def, base-change-n, base-change-isobaric-n-def]
---
## The statement VWin

The Lean code proves VWin from the row hypothesis Row0b. VWin bounds a weighted sum of lengths of Tate-Shafarevich groups over fields cut out by a primitive character and two auxiliary primes. The [trunk](/proof/trunk/) shows where the branch sits, and the step [The window bound VWin](/step/vwin-def/) gives the definition in the code.

Throughout, $\psi$ is a primitive [[Dirichlet character|JR4QSEFXWF]] of conductor $N_\psi$. For a prime $l$, $\chi_l$ is a character to $\mathbb{Z}_l^\times$ whose pullback to the absolute Galois group is the $l$-adic [[cyclotomic character|XSGB5K2KEG]], with values in the [[p-adic numbers|BT6T702C28]].

**Definition (Length of the Tate-Shafarevich group).** Let $E$ be a number field, $l$ a prime and $e$ an integer. Local data $D$ at $l$ fix an algebraic closure of $E$, a finite set $S$ of places above $l$ and a Galois group $G_S$. The [[Tate-Shafarevich group|BK9WBMF56G]] $Ш_D(e)$ is the submodule of locally trivial classes in the continuous [[Galois cohomology|9MPCZ3EAJM]] $H^1(G_S, \mathbb{Q}_l/\mathbb{Z}_l(-e))$, with coefficients twisted by $\chi_l^{-e}$. Its [[length|CZSCNZH8VY]] as a $\mathbb{Z}_l$-module is $\ell_l(E,e) \in \mathbb{N} \cup \{\infty\}$.

Lean: `Formalism.GaloisCohomology.shaLen`

**Definition (Length bound).** Let $t \in \mathbb{N}$ and $B \in \mathbb{R}$. We write $\ell(E) \le_t B$ if, for every choice of local data at all primes, $\ell_p(E,e) < \infty$ for each prime $p$ and $0 < e < t$, and for each finite set $S$ of primes

$$\sum_{l \in S} \log l \sum_{e=1}^{t-1} \ell_l(E,e) \le B .$$

Lean: `UpperTheory.Top.VVle`

**Definition (Character fields).** A number field $E$ is a $\psi$-field for $(e,q,d)$ if $E$ embeds in a [[cyclotomic field|NN77VYSGXR]] $\mathbb{Q}(\zeta_N)$ with $2^{e+2}, N_\psi, q, d \mid N$, as the fixed field of the classes $a \in (\mathbb{Z}/N)^\times$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$ and [[Jacobi symbols|0ADTQBXRMC]] $\left(\tfrac{a}{q}\right) = \left(\tfrac{a}{d}\right) = 1$.

Lean: `UpperTheory.Top.IsChiField`

**Definition (Window pairs).** Let $\varepsilon, Y > 0$. A pair $(q,d)$ is an $\varepsilon$-window pair at $Y$ if $q$ and $d$ are primes, $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$, $\tfrac12 Y^{\varepsilon/5} < \log q \le Y^{\varepsilon/5}$, $\tfrac12 Y^{\varepsilon/5}(\log Y)^2 < \log d \le Y^{\varepsilon/5}(\log Y)^2$, $q \mid d+1$, and each odd prime $p \le Y^{\varepsilon/5}$ divides $d+1$.

Lean: `UpperTheory.Top.WinPair`

**Definition (Page functions).** A function $e$ from $[1,\infty)$ to $\mathbb{N}$ is an $\varepsilon$-page function if $x^{2+8\varepsilon} \le 2^{e(x)} \le 2x^{2+8\varepsilon}$ for all $x \ge 1$.

Lean: `UpperTheory.Top.PageN`

**Definition (The window bound).** Let $C_t > 0$. The character $\psi$ satisfies the window bound with exponent $C_t$ if the following holds for every $0 < \varepsilon < \tfrac{1}{52}$ and every $\varepsilon$-page function $e$. There are $J \ge 1$ and $X_0$ such that for each $X \ge X_0$ and each $\varepsilon$-window pair $(q,d)$ at $X^{1/J}$, there is $Y$ with $X^{1/J} \le Y$ and $Y^2 \le X$ such that

$$\ell(E) \le_{\lfloor x^{C_t} \rfloor} \sqrt{\exp(x^{\varepsilon})}$$

for every $x \in [Y, Y^2]$ and every $\psi$-field $E$ for $(e(x), q, d)$. VWin says that every primitive character satisfies the window bound with exponent $401$.

Lean: `UpperTheory.Top.VWin`

**Remark (Formalization).** The definitions are in [ExistsPageN.lean#L12](lean:Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L12), which also proves `exists_pageN`: page functions exist for every $\varepsilon > 0$. This chapter does not unfold `GS`, `Sha1`, `locFam`, `cycZ` or `ShaU`, so the reading of `shaLen` follows the names. The code fixes $401$, $1/52$ and $2 + 8\varepsilon$. This chapter does not explain them; the reasons belong to the use of VWin.

## The entry point

The only hypothesis of the branch is the row hypothesis of the [Galois row](/proof/galois-row/) chapter. On the trunk a proved term supplies it, see [The Galois row holds](/step/galois-row-holds/). The code proves every other input. So the branch, as the trunk uses it, rests on no open assumption. The steps are [VWin from Row0b](/step/vwin-of-row/), [VWin from three inputs](/step/automorphic-window-of-inputs/) and [The CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/).

**Definition (Row hypothesis).** The row hypothesis is the statement [Row0b](/step/row0b-def/) with the local condition [IsRecT](/step/is-rect-def/). This condition says that a map from irreducible representations of $\mathrm{GL}_n$ of a local field to Weil-Deligne representations has a local Artin map and satisfies laws on dimension, characters, segments, twists, central characters, duality, injectivity, depth and type. This chapter does not unfold these laws.

Lean: `UpperTheory.V.Z.Win.RowT`

**Definition (Open image condition).** The open image condition is a structure with one field, a proof of the row hypothesis. See [The structure OpenImageCondition](/step/open-image-condition-def/).

Lean: `UpperTheory.LiteratureTheorems.OpenImageCondition`

**Theorem (Isobaric base change).** Let $E$ be a CM field that is unramified at all finite places over its maximal totally real subfield. Let $\pi$ be an automorphic representation of the unitary group. Then $\pi$ has a base change to $E$ whose isobaric pieces have sizes $N_1 + \dots + N_c = n$.

Lean: `UpperTheory.BaseChangeIdentities.baseChangeN`

*Proof.* The code proves it, see [Isobaric base change holds](/step/base-change-n/) and [The statement BaseChangeIsobaricN](/step/base-change-isobaric-n-def/). The result has the form of Labesse's CM base change. $\square$

**Proposition (CM and abelian variety inputs).** Given the open image condition, the eleven statements of the CM package hold. Among them are the Grothendieck deformation theorem, Serre-Tate good reduction, the main theorem of complex multiplication for elliptic curves, Siegel-Klingen and Deligne-Ribet, and the Hecke-Tate functional equation.

Lean: `UpperTheory.One.Join.cm_abelian_inputs_from_literature`

*Proof.* Each field is given by a proved theorem. Some of these theorems take the open image condition as an argument, but none reads it. The largest part is Serre-Tate good reduction. $\square$

**Theorem (VWin from the row).** If the row hypothesis holds, then VWin holds.

Lean: `UpperTheory.One.vwin_of_row`

*Proof.* Put the row hypothesis into the open image condition, and apply the next theorem to this condition, isobaric base change and the row hypothesis. $\square$

**Theorem (VWin from three inputs).** The open image condition, isobaric base change and the row hypothesis imply VWin.

Lean: `UpperTheory.One.Join.automorphic_window_of_inputs`

*Proof.* The proposition gives the CM package. The theorem on the rank $n$ inputs in Section 3 takes the three inputs and the CM package and gives VWin. $\square$

**Remark (Formalization).** `OpenImageCondition` has one field of type `RowT` ([TemperedProductOfSquareIntegrable.lean#L207](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TemperedProductOfSquareIntegrable.lean#L207)), and `RowT` is `Row0b fun h rc => IsRecT h rc` ([WeakOfAtt.lean#L47](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/AutomorphyLifting/WeakOfAtt.lean#L47)). We checked every `…_of_open` theorem in that file. None reads `O`, so the row reaches the counts only as the argument `gal`. `UpperTheory.Lit.serreTateGoodReduction` is 489 of the 594 declarations of the CM package ([TopMainZj.lean#L59](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TopMainZj.lean#L59)). On the trunk, `everyCharacter` supplies $h$ as `galoisLocalGlobalStrong_recParameter`, see [EveryCharacter from Row0b](/step/every-character-of-row/).

## The packages of literature statements

The branch collects many named statements into two packages. The names refer to published results. In this branch the code proves every one of them. This chapter does not check that the Lean statements match the published theorems; the [literature](/proof/literature/) chapter treats them. The step [VWin from the rank n inputs](/step/v-window-of-depth-zero-residual-bc-cm/) gives the Lean term.

**Definition (Rank $n$ package).** The rank $n$ package has four parts.

1. Eighteen local statements on $\mathrm{GL}_n$ of a local field, among them Bernstein-Zelevinsky finiteness, the Moy-Prasad isomorphism and the local converse theorem.
2. Fifteen global statements, among them the Jacquet-Shalika theorem, isobaric base change and the row hypothesis.
3. Twelve statements on Galois cohomology, among them Poitou-Tate duality, local finiteness, local Tate duality, unramified orthogonality and Bloch-Kato.
4. The CM package.

Lean: `GlobalTheory.Mem.LiteralAutomorphy.LiteratureRankNHypothesis`

**Theorem (VWin from the rank $n$ inputs).** The open image condition, isobaric base change, the row hypothesis and the CM package imply VWin.

Lean: `UpperTheory.One.Join.v_window_of_depth_zero_residual_bc_cm`

*Proof.* Three builders fill the first three parts of the rank $n$ package. Their fields are proved theorems that do not read the open image condition, except the given base change and the given row hypothesis in the global part. With the CM package this gives the rank $n$ package, and the theorem on the rank $n$ package below gives VWin. $\square$

**Definition (Extended package).** The extended package adds to the rank $n$ package statements named after Clozel's conjectures on cohomology, Borel injectivity, Galois representations in rank $2$ with quadratic base change, strong multiplicity one, base change, newforms, descent, cyclotomic fields and a definite quaternion algebra, and three more that this chapter does not unfold.

Lean: `UpperTheory.V.Af.HypothesesH'`

**Theorem (Extended package from the rank $n$ package).** The rank $n$ package and the descent statement give the extended package.

Lean: `UpperTheory.V.HV.DescentVanishingReductions.published_hypotheses_from_patching_alt`

*Proof.* The Lean proof keeps the rank $n$ package and fills the new fields from proved theorems. Its largest parts are a rank two descent theorem and Clozel's conjecture in the form of the code. We did not unfold them. $\square$

**Theorem (VWin from the rank $n$ package).** The rank $n$ package implies VWin.

Lean: `UpperTheory.V.v_window_of_literal_automorphy_n`

*Proof.* The descent statement is a proved theorem with no hypotheses. The previous theorem gives the extended package. The theorem on the extended package in Section 6 gives VWin. $\square$

**Remark (Formalization).** `LiteratureRankNHypothesis` ([LitAut.lean#L59](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/LitAut.lean#L59)) has the parts `loc`, `aut`, `coh` and `cm`. The row enters the counts as `aut.gal`. The descent statement is `UpperTheory.V.Z.Tf.SR.descWeak`. `HypothesesH'` extends `Hypotheses'` (`litN`, `cohC`, `conjC`, `borelC`, `galR`, `smoR`, `gkR`, `admR`, `bc`, `newform`) by `descU`, `cyc`, `cyc2`, `quat` and `ssR`.

## Splitting the length, Lemma K and two of the bounds

The proof splits $\ell_l(E,e)$ into three parts: the prime $l = 2$, and for odd $l$ the two eigenspaces of complex conjugation. This section proves the split, states Lemma K, and bounds the part at $2$ and the minus part.

**Definition (Plus and minus parts).** Let $E$ be a CM field and $l$ an odd prime. The plus and minus lengths $\ell^\pm_l(E,e)$ are the lengths of the $(-1)^e$- and $(-1)^{e+1}$-eigenspaces of complex conjugation on $Ш_D(e)$. The bounds $\ell^\pm(E) \le_t B$ are the length bound summed over odd primes only, and $\ell^{(2)}(E) \le_t B$ is the length bound for the prime $2$ alone.

Lean: `UpperTheory.V.VVplusLe`

**Lemma (Eigenspace splitting).** For $l \ne 2$, $\ell_l(E,e) = \ell^+_l(E,e) + \ell^-_l(E,e)$.

Lean: `UpperTheory.V.shaLen_eq_add`

*Proof.* The Lean proof applies a general lemma. Let $2$ be a unit in $R$, let $f$ be an involution of an $R$-module that preserves a submodule $N$, and let $s^2 = 1$. Then $x = \tfrac12(x + s f x) + \tfrac12(x - s f x)$ splits $N$ into the direct sum of $N \cap \ker(f - s)$ and $N \cap \ker(f + s)$, and length is additive. Over $\mathbb{Z}_l$ with $l$ odd, $2$ is a unit. Take $s = (-1)^e$. $\square$

**Proposition (Adding the parts).** Let $E$ be a CM field. If $\ell^{(2)}(E) \le_t B_2$, $\ell^-(E) \le_t B_-$ and $\ell^+(E) \le_t B_+$, then $\ell(E) \le_t B_2 \log 2 + B_- + B_+$.

Lean: `UpperTheory.V.vvle_of_parts`

*Proof.* Fix local data and a finite set $S$. The term $l = 2$ is at most $B_2 \log 2$. By the lemma each odd term is a plus term plus a minus term, and these sums are at most $B_+$ and $B_-$. $\square$

**Theorem (Lemma K).** There is $C_K > 0$ with the following property. Let $l$ be a prime and $L$ a totally complex number field that contains a primitive root of unity of order $l$, or of order $4$ if $l = 2$. Let $e \ge 1$, $n = [L:\mathbb{Q}]$ and $D = |\mathrm{disc}\, L|$. Then $H^2$ with coefficients $\mathbb{Z}_l$ twisted by $\chi_l^{e+1}$ is finite, and $\log \# H^2 \le \exp\big((2en)^{C_K} \log(2D)\big)$.

Lean: `UpperTheory.V.ZK.lemmaK_litN_alt`

*Proof.* The code proves it from the rank $n$ package. The largest part treats odd $l$. We did not unfold it. $\square$

**Definition (Abelian moduli).** An abelian modulus $M$ is a modulus $m$ with a subgroup $H \le (\mathbb{Z}/m)^\times$ of index $\deg M$, and $M_\psi = (N_\psi, \ker \psi)$. An $M$-field is defined like a $\psi$-field, with $a \in H$ in place of $\psi(a) = 1$. A prime pair for $m$ is a pair of primes $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$ with $\gcd(qd, m) = 1$. Functions $e, t$ are admitted with exponents $A_1, C_t$ if $2 \le e(x)$, $2^{e(x)} \le x^{A_1}$ and $2 \le t(x) \le x^{C_t}$ for $x \ge 2$.

Lean: `UpperTheory.V.IsCompField`

**Theorem (Bound at 2 and on cyclotomic layers).** There are functions $R_0$, $R_l$ on abelian moduli and $C_K > 0$ with the following property for every $C_t \ge 1$. Let $M$ be an abelian modulus, $B'$ a finite set of odd primes, and $L(l)$ for $l \in B'$ abelian moduli with $l \mid m_{L(l)}$ and $H_{L(l)} \equiv 1 \pmod l$. Put $R = R_0(M) + \sum_{l \in B'} R_l(L(l))$ and $J = 2^{R+2}(2 C_K C_t/\varepsilon)^R$. For $0 < \varepsilon < \tfrac{1}{52}$ and $A_1$ there is $X_0$ such that for admitted $e, t$, $X \ge X_0$ and a prime pair $(q,d)$ for $m$ with $\log(qd) \le X^{\varepsilon/(4J)}$, there is $Y$ with $X^{1/J} \le Y$ and $Y^2 \le X$, and for every $x \in [Y, Y^2]$:

1. $\ell^{(2)}(E) \le_{t(x)} \exp(x^{4\varepsilon/5})$ for every $M$-field $E$ for $(e(x), q, d)$;
2. for $l \in B'$, $L_0$ the field of $L(l)$ and $L_1 = L_0(\zeta_{l^k})$ with $[L_1:L_0] = l^{\lfloor \log_l R_l \rfloor + 3}$, the $l$-part of the length bound for $L_1$ at $t(x)$ holds with bound $\exp(x^{4\varepsilon/5})$.

Lean: `UpperTheory.V.Win.thmBab_of_lemmaK`

*Proof.* The Lean proof combines Lemma K with Poitou-Tate duality, local finiteness and local Tate duality from the rank $n$ package, and with the proved theorem of Ferrero and Washington that the Iwasawa invariant $\mu$ vanishes for abelian fields. It first builds a bound along cyclotomic towers. We did not unfold the rest. $\square$

**Theorem (Bound on the minus part).** There is $C$ with the following property. Let $M$ be an abelian modulus, $e, t \ge 2$, $(q,d)$ a prime pair for $m$, and $E$ a CM $M$-field for $(e,q,d)$. Put $o = \deg M$, $n = [E:\mathbb{Q}]$ and $N = \mathrm{cond}(E)$. Then $\ell^-(E) \le_t \beta$ with

$$\beta = 3 n t^2 \log(tN) + C \sum_{l \mid o,\ l \text{ odd}} l\, n^2 t^2 \log(tlN)^2 .$$

Lean: `UpperTheory.V.Odd.thmBcFree_of`

*Proof.* Poitou-Tate duality and unramified orthogonality give a bound on unramified classes. The Lean proof turns it into a bound at each prime and adds a Stickelberger-type term. We did not unfold these steps. $\square$

**Remark (Formalization).** The general lemma of the splitting is `length_eq_add_eigen`. The part at $2$ is `VVat 2`. `LemmaK CK` is in [LemmaK.lean#L13](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/GeneratorCountTuples/LemmaK.lean#L13). `ThmBcFree` is in [PrimeSetBoundDataOfPrimitiveChar.lean#L64](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/PrimeSetBoundDataOfPrimitiveChar.lean#L64). It covers `IsCompField M e q d E` for any $M$, a wider family than the $\psi$-fields.

## Hosts, cases and counts

The plus part is bounded through hosts. A host fixes a character, an exponent and two primes. For each character $\psi$ of the host modulus, each odd prime $l$ falls into one of the cases I to V or Z, and each case has a count. This section proves the plus bound from the counts.

**Definition (Hosts).** A host $h$ is a primitive character $\chi$ of conductor $q$, an exponent $\mathrm{ex} \ge 2$ and a prime pair $(q_1, d)$ for $q$. Its modulus is $N = \mathrm{lcm}(2^{\mathrm{ex}+2}, q)\, q_1 d$. Let $H$ be the group of $a \in (\mathbb{Z}/N)^\times$ with $a \equiv \pm 1 \pmod{2^{\mathrm{ex}+2}}$, $\chi(a) = 1$, and $a$ a square modulo $q_1$ and $d$. Then $X_h(e)$ is the set of Dirichlet characters $\psi$ modulo $N$, with values in a coefficient ring, that are trivial on $H$ and have $\psi(-1) = (-1)^e$. Let $p_K$ be the least prime $p \equiv 3 \pmod 4$ with $p \ge 7$ and $p \nmid q$, and $h^*$ the class number of $\mathbb{Q}(\sqrt{-p_K})$. The host is big for $t$ if $2t + 1$, $q$, $\mathrm{ord}\,\chi$, $p_K$, $h^*$ and a further number $p_1$ are less than $q_1$ and $d$.

Lean: `UpperTheory.V.HV.Host`

**Definition (Cases).** Let $B_\chi$ consist of $3$ and the odd prime factors of $\mathrm{ord}(\chi)\, q\, p_K\, h^*\, p_1$. Let $l$ be an odd prime, $e \ge 1$, $\psi \in X_h(e)$, and $\psi'$ the component of $\psi$ that the code attaches to $l$.

1. Case I: $l \notin B_\chi$ and $l - 1 \nmid 2e$.
2. Case Z: $l \notin B_\chi$, $l - 1 \mid 2e$ and $\psi = 1$.
3. Case II: $e \ge 2$, $\psi'$ has even order, and $l \in B_\chi$ or $l - 1 \mid 2e$.
4. Case III: $l \notin B_\chi$, $l - 1 \mid 2e$, and $\psi \ne 1$ has odd order.
5. Case IV: $l \in B_\chi$, $e \ge 2$ and $\psi'$ has odd order.
6. Case V: $l \in B_\chi$ and $e = 1$.

Lean: `UpperTheory.V.HV.Host.CaseII`

**Definition (Host lengths and counts).** For $\psi \in X_h(e)$ the code defines a length $V_l(\psi, e) \in \mathbb{N} \cup \{\infty\}$ with a normalized value $V^\circ_l(\psi,e)$. We write $V_l(\psi,e) \le B$ if the length is finite and $V^\circ_l(\psi,e) \log l \le B$. The count for a case $P$ says: for each $\chi$ there is $C$ such that $V_l(\psi,e) \le (lNe)^C$ for every host with character $\chi$ that is big for $t$, every odd prime $l$, every $0 < e < t$ and every $\psi \in X_h(e)$ in case $P$.

Lean: `UpperTheory.V.HV.CountShape`

**Definition (The counts).** Counts II, III and Z are the counts for cases II, III and Z. Let $R_1 = 16\, o\, (lq)^2\, 4^{n_0}$ with $o = \mathrm{ord}\,\chi$. Count V is the count for case V with $R_1 \le 2^{c_2(\psi)}$, and Count V$_s$ the count for the rest of case V. Count I says that for each $\chi$ there are $C$ and primes $r_1, r_2$ such that, for hosts big for $t$ with $r_1, r_2 < q_1, d$, the weighted sum of the lengths in case I over $0 < e < t$ is finite and at most $(Nt)^C$. Count IV says that for $l \in B_\chi$ and $j$ there is $C$ such that, if the $l$-part of the length bound with bound $B$ holds on the layers of degree $l^j$ over $\mathbb{Q}(\zeta_{lq})$, then the lengths in case IV at $l$ sum to at most $B + (Nt)^C$.

Lean: `UpperTheory.V.HV.CountI`

**Proposition (Count Z).** Let $l \ge 5$, let $e \ge 2$ be even, and let $l - 1 \mid 2e$. Then the host length for the trivial character is $0$. Hence Count Z holds.

Lean: `UpperTheory.V.HV.countZ`

*Proof.* The code proves the vanishing, with one lemma for $l - 1 \mid e$ and one for the other case. For the count take $C = 0$. In case Z, $l \notin B_\chi \ni 3$, so $l \ge 5$, and $\psi = 1 \in X_h(e)$ forces $e$ to be even. So the length is $0 \le (lNe)^0$. $\square$

**Proposition (Count IV).** Count IV holds.

Lean: `UpperTheory.V.HV.countIV`

*Proof.* The code proves it with no hypotheses. We did not unfold it. $\square$

**Proposition (Count V$_s$).** Poitou-Tate duality, local finiteness, local Tate duality and Lemma K give Count V$_s$.

Lean: `UpperTheory.V.HV.countVs`

*Proof.* The Lean proof fixes $n_0$ from $o$, $q$ and $\max B_\chi$, replaces $C_K$ by $\lceil C_K \rceil$, and bounds the lengths through Lemma K. We did not unfold the rest. $\square$

**Theorem (Plus part from the counts).** Assume Poitou-Tate duality, local finiteness, local Tate duality, Lemma K and Counts I, II, III, V and Z. Let $\chi$ be a primitive character and $j$ a function on primes. There are $C$ and primes $r_1, r_2$ such that the following holds for each host $h$ with character $\chi$ and $r_1, r_2 < q_1, d$ that is big for some $t \ge 2$. If $B \ge 0$ bounds the $l$-part of the length on the layers of degree $l^{j(l)}$ for each $l \in B_\chi$, then every CM $\chi$-field $E$ for $(\mathrm{ex}, q_1, d)$ has $\ell^+(E) \le_t (Nt)^C + CB$.

Lean: `UpperTheory.V.HV.pointHV_of_counts`

*Proof.* The Lean proof combines two partial bounds. Inside $B_\chi$, Counts II, V, V$_s$ and IV bound the plus part at each $l$ by $(Nt)^C + CB$. Outside $B_\chi$, Counts I, Z, II and III bound it by $(Nt)^C$. Count V$_s$ comes from the previous proposition, and Count IV is proved. $\square$

**Remark (Formalization).** `Host` is in [DirichletPrimeToLPartMulLPowerPart.lean#L148](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/DirichletPrimeToLPartMulLPowerPart.lean#L148), and the counts in [Counts.lean#L60](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Counts.lean#L60). The host length is `Vlen`, defined through `Chr.V'`. We did not unfold `Chr.V'`, so we do not say which twist it measures. We also did not unfold the cases, `Bchi`, `pOne`, `chiP`, `c2` or `n0`.

## Galois representations and the counts I, II, III and V

The counts I, II, III and V come from statements on [[Galois representations|JQEYEQJY2G]] of dimensions $2$, $4$ and $3$. The largest sub-branches of the tree prove them. This section states them in short form and does not unfold their side conditions.

**Theorem (Vanishing for two-dimensional representations).** Let $W$ be a two-dimensional representation of $G_\mathbb{Q}$ that satisfies the side conditions of the code, with a newform of weight $2e+1$ attached to $W$ twisted by $\bar\chi^{-e}$. Then the Bloch-Kato Selmer groups of $W \otimes 1$ and of a second twist $W \otimes \theta$ vanish. The extended package implies this.

Lean: `UpperTheory.V.Z.Kato.WeilSphericalRecords.katoTwoW_of_printsH`

*Proof.* The Lean proof reads the row hypothesis from the package and uses quadratic base change. Most of it is built from parts named after Kato's Euler system. We did not unfold it. The statement has the form of Kato's theorem for modular forms. $\square$

**Theorem (Symplectic four-dimensional automorphy).** Let $h$ be a host big for $t$, $l$ an odd prime, $0 < e < t$ and $\psi \in X_h(e)$. Let $D$ be good raw data in the case of $(h,e,\psi)$. Then $D$ is finite and has no end, and all irreducible pieces of $D$ are automorphic four-dimensional representations in the sense of the code. The extended package implies this.

Lean: `UpperTheory.V.HV.DescentVanishingReductions.sp4In0_alt`

*Proof.* The code derives it from the extended package. We did not unfold it. $\square$

**Theorem (Unitary three-dimensional automorphy).** Let $L$ be a CM field with data that satisfy the field pair conditions of the code, and let $2l \mid M \ne 0$. Then for every $B$ there are $m \ge B$ with $m \equiv j \pmod{l-1}$ and an irreducible representation of $G_L$ to $\mathrm{GL}_3$ with open image, the seed data of the code and weights $(m, 0, -m)$. The extended package implies this.

Lean: `UpperTheory.V.Z.Sym.W.unitary_three_automorphy_dense_of_prints`

*Proof.* The code derives it from the extended package. We did not unfold it. $\square$

**Theorem (End statements).** The extended package gives an end statement for Galois data and a core statement on host frames: the weight part is finite and point homomorphisms of type I are automorphic.

Lean: `UpperTheory.V.Z.Win.Dn.ends0_alt`

*Proof.* The Lean proof reaches unitary three-dimensional automorphy through a linking statement and a seed statement. It also uses a statement of Hida theory on ordinary points. We did not unfold it. $\square$

**Theorem (VWin from the extended package).** The extended package implies VWin.

Lean: `UpperTheory.V.HV.DescentVanishingReductions.vwin_of_hypotheses_H_E_alt`

*Proof.* Lemma K comes from the rank $n$ part. Each count comes from the package and Lemma K, with one more input: symplectic four-dimensional automorphy for Counts II and III, the two-dimensional vanishing and the end statement for Count I, and the core statement for Count V. The theorem on the four counts in Section 7 gives VWin. $\square$

**Remark (Formalization).** This chapter does not unfold `Raw`, `IsAut4Alt` or `IsSeedAlt`. Dominator sizes: `vwin_of_hypotheses_H_E_alt` 48,127; `katoTwoW_of_printsH` 9,555; `sp4In0_alt` 7,295; `unitary_three_automorphy_dense_of_prints` 4,238. Counts I, II and III, and V come from `count_i_of_printed_bound_k_kato_automorphy`, `countII_and_countIII_of_printsH_of_sp4In` and `count_v_of_printed_bound_k_reduced_unitary_lift`.

## Assembly

This section puts the bounds together: the plus bound in windows, the joint window, and the sum of the three parts.

**Theorem (Plus part in windows).** Assume the inputs of the plus part from the counts, fix the constants of the bound at $2$, and let $C_t > 0$. For each $\psi$ there are $C$ and primes $r_1, r_2$ with the following property. Take the setting of the bound at $2$ with $M = M_\psi$, $B' = B_\psi$ and $L(l) = (l N_\psi, 1)$, and prime pairs $(q,d)$ for $N_\psi$ with $q$ and $d$ larger than $2X^{C_t} + 1$, $N_\psi$, $\mathrm{ord}\,\psi$, $p_K$, $h^*$, $p_1$, $r_1$ and $r_2$. Then for every window $Y$, every $x \in [Y, Y^2]$ and every CM $\psi$-field $E$ for $(e(x), q, d)$,

$$\ell^+(E) \le_{t(x)} \big(\mathrm{cond}(E)\, t(x)\big)^C + C \exp(x^{4\varepsilon/5}).$$

Lean: `UpperTheory.V.HV.thmHV_of_counts`

*Proof.* The Lean proof applies a general step, which we did not unfold, that turns the plus bound from the counts into a bound in the windows of the bound at $2$. $\square$

**Theorem (Joint window).** Assume the inputs of the previous theorem and the bound at $2$ with $C_t = 401$. For each $\psi$, $\varepsilon$, $A_1$ and admitted $e, t$ there are $J > 0$ and $C$, $P$, $X_0$ such that the following holds for $X \ge X_0$ and each prime pair $(q,d)$ for $N_\psi$ with $q, d > \max(2X^{401} + 1, P)$ and $\log(qd) \le X^{\varepsilon/(4J)}$. There is $Y$ with $X^{1/J} \le Y$ and $Y^2 \le X$ such that, for every $x \in [Y, Y^2]$, part 1 of the bound at $2$ and the plus bound of the previous theorem hold.

Lean: `UpperTheory.V.HV.jointWin_of_counts`

*Proof.* The Lean proof applies a general step, which we did not unfold, to the bound at $2$ and the previous theorem. $\square$

**Theorem (From the joint window to VWin).** Assume the joint window and the bound on the minus part for admitted functions, both with exponent $401$. Then VWin holds.

Lean: `UpperTheory.V.vwin_of_joint`

*Proof.* Fix $\psi$, $\varepsilon$ and an $\varepsilon$-page function $e$, and put $t(x) = \lfloor x^{401} \rfloor$. Since $\varepsilon < \tfrac{1}{52}$, $e$ and $t$ are admitted with $A_1 = 4$. Take $J, C, P, X_0$ from the joint window, with $J$ replaced by $\max(J,1)$ and $P$ by $\max(P, N_\psi)$. Let $(q,d)$ be a window pair at $X^{1/J}$ with $X$ large. The size of $\log q$ and $\log d$ makes $(q,d)$ a prime pair with $q, d > \max(2X^{401} + 1, P)$ and $\log(qd) \le X^{\varepsilon/(4J)}$. A $\psi$-field $E$ for $(e(x), q, d)$ is a CM field, since $q \equiv 3 \pmod 4$. It is an $M_\psi$-field, and the page condition bounds its conductor. Adding the parts bounds the length by $\exp(x^{4\varepsilon/5}) \log 2 + \beta + (\mathrm{cond}(E) t)^C + C\exp(x^{4\varepsilon/5})$. The logarithms of $\beta$ and $(\mathrm{cond}(E) t)^C$ are $O(x^{\varepsilon/5}(\log x)^2)$, and $x^{4\varepsilon/5}$ is small against $\tfrac12 x^{\varepsilon}$. So for large $x$ the sum is at most $\sqrt{\exp(x^\varepsilon)}$. $\square$

**Theorem (VWin from the counts).** Poitou-Tate duality, local finiteness, local Tate duality, Lemma K, the bound at $2$ with $C_t = 401$, the bound on the minus part and Counts I, II, III, V and Z imply VWin.

Lean: `UpperTheory.V.HV.vwin_of_counts`

*Proof.* The joint window theorem gives the joint window. For $C_t \ge 1$ the minus bound for fixed $e, t \ge 2$ is equivalent to the minus bound for admitted functions. The previous theorem gives VWin. $\square$

**Theorem (VWin from the four counts).** The rank $n$ package, Lemma K and Counts I, II, III and V imply VWin.

Lean: `UpperTheory.V.HV.Core.of_four_alt`

*Proof.* Poitou-Tate duality comes from its normalized form in the cohomology part. The bound at $2$ comes from Lemma K, the cohomology part and the theorem of Ferrero and Washington. The minus bound comes from Poitou-Tate duality and unramified orthogonality. Count Z comes from the vanishing of Section 5. The previous theorem gives VWin. $\square$

**Remark (Formalization).** `thmBc_iff` gives the equivalence for the minus part. `vwin_of_counts` is in [JointWinOfCounts.lean#L30](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/JointWinOfCounts.lean#L30), `vwin_of_joint` in [AdmissibleOfPageN.lean#L131](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean#L131) and `of_four_alt` in [HVCore.lean#L18](lean:Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/HVCore.lean#L18). Dominator sizes: `vwin_of_row` 55,805, `v_window_of_literal_automorphy_n` 55,095, `of_four_alt` 957. They count declarations, not difficulty.

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked.

The names of the literature statements refer to published results. This chapter does not check that the Lean statements match them; the [literature](/proof/literature/) chapter and `links/literature.yaml` treat them. There the open image condition is cited to Chenevier-Harris, Shin, Caraiani and Barnet-Lamb, Gee, Geraghty and Taylor.

- T. Barnet-Lamb, T. Gee, D. Geraghty and R. Taylor, *Potential automorphy and change of weight*, Ann. of Math. 179 (2014), pages 501 to 609.
- S. Bloch and K. Kato, *L-functions and Tamagawa numbers of motives*, in The Grothendieck Festschrift I, Progr. Math. 86, Birkhäuser, 1990, pages 333 to 400.
- A. Caraiani, *Local-global compatibility and the action of monodromy on nearby cycles*, Duke Math. J. 161 (2012), pages 2311 to 2413.
- G. Chenevier and M. Harris, *Construction of automorphic Galois representations II*, Camb. J. Math. 1 (2013), pages 53 to 73.
- L. Clozel, *Motifs et formes automorphes: applications du principe de fonctorialité*, Perspect. Math. 10 (1990), pages 77 to 159.
- B. Ferrero and L. C. Washington, *The Iwasawa invariant μ_p vanishes for abelian number fields*, Ann. of Math. (2) 109 (1979), pages 377 to 395.
- K. Kato, *p-adic Hodge theory and values of zeta functions of modular forms*, Astérisque 295 (2004), pages 117 to 290.
- J.-P. Labesse, *Changement de base CM et séries discrètes*, in On the Stabilization of the Trace Formula, International Press, 2011, pages 429 to 470.
- J.-P. Serre and J. Tate, *Good reduction of abelian varieties*, Ann. of Math. 88 (1968), pages 492 to 517.
- S. W. Shin, *Galois representations arising from some compact Shimura varieties*, Ann. of Math. 173 (2011), pages 1645 to 1741.
