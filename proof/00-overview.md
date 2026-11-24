---
title: The proof in one page
description: The top of the Lean proof of the Riemann Hypothesis, in words. The chain goes from the theorem riemannHypothesis down to one statement about all Dirichlet L-functions.
lead: The Lean code proves the Riemann Hypothesis from one statement about Dirichlet L-functions. This page shows that step in words, and shows where the large part of the proof starts.
level: L0
status: draft
lean:
  - name: riemannHypothesis
    file: Main.lean
    line: 4
  - name: rhOfAll
    file: Supplements/Kernels/MainTheorems.lean
    line: 9
  - name: Formalism.VW.rh_of_every
    file: Formalism/GammaFactorNonvanishing/CritLine.lean
    line: 29
  - name: Formalism.VW.rh_of_right
    file: Formalism/GammaFactorNonvanishing/RhOfRight.lean
    line: 5
  - name: UpperTheory.EveryCharacter
    file: Development/AutomorphicArithmetic/CharacterBoxes/EveryCharacter.lean
    line: 13
  - name: UpperTheory.FinalTheorems.everyCharacter
    file: Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
    line: 10
needs:
  - tag: TXB2F07CC6
    text: Riemann zeta function
  - tag: VCGF9YR36X
    text: Riemann hypothesis
  - tag: NFXKNDJX9C
    text: Functional equation of the zeta function
  - tag: 0V3FZMVB4K
    text: Gamma function
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
next:
  - text: The timeline of the note
    path: proof/timeline/
    sub: the order of the ideas
  - text: What is checked
    path: trust/
    sub: the trust report
steps: [riemann-hypothesis, rh-of-all, rh-of-every, rh-of-right, every-character-def, all-chi, every-character]
---
## The Riemann Hypothesis

This chapter is the top of the proof. It states the Riemann Hypothesis in the form of Mathlib, and it proves it from one statement about all Dirichlet L-functions, called EveryCharacter. The step from EveryCharacter to the Riemann Hypothesis is classical and uses only Mathlib (Sections 2 and 3). All the difficulty is in the proof of EveryCharacter (Section 4). The chapter [From the row statement to every character](/proof/trunk/) states that proof, and the chapters after it explain its inputs. Section 5 lists the other theorems of the top file. The steps of this chapter follow it: [the Riemann Hypothesis](/step/riemann-hypothesis/), [the Riemann Hypothesis from all characters](/step/rh-of-all/), [the Riemann Hypothesis from EveryCharacter](/step/rh-of-every/), [the Riemann Hypothesis from the right half-plane](/step/rh-of-right/), [the statement EveryCharacter](/step/every-character-def/), [EveryCharacter is true](/step/all-chi/) and [EveryCharacter from the Galois row](/step/every-character/).

Let $\zeta$ be the [[Riemann zeta function|TXB2F07CC6]]. Mathlib defines it on all of $\mathbb{C}$. It is the analytic continuation of $\sum_{n \geq 1} n^{-s}$ away from the pole at $s = 1$, and Mathlib gives $\zeta(1)$ a finite value by convention.

**Definition (Riemann Hypothesis).** The trivial zeros of $\zeta$ are the numbers $-2(n + 1)$ with $n \in \mathbb{N}$, that is $-2, -4, -6, \dots$. The [[Riemann Hypothesis|VCGF9YR36X]] is the statement: if $s \in \mathbb{C}$, $\zeta(s) = 0$, $s$ is not a trivial zero and $s \neq 1$, then $\operatorname{Re}(s) = \tfrac12$.

Lean: `RiemannHypothesis`

**Remark (The point s = 1).** The hypothesis $s \neq 1$ is there because of the convention at the pole. The value that Mathlib gives to $\zeta(1)$ is not zero, so the hypothesis excludes nothing that matters. The [trust page](/trust/), question Q4, discusses the statement.

**Theorem (The Riemann Hypothesis).** Every zero of $\zeta$ that is not a trivial zero and not $1$ has real part $\tfrac12$.

Lean: `riemannHypothesis`

*Proof.* Section 3 proves the Riemann Hypothesis from EveryCharacter, and Section 4 proves EveryCharacter. The theorem "The Riemann Hypothesis from all characters" of Section 3 combines the two. The Lean proof is that theorem, with no other step. $\square$

