---
title: The Galois row
description: The branch of the Lean proof under galoisLocalGlobalStrong_recParameter. It attaches an l-adic Galois representation to each regular algebraic polarized cuspidal representation of GL(a) over a CM field, with local conditions at each place.
lead: The theorem everyCharacter_of_row needs one hypothesis, Row0b with the local notion IsRecT. This page says what that hypothesis states and how the Lean code proves it, in three large parts.
level: L1
status: draft
lean:
  - name: UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/RowSrc.lean
    line: 6
  - name: UpperTheory.GalStar.Row0b
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean
    line: 69
  - name: UpperTheory.Zero.LLC.IsRecT
    file: Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean
    line: 76
  - name: UpperTheory.FinalTheorems.everyCharacter_of_row
    file: Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
    line: 7
  - name: UpperTheory.Gal.Int.galoisRepresentations_of_thetaLift
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/GaloisRepresentationsOfThetaLift.lean
    line: 6
  - name: UpperTheory.Gal.Int.galoisLocalGlobal_of_geometry_lift
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/Development.lean
    line: 27
  - name: UpperTheory.Gal.Int.Geo.geoOne_holds
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/GeometricFlagBases/WeightOneGeometricRealization.lean
    line: 11
  - name: UpperTheory.TP.TLiftK
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/HalfIndexLattices/TLiftK.lean
    line: 12
needs:
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: QW17YJ6ZCT
    text: Galois representation
  - tag: TH24PGYAM5
    text: Weil group
  - tag: 9E45NBX1G0
    text: Local Langlands conjectures
  - tag: 9AZ164C298
    text: Cuspidal representation
  - tag: 68SJQEC11F
    text: Automorphic form
  - tag: KPYFGB342X
    text: Hecke character
  - tag: 6YDZNXR19H
    text: p-adic Hodge theory
  - tag: 6WB6TKE70H
    text: Theta correspondence
  - tag: 0R9R0Y1HDK
    text: Unitary group
  - tag: G44NQXCWT9
    text: Lefschetz fixed-point theorem
next:
  - text: The map of the trunk
    path: proof/trunk/
    sub: where this branch sits
  - text: The theta matching
    path: proof/theta-matching/
    sub: the next large branch
  - text: Block determinants and theta Parseval
    path: proof/determinants/
    sub: the proof of the theta lift TLiftK
steps: [row0b-def, is-rect-def, rect-exists-def, rect-exists, galois-row-holds, galois-representations-of-theta-lift, galois-local-global-strong-of-geometry-lift, geo-one-holds, geo-one-def, t-lift-k, tlift-k-def]
---
## Local parameters

The final theorem of the Lean proof follows from one hypothesis, the statement Row0b of the next section (see [the map of the trunk](/proof/trunk/)). Row0b attaches an $\ell$-adic [[Galois representation|QW17YJ6ZCT]] to each regular algebraic polarized cuspidal representation of $\mathrm{GL}_a$ over a CM field, with conditions at each place. The proof reduces Row0b to spherical places, and then to a geometric input and a theta lift. On the trunk every input of this branch is a proved theorem. No input reads a field of the structure of literature statements.

