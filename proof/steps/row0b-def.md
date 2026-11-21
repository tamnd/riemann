---
id: row0b-def
title: The statement Row0b
decl: UpperTheory.GalStar.Row0b
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [QW17YJ6ZCT, DPFMXS71D1, 9AZ164C298, KPYFGB342X, WXGM3VWEK6, TH24PGYAM5, 6YDZNXR19H, 9E45NBX1G0]
routine: [Formalism.ConjugateSelfDual.G, Formalism.ConjugateSelfDual.Qbar, Formalism.L2.Host.HChar, GlobalTheory.CuspRep.CG.mk, GlobalTheory.CuspRep.CuspSub, GlobalTheory.ContraPair.PolarizedPair, UpperTheory.GalStar.PropsB]
open: []
---
## Statement

`Row0b` is a definition. It is a proposition that depends on one parameter `Rc`. The parameter `Rc` has the type `RecNotion`. A `RecNotion` takes a finite place $w$ of a number field $E$, a valuation subring $A$ of an algebraic closure $\Omega$ of $E$ above $w$ (the proof `h : IsPlaceOver A w`), and a map $rc$ from local representations to Weil-Deligne classes. It returns a proposition. So `Rc h rc` is a property of the local map $rc$ at the place $w$.

For a general `Rc`, the statement `Row0b Rc` says the following.

Let $E$ be a CM number field, and let $E^+$ be its maximal real subfield. Let $\Omega$ be an algebraic closure of $E$. Let $\ell$ be a prime, and let $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ be a ring isomorphism. Let $a \geq 1$ be an integer. Let $\pi$ be an irreducible space of cusp forms on $\mathrm{GL}_a(\mathbb{A}_E)$ (the type `CuspSub E a`). Let $\chi$ be a Hecke character of $E^+$ (the type `HChar`). Suppose that $\pi$ is regular algebraic (`(CG.mk π).IsRegAlg`) and that $(\pi, \chi)$ is a polarized pair (`PolarizedPair π χ`). Then there exist