**Remark (What a proof means here).** The words of this chapter do not prove the theorem. They say what the Lean code does. Lean accepts a proof only relative to the axioms that the proof uses, and a person must check that the Lean statement says what the standard statement says. The [trust report](/trust/) answers three questions: is the source the same as the release, which axioms does the proof use, and does a second kernel accept it. Until the report says yes, read each sentence of this site as "the Lean code claims".

**Remark (Formalization).** The theorem is on [Main.lean#L4](lean:Main.lean#L4), and its proof is the name `rhOfAll` of [MainTheorems.lean#L9](lean:Supplements/Kernels/MainTheorems.lean#L9). The theorem `riemannHypothesis`, with a small r, and the Mathlib definition `RiemannHypothesis`, with a capital R, are different things. The definition is the statement. The theorem is the claim that the statement is true.

## Dirichlet L-functions and the statement EveryCharacter

The proof reaches $\zeta$ through all Dirichlet L-functions together. This section fixes the L-functions and states EveryCharacter. It is the generalized Riemann hypothesis for Dirichlet L-functions, in the form "no zero to the right of the critical line".

**Definition (Dirichlet L-function).** Let $N \geq 1$. A [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$ is a multiplicative function $\mathbb{Z}/N\mathbb{Z} \to \mathbb{C}$ that is zero outside the units. Its [[Dirichlet L-function|24GAZHVTGB]] $L(s, \chi)$ is the analytic continuation of $\sum_{n \geq 1} \chi(n) n^{-s}$ from $\operatorname{Re}(s) > 1$ to $\mathbb{C}$. For the trivial character the function has a pole at $s = 1$, and Mathlib gives it a value there by convention.

Lean: `DirichletCharacter.LFunction`

**Lemma (The modulus one).** Let $\mathbf{1}$ be the trivial character modulo $1$. Then $L(s, \mathbf{1}) = \zeta(s)$ for every $s \in \mathbb{C}$.

Lean: `DirichletCharacter.LFunction_modOne_eq`

*Proof.* Every integer is a unit modulo $1$, so $\mathbf{1}(n) = 1$ for all $n$. For $\operatorname{Re}(s) > 1$ both sides are $\sum_{n \geq 1} n^{-s}$, and the two continuations agree. This is the classical argument; the Lean proof is a lemma of Mathlib, which we did not unfold. $\square$

**Definition (EveryCharacter).** EveryCharacter is the statement: for every $N \geq 1$, every Dirichlet character $\chi$ modulo $N$ and every $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, if $\chi \neq 1$ or $s \neq 1$, then $L(s, \chi) \neq 0$.

Lean: `UpperTheory.EveryCharacter`

**Remark (The generalized Riemann hypothesis).** EveryCharacter is the [[Generalized Riemann hypothesis|DNKA4WBKDS]] for Dirichlet L-functions, stated to the right of the line. The condition "$\chi \neq 1$ or $s \neq 1$" excludes one point: the trivial character at its pole. With the functional equation, EveryCharacter puts the zeros in the critical strip on the line (Section 5). Step 20 of the [timeline](/proof/timeline/) is "GRH", and this statement is the reason.

**Remark (Imprimitive characters).** For a character that is not primitive, $L(s, \chi)$ has extra zeros from the Euler factors at the primes that divide $N$. These zeros have real part $0$, so EveryCharacter does not see them.

**Remark (Formalization).** The definition is in [EveryCharacter.lean#L13](lean:Development/AutomorphicArithmetic/CharacterBoxes/EveryCharacter.lean#L13). The modulus carries the instance `NeZero N`. The same proposition appears twice more, with the same body: as `DirichletLNonvanishingRightOfHalf` in [Statements.lean#L6](lean:Statements.lean#L6), and as `Claim.HalfPlane` in [HalfPlane.lean#L3](lean:Development/AutomorphicArithmetic/CharacterBoxes/HalfPlane.lean#L3). So one proof serves all three names. The step [the statement EveryCharacter](/step/every-character-def/) explains each part of the definition.

## From EveryCharacter to the Riemann Hypothesis

This section is classical. It uses one character of EveryCharacter, the trivial character modulo $1$. The proposition reduces the Riemann Hypothesis to the half-plane $\operatorname{Re}(s) > \tfrac12$ by the [[functional equation|NFXKNDJX9C]] of $\zeta$. The first theorem gets that half-plane from EveryCharacter. A reader who knows the functional equation can check the section in a few minutes.

**Proposition (The Riemann Hypothesis from the right half-plane).** Suppose that $\zeta(s) \neq 0$ for every $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$ and $s \neq 1$. Then the Riemann Hypothesis holds.

Lean: `Formalism.VW.rh_of_right`

*Proof.* Let $\zeta(s) = 0$, where $s$ is not a trivial zero and $s \neq 1$. If $\operatorname{Re}(s) > \tfrac12$, the hypothesis gives $\zeta(s) \neq 0$, a contradiction. If $\operatorname{Re}(s) = \tfrac12$, there is nothing to prove. Let $\operatorname{Re}(s) < \tfrac12$, and put $u = 1 - s$. Then $\operatorname{Re}(u) > \tfrac12$. Since $\zeta(0) = -\tfrac12$, we have $s \neq 0$, so $u \neq 1$. Also $u$ is not one of $0, -1, -2, \dots$, because $\operatorname{Re}(u) > 0$. So the functional equation applies at $u$:

$$\zeta(s) = \zeta(1 - u) = 2\,(2\pi)^{-u}\,\Gamma(u)\,\cos\!\left(\frac{\pi u}{2}\right)\zeta(u).$$

The left side is $0$. On the right side, $2\,(2\pi)^{-u} \neq 0$. The [[Gamma function|0V3FZMVB4K]] gives $\Gamma(u) \neq 0$, because $\operatorname{Re}(u) > 0$. The hypothesis gives $\zeta(u) \neq 0$. Suppose that $\cos(\pi u / 2) = 0$. Then $u = 2k + 1$ for an integer $k$, so $s = -2k$. If $k < 0$, then $\operatorname{Re}(s) \geq 2$. If $k = 0$, then $s = 0$. If $k > 0$, then $s = -2((k - 1) + 1)$ is a trivial zero. Each case is excluded, so the cosine is not zero. So the right side is not zero, and this is a contradiction. The Lean proof follows this argument line by line. $\square$

**Remark (Conventions of Mathlib).** Mathlib gives $\Gamma$ the value $0$ at its poles $0, -1, -2, \dots$. So the Lean function $\Gamma$ has zeros, and the proof uses $\Gamma(u) \neq 0$ only for $\operatorname{Re}(u) > 0$. Mathlib writes the functional equation with $\cos$ and $\Gamma(u)$, not with the completed function $\Lambda(s) = \pi^{-s/2}\Gamma(s/2)\zeta(s)$. The two forms are equivalent.

**Theorem (The Riemann Hypothesis from EveryCharacter).** If EveryCharacter holds, then the Riemann Hypothesis holds.

Lean: `Formalism.VW.rh_of_every`

*Proof.* By the proposition, it is enough to show that $\zeta(s) \neq 0$ when $\operatorname{Re}(s) > \tfrac12$ and $s \neq 1$. Apply EveryCharacter with $N = 1$ and $\chi = \mathbf{1}$. The condition "$\chi \neq 1$ or $s \neq 1$" holds, because $s \neq 1$. So $L(s, \mathbf{1}) \neq 0$. By the lemma on the modulus one, $L(s, \mathbf{1}) = \zeta(s)$. $\square$

**Theorem (The Riemann Hypothesis from all characters).** The Riemann Hypothesis holds.

Lean: `rhOfAll`

*Proof.* The corollary of Section 4 gives EveryCharacter. Put it into the last theorem. $\square$

**Remark (Formalization).** The proposition is in [RhOfRight.lean#L5](lean:Formalism/GammaFactorNonvanishing/RhOfRight.lean#L5), a file that imports only Mathlib. It uses the Mathlib lemmas `riemannZeta_one_sub`, `riemannZeta_zero`, `Complex.Gamma_ne_zero_of_re_pos` and `Complex.cos_eq_zero_iff`. The case split on $k$ and the casts between $\mathbb{Z}$, $\mathbb{N}$ and $\mathbb{C}$ take most of its lines. The first theorem is in [CritLine.lean#L29](lean:Formalism/GammaFactorNonvanishing/CritLine.lean#L29), and the second is `Formalism.VW.rh_of_every allChi` in [MainTheorems.lean#L9](lean:Supplements/Kernels/MainTheorems.lean#L9). The code has two more proofs of the same implication. `UpperTheory.riemannHypothesis_of_everyCharacter` ([RiemannHypothesisOfEveryCharacter.lean#L215](lean:Development/AutomorphicArithmetic/CharacterBoxes/RiemannHypothesisOfEveryCharacter.lean#L215)) uses the completed zeta function and the zeros of $\Gamma_{\mathbb{R}}$, and MainConclusion.lean uses it for `UpperTheory.FinalTheorems.riemannHypothesis`. `Claim.zeta` ([ClaimStrip.lean#L75](lean:Development/AutomorphicArithmetic/CharacterBoxes/ClaimStrip.lean#L75)) goes through the strip theorem of Section 5. The theorem `riemannHypothesis` of Main.lean uses neither.

## The proof of EveryCharacter

This section names the large part of the proof and points to the chapters that carry it. The theorem below has a short proof from two inputs, and both inputs are theorems of the code. Below them are hundreds of thousands of declarations on theta lifts, automorphic forms, [[Galois representations|QW17YJ6ZCT]] and the [[local Langlands conjectures|9E45NBX1G0]]. This section states no detail of that part. The chapter [From the row statement to every character](/proof/trunk/) states the chain in full.

**Theorem (Generalized Riemann Hypothesis for Dirichlet L-functions).** EveryCharacter holds.

Lean: `UpperTheory.FinalTheorems.everyCharacter`

*Proof.* The Lean proof combines two inputs of the [trunk chapter](/proof/trunk/). The first is the Galois row. It attaches $\ell$-adic Galois representations, with local-global compatibility, to regular algebraic polarized cuspidal representations of $\mathrm{GL}_a$ over CM fields. The compatibility is stated for local Langlands maps with a fixed list of laws. The code proves the row; see [The Galois row](/proof/galois-row/). The second input is the theorem "EveryCharacter from the row" of the trunk chapter. Put the first into the second. $\square$

**Corollary (EveryCharacter under a short name).** EveryCharacter holds.

Lean: `allChi`

*Proof.* This is the theorem above. The Lean proof is its name. $\square$

**Remark (The chain below the theorem).** The trunk chapter proves "EveryCharacter from the row" in these links.

1. The code proves that local Langlands maps with the required laws exist, for every finite place of every number field.
2. The row, used twice, and that existence theorem fill the three fields of the literature record. See [The literature layer](/proof/literature/).
3. The row gives the window bound VWin, a bound on sums of lengths of Tate-Shafarevich groups over abelian fields. See [The window bound VWin](/proof/vwin/).
4. The record gives six inputs, and VWin is the seventh. The inputs give a nonempty type of hypotheses on the definite side. See [Theta integrals and local matching](/proof/theta-matching/) and [The unitary hypotheses node](/proof/unitary-hypotheses/).
5. Green's parametrization of cuspidal characters of finite general linear groups, VWin and that type give zero-freeness for all primitive characters. A classical lemma passes to all characters.

The chapters [The Weil bound and arithmetic positivity](/proof/weil-bound/), [Bessel periods, seesaw and separation of functionals](/proof/bessel-seesaw/), [Siegel-Weil, the metaplectic representation and cusp forms](/proof/siegel-weil/), [CM curves, the invariant derivation and divisibility](/proof/cm-divisibility/) and [Block determinants and theta Parseval](/proof/determinants/) treat branches of these inputs.

**Remark (What is assumed and what is proved).** The literature record has three fields. Their names point to the local-global compatibility of Caraiani, to the existence of local Langlands for $\mathrm{GL}_n$, and to Galois representations of polarized pairs. The trunk fills all three fields with proofs: the first and the third with the Galois row, and the second with the existence theorem. Many inputs below take the record as an argument and do not use it; they return a theorem that the code proves. The few inputs that read a field get a proof from it. So no literature statement is an assumption on this path, and the theorem has no hypothesis. The field names do not claim that a published theorem has exactly the Lean statement. [The literature layer](/proof/literature/) compares each Lean form with the published theorem. The trunk chapter reports that a search of the Lean source finds no axiom declaration and no unfinished proof. This says nothing about whether the statements below the trunk say what their names say. Nobody has reviewed them.

**Remark (Formalization).** The theorem is in [MainConclusion.lean#L10](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L10). Its proof is `everyCharacter_of_row galoisLocalGlobalStrong_recParameter`. The theorem `everyCharacter_of_row` ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)) applies `every_character_of_literature_of_vWin` to the record `⟨h, recTExists, h⟩` and to `vwin_of_row h`. The record is `UpperTheory.LiteratureTheorems.OpenLiteratureStatements`. The corollary `allChi` is in [MainTheorems.lean#L7](lean:Supplements/Kernels/MainTheorems.lean#L7). The trunk chapter gives the closure sizes: 757,477 declarations for `everyCharacter` and 757,483 for `riemannHypothesis`. The folder `lean/src` has 175,187 Lean files, but not all of them are in this closure. See also the steps [EveryCharacter is true](/step/all-chi/), [EveryCharacter from the Galois row](/step/every-character/) and [EveryCharacter from Row0b](/step/every-character-of-row/).

## The other theorems of the top file

The top file states four more results. Each comes from EveryCharacter. The file Statements.lean states them with Mathlib only. Two of them reach the critical line through the functional equation of a primitive Dirichlet L-function. Write $\Gamma_{\mathbb{R}}(s) = \pi^{-s/2}\Gamma(s/2)$. For a Dirichlet character $\chi$ put $a = 0$ if $\chi$ is even and $a = 1$ if $\chi$ is odd, and let $\gamma_\chi(s) = \Gamma_{\mathbb{R}}(s + a)$. Let $\Lambda(s, \chi)$ be the completed L-function of Mathlib. For $s \neq 0$ or $\chi \neq 1$ we have $L(s, \chi) = \Lambda(s, \chi) / \gamma_\chi(s)$. If $\chi$ is primitive, then $\Lambda(1 - s, \bar\chi) = \varepsilon\, \Lambda(s, \chi)$ for a root number $\varepsilon$.

**Theorem (The Riemann Hypothesis, second form).** Let $s \in \mathbb{C}$ with $\zeta(s) = 0$, $s \neq -2(n + 1)$ for every $n \in \mathbb{N}$, and $s \neq 1$. Then $\operatorname{Re}(s) = \tfrac12$.

Lean: `riemannZeta_eq_zero_re`

*Proof.* This is the Riemann Hypothesis with the definition written out. The Lean proof is the theorem "The Riemann Hypothesis from all characters". $\square$

**Theorem (No zero to the right of the line).** Let $N \geq 1$, let $\chi$ be a Dirichlet character modulo $N$, and let $\operatorname{Re}(s) > \tfrac12$ with $\chi \neq 1$ or $s \neq 1$. Then $L(s, \chi) \neq 0$.

Lean: `LFunction_ne_zero_of_half_lt_re`

*Proof.* This is EveryCharacter, and the corollary of Section 4 proves it. $\square$

**Lemma (Gamma factors).** Let $\chi$ be a Dirichlet character and $\operatorname{Re}(s) > 0$. Then $\gamma_\chi(s) \neq 0$.

Lean: `Formalism.VW.gammaFactor_ne_zero`

*Proof.* We have $\operatorname{Re}(s + a) > 0$. A lemma of Mathlib says that $\Gamma_{\mathbb{R}}$ has no zero in the half-plane $\operatorname{Re} > 0$. $\square$

**Lemma (Euler factors).** Let $\psi$ be a Dirichlet character, $p$ a prime and $\operatorname{Re}(s) > 0$. Then $1 - \psi(p)\, p^{-s} \neq 0$.

Lean: `Claim.factor_ne_zero`

*Proof.* We have $|\psi(p)| \leq 1$ and $|p^{-s}| = p^{-\operatorname{Re}(s)} < 1$. So $|\psi(p)\, p^{-s}| < 1$, and the factor is not zero. $\square$

**Theorem (Zeros of primitive L-functions).** Let $\chi$ be a primitive Dirichlet character modulo $N \geq 1$, and let $0 < \operatorname{Re}(s) < 1$ with $L(s, \chi) = 0$. Then $\operatorname{Re}(s) = \tfrac12$.

Lean: `LFunction_eq_zero_re_of_isPrimitive`

*Proof.* We have $s \neq 0$ and $s \neq 1$. If $\operatorname{Re}(s) > \tfrac12$, EveryCharacter gives $L(s, \chi) \neq 0$, a contradiction. Let $\operatorname{Re}(s) < \tfrac12$. Since $s \neq 0$, $L(s, \chi) = \Lambda(s, \chi)/\gamma_\chi(s)$, and $\gamma_\chi(s) \neq 0$ by the lemma on Gamma factors. So $\Lambda(s, \chi) = 0$. The character $\bar\chi = \chi^{-1}$ is primitive, with the same conductor. The functional equation gives $\Lambda(1 - s, \bar\chi) = \varepsilon\, \Lambda(s, \chi) = 0$. Since $1 - s \neq 0$, also $L(1 - s, \bar\chi) = 0$. But $\operatorname{Re}(1 - s) > \tfrac12$ and $1 - s \neq 1$, so EveryCharacter gives $L(1 - s, \bar\chi) \neq 0$. This is a contradiction. $\square$

**Theorem (Zeros of all Dirichlet L-functions).** Let $N \geq 1$, let $\chi$ be a Dirichlet character modulo $N$, and let $0 < \operatorname{Re}(s) < 1$ with $L(s, \chi) = 0$. Then $\operatorname{Re}(s) = \tfrac12$.

Lean: `LFunction_eq_zero_re`

*Proof.* We have $s \neq 0$ and $s \neq 1$. If $\operatorname{Re}(s) > \tfrac12$, EveryCharacter gives a contradiction. Let $\operatorname{Re}(s) < \tfrac12$. Let $\chi^*$ be the primitive character modulo the conductor $f$ of $\chi$ that induces $\chi$. Since $s \neq 1$,

$$L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \big(1 - \chi^*(p)\, p^{-s}\big).$$

The factors are not zero by the lemma on Euler factors, so $L(s, \chi^*) = 0$. The argument of the last proof, for $\chi^*$, gives $L(1 - s, \bar\chi^*) = 0$ with $\operatorname{Re}(1 - s) > \tfrac12$ and $1 - s \neq 1$. EveryCharacter at the modulus $f$ excludes this. $\square$

**Remark (Formalization).** The four theorems are on lines [L6](lean:Main.lean#L6), [L8](lean:Main.lean#L8), [L10](lean:Main.lean#L10) and [L12](lean:Main.lean#L12) of Main.lean. Their statements `RiemannZetaZerosOnLine`, `DirichletLNonvanishingRightOfHalf`, `DirichletLZerosOnLine` and `PrimitiveDirichletLZerosOnLine` are in [Statements.lean#L3](lean:Statements.lean#L3), a file that imports only Mathlib. The first has the same body as `RiemannHypothesis`, so its proof is `rhOfAll` again. The second is `allChi`. The third is the second part of `claimAll` ([MainTheorems.lean#L15](lean:Supplements/Kernels/MainTheorems.lean#L15)), which is `Claim.strip allChi` ([ClaimStrip.lean#L59](lean:Development/AutomorphicArithmetic/CharacterBoxes/ClaimStrip.lean#L59)). That proof uses `Claim.prim_zero`, `Claim.prim_reflect` and Mathlib's `LFunction_changeLevel`. The fourth is `critAll`, which is `Formalism.VW.critLine allChi` ([CritLine.lean#L11](lean:Formalism/GammaFactorNonvanishing/CritLine.lean#L11)). So the code writes the reflection argument twice, once in `critLine` and once in `prim_reflect`. The Gamma lemma is at [CritLine.lean#L6](lean:Formalism/GammaFactorNonvanishing/CritLine.lean#L6). The Euler factor lemma is at [ClaimStrip.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/ClaimStrip.lean#L7).

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked. The closure sizes come from the trunk chapter, which takes them from the syntactic graph tool `rh graph` and the spine data. They count declarations, not lines.

The analytic facts of Sections 2, 3 and 5 are classical: the functional equations of $\zeta$ and of primitive Dirichlet L-functions, and the Euler factors of imprimitive characters. The code takes all of them from Mathlib. Hecke proved the functional equation for a class of L-functions that contains the Dirichlet L-functions, and Tate gave the adelic proof. The other sources below are those that the trunk chapter names for the inputs of Section 4.

- A. Caraiani, *Local-global compatibility and the action of monodromy on nearby cycles*, Duke Math. J. 161 (2012), pages 2311 to 2413.
- G. Chenevier and M. Harris, *Construction of automorphic Galois representations II*, Camb. J. Math. 1 (2013), pages 53 to 73.
- J. A. Green, *The characters of the finite general linear groups*, Trans. Amer. Math. Soc. 80 (1955), pages 402 to 447.
- E. Hecke, *Eine neue Art von Zetafunktionen und ihre Beziehungen zur Verteilung der Primzahlen I*, Math. Z. 1 (1918), pages 357 to 376.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- P. Scholze, *The local Langlands correspondence for GL_n over p-adic fields*, Invent. Math. 192 (2013), pages 663 to 715.
- S. W. Shin, *Galois representations arising from some compact Shimura varieties*, Ann. of Math. 173 (2011), pages 1645 to 1741.
- J. Tate, *Fourier analysis in number fields and Hecke's zeta-functions*, in Algebraic Number Theory (J. W. S. Cassels and A. Fröhlich, eds.), Academic Press, 1967, pages 305 to 347.
