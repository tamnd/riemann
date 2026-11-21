---
id: rect-exists
title: Local Langlands existence, RecTExists
decl: UpperTheory.Zero.LLC.recTExists
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rect-exists-def, is-rect-def]
concepts: [9E45NBX1G0, M482F4J7AZ, TH24PGYAM5, 9AZ164C298, J85FZEQG38, 3QKQ5BQKRX]
routine: [GlobalTheory.LocGL.IrrGL, GlobalTheory.LocGL.IrrGL.isCusp_of, GlobalTheory.LocGL.IrrGL.isCusp_ofChar, GlobalTheory.LocLanglands.segSum, GlobalTheory.SmGL.twist, UpperTheory.Zero.LLC.TypeAt, UpperTheory.Zero.LLC.typeIff]
open: [UpperTheory.Zero.LLC.artEx, UpperTheory.Zero.LLC.cuspEx, GlobalTheory.LocLanglands.exists_isLExt, UpperTheory.Zero.LLC.Pr.exh, UpperTheory.Zero.LLC.Pr.multi, UpperTheory.Zero.LLC.extDim, UpperTheory.Zero.LLC.extTw, UpperTheory.Zero.LLC.extDual, UpperTheory.Zero.LLC.extInj, UpperTheory.Zero.LLC.extDepth, DiscreteGroups.sglob.DzLc.isCuspidal_of_inflates]
---
## Statement

[The statement RecTExists](/step/rect-exists-def/) is true. That is: let $E$ be a number field, $\Omega$ an algebraic closure of $E$, $A$ a valuation subring of $\Omega$, $w$ a finite place of $E$, and `h : IsPlaceOver A w`. Then there is a map $rc : \mathrm{Irr}(E_w) \to \mathrm{WD}(h)$ that satisfies [the local condition IsRecT](/step/is-rect-def/).

## Proof

The proof builds $rc$ in two stages. First it defines a map $r$ on cuspidal classes. Then it extends $r$ to all classes by the Langlands classification. After that it checks the twelve laws of `LawsT` one by one.

**Step 1. The local Artin map.** The theorem `artEx` gives a homomorphism $a : W_h \to E_w^\times$ with `IsLocalArtin h a`. (`artEx` also says that $a$ is unique. The proof drops the uniqueness.) Inside, `artEx` uses `localArtinExists_holds` and `globalArtinReciprocity_holds`.

**Step 2. A map on cuspidal classes.** The theorem `cuspEx` gives a map $r : \mathrm{Irr}(E_w) \to \mathrm{WD}(h)$ with `CuspT a ha r`. The structure `CuspT` is a list of laws for $r$ on cuspidal classes only. It has the fields `irr`, `dim`, `one`, `nu`, `absCentral`, `twist`, `central`, `dual`, `inj`, `depth` and `type`. The laws `twist`, `central`, `dual`, `inj` and `depth` hold only for `GoodCusp` classes.

**Step 3. Extension by segments.** The theorem `exists_isLExt` takes two inputs, `Pr.exh` and `Pr.multi`, and the map $r$. The input `Pr.exh` proves `LanglandsExhaustionGL`: each $x \in \mathrm{Irr}(E_w)$ has a multisegment $\mathfrak{m}$ with `IsL 𝔪 x.rep`. The input `Pr.multi` proves `LanglandsMultisegments`: this multisegment is unique, plus a statement on subquotients of products. From these, `exists_isLExt` gives a map $rc$ with `IsLExt r rc`. That is: for each list of segments $l$ with `IsL l x.rep`,
$$ rc(x) = \mathrm{segSum}(r, l). $$
The same theorem says that each such $rc$ agrees with $r$ on cuspidal classes. The proof records this as `hcusp`: $rc(x) = r(x)$ whenever $x$ is cuspidal. (Inside `exists_isLExt`, $rc(x)$ is defined as $\mathrm{segSum}(r, \mathfrak{m})$ for a multisegment $\mathfrak{m}$ chosen by choice.)

