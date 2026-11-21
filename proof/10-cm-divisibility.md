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
## Result

This page is about four steps of the timeline.

- Step 2: $D^p \equiv 0$ on a CM curve for $p$ inert in $K$, where $D$ is the invariant derivation. This gives a divisibility of $D^a\theta(0)/\Omega^a$ by a power of $p$.
- Step 9: the norms of the lifts and the level, with divisibility from Chowla-Selberg, Weyl and the Siegel mass.
- Step 10: a lower bound on the divisibility of the $m$-fold lift that is sufficient.
- Step 15: glue an integral structure across the Hecke characters to get a gcd.

The Lean code has these results that are close to the steps. All of them are proved in the code. None of them is a cut point in [the literature inputs](/proof/literature/).

1. `cmCurveGoodOutsidePrime`. For each prime $p > 3$ with $p \equiv 3 \pmod 4$, there is an elliptic curve $A$ over the number field $F = \mathbb{Q}(j)$, with CM by the integers of $\mathbb{Q}(\sqrt{-p})$, with good reduction outside $p$ and with minimal discriminant $-p^3$.
2. `constantCoeff_pIterate_invariantDerivation_coord`. For a lift $\mu$ of a formal group law, the constant term of $D^p(X_j)$ is $\sum_i c_i u_i^p$ modulo $\ker\theta + (p)$. Here $D$ is the invariant derivation in direction $u$, and $c_i$ comes from the coefficient of $X_i^p$ in a quasi-logarithm. This is a Hasse-Witt type formula.
3. `JetInt`. Iterated derivatives at $0$ of an Eisenstein lattice sum, divided by powers of periods $a_i$ with $a_i/\Omega$ of known $l$-adic size, have a bounded $l$-adic size.
4. `chowla_selberg_discriminant`. For an imaginary quadratic field $K$ of discriminant $-d$ with $d > 4$, the class group mean of $\log\big(N(\mathfrak a_c)^6\,|\Delta(L_c)|\big)$ is $12\log 2\pi - 6\log d + 6\gamma - 6\,L'(1,\chi)/L(1,\chi)$.
5. `betaArch_of_transport`. The norm of an algebraic number $\beta$, made from a Hecke L-value at a CM point, is bounded. The proof uses the Chowla-Selberg mean.
6. `flatProductDepthPeriodic_gcd`. If a product of local test functions is periodic with periods $k$ and $k'$, then it is periodic with period $\gcd(k,k')$.

## Idea

The steps of the timeline tell one story: a derivative on a CM curve kills $p$-th powers, so derivatives of theta values are divisible by $p$; the divisibility is then measured by norms through Chowla-Selberg, bounded from below, and combined into a gcd. The Lean code does not tell this story in one chain. The pieces live in different branches of the proof tree.

- The CM curve is a literature input. It is used once, to build the field data `FieldDat` of a host field. It is not used to compute derivatives.
- The formula for $D^p$ is about any lift of a formal group law. It is used to show that a dual Frobenius matrix is nilpotent, inside the proof of a prismatic Dieudonné statement. It does not mention a CM curve or theta.
- The divisibility of derivatives over periods is the statement `JetInt`. Its proof uses bounds on values of Hilbert Eisenstein series at CM points, not the formula for $D^p$.
- The norm bound and the gcd are two small lemmas under the [unitary hypotheses](/proof/unitary-hypotheses/).

So the page has one section per piece, and it says at each point where the timeline and the code differ.

## Before you read

You need these ideas.

- An [[algebraic number field|WXGM3VWEK6]], its [[places|BT5V3TSNY6]], its ring of integers and its class group.
- [[p-adic numbers|BT6T702C28]] and the $l$-adic absolute value on $\mathbb{C}_l$. A [[local field|RDV3C0PXTH]].
- An elliptic curve with complex multiplication (CM), its $j$-invariant, its lattice $\Lambda$ and the discriminant $\Delta(\Lambda) = g_2^3 - 27g_3^2$.
- A formal group law and its invariant derivation. For the third section, [[p-adic Hodge theory|6YDZNXR19H]] and $p$-divisible groups.
- [[Eisenstein series|3NZBZXYWAJ]] and [[Hecke characters|KPYFGB342X]].
- A [[Dirichlet character|JR4QSEFXWF]] $\chi$ and its [[L-function|24GAZHVTGB]], for the Chowla-Selberg formula.
- [[Schwartz functions|GE020MY43M]] at the finite places, for the gcd.

