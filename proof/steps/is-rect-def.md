---
id: is-rect-def
title: The local condition IsRecT
decl: UpperTheory.Zero.LLC.IsRecT
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [9E45NBX1G0, TH24PGYAM5, M482F4J7AZ, J85FZEQG38, 3QKQ5BQKRX, 9AZ164C298]
routine: [GlobalTheory.LocGL.IrrGL, GlobalTheory.WeilDeligne.WD, UpperTheory.Zero.LLC.LawsT]
open: []
---
## Statement

Let $E$ be a number field and let $\Omega$ be an algebraic closure of $E$. Let $w$ be a finite place of $E$, and let $E_w$ be the completion. Let $A$ be a valuation subring of $\Omega$ above $w$, with the proof `h : IsPlaceOver A w`. (`IsPlaceOver A w` says: for each $x$ in the ring of integers of $E$, the valuation of $A$ at $x$ is $< 1$ if and only if $x \in w$.)

Let $\mathrm{Irr}(E_w)$ be the set of pairs $(n, x)$, where $n \geq 0$ and $x$ is an isomorphism class of irreducible smooth representations of $\mathrm{GL}_n(E_w)$. This is the Lean type `IrrGL (w.adicCompletion E)`. Let $\mathrm{WD}(h)$ be the set of isomorphism classes of finite-dimensional Weil-Deligne representations of the Weil group $W_h$ attached to $A$. This is the Lean type `WD h`.

Let $rc : \mathrm{Irr}(E_w) \to \mathrm{WD}(h)$ be a map. Then `IsRecT h rc` holds if and only if there exist a group homomorphism $a : W_h \to E_w^\times$ and a proof `ha : IsLocalArtin h a` such that `LawsT a ha rc` holds.

## What it means

The definition is one line: `∃ a ha, LawsT (h := h) a ha rc`. All the content is in `IsLocalArtin` and `LawsT`.

`IsLocalArtin h a` is a structure with five fields. `surj`: $a$ is onto. `cont`: $a$ is continuous on the inertia subgroup. `ord_eq`: the valuation of $a(\sigma)$ is $-\deg \sigma$. `factor`: every smooth character of $W_h$ is $\chi \circ a$ for a smooth character $\chi$ of $E_w^\times$. `glob`: $a$ is compatible with every global Artin map of $E$. So $a$ plays the role of the local Artin map of local class field theory. The theorem `artEx` in the proof of [local Langlands existence](/step/rect-exists/) shows that exactly one such $a$ exists.

`LawsT a ha rc` is a structure with twelve fields. Write $x$ for an element $(n, x)$ of $\mathrm{Irr}(E_w)$. For a class $V$ in $\mathrm{WD}(h)$ and $\sigma \in W_h$, write $\det V(\sigma)$ for the product of the eigenvalues of $V(\sigma)$ (the Lean term `((rc x).eig σ).prod`).

