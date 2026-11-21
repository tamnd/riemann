---
id: rh-of-every
title: The Riemann Hypothesis from EveryCharacter
decl: Formalism.VW.rh_of_every
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rh-of-right, every-character-def]
concepts: [24GAZHVTGB, JR4QSEFXWF, TXB2F07CC6]
---
## Statement

Suppose that `EveryCharacter` is true. That is: for each $N \geq 1$, each Dirichlet character $\chi$ modulo $N$ and each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, if $\chi \neq 1$ or $s \neq 1$, then $L(s, \chi) \neq 0$. Then the Riemann Hypothesis is true.

The [definition step](/step/every-character-def/) gives `EveryCharacter` in full.

## Proof

By the step [the Riemann Hypothesis from the right half-plane](/step/rh-of-right/), it is enough to show this: if $\operatorname{Re}(s) > \tfrac12$ and $s \neq 1$, then $\zeta(s) \neq 0$.

Let $s$ be such a number. Apply `EveryCharacter` with $N = 1$ and with $\chi$ the trivial character modulo 1. The hypothesis "$\chi \neq 1$ or $s \neq 1$" is true, because $s \neq 1$. So $L(s, \chi) \neq 0$.

The L-function of the trivial character modulo 1 is the zeta function: $L(s, \chi) = \zeta(s)$ for each $s$. This is the Mathlib lemma `LFunction_modOne_eq`. So $\zeta(s) \neq 0$.

## Notes

The proof uses only one character of all the characters that `EveryCharacter` speaks about. The other characters are for the other theorems of `Main.lean`, for example the generalized Riemann hypothesis for Dirichlet L-functions.
