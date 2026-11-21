---
title: What to learn first
description: The concepts that the proof needs, in the order that you need them, with the reason for each one and links to Math 2.0.
lead: The proof uses complex analysis and analytic number theory at the top, and automorphic forms and Galois representations below. This page gives the concepts in the order that you need them. For each one it tells where the proof uses it, so you know why you learn it.
---
## How to use this page

The path has three stages. Stage 1 is enough to read [the proof in one page](/proof/) and to check its classical part yourself. Stage 2 is enough to understand the statement that does all the work. Stage 3 is the background of the large part of the Lean code. Each name links to its page in [Math 2.0](https://math2.tamnd.com), which has its own learning paths and exercises. Go through a stage in order. Skip a step when you know it.

## Stage 1. The top of the proof

At the end of this stage you can read the four steps at the top of the proof and check each one with pen and paper.

1. [[Complex numbers|0CBAB9QQ9X]]. The zeros of $\zeta$ are complex numbers $s = \sigma + it$, and the Riemann Hypothesis is a claim about their real part $\sigma = \operatorname{Re}(s)$.
2. [[Holomorphic functions|0DG0Z72CQD]]. The zeta function and the L-functions are holomorphic. A holomorphic function that is not zero has isolated zeros, so "the zeros of $\zeta$" is a set of points.
3. [[Analytic continuation|0M3YQJ81NB]] and [[meromorphic functions|0NSD1TPHR0]]. The series $\sum n^{-s}$ converges only for $\operatorname{Re}(s) > 1$. The function $\zeta$ on all of $\mathbb{C}$ is its continuation. It has one pole, at $s = 1$, which is why the Lean statement excludes $s = 1$.
4. The [[Gamma function|0V3FZMVB4K]] and its [[reflection formula|WF7KQAQTS2]]. The functional equation contains $\Gamma(1 - s)$. The proof needs one fact about it: $\Gamma$ has no zeros.
5. The [[Riemann zeta function|TXB2F07CC6]] and the [[Euler product formula|0C3PN4075R]]. The Euler product shows that $\zeta(s) \neq 0$ for $\operatorname{Re}(s) > 1$. It also shows why the zeros of $\zeta$ carry information about the primes.
6. The [[functional equation|NFXKNDJX9C]] of $\zeta$. It relates $\zeta(s)$ and $\zeta(1 - s)$. Step 4 of the overview uses it to move a zero from the left of the line $\operatorname{Re}(s) = \tfrac12$ to the right of it.
7. The [[Riemann hypothesis|VCGF9YR36X]]. Read the standard statement and compare it with the Lean statement on [the trust page](/trust/), question Q4.

## Stage 2. The statement that does the work

The Lean proof gets the Riemann Hypothesis from a statement about all Dirichlet L-functions at once. This stage explains that statement.

1. [[Dirichlet characters|JR4QSEFXWF]]. A Dirichlet character modulo $N$ is a function $\chi$ on the integers that is periodic with period $N$, multiplicative, and zero on the integers that share a factor with $N$. The trivial character modulo 1 is the constant 1.
2. [[Dirichlet L-functions|24GAZHVTGB]]. The function $L(s, \chi) = \sum \chi(n) n^{-s}$, continued to all of $\mathbb{C}$. For the trivial character modulo 1 it is $\zeta(s)$. This is how the proof gets from all characters to $\zeta$.
3. The [[Gauss sum|EQ6A3ZN48K]]. It is the constant in the functional equation of $L(s, \chi)$ for a primitive character. The theorem `LFunction_eq_zero_re_of_isPrimitive` of `Main.lean` uses that functional equation.
4. The [[generalized Riemann hypothesis|DNKA4WBKDS]]. The statement `EveryCharacter` says that $L(s, \chi) \neq 0$ when $\operatorname{Re}(s) > \tfrac12$, for each Dirichlet character, with the pole of $\zeta$ as the only exception. That is the generalized Riemann hypothesis for Dirichlet L-functions, in the form "no zeros to the right of the line".

## Stage 3. The large part

Below `EveryCharacter` the Lean code has more than 175,000 files. The [chapters](/proof/trunk/) explain its structure. The names of the Lean modules show the subjects that it uses: theta correspondences, unitary groups, automorphic forms, Galois representations and the local Langlands correspondence. Learn them in this order. Each group depends on the groups before it.

**Number fields and their characters.** The large part works over number fields and their completions, not only over $\mathbb{Q}$.

- [[Number fields and algebraic integers|7MW1HYF05V]], [[quadratic fields|7E23FBM9NQ]] and [[ramification|E7WHZXQ0WF]].
- [[Local fields|J85FZEQG38]] and [[p-adic numbers|BT6T702C28]].
- [[Adeles and ideles|EDKB3VMK08]] and the [[adele ring|NYJFYZ0B4M]].
- [[Hecke characters|KPYFGB342X]] and the [[Dedekind zeta function|R3AR5JK8WW]]. A Dirichlet character is a Hecke character of $\mathbb{Q}$.
- [[Class field theory|AA943HVK6Z]] and the [[Artin reciprocity law|7938EKMMVR]].

**Groups and their representations.** The objects of the large part are representations of groups such as unitary groups.

- [[Representation theory|S60Z63NM98]], [[unitary representations|74BPYJNZTM]] and [[admissible representations|E15H5E8FP4]].
- [[Hermitian forms|48P4A1CX85]] and the [[unitary group|0R9R0Y1HDK]] of a hermitian form.
- [[Reductive groups|2XS84PWE3S]] and [[Haar measure|CE0V9686M8]].
- [[Discrete series representations|2CKZETC3QA]] of real groups.

**Automorphic forms.** The large part moves the question about $L(s, \chi)$ to a question about automorphic forms.

- [[Modular forms|GWKN5VG78A]], [[cusp forms|A50Y012RBP]], [[Eisenstein series|3NZBZXYWAJ]] and the [[Petersson inner product|EMZTGD63V3]].
- [[Hecke operators|S4SV3QZ8B1]] and [[Hecke algebras|5J2P2AGY4N]].
- [[Automorphic forms|68SJQEC11F]] on a reductive group, and [[Siegel modular forms|85KTS2VRNV]].
- [[Theta functions|2F5CYQJVAF]], the [[Poisson summation formula|GARGJYSGFG]] and the [[Mellin transform|KPZ1S446MN]]. These give the classical proof of the functional equation, and the same ideas come back as theta lifts.

**Theta lifts.** Many modules of the proof have "Theta" in their path.

- The [[Weil representation|CD20HVR9V8]].
- The [[theta correspondence|6WB6TKE70H]] between a unitary group and another unitary group.

**Galois representations and Langlands.** The trunk of the proof passes through a statement about Galois representations and the local Langlands correspondence.

- [[Galois representations|QW17YJ6ZCT]].
- The [[Langlands program|J9T2M084W5]] and the [[local Langlands conjectures|9E45NBX1G0]].
- [[Shimura varieties|53HPW59SJC]], [[abelian varieties|37CPGVHTAR]] and [[complex multiplication|D3HEJTVY7G]].

Milestone M4 turns each group into a path with steps and exercises in Math 2.0.

## For a reader who knows Lean

You can read the top of the proof with only Mathlib. Read `Statements.lean` and `Main.lean` first, then `Supplements/Kernels/MainTheorems.lean`. The [code page](/code/) shows the trunk, and each declaration has a page with a plain reading of its statement, the chain from `riemannHypothesis` and its parts.
