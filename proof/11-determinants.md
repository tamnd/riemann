---
title: Block determinants and theta Parseval
description: The part of the theta lift branch that proves the lift is not zero. It uses a Rallis inner product identity, a main term that is larger than a tail, and highest weight vectors made of leading minors. The page also says which ideas of the timeline (the Stepanov determinant, W(1_S) at least 0, iterated lifts) have no counterpart in the Lean code.
lead: The timeline has a Stepanov determinant and a positivity proof through a determinant. The Lean code does not contain them. This page shows what the code has in their place, in the proof that a theta lift is not zero.
level: L1
status: draft
lean:
  - name: UpperTheory.TP.K.tLiftK
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TLiftK.lean
    line: 4
  - name: UpperTheory.TP.tLift_holds_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGHolds.lean
    line: 58
  - name: UpperTheory.TP.tools_holds_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGHolds.lean
    line: 39
  - name: UpperTheory.TP.tLift_of_tools_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGTop.lean
    line: 46
  - name: UpperTheory.TP.Tools_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 27
  - name: UpperTheory.TP.tLift_of_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 141
  - name: UpperTheory.TP.Rallis_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 61
  - name: UpperTheory.TP.rallis_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRallis.lean
    line: 99
  - name: UpperTheory.TP.NonVan_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 114
  - name: UpperTheory.TP.nonVan_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGNonVan.lean
    line: 26
  - name: UpperTheory.TP.AbsNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean
    line: 183
  - name: UpperTheory.TP.absNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/AbsNe.lean
    line: 5
  - name: UpperTheory.TP.realPair_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRealPair.lean
    line: 29
  - name: UpperTheory.TP.RP.joint
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/RightSub.lean
    line: 32
  - name: UpperTheory.TP.RP.jointNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/JointNe.lean
    line: 13
  - name: Formalism.GradedWeylDivisibility.hw
    file: Formalism/GradedWeylDivisibility/StatementA.lean
    line: 63
  - name: UpperTheory.TP.projEx
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ProjEx.lean
    line: 98
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
  - tag: 68SJQEC11F
    text: Automorphic form
  - tag: 9AZ164C298
    text: Cuspidal representation
  - tag: 3NZBZXYWAJ
    text: Eisenstein series
  - tag: GE020MY43M
    text: Schwartz space
next:
  - text: The Galois row
    path: proof/galois-row/
    sub: the parent branch, and the statement TLiftK
  - text: The theta matching
    path: proof/theta-matching/
    sub: where the Levi determinants of the code are used
  - text: The Weil bound and arithmetic positivity
    path: proof/weil-bound/
    sub: timeline step 4 and positivity
steps: []
---

## The theta lift and its inputs

This chapter follows the proof that a theta lift from a definite unitary group $U(X)$ to a unitary group $U(W)$ is not zero. Section 2 builds a test vector from leading principal minors. Section 3 proves one direction of the Rallis inner product formula. Section 4 splits an integral into a main term and a smaller tail. Section 5 takes one irreducible constituent of the lift, Section 6 assembles the existence theorem, and Section 7 compares the branch with the [timeline](/proof/timeline/). The parent branch is [the Galois row](/proof/galois-row/).

The timeline has a Stepanov determinant and a positivity proof through a determinant. The Lean code does not contain them. The word "Stepanov" does not occur in the Lean source. This branch has no auxiliary polynomial with a zero of high order, no Wronskian and no quantity $W(1_S)$. In place of "a determinant that is not zero", the code proves "a main term is larger than a tail". Determinants of matrices enter in one place only: the highest weight vector of Section 2.

Every input of this branch is proved in the code. The final theorem takes no hypothesis, and each tool is a proved theorem. No input reads a field of the structure of open literature statements. No person has reviewed the Lean code, and this chapter does not claim that the statements are the intended ones.

Throughout, $E$ is a CM field with maximal real subfield $F$ and complex conjugation $c$. A base $B$ fixes an additive character of $\mathbb{A}_F$, an embedding of $E$ into $\mathbb{C}$ at each infinite place $w$ of $F$, and some finite places. $X$ is a [[hermitian|8NJ7XY6F1S]] space of rank $n \ge 1$ over $E$ with Gram matrix $1$, definite at every infinite place. $W$ is a skew-hermitian space of rank $d$ with Gram matrix $\delta \cdot 1$. Put $G = U(X)(\mathbb{A}_F)$, $G' = U(W)(\mathbb{A}_F)$ and $\Gamma = U(X)(F)$. These are [[unitary groups|0R9R0Y1HDK]] over the [[adele ring|NYJFYZ0B4M]]. A model of the dual pair fixes a Haar measure $\mu$ on $G$, a fundamental domain $\mathcal{D}$ for $\Gamma$ in $G$, the [[Weil representation|H3Q2703KKV]] $\omega$ of $G \times G'$ on a [[Schwartz space|GE020MY43M]] of functions on $n \times d$ matrices, and the theta kernel $\theta(g, h; \Phi)$ of the [[theta correspondence|6WB6TKE70H]].

