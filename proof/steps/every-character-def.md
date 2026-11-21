---
id: every-character-def
title: The statement EveryCharacter
decl: UpperTheory.EveryCharacter
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
concepts: [JR4QSEFXWF, 24GAZHVTGB, DNKA4WBKDS]
---
## Statement

`EveryCharacter` is the statement: for each natural number $N \geq 1$, each Dirichlet character $\chi$ modulo $N$ with values in $\mathbb{C}$, and each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, if $\chi \neq 1$ or $s \neq 1$, then

$$L(s, \chi) \neq 0.$$

## What it means

- $N$ is the modulus. The Lean code asks for `[NeZero N]`, that is $N \neq 0$.
- $\chi$ is a Dirichlet character modulo $N$: a function on $\mathbb{Z}/N\mathbb{Z}$ that is multiplicative and zero outside the units. In Lean it is `DirichletCharacter ℂ N`.
- $L(s, \chi)$ is `DirichletCharacter.LFunction χ s` of Mathlib: the sum $\sum_{n \geq 1} \chi(n) n^{-s}$ for $\operatorname{Re}(s) > 1$, continued to all of $\mathbb{C}$.
- The condition "$\chi \neq 1$ or $s \neq 1$" excludes one point: the trivial character at $s = 1$. There $L(s, \chi)$ has a pole, and the Lean value is a convention.

So `EveryCharacter` says that no Dirichlet L-function has a zero in the half-plane $\operatorname{Re}(s) > \tfrac12$. With the functional equation, that is the generalized Riemann hypothesis for Dirichlet L-functions. The file `Statements.lean` has the same statement under the name `DirichletLNonvanishingRightOfHalf`, and `Main.lean` proves it with the theorem `LFunction_ne_zero_of_half_lt_re := allChi`.

## Notes

For a character that is not primitive, $L(s, \chi)$ has extra zeros from the Euler factors at the primes that divide $N$. These zeros have real part $0$, so the statement does not see them.
