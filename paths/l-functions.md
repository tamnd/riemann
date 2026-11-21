The Riemann zeta function and the Dirichlet L-functions are Dirichlet series with Euler products over the primes. The final theorem of the proof, [riemannHypothesis](/step/riemann-hypothesis/), is a statement about the zeros of $\zeta$, and the [overview](/proof/) reaches it from [EveryCharacter](/step/every-character-def/), a statement about the zeros of all Dirichlet L-functions. The same functions, with the Dedekind and partial zeta functions of number fields, also appear as inputs: in the explicit formula of the branch `ZeroFreeAll` and in the class number formula of the CM side. [Chapter 3](/learn/complex-analysis/) defines analytic continuation, meromorphic functions and the Gamma function, and [Chapter 5](/learn/class-field-theory/) defines Hecke characters and Hecke L-functions.

## The Riemann zeta function

**Definition.** For $\operatorname{Re}(s) > 1$, the *[[Riemann zeta function|TXB2F07CC6]]* is $\zeta(s) = \sum_{n \geq 1} n^{-s}$. The series converges absolutely there.

**Theorem ([[Euler product|0C3PN4075R]]).** For $\operatorname{Re}(s) > 1$, $\zeta(s) = \prod_p (1 - p^{-s})^{-1}$, where $p$ runs over the primes and the product converges absolutely. So $\zeta(s) \neq 0$ for $\operatorname{Re}(s) > 1$ (Euler, 1737).

**Theorem.** The function $\zeta$ extends to a meromorphic function on $\mathbb{C}$. Its only pole is a simple pole at $s = 1$ with residue $1$:
$$\zeta(s) = \frac{1}{s - 1} + \gamma + O(s - 1),$$
where $\gamma = \lim_{N \to \infty} \bigl(\sum_{n \leq N} 1/n - \log N\bigr) = 0.5772\ldots$ is the [[Euler-Mascheroni constant|00C5P9JZBK]] (Riemann, 1859). Also $\zeta(0) = -1/2$, and $\zeta(-2n) = 0$ for each integer $n \geq 1$.

**Remark (the value at the pole in Mathlib).** Mathlib defines `riemannZeta` as a function on all of $\mathbb{C}$, so it has a value at $s = 1$. The lemma `riemannZeta_one` says that this value is $(\gamma - \log 4\pi)/2$, which is not zero. A statement about the zeros of `riemannZeta` must exclude $s = 1$ by hand, or must check that this value is not zero.

**Theorem (Hadamard, de la Vallée Poussin, 1896).** $\zeta(s) \neq 0$ for $\operatorname{Re}(s) = 1$. So $\zeta(s) \neq 0$ for $\operatorname{Re}(s) \geq 1$, and this gives the [[prime number theorem|0EHBY5Y84N]] $\#\{p \leq x\} \sim x / \log x$.

## The functional equation and the trivial zeros

**Definition (completed zeta function).** Put $\Gamma_\mathbb{R}(s) = \pi^{-s/2}\Gamma(s/2)$ and $\xi(s) = \Gamma_\mathbb{R}(s)\zeta(s)$.

**Theorem ([[functional equation of the zeta function|NFXKNDJX9C]]).** The function $\xi$ is meromorphic on $\mathbb{C}$ with simple poles at $s = 0$ and $s = 1$ only, and $\xi(s) = \xi(1 - s)$ (Riemann, 1859). An equivalent form, the one in Mathlib (`riemannZeta_one_sub`), is
$$\zeta(1 - u) = 2(2\pi)^{-u}\,\Gamma(u)\cos(\pi u/2)\,\zeta(u) \qquad \text{for } u \notin \{0, -1, -2, \dots\},\ u \neq 1.$$

**Definition (trivial zeros, critical strip).** The function $\Gamma(s/2)$ has poles at $s = 0, -2, -4, \dots$ and $\xi$ has no zeros with $\operatorname{Re}(s) < 0$. So $\zeta(s) = 0$ at $s = -2, -4, -6, \dots$. These are the *trivial zeros*. The set $0 < \operatorname{Re}(s) < 1$ is the *critical strip*. The zeros of $\zeta$ in it are the *nontrivial zeros*.

**Proposition.** The zeros of $\zeta$ are the trivial zeros and the nontrivial zeros. The nontrivial zeros are the zeros of $\xi$. They are symmetric under $s \mapsto 1 - s$ and under $s \mapsto \bar s$. There are infinitely many of them.