**Step 4. Two transfer lemmas.** The theorem `extDim` gives, for each $x$: $rc(x)$ has dimension $n$; $rc(x)$ has the characteristic polynomials of the product over the supercuspidal support; $|\det rc(x)(\sigma)| = |\omega(a(\sigma))|$ for the central character $\omega$; and $\det rc(x)(\sigma) = \omega(a(\sigma))$ if $x$ is `Good`. The theorem `extTw` gives: $rc$ commutes with the twists $|\det|^s$, and with twists by characters on `Good` classes.

**Step 5. The twelve laws.** The proof now gives $rc$, $a$ and `ha`, and fills the fields of `LawsT`.

- `dim`, `absCentral` and `central` come from `extDim`.
- `nu` is the first part of `extTw`.
- `one`: a character is cuspidal (`IrrGL.isCusp_ofChar`). So $rc(\chi) = r(\chi)$ by `hcusp`, and $r(\chi)$ is the class of $\chi \circ a$ by the law `one` of `CuspT`.
- `langlands`: let $l$ be a list of segments with `IsL l x.rep`. By `IsLExt`, $rc(x) = \mathrm{segSum}(r, l)$. The first element $\Delta_0$ of each segment is cuspidal, so $r(\Delta_0) = rc(\Delta_0)$ by `hcusp`. So $\mathrm{segSum}(r, l) = \mathrm{segSum}(rc, l)$, term by term.
- `cusp`: for cuspidal $x$, $rc(x) = r(x)$ by `hcusp`, and $r(x)$ is irreducible by the law `irr` of `CuspT`.
- `twist`: rewrite $rc(\chi)$ as the class of $\chi \circ a$ (as for `one`). Then use the second part of `extTw`.
- `dual`, `inj` and `depth` are the theorems `extDual`, `extInj` and `extDepth`, applied to $r$ and $rc$.
- `type`: the theorem `typeIff` says that `TypeLaw h rc` is equivalent to `TypeAt x (rc x)` for each $x$. So it suffices to show `TypeAt x (rc x)`. In `TypeAt`, $x$ is the class of a representation $\sigma$ that inflates a cuspidal representation $\tau$ of a finite group. Such $\sigma$ is cuspidal, by `IrrGL.isCusp_of` and `isCuspidal_of_inflates`. So $rc(x) = r(x)$ by `hcusp`, and the law `type` of `CuspT` gives the result.

This proves `IsRecT h rc`.

## Notes

The theorem `cuspEx` does not build the local Langlands correspondence on all cuspidal classes. Its proof defines $r$ by cases. If $x$ is `GoodCusp`, then $r(x) = r_0(x)$, where $r_0$ comes from `goodMap`. If $x$ is not `GoodCusp`, then $r(x)$ is a class $J_n$ twisted by a real exponent $e(x)$. Here $J_n$ comes from `junkEx`: it is an irreducible class of dimension $n \geq 2$ with $|\det J_n(\sigma)| = 1$, and (when $E_w \cong \mathbb{Q}_g$) not a twist of a tame class. The exponent $e(x)$ comes from `expo`. It is `quasiCharExponent` of the central character of $x$, divided by $n$. So for a cuspidal class that is not `GoodCusp`, the value $rc(x)$ in this proof depends only on $n$ and on this exponent. The name `junkEx` says the same: these values are placeholders. This is allowed because `IsRecT` asks very little on such classes (see [the local condition IsRecT](/step/is-rect-def/)). It shows that `IsRecT` does not determine the local Langlands correspondence.

The direct inputs `artEx`, `cuspEx`, `exists_isLExt`, `Pr.exh`, `Pr.multi`, `extDim`, `extTw`, `extDual`, `extInj` and `extDepth` have no step pages yet. `Pr.exh` and `Pr.multi` are one-line proofs from `PositivityTheory.Exh.langlandsExhaustionGL_holds` and `PositivityTheory.Exh.langlandsMultisegments_holds`. Their statements live in a folder called `PublishedTheorems`. They are proved in the code, not assumed.

The theorem is used by [EveryCharacter from Row0b](/step/every-character-of-row/), as a field of [OpenLiteratureStatements](/step/open-literature-statements-def/). Many theorems of the Galois row and the window branch also use it, for example `localGlobalCompatAtIwahoriFixed_of_unlinked`.
