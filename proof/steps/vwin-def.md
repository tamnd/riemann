---
id: vwin-def
title: The window bound VWin
decl: UpperTheory.Top.VWin
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [JR4QSEFXWF, NN77VYSGXR, 0ADTQBXRMC, 9MPCZ3EAJM, BK9WBMF56G, CZSCNZH8VY, XSGB5K2KEG]
routine: [Formalism.HC.PChar, UpperTheory.Top.VWinAt]
open: []
---
## Statement

`VWin` is the proposition: for each primitive Dirichlet character $\psi$, `VWinAt ψ 401` holds.

Unfolded, `VWin` says the following. Let $\psi$ be a primitive Dirichlet character of conductor $N_\psi$. Let $\varepsilon$ be real with $0 < \varepsilon < \frac{1}{52}$. Let $e : \mathbb{R} \to \mathbb{N}$ be a function with
$$ x^{2 + 8\varepsilon} \le 2^{e(x)} \le 2 x^{2 + 8\varepsilon} \quad \text{for all } x \ge 1. $$
Then there exist a real $J \ge 1$ and a real $X_0$ with the following property. For each real $X \ge X_0$ and each pair of natural numbers $(q, d)$ with `WinPair ε (X^(1/J)) q d`, there is a real $Y$ with $X^{1/J} \le Y$ and $Y^2 \le X$, such that for each real $x$ with $Y \le x \le Y^2$ and each number field $E$ with `IsChiField ψ (e x) q d E`, the statement
$$ \mathrm{VVle}\big(E,\ \lfloor x^{401} \rfloor,\ \sqrt{\exp(x^{\varepsilon})}\big) $$
holds.

## What it means

The Lean local names are these. `ψ` is the character, a `PChar`. `eps` is $\varepsilon$. `e` is the function $e$. `J`, `X0`, `X`, `Y`, `x` are reals. `q` and `d` are natural numbers. `Ct` is the exponent; `VWin` sets `Ct = 401`.

**`PChar`.** A structure with a modulus $N \neq 0$, a Dirichlet character $\chi$ modulo $N$ with values in $\mathbb{C}$, and a proof that $\chi$ is primitive.

**`PageN eps x e`.** The two inequalities $x^{2+8\varepsilon} \le 2^{e} \le 2x^{2+8\varepsilon}$. So $e(x)$ is, up to one, $(2 + 8\varepsilon) \log_2 x$.

**`WinPair eps Y q d`.** A structure with ten fields:

- $q$ is prime, $q \equiv 3 \pmod 8$, and $\frac12 Y^{\varepsilon/5} < \log q \le Y^{\varepsilon/5}$;
- $d$ is prime, $d \equiv 7 \pmod{16}$, and $\frac12 Y^{\varepsilon/5} (\log Y)^2 < \log d \le Y^{\varepsilon/5} (\log Y)^2$;
- $q \mid d + 1$;
- every odd prime $p \le Y^{\varepsilon/5}$ divides $d + 1$.

**`IsChiField ψ e q d E`.** There are $N \neq 0$, a $\mathbb{Q}$-algebra map $j : E \to \mathbb{Q}(\zeta_N)$ and a primitive $N$-th root of unity $\zeta$, with $2^{e+2}, N_\psi, q, d$ all dividing $N$, such that the following holds. For each automorphism $\tau$ of $\mathbb{Q}(\zeta_N)$ and each $a \in \mathbb{N}$ with $\tau(\zeta) = \zeta^a$: $\tau$ fixes $j(E)$ if and only if $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$, and the Jacobi symbols $\left(\frac{a}{q}\right)$ and $\left(\frac{a}{d}\right)$ are $1$. So $E$ is the subfield of $\mathbb{Q}(\zeta_N)$ cut out by these four conditions.

**`VAt ψ eps Ct q d e x`.** For each number field $E$ with `IsChiField ψ e q d E`, `VVle E ⌊x^Ct⌋ (√(exp(x^eps)))` holds.

**`VVle E t B`.** For each algebraic closure $\Omega$ of $E$ and each family `ld` of local data `LData E Ω p` (one for each prime $p$):

1. for each prime $p$ and each $0 < e < t$, the length `shaLen (ld p) e` is finite;
2. for each finite set $S$ of primes,
$$ \sum_{l \in S} \log l \sum_{e=1}^{t-1} \mathrm{shaLen}(ld\ l, e) \le B. $$

The [VWin chapter](/proof/vwin/) reads `shaLen (ld l) e` as the length, as a $\mathbb{Z}_l$-module, of a Tate-Shafarevich group in $H^1$ with coefficients $\mathbb{Q}_l/\mathbb{Z}_l(-e)$. This page does not unfold `LData` or `shaLen`.

So `VWin` says, in short: for each primitive $\psi$, the weighted sum of these lengths over $1 \le e < \lfloor x^{401} \rfloor$ is at most $\exp(\frac12 x^{\varepsilon})$, for every field $E$ in the family, at every scale $x$ in a window $[Y, Y^2]$ that the statement may choose.

## Notes

The quantifiers have this order: $\psi$, $\varepsilon$, $e$; then $J$ and $X_0$; then $X$, $q$, $d$; then $Y$; then $x$ and $E$. So $Y$ may depend on $q$ and $d$. $J$ and $X_0$ depend on $\psi$, $\varepsilon$ and the function $e$.

The bound in `VAt` is written $\sqrt{\exp(x^\varepsilon)}$. This equals $\exp(\frac12 x^{\varepsilon})$.

`VVle` quantifies over all families `ld` of local data. So the bound must hold for each choice that `LData` allows.

If for some $X$ no pair $(q, d)$ satisfies `WinPair`, the statement is empty for that $X$. This page does not check how often such pairs exist.

The constants $401$, $\frac{1}{52}$ and $2 + 8\varepsilon$ are fixed in the code. The [VWin chapter](/proof/vwin/) notes that their reasons belong to the part of the proof that uses `VWin`.

The proof of `VWin` from the Galois row is [VWin from Row0b](/step/vwin-of-row/).
