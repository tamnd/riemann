---
title: CM curves, the invariant derivation and divisibility
description: The parts of the Lean code that match timeline steps 2, 9, 10 and 15. A CM elliptic curve with good reduction outside p, a formula for the p-th power of the invariant derivation of a formal group, l-adic bounds on derivatives of Eisenstein sums divided by periods, a norm bound from the Chowla-Selberg formula, and a gcd of depths. The page says which ideas of these steps have no counterpart in the code.
lead: Four steps of the timeline speak about CM curves, the invariant derivation, divisibility by powers of a prime, norms from Chowla-Selberg and a gcd. The Lean code has a declaration for each of these words. But the declarations are smaller and more scattered than the steps suggest, and some of them do other jobs. This page follows each one and says what it really proves.
level: L1
status: draft
lean:
  - name: GlobalTheory.Published.cmCurveGoodOutsidePrime
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmCurveGoodOutsidePrime.lean
    line: 47
  - name: GlobalTheory.Published.CMCurveGoodOutsidePrimeSt
    file: Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/CmCurveGoodOutsidePrimePremises.lean
    line: 35
  - name: UpperTheory.LiteratureTheorems.cm_curve_good_outside_prime_st_of_literature
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean
    line: 277
  - name: GlobalTheory.Mem.Top.Bl.KPxCond.baseCond_KPx
    file: Development/AbelianVarietyTheory/Proofs/IwasawaDecomposition/ExistsPrePin.lean
    line: 30
  - name: GlobalTheory.LawDer.invDer
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/InvDer.lean
    line: 16
  - name: GlobalTheory.T.constantCoeff_pIterate_invariantDerivation_coord
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/ConstantCoeffPIterateInvariantDerivationCoordStatement.lean
    line: 8
  - name: GlobalTheory.DualFrobNil.isNil_dual_frobenius
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsNilDualFrobenius.lean
    line: 24
  - name: GlobalTheory.LatJet.JetInt
    file: Development/AbelianVarietyTheory/Definitions/Divisors/JetAnalytic.lean
    line: 239
  - name: GlobalTheory.T.cmLatticeDividedPowerJetIntegrality_of_ellipticCM
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean
    line: 9
  - name: GlobalTheory.LatVal.LatIntRam
    file: Development/AbelianVarietyTheory/Definitions/Divisors/TorsTransport.lean
    line: 33
  - name: GlobalTheory.ToricDenomRow.toricDenominator
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/ToricDenominatorOfZetaDenominators.lean
    line: 39
  - name: GlobalTheory.chowla_selberg_discriminant
    file: Development/AbelianVarietyTheory/Proofs/HomogeneousIdeals/DedekindZetaEqSumRealEisenstein.lean
    line: 259
  - name: GlobalTheory.T.classMean_log_norm_disc_chowlaSelberg
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/ClassMeanLogNormDiscChowlaSelbergStatement.lean
    line: 9
  - name: GlobalTheory.SqTop.BetaArch
    file: Development/AbelianVarietyTheory/Statements/PlaceShiftStatements/NormSmall.lean
    line: 96
  - name: GlobalTheory.SqTop.betaArch_of_transport
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/BetaConjugateMeanLogAbsBoundOfTransport.lean
    line: 43
  - name: GlobalTheory.DepthUnf.DepthOK
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsExpansionIff.lean
    line: 20
  - name: GlobalTheory.T.flatProductDepthPeriodic_gcd
    file: Development/AbelianVarietyTheory/Proofs/DivisorProofs/FlatProductDepthPeriodicGcdStatement.lean
    line: 9
  - name: GlobalTheory.DepthUnf.depthK_of_hypotheses_alt
    file: Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/DepthOfSumBound.lean
    line: 12
needs:
  - tag: WXGM3VWEK6
    text: Algebraic number field
  - tag: BT5V3TSNY6
    text: Place (number field)
  - tag: BT6T702C28
    text: p-adic number
  - tag: RDV3C0PXTH
    text: Local field
  - tag: 6YDZNXR19H
    text: p-adic Hodge theory
  - tag: 3NZBZXYWAJ
    text: Eisenstein series
  - tag: KPYFGB342X
    text: Hecke character
  - tag: JR4QSEFXWF
    text: Dirichlet character
  - tag: 24GAZHVTGB
    text: Dirichlet L-function
  - tag: GE020MY43M
    text: Schwartz space
next:
  - text: The literature inputs
    path: proof/literature/
    sub: the parent node, where the CM curve and the prismatic statement are named
  - text: The unitary hypotheses
    path: proof/unitary-hypotheses/
    sub: the parent of the norm bound and the gcd of depths
  - text: Theta integrals and local matching
    path: proof/theta-matching/
    sub: the trunk step above the unitary hypotheses
  - text: Siegel-Weil, the metaplectic representation and cusp forms
    path: proof/siegel-weil/
    sub: other literature inputs that the code proves
  - text: Block determinants and theta Parseval
    path: proof/determinants/
    sub: another chapter that compares the timeline with the code
steps: []
---
## A CM curve with good reduction outside p