## Plan

1. State the CM curve and see where the proof uses it.
2. Define the invariant derivation and state the formula for $D^p$.
3. See where the formula is used: the nilpotence of a dual Frobenius.
4. State `JetInt`: derivatives over periods have bounded $l$-adic size.
5. Turn this into lower bounds on valuations: `LatIntRam`, `LatIntUnr` and `ToricDenominator`.
6. State the Chowla-Selberg formula of the code.
7. Bound the norm of $\beta$ with it: `BetaArch`.
8. Get a gcd of depths, and use it for a minimal depth.

## The steps

### Step 1. The CM curve

The statement is in [CmCurveGoodOutsidePrimePremises.lean#L35](lean:Development/AbelianVarietyTheory/PublishedTheorems/Divisors₂/CmCurveGoodOutsidePrimePremises.lean#L35).

```lean
def CMCurveGoodOutsidePrimeSt : Prop :=
  ∀ p : ℕ, p.Prime → p % 4 = 3 → 3 < p →
    ∃ (F : Type) (_ : Field F) (_ : NumberField F) (A : WeierstrassCurve F),
      IsGoodCMCurve p F A ∧ HasMinimalDiscriminant A (-(p : F) ^ 3)
```

`IsGoodCMCurve p F A` asks three things. $F$ is $\mathbb{Q}(j(L))$, where $L \subset \mathbb{C}$ is the lattice of algebraic integers of $\mathbb{Q}(\sqrt{-p})$. The $j$-invariant of $A$ is $j(L)$. And $A$ has good reduction at each prime of $F$ that does not divide $p$. `HasMinimalDiscriminant A D` asks that at each prime $v$ there is a minimal model of $A$ whose discriminant is a unit times $D$. This is a curve of the kind that B. Gross studied.

The proof is [CmCurveGoodOutsidePrime.lean#L47](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmCurveGoodOutsidePrime.lean#L47). It takes the lattice $L$ and the fact that $j(L)$ is an algebraic integer. It scales the lattice, and it takes the twist of the curve $y^2 = x^3 - \tfrac{g_2}{4}x - \tfrac{g_3}{4}$ by $d_F = 1$ if $p \equiv 3 \pmod 8$ and by $d_F = -p$ if $p \equiv 7 \pmod 8$. Then at each prime it finds a local minimal model with discriminant a unit times $(-p)^3$. The proof dominates 169 declarations. The largest part (92) is the computation of the discriminant of the twisted model.

In the proof of the Riemann Hypothesis the statement enters through `cm_curve_good_outside_prime_st_of_literature` ([EveryCharacterOfLiteratureOfVWin.lean#L277](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L277)). This is one line: it ignores its argument `O` and returns `cmCurveGoodOutsidePrime`. It is a field of the bundle `published_results_eigen` (3,017).

The statement is used by `baseCond_KPx` ([ExistsPrePin.lean#L30](lean:Development/AbelianVarietyTheory/Proofs/IwasawaDecomposition/ExistsPrePin.lean#L30)), which dominates 111 declarations.

```lean
theorem baseCond_KPx : RayField → PrincipalIdealSt → CMCurveGoodOutsidePrimeSt →
    StandardLattice.SiegelMassRatioCM → BaseCond KPx
```

Inside it, `nonempty_fieldDat` applies the statement to $p = d$, where $-d$ is the discriminant of the imaginary quadratic host field and $d \equiv 7 \pmod{16}$. The curve is stored in the structure `FieldDat`, and the code defines from it a torsion field and a discriminant field. So the CM curve has CM by the host field itself, and $p = d$ is ramified in that field, not inert. The same theorem takes `SiegelMassRatioCM`: for an unramified CM field $K$ and $M \geq 3$, the ratio of the masses of the standard Hermitian lattices of ranks $M$ and $M-1$ is an explicit value `massRatioRightSide K M`. The code proves it with `massRatio_all_unramified_cmFields`. This is the only place on this page where a Siegel mass appears.

### Step 2. The invariant derivation and $D^p$

Let $\mu = (\mu_1, \dots, \mu_d)$ be power series in $X_1, \dots, X_d, Y_1, \dots, Y_d$ over a ring $B$. For $u \in B^d$, the code defines ([InvDer.lean#L16](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/InvDer.lean#L16))

$$ D_u F(X) = \sum_{i=1}^{d} u_i \, \frac{\partial}{\partial Y_i} F(\mu(X,Y)) \Big|_{Y=0}. $$

When $\mu$ is a formal group law, $D_u$ is the invariant derivation in the direction $u$.

The main statement is [ConstantCoeffPIterateInvariantDerivationCoordStatement.lean#L8](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ConstantCoeffPIterateInvariantDerivationCoordStatement.lean#L8). It works in a "frame" `IsFrame p Q θ`: a surjection $\theta : B \to O$, an injection $B \to Q$ where $p$ is a unit, $B$ is $p$-adically complete, $O$ has no $p$-torsion, and for each $x \in \ker\theta$ we have $x^p = p\,y$ with $y \in \ker\theta$. The series $\mu$ is a lift (`IsLift θ μ`): its image under $\theta$ is a commutative formal group law. The series $l$ over $Q$ is a quasi-logarithm for $\mu$ in coordinate $j$: its linear part is the $j$-th coordinate, and $l(\mu(X,Y)) - l(X) - l(Y)$ has coefficients in $\ker\theta$. Let $c_i \in B$ with $c_i = p \cdot [X_i^p]\,l$ in $Q$. Then the statement is

$$ \text{constant term of } D_u^{\,p}(X_j) \;\equiv\; \sum_{i=1}^{d} c_i\, u_i^{\,p} \pmod{\ker\theta + pB}. $$

In words: up to the ideal $\ker\theta + (p)$, the $p$-th power of the invariant derivation acts on the coordinate $X_j$ through a $p$-linear map, and the coefficients of this map are read off from the $X^p$ terms of the logarithm. When all $c_i$ are $0$ modulo this ideal, the constant term of $D_u^{\,p}(X_j)$ is $0$ modulo it. This is the general form of "$D^p \equiv 0$". The proof (`constantCoeff_iterate_invDer_X_sub_mem`) dominates 29 declarations, and the statement dominates 30.

The statement is about a formal group law in general. It does not mention an elliptic curve, CM, a prime inert in $K$, a theta function or a period $\Omega$.

### Step 3. Where the formula is used

The only user in the proof tree is `isNil_dual_frobenius` ([IsNilDualFrobenius.lean#L24](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsNilDualFrobenius.lean#L24)), which dominates 77 declarations. Its setting is a $p$-divisible group $G$ over the ring of integers $O$ of an algebraically closed field $C$, a frame built from a primitive system $\varepsilon$ in the tilt, and a chart of $G$ by a formal group law. A basis $e$ of quasi-logarithms has a Frobenius matrix of the form $U \cdot \mathrm{blk}(p, 1)$ with $U$ invertible. If the dual group $G^\vee$ is connected, the theorem proves that the matrix $(U^{T})^{-1}\,\mathrm{blk}(1,p)$ is nilpotent in the sense `IsNil`. The formula of Step 2 is what makes the dual Frobenius small modulo $p$.

This lemma is used in `window_matrices` (1,206), and that is used in the proof of `UpperTheory.Lit.prismaticDieudonneHodge` (1,708). The statement `PrismaticDieudonneHodge` asks for a functor from $p$-divisible groups over $O$ to free modules over Fontaine's ring $A_{\inf}$, of rank equal to the height, with a Frobenius and a Hodge filtration $0 \to \omega_G \to D \to \mathrm{Lie}(G^\vee) \to 0$. It is a literature input that the code proves. So in the code the invariant derivation serves $p$-adic Hodge theory, not the divisibility of theta values.

### Step 4. Derivatives over periods

The statement closest to "divisibility of $D^a\theta(0)/\Omega^a$" is `JetInt` ([JetAnalytic.lean#L239](lean:Development/AbelianVarietyTheory/Definitions/Divisors/JetAnalytic.lean#L239)).

It is stated for all data `AllLat`: a CM field $E$ that is abelian over $\mathbb{Q}$, a CM type $\varphi = (\varphi_i)_{i \in I}$, an integer $s \geq 1$, values $z$ of partial zeta functions, a conductor $\mathfrak f$, an integral lattice $\Lambda$ of the imaginary quadratic field of discriminant $-d$, a prime $l$ and a lattice $L$ of $E$. For each embedding $\lambda$ of $\overline{\mathbb{Q}}$ into $\mathbb{C}_l$ and each $\Omega$ with $\Omega^{12} = \Delta(\Lambda)$, it asks for nonzero $a_i, b_i$ with two conditions.

- $a_i/\Omega$ is algebraic with $|\lambda(a_i/\Omega)| \leq l^{a_0}$, and $(a_i b_i \sqrt d/2\pi)^{-1}$ has a similar bound.
- For each Eisenstein lattice sum $g$ of weight $2s$ attached to $L$ (`IsDefSum`), and each list $u$ of directions with $\kappa_i$ copies of $i$, the number

$$ \partial_u g(0) \cdot \prod_{i \in I} \frac{(b_i/a_i)^{\kappa_i}}{a_i^{\,2s}} $$

is algebraic, and its $l$-adic size is at most $l^{\,e + 2s|I|c + (\sum_i \kappa_i)c}$, with $e$ from the zeta values and $c = c_{v_p}(\mathfrak f, l)$ from the conductor.

Here `Sz l lam r x` means that $x$ is algebraic and $|\lambda(x)| \leq l^r$ ([TorsTransport.lean#L17](lean:Development/AbelianVarietyTheory/Definitions/Divisors/TorsTransport.lean#L17)). So `JetInt` says: derivatives of an Eisenstein sum at $0$, divided by period powers, have bounded denominators at $l$. This is a divisibility statement for derivatives over periods. The derivatives are partial derivatives on $\mathbb{C}^I$, not the invariant derivation of Step 2.

The proof is `cmLatticeDividedPowerJetIntegrality_of_ellipticCM` ([CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean#L9)), with 156 declarations. It takes four named inputs: `SiegelKlingenDeligneRibet`, `PartialZetaFunctionalEquation`, `HilbertClassFieldJ` and `EllipticMainTheoremCM`. The inner proof `JetIntElliptic.jetInt` starts with `fun _ hPZ _ _ =>`, so it uses only the functional equation of partial zeta functions. The other three inputs are not used. Its main parts are a bound on Hilbert Eisenstein values at CM points when $j$ is integral (`norm_hilbertEisensteinValue_le_of_integral_j`, 58) and a core lemma (66).

### Step 5. Lower bounds on valuations

From `JetInt` the code gets two statements on the $l$-adic valuation of $\beta$ ([TorsTransport.lean#L33](lean:Development/AbelianVarietyTheory/Definitions/Divisors/TorsTransport.lean#L33)). The number $\beta$ is defined in `CMVal.beta`:

$$ \beta(\Lambda, T) = \frac{(C_0 \cdot T)^{12}}{\Delta(\Lambda)^{\,\mathrm{wt}}}, $$

where $T = S(0)$ is the value at $0$ of a lattice sum $S$ (`IsLatSum`), $C_0$ is an explicit constant and $\mathrm{wt}$ is the weight. `LatIntRam` (for $l$ that divides the conductor) and `LatIntUnr` (for $l$ that does not) both say

$$ v_l(\beta) \;\geq\; \texttt{betaBound\_vp}(d, s, \kappa, \mathfrak f, z, l). $$

This is a lower bound on the divisibility of $\beta$ by $l$. The theorem `toricDenominator` ([ToricDenominatorOfZetaDenominators.lean#L39](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ToricDenominatorOfZetaDenominators.lean#L39), 32 declarations) combines the two bounds with `ZetaDenominators`, a bound on the denominators of partial zeta values, into the statement `ToricDenominator`.

The chain is `latIntUnr` (20) and `latIntRam` (9), then `toricDenominator` (32), then `joinOut_of_lat` (180), then `joinOut_of_jetInt` (233), then `joinOut_of_five` (1,598), then `join_out_of_literature` (1,604) and `published_results_eigen` (3,017). The output `JoinOut` holds, among other things, the statement `Transport` of Step 7.

The timeline speaks of "the $m$-fold lift". The code has no $m$-fold lift here. The closest counterpart of step 10 is this lower bound on $v_l(\beta)$.

### Step 6. The Chowla-Selberg formula

Let $K$ be an imaginary quadratic field with discriminant $-d$, $d > 4$, class number $h$ and character $\chi$. For each ideal class $c$ pick an ideal $\mathfrak a_c$ in $c$ and let $L_c$ be its lattice in $\mathbb{C}$. The code proves ([DedekindZetaEqSumRealEisenstein.lean#L259](lean:Development/AbelianVarietyTheory/Proofs/HomogeneousIdeals/DedekindZetaEqSumRealEisenstein.lean#L259))

$$ \frac{1}{h} \sum_{c} \log\!\Big( N(\mathfrak a_c)^6 \, \big|g_2(L_c)^3 - 27 g_3(L_c)^2\big| \Big) = 12\log 2\pi - 6 \log d + 6\gamma - 6\,\frac{L'(1,\chi)}{L(1,\chi)}. $$

Here $\gamma$ is Euler's constant. The left side is a mean over the class group. It does not depend on the choice of $\mathfrak a_c$, because $N(\mathfrak a)^6|\Delta|$ does not change when the lattice is scaled. The proof uses the Kronecker limit formula for the real analytic Eisenstein series (`tendsto_realEisenstein_sub_pole`, in `TendstoRealEisensteinSubPole.lean` of the same folder) and the class number formula $L(1,\chi) = \pi h/\sqrt d$ (`LFunction_one_eq_classNumber`, in the same file). Both are proved in the code.

The version used by the proof tree is `classMean_log_norm_disc_chowlaSelberg` ([ClassMeanLogNormDiscChowlaSelbergStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/ClassMeanLogNormDiscChowlaSelbergStatement.lean#L9)). It is the same formula, written with `nrm`, `latDisc` and `dlogL D 1` for the host field $D$. It dominates 8 declarations.

### Step 7. The norm bound

The statement `BetaArch` ([NormSmall.lean#L96](lean:Development/AbelianVarietyTheory/Statements/PlaceShiftStatements/NormSmall.lean#L96)) bounds the norm of $\beta$. Let $y$ be the value $\Lambda(s)$ of a Hecke L-function at $s$ (`IsTor`), and let $\Lambda$ be an integral lattice. Then

$$ \log \big| \text{constant coefficient of } \mathrm{minpoly}_{\mathbb{Q}}(\beta) \big| \;\leq\; \deg(\beta) \cdot 12 \, b, $$

where $b$ is a bound `bTH` fixed by the data. Up to sign, the constant coefficient of the minimal polynomial is the norm of $\beta$ from $\mathbb{Q}(\beta)$ to $\mathbb{Q}$.

The proof is `betaArch_of_transport` ([BetaConjugateMeanLogAbsBoundOfTransport.lean#L43](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/BetaConjugateMeanLogAbsBoundOfTransport.lean#L43)), with 70 declarations. It takes four inputs: `Transport`, `FieldDat`, `LBound` and `TorEx`. The argument has three parts.

1. Find the imaginary quadratic subfield $K$ of the field data.
2. `Transport` gives each Galois conjugate $\sigma(\beta)$ as a value of the same shape, for an ideal $\mathfrak a_\sigma$ and a lattice $\Lambda_\sigma$. This is Shimura reciprocity. With `LBound` (a bound on $\log|\Lambda(s)|$ for Hecke L-functions) it gives $\log|\sigma\beta| \leq F_\sigma$, where $F_\sigma$ contains the term $-\mathrm{wt}\cdot\log\big(N(\mathfrak a_\sigma)^6|\Delta(\Lambda_\sigma)|\big)$.
3. Average over the conjugates. They run over the ideal classes of $K$, so the mean of the $\log(N(\mathfrak a)^6|\Delta|)$ terms is given by the Chowla-Selberg formula of Step 6.

The chain above it is `betaConjugate_mean_logAbs_bound_of_transport` (71), then `square_top_term_joined_estimates` (2,312), then `fittedFunction_at_zero_close_alt` (4,154), and then the [unitary hypotheses](/proof/unitary-hypotheses/). So here "Chowla-Selberg gives divisibility" becomes "Chowla-Selberg controls the archimedean size of the conjugates of $\beta$".

### Step 8. A gcd of depths

Fix data of a grid: places, local Schwartz test functions $\Phi$ and a family $\beta$. The function `flatProd` is the product over places $w$ of local factors. `DepthOK S t Φ β e K` ([IsExpansionIff.lean#L20](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/IsExpansionIff.lean#L20)) says two things.

- If `flatProd` is not zero at half-integral points $x, y$, then $K x_j$ and $K y_i$ lie in the given lattices.
- `flatProd` is periodic: $\mathrm{flatProd}(x + K u, y + K v) = \mathrm{flatProd}(x, y)$ for lattice vectors $u, v$.

The statement `flatProductDepthPeriodic_gcd` ([FlatProductDepthPeriodicGcdStatement.lean#L9](lean:Development/AbelianVarietyTheory/Proofs/DivisorProofs/FlatProductDepthPeriodicGcdStatement.lean#L9), 5 declarations) is

$$ \mathrm{DepthOK}(k) \;\wedge\; \mathrm{DepthOK}(k') \;\Longrightarrow\; \mathrm{DepthOK}(\gcd(k,k')). $$

The proof is Bezout: $\gcd(k,k')\,x = A\,(k x) + B\,(k' x)$ with integers $A, B$, and lattices and periods are closed under integer combinations.

The user is `depthK_of_hypotheses_alt` ([DepthOfSumBound.lean#L12](lean:Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/LocalTypeDictionary/DepthOfSumBound.lean#L12)), with 49 declarations. Let `expDepth` be the least valid depth. For any valid $K$, the gcd of `expDepth` and $K$ is valid, and it is at most `expDepth`, so it equals `expDepth`. Hence `expDepth` divides $K$, and $v_l(\mathrm{expDepth}) \leq v_l(K)$ for each prime $l$. With a bound on $v_l(K)$ this gives `DepthK`. The chain above it is `depthK_of_sumOKK` (50), then `sum_size_finite_away_archimedean_combined` (1,150), then `fittedFunction_at_zero_close_alt` (4,154).

So the gcd in the code is a gcd of periods of one product of local test functions. It is not a gcd across Hecke characters.

## Where it is in the code

Sizes are dominator sizes: the number of declarations that only this node reaches on the way down from the top. All paths are relative to `lean/src`. `DivisorProofs` is `Development/AbelianVarietyTheory/Proofs/DivisorProofs/`.

| Declaration | Module (file) | Size |
|---|---|---|
| `GlobalTheory.Published.cmCurveGoodOutsidePrime` | `DivisorProofs/CmCurveGoodOutsidePrime.lean` | 169 |
| `UpperTheory.LiteratureTheorems.cm_curve_good_outside_prime_st_of_literature` | `.../ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean` | 170 |
| `GlobalTheory.Mem.Top.Bl.KPxCond.baseCond_KPx` | `.../IwasawaDecomposition/ExistsPrePin.lean` | 111 |
| `GlobalTheory.T.constantCoeff_pIterate_invariantDerivation_coord` | `DivisorProofs/ConstantCoeffPIterateInvariantDerivationCoordStatement.lean` | 30 |
| `GlobalTheory.DualFrobNil.isNil_dual_frobenius` | `DivisorProofs/IsNilDualFrobenius.lean` | 77 |
| `UpperTheory.Lit.prismaticDieudonneHodge` | `.../PrismaticDieudonne/PrismaticDieudonneHodge.lean` | 1,708 |
| `GlobalTheory.T.cmLatticeDividedPowerJetIntegrality_of_ellipticCM` | `DivisorProofs/CmLatticeDividedPowerJetIntegralityOfPublishedStatement.lean` | 156 |
| `GlobalTheory.ToricDenomRow.toricDenominator` | `DivisorProofs/ToricDenominatorOfZetaDenominators.lean` | 32 |
| `GlobalTheory.JoinFun.joinOut_of_five` | `DivisorProofs/JoinOutOfFive.lean` | 1,598 |
| `GlobalTheory.T.classMean_log_norm_disc_chowlaSelberg` | `DivisorProofs/ClassMeanLogNormDiscChowlaSelbergStatement.lean` | 8 |
| `GlobalTheory.SqTop.betaArch_of_transport` | `DivisorProofs/BetaConjugateMeanLogAbsBoundOfTransport.lean` | 70 |
| `GlobalTheory.T.flatProductDepthPeriodic_gcd` | `DivisorProofs/FlatProductDepthPeriodicGcdStatement.lean` | 5 |
| `GlobalTheory.DepthUnf.depthK_of_hypotheses_alt` | `.../LocalTypeDictionary/DepthOfSumBound.lean` | 49 |

`JetInt`, `LatIntRam`, `LatIntUnr`, `BetaArch`, `Transport` and `DepthOK` are definitions, with size 1. The small sizes of `classMean_log_norm_disc_chowlaSelberg` (8) and `chowla_selberg_discriminant` (6) mean that most of the Chowla-Selberg proof is shared with other parts of the tree, so it is counted higher up. The whole proof of `riemannHypothesis` has 757,483 declarations in the spine. The largest node on this page, `prismaticDieudonneHodge`, has 1,708.

The folder `GroundTheory/HeightsAndTheta/Heights/ChowlaSelberg/` (namespace `GroundTheory.Heights₂.Heights.ChowlaSelberg`) has 58 files and 296 declarations in the index, for example a structure `CMFamily` and files on the class mean and the Kronecker limit. None of these declarations is in the spine, and no declaration outside the folder uses them. They are not part of the proof of the Riemann Hypothesis.

## Notes

- The code is not reviewed. The site does not claim that the proof is correct. The [trust report](/trust/) says what has been checked.
- Step 2 of the timeline, "$D^p \equiv 0$ on a CM curve for $p$ inert": the code has the formula for $D^p$ on any formal group lift, and it has a CM curve, but no declaration joins them. The CM curve of the code has CM by $\mathbb{Q}(\sqrt{-p})$ itself, so $p$ is ramified there, and in the proof $p$ is the discriminant $d$ of the host field. No declaration on this page speaks of a prime inert in $K$.
- Step 2, "divisibility of $D^a\theta(0)/\Omega^a$": the code has no theta function on a CM curve here. The closest statement is `JetInt`, which is about partial derivatives of Eisenstein lattice sums for a CM field $E$, divided by period powers. Its proof does not use the invariant derivation.
- `JetIntElliptic.jetInt` takes four published-named inputs and uses only `PartialZetaFunctionalEquation`. The names `SiegelKlingenDeligneRibet`, `HilbertClassFieldJ` and `EllipticMainTheoremCM` in its type do not do any work there.
- Step 9, "the norms of the lifts and the level": the norm in the code is the norm of one algebraic number $\beta$ built from a Hecke L-value, not of a lift. The page does not show how the level enters. "Terms of order $m$ cancel" has no counterpart on this page. "Weyl" has no counterpart on this page. The Siegel mass appears only as the input `SiegelMassRatioCM` of `baseCond_KPx`, next to the CM curve, and not in a divisibility argument.
- Step 10, "a lower bound on the divisibility of the $m$-fold lift": there is no $m$-fold lift in these declarations. The closest counterpart is the lower bound $v_l(\beta) \geq \texttt{betaBound\_vp}$ of `LatIntRam` and `LatIntUnr`. This page does not check that this bound is "sufficient" in the sense of the timeline.
- Step 15, "glue an integral structure across the Hecke characters to get a gcd": the code has a gcd, but it is the Bezout gcd of two periods of one product of local test functions. There is no integral structure glued across Hecke characters on this page. That idea has no counterpart here.
- None of the statements on this page has an entry in `links/literature.yaml`. The CM curve, the prismatic Dieudonné statement and the Chowla-Selberg formula are proved in the code, so they are not cut points.
- This page does not unfold `Transport`, `FieldDat`, `LBound`, `TorEx`, `ZetaDenominators` or the constant `betaBound_vp`.
