---
id: green-of-regular
title: Green from regular characters
decl: GlobalTheory.GreenBridge.green_of_regular
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [green-def]
concepts: [9AZ164C298]
routine: [GlobalTheory.GLq.Mt, GlobalTheory.GLq.hc, GlobalTheory.GreenBridge.KK, GlobalTheory.GreenBridge.emb_injective, GlobalTheory.GreenBridge.exists_emb_eq, GlobalTheory.GreenBridge.mem_rootsBar_iff, GlobalTheory.GreenBridge.ne_zero_of, GlobalTheory.GreenBridge.pow_self_of, GlobalTheory.GreenBridge.rootOf_spec, GlobalTheory.GreenBridge.root_pow, GlobalTheory.GreenBridge.root_unit, GlobalTheory.GreenBridge.unit_pow]
open: [GlobalTheory.GLq.IsPrimeLab, GlobalTheory.GLq.thetaOf, GlobalTheory.GreenBridge.pow_inj, GlobalTheory.GreenBridge.regular_iff, GlobalTheory.GreenBridge.rootOf, GlobalTheory.GreenBridge.sum_range_eq_roots, GlobalTheory.GreenBridge.th, GlobalTheory.GreenBridge.th_apply, GlobalTheory.GreenBridge.th_inj, GlobalTheory.GreenBridge.th_pow, GlobalTheory.GreenBridge.th_surj, GlobalTheory.GreenBridge.thetaOf_pow, GlobalTheory.GreenExists.pow_eq_self_iff, GlobalTheory.GreenExists.rootsBar_eq, GlobalTheory.Published.GreenRegularCharacters, GlobalTheory.Published.IsRegularChar]
---
## Statement

Assume `GreenRegularCharacters`. It says the following. Let $g$ be a prime, let $d > 0$, and let $K$ be a field extension of $\mathbb{Z}/g$ of degree $d$. Write $G_d = \mathrm{GL}_d(\mathbb{Z}/g)$. A character $\theta : K^\times \to \mathbb{C}^\times$ is regular (`IsRegularChar g d θ`) when the characters $\theta^{g^i}$ for $0 \leq i < d$ are distinct. Then there is a map $\theta \mapsto \tau_\theta$ from characters of $K^\times$ to functions $G_d \to \mathbb{C}$ such that:

1. for each regular $\theta$, $\tau_\theta$ is [[cuspidal|9AZ164C298]] (`IsCusp`), $\tau_\theta(1) = \prod_{i=1}^{d-1}(g^i - 1)$, and for each $y \in G_d$ with irreducible characteristic polynomial $f_y$ and each $z \in K^\times$ with $f_y(z) = 0$, $\tau_\theta(y) = (-1)^{d-1} \sum_{i=0}^{d-1} \theta(z^{g^i})$;
2. for regular $\theta$ and $\theta'$, $\tau_\theta = \tau_{\theta'}$ if and only if $\theta' = \theta^{g^i}$ for some $i < d$;
3. each cuspidal $\chi : G_d \to \mathbb{C}$ is $\tau_\theta$ for some regular $\theta$.

Then [the statement Green](/step/green-def/) holds.

## Proof

Fix a prime $g$, a label datum $L$, and $d > 0$. Let $K = \mathbb{F}_{g^d}$ (the Lean `KK g d`, the Mathlib `GaloisField g d`), and let $e : K \to \overline{\mathbb{F}}_g$ be a fixed embedding (`emb g d`). Apply the hypothesis to $g$, $d$ and $K$, with the fact $[K : \mathbb{Z}/g] = d$ from `GaloisField.finrank`. This gives a map $\tau^G$ and the three properties above, named $h_1$, $h_2$, $h_3$.

**Two tools.** For $x \in \overline{\mathbb{F}}_g$, the code defines a character $\mathrm{th}(x) : K^\times \to \mathbb{C}^\times$ (`th L hd x`). If $x^{g^d - 1} = 1$, it is the character that sends a fixed generator $u$ of $K^\times$ with $e(u) = \gamma_d$ to $\mathrm{teich}(x)$. Otherwise it is the trivial character. The lemmas on $\mathrm{th}$ are these. `th_apply`: $\mathrm{th}(x)(k) = \theta_{L,d}(x, e(k))$. `th_pow`: $\mathrm{th}(x^m) = \mathrm{th}(x)^m$. `th_inj`: $\mathrm{th}$ is injective on the $x$ with $x^{g^d-1} = 1$. `th_surj`: each character of $K^\times$ is $\mathrm{th}(x)$ for some $x$ with $x^{g^d-1} = 1$. `regular_iff`: for such $x$, $\mathrm{th}(x)$ is regular if and only if the elements $x^{g^i}$, $0 \leq i < d$, are distinct. Also, for a polynomial $P$, `rootOf P` is a chosen root of $P$ in $\overline{\mathbb{F}}_g$ (and $1$ if $P$ has no root).

