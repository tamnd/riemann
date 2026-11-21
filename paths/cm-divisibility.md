The chapter [CM curves, the invariant derivation and divisibility](/proof/cm-divisibility/) compares four steps of the timeline with the code. The code has a CM elliptic curve with good reduction outside $p$, a formula for the $p$-th power of the invariant derivation of a formal group, $l$-adic bounds on derivatives of Eisenstein sums divided by periods, a norm bound from the Chowla-Selberg formula, and a gcd of depths. These pieces live in different branches of the proof, and the chapter says what each one proves.

## Read first

- [Integers and congruences](/learn/algebra/#integers-and-congruences), for the greatest common divisor and the Bezout identity of Step 8.
- [Polynomials and power series](/learn/algebra/#polynomials-and-power-series), for the formal power series of Step 2.
- [Ideals and the class group](/learn/number-fields/#ideals-and-the-class-group), for the ideal norm and the ideal class group, over which Step 6 takes a mean.
- [The splitting of primes](/learn/number-fields/#the-splitting-of-primes), for ramification: the timeline asks for $p$ inert, but in the code $p$ is ramified.
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields), for partial zeta functions, the class number formula and the Kronecker limit formula.
- [Tate's thesis and Hecke L-functions](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions), for the Hecke L-value inside $\beta$ in Step 7.
- [Hermitian lattices and the mass formula](/learn/groups/#hermitian-lattices-and-the-mass-formula), for the Siegel mass input `SiegelMassRatioCM`, used next to the CM curve of Step 1.
- [Lattices and the Weierstrass function](/learn/elliptic-curves/#lattices-and-the-weierstrass-function), for $g_2$, $g_3$, the discriminant $\Delta(\Lambda)$ and the Eisenstein sum of Step 4.
- [Reduction and minimal models](/learn/elliptic-curves/#reduction-and-minimal-models), for good reduction and the minimal discriminant of Step 1.
- [Quadratic twists](/learn/elliptic-curves/#quadratic-twists), for the twist by $d_F$ in the proof of Step 1.
- [Complex multiplication](/learn/elliptic-curves/#complex-multiplication), for $j(L)$ and Shimura reciprocity in `Transport`.
- [The Chowla-Selberg formula](/learn/elliptic-curves/#the-chowla-selberg-formula), the formula of Step 6.
- [Gross's curves](/learn/elliptic-curves/#grosss-curves), the curve of Step 1.
- [The invariant derivation and the logarithm](/learn/formal-groups/#the-invariant-derivation-and-the-logarithm), for $D_u$ and the quasi-logarithm of Step 2.
- [Prismatic Dieudonné theory](/learn/formal-groups/#prismatic-dieudonn-theory), for the p-divisible group $G$ and the modules over $A_{\mathrm{inf}}$ in Step 3, where the formula is used.

## The new objects

`CMCurveGoodOutsidePrimeSt` says: for each prime $p > 3$ with $p \equiv 3 \pmod 4$ there is an elliptic curve over $\mathbb{Q}(j)$ with complex multiplication by the integers of $\mathbb{Q}(\sqrt{-p})$, good reduction outside $p$ and minimal discriminant $-p^3$. These are Gross's curves. It enters through the bundle [published_results_eigen](/step/published-results-eigen/).

`invDer` is the invariant derivation $D_u$ of a lift $\mu$ of a formal group law. The formula of Step 2 says that the constant term of $D_u^{\,p}(X_j)$ is $\sum_i c_i u_i^{\,p}$ modulo $\ker\theta + (p)$, with $c_i$ read from the $X_i^p$ terms of a quasi-logarithm.

`JetInt` says that derivatives at $0$ of an Eisenstein lattice sum for a CM field and a CM type, divided by powers of periods, have bounded $l$-adic size.

`LatIntRam` and `LatIntUnr` give a lower bound on $v_l(\beta)$, where $\beta = (C_0 T)^{12} / \Delta(\Lambda)^{\mathrm{wt}}$ for a value $T$ of a lattice sum. `ToricDenominator` combines them with bounds on denominators of partial zeta values.

`BetaArch` bounds the log of the constant coefficient of the minimal polynomial of $\beta$, that is, of its field norm.

`DepthOK` says that a product of local test functions is zero unless $Kx$ and $Ky$ lie in given lattices, and that it is periodic with period $K$. The lemma `flatProductDepthPeriodic_gcd` says that periods $k$ and $k'$ give the period $\gcd(k, k')$.

## The path through the chapter

1. Gross's curve gives the field data `FieldDat` of the host field (Step 1). Its proof uses minimal models and a quadratic twist.
2. The $D^p$ formula makes a dual Frobenius nilpotent, inside the proof of a prismatic Dieudonné statement (Steps 2 and 3).
3. `JetInt`, proved from the functional equation of partial zeta functions, gives the bounds on $v_l(\beta)$ (Steps 4 and 5).
4. The Chowla-Selberg formula, from the Kronecker limit formula and the class number formula, gives the mean over the conjugates of $\beta$; with Shimura reciprocity this bounds the norm (Steps 6 and 7).
5. Bezout gives the gcd of depths, and so the least depth divides each valid depth (Step 8). Both bounds feed the [unitary hypotheses](/proof/unitary-hypotheses/).
