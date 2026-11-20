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
---
## The claim

The Lean code states the Riemann Hypothesis with the definition of Mathlib, and gives a proof:

```lean
theorem riemannHypothesis : RiemannHypothesis := rhOfAll
```

The definition `RiemannHypothesis` of Mathlib says this. Let $s$ be a complex number with $\zeta(s) = 0$. If $s$ is not a trivial zero $-2, -4, -6, \dots$ and $s \neq 1$, then $\operatorname{Re}(s) = \tfrac12$. The statement is on the line [Main.lean#L4](lean:Main.lean#L4). The words of this site do not prove it. They tell what the Lean code does. The [trust report](/trust/) tells what this site has checked.

## The chain at the top

The top of the proof is short. It has four steps, and each step is a theorem in the Lean code.

1. `riemannHypothesis` is `rhOfAll` ([MainTheorems.lean#L9](lean:Supplements/Kernels/MainTheorems.lean#L9)).
2. `rhOfAll` applies `rh_of_every` to `allChi`. Here `allChi` is the statement `EveryCharacter` below.
3. `rh_of_every` ([CritLine.lean#L29](lean:Formalism/GammaFactorNonvanishing/CritLine.lean#L29)) takes `EveryCharacter` for the trivial character modulo 1. The L-function of that character is the [[Riemann zeta function|TXB2F07CC6]]. Thus $\zeta(s) \neq 0$ when $\operatorname{Re}(s) > \tfrac12$ and $s \neq 1$.
4. `rh_of_right` ([RhOfRight.lean#L5](lean:Formalism/GammaFactorNonvanishing/RhOfRight.lean#L5)) gets the Riemann Hypothesis from that half-plane. It uses only Mathlib.

## Step 4 in words

Suppose that $\zeta(s) = 0$, that $s$ is not a trivial zero and that $s \neq 1$. There are three cases.

- If $\operatorname{Re}(s) > \tfrac12$, step 3 says that $\zeta(s) \neq 0$. This is not possible.
- If $\operatorname{Re}(s) = \tfrac12$, the claim is true.
- If $\operatorname{Re}(s) < \tfrac12$, use the [[functional equation|NFXKNDJX9C]] of Mathlib, `riemannZeta_one_sub`:

$$
\zeta(1 - s) = 2 (2\pi)^{-(1-s)} \, \Gamma(1 - s) \cos\!\left(\frac{\pi (1 - s)}{2}\right) \zeta(s) .
$$

Read it at the point $1 - s$, so that the left side is $\zeta(s) = 0$. On the right side, $\operatorname{Re}(1 - s) > \tfrac12$, so $\zeta(1 - s) \neq 0$ by step 3. The factor $2(2\pi)^{-(1-s)}$ is not zero. The [[Gamma function|0V3FZMVB4K]] has no zeros, so $\Gamma(1 - s) \neq 0$. The cosine is zero only when $s = -2k$ for an integer $k$. If $k > 0$, then $s$ is a trivial zero. If $k = 0$, then $s = 0$, but $\zeta(0) = -\tfrac12$. If $k < 0$, then $s \geq 2$, but $\operatorname{Re}(s) < \tfrac12$. Thus the right side is not zero, and this is a contradiction.

So each zero that is not trivial is on the line $\operatorname{Re}(s) = \tfrac12$. This part of the proof is classical. A reader who knows the functional equation can check it in a few minutes.

## The statement that does the work

All the difficulty is in one statement. The Lean code calls it `EveryCharacter` ([EveryCharacter.lean#L13](lean:Development/AutomorphicArithmetic/CharacterBoxes/EveryCharacter.lean#L13)):

```lean
def UpperTheory.EveryCharacter : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ),
    1 / 2 < s.re → (χ ≠ 1 ∨ s ≠ 1) → DirichletCharacter.LFunction χ s ≠ 0
```

In words: for each modulus $N \geq 1$ and each [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$, the [[Dirichlet L-function|24GAZHVTGB]] $L(s, \chi)$ has no zero with $\operatorname{Re}(s) > \tfrac12$. The pole of $\zeta$ at $s = 1$ is the only exception. This is the Generalized Riemann Hypothesis for Dirichlet L-functions, in the form "no zeros to the right of the line". Step 20 of the [timeline](/proof/timeline/) is "GRH", and this is the reason.

The theorem `everyCharacter` ([MainConclusion.lean#L10](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L10)) proves `EveryCharacter`. It is one line:

```lean
theorem UpperTheory.FinalTheorems.everyCharacter : UpperTheory.EveryCharacter :=
  UpperTheory.FinalTheorems.everyCharacter_of_row UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter
```

Below this line is the large part of the proof: more than 175,000 Lean files on theta lifts, automorphic forms, Galois representations and the local Langlands correspondence. The theorem `every_character_of_literature_of_vWin` takes a structure of three statements that the Lean code calls `OpenLiteratureStatements`, and the proof gives each of them from theorems of the Lean code. Milestone M1 makes the map of this part, and the chapters of milestone M3 and later explain it.

## Other results in Main.lean

The same file states four more results. They come from the same statement.

| Lean name | Statement |
|---|---|
| `riemannZeta_eq_zero_re` | the Riemann Hypothesis, in a second form ([L6](lean:Main.lean#L6)) |
| `LFunction_ne_zero_of_half_lt_re` | `EveryCharacter` itself ([L8](lean:Main.lean#L8)) |
| `LFunction_eq_zero_re` | each zero of $L(s, \chi)$ with $0 < \operatorname{Re}(s) < 1$ is on the line $\operatorname{Re}(s) = \tfrac12$ ([L10](lean:Main.lean#L10)) |
| `LFunction_eq_zero_re_of_isPrimitive` | the same for a primitive character, through its functional equation ([L12](lean:Main.lean#L12)) |

The statements are in [Statements.lean](lean:Statements.lean#L3) and use only Mathlib.

## What this page does not say

This page does not say that the proof is correct. Lean accepts a proof only relative to the axioms that the proof uses, and a person must check that the Lean statement says what the standard statement says. The [trust report](/trust/) answers three questions: is the source the same as the release, which axioms does the proof use, and does a second kernel accept it. Until the report says yes, read each sentence of this site as "the Lean code claims".
