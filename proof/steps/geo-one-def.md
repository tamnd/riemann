---
id: geo-one-def
title: The geometric statement GeoOne
decl: UpperTheory.Gal.Int.Geo.GeoOne
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [QW17YJ6ZCT, 0R9R0Y1HDK, 68SJQEC11F, 6YDZNXR19H, WXGM3VWEK6]
routine: [Formalism.ConjugateSelfDual.G, Formalism.ConjugateSelfDual.Qbar, Formalism.ConjugateSelfDual.normV, GlobalTheory.Cong.Apart, GlobalTheory.Cong.NonSplitSet, GlobalTheory.CongL.AutOffT, GlobalTheory.CongL.FieldOK, GlobalTheory.CongL.SphOffU, GlobalTheory.CongL.UsPl, GlobalTheory.CongW.TyEll, GlobalTheory.RoadWGeo.ESAt, GlobalTheory.RoadWGeo.LacWtAt, GlobalTheory.UnitaryBC.UA, UpperTheory.Gal.Int.Geo.OneK, UpperTheory.Gal.TP.Sub.SatU, UpperTheory.V.Af.algSat]
open: [UpperTheory.Gal.Int.Div.CrysAt, UpperTheory.Gal.Int.Div.JumpsOcc, UpperTheory.Gal.Int.Div.PhiKilled, UpperTheory.Gal.Int.Div.VBase]
---
## Statement

`GeoOne` is a definition. It is a proposition with no parameters. It says the following.

Let $E$ be a CM number field with maximal real subfield $E^+$, and let $\Omega$ be an algebraic closure of $E$. Let $\ell$ be a prime and $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ a ring isomorphism. Let $a$ be an odd natural number. Let $d \in \mathbb{N}$ with `FieldOK E l d`, and let $x \in E$ with $x^2 = -d$. Let $T$ be a finite set of finite places of $E$ that are not split over $E^+$ (`NonSplitSet T`). Let $w_0, v'$ be finite places of $E$ above $\ell$ with `Apart v' w₀` and `OneK x w₀ v'`. Let $S$ be a finite set of finite places, and let $U$ be a space of functions on $U_a(\mathbb{A}_E)$ (the Lean `UA E a`). Suppose that:

1. `AutOffT T U`,
2. `TyEll E l a w₀ U`,
3. `SphOffU w₀ S U`,
4. $U$ has Satake parameters at $v'$ (`∃ B, SatU U v' B`),
5. `LacWtAt ι v' U`.

Then three things hold.

- (a) There are $dd \in \mathbb{N}$ and a group map $\rho : \mathrm{Gal}(\Omega/E) \to \mathrm{GL}_{dd}(\overline{\mathbb{Q}}_\ell)$ with `VBase ι d U ρ`.
- (b) For each place $w$ with `UsPl d w`, $\ell \notin w$, and Satake parameters of $U$ at $w$, there are $dd$ and $\rho$ with `VBase ι d U ρ` such that `ESAt ι ρ w (algSat a (normV w) B)` holds for each Satake parameter multiset $B$ of $U$ at $w$.
- (c) For each place $w$ above $\ell$ with `OneK x w v'`, `Apart w w₀`, `Apart w v'` and Satake parameters of $U$ at $w$: there are $dd$ and $\rho$ with `VBase ι d U ρ`, `CrysAt ρ w` and `JumpsOcc U ι ρ w`; and there are $dd$ and $\rho$ with `VBase ι d U ρ` and `PhiKilled ι ρ w a B` for each Satake parameter multiset $B$ of $U$ at $w$.

## What it means

The conditions on the field and the places are these.

- `IsSplitAt w` says: some place $u \neq w$ of $E$ lies over the same place of $E^+$ as $w$.
- `FieldOK E l d` says: $d > 0$ and $-d$ is a square in $E$; $-d$ is a square in $\mathbb{Q}_\ell$ (`SqAt d l`); $[E^+ : \mathbb{Q}]$ is even; and each place $w$ that is not split has $\ell \notin w$ and is unramified over $E^+$.
- `Apart w u` says: $w$ and $u$ lie over different places of $E^+$.
- `OneK x w w'` says: an integer $y$ of $E$ that lies in $\mathbb{Q}(x)$ is in $w$ if and only if it is in $w'$. So $w$ and $w'$ lie over the same place of $\mathbb{Q}(x)$.
- `UsPl d w` says: $w$ is split, and $-d$ is a square in $\mathbb{Q}_q$ for each prime $q$ in $w$.