The proposition rests on three facts: $\zeta \neq 0$ for $\operatorname{Re}(s) \geq 1$; by the functional equation, the only zeros with $\operatorname{Re}(s) \leq 0$ are the trivial zeros; and the trivial zeros are exactly the numbers $-2(n + 1)$ with $n \in \mathbb{N}$. (At $s = 0$, $\zeta(0) = -1/2 \neq 0$.)

The step [rh-of-right](/step/rh-of-right/) uses `riemannZeta_one_sub` and $\zeta(0) = -1/2$ to move a zero $s$ with $\operatorname{Re}(s) < 1/2$ to the zero $1 - s$ with $\operatorname{Re}(1 - s) > 1/2$.

## The Riemann Hypothesis

**Definition (strip form).** The *[[Riemann Hypothesis|VCGF9YR36X]]* is the statement: each zero $s$ of $\zeta$ with $0 < \operatorname{Re}(s) < 1$ has $\operatorname{Re}(s) = 1/2$ (Riemann, 1859).

**Definition (Mathlib form).** Mathlib states the hypothesis as
```lean
def RiemannHypothesis : Prop :=
  ∀ (s : ℂ) (_ : riemannZeta s = 0) (_ : ¬∃ n : ℕ, s = -2 * (n + 1)) (_ : s ≠ 1),
    s.re = 1 / 2
```
It says: for each complex $s$ with $\zeta(s) = 0$, if $s$ is not a trivial zero and $s \neq 1$, then $\operatorname{Re}(s) = 1/2$. The hypothesis $\neg\exists n \in \mathbb{N},\ s = -2(n + 1)$ excludes exactly the trivial zeros $-2, -4, -6, \dots$ (for $n = 0, 1, 2, \dots$). The hypothesis $s \neq 1$ excludes the pole, where `riemannZeta` has a value by convention. That value is not zero, so this hypothesis does no work, but the statement keeps it. The number $1/2$ is the real number $0.5$.

**Proposition.** `RiemannHypothesis` is equivalent to the strip form. A zero that is not trivial and not at $1$ is in the critical strip by the three facts of the previous section, and each zero in the strip is not trivial and is not $1$.

The theorem [riemannHypothesis](/step/riemann-hypothesis/) proves `RiemannHypothesis`. It is the theorem [rhOfAll](/step/rh-of-all/), and the theorem `riemannZeta_eq_zero_re` of `Main.lean` restates it.

## Dirichlet characters

Fix an integer $N \geq 1$.

**Definition.** A *[[Dirichlet character|JR4QSEFXWF]] modulo $N$* is a group homomorphism $\chi : (\mathbb{Z}/N\mathbb{Z})^\times \to \mathbb{C}^\times$. It extends to a function on $\mathbb{Z}$: $\chi(n)$ is $\chi(n \bmod N)$ when $\gcd(n, N) = 1$, and $0$ otherwise. The number $N$ is the *modulus*. The *trivial character* modulo $N$ is $1$ at each $n$ prime to $N$. The *order* of $\chi$ is its order in the group of characters, which has $\varphi(N)$ elements. Since $\chi(-1)^2 = 1$, $\chi(-1) = \pm 1$. The character is *even* if $\chi(-1) = 1$ and *odd* if $\chi(-1) = -1$. This sign is the *parity* of $\chi$.

**Example.** Modulo $4$ there are two characters. The nontrivial one is $\chi_{-4}$, with $\chi_{-4}(1) = 1$ and $\chi_{-4}(3) = -1$. It is odd, of order $2$.

**Definition (conductor).** Let $M \mid N$. The character $\chi$ modulo $N$ is *induced* from a character $\chi'$ modulo $M$ if $\chi(n) = \chi'(n)$ for each $n$ prime to $N$. The *conductor* of $\chi$ is the least such $M$. The character is *primitive* if its conductor is $N$.

Each character $\chi$ is induced from exactly one primitive character $\chi^*$, of modulus the conductor of $\chi$. The trivial character modulo $1$ is primitive, and it induces each trivial character. In Mathlib, `χ.IsPrimitive` means `conductor χ = N`. By [Chapter 5](/learn/class-field-theory/), primitive characters of conductor $N$ are the finite order Hecke characters of $\mathbb{Q}$ of conductor $N$ that are trivial on $\mathbb{R}_{>0}$, and the characters modulo $N$ are the characters of $\mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q})$.