**Definition (Theta lift and matrix coefficients).** Let $\Phi$ be a Schwartz function and $\varphi$ a function on $G$. The theta lift of $\varphi$ is the function on $G'$

$$\theta(\Phi, \varphi)(h) = \int_{\mathcal{D}} \theta(g, h; \Phi)\, \overline{\varphi(g)}\, d\mu(g).$$

The matrix coefficient of $\varphi$ is $m_\varphi(g) = \int_{\mathcal{D}} \varphi(yg)\, \overline{\varphi(y)}\, d\mu(y)$. For a Haar measure $\nu$ on $n \times d$ matrices, the Weil coefficient is $c_\Phi(g) = \int (\omega(g, 1)\Phi)(u)\, \overline{\Phi(u)}\, d\nu(u)$.

Lean: `UpperTheory.TP.lift`

**Definition (The theta lift statement).** For $E$, $B$, $n$ and $X$ as above, there is $d_0$ with this property. Let $d \ge d_0$ and $W$ as above. Let $\chi_X, \chi_W$ be Hecke characters of $\mathbb{A}_E^\times$ whose restrictions to $\mathbb{A}_F^\times$ are $\eta^n$ and $\eta^d$, with infinity types $m_X, m_W$. Let $U$ be an irreducible automorphic representation of $U_n(\mathbb{A}_E)$ with dominant weight $\lambda_w$ at each infinite place $w$, with $d + m_W(w) \le 2\lambda_{w,k}$ for all $k$. Then there is an irreducible automorphic representation $U'$ of $U_d(\mathbb{A}_E)$ with weight $\lambda'_w$ at each $w$, where

$$2\lambda'_{w,k} = 2\lambda_{w,k} - d - m_W(w) + n + m_X(w) \quad (k \le n), \qquad 2\lambda'_{w,k} = n + m_X(w) \quad (k > n),$$

and at each split place a nonzero intertwining map pairs the local components of $U$ and $U'$.

Lean: `UpperTheory.TP.TLiftK`

The step [The theta lift statement TLiftK](/step/tlift-k-def/) unfolds every condition of this definition.

**Definition (The tools).** The tools are fourteen statements about the dual pair. They include a Siegel-Weil formula on the doubled group, the doubling identity, compactness of the quotients, an unfolding statement, the existence of a model with its Weil representation, and statements on the Lie algebra action at the real places.

Lean: `UpperTheory.TP.Tools_k`

**Theorem (The tools hold).** The fourteen statements of the tools hold.

Lean: `UpperTheory.TP.tools_holds_k`

*Proof.* The Lean proof fills each field with a proved theorem. The Siegel-Weil field comes from a Siegel-Weil formula for anisotropic data and the continuation of the Siegel [[Eisenstein series|3NZBZXYWAJ]]. The compactness field comes from Siegel sets for unitary groups. We did not unfold these proofs. $\square$