The conditions on $U$ are these.

- `SatU U w B` says: some smooth irreducible representation $\sigma$ of $\mathrm{GL}_a(E_w)$ is a local component of $U$ at $w$, and $\sigma$ has the Satake parameters $B$ (a multiset of elements of $\mathbb{C}^\times$).
- `AutOffT T U` says: $U$ is an automorphic representation (`IsAutRepU`), and $U$ is unramified at each non-split place outside $T$.
- `SphOffU w₀ S U` says: $U$ has Satake parameters at each split place $w$ that is apart from $w_0$ and from each place of $S$.
- `TyEll E l a w₀ U` says: there are $m$, an open compact subgroup $J$ of $\mathrm{GL}_a(E_{w_0})$ with no torsion, a surjection $\theta : J \to \mathbb{Z}/\ell^m$ and a nontrivial character $\chi$ of $\mathbb{Z}/\ell^m$, such that each smooth irreducible $\sigma$ with a nonzero vector on which $J$ acts by $\chi \circ \theta$ is cuspidal, and $U$ contains a nonzero $\varphi$ on which $J$ acts by $\chi \circ \theta$.
- `LacWtAt ι v' U` says: there is an embedding $\tau : E \to \mathbb{C}$ above $v'$ through $\iota$ (`OverPl`), and a dominant weight $\lambda$ of $U$ at $\tau$, such that the set $\{k - \lambda_k\}$ is lacunary. Lacunary means: for disjoint nonempty subsets $A, B$ of the set, $|B| \sum A \neq |A| \sum B$.

The conditions on $\rho$ are these.

- `algSat a q B` is the multiset $\{q^{(a-1)/2} b : b \in B\}$.
- `ESAt ι ρ w B` says: at each valuation subring above $w$, $\rho$ is trivial on inertia, and the polynomial $\prod_{b \in B} (X - \iota^{-1} b)$ annihilates $\rho(\sigma^{-1})$ for each Frobenius element $\sigma$.
- `VBase ι d U ρ` says: $\rho$ is continuous and semisimple; outside a finite set of places, `ESAt` holds with `algSat` at each place $w$ with `UsPl d w`, $\ell \notin w$ and Satake parameters $B$; and `HTRichEx ρ a`. By its name and its text, `HTRichEx` asks for one place above $\ell$ where the Hodge-Tate jumps of $\rho$ contain a lacunary set of $a$ integers.
- `CrysAt ρ w` says: $\rho$ restricted to each decomposition group at $w$ is crystalline (`IsCrysAt`, for each local datum `LocBridge`).
- `JumpsOcc U ι ρ w` says: at $w$, each Hodge-Tate jump that the weight of $U$ predicts, namely the multiset $\{\frac{a-1}{2} - z\}$ over the infinitesimal character of the weight, occurs among the Hodge-Tate jumps of $\rho$.
- `PhiKilled ι ρ w a B` says: $\rho$ at $w$ is crystalline, and for some Weil group element $g$ of degree $-1$, the characteristic polynomial of the Weil-Deligne class `wdAt` of $\rho$ at $g$ divides a power of the characteristic polynomial of the unramified class `satWD h a B` at $g$.

So `GeoOne` says: an automorphic representation $U$ of a definite unitary group in an odd number of variables, with a supercuspidal type at $w_0$ and a lacunary weight at $v'$, has Galois representations with Frobenius, crystalline, Hodge-Tate and Frobenius divisibility conditions. By its name, these representations come from geometry.

## Notes

The three conclusions do not ask for one representation. Each clause, and each place $w$ in the clauses (b) and (c), can use a different $\rho$. The dimension $dd$ of $\rho$ is also free, and it need not be $a$.

The Frobenius conditions are weak. `ESAt` asks that $\prod (X - \iota^{-1} b)$ kills $\rho(\sigma^{-1})$. It does not ask that this product is the characteristic polynomial. `PhiKilled` asks for divisibility of a characteristic polynomial into a power, at one element $g$ only. `JumpsOcc` asks for inclusion of jumps, not equality.

The set $S$ appears only in the hypothesis `SphOffU`. The element $x$ appears only in `OneK`.

The only user of `GeoOne` in the trunk is `seedFinOdd_of_geoOne`, inside [the Galois row from geometry and the theta lift](/step/galois-local-global-strong-of-geometry-lift/). The proof of `GeoOne` is [GeoOne holds](/step/geo-one-holds/).