Four steps of the [timeline](/proof/timeline/) speak of a CM curve, the invariant derivation, divisibility by powers of a prime, norms from Chowla-Selberg and a gcd. The code has a declaration for each of these words, but the declarations are smaller and more scattered than the steps suggest, and some do other jobs. Sections 1 to 5 state them. Section 6 lists what has no counterpart. All results of this chapter are proved in the code. None of them is a cut point in [the literature inputs](/proof/literature/).

This section states the CM curve of the code. We use an [[algebraic number field|WXGM3VWEK6]], its [[places|BT5V3TSNY6]], its ring of integers and its class group. For a lattice $\Lambda \subset \mathbb{C}$ we write $g_2, g_3$ for its invariants, $\Delta(\Lambda) = g_2^3 - 27 g_3^2$ and $j(\Lambda)$ for its $j$-invariant. The trunk uses the theorem once, to build field data, and not to compute derivatives.

**Definition (Good CM curve).** Let $p \equiv 3 \pmod 4$ be a prime and let $L \subset \mathbb{C}$ be the ring of integers of $\mathbb{Q}(\sqrt{-p})$. Let $F \subset \mathbb{C}$ be a number field and $A$ a Weierstrass curve over $F$. Then $A$ is a good CM curve for $p$ if $A$ is elliptic, $F = \mathbb{Q}(j(L))$, $j(A) = j(L)$, and $A$ has good reduction at every prime of $F$ that does not lie over $p$.

Lean: `GlobalTheory.Published.IsGoodCMCurve`

**Definition (Minimal discriminant).** A Weierstrass curve $A$ over $F$ has minimal discriminant $D \in F$ if at every prime $v$ of $F$ some change of variables gives a model of $A$ that is minimal at $v$, with discriminant $uD$ for a unit $u$ at $v$.

Lean: `GlobalTheory.Published.HasMinimalDiscriminant`

**Theorem (CM curve with good reduction outside p).** For every prime $p > 3$ with $p \equiv 3 \pmod 4$ there are a number field $F \subset \mathbb{C}$ and a good CM curve $A$ for $p$ over $F$ with minimal discriminant $-p^3$.

Lean: `GlobalTheory.Published.cmCurveGoodOutsidePrime`

*Proof.* We follow the Lean proof. Multiplication by $\sqrt{-p}$ maps $L$ into $L$, and $\sqrt{-p}$ is not real. So $L$ has complex multiplication, and $j(L)$ is an algebraic integer. Put $F = \mathbb{Q}(j(L))$. The proof scales $L$ so that $y^2 = x^3 - \tfrac{g_2}{4}x - \tfrac{g_3}{4}$ has coefficients in $F$. It twists this curve by $d_F = 1$ if $p \equiv 3 \pmod 8$ and by $d_F = -p$ if $p \equiv 7 \pmod 8$. A twist by $d$ multiplies $\Delta$ by $d^6$ and $c_4$ by $d^2$, so $j$ does not change. At each prime $v$ of $F$ the proof gives a local model with discriminant a unit times $-p^3$. It shows that $p$ is not in the cube of a prime ideal of $\mathbb{Q}(j(L), \sqrt{-p})$. So $v(p) \le 2$, and $v(\Delta) \le 6 < 12$, which makes the model minimal at $v$. At a prime not over $p$ the number $-p^3$ is a unit, so $A$ has good reduction there. $\square$

**Remark (Use in the field data).** The host hypotheses fix primes $q$ and $d$ with $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$ and $\left(\frac{-d}{q}\right) = 1$. The host field $E$ is a Galois CM field that contains $w$ with $w^2 = -d$. Put $K = \mathbb{Q}(w)$. The field data apply the theorem with $p = d$. They keep a ray class datum, $F$, $A$, the fact that $A$ is a good CM curve for $d$, and a basis. They drop the minimal discriminant. So the curve has CM by the integers of $K = \mathbb{Q}(\sqrt{-d})$, and $d$ is ramified in $K$, not inert. The same construction takes a Siegel mass ratio: for an unramified CM field $K$ and $M \ge 3$, the ratio of the masses of the standard Hermitian lattices of ranks $M$ and $M - 1$ is an explicit value. The code proves it. This is the only place in the chapter where a Siegel mass appears.