Let $E$ be an [[algebraic number field|WXGM3VWEK6]] with a finite place $w$, completion $E_w$ and a place above $w$ in an algebraic closure (see [places and completions](/learn/number-fields/#places-and-completions)). Let $\mathrm{Irr}(E_w)$ be the set of pairs $(n, x)$ with $x$ an irreducible smooth representation of $\mathrm{GL}_n(E_w)$, up to isomorphism. Let $\mathrm{WD}(E_w)$ be the set of classes of finite-dimensional Weil-Deligne representations of the [[Weil group|TH24PGYAM5]] $W_{E_w}$ over $\mathbb{C}$ (see [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations)). We say $y \in \mathrm{WD}(E_w)$ has $N = 0$ if its monodromy operator is zero. Let $K_1 \subset \mathrm{GL}_m(\mathcal{O}_{E_w})$ be the first congruence subgroup.

**Definition (Good representations).** A cuspidal $y \in \mathrm{Irr}(E_w)$ of degree $m$ is good if $m = 1$, or if there is a prime $g$ and a continuous isomorphism $\mathbb{Q}_g \cong E_w$ such that $y = y_0 \otimes \chi$ with $\chi$ a smooth character and $y_0$ of depth zero, that is, with a nonzero $K_1$-fixed vector (see [depth zero representations and types](/learn/representations/#depth-zero-representations-and-types)). An element $x \in \mathrm{Irr}(E_w)$ is good if it has a cuspidal support $s$ whose members are all good.

Lean: `UpperTheory.Zero.LLC.Good`

**Definition (Type law).** A map $\mathrm{rc} : \mathrm{Irr}(E_w) \to \mathrm{WD}(E_w)$ satisfies the type law if the following holds. Let $g$ be a prime with a continuous isomorphism $i : \mathbb{Q}_g \cong E_w$, and let $n > 0$. Let $E'/E$ be a finite extension with a place $w'$ such that $g \notin w'^2$ and $\mathrm{N}w' = g^n$. Let $a'$ be a local Artin map for $E'_{w'}$ and let $K = \mathcal{O}_{E'}/w'$, a field with $g^n$ elements. Let $\theta : K^\times \to \mathbb{C}^\times$ be regular, so that $\theta^{g^i} = \theta^{g^j}$ with $i, j < n$ forces $i = j$. Let $\tau$ be the cuspidal representation of $\mathrm{GL}_n(\mathbb{F}_g)$ whose character at each $y$ with irreducible characteristic polynomial, with a root $z \in K^\times$, is $(-1)^{n-1} \sum_{j<n} \theta(z^{g^j})$. Let $\sigma$ be an irreducible representation of $\mathrm{GL}_n(E_w)$ that inflates $\tau$ through $i$. Then $\mathrm{rc}(\sigma)$ has $N = 0$. For each $t$ in the inertia group of $E'$ at $w'$ and each $x \in \mathcal{O}_{E'}$ with $a'(t) \equiv x \bmod w'$ and image $z$ in $K$, the characteristic polynomial of $\mathrm{rc}(\sigma)(t)$ is $\prod_{j<n} (X - \theta(z^{g^j}))$.

Lean: `UpperTheory.Zero.LLC.TypeLaw`

**Definition (Local Langlands laws).** A map $\mathrm{rc} : \mathrm{Irr}(E_w) \to \mathrm{WD}(E_w)$ satisfies the local Langlands laws if there is a local Artin map $\mathrm{Art} : W_{E_w} \to E_w^\times$ with the following twelve properties. The first six hold for all $x$.

1. (Dimension.) $\mathrm{rc}(n, x)$ has dimension $n$.
2. (Characters.) $\mathrm{rc}(\chi) = \chi \circ \mathrm{Art}$ for each smooth character $\chi$ of $E_w^\times$.
3. (Langlands classification.) If the Langlands classification attaches $x$ to a list of segments, then $\mathrm{rc}(x)$ is the sum of the images of the segments.
4. (Cuspidal.) $\mathrm{rc}$ sends cuspidal $x$ to irreducible classes.
5. (Unramified twists.) $\mathrm{rc}(x \otimes |\det|^s) = \mathrm{rc}(x) \otimes |\cdot|^s$ for real $s$.
6. (Absolute central character.) If $x$ has central character $\omega$, then the product of the eigenvalues of $\mathrm{rc}(x)(\sigma)$ has absolute value $|\omega(\mathrm{Art}(\sigma))|$.

The next five hold for good $x$.

7. (Twists.) $\mathrm{rc}(x \otimes \chi) = \mathrm{rc}(x) \otimes \mathrm{rc}(\chi)$.
8. (Central character.) The product of the eigenvalues of $\mathrm{rc}(x)(\sigma)$ is $\omega(\mathrm{Art}(\sigma))$.
9. (Duals.) $\mathrm{rc}(x^\vee) = \mathrm{rc}(x)^\vee$.
10. (Injectivity.) If $y$ is good and $\mathrm{rc}(x) = \mathrm{rc}(y)$, then $x = y$.
11. (Depth zero.) If $x$ has a nonzero $K_1$-fixed vector, then $\mathrm{rc}(x)$ is tame.

The last one is the type law.

Lean: `UpperTheory.Zero.LLC.IsRecT`

The [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$ give a map with these properties (see [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence)). The laws are a list of properties of that correspondence. We do not claim that a map with these laws is the correspondence. The step [the local condition IsRecT](/step/is-rect-def/) gives the definition.

**Theorem (Existence of local parameters).** For every number field $E$, every finite place $w$ of $E$ and every place above $w$ of an algebraic closure, there is a map $\mathrm{Irr}(E_w) \to \mathrm{WD}(E_w)$ that satisfies the local Langlands laws.

Lean: `UpperTheory.Zero.LLC.recTExists`

*Proof.* The Lean proof builds the map from a proved local Artin map, a proved construction on cuspidal representations and an extension through the Langlands classification. We did not unfold these inputs. See the steps [the statement RecTExists](/step/rect-exists-def/) and [local Langlands existence](/step/rect-exists/). $\square$

**Remark (Why existence matters).** The local clauses of Row0b quantify over maps with the local Langlands laws. Without such a map they would say nothing. The theorem above closes this gap.

**Remark (Formalization).** The laws and the class of good representations are in [IsRecTOfIsRec.lean#L55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55) and [IsRecTOfIsRec.lean#L24](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L24). The type `IrrGL` is in [NonemptyEquivMultiProdOne.lean#L179](lean:Development/AbelianVarietyTheory/Definitions/NonGaloisDescent/NonemptyEquivMultiProdOne.lean#L179) and the type `WD h` in [MonodromyZeroOfWeilDeligneRepClassIff.lean#L380](lean:Development/AbelianVarietyTheory/Definitions/AutomorphicMembership/MonodromyZeroOfWeilDeligneRepClassIff.lean#L380). The place above $w$ is `h : IsPlaceOver A w`. We did not unfold `IsLocalArtin`, `segSum` and `IsL`.

## The statements Row0b and Row0

Fix a CM field $E$ with maximal totally real subfield $E^+$ and complex conjugation $c$. Fix a prime $\ell$, an isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ and an integer $a \ge 1$. Let $\pi$ be an irreducible space of [[cusp forms|9AZ164C298]] on $\mathrm{GL}_a$ over the [[adele ring|NYJFYZ0B4M]] $\mathbb{A}_E$, stable under the finite adelic group and the $(\mathfrak{g}, K)$-action at infinity (see [[automorphic forms|68SJQEC11F]] and [automorphic representations](/learn/automorphic-forms/#automorphic-representations)). Let $\chi$ be a [[Hecke character|KPYFGB342X]] of $E^+$. For a local component $\sigma$ of $\pi$ at $w$, put $\sigma^{\mathrm{alg}} = \sigma \otimes |\det|^{(1-a)/2}$.

**Definition (Regular algebraic and polarized).** The representation $\pi$ is regular algebraic if, for each embedding $\tau : E \to \mathbb{C}$, the infinitesimal character of $\pi$ at $\tau$ has distinct entries, each in $\frac{a-1}{2} + \mathbb{Z}$. The pair $(\pi, \chi)$ is polarized if $\chi_v(-1) = (-1)^a$ at each real place $v$ of $E^+$, and $\pi^\vee$ matches the conjugate $\pi^c$ after a twist by $\chi \circ \mathrm{N}_{E/E^+}$.

Lean: `GlobalTheory.ContraPair.PolarizedPair` (regularity: `GlobalTheory.CuspRep.CG.IsRegAlg`)

**Definition (Local relations).** Let $x, y \in \mathrm{WD}(E_w)$ have the same dimension $n$, and let $q$ be the residue cardinality of $E_w$.

1. The class $y$ is toral if each commutator in $W_{E_w}$ has characteristic polynomial $(X - 1)^n$ on $y$.
2. The class $y$ is wildly trivial if each element of wild inertia has characteristic polynomial $(X - 1)^n$ on $y$.
3. The class $y$ is tamely square-free if each root of multiplicity at least 2 of the characteristic polynomial at a tame generator is a $(q-1)$-th root of unity.

The relation $\mathrm{Away}(x, y)$ says two things. If $y$ is toral with $N = 0$, then $x = y$. If $E_w \cong \mathbb{Q}_g$ continuously and $y$ is wildly trivial, tamely square-free and has $N = 0$, then $x$ has $N = 0$ and the same characteristic polynomials on inertia as $y$. The relation $\mathrm{Away}^b(x, y)$ is the same with the last clause asked only when $n = 1$ or $16 n^2 < g$.

Lean: `UpperTheory.GalStar.AwayB`

**Definition (The Galois row Row0b).** Row0b says this. For every $(E, \ell, \iota, a, \pi, \chi)$ as above, with $\pi$ regular algebraic and $(\pi, \chi)$ polarized, there are a homomorphism $r : \mathrm{Gal}(\overline{E}/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ from the [[absolute Galois group|DPFMXS71D1]], an integer $wt$ and multisets of integers $HT_\tau$ for the embeddings $\tau : E \to \overline{\mathbb{Q}}_\ell$, with these properties.

1. (Continuity.) $r$ is continuous.
2. (Semisimplicity.) Each $r$-stable subspace has an $r$-stable complement.
3. (Away from $\ell$.) At each $w \nmid \ell$, for each local component $\sigma$ of $\pi$ at $w$ and each map $\mathrm{rc}$ with the local Langlands laws, $\mathrm{Away}^b(\mathrm{WD}(r|_w), \mathrm{rc}(\sigma^{\mathrm{alg}}))$ holds. Here $\mathrm{WD}(r|_w)$ is the Weil-Deligne class of $r$ at $w$, carried to $\mathbb{C}$ by $\iota$.
4. (Weights.) $HT_\tau$, read in $\mathbb{C}$, is $\{\frac{a-1}{2} - z\}$ with $z$ in the infinitesimal character of $\pi$ at $\iota \circ \tau$.
5. (Conjugate weights.) $HT_{\tau \circ c} = \{wt - h : h \in HT_\tau\}$.
6. (Above $\ell$.) At each $w \mid \ell$ where $\sigma$ is spherical, $r|_w$ is crystalline and de Rham with the Hodge-Tate jumps given by the weights. Let $\mathrm{rc}$ satisfy the local Langlands laws. Assume that $\mathrm{rc}(\sigma^{\mathrm{alg}})$ has $N = 0$ and is toral, or is wildly trivial and tamely square-free with $E_w \cong \mathbb{Q}_g$ and ($a = 1$ or $16a^2 < g$). Then $r|_w$ is de Rham and potentially semistable with the right jumps, and $\mathrm{Away}^b(\mathrm{WD}_{\mathrm{pst}}(r|_w), \mathrm{rc}(\sigma^{\mathrm{alg}}))$ holds. Here $\mathrm{WD}_{\mathrm{pst}}(r|_w)$ is the class given by $p$-adic Hodge theory.

Lean: `UpperTheory.GalStar.Row0b`

See also the step [the statement Row0b](/step/row0b-def/). Item 6 uses [[p-adic Hodge theory|6YDZNXR19H]] (see [crystalline, de Rham and potentially semistable representations](/learn/galois-representations/#crystalline-de-rham-and-potentially-semistable-representations)).

**Definition (The strong form Row0).** Row0 is the same statement with $\mathrm{Away}$ in place of $\mathrm{Away}^b$, and with no condition $a = 1$ or $16 a^2 < g$ in item 6.

Lean: `UpperTheory.GalStar.Row0`

**Lemma (Row0 implies Row0b).** For every notion of local parameter, Row0 implies Row0b.

Lean: `UpperTheory.GalStar.Row0.row0b`

*Proof.* The condition "$E_w \cong \mathbb{Q}_g$ and ($n = 1$ or $16 n^2 < g$)" implies "$E_w \cong \mathbb{Q}_g$". So each hypothesis in Row0b is at least as strong as the matching one in Row0, and $\mathrm{Away}$ implies $\mathrm{Away}^b$. $\square$

**Remark (The bound $16 n^2 < g$).** The proof of this branch goes through the stronger Row0. So the bound $16 n^2 < g$ is not used here. Other users of Row0b may need only the weaker form.

**Remark (Classes defined by choice).** The class $\mathrm{WD}(r|_w)$ and the infinitesimal character are defined by choice. The first is the trivial class if no Weil-Deligne class of $r$ at $w$ exists. The second is $a$ copies of $0$ if no infinitesimal character exists. A reader must check that the hypotheses force the intended values.

**Remark (Formalization).** `PropsB` is in [WeightsConjBis.lean#L54](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L54), `Row0` in [WeightsConjAlt.lean#L85](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjAlt.lean#L85) and `Row0.row0b` in [WeightsConjBis.lean#L84](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L84). `CuspSub E a` is in [ExpoConjOfIsCsd.lean#L209](lean:Development/AbelianVarietyTheory/Definitions/AutomorphicMembership/ExpoConjOfIsCsd.lean#L209) and the duality in `PolarizedPair` in [DualIsConjByOne.lean#L53](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/DualIsConjByOne.lean#L53). The classes $\mathrm{WD}(r|_w)$ and $\mathrm{WD}_{\mathrm{pst}}(r|_w)$ are `wdOf h hl ι r` and `wdAt`. Row0b in this chapter is `Row0b` at the notion `fun h rc => IsRecT h rc`. We did not unfold `IsCrysAt`, `IsdRAt`, `IsPstAt`, `IsJumpsAt`, `wdAt` and `LocBridge`.

## Spherical places and the step to Row0

The proof of Row0 starts at spherical places and extends to two larger classes of places. Here $q_w$ is the residue cardinality at $w$, and $B$ is a multiset of Satake parameters of $\pi_w$ when $\pi_w$ is spherical. Put $B^{\mathrm{alg}} = q_w^{(a-1)/2} B$.

**Definition (Attached representations).** A representation $r : \mathrm{Gal}(\overline{E}/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ is attached to $\pi$ if it is continuous and semisimple, and at all but finitely many places $w$ there are Satake parameters $B$ of $\pi_w$ with this property: $r$ is trivial on inertia at $w$, and the characteristic polynomial of $r(\mathrm{Frob}_w^{-1})$, carried by $\iota$, is $\prod_{b \in B^{\mathrm{alg}}} (X - b)$.

Lean: `GlobalTheory.GalCut.Weak`

**Definition (Spherical compatibility, CoreAll).** CoreAll is the conjunction of two statements. First, for every $(E, \ell, \iota, a, \pi, \chi)$ as in Row0b, some $r$ is attached to $\pi$. Second, for each such $r$ and each place $w$ where $\pi_w$ has Satake parameters $B$, four clauses hold.

1. If $w \nmid \ell$, then $r$ is trivial on inertia at $w$ and $r(\mathrm{Frob}_w^{-1})$ has characteristic polynomial $\prod_{b \in B^{\mathrm{alg}}} (X - b)$.
2. If $w \mid \ell$, then $r|_w$ is de Rham with the Hodge-Tate jumps given by the infinitesimal character.
3. If $w \mid \ell$, then $r|_w$ is crystalline.
4. If $w \mid \ell$, then $\mathrm{WD}_{\mathrm{pst}}(r|_w)$ has the characteristic polynomials of the unramified class with entries $b^{-1}$ ($b \in B$) twisted by $|\cdot|^{(1-a)/2}$.

Lean: `GlobalTheory.RoadU.CoreAll`

A representation $x \in \mathrm{Irr}(E_w)$ has plain toral support if its cuspidal support consists of characters and no two of them differ by $|\cdot|$.

**Definition (Compatibility at plain toral support, R1).** R1 says this. Let $(\pi, \chi)$ be as in Row0b, let $r$ be attached to $\pi$, and let $\sigma$ be a local component of $\pi$ at $w$ such that $\sigma^{\mathrm{alg}}$ has plain toral support. If $w \nmid \ell$, then $\mathrm{WD}(r|_w)$ has $N = 0$ and equals $\mathrm{rc}(\sigma^{\mathrm{alg}})$ for each map $\mathrm{rc}$ with the local Langlands laws. If $w \mid \ell$, then $r|_w$ is de Rham with the right jumps and potentially semistable, $\mathrm{WD}_{\mathrm{pst}}(r|_w)$ has $N = 0$, and it has the same characteristic polynomial as $\mathrm{rc}(\sigma^{\mathrm{alg}})$ at each element of $W_{E_w}$.

Lean: `GlobalTheory.DeRhamOfPlainTorus.R1`

**Definition (The Iwahori clause).** The Iwahori clause says this. Let $(\pi, \chi)$, $r$ and $\sigma$ be as in R1, and assume that $\sigma$ has a nonzero $K_1$-fixed vector. Assume also that $\sigma^{\mathrm{alg}}$ has plain toral support, or that $E_w \cong \mathbb{Q}_g$ and no two members of dimension at least 2 of the support of $\sigma^{\mathrm{alg}}$ are linked by a relation of inertness, which we did not unfold. Let $\mathrm{rc}$ satisfy the local Langlands laws, with $\mathrm{rc}(\sigma^{\mathrm{alg}})$ of $N = 0$. Put $D = \mathrm{WD}(r|_w)$ if $w \nmid \ell$ and $D = \mathrm{WD}_{\mathrm{pst}}(r|_w)$ if $w \mid \ell$. Then $D$ has $N = 0$ and the same characteristic polynomials on inertia as $\mathrm{rc}(\sigma^{\mathrm{alg}})$. If $w \mid \ell$, then also $r|_w$ is de Rham and potentially semistable.

Lean: `UpperTheory.Gal.ToralGalois.R2.LocalGlobalCompatAtIwahoriFixedPlaces`

**Proposition (Spherical places give plain toral support).** CoreAll implies R1.

Lean: `UpperTheory.Gal.ToralGalois.galoisCompat_unlinkedSupport_of_spherical`

*Proof.* The Lean proof applies a proved implication with one more proved input. We did not unfold them. $\square$

**Proposition (Plain toral support gives the Iwahori clause).** R1 implies the Iwahori clause.

Lean: `UpperTheory.Gal.ToralGalois.R2.localGlobalCompatAtIwahoriFixed_of_unlinked`

*Proof.* The Lean proof applies a general reduction to R1. The reduction has four further inputs, all proved. One of them is the existence of local parameters from the first section. We did not unfold the others. $\square$

**Theorem (Row0 from the three clauses).** CoreAll, R1 and the Iwahori clause together imply Row0 for the local Langlands laws.

Lean: `UpperTheory.Gal.Int.Row.galoisLocalGlobal_of_localGlobalCompatibility`

*Proof.* The Lean proof takes $r$ from the first part of CoreAll and takes $wt$ and $HT_\tau$ from a proved lemma on weights. It fills the local items of Row0 from the spherical clauses, from R1 and from the Iwahori clause. We did not unfold this assembly place by place. $\square$

**Corollary (Row0 from CoreAll).** CoreAll implies Row0 for the local Langlands laws.

Lean: `UpperTheory.Gal.Int.rest`

*Proof.* The first proposition gives R1, the second gives the Iwahori clause, and the theorem gives Row0. $\square$

**Remark (Formalization).** `CoreAll` is `Ex .all ∧ ∀ c, SphericalLevelCondition .all c` in [CyclicStrongAtCusp.lean#L96](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/CyclicStrongAtCusp.lean#L96). `R1` is in [IsQg.lean#L13](lean:Development/AbelianVarietyTheory/Statements/EllipticCurveLevels/IsQg.lean#L13) and the Iwahori clause in [LocalGlobalCompatAtIwahoriFixedPlaces.lean#L16](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/SphericalGaloisCompatibility/PAdicSplitting/LocalGlobalCompatAtIwahoriFixedPlaces.lean#L16). The assembly theorem is in [GaloisLocalGlobalOfLocalGlobalCompatibility.lean#L192](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/InertCharpoly/GaloisLocalGlobalOfLocalGlobalCompatibility.lean#L192). Plain toral support is `PlainTor` and inertness is `Inert`. The weights lemma is `exists_weights`. The two propositions use `inq_holds` and `r2g mixedOf toTor_holds drDesc recTExists`. Sizes: `rest` 1,944, `localGlobalCompatAtIwahoriFixed_of_unlinked` 1,522, `galoisCompat_unlinkedSupport_of_spherical` 238, assembly 116.

## CoreAll from four inputs

Almost all the work is in CoreAll. The Lean proof first proves a restricted form, Core, from four inputs, and then extends it. The inputs are the theta lift TLiftK, a limit statement for odd level, a closedness statement for Frobenius and a descent statement off a finite set. The limit statement comes from a seed and a congruence statement, and the seed comes from the geometric input GeoOne. We did not unfold the seed, congruence, limit, closedness and descent statements.

**Definition (The restricted core, Core).** A pair $(\pi, \chi)$ as in Row0b is in the restricted scope at $\ell$ if four conditions hold. There are $x \in E$ and an integer $d > 0$ with $x^2 = -d$. The degree $[E^+ : \mathbb{Q}]$ is even. At each place $w$ that does not split in $E/E^+$ and does not divide $\ell$, $E/E^+$ is unramified at $w$ and $\pi_w$ has Satake parameters. The character $\chi$ is the $a$-th power of the quadratic character of $E/E^+$. Core is CoreAll for pairs in the restricted scope, with the spherical clauses asked only at split places.

Lean: `GlobalTheory.RoadU.Core`

**Lemma (The seed from geometry).** GeoOne implies the seed statement for odd level.

Lean: `UpperTheory.Gal.Int.Div.seedFinOdd_of_geoOne`

*Proof.* The Lean proof applies a general implication to GeoOne, a proved divisibility statement and further proved inputs. We did not unfold them. $\square$

**Lemma (The congruence for odd level).** The congruence statement for odd level holds.

Lean: `UpperTheory.Gal.Int.Cong.congFinOdd_of_ex`

*Proof.* The Lean proof applies a general implication to a proved existence statement for lacunary weights. We did not unfold them. $\square$

**Theorem (CoreAll from the seed and the theta lift).** Assume the seed statement for odd level, the congruence statement for odd level and TLiftK. Then CoreAll holds.

Lean: `UpperTheory.Gal.Int.coreAll_of`

*Proof.* The Lean proof has three steps. First, the seed and the congruence statement give the limit statement. Second, TLiftK, the closedness statement, the descent statement and the limit statement give Core. The closedness and descent statements are proved theorems. Third, a proved extension result turns Core into CoreAll. We did not unfold these steps. $\square$

**Theorem (Row0 from geometry and the theta lift).** GeoOne and TLiftK imply Row0 for the local Langlands laws.

Lean: `UpperTheory.Gal.Int.galoisLocalGlobal_of_geometry_lift`

*Proof.* The two lemmas give the seed and the congruence statement. The theorem above gives CoreAll. The corollary of the last section gives Row0. $\square$

**Theorem (Row0b from geometry and the theta lift).** GeoOne and TLiftK imply Row0b.

Lean: `UpperTheory.Gal.Int.galoisLocalGlobalStrong_of_geometry_lift`

*Proof.* The previous theorem gives Row0. The lemma "Row0 implies Row0b" gives Row0b. The step [the Galois row from geometry and the theta lift](/step/galois-local-global-strong-of-geometry-lift/) records this proof. $\square$

So GeoOne and TLiftK each enter at one point only. Since we did not unfold the seed, we do not say why it needs the geometry.

**Remark (Formalization).** The four inputs are `SeedFinOdd`, `CongFinOdd`, `ClosedPhi` and `DescOffT`, and the limit statement is `LimFinOdd`. They are defined in [LimWU4OfLimWU3.lean#L103](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/LimWU4OfLimWU3.lean#L103) and nearby files. The proof of `coreAll_of` is in [Development.lean#L18](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/Development.lean#L18). It uses `Core.toCoreK`, `limFinOdd_of` and `Inp.coreAll_of_core`. The congruence input is `congFinOdd_of_ex wtLacEx_holds`. Sizes: `coreAll_of` 1,760, `toCoreK` 496, `seedFinOdd_of_geoOne` 718, `congFinOdd_of_ex` 495, `wtLacEx_holds` 183, `galoisLocalGlobal_of_geometry_lift` 5,414.

## The geometric input

GeoOne is the largest part of the branch. It gives Galois representations cut out of towers for [[unitary groups|0R9R0Y1HDK]]. Its proof uses a holomorphic [[Lefschetz fixed-point theorem|G44NQXCWT9]] for finite étale correspondences (see [complex manifolds](/learn/geometry/#complex-manifolds) and [étale cohomology](/learn/geometry/#tale-cohomology)). We did not unfold the objects of the tower.

**Definition (The geometric input, GeoOne).** GeoOne says this. Let $E$ be a CM field, $\ell$ a prime, $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ and $a$ odd. Let $x \in E$ with $x^2 = -d$, with conditions on $(E, \ell, d)$. Let $T$ be a set of places that do not split, and let $w_0$ and $v'$ be places above $\ell$ that are apart and satisfy a condition with $x$. Let $S$ be a finite set of places and let $U$ be a space of automorphic functions on $U_a(\mathbb{A}_E)$. Assume that $U$ satisfies conditions off $T$ and off $S$, a type condition at $w_0$, and has Satake parameters and lacunary weights at $v'$. Then three things hold.

1. There are $dd$ and $\rho$ in the base family cut out by $U$.
2. At each place $w \nmid \ell$ of the right kind where $U$ has Satake parameters $B$, some $\rho$ in the base family is trivial on inertia at $w$, and $\prod_{b \in B^{\mathrm{alg}}} (X - \iota^{-1} b)$ annihilates $\rho(\mathrm{Frob}_w^{-1})$.
3. At each place $w \mid \ell$ of the right kind where $U$ has Satake parameters, some $\rho$ in the base family is crystalline at $w$ with the expected Hodge-Tate jumps, and some $\rho$ in it has its Frobenius killed by the expected polynomial.

Lean: `UpperTheory.Gal.Int.Geo.GeoOne`

The step [the geometric statement GeoOne](/step/geo-one-def/) lists all conditions. The dimension $dd$ is free, and the $\rho$ in the three items can differ. Item 2 asks for annihilation, not for equal characteristic polynomials.

**Theorem (Holomorphic Lefschetz formula).** Let $Z$ be smooth and projective over $\mathbb{C}$ of relative dimension $d$. Let $c_1, c_2 : Y \to Z$ be finite étale. Let $F$ be the finite set of complex points $y$ of $Y$ with $c_1(y) = c_2(y)$. For $y \in F$ let $A_y$ be a $d \times d$ matrix with a tangent condition and $\det(1 - A_y) \ne 0$. Then for each $p$ the groups $H^{p,q}$ are finite-dimensional, and

$$\sum_{q=0}^{d} (-1)^q \operatorname{tr}\big(c_{1*} \circ c_2^* \mid H^{p,q}\big) = \sum_{y \in F} \frac{[X^p] \det(1 + X A_y)}{\det(1 - A_y)}.$$

Lean: `UpperTheory.Gal.LocalSmoothExtension.HolomorphicLefschetzFormula` (proved by `UpperTheory.Gal.Int.Geo.weight_one_geometric_realization`)

*Proof.* The Lean proof applies a proved fixed-point theorem for finite étale correspondences (1,812 declarations), which we did not unfold. The statement has the shape of the classical formula of Atiyah and Bott. $\square$

**Proposition (GeoOne from the Lefschetz formula).** The holomorphic Lefschetz formula implies GeoOne.

Lean: `UpperTheory.Gal.Int.Geo.geometric_realization_of_weight_one`

*Proof.* The Lean proof combines three parts. The first is seventeen proved local steps. The main ones say that a piece of the cohomology of a tower is crystalline above $\ell$ where a cover is onto, that the Hodge-Tate jumps occur where the Hodge numbers say, and that the Frobenius characteristic polynomial divides a power of a root polynomial. The second is six Kodaira-Spencer statements, and the Lefschetz formula enters only the last of them. The third is a proved existence of plans. The Kodaira-Spencer statements turn plans into packs, and the local steps give GeoOne from the packs. We did not unfold these parts. $\square$

**Theorem (The geometric input holds).** GeoOne holds.

Lean: `UpperTheory.Gal.Int.Geo.geoOne_holds`

*Proof.* Apply the proposition to the theorem. The step [GeoOne holds](/step/geo-one-holds/) records this proof. $\square$

**Remark (Formalization).** `GeoOne` is in [HodgeTrAt.lean#L79](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/GeometricFlagBases/HodgeTrAt.lean#L79) and `HolomorphicLefschetzFormula` in [HodgeTraceFromLefschetzAndGroupSide.lean#L102](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/LefschetzSigmaSums/HodgeTraceFromLefschetzAndGroupSide.lean#L102). The base family is `VBase ι dd U ρ`, item 2 is `ESAt`, and the groups $H^{p,q}$ are `hodgeH s p q`. The proof of the formula is `GlobalTheory.T.lefschetz_fixedPoint_finite_etale_correspondence`, a wrapper of `UpperTheory.Cb.lefschetz_fixedPoint_finite_etale_correspondence`. The proposition is `geoOne_of_parts steps_holds (kodaira_spencer_of_weight_one hW) Pl.planEx_holds`. The parts are `Steps`, `KSAll` and `PlanEx`. The Lefschetz formula enters `KSAll` through `ksHodge_of_geo hW FixK_holds`. Sizes: `geoOne_holds` 43,297, `geometric_realization_of_weight_one` 41,363, `steps_holds` 26,256, `kodaira_spencer_of_weight_one` 11,907, `planEx_holds` 1,934, `weight_one_geometric_realization` 1,814. We did not unfold `VBase`, `SatU`, `AutOffT`, `TyEll`, `SphOffU`, `hodgeH`, `hodgeTrace`, `hodgePull` and `IsTan`.

## The theta lift and the top of the proof

The last input is a theta lift between definite unitary groups (see the [[theta correspondence|6WB6TKE70H]], [the global theta lift](/learn/theta/#the-global-theta-lift) and [hermitian and skew-hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms)). We do not claim that the Lean statement is a published theorem. The chapter [block determinants and theta Parseval](/proof/determinants/) follows its proof, and [the theta matching](/proof/theta-matching/) treats theta lifts in more detail.

**Definition (Theta lift relation).** Let $U$ be an automorphic representation of $U_n(\mathbb{A}_E)$ with dominant weights $\lambda_w$, and let $U'$ be a space of functions on $U_d(\mathbb{A}_E)$. The space $U'$ is a lift of $U$ for the characters $\chi_X$, $\chi_W$ with exponents $m_X$, $m_W$ if three things hold. First, $U'$ is an automorphic representation. Second, it has weights $\lambda'_w$ with

$$2\lambda'_{w,k} = \begin{cases} 2\lambda_{w,k} - d - m_{W,w} + n + m_{X,w} & k < n, \\ n + m_{X,w} & k \ge n. \end{cases}$$

Third, at each split place the local components are related by a nonzero map from a Schwartz-Bruhat space that intertwines the two actions.

Lean: `UpperTheory.TP.IsLift`

**Definition (The theta lift statement, TLiftK).** TLiftK says this. Let $E$ be a CM field with a good base. Let $X$ be a hermitian space of rank $n \ge 1$ with Gram matrix $1$, of signature $(n, 0)$ at each infinite place of $E^+$. Then there is $d_0$ with this property. Let $d \ge d_0$ and let $W$ be a skew-hermitian space of rank $d$ with Gram matrix $\delta \cdot 1$, definite in the same sense. Let $\chi_X$, $\chi_W$ be Hecke characters with restriction conditions for $n$, $d$ and exponents $m_X$, $m_W$. Let $U$ be an automorphic representation of $U_n(\mathbb{A}_E)$ with weights $\lambda_w$ such that $d + m_{W,w} \le 2\lambda_{w,k}$ for all $w$ and $k$. Then some $U'$ on $U_d(\mathbb{A}_E)$ is a lift of $U$.

Lean: `UpperTheory.TP.TLiftK`

See also the step [the theta lift statement TLiftK](/step/tlift-k-def/).

**Theorem (The theta lift).** TLiftK holds.

Lean: `UpperTheory.TP.K.tLiftK`

*Proof.* The Lean proof applies a proved implication to a proved set of tools and a proved height statement. The tools contain a Siegel-Weil statement, by its name (see [the Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula)). We did not unfold them. The step [the theta lift statement holds](/step/t-lift-k/) records the proof. $\square$

**Theorem (Row0b from the theta lift).** TLiftK implies Row0b.

Lean: `UpperTheory.Gal.Int.galoisRepresentations_of_thetaLift`

*Proof.* Apply "Row0b from geometry and the theta lift" to GeoOne, which holds, and to TLiftK. The step [the Galois row from the theta lift](/step/galois-representations-of-theta-lift/) records it. $\square$

**Theorem (The Galois row).** Row0b holds for the local Langlands laws.

Lean: `UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter`

*Proof.* Apply the previous theorem to the theta lift. The step [the Galois row holds](/step/galois-row-holds/) records this proof. $\square$

**Corollary (EveryCharacter from the Galois row).** Row0b for the local Langlands laws implies EveryCharacter: $L(s, \chi) \ne 0$ for each Dirichlet character $\chi$ modulo $N \ge 1$ and each $s$ with $\mathrm{Re}(s) > \frac12$ and ($\chi \ne 1$ or $s \ne 1$). So EveryCharacter holds.

Lean: `UpperTheory.FinalTheorems.everyCharacter_of_row`

*Proof.* The Lean proof uses the hypothesis three times. It fills a structure of three literature statements: the first and third fields are the hypothesis, and the second is the existence of local parameters. It proves the statement VWin from the hypothesis (see [VWin from Row0b](/step/vwin-of-row/)) and applies the main implication to the structure and VWin. The steps [EveryCharacter from Row0b](/step/every-character-of-row/) and [OpenLiteratureStatements](/step/open-literature-statements-def/) give the details. The last claim follows by the theorem above. $\square$

**Remark (Formalization).** `TLiftK` is in [TLiftK.lean#L12](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/HalfIndexLattices/TLiftK.lean#L12) and `IsLift` in [SchurStep.lean#L106](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L106). The restriction conditions are `ResEtaPow`, the automorphic condition is `IsAutRepU` and the local relation is `LocPair`; we did not unfold them. `tLiftK` is `tLift_holds_k`, which is `tLift_of_tools_k tools_holds_k (hgtEx_of_k stab2Cpt_k)`. Sizes: `tLiftK` 2,709, `tools_holds_k` 2,169, `siegelWeilStd_k` 1,680, `tLift_of_tools_k` 503, `galoisRepresentations_of_thetaLift` 48,870, and the whole branch 51,591, the second largest below the trunk. A size counts the declarations that the trunk reaches only through the given one. The final theorem is in [MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7). Its term is `every_character_of_literature_of_vWin ⟨h, recTExists, h⟩ (vwin_of_row h)`, with fields `caraianiLocalGlobalDual`, `localLanglandsExists` and `galoisRepOfPolarizedPairLit`. The term `local_langlands_recT_exists_of_literature` reads `O.localLanglandsExists`, and on the trunk that field is `recTExists`. The other user of `galoisLocalGlobalStrong_recParameter` is `UpperTheory.V.SmallClassNumbers.litN`, which this chapter does not describe.

## Notes and references

Nobody has reviewed the Lean proofs. The [trust report](/trust/) says what has been checked.

Row0b is a version of the existence of Galois representations for regular algebraic, conjugate self-dual cuspidal representations over CM fields, with local-global compatibility. This chapter says only what the Lean statements say. The literature file of the repo cites Chenevier and Harris, Shin, Caraiani and Barnet-Lamb, Gee, Geraghty and Taylor for the Galois row, and Harris and Taylor, Henniart and Scholze for the local parameters. The Lefschetz formula is in Atiyah and Bott, *A Lefschetz fixed point formula for elliptic complexes II. Applications*, Ann. of Math. 88 (1968), §4. The characters in the type law are those of Green, and the segments those of Bernstein and Zelevinsky. For theta lifts and the Siegel-Weil formula see Howe, Kudla and Rallis, and Ichino.

- I. N. Bernstein and A. V. Zelevinsky, *Induced representations of reductive p-adic groups I*, Ann. Sci. École Norm. Sup. (4) 10 (1977), pages 441 to 472.
- A. Caraiani, *Local-global compatibility and the action of monodromy on nearby cycles*, Duke Math. J. 161 (2012), pages 2311 to 2413.
- G. Chenevier and M. Harris, *Construction of automorphic Galois representations II*, Camb. J. Math. 1 (2013), pages 53 to 73.
- L. Clozel, M. Harris and R. Taylor, *Automorphy for some l-adic lifts of automorphic mod l Galois representations*, Publ. Math. IHÉS 108 (2008), pages 1 to 181.
- J. A. Green, *The characters of the finite general linear groups*, Trans. Amer. Math. Soc. 80 (1955), pages 402 to 447.
- G. Henniart, *Une preuve simple des conjectures de Langlands pour GL(n) sur un corps p-adique*, Invent. Math. 139 (2000), pages 439 to 455.
- R. Howe, *θ-series and invariant theory*, Proc. Sympos. Pure Math. 33, Part 1 (1979), pages 275 to 285.
- A. Ichino, *A regularized Siegel-Weil formula for unitary groups*, Math. Z. 247 (2004), pages 241 to 277.
- S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994), pages 1 to 80.
- P. Scholze, *The local Langlands correspondence for GL_n over p-adic fields*, Invent. Math. 192 (2013), pages 663 to 715.
- S. W. Shin, *Galois representations arising from some compact Shimura varieties*, Ann. of Math. 173 (2011), pages 1645 to 1741.
- A. V. Zelevinsky, *Induced representations of reductive p-adic groups II. On irreducible representations of GL(n)*, Ann. Sci. École Norm. Sup. (4) 13 (1980), pages 165 to 210.