The statement [EveryCharacter](/step/every-character-def/) is about each character of each modulus, primitive or not, and the window bound [VWin](/step/vwin-def/) and the branch `ZeroFreeAll` (step 7 of the [theta matching chapter](/proof/theta-matching/)) are about primitive characters `PChar`.

## Dirichlet L-functions

**Definition.** Let $\chi$ be a Dirichlet character modulo $N$. For $\operatorname{Re}(s) > 1$, the *[[Dirichlet L-function|24GAZHVTGB]]* is
$$L(s, \chi) = \sum_{n \geq 1} \chi(n) n^{-s} = \prod_p (1 - \chi(p) p^{-s})^{-1}.$$

**Theorem.** $L(s, \chi)$ extends to a meromorphic function on $\mathbb{C}$. If $\chi$ is not trivial, it is entire. If $\chi$ is trivial modulo $N$, its only pole is a simple pole at $s = 1$. For $N = 1$, $L(s, \chi) = \zeta(s)$ (Dirichlet, 1837; Riemann, 1859).

Mathlib defines `DirichletCharacter.LFunction χ s` on all of $\mathbb{C}$ by $N^{-s}\sum_{j=0}^{N-1} \chi(j)\,\zeta(s, j/N)$, with the Hurwitz zeta function $\zeta(s, a)$. It equals the series for $\operatorname{Re}(s) > 1$, it is entire for $\chi \neq 1$, and `LFunction_modOne_eq` says it is `riemannZeta` for $N = 1$.

**Proposition (imprimitive characters).** Let $\chi$ modulo $N$ be induced from the primitive $\chi^*$. Then
$$L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \bigl(1 - \chi^*(p) p^{-s}\bigr).$$
For $p \mid N$ with $p \nmid \operatorname{cond}(\chi)$, the factor $1 - \chi^*(p)p^{-s}$ has its zeros at the $s$ with $p^s = \chi^*(p)$. Since $|\chi^*(p)| = 1$, these are infinitely many points on the line $\operatorname{Re}(s) = 0$. For $\operatorname{Re}(s) > 0$, $|\chi^*(p)p^{-s}| < 1$, so the factor has no zeros there.

**Example.** For the trivial character $\chi$ modulo $2$, $L(s, \chi) = (1 - 2^{-s})\zeta(s)$. It vanishes at $s = 2\pi i k/\log 2$ for each $k \in \mathbb{Z}$.

### Gauss sums and the functional equation

**Definition.** The *[[Gauss sum|EQ6A3ZN48K]]* of $\chi$ modulo $N$ is $\tau(\chi) = \sum_{a = 1}^{N} \chi(a)e^{2\pi i a/N}$. If $\chi$ is primitive, $|\tau(\chi)| = \sqrt N$.

**Theorem (functional equation).** Let $\chi$ be a primitive character modulo $N$ with parity $\chi(-1) = (-1)^\kappa$, $\kappa \in \{0, 1\}$. Put $\Lambda(s, \chi) = (N/\pi)^{(s + \kappa)/2}\,\Gamma\bigl((s + \kappa)/2\bigr)\,L(s, \chi)$. Then
$$\Lambda(s, \chi) = \frac{\tau(\chi)}{i^\kappa\sqrt N}\,\Lambda(1 - s, \bar\chi),$$
and the constant has absolute value $1$ (Hecke, 1918; Davenport, ch. 9). In Mathlib this is `IsPrimitive.completedLFunction_one_sub`.

Since $\overline{L(\bar s, \chi)} = L(s, \bar\chi)$, the zeros of $L(s, \chi)$ in the strip $0 < \operatorname{Re}(s) < 1$ are symmetric under $s \mapsto 1 - \bar s$. For primitive $\chi \neq 1$, the zeros outside the strip are the trivial zeros at $s = -\kappa, -\kappa - 2, -\kappa - 4, \dots$, and $L(s, \chi) \neq 0$ for $\operatorname{Re}(s) \geq 1$.

The step [imprimitive](/step/imprimitive/) proves the relation for imprimitive characters with `LFunction_changeLevel`, and passes from primitive to all characters through the bound $|\chi^*(p)p^{-s}| < 1$. The epsilon factors of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) contain local Gauss sums, the analogue of $\tau(\chi)$ at a place.

## Zeros and the Generalized Riemann Hypothesis

**Definition (order of a zero).** Let $f$ be holomorphic near $\rho$ and not identically $0$. The *[[order of a zero|0QX19C7K1C]]* of $f$ at $\rho$ is the least $m \geq 0$ with $f^{(m)}(\rho) \neq 0$. It is the *multiplicity* $m_\rho$. In sums over the zeros of an L-function, each zero counts $m_\rho$ times.

