---
id: tlift-k-def
title: The theta lift statement TLiftK
decl: UpperTheory.TP.TLiftK
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [6WB6TKE70H, 0R9R0Y1HDK, KPYFGB342X, 68SJQEC11F, WXGM3VWEK6]
routine: [Formalism.BasicNotions.DomWeight, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chr, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.HasExp, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc, GlobalTheory.LFun.IsHecke, GlobalTheory.UnitaryBC.HasWeightAt, GlobalTheory.UnitaryBC.IsAutRepU, GlobalTheory.UnitaryBC.UA, GlobalTheory.WeilM.ResEtaPow, UpperTheory.TP.W.GoodK, UpperTheory.TP.cj]
open: [UpperTheory.TP.IsLift]
---
## Statement

`TLiftK` is a definition. It is a proposition with no parameters. It says the following.

Let $E$ be a CM number field, let $F = E^+$ be its maximal real subfield, and let $c$ be the complex conjugation of $E$ over $F$ (the Lean `cj E`). Let $B$ be a base (the structure `Base F E`) that satisfies `W.GoodK c B`. Let $n \geq 1$, and let $X$ be a space of rank $n$ (the structure `Spc F E n`) with Gram matrix $J_X = 1$ and with `X.IsHerm c B n 0`. Then there is $d_0 \in \mathbb{N}$ with this property. Let $d \geq d_0$. Let $W$ be a space of rank $d$ and $\delta \in E$, with $J_W = \delta \cdot 1$ and `W.IsSkew c B d 0`. Let $\chi_X, \chi_W$ be characters of $\mathbb{A}_E^\times$ (the type `Chr F E`), and let $m_X, m_W$ be integer functions on the infinite places of $F$. Suppose that:

- $\chi_X$ and $\chi_W$ are Hecke characters (`IsHecke`),
- `ResEtaPow` holds for $\chi_X$ with $n$ and for $\chi_W$ with $d$,
- `HasExp B.emb χX mX` and `HasExp B.emb χW mW` hold.

Let $U$ be a space of functions on $U_n(\mathbb{A}_E)$ (the Lean `UA E n`, a subgroup of $\mathrm{GL}_n(\mathbb{A}_E)$) with `IsAutRepU U`. Let $\lambda_w$ be a dominant weight of rank $n$ for each infinite place $w$ of $F$, such that $U$ has the weight $\lambda_w$ at the embedding `(B.emb w).1` for each $w$. Suppose that $d + m_W(w) \leq 2 \lambda_{w,k}$ for each $w$ and each index $k$. Then there is a space $U'$ of functions on $U_d(\mathbb{A}_E)$ with `IsLift B χX χW mX mW lam U U'`.

## What it means

The objects are these.

- `Base F E` is a structure with an additive character $\psi$ of $\mathbb{A}_F$, an embedding `emb w` of $E$ into $\mathbb{C}$ over each infinite place $w$ of $F$, two integer functions `mα`, `mβ`, a finite set $P$ of finite places of $F$ with an $F$-embedding of $E$ into $F_v$ for each $v \in P$, and one more place $v_1$ with such an embedding.
- `GoodK c B` has six fields. `cm`: $E/F$ is a CM extension with conjugation $c$. `galois`: $E$ has an element $x$ with $x^2 = -d'$ for an integer $d' > 0$. `unram`: $\mathcal{O}_E$ is unramified over $\mathcal{O}_F$. `std`: $\psi$ is standard (`IsStd`). `inert`: at each inert place $v$, $2 \notin v$, $N(v) > 3$, and $\psi$ is unramified at $v$. `psiP`: $\psi$ is unramified at each $v \in P$.
- `Spc F E n` is a structure with a Gram matrix $J \in M_n(E)$, an $\mathcal{O}_E$-submodule $L$ of $E^n$, a complex matrix $\theta_w$ for each infinite place $w$, and a matrix in $\mathrm{GL}_n(F_v)$ for each finite place $v$.
- `IsHerm c B X n 0` says: $c(J_{ji}) = J_{ij}$; at each infinite place, the image of $J$ has signature $(n, 0)$, so the form is positive definite; $L$ is a lattice; $L$ is its own dual for the form $x^{T} J c(y)$; $\theta_w$ is a Cartan involution for $J$; and the basis at each $v \in P$ splits $L$.
- `IsSkew c B W d 0` says the same for a skew-hermitian $J$: $c(J_{ji}) = -J_{ij}$, $i J$ has signature $(d, 0)$ at each infinite place, $L$ is a lattice, $L$ is self dual for the trace form, and the Cartan and basis clauses hold.
- `IsHecke χ` says: $\chi$ is continuous and trivial on $E^\times$.
- `ResEtaPow K χ n` here says: for each idele $t$ of $F$, $\chi(t) = 1$ if $t \in F^\times \cdot N(\mathbb{A}_E^\times)$, and $\chi(t) = (-1)^n$ otherwise. So $\chi$ restricted to $\mathbb{A}_F^\times$ is $\eta^n$, where $\eta$ is the quadratic character of $E/F$.
- `HasExp τ χ m` says: for each idele $z$ of $E$ that is $1$ at the finite places, $\chi(z) = \prod_w (z_w / |z_w|)^{m(w)}$, where $z_w$ is the image of $z$ under the embedding $\tau_w$.
- `IsAutRepU U` has four fields: each element of $U$ is an automorphic form on $U_n(\mathbb{A}_E)$, $U$ is stable under right translation, $U \neq 0$, and $U$ is irreducible.
- `DomWeight n` is a nonincreasing function $\lambda : \{0, \dots, n-1\} \to \mathbb{Z}$.
- `HasWeightAt U τ λ` says: the representation of highest weight $\lambda$ (the Lean `sqRep ℂ n λ`) is a local component of $U$ at the infinite place given by $\tau$.

The conclusion `IsLift` is a structure with three fields, as the [Galois row chapter](/proof/galois-row/) explains. `aut`: `IsAutRepU U'`. `wt`: at each infinite place $w$, $U'$ has a weight $\lambda'$ with $2 \lambda'_k = 2 \lambda_{w,k} - d - m_W(w) + n + m_X(w)$ for $k < n$ and $2 \lambda'_k = n + m_X(w)$ for $k \geq n$. `loc`: at each split place, for local components $\tau$ of $U$ and $\tau'$ of $U'$, there is a nonzero map from a Schwartz-Bruhat space of $n \times d$ matrices that intertwines the actions of $\mathrm{GL}_n$ and $\mathrm{GL}_d$ through a Weil type action twisted by $\chi_X$ and $\chi_W$ (`LocPair`).

So `TLiftK` says: a definite automorphic representation of $U_n$ with weights that are large relative to $d$ has a lift to $U_d$ with explicit weights and with local relations at the split places. By its name and by these properties, $U'$ is a theta lift of $U$.

## Notes

The bound $d \geq d_0$ depends on $E$, $B$, $n$ and $X$, but not on $U$ or on the characters.

The dimension of $W$ is $d$, and the conclusion is about $U_d$, but the conclusion does not mention $W$ or $\delta$. $W$ and $\delta$ appear only in the hypotheses. The characters $\chi_X, \chi_W$ appear in the conclusion only in the field `loc`.

The code has two other definitions with the same body: `TLift_k` in `GalTPDefs`, and `TLift` in `SchurStep` (with `B.IsGood (cj E)` in place of `GoodK`). The proof of `TLiftK` is [the theta lift statement holds](/step/t-lift-k/).