**Remark (Formalization).** `CMCurveGoodOutsidePrimeSt` is in [CmCurveGoodOutsidePrimePremises.lean#L35](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/CmCurveGoodOutsidePrimePremises.lean#L35). In it $F$ is an intermediate field of $\mathbb{C}/\mathbb{Q}$, not an abstract type. The proof [CmCurveGoodOutsidePrime.lean#L47](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmCurveGoodOutsidePrime.lean#L47) dominates 169 declarations, 92 of them for the discriminant of the twisted model. The term `cm_curve_good_outside_prime_st_of_literature` ([EveryCharacterOfLiteratureOfVWin.lean#L277](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L277), 170) ignores `O` and returns `cmCurveGoodOutsidePrime`. The user is `baseCond_KPx` ([ExistsPrePin.lean#L30](lean:Development/AbelianVarietyTheory/Proofs/IwasawaDecomposition/ExistsPrePin.lean#L30), 111), which also takes `RayField`, `PrincipalIdealSt` and `StandardLattice.SiegelMassRatioCM`. Inside it `nonempty_fieldDat` takes $p$ = `P.host.d`, and the structure `FieldDat P` keeps only `IsGoodCMCurve`. The mass ratio is `massRatio_all_unramified_cmFields`.

## The invariant derivation and its p-th power

The timeline says that $D^p \equiv 0$ on a CM curve for $p$ inert in $K$, where $D$ is the invariant derivation. The code has a formula for the $p$-th power of the invariant derivation of any lift of a formal group law. It mentions no elliptic curve, CM, inert prime, theta function or period. Its only use is a nilpotence theorem for a dual Frobenius, inside a prismatic Dieudonné statement of [[p-adic Hodge theory|6YDZNXR19H]]. So in the code the invariant derivation serves $p$-adic Hodge theory, not the divisibility of theta values.

**Definition (Invariant derivation).** Let $\mu = (\mu_1, \dots, \mu_d)$ be power series over a ring $B$ in $X_1, \dots, X_d, Y_1, \dots, Y_d$. For $u \in B^d$ and a power series $F$ in $X$ put

$$ D_u F(X) = \sum_{i=1}^{d} u_i \, \frac{\partial}{\partial Y_i} F(\mu(X,Y)) \Big|_{Y=0}. $$

When $\mu$ is a formal group law, $D_u$ is the invariant derivation in the direction $u$.

Lean: `GlobalTheory.LawDer.invDer`

**Definition (Frame).** Let $p$ be a prime, $\theta : B \to O$ a ring map and $Q$ a $B$-algebra. Then $(B, Q, \theta)$ is a $p$-frame if $\theta$ is surjective, $B \to Q$ is injective, each $q \in Q$ has some $p^k q \in B$, $p$ is a unit in $Q$, every integer prime to $p$ is a unit in $B$, each $x \in \ker\theta$ has $x^p = p y$ with $y \in \ker\theta$, $O$ has no $p$-torsion, and $B$ is $p$-adically complete.

Lean: `GlobalTheory.QLog.IsFrame`

**Definition (Lift and quasi-logarithm).** A lift of a formal group law is a family $\mu$ of power series over $B$ with zero constant terms, $\mu(X, 0) = X$ and $\mu(X, Y) = \mu(Y, X)$, such that $\theta(\mu)$ is a formal group law over $O$. A quasi-logarithm of $\mu$ in the coordinate $j$ is a power series $l$ over $Q$ with zero constant term and linear part $X_j$, such that $l(\mu(X,Y)) - l(X) - l(Y)$ has coefficients in $\ker\theta$.

Lean: `GlobalTheory.QLog.IsLift`

**Theorem (The p-th power of the invariant derivation).** Let $(B, Q, \theta)$ be a $p$-frame, $\mu$ a lift and $l$ a quasi-logarithm of $\mu$ in the coordinate $j$. Let $c_i \in B$ with $c_i = p \cdot [X_i^p]\, l$ in $Q$, where $[X_i^p]\,l$ is the coefficient of $X_i^p$ in $l$. Then for every $u \in B^d$

$$ \text{constant term of } D_u^{\,p}(X_j) \;\equiv\; \sum_{i=1}^{d} c_i\, u_i^{\,p} \pmod{\ker\theta + pB}. $$

Lean: `GlobalTheory.T.constantCoeff_pIterate_invariantDerivation_coord`

*Proof.* The Lean proof is a direct computation with power series, which we did not unfold. The classical idea is this. Differentiate $l(\mu(X,Y)) = l(X) + l(Y) + \delta(X,Y)$ in $Y$ at $0$. This gives $D_u l = u_j + \varepsilon$ with $\varepsilon$ in $\ker\theta$, so $D_u^{\,p} l = D_u^{\,p-1}\varepsilon$. Write $l = X_j + \sum_{|\alpha| \ge 2} a_\alpha X^\alpha$ and compare constant terms. The main term of $D_u^{\,p}(X_i^p)$ at $0$ is $p!\,u_i^p$, and $a_{pe_i}\, p! = (p-1)!\, c_i \equiv -c_i \pmod p$ by Wilson's theorem. So this monomial gives $+c_i u_i^p$. The frame conditions put the other terms in $\ker\theta + pB$. $\square$

**Remark (The form of $D^p \equiv 0$).** When all $c_i$ lie in $\ker\theta + pB$, so does the constant term of $D_u^{\,p}(X_j)$. This is the general form of "$D^p \equiv 0$".

**Definition (Semilinear nilpotence).** Let $\theta : B \to O$ and $\sigma : B \to B$ be ring maps and $M$ a square matrix over $B$. Put $\Phi(w) = M\,\sigma(w)$. Then $M$ is nilpotent for $(\theta, \sigma)$ if for some $N$ and all $v$ and $i$, $\theta$ of the $i$-th coordinate of $\Phi^N(v)$ is not a unit of $O$.

Lean: `GlobalTheory.QLog.IsNil`

**Theorem (Nilpotence of the dual Frobenius).** Let $C$ be an algebraically closed field of characteristic $0$ with a valuation, with ring of integers $O$, $p$-adically complete, $p$ not a unit. A primitive system in the tilt gives a frame $\theta : B \to O$ with Frobenius $\sigma$. Let $G$ be a $p$-divisible group over $O$ with a chart of dimension $d$ and a lift $\mu$ of the chart law. Let $e$ be an adapted basis of $d + k$ quasi-logarithms. Let $\mathrm{blk}(a,b)$ be diagonal with $a$ on the first $d$ entries and $b$ on the last $k$. Let $U$ be invertible with $\mathrm{frob}(e_i) - \sum_l (U\,\mathrm{blk}(p,1))_{li}\, e_l$ integral for all $i$ and in $(p)$ for $i \le d$. If $G^\vee$ is connected, then $(U^{T})^{-1}\,\mathrm{blk}(1,p)$ is nilpotent for $(\theta, \sigma)$.

Lean: `GlobalTheory.DualFrobNil.isNil_dual_frobenius`

*Proof.* The Lean proof applies the formula for the $p$-th power of the invariant derivation to the lift, and combines it with lifts of the Cartier dual and convolution powers. We did not unfold the details. $\square$

**Remark (Prismatic Dieudonné theory).** The theorem serves the proof of a prismatic Dieudonné statement. It asks for a functor from $p$-divisible groups over $O$ to free modules over Fontaine's ring $A_{\inf}$, of rank equal to the height, with a Frobenius and a Hodge filtration $0 \to \omega_G \to D \to \mathrm{Lie}(G^\vee) \to 0$. It is a literature statement of the code. On the trunk a proved term supplies it, so it is not an assumption.

**Remark (Formalization).** See [InvDer.lean#L16](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/InvDer.lean#L16) and [ConstantCoeffPIterateInvariantDerivationCoordStatement.lean#L8](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ConstantCoeffPIterateInvariantDerivationCoordStatement.lean#L8). Sizes: statement 30, proof `constantCoeff_iterate_invDer_X_sub_mem` 29. In `IsLift` the conditions on constant terms, unit and symmetry are on $\mu$ itself, and only the law condition is on $\theta(\mu)$. `IsFrame` also has the conditions on denominators and on integers prime to $p$. `isNil_dual_frobenius` is in [IsNilDualFrobenius.lean#L24](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsNilDualFrobenius.lean#L24) (77). It is used in `window_matrices` (1,206), and that in `UpperTheory.Lit.prismaticDieudonneHodge` (1,708). The trunk term `prismatic_dieudonne_hodge_of_literature` ignores `O`.

## Derivatives of Eisenstein sums over periods

For the divisibility of $D^a\theta(0)/\Omega^a$, the closest statement of the code bounds iterated derivatives at $0$ of [[Eisenstein series|3NZBZXYWAJ]] type lattice sums for a CM field, divided by period powers. The derivatives are partial derivatives on $\mathbb{C}^I$, not the invariant derivation of Section 2. The bounds are $l$-adic, in the completion $\mathbb{C}_l$ of an algebraic closure of the [[p-adic numbers|BT6T702C28]] $\mathbb{Q}_l$, a [[local field|RDV3C0PXTH]]. The code proves them from the functional equation of partial zeta functions, which a proved term supplies.

**Definition (l-adic size).** Let $l$ be a prime, $\lambda : \overline{\mathbb{Q}} \to \mathbb{C}_l$ an embedding and $r \in \mathbb{R}$. A complex number $x$ has $l$-adic size at most $l^r$ if $x$ is algebraic and $|\lambda(x)|_l \le l^r$.

Lean: `GlobalTheory.LatVal.Sz`

**Definition (Lattice datum).** A lattice datum consists of: a CM field $E$, abelian over $\mathbb{Q}$, unramified over $E^+$ at the finite places, with $2 \mid \mathrm{disc}\,E$; a CM type $(\varphi_i)_{i \in I}$ with $|I| \ge 2$; a prime $d > 4$ and $w \in E$ with $w^2 = -d$ and $\varphi_i(w) = i\sqrt d$ (and a product condition on roots of unity); an integer $s \ge 1$ and class zeta values $z_C \in \mathbb{Q}$ at $2s$; a conductor $\mathfrak f$ with the base condition; the lattice $\Lambda$ of integers of $\mathbb{Q}(\sqrt{-d})$ in $\mathbb{C}$; a prime $l$; a finite set $Q$ of split places prime to $\mathfrak f$ and not above $l$; an idele $y$ equal to $1$ above $l$; and the lattice $L$ of $E$ attached to $\mathfrak f$, $Q$ and $y$.

Lean: `GlobalTheory.LatVal.AllLat`

Let $a_0$ be the largest exponent in $\mathfrak f$ of a prime above $l$. Put $c = a_0$ if a prime above $l$ divides $\mathfrak f$, and $c = v_l(\mathrm{disc}\,E)/[E:\mathbb{Q}]$ otherwise. Put $e = \max_C \max\big(0, -v_l(z_C / 2^{[E^+:\mathbb{Q}]})\big)$.

**Definition (Jet integrality).** A lattice datum has jet integrality if for every $\lambda$ and every $\Omega$ with $\Omega^{12} = \Delta(\Lambda)$ there are nonzero $a_i, b_i \in \mathbb{C}$ such that:

1. each $a_i/\Omega$ has $l$-adic size at most $l^{a_0}$, and each $(a_i b_i \sqrt d / 2\pi)^{-1}$ at most $l^{c + \delta}$, with $\delta = 1/2$ if $l = d$ and $\delta = 0$ otherwise;
2. for every Eisenstein lattice sum $g$ of weight $2s$ for $\varphi$ and $L$, every $\kappa : I \to \mathbb{N}$ and every list $u$ in which each $i$ appears $\kappa_i$ times, $$ \partial_u g(0) \cdot \prod_{i \in I} \frac{(b_i/a_i)^{\kappa_i}}{a_i^{\,2s}} $$ has $l$-adic size at most $l^{\,e + 2s|I|c + (\sum_i \kappa_i)c}$.

Lean: `GlobalTheory.LatJet.JetInt`

**Theorem (Jet integrality).** Every lattice datum has jet integrality.

Lean: `GlobalTheory.T.cmLatticeDividedPowerJetIntegrality_of_ellipticCM`

*Proof.* The Lean proof takes four named inputs: Siegel-Klingen with Deligne-Ribet, the functional equation of partial zeta functions, a statement on the Hilbert class field and $j$, and a main theorem of CM. It uses only the functional equation. That gives the continuation of Hecke series of weight two. With the Lipschitz formula, proved by Poisson summation, it gives an expansion of Hilbert Eisenstein series. A core lemma, which we did not unfold, bounds the jets of these values at CM points. On the trunk proved terms supply all four inputs. $\square$

**Definition (The number β).** For a lattice sum $S$ of weight $2s$ and type $\kappa$ attached to $L$, put $T = S(0)$ and

$$ \beta(\Lambda, T) = \frac{(C_0 \cdot T)^{12}}{\Delta(\Lambda)^{\mathrm{wt}}}, $$

with an explicit constant $C_0$ depending on $|\mathrm{disc}\,E^+|$, $d$, $2s$ and $\kappa$, and the weight $\mathrm{wt} = 2s|I| + 2\sum_i \kappa_i$.

Lean: `GlobalTheory.CMVal.beta`

**Definition (Denominator bound).** For a prime $l$, $r \in \mathbb{R}$ and $a$ algebraic, write $v_l(a) \ge -r$ if $l^m a^n$ is $l$-integral for all integers $m$ and $n > 0$ with $m/n \ge r$. Equivalently $w(a) \ge -r$ at every place $w$ above $l$, normalized by $w(l) = 1$.

Lean: `GlobalTheory.IndefiniteRowSideFullHecke.ClassZetaValuationBounds.ValGe_vp`

The data give an explicit bound $b_l \ge 0$, built from $e$, $a_0$, $c$ and the weight.

**Proposition (Denominator bound when c is not zero).** If $c \neq 0$, then $v_l(\beta(\Lambda, S(0))) \ge -b_l$ for every $\kappa$ and every lattice sum $S$ of weight $2s$ and type $\kappa$ attached to $L$.

Lean: `GlobalTheory.LatVal.LatIntRam`

*Proof.* The Lean proof combines a statement on defining coordinates, which comes from the functional equation, with an expansion statement. The expansion statement is a variant of jet integrality with factorials and the exponent $c + 1 + [l = 2]$ per derivative, derived from jet integrality. We did not unfold how they combine. $\square$

**Proposition (Denominator bound when c is zero).** If $c = 0$, the same bound holds.

Lean: `GlobalTheory.LatVal.LatIntUnr`

*Proof.* The Lean proof combines the statement on defining coordinates with jet integrality. We did not unfold how. $\square$

**Theorem (Toric denominator bound).** Assume a bound on the denominators of the partial zeta values of $E^+$ at weight $2s$. Then each data set has zeta values $z$ such that $v_l(\beta) \ge -b_l$ for every prime $l$, every $Q$ and every class term $T$, and for the toric sums twisted by Picard characters.

Lean: `GlobalTheory.ToricDenomRow.toricDenominator`

*Proof.* The Lean proof splits on whether $c = 0$. It moves each class term to an idele equal to $1$ above $l$, up to an $l$-unit, and applies the proposition for that case. Then it bounds the valuation of a sum of twelfth powers. On the trunk the zeta bound comes from Siegel-Klingen and Deligne-Ribet, and proved terms supply both. $\square$

**Remark (The sign and the cases).** Since $b_l \ge 0$, the bound allows $\beta$ a denominator of order at most $b_l$ above $l$. It bounds a denominator. It does not say that $l$ divides $\beta$, as the old version of this page did. The cases split on $c$, not on whether $l$ divides the conductor. If $l \nmid \mathfrak f$ but $l$ ramifies in $E$, then $c \neq 0$.

**Remark (Formalization).** See [JetAnalytic.lean#L239](lean:Development/AbelianVarietyTheory/Definitions/Divisors/JetAnalytic.lean#L239), [TorsTransport.lean#L17](lean:Development/AbelianVarietyTheory/Definitions/Divisors/TorsTransport.lean#L17) and [TorsTransport.lean#L33](lean:Development/AbelianVarietyTheory/Definitions/Divisors/TorsTransport.lean#L33). Here $b_l$, $c$, $e$ are `betaBound_vp`, `c_vp`, `cE_vp`. The proof [CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean#L9) (156) has inputs `SiegelKlingenDeligneRibet`, `PartialZetaFunctionalEquation`, `HilbertClassFieldJ` and `EllipticMainTheoremCM`. Its inner proof `JetIntElliptic.jetInt` starts with `fun _ hPZ _ _ =>`. Its main parts are `norm_hilbertEisensteinValue_le_of_integral_j` (58) and a core lemma (66). `latIntRam` (9) takes `DefiningCoordinates.Statement` and `Expansion`, from `expansion_of_jetInt`. `latIntUnr` (20) takes `DefiningCoordinates.Statement` and `JetInt`. `toricDenominator` is in [ToricDenominatorOfZetaDenominators.lean#L39](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ToricDenominatorOfZetaDenominators.lean#L39) (32). Above it are `joinOut_of_lat` (180), `joinOut_of_jetInt` (233), `joinOut_of_five` (1,598), `join_out_of_literature` (1,604) and `published_results_eigen` (3,017). `JoinOut` also holds `Transport`. The five inputs of `joinOut_of_five` come from terms such as `partialZetaFunctionalEquation_holds` and `deligneRibet_holds`, and none of them reads `O`.

## The Chowla-Selberg formula and a norm bound

The timeline says that Chowla-Selberg gives divisibility. In the code the Chowla-Selberg formula controls the archimedean size of the conjugates of $\beta$. The formula uses a [[Dirichlet character|JR4QSEFXWF]] $\chi$ and its [[L-function|24GAZHVTGB]], and $\beta$ comes from L-values of [[Hecke characters|KPYFGB342X]].

**Theorem (Chowla-Selberg formula, discriminant form).** Let $K \subset \mathbb{C}$ be an imaginary quadratic field with discriminant $-d$, $d > 4$, class number $h$ and Kronecker character $\chi$. For each ideal class $c$ pick a fractional ideal $\mathfrak a_c$ in $c$, with lattice $L_c \subset \mathbb{C}$. Then, with Euler's constant $\gamma$,

$$ \frac{1}{h} \sum_{c} \log\!\Big( N(\mathfrak a_c)^6 \, \big|g_2(L_c)^3 - 27 g_3(L_c)^2\big| \Big) = 12\log 2\pi - 6 \log d + 6\gamma - 6\,\frac{L'(1,\chi)}{L(1,\chi)}. $$

Lean: `GlobalTheory.chowla_selberg_discriminant`

*Proof.* The Lean proof combines a lattice lemma with the eta form

$$ \frac{1}{h}\sum_c \log\big(4\pi\, \mathrm{Im}\,\tau_c\, |\eta(\tau_c)|^4\big) = \gamma + \log\frac{2\pi}{\sqrt d} - \frac{L'(1,\chi)}{L(1,\chi)}, $$

where $(\omega_c, \omega_c\tau_c)$ is a basis of $L_c$ with $\mathrm{Im}\,\tau_c > 0$. We did not unfold the lattice lemma and give the classical computation. We have $\Delta(L_c) = (2\pi/\omega_c)^{12}\eta(\tau_c)^{24}$, and the covolume $|\omega_c|^2\,\mathrm{Im}\,\tau_c$ equals $N(\mathfrak a_c)\sqrt d/2$. So $N(\mathfrak a_c)^6 |\Delta(L_c)| = (2/\sqrt d)^6 (2\pi)^{12} (\mathrm{Im}\,\tau_c\,|\eta(\tau_c)|^4)^6$. Take logarithms, average and insert the eta form. The terms in $\log 2$ and $\log 2\pi$ give $12\log 2\pi$, and those in $\log d$ give $-6\log d$. The left side does not depend on the choice of $\mathfrak a_c$, since $N(\mathfrak a)^6|\Delta|$ is invariant under scaling. $\square$

**Remark (The eta form).** The eta form is the classical formula of Chowla and Selberg. The code proves it from the Kronecker limit formula for the real analytic Eisenstein series and the class number formula $L(1,\chi) = \pi h/\sqrt d$.

**Corollary (Class mean for the host).** Let $K$ be the imaginary quadratic subfield of the host, with discriminant $-d$, $d > 4$. Then the class mean of $\log\big(N(\mathfrak a_c)^6 |\Delta(L_c)|\big)$ is $12\log 2\pi - 6\log d + 6\gamma - 6\,\mathrm{Re}\,\frac{L'}{L}(1, \chi_K)$.

Lean: `GlobalTheory.T.classMean_log_norm_disc_chowlaSelberg`

*Proof.* Apply the theorem to $K$. The quotient $L'(1,\chi_K)/L(1,\chi_K)$ is real. $\square$

**Definition (Archimedean norm bound).** Let $N(\beta)$ be the constant coefficient of the minimal polynomial of $\beta$ over $\mathbb{Q}$, the norm up to sign. The bound says: for constants chosen in the order $C_{F,0}$, then $\varepsilon$ and $C_F$, then $C_0$ and $x_0$, for all $C \ge C_0$, all data with size parameters $f$, $b$, $x$, all $1 \le s \le$ half the rank, every Hecke L-value $y = \Lambda(s)$ of the torsion type and every integral lattice $\Lambda$,

$$ \log |N(\beta)| \le \deg(\beta) \cdot 12\, C f b\,(\log b + \log x). $$

Lean: `GlobalTheory.SqTop.BetaArch`

**Theorem (Norm bound).** Assume four statements: transport of conjugates, the field data of the torsion setting, the bound $\log|\Lambda(s)| \le C f b(\log b + \log x)$, and that the L-value is nonzero with $\beta$ algebraic. Then the archimedean norm bound holds.

Lean: `GlobalTheory.SqTop.betaArch_of_transport`

*Proof.* The Lean proof has three parts. It finds the imaginary quadratic subfield $K$ of the field data. Transport writes each conjugate $\sigma(\beta)$ in the same shape, for an ideal $\mathfrak a_\sigma$ and a lattice $\Lambda_\sigma$; this is Shimura reciprocity. With the L-value bound and a bound on $\log C_0$ plus the logarithmic derivative, it gives $\log|\sigma\beta| \le F_\sigma$, where $F_\sigma$ contains $-\mathrm{wt}\cdot\log\big(N(\mathfrak a_\sigma)^6|\Delta(\Lambda_\sigma)|\big)$. The conjugates run over the classes of $K$ in equal numbers, so the corollary gives the mean of these terms, and $\sum_\sigma \log|\sigma\beta| = \log|N(\beta)|$. $\square$

**Remark (Transport).** For $K$ imaginary quadratic with discriminant $-d$, $d > 4$, and each $\sigma \in \mathrm{Aut}(\mathbb{C}/K)$, transport gives $t_\sigma$, $\mathfrak a_\sigma$ and $\Lambda_\sigma$ with $j(\Lambda_\sigma) = \sigma(j(\Lambda_K))$, equidistributed over classes, and $|\sigma\beta| = (C_0 |T'_\sigma|)^{12} \big(N(\mathfrak a_\sigma)^6 |\Delta(\Lambda_\sigma)|\big)^{-(2s|I| + 2\sum_i \kappa_i)}$. The bundle of Section 3 supplies it. We did not unfold the other three inputs.

**Remark (Formalization).** The formula is in [DedekindZetaEqSumRealEisenstein.lean#L259](lean:Development/AbelianVarietyTheory/Proofs/HomogeneousIdeals/DedekindZetaEqSumRealEisenstein.lean#L259), from `chowla_selberg_lattice` and `chowla_selberg_eta`. The eta form is `LFunction_one_and_mean_log_eta`, with `LFunction_one_eq_classNumber` and `tendsto_realEisenstein_sub_pole` (`TendstoRealEisensteinSubPole.lean`). The corollary is in [ClassMeanLogNormDiscChowlaSelbergStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ClassMeanLogNormDiscChowlaSelbergStatement.lean#L9), with `nrm`, `latDisc` and `dlogL D 1`. It dominates 8 declarations and `chowla_selberg_discriminant` 6, so most of the proof is counted higher up. The folder `GroundTheory/HeightsAndTheta/Heights/ChowlaSelberg/` has 58 files and 296 declarations, none in the spine and none used outside it. `BetaArch` is in [NormSmall.lean#L96](lean:Development/AbelianVarietyTheory/Statements/PlaceShiftStatements/NormSmall.lean#L96), with bound `bTH`. `betaArch_of_transport` is in [BetaConjugateMeanLogAbsBoundOfTransport.lean#L43](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/BetaConjugateMeanLogAbsBoundOfTransport.lean#L43) (70), with inputs `Transport`, `FieldDat`, `LBound` and `TorEx`. This `FieldDat` is a proposition of `NormSmall`, not the structure `FieldDat P` of Section 1. Above it are `betaConjugate_mean_logAbs_bound_of_transport` (71), `square_top_term_joined_estimates` (2,312), `fittedFunction_at_zero_close_alt` (4,154) and the [unitary hypotheses](/proof/unitary-hypotheses/). This chapter does not unfold `Transport`, `FieldDat`, `LBound`, `TorEx`, `ZetaDenominators` or `betaBound_vp`.

## A gcd of depths

The timeline glues an integral structure across the Hecke characters to get a gcd. The code has a gcd of periods of one product of local test functions, which are [[Schwartz functions|GE020MY43M]] at the finite places. Its use is that the least depth divides every valid depth, under the [unitary hypotheses](/proof/unitary-hypotheses/).

**Definition (Valid depth).** Fix grid data: places, local Schwartz functions $\Phi$, a family $\beta$ and an idempotent sum $e$, which fixes the half-integral points. Let $P(x, y) = \prod_w P_w(x, y)$ be the product of the local factors. A natural number $K$ is a valid depth if:

1. $P(x, y) \neq 0$ at half-integral $x$, $y$ implies that all $K x_j$ and $K y_i$ lie in the given lattices;
2. $P(x + K u, y + K v) = P(x, y)$ for half-integral $x$, $y$, $u$, $v$ with $u$, $v$ in the lattices.

Lean: `GlobalTheory.DepthUnf.DepthOK`

The depth $0$ is always valid.

**Lemma (Gcd of depths).** If $k$ and $k'$ are valid depths, then so is $\gcd(k, k')$.

Lean: `GlobalTheory.T.flatProductDepthPeriodic_gcd`

*Proof.* This is the Lean proof. Write $g = \gcd(k,k') = A k + B k'$ with integers $A$, $B$. Lattices and half-integral vectors are closed under integer combinations. If $P(x, y) \neq 0$, then $g x_j = A (k x_j) + B (k' x_j)$ lies in the lattice, and the same holds for $y_i$. For half-integral lattice vectors $u$, $v$, the points $x + kAu$ and $y + kAv$ are half-integral, so

$$ P(x + g u, y + g v) = P\big((x + kAu) + k'Bu,\, (y + kAv) + k'Bv\big) = P(x + kAu, y + kAv) = P(x, y). \qquad \square $$

**Theorem (The least depth).** Let $k_0$ be the least $k > 0$ with a coset expansion of depth $k$. On the data of the trunk, a coset expansion of depth $k_0$ exists, and $v_l(k_0) \le \mathrm{dep}(l)$ at every place $l$ away from the twist, where $\mathrm{dep}(l)$ is the local depth bound.

Lean: `GlobalTheory.DepthUnf.depthK_of_hypotheses_alt`

*Proof.* We follow the Lean proof. A lemma on flat tensor products gives $K > 0$, valid for every idempotent sum, with $v_l(K) \le \mathrm{dep}(l)$ away from the twist. A valid positive depth gives a coset expansion, so $k_0$ exists. A coset expansion of depth $k_0$ makes $k_0$ valid for some idempotent sum $e'$, and $K$ is valid for $e'$ too. By the lemma $\gcd(k_0, K) > 0$ is valid, so it gives a coset expansion, and $k_0 \le \gcd(k_0, K) \le k_0$. So $k_0$ divides $K$, and $v_l(k_0) \le v_l(K) \le \mathrm{dep}(l)$. $\square$

**Remark (The least depth).** The old version of this page called $k_0$ "the least valid depth". That is $0$. The code takes the least positive $k$ with a coset expansion.

**Remark (Formalization).** `DepthOK S t Φ β e K` is in [IsExpansionIff.lean#L20](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsExpansionIff.lean#L20), with product `flatProd`. The lemma is in [FlatProductDepthPeriodicGcdStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/FlatProductDepthPeriodicGcdStatement.lean#L9) (5), proved by `depthOK_gcd` with `Nat.gcd_eq_gcd_ab`. The theorem is in [DepthOfSumBound.lean#L12](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/DepthOfSumBound.lean#L12) (49). Its type is `ThetaLocalInputs → SumOKK → DepthK`, and its proof starts with `intro _ _`, so it ignores both hypotheses. The flat tensor lemma is `flatTensor_depth_conditions_away_from_twist`, and $k_0$ is `expDepth`. Above it are `depthK_of_sumOKK` (50), `sum_size_finite_away_archimedean_combined` (1,150) and `fittedFunction_at_zero_close_alt` (4,154).

## The timeline steps without a counterpart

This section compares the four steps with the code.

**Remark (Step 2).** Step 2 says "$D^p \equiv 0$ on a CM curve for $p$ inert in $K$". The code has the formula for $D^p$ on any lift of a formal group law, and it has a CM curve, but no declaration joins them. The curve has CM by $\mathbb{Q}(\sqrt{-p})$, where $p$ ramifies, and in the proof $p = d$. No declaration of this chapter speaks of a prime inert in $K$. Step 2 also says that $D^a\theta(0)/\Omega^a$ is divisible by a power of $p$. The code has no theta function on a CM curve here. The closest statement is jet integrality, whose proof does not use the invariant derivation.

**Remark (Step 9).** Step 9 speaks of the norms of the lifts and the level, with divisibility from Chowla-Selberg, Weyl and the Siegel mass. The norm in the code is the norm of one number $\beta$ built from a Hecke L-value, not of a lift. The level, "terms of order $m$ cancel" and "Weyl" have no counterpart in this chapter. The Siegel mass appears only as the mass ratio of Section 1, next to the CM curve, not in a divisibility argument.

**Remark (Step 10).** Step 10 asks for a sufficient lower bound on the divisibility of the $m$-fold lift. These declarations have no $m$-fold lift. The closest counterpart is the bound $v_l(\beta) \ge -b_l$ of Section 3, which bounds a denominator. This chapter does not check that it is sufficient in the sense of the timeline.

**Remark (Step 15).** Step 15 glues an integral structure across the Hecke characters to get a gcd. The gcd of the code is the Bezout gcd of two periods of one product of local test functions. No integral structure is glued across Hecke characters. That idea has no counterpart here.

**Remark (Literature).** No statement of this chapter is in `links/literature.yaml`. The CM curve, the prismatic Dieudonné statement, the Chowla-Selberg formula and the five inputs of the bundle of Section 3 are proved in the code, so they are not cut points.

## Notes and references

The code is not reviewed. The site does not claim that the proof is correct. The [trust report](/trust/) says what has been checked. Sizes in the Remarks are dominator sizes: the number of declarations that only this node reaches from the top. The whole proof of the Riemann Hypothesis has 757,483 declarations in the spine.

The curves of Section 1 are of the kind that B. Gross studied. For Eisenstein series at CM points see Katz, and for masses of Hermitian lattices see Gan, Hanke and Yu.

- S. Chowla and A. Selberg, *On Epstein's zeta-function*, J. Reine Angew. Math. 227 (1967), pages 86 to 110.
- W. T. Gan, J. P. Hanke and J.-K. Yu, *On an exact mass formula of Shimura*, Duke Math. J. 107 (2001), pages 103 to 133.
- N. M. Katz, *p-adic interpolation of real analytic Eisenstein series*, Ann. of Math. 104 (1976), pages 459 to 571.
- N. M. Katz, *p-adic L-functions for CM fields*, Invent. Math. 49 (1978), pages 199 to 297.
