[The Galois row](/proof/galois-row/) proves Row0b. It attaches an $\ell$-adic Galois representation to each regular algebraic, polarized, cuspidal representation of $\mathrm{GL}_a$ over a CM field. The proof has a local part (the laws of IsRecT), a geometric part (a holomorphic Lefschetz formula) and a theta lift between definite unitary groups.

## Read first

- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields) and [places and completions](/learn/number-fields/#places-and-completions), for $E$, $E^+$ and the local fields $E_w$.
- [Automorphic representations](/learn/automorphic-forms/#automorphic-representations), [Hecke characters](/learn/class-field-theory/#hecke-characters) and [regular algebraic and polarized representations](/learn/automorphic-forms/#regular-algebraic-cohomological-and-polarized-representations). The input is a cuspidal automorphic representation $\pi$, a regular algebraic automorphic representation, and with a Hecke character of $E^+$ a polarized automorphic representation.
- [Smooth representations of p-adic groups](/learn/representations/#smooth-representations-of-p-adic-groups), [cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments) and [depth zero representations and types](/learn/representations/#depth-zero-representations-and-types). The laws of IsRecT speak of contragredients, supercuspidal support, the Langlands classification and depth zero.
- [Local class field theory](/learn/class-field-theory/#local-class-field-theory), [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence). IsRecT copies properties of that correspondence.
- [Galois representations](/learn/galois-representations/#galois-representations), [decomposition groups, inertia and Frobenius](/learn/galois-representations/#decomposition-groups-inertia-and-frobenius) and [the Galois representation of an automorphic representation](/learn/galois-representations/#the-galois-representation-of-an-automorphic-representation). Row0b is a form of local-global compatibility, and uses the Frobenius element at unramified places.
- [Crystalline, de Rham and potentially semistable representations](/learn/galois-representations/#crystalline-de-rham-and-potentially-semistable-representations) give the Hodge-Tate weights and the clause above $\ell$.
- [Unitary groups](/learn/groups/#unitary-groups) and [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms): GeoOne lives on $U_a$, and TLiftK pairs a Hermitian space $X$ with a skew-Hermitian space $W$.
- [The Weil representation](/learn/theta/#the-weil-representation), [the global theta lift](/learn/theta/#the-global-theta-lift) and [the Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula), behind TLiftK.
- [Complex manifolds](/learn/geometry/#complex-manifolds) and [étale cohomology](/learn/geometry/#tale-cohomology), for the geometric branch.

## The new objects

- [IsRecT](/step/is-rect-def/) is a list of twelve laws for a map from irreducible representations of $\mathrm{GL}_n(E_w)$ to Weil-Deligne classes. Six hold for all classes. Five (twists, central character, duals, injectivity, depth) hold only for good classes: those whose supercuspidal support consists of characters, or, over $\mathbb{Q}_g$, of twists of depth zero supercuspidals. The last law fixes the characteristic polynomial of inertia on depth zero cuspidal types.
- [Row0b](/step/row0b-def/) gives $r$, a weight $wt$ and Hodge-Tate multisets: $r$ is continuous and semisimple, with weight clauses and local clauses away from and above $\ell$. Row0 asks for the tame clause in more cases, so it implies Row0b.
- CoreAll gives a semisimple $r$ whose Frobenius eigenvalues match the [Satake parameters](/learn/representations/#unramified-representations) at almost all places, with the expected local behaviour at spherical places.
- [GeoOne](/step/geo-one-def/) gives Galois representations attached to spaces of automorphic functions on a unitary group $U_a$, with $a$ odd. Its proof [geoOne_holds](/step/geo-one-holds/) rests on a holomorphic Lefschetz formula for finite étale correspondences.
- [TLiftK](/step/tlift-k-def/) lifts an automorphic representation of $U_n$ to one of $U_d$, for $d$ large and definite spaces, with a formula for the weights and an intertwining map at split places. By its name it is a theta lift. [tLiftK](/step/t-lift-k/) proves it.

## The path through the chapter

1. [galoisRepresentations_of_thetaLift](/step/galois-representations-of-theta-lift/) and [its geometric form](/step/galois-local-global-strong-of-geometry-lift/) prove Row0 from GeoOne and TLiftK, then weaken it to Row0b.
2. The step rest gets Row0 from CoreAll, by local-global compatibility at places with unlinked characters in the support or with a vector fixed by the first congruence subgroup.
3. The step coreAll_of gets CoreAll from TLiftK and three other inputs. GeoOne enters through one of them.
4. [geoOne_holds](/step/geo-one-holds/) uses Dolbeault cohomology, the Atiyah-Bott fixed-point theorem, the Kodaira-Spencer map and proper base change.
5. [tLiftK](/step/t-lift-k/) uses, by the names of its parts, the Weil representation and a Siegel-Weil formula.