- a group homomorphism $r : \mathrm{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$,
- an integer $wt$,
- a function $HT$ that sends each embedding $\tau : E \to \overline{\mathbb{Q}}_\ell$ to a multiset of integers $HT_\tau$,

such that `PropsB Rc π ι r wt HT` holds.

With `Rc = fun h rc => IsRecT h rc`, the local clauses of `PropsB` range over the maps $rc$ that satisfy [the predicate IsRecT](/step/is-rect-def/). The Lean code calls this instance `recT` (in `UpperTheory.Gal.Int`) or `RowT` (in `UpperTheory.V.Z.Win`, where `RowT` is defined as `Row0b fun h rc => IsRecT h rc`).

## What it means

The Lean local names are these. `E` is the CM field and `Ω` its algebraic closure. `l` is the prime $\ell$. `ι` is the isomorphism $\iota$. `a` is the rank. `π` is the cuspidal representation and `χ` the Hecke character of $E^+$. `r` is the Galois representation. `G E Ω` is the group of $E$-automorphisms of $\Omega$. `Qbar l` is an algebraic closure of $\mathbb{Q}_\ell$. `wt` is an integer weight and `HT` gives the Hodge-Tate multisets.

The objects in the hypotheses are these.

- `CuspSub E a` is a structure with a subspace $V$ of smooth functions on $\mathrm{GL}_a(\mathbb{A}_E)$. Every element of $V$ is a cusp form. $V$ is stable under the group actions (`IsStable`), $V \neq 0$, and every stable subspace of $V$ is $0$ or $V$.
- `IsRegAlg` says, as the [Galois row chapter](/proof/galois-row/) explains: for each embedding $\tau : E \to \mathbb{C}$, the infinitesimal character multiset of $\pi$ at $\tau$ has distinct entries, and each entry is $n + \frac{a-1}{2}$ for an integer $n$.
- `PolarizedPair π χ` has two fields. The field `sign` says $\chi_v(-1) = (-1)^a$ at each infinite place $v$ of $E^+$. The field `dual` says `DualIsConjBy π (compNorm L χ)`: the dual of $\pi$ matches the complex conjugate of $\pi$ after a twist by $\chi \circ N_{E/E^+}$.

The conclusion `PropsB Rc π ι r wt HT` is a structure with six fields.

1. `cont`: $r$ is continuous.
2. `ss`: $r$ is semisimple (`IsSSRep r`).
3. `away`: let $w$ be a finite place of $E$ with $\ell \notin w$. Let $A$ be a valuation subring of $\Omega$ above $w$, with proof $h$. Let $rc$ be a local map with `Rc h rc`. Let $\sigma$ be a local component of $\pi$ at $w$ (`π.IsLocComp w σ`). Then `AwayB (wdOf h hl ι r) (rc (algNorm σ))` holds. Here `wdOf h hl ι r` is the Weil-Deligne class of $r$ at $w$, and `algNorm σ` is $\sigma \otimes |\det|^{(1-a)/2}$.
4. `weights`: for each $\tau : E \to \overline{\mathbb{Q}}_\ell$, the multiset $HT_\tau$, read in $\mathbb{C}$, equals $\{\frac{a-1}{2} - z\}$, where $z$ runs over the infinitesimal character of $\pi$ at $\iota \circ \tau$.
5. `weights_conj`: $HT_{\tau \circ c} = \{wt - h : h \in HT_\tau\}$, where $c$ is the complex conjugation of $E$.
6. `above`: at each place $w$ above $\ell$, with each local datum `Bw` of the kind `LocBridge`, the structure `AboveB` holds.

`AwayB x y` has three fields. `dim`: $x$ and $y$ have the same dimension. `tor`: if $y$ is trivial on all commutators of the Weil group (`Tor y`) and $y$ has monodromy $N = 0$ (`y.mono0`), then $x = y$. `tame0`: if $E_w \cong \mathbb{Q}_g$ for a prime $g$ with $n = 1$ or $16 n^2 < g$ (`IsQpBig w n`, with $n$ the dimension of $y$), and $y$ is tame (`TmW`), satisfies the root condition `Sqf`, and has $N = 0$, then $x$ has $N = 0$ and $x$ and $y$ have the same characteristic polynomial on each Weil group element of degree $0$.

`AboveB` has two fields. `crys`: if $\sigma$ is spherical, then $r$ restricted to the decomposition group is crystalline and de Rham, with Hodge-Tate jumps given by $HT$. `nice`: for each $rc$ with `Rc h rc`, if $rc(\mathrm{algNorm}\ \sigma)$ has $N = 0$ and is either in the case of `IsQpBig`, `TmW` and `Sqf`, or satisfies `Tor`, then $r$ at $w$ is de Rham and potentially semistable, has the Hodge-Tate jumps $HT$, and its class `wdAt` satisfies `AwayB` with $rc(\mathrm{algNorm}\ \sigma)$.

So the parameter `Rc` enters in two places only: the field `away` and the field `AboveB.nice`. In both places it is the hypothesis of a universal statement: "for each $rc$ with `Rc h rc`, ...".

## Notes

Because `Rc` appears only as a hypothesis, the statement `Row0b Rc` becomes weaker when `Rc` holds for fewer maps. If `Rc h rc` is false for every $rc$, the fields `away` and `nice` say nothing, and `Row0b Rc` asks only for a continuous semisimple $r$ with the weight conditions and the crystalline condition at spherical places above $\ell$. For `Rc = IsRecT` the code proves separately that at least one $rc$ exists at each place, in [local Langlands existence](/step/rect-exists/). That theorem does not change the meaning of `Row0b`. It only shows that the local clauses are not empty.

Conversely, the universal quantifier makes the statement stronger when many maps satisfy `Rc`. The clause `tor` asks $x = y$ for every such $rc$.

`wdOf` is defined by choice. If no Weil-Deligne class of $r$ at $w$ exists, `wdOf` returns the trivial class of dimension $a$.

The file also defines `Row0` with the structures `Props` and `Away`. The theorem `Row0.row0b` proves `Row0 Rc → Row0b Rc`. The only difference is the bound $16 n^2 < g$ in `IsQpBig`. `Row0` uses `IsQp`, which has no bound.

The proof of `Row0b` with `IsRecT` is the step [the Galois row holds](/step/galois-row-holds/). The [Galois row chapter](/proof/galois-row/) describes the whole branch.