1. `dim`: $rc(x)$ has dimension $n$.
2. `one`: for each smooth character $\chi$ of $E_w^\times = \mathrm{GL}_1(E_w)$, $rc(\chi)$ is the one-dimensional class of the character $\chi \circ a$.
3. `langlands`: let $l$ be a list of segments with `IsL l x.rep`. Then $rc(x) = \mathrm{segSum}(rc, l)$. By definition, $\mathrm{segSum}(rc, l)$ is the sum over the segments $\Delta$ in $l$ of $\big(rc(\Delta_0) \otimes |\cdot|^{(\ell(\Delta) - 1)/2}\big) \otimes \mathrm{Sp}(\ell(\Delta))$. Here $\Delta_0$ is the first cuspidal representation of $\Delta$ (`Δ.first`), $\ell(\Delta)$ is its length (`Δ.len`), the twist is the Lean operation `lpTw`, and $\mathrm{Sp}(m)$ is the class `WD.lpSp h m`. By its name, `IsL` says that $x$ is the Langlands quotient attached to the multisegment. This page does not unfold `IsL`.
4. `cusp`: if $x$ is cuspidal (`x.IsCusp`: $n > 0$ and the representation is cuspidal), then $rc(x)$ is irreducible.
5. `nu`: for each real $s$, $rc(x \otimes |\det|^s) = rc(x)$ twisted by $s$ (`lpTw s`).
6. `absCentral`: if $x$ has central character $\omega$, then $|\det rc(x)(\sigma)| = |\omega(a(\sigma))|$ for each $\sigma \in W_h$.
7. `twist`: if $x$ is `Good`, then for each smooth character $\chi$, $rc(x \otimes \chi) = rc(x) \otimes rc(\chi)$.
8. `central`: if $x$ is `Good` with central character $\omega$, then $\det rc(x)(\sigma) = \omega(a(\sigma))$.
9. `dual`: let $\pi, \pi'$ be irreducible representations of $\mathrm{GL}_n(E_w)$, with the class of $\pi$ `Good` and $\pi'$ isomorphic to the contragredient of $\pi$. Then $rc(\pi')$ is the dual of $rc(\pi)$.
10. `inj`: if $y$ is `Good` and $rc(x) = rc(y)$, then $x = y$.
11. `depth`: if $x$ is `Good` and has a nonzero vector fixed by the first congruence subgroup `KOne`, then $rc(x)$ is tame (`IsTameWD`).
12. `type`: the law `TypeLaw h rc`. Suppose $E_w \cong \mathbb{Q}_g$ by a continuous ring isomorphism $i$, and $n > 0$. Take an extension $E'$ of $E$ and a place $w'$ above $w$ with norm $g^n$ at which $g$ is not in $w'^2$, with its own local Artin map $a'$, and a reduction map onto a field $K$ with kernel $w'$. Take a regular character $\theta$ of $K^\times$ and a representation $\tau$ of the finite group `Gn g n` (by its name, $\mathrm{GL}_n$ over the field with $g$ elements) with cuspidal character. Suppose that on each element $y$ with irreducible characteristic polynomial, with a root $z \in K$, the character of $\tau$ is $(-1)^{n-1} \sum_{j<n} \theta(z^{g^j})$. Let $\sigma$ be an irreducible representation of $\mathrm{GL}_n(E_w)$ whose pullback to $\mathrm{GL}_n(\mathbb{Q}_g)$ inflates $\tau$. Then $rc(\sigma)$ has $N = 0$, and the characteristic polynomial of inertia on $rc(\sigma)$ is $\prod_{j<n} (X - \theta(z^{g^j}))$, where $z$ is the reduction of an approximation of $a'(t)$.

The class `Good` is defined in the same file. A class $y$ is `GoodCusp` if $y$ is a character ($n = 1$), or if $E_w \cong \mathbb{Q}_g$ for a prime $g$ and $y = y_0 \otimes \chi$ for a smooth character $\chi$ and some $y_0$ with a nonzero `KOne`-fixed vector. A class $x$ is `Good` if it has a supercuspidal support $s$ (`HasSupport x.rep s`) with every element `GoodCusp`.

## Notes

The first six laws and the law `type` hold for all of $\mathrm{Irr}(E_w)$. The laws `twist`, `central`, `dual`, `inj` and `depth` hold only for `Good` classes. Over a field $E_w$ that is not isomorphic to some $\mathbb{Q}_g$, `Good` means that the support has only characters.

So `IsRecT` does not pin down a single map. On a cuspidal $x$ that is not `GoodCusp`, the laws ask only for an irreducible class of dimension $n$ with the right absolute determinant, compatible with the twists $|\det|^s$, and the law `type` when it applies. The local Langlands correspondence satisfies all twelve laws, but other maps can also satisfy them. The proof of [local Langlands existence](/step/rect-exists/) in fact builds its map from a different choice on such cuspidals (see the notes there).

`LawsT` has no law about $L$-factors or $\varepsilon$-factors. The code has another structure `Laws` in `LocalLanglandsGL.lean` with a parameter `ε : EpsFamily A`. This page does not compare the two.

`IsRecT` is used as the parameter of [the statement Row0b](/step/row0b-def/). The [Galois row chapter](/proof/galois-row/) gives the same list of laws in short form.
