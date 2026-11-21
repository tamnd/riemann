---
id: riemann-hypothesis
title: The Riemann Hypothesis
decl: riemannHypothesis
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rh-of-all]
concepts: [VCGF9YR36X, TXB2F07CC6]
---
## Statement

Let $\zeta$ be the Riemann zeta function, continued to all of $\mathbb{C}$. Let $s \in \mathbb{C}$ with $\zeta(s) = 0$. Suppose that $s$ is not one of the trivial zeros $-2, -4, -6, \dots$, and that $s \neq 1$. Then $\operatorname{Re}(s) = \tfrac12$.

This is the definition `RiemannHypothesis` of Mathlib. In Lean it reads: for each $s$, if `riemannZeta s = 0`, if there is no natural number $n$ with $s = -2(n + 1)$, and if $s \neq 1$, then `s.re = 1 / 2`.

The hypothesis $s \neq 1$ is there because of a convention. The function $\zeta$ has a pole at $s = 1$, and Mathlib gives `riemannZeta 1` a finite value. The value is not zero, so the hypothesis excludes nothing that matters. The [trust page](/trust/), question Q4, discusses the statement.

## Proof

The theorem is the theorem [rhOfAll](/step/rh-of-all/). The Lean proof is one name, with no other step.

The file `Main.lean` has four more theorems of the same form. Each one is a name for a theorem in `Supplements/Kernels/MainTheorems.lean`. The [overview](/proof/) lists them.

## Notes

The Lean name `riemannHypothesis` and the type `RiemannHypothesis` are different things. The type, with a capital R, is the statement in Mathlib. The theorem, with a small r, is the claim that the statement is true.
