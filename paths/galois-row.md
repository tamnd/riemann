[The Galois row](/proof/galois-row/) proves `Row0b`. To each regular algebraic, polarized, cuspidal representation $\pi$ of $\mathrm{GL}_a$ over a CM field, it attaches an $\ell$-adic Galois representation $r$ with local-global compatibility at each finite place. The proof has a local part (the laws of `IsRecT`), a geometric part (a holomorphic Lefschetz formula) and a theta lift between definite unitary groups.

## Read first

- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields), for the CM field $E$, its maximal real subfield $E^+$ and its complex conjugation $c$.
- [Places and completions](/learn/number-fields/#places-and-completions), for the finite places $w$ and the local fields $E_w \cong \mathbb{Q}_g$ of the tame clauses.
- [Hecke characters](/learn/class-field-theory/#hecke-characters), for the character $\chi$ of $E^+$ in the polarized pair.
- [Unitary groups](/learn/groups/#unitary-groups), for the unitary group $U_a$ of `GeoOne` and the definite unitary groups of `TLiftK`.
- [Adelic points and compact open subgroups](/learn/groups/#adelic-points-and-compact-open-subgroups), for the first congruence subgroup `KOne` of the depth law, and the Iwahori subgroup.
- [Representations of a group](/learn/representations/#representations-of-a-group), for central characters and twists.
- [Smooth representations of p-adic groups](/learn/representations/#smooth-representations-of-p-adic-groups), for the smooth irreducible representations of $\mathrm{GL}_n(E_w)$ and their contragredients.
- [Cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments), for supercuspidal support, Zelevinsky segments and the Langlands classification.
- [Unramified representations](/learn/representations/#unramified-representations), for the Satake parameters of `CoreAll` and the Iwahori fixed places of `rest`.
- [Depth zero representations and types](/learn/representations/#depth-zero-representations-and-types), for depth zero and the cuspidal representations of $\mathrm{GL}_n(\mathbb{F}_q)$ from regular characters, in `TypeLaw`.
- [Automorphic representations](/learn/automorphic-forms/#automorphic-representations) and [regular algebraic and polarized representations](/learn/automorphic-forms/#regular-algebraic-cohomological-and-polarized-representations), for `CuspSub` (a cuspidal automorphic representation), `IsRegAlg` (a regular algebraic automorphic representation) and `PolarizedPair` (a polarized automorphic representation, with $\chi$).
- [Local class field theory](/learn/class-field-theory/#local-class-field-theory), for the local Artin map $a : W_{E_w} \to E_w^\times$ of `IsRecT`.
- [Decomposition groups, inertia and Frobenius](/learn/galois-representations/#decomposition-groups-inertia-and-frobenius) and [Galois representations](/learn/galois-representations/#galois-representations), for $r$ unramified at $w$ with given Frobenius element eigenvalues.
- [The Weil group](/learn/galois-representations/#the-weil-group), [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence), for the laws of `IsRecT` and the clause `AwayB`.
- [Crystalline, de Rham and potentially semistable representations](/learn/galois-representations/#crystalline-de-rham-and-potentially-semistable-representations), for the Hodge-Tate weights $HT_\tau$ and the clause `AboveB`.
- [The Galois representation of an automorphic representation](/learn/galois-representations/#the-galois-representation-of-an-automorphic-representation), for local-global compatibility, which is what `Row0b` states.
- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms), for the spaces $X$ and $W$ of `TLiftK`, with Gram matrices $1$ and $\delta \cdot 1$.
- [The Weil representation](/learn/theta/#the-weil-representation), [the global theta lift](/learn/theta/#the-global-theta-lift) and [the Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula), for `TLiftK` and its input `siegelWeilStd_k`.
- [Complex manifolds](/learn/geometry/#complex-manifolds), for Dolbeault cohomology $H^{a,b}$, the Atiyah-Bott fixed-point theorem, finite étale correspondences, the Kodaira-Spencer map and the projective bundle formula of `GeoOne`.
- [Étale cohomology](/learn/geometry/#tale-cohomology), for proper base change in `steps_holds`.

## The new objects

- [IsRecT](/step/is-rect-def/) is a list of twelve laws for a map $rc$ from irreducible representations of $\mathrm{GL}_n(E_w)$ to Weil-Deligne classes. Six laws hold for all classes. The others (twists, central character, duals, injectivity, depth) hold only on the class `Good`: [supercuspidal support](/learn/representations/#cuspidal-representations-and-segments) of characters, or of depth zero twists over $\mathbb{Q}_g$. The law `TypeLaw` fixes the inertia polynomial $\prod_{j<n}(X - \theta(z^{g^j}))$ on depth zero cuspidal types.
- [Row0b](/step/row0b-def/) gives $r$, a weight $wt$ and Hodge-Tate multisets with the six fields of `PropsB`. `Row0` is the same with a stronger tame clause (`IsQp` in place of `IsQpBig`), so `Row0` implies `Row0b`.
- `CoreAll` gives $r$ with Frobenius eigenvalues equal to [Satake parameters](/learn/representations/#unramified-representations) at almost all places, and the unramified, crystalline and Hodge-Tate conditions at spherical places.
- [GeoOne](/step/geo-one-def/) gives Galois representations from the cohomology of towers attached to automorphic functions on a [unitary group](/learn/groups/#unitary-groups) $U_a$. Its proof [geoOne_holds](/step/geo-one-holds/) uses `HolomorphicLefschetzFormula`, the holomorphic Lefschetz formula for finite étale correspondences.
- [TLiftK](/step/tlift-k-def/) lifts an automorphic representation of $U_n$ to $U_d$ for a definite Hermitian space and a skew-Hermitian space, with a formula for the weights and an intertwining map at split places. By its name it is a theta lift. [tLiftK](/step/t-lift-k/) proves it.

## The path through the chapter

1. [galoisRepresentations_of_thetaLift](/step/galois-representations-of-theta-lift/) and [its geometric form](/step/galois-local-global-strong-of-geometry-lift/) prove `Row0` from `GeoOne` and `TLiftK`, then weaken it to `Row0b`.
2. `rest` gets `Row0` from `CoreAll`, by local-global compatibility at places with a support of characters and at Iwahori fixed places.
3. `coreAll_of` gets `CoreAll` from `TLiftK` and from `SeedFinOdd`, which is the one use of `GeoOne`.
4. [geoOne_holds](/step/geo-one-holds/) uses the Atiyah-Bott fixed-point theorem, the Kodaira-Spencer map and proper base change.
5. [tLiftK](/step/t-lift-k/) uses the Weil representation and a Siegel-Weil formula.