**Regularity.** For each prime label $P$ of degree $d$, the character $\mathrm{th}(\mathrm{rootOf}\ P)$ is regular. The root $x = \mathrm{rootOf}\ P$ satisfies $x^{g^d - 1} = 1$ (`root_unit`). By `regular_iff`, it is enough that the $x^{g^i}$, $i < d$, are distinct. This is `pow_inj`, since $P$ is irreducible of degree $d$.

**The map.** Define $\tau_P = \tau^G(\mathrm{th}(\mathrm{rootOf}\ P))$. The proof checks the three clauses of `Green`.

1. *Cuspidal, degree and values.* Let $P$ be a prime label, and let $x_0 = \mathrm{rootOf}\ P$. By $h_1$, $\tau_P$ is cuspidal and has the right degree. For the value formula, let $x$ be a root of $P$, let $y \in G_d$ with irreducible characteristic polynomial $f$, and let $z \in \overline{\mathbb{F}}_g$ be a root of $f$. The constant term of $f$ is not zero, because $\det y \neq 0$ (`Matrix.det_eq_sign_charpoly_coeff`). So $f$ is a prime label of degree $d$, and $z^{g^d-1} = 1$. By `exists_emb_eq`, there is $k \in K$ with $e(k) = z$, and $k \neq 0$. Since $e$ is injective, $f(k) = 0$. Now $h_1$ gives $\tau_P(y) = (-1)^{d-1} \sum_{i<d} \mathrm{th}(x_0)(k^{g^i})$. By `th_apply`, each term is $\theta_{L,d}(x_0, z^{g^i})$. The roots of $P$ are the $x_0^{g^j}$ (`rootsBar_eq`), so $x = x_0^{g^j}$ for some $j$. By `sum_range_eq_roots`, both $\sum_{i<d} F(z^{g^i})$ and $\sum_{i<d} F((z^{g^j})^{g^i})$ equal the sum of $F$ over the roots of $f$, with $F = \theta_{L,d}(x_0, \cdot)$. By `thetaOf_pow`, $\theta_{L,d}(x_0, (z^{g^j})^{g^i}) = \theta_{L,d}(x_0^{g^j}, z^{g^i})$. So the sum is $\sum_{i<d} \theta_{L,d}(x, z^{g^i})$, as `IsCuspOf` asks.
2. *Injective.* Let $P$, $P'$ be prime labels with $\tau_P = \tau_{P'}$. By $h_2$, $\mathrm{th}(\mathrm{rootOf}\ P') = \mathrm{th}(\mathrm{rootOf}\ P)^{g^i}$ for some $i$. By `th_pow` and `th_inj`, $\mathrm{rootOf}\ P' = (\mathrm{rootOf}\ P)^{g^i}$. This element is a root of $P$ (`root_pow`). So $P$ and $P'$ are monic irreducible polynomials with a common root, and both equal its minimal polynomial (`minpoly.eq_of_irreducible_of_monic`). So $P = P'$.
3. *Surjective.* Let $\chi$ be cuspidal. By $h_3$, $\chi = \tau^G(\theta)$ for a regular $\theta$. By `th_surj`, $\theta = \mathrm{th}(x)$ with $x^{g^d-1} = 1$. By `regular_iff`, the $x^{g^i}$, $i < d$, are distinct. Let $P$ be the minimal polynomial of $x$ over $\mathbb{Z}/g$. It is irreducible. Since $x^{g^d} = x$, `pow_eq_self_iff` gives $\deg P \mid d$. If $\deg P < d$, then $x^{g^{\deg P}} = x = x^{g^0}$, against distinctness. So $\deg P = d$. Also $P(0) \neq 0$ because $x \neq 0$. So $P$ is a prime label. Its chosen root is $\mathrm{rootOf}\ P = x^{g^j}$ for some $j < d$ (`rootsBar_eq`). By `th_pow`, $\mathrm{th}(\mathrm{rootOf}\ P) = \theta^{g^j}$, and $h_2$ gives $\tau^G(\theta) = \tau^G(\mathrm{th}(\mathrm{rootOf}\ P)) = \tau_P$.

The steps on roots in $\overline{\mathbb{F}}_g$ (`root_unit`, `root_pow`, `ne_zero_of`, `pow_self_of`, `unit_pow`, `mem_rootsBar_iff`, `rootOf_spec`, `emb_injective`) are routine facts about finite fields.

## Notes

The dependency list of the index has `GlobalTheory.GLq.hc`. The proof does not use this definition. The name `hc` in the proof is a local name for the cuspidality fact from $h_1$. The index matches it with the global name by mistake.

The two statements differ in how they index the characters. `GreenRegularCharacters` uses regular characters of $K^\times$ up to Frobenius conjugation. `Green` uses prime labels, that is, Frobenius orbits of elements of $\overline{\mathbb{F}}_g$ of degree $d$. The label datum $L$ links the two through the map $x \mapsto \mathrm{th}(x)$.

The hypothesis `GreenRegularCharacters` is the field `greenRegularCharacters` of `UnitaryGroupThirdPlaceHypotheses`. The step [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) applies this theorem to that field.
