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
steps: [row0b-def, is-rect-def, rect-exists-def, rect-exists, galois-row-holds, galois-representations-of-theta-lift, galois-local-global-strong-of-geometry-lift, geo-one-holds, geo-one-def, t-lift-k, tlift-k-def]
---
## Result

The top of the proof is the theorem `everyCharacter` (see [the map of the trunk](/proof/trunk/)). It is one line:

```lean
theorem UpperTheory.FinalTheorems.everyCharacter_of_row
    (h : UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc) :
    UpperTheory.EveryCharacter := ...

theorem UpperTheory.FinalTheorems.everyCharacter : UpperTheory.EveryCharacter :=
  UpperTheory.FinalTheorems.everyCharacter_of_row UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter
```

The hypothesis `h` is used twice in `everyCharacter_of_row` ([MainConclusion.lean#L7](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7)): once as a field of the structure of literature statements, and once as the input of `vwin_of_row`. This page is about the proof of that hypothesis:

```lean
theorem galoisLocalGlobalStrong_recParameter : UpperTheory.GalStar.Row0b recT :=
  galoisRepresentations_of_thetaLift UpperTheory.TP.K.tLiftK
```

Here `recT` is `fun h rc => UpperTheory.Zero.LLC.IsRecT h rc` ([Development.lean#L18](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/Development.lean#L18)). In standard notation, the Lean statement says this. Let $E$ be a CM field with maximal real subfield $E^+$. Let $\ell$ be a prime, let $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ and let $a \geq 1$. Let $\pi$ be a cuspidal automorphic representation of $\mathrm{GL}_a(\mathbb{A}_E)$ that is regular algebraic, and let $\chi$ be a Hecke character of $E^+$ such that $(\pi, \chi)$ is a polarized pair. Then there is a continuous semisimple representation $r : \mathrm{Gal}(\overline{E}/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, with an integer $wt$ and Hodge-Tate multisets $HT_\tau$, that satisfy a list of local conditions at every finite place. The conditions compare $r$ at a place $w$ with the Weil-Deligne parameter $rc(\pi_w)$, for each local map $rc$ that satisfies `IsRecT`.

The whole branch has 54,225 declarations in its dominator tree. This is the second largest branch below the trunk.

## Idea

The statement is a version of the existence of Galois representations attached to regular algebraic, conjugate self-dual cuspidal representations over CM fields, with local-global compatibility. The Lean names use words of that literature ("galois local global", "row"). This page says only what the Lean statements say.

The proof has a short top and three large parts. The top first proves a variant `Row0` with a slightly stronger local clause, and then weakens it to `Row0b` by one structural lemma. `Row0` itself comes from a theorem `galoisLocalGlobal_of_localGlobalCompatibility`. That theorem takes three inputs: `CoreAll` (existence of $r$ and its properties at places where $\pi_w$ is spherical), `R1` (compatibility at places where $\pi_w$ has a support of characters with no links) and `LocalGlobalCompatAtIwahoriFixedPlaces`. The last two come from `CoreAll` again.

So almost all the work is in `CoreAll`. The Lean code gets `CoreAll` from four inputs. Two of them are large:

1. `GeoOne`, a statement about Galois representations cut out of geometric towers (43,427 declarations). Its proof uses a holomorphic Lefschetz formula for finite étale correspondences of smooth projective schemes over $\mathbb{C}$.
2. `TLiftK`, a theta lift statement between definite unitary groups (5,201 declarations).

The rest (about 5,400 declarations) assembles `CoreAll`, then `R1` and the Iwahori clause, then `Row0`.

## Before you read

- An [[algebraic number field|WXGM3VWEK6]] $E$ that is a CM field, its ring of integers and its finite places $w$ (the Lean type `HeightOneSpectrum (𝓞 E)`), and the completion $E_w$.
- The [[absolute Galois group|DPFMXS71D1]], here written as `G E Ω`, the group of $E$-automorphisms of an algebraic closure $\Omega$ of $E$. A [[Galois representation|QW17YJ6ZCT]] is a group map from it to $\mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$.
- The [[Weil group|TH24PGYAM5]] of $E_w$ and its Weil-Deligne representations.
- [[Cuspidal representations|9AZ164C298]] and [[automorphic forms|68SJQEC11F]] on $\mathrm{GL}_a$ over the [[adele ring|NYJFYZ0B4M]] of $E$.
- [[Hecke characters|KPYFGB342X]].
- The [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$, which `IsRecT` imitates as a list of laws.
- [[p-adic Hodge theory|6YDZNXR19H]]: crystalline, de Rham, potentially semistable, Hodge-Tate weights.
- The [[theta correspondence|6WB6TKE70H]] and [[unitary groups|0R9R0Y1HDK]], for `TLiftK`.
- The [[Lefschetz fixed-point theorem|G44NQXCWT9]], for the geometric part.

## Plan

1. Say what `IsRecT` states about a map from local representations to Weil-Deligne classes.
2. Say what `Row0b` states, and how it differs from `Row0`.
3. Show the top of the proof: `galoisLocalGlobalStrong_recParameter` and `galoisRepresentations_of_thetaLift`.
4. Show how `Row0` comes from `CoreAll` (the `rest` step).
5. Show how `CoreAll` comes from `GeoOne`, `TLiftK` and two other inputs (the `coreAll_of` step).
6. Describe the geometric branch `geoOne_holds`.
7. Describe the theta lift branch `tLiftK`.

## The steps

### Step 1. The local notion IsRecT

Fix a finite place $w$ of $E$ and a valuation subring $A$ of $\Omega$ above $w$ (the proof `h : IsPlaceOver A w`). The Lean type `IrrGL (w.adicCompletion E)` is the set of pairs $(n, x)$ where $x$ is an isomorphism class of irreducible smooth representations of $\mathrm{GL}_n(E_w)$ ([NonemptyEquivMultiProdOne.lean#L179](lean:Development/AbelianVarietyTheory/Definitions/NonGaloisDescent/NonemptyEquivMultiProdOne.lean#L179)). The type `WD h` is the set of isomorphism classes of finite-dimensional Weil-Deligne representations of the Weil group `Weil h` ([MonodromyZeroOfWeilDeligneRepClassIff.lean#L380](lean:Development/AbelianVarietyTheory/Definitions/AutomorphicMembership/MonodromyZeroOfWeilDeligneRepClassIff.lean#L380)).

```lean
def IsRecT (rc : IrrGL (w.adicCompletion E) → WD h) : Prop := ∃ a ha, LawsT (h := h) a ha rc
```

So `IsRecT h rc` says: there is a map $a : W_{E_w} \to E_w^\times$ with `IsLocalArtin h a` (a local Artin map; this page does not unfold `IsLocalArtin`), such that the twelve laws of `LawsT` hold ([IsRecTOfIsRec.lean#L55](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L55)). In words, with $rc$ the map:

- `dim`: $rc(x)$ has dimension $n$ when $x$ is a representation of $\mathrm{GL}_n$.
- `one`: on a character $\chi$ of $\mathrm{GL}_1(E_w) = E_w^\times$, $rc(\chi)$ is the character $\chi \circ a$.
- `langlands`: if a list of segments is related to $x$ by `IsL` (by its name, a Langlands classification; this page does not unfold it), then $rc(x)$ is the sum `segSum` over the segments.
- `cusp`: $rc$ sends each $x$ with `IsCusp` to an irreducible Weil-Deligne class.
- `nu`: $rc$ commutes with the twist by $|\det|^s$.
- `absCentral`: if $x$ has central character $\omega$, then $|\det rc(x)(\sigma)| = |\omega(a(\sigma))|$.
- `twist`, `central`, `dual`, `inj`, `depth`: for $x$ in a class `Good` (below), $rc$ commutes with twists by characters, has determinant $\omega \circ a$, sends the contragredient to the dual, is injective, and sends depth zero (a nonzero vector fixed by the first congruence subgroup `KOne`) to a tame class.
- `type`: the law `TypeLaw`, a formula for the characteristic polynomial of inertia on $rc(\sigma)$ when $E_w \cong \mathbb{Q}_g$ and $\sigma$ inflates a cuspidal representation of $\mathrm{GL}_n(\mathbb{F}_{g^n})$ given by a regular character $\theta$. The formula is $\prod_{j<n} (X - \theta(z^{g^j}))$.

The class `Good` ([IsRecTOfIsRec.lean#L24](lean:Development/AutomorphicArithmetic/Foundations/LocalLanglands/IsRecTOfIsRec.lean#L24)) holds when the supercuspidal support of $x$ has only characters, or (over $\mathbb{Q}_g$) twists of depth zero supercuspidals. So the laws for all of $\mathrm{GL}_n$ are only the first six. The other laws hold only on this subclass. The site does not claim that `IsRecT` is the local Langlands correspondence. It is a list of properties that the local Langlands correspondence has. A separate theorem `recTExists` gives a map with these properties (it is the second field passed in `everyCharacter_of_row`).

### Step 2. The global statement Row0b

```lean
def Row0b : Prop :=
  ∀ (E Ω : Type) [Field E] [NumberField E] [IsCMField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ) (a : ℕ), 1 ≤ a →
    ∀ (π : CuspSub E a) (χ : HChar (maximalRealSubfield E)), (CG.mk π).IsRegAlg → GlobalTheory.ContraPair.PolarizedPair π χ →
      ∃ (r : G E Ω →* GL (Fin a) (Qbar l)) (wt : ℤ) (HT : (E →+* Qbar l) → Multiset ℤ), PropsB Rc π ι r wt HT
```

The objects are these.

- `CuspSub E a` is a nonzero subspace $V$ of cusp forms in the smooth functions on $\mathrm{GL}_a(\mathbb{A}_E)$. It is stable under the action of $\mathrm{GL}_a(\mathbb{A}_{E,f})$, the maximal compact subgroup and the Lie algebra at infinity, and it is irreducible for that action ([ExpoConjOfIsCsd.lean#L209](lean:Development/AbelianVarietyTheory/Definitions/AutomorphicMembership/ExpoConjOfIsCsd.lean#L209)).
- `HChar L` is the group of continuous characters $\mathbb{A}_L^\times \to \mathbb{C}^\times$ that are trivial on $L^\times$.
- `IsRegAlg` says: for each embedding $\tau : E \to \mathbb{C}$, the infinitesimal character multiset of $\pi$ at $\tau$ has distinct entries, and each entry is $n + \frac{a-1}{2}$ for an integer $n$.
- `PolarizedPair π χ` says: $\chi_v(-1) = (-1)^a$ at each real place $v$ of $E^+$, and $\pi^\vee$ matches the complex conjugate of $\pi$ after a twist by $\chi \circ N_{E/E^+}$ ([DualIsConjByOne.lean#L53](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/DualIsConjByOne.lean#L53)).

The conclusion `PropsB` ([WeightsConjBis.lean#L54](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L54)) has six fields:

- `cont`, `ss`: $r$ is continuous and semisimple (each invariant subspace has an invariant complement).
- `away`: at each place $w$ not above $\ell$, for each $rc$ with `IsRecT`, and each local component $\sigma$ of $\pi$ at $w$, the class `wdOf h hl ι r` (the Weil-Deligne class of $r$ at $w$) and $rc(\sigma \otimes |\det|^{(1-a)/2})$ satisfy `AwayB`. `AwayB x y` says: equal dimension; $x = y$ if $y$ has $N = 0$ and is trivial on commutators of the Weil group (`Tor`); and in a tame case, $x$ has $N = 0$ and the same characteristic polynomials as $y$ on degree zero elements.
- `weights`: $HT_\tau$, read in $\mathbb{C}$, is $\{\frac{a-1}{2} - z\}$ over the infinitesimal character of $\pi$ at $\iota \circ \tau$.
- `weights_conj`: $HT_{\tau \circ c} = \{wt - h : h \in HT_\tau\}$, with $c$ the complex conjugation of $E$.
- `above`: at places above $\ell$, crystalline, de Rham and Hodge-Tate jump conditions when $\sigma$ is spherical, and de Rham, potentially semistable and `AwayB` with $rc(\sigma)$ in the cases of `AboveB.nice`.

`Row0` ([WeightsConjAlt.lean#L85](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjAlt.lean#L85)) is the same statement with `Props` and `Away` in place of `PropsB` and `AwayB`. The only change is in the tame clause. `Away` asks for it when $E_w \cong \mathbb{Q}_g$ (`IsQp`). `AwayB` asks for it only when $E_w \cong \mathbb{Q}_g$ and also $n = 1$ or $16 n^2 < g$ (`IsQpBig`). So `Row0b` is weaker than `Row0`, and the theorem `Row0.row0b` ([WeightsConjBis.lean#L84](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/TypeConditions/WeightsConjBis.lean#L84)) proves `Row0 Rc → Row0b Rc` by `IsQpBig.isQp`.

### Step 3. The top of the proof

```lean
theorem galoisRepresentations_of_thetaLift (up : UpperTheory.TP.TLiftK) : UpperTheory.GalStar.Row0b recT :=
  galoisLocalGlobalStrong_of_geometry_lift UpperTheory.Gal.Int.Geo.geoOne_holds up

theorem galoisLocalGlobalStrong_of_geometry_lift (geo : GeoOne) (up : UpperTheory.TP.TLiftK) : Row0b recT :=
  UpperTheory.GalStar.Row0.row0b recT (galoisLocalGlobal_of_geometry_lift geo up)

theorem galoisLocalGlobal_of_geometry_lift (geo : GeoOne) (up : UpperTheory.TP.TLiftK) : Row0 recT :=
  rest (coreAll_of (UpperTheory.Gal.Int.Div.seedFinOdd_of_geoOne geo)
    (UpperTheory.Gal.Int.Cong.congFinOdd_of_ex UpperTheory.Gal.Wt.wtLacEx_holds) up)
```

So the direct uses of `galoisLocalGlobalStrong_recParameter` are `galoisRepresentations_of_thetaLift` (49,010 declarations below it) and the theta lift theorem `UpperTheory.TP.K.tLiftK` (5,201). The first one feeds the proof `geoOne_holds` of `GeoOne` into a conditional theorem. It is a plain chain of implications. `GeoOne` enters at one point only: `seedFinOdd_of_geoOne` turns it into `SeedFinOdd`. `TLiftK` enters at one point only, inside `coreAll_of`.

### Step 4. From CoreAll to Row0 (the step rest)

```lean
theorem rest (h : GlobalTheory.RoadU.CoreAll) : UpperTheory.GalStar.Row0 recT :=
  galoisLocalGlobal_of_localGlobalCompatibility h (galoisCompat_unlinkedSupport_of_spherical h)
    (localGlobalCompatAtIwahoriFixed_of_unlinked (galoisCompat_unlinkedSupport_of_spherical h))
```

`CoreAll` ([CyclicStrongAtCusp.lean#L96](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/CyclicStrongAtCusp.lean#L96)) is `Ex .all ∧ ∀ c, SphericalLevelCondition .all c`. In words: for each $(E, \ell, \iota, a, \pi, \chi)$ as in `Row0b`, there is a continuous $r$ that is attached to $\pi$ (`Weak`: $r$ is semisimple, and at all but finitely many places $w$ there are Satake parameters $B$ of $\pi$ such that $r$ is trivial on inertia and the characteristic polynomial of $r(\mathrm{Frob}_w^{-1})$, through $\iota$, is $\prod (X - q_w^{(a-1)/2} b)$ over $b \in B$). And for each such $r$, at each place $w$ where $\pi_w$ has Satake parameters $B$, four clauses hold: unramified with matching Frobenius eigenvalues (away from $\ell$), de Rham with the right Hodge-Tate jumps, crystalline, and a Frobenius characteristic polynomial equal to the one of the unramified class built from $B$ (above $\ell$).

`R1` ([IsQg.lean#L13](lean:Development/AbelianVarietyTheory/Statements/EllipticCurveLevels/IsQg.lean#L13)) says: when $\sigma \otimes |\det|^{(1-a)/2}$ has support of characters with no two linked by $|\cdot|$ (`PlainTor`), the class of $r$ at $w$ equals $rc$ of it for each $rc$ with `IsRecT` (away from $\ell$), and the analogous statement for the class `wdAt` above $\ell$. `LocalGlobalCompatAtIwahoriFixedPlaces` ([LocalGlobalCompatAtIwahoriFixedPlaces.lean#L16](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/SphericalGaloisCompatibility/PAdicSplitting/LocalGlobalCompatAtIwahoriFixedPlaces.lean#L16)) gives $N = 0$ and equal inertia characteristic polynomials when $\sigma$ has a `KOne`-fixed vector and either `PlainTor` holds or $E_w \cong \mathbb{Q}_g$ with a separation condition `Apart`.

The proof of `galoisLocalGlobal_of_localGlobalCompatibility` ([GaloisLocalGlobalOfLocalGlobalCompatibility.lean#L192](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/InertCharpoly/GaloisLocalGlobalOfLocalGlobalCompatibility.lean#L192)) takes $r$ from `CoreAll.1`, takes $wt$ and $HT$ from a lemma `exists_weights`, and fills each field of `Props` from the three inputs. The sizes are: `localGlobalCompatAtIwahoriFixed_of_unlinked` 1,520, `galoisCompat_unlinkedSupport_of_spherical` 238, and the assembly 116. The step `localGlobalCompatAtIwahoriFixed_of_unlinked` itself uses `UpperTheory.Zero.LLC.recTExists`.

### Step 5. CoreAll from four inputs (the step coreAll_of)

```lean
theorem coreAll_of (seed : SeedFinOdd) (cong : CongFinOdd) (up : UpperTheory.TP.TLiftK) : GlobalTheory.RoadU.CoreAll :=
  UpperTheory.Gal.Int.Inp.coreAll_of_core
    (UpperTheory.Gal.Int.Core.toCoreK up UpperTheory.Gal.ClosedPhiFromClosedTrace.congPhi_holds
      UpperTheory.Gal.Desc.descOffT (UpperTheory.Gal.Lim.limFinOdd_of seed cong))
```

The Lean code first proves `Core`, the same as `CoreAll` but restricted to a smaller scope (`Level.csd`: $E$ has an element $x$ with $x^2 = -d$, $[E^+ : \mathbb{Q}]$ even, conditions at non-split places, $\chi$ a fixed power of a quadratic character, and only split places). `toCoreK` gives `Core` from `TLiftK`, `ClosedPhi`, `DescOffT` and `LimFinOdd`. Then `coreAll_of_core` extends `Core` to `CoreAll`. `LimFinOdd` comes from `SeedFinOdd` and `CongFinOdd`. Sizes: `coreAll_of` 1,756 in total, `toCoreK` 496, `seedFinOdd_of_geoOne` 718, `congFinOdd_of_ex` 495, `wtLacEx_holds` 183. This page does not unfold `SeedFinOdd`, `CongFinOdd`, `LimFinOdd`, `ClosedPhi` and `DescOffT`. They are defined in [LimWU4OfLimWU3.lean#L103](lean:Development/AbelianVarietyTheory/Definitions/GaloisGeometry/LimWU4OfLimWU3.lean#L103) and nearby files.

### Step 6. The geometric branch geoOne_holds

This is the largest part (43,427 declarations).

```lean
theorem weight_one_geometric_realization : LocalSmoothExtension.HolomorphicLefschetzFormula := by
  unfold LocalSmoothExtension.HolomorphicLefschetzFormula
  exact GlobalTheory.T.lefschetz_fixedPoint_finite_etale_correspondence

theorem geoOne_holds : GeoOne := geometric_realization_of_weight_one weight_one_geometric_realization

theorem geometric_realization_of_weight_one (hW : HolomorphicLefschetzFormula) : GeoOne :=
  geoOne_of_parts steps_holds (kodaira_spencer_of_weight_one hW) Pl.planEx_holds
```

`GeoOne` ([HodgeTrAt.lean#L79](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/IntegralStructures/GeometricFlagBases/HodgeTrAt.lean#L79)) is a statement about an odd $a$, an integer $d$ and $x \in E$ with $x^2 = -d$, places $w_0, v'$ above $\ell$, finite sets of places $T, S$, and a space $U$ of automorphic functions on the unitary group $U_a(\mathbb{A}_E)$ with conditions at those places. It concludes that there are Galois representations $\rho$ with `VBase ι d U ρ`, with matching Frobenius eigenvalues at good places away from $\ell$, and with crystalline, Hodge-Tate jump and Frobenius conditions at places above $\ell$. This page does not unfold `VBase`, `SatU`, `AutOffT`, `TyEll` and `SphOffU`.

`HolomorphicLefschetzFormula` ([HodgeTraceFromLefschetzAndGroupSide.lean#L102](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/LefschetzSigmaSums/HodgeTraceFromLefschetzAndGroupSide.lean#L102)) states: let $Z$ be smooth of relative dimension $d$ and projective over $\mathbb{C}$, let $c_1, c_2 : Y \to Z$ be finite étale, let $F$ be the finite set of complex points $y$ with $c_1(y) = c_2(y)$, and let $A_y$ be a $d \times d$ matrix with `IsTan` and $\det(1 - A_y) \neq 0$. Then for each $a$,

$$
\sum_{b=0}^{d} (-1)^b \operatorname{tr}\big(c_{1*} \circ c_2^* \mid H^{a,b}\big) = \sum_{y \in F} \frac{[X^a] \det(1 + X A_y)}{\det(1 - A_y)} ,
$$

where $H^{a,b}$ is the Lean object `hodgeH s a b` and the spaces are finite-dimensional. This has the shape of the holomorphic Lefschetz fixed-point formula. This page does not unfold `hodgeH`, `hodgeTrace`, `hodgePull` and `IsTan`. The proof is `UpperTheory.Cb.lefschetz_fixedPoint_finite_etale_correspondence` with 1,822 declarations below it.

The three parts of `geoOne_of_parts` are:

- `steps_holds : Steps` (26,278). `Steps` is a structure of seventeen fields built by `steps_of`. Three are the main local steps: `CrysStep` (a piece of the cohomology of a tower is crystalline at places above $\ell$ where a cover is onto), `JumpStep` (Hodge-Tate jumps occur where the Hodge numbers say) and `PhiStep` (the Frobenius characteristic polynomial divides a power of a root polynomial). The largest children are `jumpStep_holds` (2,666), `UpperTheory.Et.e4` (2,254), `crysStep_holds` (1,908), a projective bundle formula (1,586), `UpperTheory.Et.proper_base_change` (1,247) and `phiStep` (1,038).
- `kodaira_spencer_of_weight_one hW : KSAll` (11,961). `KSAll` has six fields: `StdEx`, `KSEx`, `KSNice`, `KSGood`, `KSCong`, `KSHodge`. The Lefschetz formula enters only in the field `KSHodge`, through `ksHodge_of_geo hW FixK_holds`. The largest children are `model_nonempty` (2,598), `ksHodge_of_geo` (1,901) and `FixK_holds` (1,790).
- `Pl.planEx_holds : PlanEx` (1,938). `PlanEx` has the same hypotheses as `GeoOne` and gives "plans" with Hodge-Tate and congruence properties. `Plan.pack` turns a plan into a `Pack` by `KSAll`.

### Step 7. The theta lift branch tLiftK

```lean
theorem UpperTheory.TP.K.tLiftK : UpperTheory.TP.TLiftK := UpperTheory.TP.tLift_holds_k
```

`TLiftK` ([TLiftK.lean#L12](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/HalfIndexLattices/TLiftK.lean#L12)) says, in words: let $E$ be a CM field with a good base `B`. Let $X$ be a hermitian lattice space of rank $n$ with Gram matrix $J = 1$, positive definite at each infinite place of $E^+$. Then there is $d_0$ such that for each $d \geq d_0$, each skew-hermitian space $W$ of rank $d$ with $J = \delta \cdot 1$, definite in the same sense, each pair of Hecke characters $\chi_X, \chi_W$ with conditions `ResEtaPow` and exponents $m_X, m_W$, and each automorphic representation $U$ of $U_n(\mathbb{A}_E)$ with dominant weights $\lambda_w$ that satisfy $d + m_{W,w} \leq 2 \lambda_{w,k}$, there is an automorphic representation $U'$ of $U_d(\mathbb{A}_E)$ with `IsLift`. `IsLift` ([SchurStep.lean#L106](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L106)) asks three things: $U'$ is automorphic, its weights $\lambda'$ satisfy

$$
2\lambda'_k = \begin{cases} 2\lambda_k - d - m_W + n + m_X & k < n, \\ n + m_X & k \geq n, \end{cases}
$$

and at each split place the local components are related by a nonzero map from a Schwartz-Bruhat space that intertwines the two actions (`LocPair`). The Lean name points to the theta lift. The statement is an existence statement of this form; this page does not claim it is a published theorem.

The proof `tLift_holds_k` is `tLift_of_tools_k tools_holds_k (hgtEx_of_k stab2Cpt_k)`. The two large parts are `tLift_of_tools_k` (2,998, with `realPair_k` 2,636) and `tools_holds_k` (2,158, with `siegelWeilStd_k` 1,679, a Siegel-Weil statement by its name, and `weilEx_k` 395). The chapter [the theta matching](/proof/theta-matching/) treats theta lifts in more detail.

## Where it is in the code

| Declaration | Module | Size |
|---|---|---|
| `galoisLocalGlobalStrong_recParameter` | `…IntegralStructures.RowSrc` | 54,225 |
| `galoisRepresentations_of_thetaLift` | `…IntegralStructures.GaloisRepresentationsOfThetaLift` | 49,010 |
| `Geo.geoOne_holds` | `…GeometricFlagBases.WeightOneGeometricRealization` | 43,427 |
| `Geo.geometric_realization_of_weight_one` | `…GeometricFlagBases.GeometricRealizationOfWeightOne` | 41,483 |
| `Geo.steps_holds` | same | 26,278 |
| `Geo.kodaira_spencer_of_weight_one` | same | 11,961 |
| `Geo.Pl.planEx_holds` | `…PrimeLevelLocalization.SpecTopHolds` | 1,938 |
| `Geo.weight_one_geometric_realization` | `…WeightOneGeometricRealization` | 1,824 |
| `galoisLocalGlobalStrong_of_geometry_lift` | `…IntegralStructures.Development` | 5,421 |
| `galoisLocalGlobal_of_geometry_lift` | same | 5,420 |
| `rest` | same | 1,942 |
| `coreAll_of` | same | 1,756 |
| `Div.seedFinOdd_of_geoOne` | `…ZetaCharacterDivisibility.MainFin` | 718 |
| `Cong.congFinOdd_of_ex` | `…CongruenceOddLevel.CongFinOddOfLvLac` | 495 |
| `UpperTheory.TP.K.tLiftK` | `…ThetaParseval.ThetaKernels.TLiftK` | 5,201 |
| `UpperTheory.TP.tLift_of_tools_k` | `…ThetaKernels.TPGTop` | 2,998 |
| `UpperTheory.TP.tools_holds_k` | `…ThetaKernels.TPGHolds` | 2,158 |

The prefix `…` is `Development.AutomorphicArithmetic.Foundations.GaloisRepresentations`. Names without a namespace are in `UpperTheory.Gal.Int`. "Size" is the number of declarations in the dominator subtree: the declarations that the trunk reaches only through this one.

## Notes

- `IsRecT` is a hypothesis inside `Row0b`. The local clauses of `Row0b` hold for each $rc$ with `IsRecT`. If no such $rc$ existed, those clauses would hold for no $rc$ and say nothing. The Lean code closes this gap with a separate theorem `recTExists`, which `everyCharacter_of_row` also uses. This page does not describe that theorem.
- `wdOf` and `infChar` are defined by choice. `wdOf` returns the trivial class if no Weil-Deligne class of $r$ at $w$ exists. `infChar` returns $a$ copies of $0$ if no infinitesimal character exists. A reader who checks the statement must check that the hypotheses force the intended values.
- The difference between `Row0` and `Row0b` is the bound $16 n^2 < g$ in `IsQpBig`. The proof goes through the stronger `Row0`, so the bound is not used in this branch. The other users of `Row0b` may need only the weaker form.
- `GeoOne` is very large (43,427 declarations), but the Lean code uses it at one point only, to prove `SeedFinOdd`. This page does not unfold `SeedFinOdd`, so it does not say why that statement needs the geometry.
- This page does not unfold `IsLocalArtin`, `segSum`, `IsL`, `IsCrysAt`, `IsdRAt`, `IsPstAt`, `IsJumpsAt`, `wdAt`, `LocBridge`, `VBase`, `hodgeH`, `ResEtaPow`, `IsAutRepU` and `LocPair`. Their names suggest standard notions, but the words above use those notions only where the code shows them.
- The theorem `galoisLocalGlobalStrong_recParameter` has one other user, `UpperTheory.V.SmallClassNumbers.litN`. This page does not describe it.