**Remark (Formalization).** The definitions are in [SchurStep.lean#L22](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L22) (`lift`, `mc`) and [GalTPDefs.lean#L27](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L27) (`Tools_k`). The Weil coefficient is `GlobalTheory.ThK.Dbl.coef`. The fields of `Tools_k` are `swFull`, `boxSec`, `dbl`, `stab2`, `cpt`, `basic`, `polSch`, `unfold0`, `pairEx`, `split`, `vacFix`, `acts`, `lie1` and `lie2`. The Siegel set input `UpperTheory.Lit.siegelSetUnitary_of_core` has a namespace that suggests literature, but it is a proved term with no hypothesis. On the full spine, `UpperTheory.TP.K.tLiftK` dominates 2,709 declarations, `tools_holds_k` 2,169 and `tLift_of_tools_k` 503. [The Galois row](/proof/galois-row/) gives older sizes (5,201 and 2,998).

## Test vectors made of leading minors

This is the only place in the branch where determinants of matrices appear. The aim is a polynomial test vector $f_0$ at infinity whose types match a form $\varphi \in U$ and the expected weight $\lambda'$. The vector is a product of powers of leading principal minors. For the background see [matrices](/learn/algebra/#matrices), [highest weights and branching](/learn/representations/#highest-weights-and-branching) and [the Fock model](/learn/theta/#the-fock-model).

**Definition (Leading minors and the highest weight vector).** Let $n \le d$ and let $x$ be a $d \times n$ matrix of variables. For $1 \le s \le n$ let $\Delta_s$ be its leading principal $s \times s$ minor. For $\nu \in \mathbb{N}^n$ put $\nu_{n+1} = 0$ and

$$\mathrm{hw}_\nu = \prod_{s=1}^{n} \Delta_s^{\,\max(\nu_s - \nu_{s+1},\, 0)}.$$

When $\nu_1 \ge \dots \ge \nu_n$, this is the classical highest weight vector of weight $\nu$ for $\mathrm{GL}_n$.

Lean: `Formalism.GradedWeylDivisibility.hw`

Let $P_{n,d}$ be the Fock space of polynomials in an $n \times d$ matrix $y$ of variables. For $c \in \mathbb{Z}$, $g \in \mathrm{GL}_n(\mathbb{C})$ and $h \in \mathrm{GL}_d(\mathbb{C})$ put $(\alpha_c(g) f)(y) = \det(g)^c f(g^{T} y)$ and $(\beta_c(h) f)(y) = \det(h)^c f(y h)$.

**Definition (The joint vector).** For $\mu \in \mathbb{N}^n$, $\mathrm{joint}(\mu) \in P_{n,d}$ is $\mathrm{hw}_\mu$ with $x_{ji}$ replaced by $y_{ij}$.

Lean: `UpperTheory.TP.RP.joint`

**Lemma (The joint vector is not zero).** For every nonincreasing $\mu \in \mathbb{N}^n$, $\mathrm{joint}(\mu) \ne 0$.

Lean: `UpperTheory.TP.RP.jointNe`

*Proof.* The substitution $x_{ji} \mapsto y_{ij}$ is a bijection of the variables, so it is injective on polynomials. Each $\Delta_s$ is not zero, because its monomial $x_{11} \cdots x_{ss}$ has coefficient $1$. So the product $\mathrm{hw}_\mu$ is not zero. The Lean proof uses the proved theorem that $\mathrm{hw}_\nu \ne 0$ over every nontrivial commutative ring, for all $\nu$. $\square$

**Lemma (Equivariant maps that hit the joint vector).** Let $n \le d$, $c \in \mathbb{Z}$ and $\mu \in \mathbb{N}^n$.

1. If $\lambda$ is a dominant weight of $\mathrm{GL}_n$ with $\lambda_k = \mu_k + c$ for all $k$, there is a map from the irreducible representation $\pi_\lambda$ to $P_{n,d}$ that intertwines $\pi_\lambda$ with $\alpha_c$ and has $\mathrm{joint}(\mu)$ in its image.
2. If $\lambda'$ is a dominant weight of $\mathrm{GL}_d$ with $\lambda'_k = \mu_k + c$ for $k \le n$ and $\lambda'_k = c$ for $k > n$, there is a map from $\pi_{\lambda'}$ to $P_{n,d}$ that intertwines $\pi_{\lambda'}$ with $\beta_c$ and has $\mathrm{joint}(\mu)$ in its image.

Lean: `UpperTheory.TP.RP.exists_act1_equivariant_nablaSq_map_hitting_joint` and `UpperTheory.TP.RP.exists_act2_equivariant_nablaSq_map_hitting_joint`

*Proof.* This is the classical argument: $\mathrm{joint}(\mu)$ is a highest weight vector for both actions, as in the work of Kashiwara and Vergne. The Lean proof reaches it through a realization of the irreducible representations in polynomial spaces, and for part 2 through the rule that the right action of $h$ multiplies the top minor by $\det h$. We did not unfold it. $\square$

Let $K_\infty$ be the compact group $U(X)(F \otimes \mathbb{R})$. A polynomial Schwartz function $f_0$ and a form $\varphi$ have the same type if there are an irreducible representation $V$ of $K_\infty$, a vector $x_0 \in V$ and two intertwining maps $i, j$, from $V$ to the Weil representation and from $V$ to $U$ with right translation, with $i(x_0) = f_0$ and $j(x_0) = \varphi$.

**Theorem (Matched types at infinity).** Assume the tools. Let $n \le d$ and let $U$, $\lambda_w$, $m_X$, $m_W$ be as in the theta lift statement. Then there are a polynomial Schwartz function $f_0 \ne 0$ and a form $\varphi \in U$ with $\varphi \ne 0$ of the same type. For each infinite place $w$, $f_0$ has type $\lambda'_w$ at $w$ on the $U(W)$ side, with $\lambda'_w$ as in the theta lift statement.

Lean: `UpperTheory.TP.RealPair_k` (proved by `UpperTheory.TP.realPair_k`)

*Proof.* The Lean proof combines the Fock model with the two lemmas. The Fock model gives an injective map $\Phi$ from $\bigotimes_w P_{n,d}$ onto the polynomial Schwartz functions, and integers $a_w, b_w$ with $2a_w = d + m_W(w)$ and $2b_w = n + m_X(w)$. Under $\Phi$, $K_\infty$ acts by $\bigotimes_w \alpha_{a_w}$ and the compact part of $U(W)$ by $\bigotimes_w \beta_{b_w}$. Put $\mu_{w,k} = \lambda_{w,k} - a_w$. The hypothesis gives $\mu_{w,k} \ge 0$, and $\mu_w$ is nonincreasing. Part 1 of the second lemma with $c = a_w$ gives $x_w$ that maps to $\mathrm{joint}(\mu_w)$. Let $j$ embed $\bigotimes_w \pi_{\lambda_w}$ in $U$, and put $f_0 = \Phi(\bigotimes_w \mathrm{joint}(\mu_w))$ and $\varphi = j(\bigotimes_w x_w)$. Both are nonzero by the first lemma. Put $\lambda'_{w,k} = \mu_{w,k} + b_w$ for $k \le n$ and $\lambda'_{w,k} = b_w$ for $k > n$. Then $2\lambda'_{w,k} = 2\lambda_{w,k} - 2a_w + 2b_w$, which is the lift relation. Part 2 with $c = b_w$ gives the type $\lambda'_w$. $\square$

**Remark (Formalization).** The definition `hw` is in [StatementA.lean#L63](lean:Formalism/GradedWeylDivisibility/StatementA.lean#L63), with the minors `lpMinor`. The space $P_{n,d}$ is `PP n d`, and $\alpha_c$, $\beta_c$ are `act1` and `act2` in [RightSub.lean#L32](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/RightSub.lean#L32). The statement `jointNe` ([JointNe.lean#L13](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/JointNe.lean#L13)) assumes that $\mu$ is antitone, but its proof does not use this hypothesis, because `Formalism.GradedWeylDivisibility.hwNe` holds for every $\nu$. The Fock model is `UpperTheory.TP.RP.fockOf_k`, and the type in $U$ comes from `UpperTheory.TP.RP.formEx`. The proof `realPair_k` is in [TPGRealPair.lean#L29](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRealPair.lean#L29). It dominates 140 declarations, `fockOf_k` 93, `formEx` 15, `act2` 10, `act1` 7 and `jointNe` 2.

## The Rallis inner product identity

The second part of the proof is one direction of the [Rallis inner product formula](/learn/theta/#the-rallis-inner-product-formula): if the lift of $\varphi$ is zero, then an integral of matrix coefficients over $G$ is zero. The proof uses the [doubling method](/learn/theta/#the-doubling-method) and the [Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula), which are fields of the tools. The folder name "theta Parseval" refers, on our reading, to this identity.

Let $G^\square$ be the doubled unitary group of $X \oplus (-X)$, with an embedding $\varepsilon : G \times G \to G^\square$ and a compact stabilizer $K$. A height on $G^\square$ is a positive function $a$ that is invariant under $K$. Write $a(g, 1)$ for $a(\varepsilon(g, 1))$. The code proves that such $K$, $a$ and $\varepsilon$ exist.

**Proposition (Integrability of the height).** Assume the tools. There is $t_0$ such that $g \mapsto a(g, 1)^t$ is integrable on $G$ for every Haar measure and every $t \ge t_0$.

Lean: `UpperTheory.TP.HgtFst_k` (proved by `UpperTheory.TP.hgtFst_k`)

*Proof.* The Lean proof derives it from the compactness and finite volume fields of the tools. We did not unfold it. $\square$

**Theorem (Rallis identity, one direction).** Assume the tools. Let $n, d \ge 1$ and let $t_0 < d/2$ be as in the proposition. Let $\Phi$ be polynomial at infinity and $\varphi$ a continuous function on $G$, left invariant under $\Gamma$. Then $c_\Phi\, \overline{m_\varphi}$ is integrable on $G$, and

$$\theta(\Phi, \varphi) = 0 \implies \int_G c_\Phi(g)\, \overline{m_\varphi(g)}\, d\mu(g) = 0.$$

Lean: `UpperTheory.TP.Rallis_k` (proved by `UpperTheory.TP.rallis_k`)

*Proof.* We follow the Lean proof. Put $s_0 = (d - n)/2$.

1. The tools give $|c_\Phi(g)| \le C\, a(g, 1)^{d/2}$. The function $m_\varphi$ is bounded, because $\mathcal{D}$ has finite measure. Since $t_0 < d/2$, the product $c_\Phi\, \overline{m_\varphi}$ is integrable. For the same reason, $I(z) = \int_G a(g, 1)^{z - s_0}\, c_\Phi\, \overline{m_\varphi}\, d\mu$ is holomorphic on a half plane that contains $s_0$.
2. Let $\hat E(z)$ be the Siegel Eisenstein series on $G^\square$, and let $P(z)$ be its pairing with $\varphi \otimes \overline{\varphi}$ over $\mathcal{D} \times \mathcal{D}$. The doubling tool gives $c, c' \ne 0$ with $P(z) = c\, c'\, I(z)$ for $\operatorname{Re} z$ large.
3. Both sides are holomorphic on a connected open set that contains $s_0$ and that half plane. By the identity theorem, $P(s_0) = c\, c'\, I(s_0)$.
4. At $z = s_0$, the Siegel-Weil field writes $P(s_0)$ as a constant times an integral of $\theta(y_1, h; \Phi)\, \overline{\theta(y_2, h; \Phi)}\, \varphi(y_2)\, \overline{\varphi(y_1)}$. The constant is $\mathrm{vol}(\mathcal{D}')^{-1}$ if $n < d$ and twice that if $n = d$, for a fundamental domain $\mathcal{D}'$ in $G'$. The inner integral over $y_1$ is the conjugate of $\theta(\Phi, \varphi)(h) = 0$. So $P(s_0) = 0$.

Since $c\, c' \ne 0$, $I(s_0) = 0$, and $I(s_0)$ is the integral of the theorem. $\square$

**Remark (Formalization).** `Rallis_k` is in [GalTPDefs.lean#L61](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L61) and `rallis_k` in [TPGRallis.lean#L99](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRallis.lean#L99). The pairing $P$ is `kpair`, and step 3 is the private lemma `zero_of_half_pk`. The proof `rallis_k` dominates only 6 declarations and `hgtFst_k` 5, because they use shared lemmas. The Rallis step depends on `swFull` and `dbl`, which are large statements, and this chapter does not unfold them.

## A main term larger than the tail

By the Rallis identity, it is sufficient to find test data with $\int_G c_\Phi\, \overline{m_\varphi} \ne 0$. The code takes $\Phi = f_0 \otimes \varphi_f$, with bump functions $\varphi_f$ at a finite set $S$ of places. It splits $G$ into parts at infinity, at $S$ and off $S$. Off $S$ there is a main block of integral elements and a tail that the height controls. No determinant is involved.

**Lemma (Main term and tail).** Let $(A, \mu_A)$, $(B, \mu_B)$, $(C, \mu_C)$ be s-finite measure spaces. Let $H \subseteq B$ and $K \subseteq C$ be measurable with $0 < \mu_B(H) < \infty$ and $\mu_C(K) < \infty$. Let $f$ be integrable on $A \times B \times C$, and let $m$, $s$, $c_0$, $\kappa$, $r$ and $w \ge 0$ satisfy:

1. $\kappa \ne 0$ and $r > 0$;
2. $f(x, b, c) = 0$ for $b \notin H$, and $f(x, b, c) = s(c)\, m(x, c)$ for $b \in H$;
3. $\int_A m(x, c)\, d\mu_A(x) = \kappa\, c_0(c)$ for every $c$;
4. $s(c) = 1$ and $c_0(c) = r$ for $c \in K$;
5. $|c_0(c)| \le r$ and $|s(c)| \le w(c)$ for every $c$;
6. $\int_{C \setminus K} w\, d\mu_C < \mu_C(K)$.

Then $\int f \ne 0$.

Lean: `UpperTheory.TP.AbsNe` (proved by `UpperTheory.TP.absNe`)

*Proof.* We follow the Lean proof. By Fubini and conditions 2 and 3, $\int_A f(x, b, c)\, d\mu_A(x) = \mathbf{1}_H(b)\, \kappa\, s(c)\, c_0(c)$. Since $\mu_B(H) > 0$, this forces $s\, c_0$ to be integrable, and

$$\int f = \mu_B(H)\, \kappa \int_C s\, c_0\, d\mu_C.$$

Suppose $\int_C s\, c_0 = 0$. Then the integrals over $K$ and over $C \setminus K$ have the same absolute value. By condition 4 the first is $r\, \mu_C(K)$. By condition 5 the second is at most $r \int_{C \setminus K} w$. Condition 6 makes this smaller than $r\, \mu_C(K)$, which is a contradiction. $\square$

**Lemma (Matrix coefficients are largest at one).** Let $\Gamma \backslash G$ be compact, and let $\varphi \ne 0$ be continuous and left invariant under $\Gamma$. Then $r = m_\varphi(1)$ is real and positive, and $|m_\varphi(g)| \le r$ for every $g$.

Lean: `UpperTheory.matrix_coefficient_bounded_by_value_at_one`

*Proof.* We follow the Lean proof. First, $m_\varphi(1) = \int_{\mathcal{D}} |\varphi|^2\, d\mu > 0$. Next, $|\varphi(yg)\, \overline{\varphi(y)}| \le \tfrac12 (|\varphi(yg)|^2 + |\varphi(y)|^2)$, and the integral of $|\varphi(yg)|^2$ over $\mathcal{D}$ is $m_\varphi(1)$ by invariance. Integrate the bound over $\mathcal{D}$. $\square$

For a finite set $S$ of places, let $G_\infty$, $G_S$ and $G^S$ be the subgroups generated by the components at infinity, at $S$, and at the finite places off $S$. An element is integral if it is integral at every place.

**Proposition (The inputs of the nonvanishing proof).** Assume the tools, and let $2n \le d$ where needed.

1. (Decomposition.) Multiplication $G_\infty \times G_S \times G^S \to G$ is an isomorphism of topological groups, and $G_\infty$ is compact.
2. (Bumps.) For each finite place $v$ and each neighbourhood $N$ of $1$, there are an open subgroup $H_v \subseteq N$ of integral elements and a nonzero function $\varphi_v$ fixed by $\omega(H_v, 1)$. For $g \notin H_v$, $\varphi_v$ and $\omega(g, 1)\varphi_v$ have different eigenvalues for one operator.
3. (Datum.) Take bumps at $v \in S$, the vacuum vector off $S$, and $\Phi = f_0 \otimes \varphi_f$ with $f_0 \ne 0$. Let $H_S$ be the subgroup generated by the $H_v$. Then $c_\Phi(1) \ne 0$, and $c_\Phi(xbc) = 0$ for $b \notin H_S$. For $b \in H_S$, $c_\Phi(xbc) = s(c)\, c_\Phi(x)$ with $|s(c)| = a(c, 1)^{d/2}$, and $s(c) = 1$ for integral $c$.
4. (Schur step.) If $f_0$ and $\varphi$ have the same type, there is $\kappa \ne 0$ with $\int_{G_\infty} c_\Phi(x)\, \overline{m_\varphi(xc)}\, dx = \kappa\, c_\Phi(1)\, \overline{m_\varphi(c)}$.
5. (Tail.) If $a(\cdot, 1)^t$ is integrable, each finite $S_0$ lies in a finite $S$ such that the integral of $a(c, 1)^t$ over the non-integral elements of $G^S$ is smaller than the measure of the integral ones.

Lean: `UpperTheory.TP.Decomp_k`, `UpperTheory.TP.BumpAny_k`, `UpperTheory.TP.Datum_k`, `UpperTheory.TP.SchurStep_k`, `UpperTheory.TP.Tail_k`

*Proof.* Each part has its own Lean proof from the tools, and we did not unfold them. Part 4 has the form of Schur orthogonality on the compact group $G_\infty$. $\square$

**Theorem (The lift is not zero).** Assume the tools. Let $2n \le d$ and $t_0 < d/2$ as in Section 3. Let $f_0 \ne 0$ be polynomial at infinity, and let $\varphi \ne 0$ in an irreducible automorphic representation have the same type as $f_0$. Then there are finite test data $\varphi_f$ with $\theta(f_0 \otimes \varphi_f, \varphi) \ne 0$.

Lean: `UpperTheory.TP.NonVan_k` (proved by `UpperTheory.TP.nonVan_k`)

*Proof.* We follow the Lean proof. An open subgroup $N$ of the finite adelic group fixes $\varphi$. By part 1 and the second lemma, $r = m_\varphi(1) > 0$ bounds $m_\varphi$. Choose $S_0$ such that the integral elements of $G^{S_0}$ lie in $N$, and $R$ such that $\chi_W$ is unramified off $R$. Part 5 with $t = d/2$ and $S_0 \cup R$ gives $S$. Take bumps $H_v \subseteq N$ at $v \in S$, and put $\Phi = f_0 \otimes \varphi_f$.

Suppose $\theta(\Phi, \varphi) = 0$. Then $\int_G c_\Phi\, \overline{m_\varphi} = 0$ by the Rallis identity. By part 1 the Haar measure on $G$ is a nonzero multiple of a product measure. Apply the first lemma with $A = G_\infty$, $B = G_S$, $C = G^S$, $H = H_S$, $K$ the integral elements of $G^S$, $f(x, b, c) = c_\Phi(xbc)\, \overline{m_\varphi(xbc)}$, $m(x, c) = c_\Phi(x)\, \overline{m_\varphi(xc)}$, $c_0 = \overline{m_\varphi}$, $\kappa\, c_\Phi(1)$ for $\kappa$, and $w(c) = a(c, 1)^{d/2}$. Parts 3, 4 and 5 and the second lemma give the conditions, since $N$ fixes $\varphi$ and contains $H_S$ and the integral $c$. This is a contradiction. $\square$

**Remark (Formalization).** `NonVan_k` is in [GalTPDefs.lean#L114](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L114), `nonVan_k` in [TPGNonVan.lean#L26](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGNonVan.lean#L26), `AbsNe` in [SchurStep.lean#L183](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L183) and `absNe` in [AbsNe.lean#L5](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/AbsNe.lean#L5). The groups are `gInf`, `gAt` and `gOff`, and "integral" is `IntAll`. The bump condition `IsBump` does not state that the Weil coefficient is supported in $H_v$. The vanishing off $H_S$ is a conclusion of `Datum_k`, where $H_S$ is the subgroup `⨆ v ∈ S, H v`. The proofs dominate `bumpAny_k` 128, `decomp_k` 34, `datum_k` 28, `nonVan_k` 18, `schurStep_k` 11, `tail_k` 7 and `absNe` 1 declarations. This chapter does not unfold `IsHgt`, `IsBump`, `SameType` or `HasType`.

## From a nonzero lift to one representation

A nonzero lift is an automorphic form on $U(W)$. This section takes one irreducible constituent $U'$ and reads its weights and local components. The code does not count multiplicity. For the background see [automorphic representations](/learn/automorphic-forms/#automorphic-representations), [[cuspidal representations|9AZ164C298]] and [Zorn's lemma](/learn/algebra/#zorns-lemma). Fix identifications $e : U_n(\mathbb{A}_E) \cong G$ and $e' : U_d(\mathbb{A}_E) \cong G'$, which the code proves to exist.

**Theorem (The lift is automorphic).** Assume the tools. There is a map $\Theta$ with $\Theta(\Phi, \varphi) = \theta(\Phi, \varphi \circ e^{-1}) \circ e'$ for polynomial $\Phi$ and every [[automorphic form|68SJQEC11F]] $\varphi$ on $U_n$. Each $\Theta(\Phi, \varphi)$ is an automorphic form on $U_d$, and $\Theta$ is equivariant: $\Theta(\omega(e(g), e'(h))\Phi, R(g)\varphi) = R(h)\Theta(\Phi, \varphi)$.

Lean: `UpperTheory.TP.LiftAut_k` (proved by `UpperTheory.TP.liftAut_k`)

*Proof.* The Lean proof uses the kernel and unfolding fields of the tools. We did not unfold it. $\square$

**Theorem (Projection onto an irreducible constituent).** Let $\psi \ne 0$ be an automorphic form on $U_d(\mathbb{A}_E)$. Then there are an irreducible automorphic representation $U'$ and an equivariant linear map $p$ from automorphic forms to $U'$ with $p(\psi) \ne 0$.

Lean: `UpperTheory.TP.ProjEx` (proved by `UpperTheory.TP.projEx`)

*Proof.* We follow the Lean proof. An invariant positive Petersson form puts every automorphic form in the sum of the irreducible automorphic representations. By Zorn's lemma there is a maximal invariant subspace $C$ with $\psi \notin C$. Some irreducible $U'$ has $C \cap U' = 0$ and $\psi \in C + U'$. The projection along $C$ onto $U'$ is $p$. $\square$

**Lemma (Isotypic projection).** Let a group act on $V$, with an invariant irreducible subspace $U$. Let $H$ be a subgroup such that every element is a product of an element of $H$ and an element that commutes with $H$. Let $\tau$ be an irreducible representation of $H$ with a nonzero $H$-map into $U$. Then every nonzero $u \in U$ has an $H$-map $p$ from $U$ to the space of $\tau$ with $p(u) \ne 0$.

Lean: `UpperTheory.TP.AbsIso` (proved by `UpperTheory.TP.absIso`)

*Proof.* This is the classical argument: $U$ is spanned by the translates of the image of one $H$-map, and each translate is again an $H$-map. The Lean proof reaches it through finite sums of $H$-maps, which we did not unfold. $\square$

**Theorem (Reading the lift).** Assume the tools. Let $U$, $U'$ be irreducible automorphic representations and $p$ an equivariant map into $U'$. Let $f_0$ be polynomial, $\varphi \in U$, and $p(\Theta(f_0 \otimes \varphi_f, \varphi)) \ne 0$. If $f_0$ has type $\lambda'$ at $w$, then $U'$ has weight $\lambda'$ at $w$. At each split place a nonzero intertwining map pairs the local components of $U$ and $U'$.

Lean: `UpperTheory.TP.ReadLift_k` (proved by `UpperTheory.TP.readLift_k`)

*Proof.* The Lean proof applies the lemma on isotypic projection, to the compact group at $w$ and to the local groups at the split places. We did not unfold it. $\square$

**Remark (Formalization).** `ProjEx` is in [SchurStep.lean#L243](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L243) and `projEx` in [ProjEx.lean#L98](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ProjEx.lean#L98). The Petersson form is `GlobalTheory.T.exists_invariant_positive_petersson_form`, and Zorn's lemma is applied in the private lemma `proj_of_sum`. The local pairing is `LocPair`, which this chapter does not unfold. The identifications come from `UpperTheory.TP.brEx`. The proofs dominate `liftAut_k` 38, `brEx` 34, `readLift_k` 14, `projEx` 2 and `absIso` 1 declarations.

## The existence of the lift

The skeleton theorem takes the named statements as hypotheses. The final theorem supplies all of them.

**Theorem (Existence skeleton).** Assume the tools, a height on the doubled group, the identifications $e$, $e'$, and the named statements of Sections 2 to 5. Then the theta lift statement holds.

Lean: `UpperTheory.TP.tLift_of_k`

*Proof.* Let $E$, $B$, $n$ and $X$ be given. The height statement gives $K$, $a$ and $\varepsilon$, and the proposition on integrability gives $t_0$. Choose an integer $N > 2t_0$ and put $d_0 = \max(N, 2n)$. Let $d \ge d_0$. Then $2n \le d$ and $t_0 < d/2$. The signature of $W$ gives $\delta \ne 0$. The tools give a model of the dual pair.

Matched types give $f_0$, $\varphi$ and $\lambda'_w$. Nonvanishing gives $\varphi_f$ with $\psi = \Theta(f_0 \otimes \varphi_f, \varphi) \ne 0$, an automorphic form by the theorem on automorphy. Projection gives $U'$ and $p$ with $p(\psi) \ne 0$. Reading the lift gives the weights and local pairings of $U'$. $\square$

**Theorem (The theta lift exists).** The theta lift statement holds.

Lean: `UpperTheory.TP.K.tLiftK` (also `UpperTheory.TP.tLift_holds_k` and `UpperTheory.TP.tLift_of_tools_k`)

*Proof.* Apply the existence skeleton. The tools hold by the theorem of Section 1. The height exists by a proved theorem from the compact stabilizer field, and the identifications exist by a proved theorem. Each named statement of Sections 2 to 5 is proved. The step [the theta lift statement holds](/step/t-lift-k/) records the proof. $\square$

**Remark (Formalization).** `tLift_of_k` is in [GalTPDefs.lean#L141](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L141), `tLift_of_tools_k` in [TPGTop.lean#L46](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGTop.lean#L46), and `tLift_holds_k` in [TPGHolds.lean#L58](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGHolds.lean#L58). The final theorem `UpperTheory.TP.K.tLiftK` ([TLiftK.lean#L4](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TLiftK.lean#L4)) is `tLift_holds_k`. The height input is `GlobalTheory.ThK.Dbl.hgtEx_of_k stab2Cpt_k`. The bound $d_0$ depends on $E$, $B$, $n$ and $X$, but not on $U$ or on the characters. The large size of `tLiftK` comes mostly from `galoisLocalGlobalStrong_recParameter` (51,591), which it shares.

## The timeline steps without a counterpart

This section says what the code has in place of three steps of the [timeline](/proof/timeline/). [The Weil bound chapter](/proof/weil-bound/) does the same for its branch.

**Remark (Step 1).** Step 1 is the Stepanov determinant. It has no counterpart in the code. The closest piece is the lemma on the main term and the tail.

**Remark (Step 4).** Step 4 reads $W(1_S) \ge 0$ through a determinant, as Stepanov's method with multiplicity one. It has no counterpart. The code proves that one integral is not zero. It does not prove that some quantity is at least zero, and it does not count multiplicity.

**Remark (Step 8).** Step 8 has iterated theta lifts $U(X_0) \to \dots \to U(X_m)$ that gain multiplicity $m$, with $m$ near $\sqrt{X}$. It has only a partial counterpart: one lift from $U(n)$ to $U(d)$ for all $d \ge d_0 = \max(N, 2n)$. We found no iteration of lifts, no gain of multiplicity and no parameter $m$ near $\sqrt{X}$ in this branch.

**Remark (Other determinants).** The folder of Levi determinants has 116 files, and none is below the final theorem of this branch. Most of its declarations sit on the side of [the theta matching](/proof/theta-matching/), with determinants of Levi blocks and characters of the Siegel parabolic. For example, a continuous character trivial on the diagonal part of the Siegel parabolic is trivial when $\det J \ne 0$. These are not Stepanov determinants.

**Remark (Formalization).** The Levi folder is `Development/WeilBound/ThetaLifts/LeviDeterminants`, with 52 entries at its top level. The example is `PositivityTheory.ThKF0.parabolic_character_trivial_on_diagonal` (53 declarations). Most of the folder's declarations are below `theta_integrals_agree_and_local_matching_of_literature` (8,520). The word "Parseval" in the folder name `ThetaParseval` occurs in no declaration of this branch. The folder `BlockDeterminants` holds files with no determinant (`AbsNe`, `ProjEx`, `AbsIso`, `MemClosureOf`). Only its subfolder `ExponentialEntries` and the definition `hw` use determinants.

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked. This chapter does not unfold the fourteen tools, the height, the bump condition, the type conditions or the local pairing.

For the Rallis formula see Rallis and Gan, Qiu and Takeda. For the Siegel-Weil formula see Weil, Kudla and Rallis, and Ichino. For the Fock model see Howe and Kashiwara and Vergne. For theta lifts of unitary groups see Harris, Kudla and Sweet, and Li.

- W. T. Gan, Y. Qiu and S. Takeda, *The regularized Siegel-Weil formula (the second term identity) and the Rallis inner product formula*, Invent. Math. 198 (2014), pages 739 to 831.
- M. Harris, S. Kudla and W. J. Sweet, *Theta dichotomy for unitary groups*, J. Amer. Math. Soc. 9 (1996), pages 941 to 1004.
- R. Howe, *θ-series and invariant theory*, Proc. Sympos. Pure Math. 33, Part 1 (1979), pages 275 to 285.
- R. Howe, *Transcending classical invariant theory*, J. Amer. Math. Soc. 2 (1989), pages 535 to 552.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- M. Kashiwara and M. Vergne, *On the Segal-Shale-Weil representations and harmonic polynomials*, Invent. Math. 44 (1978), pages 1 to 47.
- S. Kudla and S. Rallis, *On the Weil-Siegel formula*, J. Reine Angew. Math. 387 (1988), pages 1 to 68.
- S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- J.-S. Li, *Non-vanishing theorems for the cohomology of certain arithmetic quotients*, J. Reine Angew. Math. 428 (1992), pages 177 to 217.
- S. Rallis, *On the Howe duality conjecture*, Compositio Math. 51 (1984), pages 333 to 399.
- A. Weil, *Sur certains groupes d'opérateurs unitaires*, Acta Math. 111 (1964), pages 143 to 211.
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965), pages 1 to 87.
