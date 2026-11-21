---
id: green-vwin
title: EveryCharacter from Green, VWin and HypsAlt
decl: UpperTheory.Top.every_character_of_green_v_win
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [every-character-def, vwin-def, zero-free-all-of-green-v-win, imprimitive, green-def, closed-def, definite-side-condition-def, hyps-alt-def]
concepts: [DNKA4WBKDS, 24GAZHVTGB, JR4QSEFXWF, 0C3PN4075R, 9AZ164C298]
routine: []
open: [Formalism.MainNotions.LinkN]
---
## Statement

Assume three inputs. The Lean local name of each input is in parentheses.

1. ($h_G$) The statement `GlobalTheory.GLq.Green`. For each prime $g$, each label datum $L$ and each $d > 0$, there is a map $P \mapsto \tau_P$ from polynomials over $\mathbb{Z}/g$ to complex functions on $\mathrm{GL}_d(\mathbb{F}_g)$ with three properties. For each prime label $P$ (a monic irreducible polynomial of degree $d$ with nonzero constant term), $\tau_P$ is a [[cuspidal|9AZ164C298]] character attached to $L$ and $P$, and $\tau_P(1) = \prod_{i=1}^{d-1} (g^i - 1)$. The map is injective on prime labels. Each cuspidal character is $\tau_P$ for some prime label $P$.
2. ($h_V$) The statement [VWin](/step/vwin-def/), that is, `VWinAt ψ 401` for each primitive Dirichlet character $\psi$.
3. ($h$) A proof that the type `HypsAlt N DefiniteSideCondition` is nonempty, where $N(\mathcal{C})$ is `Closed 𝒞 fun Fm _ => LinkN Fm`. `HypsAlt` is a record of 46 fields about a class $\mathcal{A}$ of families, a selection of bundles and many bounds. `Closed 𝒞 P` means: there is $\varepsilon_1 > 0$ such that for each $\varepsilon \in (0, \varepsilon_1]$ there are thresholds such that $P$ holds for each family of $\mathcal{C}$ with parameter $\varepsilon$ whose constants are above the thresholds. `LinkN` is a bound on a weighted count of twisted places.

Then [EveryCharacter](/step/every-character-def/) holds: for each $N \geq 1$, each [[Dirichlet character|JR4QSEFXWF]] $\chi$ modulo $N$ and each $s$ with $\operatorname{Re}(s) > \tfrac12$ and ($\chi \neq 1$ or $s \neq 1$), the [[Dirichlet L-function|24GAZHVTGB]] has $L(s, \chi) \neq 0$.

## Proof

The proof has two steps.

**Step 1. Primitive characters.** The theorem `zero_free_all_of_green_v_win` takes $h_G$, $h_V$ and $h$ and proves `ZeroFreeAll`. By definition, `ZeroFreeAll` is `ZeroFreeOn fun _ => True`. It says: for each primitive Dirichlet character $\psi$ (a value of the structure `PChar`, with a conductor $N \geq 1$) and each $s$ with $\operatorname{Re}(s) > \tfrac12$, $L(s, \psi) \neq 0$. The [theta matching chapter](/proof/theta-matching/) describes this proof. In short, it takes one record from $h$. It turns $h_G$ into a large implication `TopShapeAlt` by `shape_closed_link_n_of_green`. It feeds the 46 fields of the record into that implication and gets the statement `TopG`. Then `zeroFreeAll_of_topG` with $\lambda = 3/2$ gives `ZeroFreeAll`, and $h_V$ supplies the hosts for each $\psi$ through `supplyChi`.

**Step 2. All characters.** The theorem `imprimitive` proves `ZeroFreeAll → EveryCharacter`. Let $\chi$ be a Dirichlet character modulo $N$ and let $\chi^*$ be the primitive character that induces $\chi$, with conductor $q \mid N$. Mathlib gives the [[Euler product|0C3PN4075R]] relation

$$
L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \bigl(1 - \chi^*(p) \, p^{-s}\bigr),
$$

when $\chi^* \neq 1$ or $s \neq 1$. This condition follows from the hypothesis $\chi \neq 1$ or $s \neq 1$: if $\chi^* = 1$, then $\chi$ is the trivial character, since $\chi$ is the change of level of $\chi^*$. The first factor is not zero by `ZeroFreeAll`, applied to $\chi^*$. For each prime $p$, $|\chi^*(p)| \leq 1$ and $|p^{-s}| = p^{-\operatorname{Re}(s)} < 1$. So $|\chi^*(p) p^{-s}| < 1$, and the factor $1 - \chi^*(p) p^{-s}$ is not zero. A product of nonzero numbers is not zero.

The Lean term is `imprimitive (zero_free_all_of_green_v_win hG hV h)`.

## Notes

The branch does not take any theta input. The inputs `ThetaIntegralsAgree` and `LocalMatching` reach this proof only inside the record $h$. See [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/).

The statement `Green` is about the characters of the finite groups $\mathrm{GL}_d(\mathbb{F}_g)$. The step from it to a statement on Dirichlet L-functions is inside `shape_closed_link_n_of_green` and the record `HypsAlt`. This page does not follow that link.

`ZeroFreeAll` has no exception at $s = 1$. For the trivial character modulo $1$, $L(s, 1)$ is the Riemann zeta function, which has a pole at $s = 1$. In Mathlib the function `DirichletCharacter.LFunction` still has a value at $s = 1$, so the statement is well formed. This page does not check how the chain proves the case $s = 1$ for the trivial character. The step `imprimitive` never needs that case. It applies `ZeroFreeAll` at $s = 1$ only when $\chi \neq 1$, and then $\chi^* \neq 1$.

The step `imprimitive` is a complete and short argument from Mathlib facts. The weight of this branch is in `zero_free_all_of_green_v_win`.