**Definition.** The *[[Generalized Riemann Hypothesis|DNKA4WBKDS]]* for Dirichlet L-functions is the statement: for each Dirichlet character $\chi$, each zero $s$ of $L(s, \chi)$ with $0 < \operatorname{Re}(s) < 1$ has $\operatorname{Re}(s) = 1/2$.

The proof states GRH for Dirichlet L-functions in three forms, with the Mathlib function `LFunction`. Each one quantifies over each $N \geq 1$ (`[NeZero N]`) and each $\chi$ : `DirichletCharacter ℂ N`.

- `DirichletLNonvanishingRightOfHalf`, the statement EveryCharacter: if $1/2 < \operatorname{Re}(s)$ and ($\chi \neq 1$ or $s \neq 1$), then $L(s, \chi) \neq 0$. The condition removes the pole of the trivial character, and only that point.
- `DirichletLZerosOnLine`: if $0 < \operatorname{Re}(s) < 1$ and $L(s, \chi) = 0$, then $\operatorname{Re}(s) = 1/2$. The strict bound $0 < \operatorname{Re}(s)$ is needed, because imprimitive characters have extra zeros on $\operatorname{Re}(s) = 0$.
- `PrimitiveDirichletLZerosOnLine`: the same, for the $\chi$ with `χ.IsPrimitive`.

By the functional equation, the zeros in the strip are symmetric under $s \mapsto 1 - \bar s$. So no zeros with $\operatorname{Re}(s) > 1/2$ means no zeros off the line in the strip. The proof derives the three forms in `Main.lean` as `LFunction_ne_zero_of_half_lt_re`, `LFunction_eq_zero_re` and `LFunction_eq_zero_re_of_isPrimitive`.

The step [all-chi](/step/all-chi/) proves EveryCharacter, and [rh-of-every](/step/rh-of-every/) takes it at $N = 1$ with the trivial character, where $L = \zeta$. The field `logDerOne` of [ThetaLocalInputs](/step/theta-local-inputs-def/) counts zeros with their orders: $\bigl|L'/L(1, \chi) - \sum_\rho m_\rho/(1 - \rho)\bigr| \leq C\log(3q)$ for primitive $\chi$ modulo $q > 1$, the sum over the zeros with $0 < \operatorname{Re}(\rho) < 1$ and $|\operatorname{Im}(\rho)| \leq 1$.

## Primes and the explicit formula

**Definition.** The *[[von Mangoldt function|0NK8JTE1NN]]* is $\Lambda(n) = \log p$ if $n = p^k$ with $p$ prime and $k \geq 1$, and $\Lambda(n) = 0$ otherwise. For $\operatorname{Re}(s) > 1$,
$$-\frac{\zeta'}{\zeta}(s) = \sum_{n \geq 1} \Lambda(n) n^{-s}, \qquad -\frac{L'}{L}(s, \chi) = \sum_{n \geq 1} \Lambda(n)\chi(n) n^{-s}.$$

**Theorem ([[explicit formula|72WNRWJQC1]]).** Let $\psi(x) = \sum_{n \leq x}\Lambda(n)$. For $x > 1$ not a prime power,
$$\psi(x) = x - \sum_\rho \frac{x^\rho}{\rho} - \log 2\pi - \tfrac12\log(1 - x^{-2}),$$
where $\rho$ runs over the nontrivial zeros with multiplicity and the sum is $\lim_{T \to \infty}\sum_{|\operatorname{Im}\rho| < T}$ (von Mangoldt, 1895). In the form of Guinand (1948) and Weil (1952): let $g$ be even, smooth and of compact support on $\mathbb{R}$, and $h(r) = \int g(u)e^{iru}\,du$. Write $\rho = 1/2 + i t_\rho$. Then
$$\sum_\rho h(t_\rho) = h\bigl(\tfrac{i}{2}\bigr) + h\bigl(-\tfrac{i}{2}\bigr) - g(0)\log\pi + \frac{1}{2\pi}\int_{\mathbb{R}} h(r)\,\frac{\Gamma'}{\Gamma}\bigl(\tfrac14 + \tfrac{ir}{2}\bigr)dr - 2\sum_{n \geq 1}\frac{\Lambda(n)}{\sqrt n}\,g(\log n).$$

The formula links sums over primes to sums over zeros. A zero $\rho$ with $\operatorname{Re}(\rho) > \theta$ makes a prime sum grow like $x^{\operatorname{Re}\rho}$. So a bound $O(x^\theta)$ on a suitable prime sum excludes zeros with $\operatorname{Re}(s) > \theta$.

The branch `ZeroFreeAll` (step 7 of the [theta matching chapter](/proof/theta-matching/)) uses the function $G_z(y) = \sum_{n \leq y}\Lambda(n)(y/n - 1) - y\log y + (1 + \gamma)y$, with Euler's constant $\gamma$, plus character twists. Its lemma `FormB` says that a bound $G_m(x) \leq x^\theta$ on long windows gives $L(s, \psi') \neq 0$ for $\operatorname{Re}(s) > \theta$, and [ZeroFreeAll from Green, VWin and HypsAlt](/step/zero-free-all-of-green-v-win/) assembles it. The folder of the [Weil bound chapter](/proof/weil-bound/) does not contain Weil's explicit formula.

