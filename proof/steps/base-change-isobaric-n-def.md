---
id: base-change-isobaric-n-def
title: The statement BaseChangeIsobaricN
decl: PositivityTheory.Rg.BcN.BaseChangeIsobaricN
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [0R9R0Y1HDK, 68SJQEC11F, NYJFYZ0B4M, 9AZ164C298, RDV3C0PXTH]
routine: [GlobalTheory.CuspRep.Sm, GlobalTheory.CuspRep.SmIrr, GlobalTheory.UnitaryBC.UA]
open: [GlobalTheory.UnitaryBC.IsAutRepU, PositivityTheory.Rg.BcN.IsBaseChangeN]
---
## Statement

`BaseChangeIsobaricN` is a definition of type `Prop`. It states the following.

Let $E$ be a CM number field, and let $E^+$ be its maximal real subfield. Suppose that for each finite place $w$ of $E$ (a height one prime of $\mathcal{O}_E$), the extension $\mathcal{O}_E / \mathcal{O}_{E^+}$ is unramified at $w$. Let $n \ge 1$. Let $\pi$ be a complex subspace of the functions $U_n(\mathbb{A}_E) \to \mathbb{C}$ with `IsAutRepU π`. Then there exist

- an integer $c$ and positive sizes $N_0, \dots, N_{c-1}$ with $h : \sum_i N_i = n$,
- for each $i$, a subspace $V_i$ of `Sm E (N i)`,
- for each $i$ and each finite place $w$, an irreducible smooth representation $\sigma_{i,w}$ of $\mathrm{GL}_{N_i}(E_w)$,
- for each $i$ and each embedding $\tau : E \to \mathbb{C}$, a multiset $m_{i,\tau}$ of complex numbers,
- for each finite place $w$, an irreducible smooth representation $P_w$ of $\mathrm{GL}_n(E_w)$,

such that `IsBaseChangeN π h V σ m P` holds.

## The objects

- `UA E n` is the subgroup of $\mathrm{GL}_n(\mathbb{A}_E)$ of the $g$ with $\bar g^{T} g = 1$. Here the bar is complex conjugation of $E$ on the finite adeles and the usual complex conjugation at the infinite places (the involution `conjAd`). So `UA E n` is the adelic points of the unitary group in $n$ variables for the identity form.
- `Sm E a` is the space of functions $\varphi : \mathrm{GL}_a(\mathbb{A}_E) \to \mathbb{C}$ that are smooth in the archimedean variable, read through a chart at each point.
- `SmIrr G` is a structure: a complex vector space with a representation $\rho$ of $G$ that is smooth and irreducible.
- `IsAutRepU π` has four fields. `aut`: each $\varphi \in \pi$ is an automorphic form on `UA E n` (continuous, left invariant under the rational points, fixed by an open subgroup of the finite part, and $K_\infty$-finite). `stable`: $\pi$ is stable under right translation. `ne_bot`: $\pi \ne 0$. `irred`: every stable subspace of $\pi$ is $0$ or $\pi$.

`IsBaseChangeN π h V σ m P` is a structure with ten fields.

1. `pos`: each $N_i > 0$.
2. `discrete`: each $V_i$ is in the discrete spectrum (`IsDiscrete`: automorphic, square integrable, stable, nonzero and irreducible).
3. `csd`: each $V_i$ satisfies `CsdAsc`: there are $a$, $d$ and a unitary, normalized, conjugate self-dual cuspidal representation $P$ of $\mathrm{GL}_a$ such that $V_i$ embeds in the representation induced from the $d$ twists of $P$ by powers of $|\cdot|$ (`AscEmb`, a Speh-type residual representation).
4. `loc`: $\sigma_{i,w}$ is the local component of $V_i$ at $w$: there is a nonzero equivariant map from $\sigma_{i,w}$ into $V_i$.
5. `inf`: $m_{i,\tau}$ is the infinitesimal character of $V_i$ at $\tau$, with $N_i$ entries.
6. `sub`: $P_w$ is a subquotient of the parabolic product of the $\sigma_{i,w}$ along the block sizes $N_i$.
7. `unram`: if $\pi$ is unramified at $w$, then $P_w$ is spherical for $\mathrm{GL}_n(\mathcal{O}_w)$.
8. `inert`: let $w$ be a finite place, $s$ a ring map of $E_w$ that extends the complex conjugation of $E$, $\varpi \in E_w$ and $q$ a natural number with `IsUnramInv ϖ s q` (by its name, $w$ is inert and unramified with uniformizer $\varpi$ and residue size $q$). If $\pi$ has the Satake parameter $\alpha$ at $w$ for the local unitary group (`HasSatAt`), then the Satake parameter of $P_w$ is `bcParam n α`, the multiset $\{\alpha_j\} \cup \{\alpha_j^{-1}\}$ with one extra $1$ when $n$ is odd.
9. `split`: if $w$ is split over $E^+$, then $P_w$ is the local component of $\pi$ along the identification of the local unitary group with $\mathrm{GL}_n(E_w)$.
10. `weight`: if $\pi$ has weight $\lambda$ at $\tau$, then $\sum_i m_{i,\tau}$ equals `infOfWeight λ`, the multiset $\{\lambda_k + \frac{n-1}{2} - k\}$.

In words, $\pi$ has an isobaric base change $V_0 \boxplus \dots \boxplus V_{c-1}$ to $\mathrm{GL}_n$ over $E$, with local components $P_w$ that match $\pi$ at split places and at unramified places, and with matching weights.

## Notes

By its name, the final `N` stands for the general rank $n$. The definition asks for the local datum $P_w$ at every finite place, not only at almost all places. At a place that is not split and where $\pi$ is ramified, the conditions on $P_w$ are `sub` and possibly `inert`.

The proof of `BaseChangeIsobaricN` is [Isobaric base change holds](/step/base-change-n/).
