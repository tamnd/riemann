---
id: rh-of-right
title: The Riemann Hypothesis from the right half-plane
decl: Formalism.VW.rh_of_right
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
concepts: [NFXKNDJX9C, 0V3FZMVB4K, TXB2F07CC6, VCGF9YR36X]
---
## Statement

Suppose that $\zeta(s) \neq 0$ for each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$ and $s \neq 1$. Then the Riemann Hypothesis is true: each zero $s$ of $\zeta$ that is not a trivial zero and not $1$ has $\operatorname{Re}(s) = \tfrac12$.

## Proof

Let $s$ be a zero of $\zeta$, not a trivial zero, with $s \neq 1$. Compare $\operatorname{Re}(s)$ with $\tfrac12$. There are three cases.

**Case $\operatorname{Re}(s) > \tfrac12$.** The hypothesis gives $\zeta(s) \neq 0$. This is a contradiction, so this case does not occur.

**Case $\operatorname{Re}(s) = \tfrac12$.** This is the claim.

**Case $\operatorname{Re}(s) < \tfrac12$.** We show that this case does not occur. Put $u = 1 - s$. Then $\operatorname{Re}(u) = 1 - \operatorname{Re}(s) > \tfrac12$.

First, $s \neq 0$, because $\zeta(0) = -\tfrac12$ (Mathlib, `riemannZeta_zero`). So $u \neq 1$. Also $u$ is not $0, -1, -2, \dots$, because $\operatorname{Re}(u) > \tfrac12$.

The functional equation of Mathlib (`riemannZeta_one_sub`) says: if $u$ is not $0, -1, -2, \dots$ and $u \neq 1$, then

$$\zeta(1 - u) = 2\,(2\pi)^{-u}\,\Gamma(u)\,\cos\!\left(\frac{\pi u}{2}\right)\zeta(u).$$

Here $1 - u = s$, so the left side is $\zeta(s) = 0$. We show that each factor on the right is not zero.

- $2 \neq 0$, and $(2\pi)^{-u} \neq 0$ because $2\pi \neq 0$.
- $\Gamma(u) \neq 0$, because $\operatorname{Re}(u) > 0$ (Mathlib, `Complex.Gamma_ne_zero_of_re_pos`).
- $\zeta(u) \neq 0$, by the hypothesis, because $\operatorname{Re}(u) > \tfrac12$ and $u \neq 1$.
- $\cos(\pi u / 2) \neq 0$. Suppose that it is zero. Then $\pi u / 2 = (2k + 1)\pi / 2$ for an integer $k$, so $u = 2k + 1$ and $s = -2k$. If $k < 0$, then $\operatorname{Re}(s) = -2k \geq 2$, which is not less than $\tfrac12$. If $k = 0$, then $s = 0$, which we excluded. If $k > 0$, then $s = -2k = -2((k - 1) + 1)$ is a trivial zero, which we excluded.

So the right side is not zero, but the left side is zero. This is a contradiction.

## Notes

This step is classical and uses only Mathlib. The Lean proof follows the argument above line by line. The case split on $k$ and the conversions between integers, natural numbers and complex numbers take most of its lines.

Mathlib writes the functional equation with $\cos$ and $\Gamma(u)$, not with the completed zeta function $\Lambda(s) = \pi^{-s/2}\Gamma(s/2)\zeta(s)$. The two forms are equivalent.