### Primes in progressions and in short intervals

**Theorem (Dirichlet, 1837).** Let $q \geq 1$ and $a \in \mathbb{Z}$ with $\gcd(a, q) = 1$. There are infinitely many primes $p \equiv a \pmod q$, and $\sum_{p \equiv a,\ p \leq x} 1/p \sim \frac{1}{\varphi(q)}\log\log x$. The proof uses $L(1, \chi) \neq 0$ for each nontrivial $\chi$ modulo $q$ ([[Dirichlet's theorem|0GNVN3CA2P]]).

**Theorem (Linnik, 1944).** There are absolute constants $c, L > 0$ such that for each $q \geq 2$ and each $a$ with $\gcd(a, q) = 1$, the least prime $p \equiv a \pmod q$ is at most $c\,q^L$. One can take $L = 5$ (Xylouris, 2011).

**Theorem (primes in short intervals).** For each $\theta > 7/12$, $\#\{p : x < p \leq x + x^\theta\} \sim x^\theta/\log x$ as $x \to \infty$ (Huxley, 1972). For large $x$, the interval $[x - x^{0.525}, x]$ contains a prime (Baker, Harman and Pintz, 2001). Under RH, each interval $[x, x + C\sqrt x\log x]$ with $x \geq 2$ contains a prime for some absolute $C$ (Cramér, 1920). See [[prime gaps|XS05T5JA7G]].

### The Chebotarev density theorem

Let $L/K$ be a finite Galois extension of number fields with group $G$. [Chapter 4](/learn/number-fields/) defines the Frobenius class $\mathrm{Frob}_{\mathfrak p}$ of a prime $\mathfrak p$ of $K$ unramified in $L$.

**Theorem ([[Chebotarev|X8VKW5Y1CZ]], 1926).** Let $C \subseteq G$ be a conjugacy class. The set of primes $\mathfrak p$ of $K$ unramified in $L$ with $\mathrm{Frob}_{\mathfrak p} = C$ has natural density $|C|/|G|$:
$$\lim_{x \to \infty}\frac{\#\{\mathfrak p : N(\mathfrak p) \leq x,\ \mathrm{Frob}_{\mathfrak p} = C\}}{\#\{\mathfrak p : N(\mathfrak p) \leq x\}} = \frac{|C|}{|G|}.$$
The same holds for the primes of degree one, those with $N(\mathfrak p)$ prime, since the others have density $0$.

**Example.** For $K = \mathbb{Q}$ and $L = \mathbb{Q}(\zeta_q)$, $\mathrm{Frob}_p = \sigma_p$, so the theorem gives Dirichlet's density $1/\varphi(q)$.

The field `linnik` of [ThetaLocalInputs](/step/theta-local-inputs-def/) states Linnik's theorem, the input `hLit : LitThin` of [HypsAlt](/step/hyps-alt-def/) asks for three statements `ShortIntervalPrimes`, and the field `chebotarevDegreeOne` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) is Chebotarev for primes of degree one.

## Zeta functions of number fields

Let $K$ be a number field with $r_1$ real and $r_2$ complex places, discriminant $d_K$, class number $h_K$, regulator $R_K$, and $w_K$ roots of unity (Chapter 4).

**Definition.** The *[[Dedekind zeta function|KXS5DQDFYD]]* of $K$ is $\zeta_K(s) = \sum_{\mathfrak a} N(\mathfrak a)^{-s} = \prod_{\mathfrak p}(1 - N(\mathfrak p)^{-s})^{-1}$ for $\operatorname{Re}(s) > 1$, the sum over the nonzero ideals of $\mathcal{O}_K$. It is the Hecke L-function of the trivial character.

**Definition (partial zeta function).** Let $\mathfrak f$ be an ideal and $\mathfrak c$ a class in the ray class group modulo $\mathfrak f$. The *partial zeta function* is $\zeta(s, \mathfrak c) = \sum_{\mathfrak a \in \mathfrak c} N(\mathfrak a)^{-s}$, over the integral ideals in $\mathfrak c$. Each Hecke L-function of a character $\chi$ modulo $\mathfrak f$ is $\sum_{\mathfrak c}\chi(\mathfrak c)\zeta(s, \mathfrak c)$, and $\zeta(s, \mathfrak c)$ is an average of these. So $\zeta(s, \mathfrak c)$ is meromorphic on $\mathbb{C}$ with a simple pole at $s = 1$, and it has a functional equation from those of the $L(s, \chi)$.

**Theorem ([[class number formula|55XX5A7XZV]]).** $\zeta_K$ has a simple pole at $s = 1$ with residue
$$\operatorname{Res}_{s = 1}\zeta_K(s) = \frac{2^{r_1}(2\pi)^{r_2}h_K R_K}{w_K\sqrt{|d_K|}}$$
(Dirichlet, 1839; Dedekind, 1877). For an imaginary quadratic field of discriminant $-d$, $\zeta_K(s) = \zeta(s)L(s, \chi_{-d})$ with the quadratic character $\chi_{-d}$, and for $d > 4$ this gives $L(1, \chi_{-d}) = \pi h_K/\sqrt d$.

**Theorem ([[Kronecker limit formula|PD750J2XV9]]).** For $\tau = x + iy$ in the upper half plane, let $E(\tau, s) = \sum_{(m, n) \neq (0, 0)} y^s/|m\tau + n|^{2s}$ for $\operatorname{Re}(s) > 1$. Then, with Dedekind's eta function $\eta$,
$$E(\tau, s) = \frac{\pi}{s - 1} + 2\pi\bigl(\gamma - \log 2 - \log(\sqrt y\,|\eta(\tau)|^2)\bigr) + O(s - 1)$$
(Kronecker, 1863). Summed over the ideal classes of an imaginary quadratic field, it computes $L'/L(1, \chi_{-d})$, which leads to the Chowla-Selberg formula.

**Theorem (Siegel-Klingen).** Let $F$ be totally real, $\mathfrak f$ an ideal and $\mathfrak c$ a ray class modulo $\mathfrak f$. For each integer $k \geq 1$, $\zeta(1 - k, \mathfrak c)$ is a rational number (Klingen, 1962; Siegel, 1970).

**Theorem (Deligne-Ribet, 1980).** These rational values satisfy $\ell$-adic congruences. In one form: for an ideal $\mathfrak c$ prime to $\ell\mathfrak f$, the value $r$ of a partial zeta function at $1 - k$ and the value $r'$ at the class moved by $\mathfrak c$ satisfy $r - N(\mathfrak c)^k r' \in \mathbb{Z}_\ell$. This gives the $\ell$-adic L-functions of $F$.

The [CM divisibility chapter](/proof/cm-divisibility/) states the Chowla-Selberg mean $12\log 2\pi - 6\log d + 6\gamma - 6L'(1, \chi)/L(1, \chi)$, whose proof uses the Kronecker limit formula (`tendsto_realEisenstein_sub_pole`) and the class number formula (`LFunction_one_eq_classNumber`). The record [of CM inputs](/step/cm-abelian-inputs-from-literature/) holds `SiegelKlingenDeligneRibet` and `PartialZetaFunctionalEquation`, and only the second does work. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) has a class number formula at each datum (`StandardLattice.ClassNumberFormula₂`), and the [Weil bound chapter](/proof/weil-bound/) has the error term $\log\mathrm{rd}(E) + |\operatorname{Re}(L'/L)(1, \chi_d)|$.

## Further reading

- H. Davenport, *Multiplicative Number Theory*, 3rd ed., chapters 1, 4 to 9, 12 and 17.
- E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, 2nd ed., chapters 2 and 3.
- H. Iwaniec and E. Kowalski, *Analytic Number Theory*, chapters 5 (5.5, the explicit formula) and 18 (Linnik).
- J. Neukirch, *Algebraic Number Theory*, chapter VII (Dedekind zeta, Hecke L-functions, Chebotarev, class number formula).
- S. Lang, *Elliptic Functions*, chapter 20 (the Kronecker limit formula).
