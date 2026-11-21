---
id: imprimitive
title: From primitive to all Dirichlet characters
decl: UpperTheory.Top.imprimitive
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [JR4QSEFXWF, 24GAZHVTGB, 0C3PN4075R]
routine: [Formalism.HC.PChar.of]
open: [Formalism.HC.ZeroFreeAll]
---
## Statement

Assume `ZeroFreeAll`: for each primitive [[Dirichlet character|JR4QSEFXWF]] $\psi$ and each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, $L(s, \psi) \neq 0$. Here $L$ is the [[Dirichlet L-function|24GAZHVTGB]] of Mathlib, `DirichletCharacter.LFunction`.

Let $N \neq 0$ be a natural number, let $\chi$ be a Dirichlet character modulo $N$ with values in $\mathbb{C}$, and let $s \in \mathbb{C}$. Suppose that $\operatorname{Re}(s) > \tfrac12$, and that $\chi \neq 1$ or $s \neq 1$. Then $L(s, \chi) \neq 0$.

The conclusion is the statement [EveryCharacter](/step/every-character-def/).

## Proof

Let $h$ be the proof of `ZeroFreeAll`. Let $q$ be the conductor of $\chi$, and let $\chi^*$ be the primitive character modulo $q$ that induces $\chi$ (Mathlib `χ.primitiveCharacter`).

1. The conductor $q$ is not zero. The proof gets this from the structure `PChar.of χ`, which packs $q$, $\chi^*$ and the proof that $\chi^*$ is primitive. This is bookkeeping.
2. By $h$ applied to `PChar.of χ`, $L(s, \chi^*) \neq 0$.
3. The proof shows $\chi^* \neq 1$ or $s \neq 1$. If $\chi \neq 1$, suppose $\chi^* = 1$. The lemma `changeLevel_primitiveCharacter` says that $\chi$ is the change of level of $\chi^*$ from $q$ to $N$. The lemma `changeLevel_one` says that the change of level of the trivial character is trivial. So $\chi = 1$, a contradiction. If $s \neq 1$, the claim is immediate.
4. The Mathlib lemma `DirichletCharacter.LFunction_changeLevel`, applied to $q \mid N$ (`conductor_dvd_level`), to $\chi^*$ and to the fact of part 3, gives the [[Euler product|0C3PN4075R]] relation
$$ L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \bigl(1 - \chi^*(p)\, p^{-s}\bigr), $$
where $p$ runs over the prime factors of $N$. The proof rewrites the change of level of $\chi^*$ back to $\chi$ with `changeLevel_primitiveCharacter`.
5. By `mul_ne_zero` and `Finset.prod_ne_zero_iff`, it is enough to show that each factor $1 - \chi^*(p) p^{-s}$ is not zero. Let $p$ be a prime factor of $N$, and suppose $1 - \chi^*(p) p^{-s} = 0$. Then $\chi^*(p) p^{-s} = 1$ (by `linear_combination`).
6. By `DirichletCharacter.norm_le_one`, $|\chi^*(p)| \leq 1$. By `Complex.norm_natCast_cpow_of_pos`, $|p^{-s}| = p^{-\operatorname{Re}(s)}$. Since $p > 1$ and $-\operatorname{Re}(s) < 0$, `Real.rpow_lt_one_of_one_lt_of_neg` gives $p^{-\operatorname{Re}(s)} < 1$. So $|\chi^*(p) p^{-s}| \leq |p^{-s}| < 1$.
7. With part 5, this gives $1 = |1| < 1$, a contradiction.

## Notes

The proof uses `ZeroFreeAll` only once, for the primitive character $\chi^*$. The hypothesis $\operatorname{Re}(s) > \tfrac12$ goes into that use and into part 6, where only $\operatorname{Re}(s) > 0$ is needed.

The proof never uses `ZeroFreeAll` at $s = 1$ for $\chi^* = 1$. By part 3, if $\chi^* = 1$ then $s \neq 1$.

The user of this step is [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/), which applies it to [ZeroFreeAll from Green, VWin and HypsAlt](/step/zero-free-all-of-green-v-win/).
