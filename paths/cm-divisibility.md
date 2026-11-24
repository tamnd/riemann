The chapter [CM curves, the invariant derivation and divisibility](/proof/cm-divisibility/) compares four steps of the timeline with the code. The code has a CM elliptic curve, a formula for the $p$-th power of an invariant derivation, $l$-adic bounds on derivatives of Eisenstein sums over periods, a norm bound from the Chowla-Selberg formula, and a gcd of depths. The pieces sit in different branches.

## Read first

- [Integers and congruences](/learn/algebra/#integers-and-congruences): the greatest common divisor and Bezout, for Section 5.
- [Polynomials and power series](/learn/algebra/#polynomials-and-power-series). Section 2 computes with formal power series.
- [Ideals and the class group](/learn/number-fields/#ideals-and-the-class-group). Section 4 averages over the ideal class group.
- [The splitting of primes](/learn/number-fields/#the-splitting-of-primes): the timeline wants $p$ inert, but in the code $p$ has ramification.
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields) covers the partial zeta function, the class number formula and the Kronecker limit formula.
- [Tate's thesis and Hecke L-functions](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions). The number $\beta$ of Section 4 comes from a Hecke L-value.
- [Lattices and the Weierstrass function](/learn/elliptic-curves/#lattices-and-the-weierstrass-function): $g_2$, $g_3$, the discriminant $\Delta(\Lambda)$ and the Eisenstein sum of Section 3.
- [Reduction and minimal models](/learn/elliptic-curves/#reduction-and-minimal-models) and [quadratic twists](/learn/elliptic-curves/#quadratic-twists). Section 1 twists a curve to reach the minimal discriminant $-p^3$.
- [Complex multiplication](/learn/elliptic-curves/#complex-multiplication) gives $j(L)$ and Shimura reciprocity.
- [The Chowla-Selberg formula](/learn/elliptic-curves/#the-chowla-selberg-formula) is in Section 4.
- [Gross's curves](/learn/elliptic-curves/#grosss-curves) are the curves of Section 1.
- [The invariant derivation and the logarithm](/learn/formal-groups/#the-invariant-derivation-and-the-logarithm), for $D_u$ and a quasi-logarithm.
- [Prismatic Dieudonné theory](/learn/formal-groups/#prismatic-dieudonn-theory), the deepest: Section 2 uses the formula for a p-divisible group $G$ and modules over $A_{\mathrm{inf}}$.

## The new objects

- CMCurveGoodOutsidePrimeSt says: for each prime $p > 3$ with $p \equiv 3 \pmod 4$ there is an elliptic curve over $\mathbb{Q}(j)$ with complex multiplication by the integers of $\mathbb{Q}(\sqrt{-p})$, good reduction outside $p$ and minimal discriminant $-p^3$. It enters through [published_results_eigen](/step/published-results-eigen/).
- For a lift $\mu$ of a formal group law, $D_u$ is the invariant derivation in the direction $u$. The formula of Section 2: the constant term of $D_u^{\,p}(X_j)$ is $\sum_i c_i u_i^{\,p}$ modulo $\ker\theta + (p)$, with $c_i$ read from the $X_i^p$ terms of a quasi-logarithm.
- JetInt says that derivatives at $0$ of an Eisenstein lattice sum for a CM field and a CM type, divided by powers of periods, have bounded $l$-adic size.
- LatIntRam and LatIntUnr bound $v_l(\beta)$ from below, where $\beta = (C_0 T)^{12} / \Delta(\Lambda)^{\mathrm{wt}}$ for a value $T$ of a lattice sum. ToricDenominator adds bounds on denominators of partial zeta values.
- BetaArch bounds the log of the norm of $\beta$, read off its minimal polynomial.
- DepthOK says that a product of local test functions vanishes unless $Kx$ and $Ky$ lie in given lattices, and has period $K$. Periods $k$ and $k'$ give the period $\gcd(k, k')$.

## The path through the chapter

1. Gross's curve gives the field data of the host field (Section 1).
2. The $D^p$ formula makes a dual Frobenius nilpotent, inside the proof of a prismatic Dieudonné statement (Section 2).
3. JetInt, proved from the functional equation of partial zeta functions, gives the bounds on $v_l(\beta)$ (Section 3).
4. Shimura reciprocity gives the conjugates of $\beta$, and Chowla-Selberg averages their sizes to bound the norm (Section 4).
5. Bezout gives the gcd of depths, so the least depth divides each valid depth (Section 5). Both bounds feed the [unitary hypotheses](/proof/unitary-hypotheses/).
