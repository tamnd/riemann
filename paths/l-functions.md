The Riemann zeta function and the Dirichlet L-functions are Dirichlet series with Euler products over the primes. The final theorem, [riemannHypothesis](/step/riemann-hypothesis/), is about the zeros of $\zeta$, and the [overview](/proof/) reaches it from [EveryCharacter](/step/every-character-def/), about the zeros of all Dirichlet L-functions. With the zeta functions of number fields they are also inputs, to the explicit formula of `ZeroFreeAll` and the class number formula of the CM side. [Chapter 3](/learn/complex-analysis/) defines analytic continuation and $\Gamma$, and [Chapter 5](/learn/class-field-theory/) defines Hecke L-functions.

## The Riemann zeta function

**Definition.** For $\operatorname{Re}(s) > 1$, the *[[Riemann zeta function|TXB2F07CC6]]* is the absolutely convergent series $\zeta(s) = \sum_{n \geq 1} n^{-s}$.

**Theorem ([[Euler product|0C3PN4075R]]; Euler, 1737).** For $\operatorname{Re}(s) > 1$, $\zeta(s) = \prod_p (1 - p^{-s})^{-1}$ over the primes, and the product converges absolutely. So $\zeta(s) \neq 0$ for $\operatorname{Re}(s) > 1$.

**Theorem (Riemann, 1859).** The function $\zeta$ extends to a meromorphic function on $\mathbb{C}$ whose only pole is a simple pole at $s = 1$ with residue $1$:
$$\zeta(s) = \frac{1}{s - 1} + \gamma + O(s - 1),$$
where $\gamma = \lim_{N \to \infty} \bigl(\sum_{n \leq N} 1/n - \log N\bigr) = 0.5772\ldots$ is the [[Euler-Mascheroni constant|00C5P9JZBK]]. Also $\zeta(0) = -1/2$, and $\zeta(-2n) = 0$ for each integer $n \geq 1$.

**Remark (the value at the pole in Mathlib).** Mathlib defines `riemannZeta` on all of $\mathbb{C}$, and `riemannZeta_one` says that its value at $s = 1$ is $(\gamma - \log 4\pi)/2 \neq 0$. A statement about the zeros of `riemannZeta` must exclude $s = 1$ by hand or use that this value is not zero.

**Theorem (Hadamard, de la Vallée Poussin, 1896).** $\zeta(s) \neq 0$ for $\operatorname{Re}(s) = 1$, hence for $\operatorname{Re}(s) \geq 1$. This gives the [[prime number theorem|0EHBY5Y84N]] $\#\{p \leq x\} \sim x / \log x$.

## The functional equation and the trivial zeros

**Definition (completed zeta function).** Put $\Gamma_\mathbb{R}(s) = \pi^{-s/2}\Gamma(s/2)$ and $\xi(s) = \Gamma_\mathbb{R}(s)\zeta(s)$.

**Theorem ([[functional equation of the zeta function|NFXKNDJX9C]]; Riemann, 1859).** The function $\xi$ is meromorphic on $\mathbb{C}$ with simple poles at $s = 0$ and $s = 1$ only, and $\xi(s) = \xi(1 - s)$. An equivalent form, `riemannZeta_one_sub` in Mathlib, is
$$\zeta(1 - u) = 2(2\pi)^{-u}\,\Gamma(u)\cos(\pi u/2)\,\zeta(u) \qquad \text{for } u \notin \{0, -1, -2, \dots\},\ u \neq 1.$$

**Definition (trivial zeros, critical strip).** Since $\Gamma(s/2)$ has poles at $s = 0, -2, -4, \dots$ and $\xi$ has no zeros with $\operatorname{Re}(s) < 0$, $\zeta$ vanishes at $s = -2, -4, -6, \dots$: these are the *trivial zeros*. The set $0 < \operatorname{Re}(s) < 1$ is the *critical strip*, and the zeros of $\zeta$ in it are the *nontrivial zeros*.

**Proposition.** The zeros of $\zeta$ are the trivial zeros and the nontrivial zeros. The nontrivial zeros are the zeros of $\xi$; they are infinite in number and symmetric under $s \mapsto 1 - s$ and $s \mapsto \bar s$.

It follows from $\zeta \neq 0$ for $\operatorname{Re}(s) \geq 1$ and the functional equation, which leaves only the trivial zeros $-2(n + 1)$, $n \in \mathbb{N}$, in $\operatorname{Re}(s) \leq 0$ (and $\zeta(0) = -1/2 \neq 0$). The step [rh-of-right](/step/rh-of-right/) uses `riemannZeta_one_sub` and $\zeta(0) = -1/2$ to move a zero $s$ with $\operatorname{Re}(s) < 1/2$ to the zero $1 - s$ with $\operatorname{Re}(1 - s) > 1/2$.

## The Riemann Hypothesis

**Definition (strip form).** The *[[Riemann Hypothesis|VCGF9YR36X]]* (Riemann, 1859) is the statement: each zero $s$ of $\zeta$ with $0 < \operatorname{Re}(s) < 1$ has $\operatorname{Re}(s) = 1/2$.

**Definition (Mathlib form).** Mathlib states the hypothesis as
```lean
def RiemannHypothesis : Prop :=
  ∀ (s : ℂ) (_ : riemannZeta s = 0) (_ : ¬∃ n : ℕ, s = -2 * (n + 1)) (_ : s ≠ 1),
    s.re = 1 / 2
```
It says that each zero $s$ of $\zeta$ other than the trivial zeros $-2(n+1)$ and the point $1$ has $\operatorname{Re}(s) = 1/2$. Since `riemannZeta 1` is not zero, the hypothesis $s \neq 1$ does no work.

**Proposition.** `RiemannHypothesis` is equivalent to the strip form: by the previous section, a zero that is neither trivial nor $1$ lies in the critical strip, and each zero in the strip is neither.

The theorem [riemannHypothesis](/step/riemann-hypothesis/) proves `RiemannHypothesis`. It is the theorem [rhOfAll](/step/rh-of-all/), restated as `riemannZeta_eq_zero_re` in `Main.lean`.

## Dirichlet characters

Fix an integer $N \geq 1$.

**Definition.** A *[[Dirichlet character|JR4QSEFXWF]] modulo $N$* is a group homomorphism $\chi : (\mathbb{Z}/N\mathbb{Z})^\times \to \mathbb{C}^\times$, extended to $\mathbb{Z}$ by $\chi(n) = \chi(n \bmod N)$ when $\gcd(n, N) = 1$ and $\chi(n) = 0$ otherwise. The number $N$ is the *modulus*. The *trivial character* modulo $N$ is $1$ at each $n$ prime to $N$. The *order* of $\chi$ is its order in the group of the $\varphi(N)$ characters modulo $N$. Since $\chi(-1)^2 = 1$, the *parity* $\chi(-1)$ is $\pm 1$: $\chi$ is *even* if $\chi(-1) = 1$ and *odd* if $\chi(-1) = -1$.

**Example.** Modulo $4$ there are two characters. The nontrivial one, $\chi_{-4}$, has $\chi_{-4}(1) = 1$ and $\chi_{-4}(3) = -1$; it is odd, of order $2$.

**Definition (conductor).** Let $M \mid N$. The character $\chi$ modulo $N$ is *induced* from $\chi'$ modulo $M$ if $\chi(n) = \chi'(n)$ for each $n$ prime to $N$. The *conductor* of $\chi$ is the least such $M$, and $\chi$ is *primitive* if its conductor is $N$.

Each $\chi$ is induced from exactly one primitive $\chi^*$, of modulus the conductor of $\chi$; the trivial character modulo $1$ induces each trivial character. In Mathlib, `χ.IsPrimitive` means `conductor χ = N`. By [Chapter 5](/learn/class-field-theory/), primitive characters of conductor $N$ are the finite order Hecke characters of $\mathbb{Q}$ of conductor $N$, and characters modulo $N$ are characters of $\mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q})$.

[EveryCharacter](/step/every-character-def/) is about each character of each modulus, primitive or not, while [VWin](/step/vwin-def/) and the branch `ZeroFreeAll` (step 7 of the [theta matching chapter](/proof/theta-matching/)) are about primitive characters `PChar`.

## Dirichlet L-functions

**Definition.** Let $\chi$ be a Dirichlet character modulo $N$. For $\operatorname{Re}(s) > 1$, the *[[Dirichlet L-function|24GAZHVTGB]]* is
$$L(s, \chi) = \sum_{n \geq 1} \chi(n) n^{-s} = \prod_p (1 - \chi(p) p^{-s})^{-1}.$$

**Theorem.** $L(s, \chi)$ extends to a meromorphic function on $\mathbb{C}$. It is entire if $\chi$ is nontrivial; if $\chi$ is trivial, its only pole is a simple pole at $s = 1$. For $N = 1$, $L(s, \chi) = \zeta(s)$ (Davenport, ch. 9).

Mathlib defines `DirichletCharacter.LFunction χ s` on all of $\mathbb{C}$ as $N^{-s}\sum_{j=0}^{N-1} \chi(j)\,\zeta(s, j/N)$, with the Hurwitz zeta function $\zeta(s, a)$. It equals the series for $\operatorname{Re}(s) > 1$ and is entire for $\chi \neq 1$, and `LFunction_modOne_eq` says it is `riemannZeta` for $N = 1$.

**Proposition (imprimitive characters).** Let $\chi$ modulo $N$ be induced from the primitive $\chi^*$. Then
$$L(s, \chi) = L(s, \chi^*) \prod_{p \mid N} \bigl(1 - \chi^*(p) p^{-s}\bigr).$$
For $p \mid N$ with $p \nmid \operatorname{cond}(\chi)$, the factor vanishes where $p^s = \chi^*(p)$; since $|\chi^*(p)| = 1$, these are infinitely many points on $\operatorname{Re}(s) = 0$. For $\operatorname{Re}(s) > 0$, $|\chi^*(p)p^{-s}| < 1$, so the factor has no zeros there.

**Example.** For the trivial character $\chi$ modulo $2$, $L(s, \chi) = (1 - 2^{-s})\zeta(s)$, which vanishes at $s = 2\pi i k/\log 2$ for each $k \in \mathbb{Z}$.

### Gauss sums and the functional equation

**Definition.** The *[[Gauss sum|EQ6A3ZN48K]]* of $\chi$ modulo $N$ is $\tau(\chi) = \sum_{a = 1}^{N} \chi(a)e^{2\pi i a/N}$. If $\chi$ is primitive, $|\tau(\chi)| = \sqrt N$.

**Theorem (functional equation).** Let $\chi$ be primitive modulo $N$ with $\chi(-1) = (-1)^\kappa$, $\kappa \in \{0, 1\}$, and put $\Lambda(s, \chi) = (N/\pi)^{(s + \kappa)/2}\,\Gamma\bigl((s + \kappa)/2\bigr)\,L(s, \chi)$. Then
$$\Lambda(s, \chi) = \frac{\tau(\chi)}{i^\kappa\sqrt N}\,\Lambda(1 - s, \bar\chi),$$
and the constant has absolute value $1$ (Davenport, ch. 9). In Mathlib this is `IsPrimitive.completedLFunction_one_sub`.

Since $\overline{L(\bar s, \chi)} = L(s, \bar\chi)$, the zeros of $L(s, \chi)$ in the strip $0 < \operatorname{Re}(s) < 1$ are symmetric under $s \mapsto 1 - \bar s$. For primitive $\chi \neq 1$, $L(s, \chi) \neq 0$ for $\operatorname{Re}(s) \geq 1$, and the zeros outside the strip are the trivial zeros $s = -\kappa, -\kappa - 2, -\kappa - 4, \dots$.

The step [imprimitive](/step/imprimitive/) proves the relation with `LFunction_changeLevel` and passes from primitive to all characters through the bound $|\chi^*(p)p^{-s}| < 1$. The epsilon factors of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) contain local Gauss sums, the analogue of $\tau(\chi)$ at a place.

## Zeros and the Generalized Riemann Hypothesis

**Definition (order of a zero).** Let $f$ be holomorphic near $\rho$ and not identically $0$. The *[[order of a zero|0QX19C7K1C]]*, or *multiplicity* $m_\rho$, of $f$ at $\rho$ is the least $m \geq 0$ with $f^{(m)}(\rho) \neq 0$. In sums over the zeros of an L-function, each zero counts $m_\rho$ times.

**Definition.** The *[[Generalized Riemann Hypothesis|DNKA4WBKDS]]* for Dirichlet L-functions is the statement: for each Dirichlet character $\chi$, each zero $s$ of $L(s, \chi)$ with $0 < \operatorname{Re}(s) < 1$ has $\operatorname{Re}(s) = 1/2$.

The proof states GRH in three forms with the Mathlib `LFunction`, for every $N \geq 1$ (`[NeZero N]`) and every $\chi$ : `DirichletCharacter ℂ N`:

- `DirichletLNonvanishingRightOfHalf`, the statement EveryCharacter: if $1/2 < \operatorname{Re}(s)$ and ($\chi \neq 1$ or $s \neq 1$), then $L(s, \chi) \neq 0$. The condition removes only the pole of the trivial character.
- `DirichletLZerosOnLine`: if $0 < \operatorname{Re}(s) < 1$ and $L(s, \chi) = 0$, then $\operatorname{Re}(s) = 1/2$. The strict bound $0 < \operatorname{Re}(s)$ is needed because imprimitive characters have zeros on $\operatorname{Re}(s) = 0$.
- `PrimitiveDirichletLZerosOnLine`: the same, for primitive $\chi$.

By the symmetry $s \mapsto 1 - \bar s$, no zeros with $\operatorname{Re}(s) > 1/2$ means no zeros off the line in the strip. `Main.lean` derives the three forms as `LFunction_ne_zero_of_half_lt_re`, `LFunction_eq_zero_re` and `LFunction_eq_zero_re_of_isPrimitive`.

The step [all-chi](/step/all-chi/) proves EveryCharacter, and [rh-of-every](/step/rh-of-every/) applies it at $N = 1$, where $L = \zeta$. The field `logDerOne` of [ThetaLocalInputs](/step/theta-local-inputs-def/) counts zeros with their orders: $\bigl|L'/L(1, \chi) - \sum_\rho m_\rho/(1 - \rho)\bigr| \leq C\log(3q)$ for primitive $\chi$ modulo $q > 1$, the sum over the zeros with $0 < \operatorname{Re}(\rho) < 1$ and $|\operatorname{Im}(\rho)| \leq 1$.

## Primes and the explicit formula

**Definition.** The *[[von Mangoldt function|0NK8JTE1NN]]* is $\Lambda(n) = \log p$ if $n = p^k$ with $p$ prime and $k \geq 1$, and $\Lambda(n) = 0$ otherwise. For $\operatorname{Re}(s) > 1$,
$$-\frac{\zeta'}{\zeta}(s) = \sum_{n \geq 1} \Lambda(n) n^{-s}, \qquad -\frac{L'}{L}(s, \chi) = \sum_{n \geq 1} \Lambda(n)\chi(n) n^{-s}.$$

**Theorem ([[explicit formula|72WNRWJQC1]]; von Mangoldt, 1895).** Let $\psi(x) = \sum_{n \leq x}\Lambda(n)$. For $x > 1$ not a prime power,
$$\psi(x) = x - \sum_\rho \frac{x^\rho}{\rho} - \log 2\pi - \tfrac12\log(1 - x^{-2}),$$
where $\rho$ runs over the nontrivial zeros with multiplicity and the sum is $\lim_{T \to \infty}\sum_{|\operatorname{Im}\rho| < T}$. In the form of Guinand (1948) and Weil (1952): let $g$ be even, smooth and compactly supported on $\mathbb{R}$, let $h(r) = \int g(u)e^{iru}\,du$, and write $\rho = 1/2 + i t_\rho$. Then
$$\sum_\rho h(t_\rho) = h\bigl(\tfrac{i}{2}\bigr) + h\bigl(-\tfrac{i}{2}\bigr) - g(0)\log\pi + \frac{1}{2\pi}\int_{\mathbb{R}} h(r)\,\frac{\Gamma'}{\Gamma}\bigl(\tfrac14 + \tfrac{ir}{2}\bigr)dr - 2\sum_{n \geq 1}\frac{\Lambda(n)}{\sqrt n}\,g(\log n).$$

So sums over primes control sums over zeros: a zero with $\operatorname{Re}(\rho) > \theta$ makes a prime sum grow like $x^{\operatorname{Re}\rho}$, and a bound $O(x^\theta)$ on a suitable prime sum excludes zeros with $\operatorname{Re}(s) > \theta$.

The branch `ZeroFreeAll` (step 7 of the [theta matching chapter](/proof/theta-matching/)) uses $G_z(y) = \sum_{n \leq y}\Lambda(n)(y/n - 1) - y\log y + (1 + \gamma)y$, with Euler's constant $\gamma$, and its character twists. Its lemma `FormB` turns a bound $G_m(x) \leq x^\theta$ on long windows into $L(s, \psi') \neq 0$ for $\operatorname{Re}(s) > \theta$, and [ZeroFreeAll from Green, VWin and HypsAlt](/step/zero-free-all-of-green-v-win/) assembles it.

### Primes in progressions and in short intervals

**Theorem ([[Dirichlet's theorem|0GNVN3CA2P]], 1837).** Let $q \geq 1$ and $\gcd(a, q) = 1$. There are infinitely many primes $p \equiv a \pmod q$, and $\sum_{p \equiv a,\ p \leq x} 1/p \sim \frac{1}{\varphi(q)}\log\log x$. The proof uses $L(1, \chi) \neq 0$ for each nontrivial $\chi$ modulo $q$.

**Theorem (Linnik, 1944).** There are absolute constants $c, L > 0$ such that for each $q \geq 2$ and each $a$ prime to $q$, the least prime $p \equiv a \pmod q$ is at most $c\,q^L$. One can take $L = 5$ (Xylouris, 2011).

**Theorem (primes in short intervals).** For each $\theta > 7/12$, $\#\{p : x < p \leq x + x^\theta\} \sim x^\theta/\log x$ as $x \to \infty$ (Huxley, 1972). For large $x$, $[x - x^{0.525}, x]$ contains a prime (Baker, Harman and Pintz, 2001). Under RH, for some absolute $C$, each interval $[x, x + C\sqrt x\log x]$ with $x \geq 2$ contains a prime (Cramér, 1920). See [[prime gaps|XS05T5JA7G]].

### The Chebotarev density theorem

Let $L/K$ be a finite Galois extension of number fields with group $G$. [Chapter 4](/learn/number-fields/) defines the Frobenius class $\mathrm{Frob}_{\mathfrak p}$ of a prime $\mathfrak p$ of $K$ unramified in $L$.

**Theorem ([[Chebotarev|X8VKW5Y1CZ]], 1926).** For a conjugacy class $C \subseteq G$, the primes $\mathfrak p$ of $K$ unramified in $L$ with $\mathrm{Frob}_{\mathfrak p} = C$ have natural density $|C|/|G|$:
$$\lim_{x \to \infty}\frac{\#\{\mathfrak p : N(\mathfrak p) \leq x,\ \mathrm{Frob}_{\mathfrak p} = C\}}{\#\{\mathfrak p : N(\mathfrak p) \leq x\}} = \frac{|C|}{|G|}.$$
The same holds for the primes of degree one (those with $N(\mathfrak p)$ prime), since the others have density $0$.

**Example.** For $K = \mathbb{Q}$ and $L = \mathbb{Q}(\zeta_q)$, $\mathrm{Frob}_p = \sigma_p$, and the theorem gives Dirichlet's density $1/\varphi(q)$.

[ThetaLocalInputs](/step/theta-local-inputs-def/) states Linnik's theorem as `linnik`, the input `hLit : LitThin` of [HypsAlt](/step/hyps-alt-def/) asks for three statements `ShortIntervalPrimes`, and `chebotarevDegreeOne` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) is Chebotarev for primes of degree one.

## Zeta functions of number fields

Let $K$ be a number field with $r_1$ real and $r_2$ complex places, discriminant $d_K$, class number $h_K$, regulator $R_K$, and $w_K$ roots of unity (Chapter 4).

**Definition.** The *[[Dedekind zeta function|KXS5DQDFYD]]* of $K$ is $\zeta_K(s) = \sum_{\mathfrak a} N(\mathfrak a)^{-s} = \prod_{\mathfrak p}(1 - N(\mathfrak p)^{-s})^{-1}$ for $\operatorname{Re}(s) > 1$, the sum over the nonzero ideals of $\mathcal{O}_K$. It is the Hecke L-function of the trivial character.

**Definition (partial zeta function).** Let $\mathfrak f$ be a modulus and $\mathfrak c$ a class in the ray class group modulo $\mathfrak f$. The *partial zeta function* is $\zeta(s, \mathfrak c) = \sum_{\mathfrak a \in \mathfrak c} N(\mathfrak a)^{-s}$, over the integral ideals in $\mathfrak c$. For a character $\chi$ of the ray class group, $L(s, \chi) = \sum_{\mathfrak c}\chi(\mathfrak c)\zeta(s, \mathfrak c)$, and by orthogonality $\zeta(s, \mathfrak c)$ is an average of these $L(s, \chi)$. So it is meromorphic on $\mathbb{C}$, with a simple pole at $s = 1$, and has a functional equation.

**Theorem ([[class number formula|55XX5A7XZV]]; Dirichlet, 1839; Dedekind, 1877).** $\zeta_K$ has a simple pole at $s = 1$ with residue
$$\operatorname{Res}_{s = 1}\zeta_K(s) = \frac{2^{r_1}(2\pi)^{r_2}h_K R_K}{w_K\sqrt{|d_K|}}.$$
For an imaginary quadratic field of discriminant $-d$, $\zeta_K(s) = \zeta(s)L(s, \chi_{-d})$ with the quadratic character $\chi_{-d}$, and for $d > 4$ this gives $L(1, \chi_{-d}) = \pi h_K/\sqrt d$.

**Theorem ([[Kronecker limit formula|PD750J2XV9]]; Kronecker, 1863).** For $\tau = x + iy$ in the upper half plane and $\operatorname{Re}(s) > 1$, let $E(\tau, s) = \sum_{(m, n) \neq (0, 0)} y^s/|m\tau + n|^{2s}$. Then, with Dedekind's eta function $\eta$,
$$E(\tau, s) = \frac{\pi}{s - 1} + 2\pi\bigl(\gamma - \log 2 - \log(\sqrt y\,|\eta(\tau)|^2)\bigr) + O(s - 1).$$
Summed over the ideal classes of an imaginary quadratic field, it computes $L'/L(1, \chi_{-d})$, which leads to the Chowla-Selberg formula.

**Theorem (Siegel-Klingen; Klingen, 1962; Siegel, 1970).** Let $F$ be totally real and $\mathfrak c$ a ray class modulo $\mathfrak f$. For each integer $k \geq 1$, $\zeta(1 - k, \mathfrak c)$ is rational.

**Theorem (Deligne-Ribet, 1980).** These rational values satisfy $\ell$-adic congruences, which give the $\ell$-adic L-functions of $F$. In one form: for an integral ideal $\mathfrak c$ prime to $\ell\mathfrak f$, each ray class $\mathfrak b$ modulo $\mathfrak f$ and each $k \geq 1$,
$$\zeta(1 - k, \mathfrak b\mathfrak c) - N(\mathfrak c)^k\,\zeta(1 - k, \mathfrak b) \in \mathbb{Z}_\ell.$$

The [CM divisibility chapter](/proof/cm-divisibility/) states the Chowla-Selberg mean $12\log 2\pi - 6\log d + 6\gamma - 6L'(1, \chi)/L(1, \chi)$, proved with the Kronecker limit formula (`tendsto_realEisenstein_sub_pole`) and the class number formula (`LFunction_one_eq_classNumber`). The record [of CM inputs](/step/cm-abelian-inputs-from-literature/) holds `SiegelKlingenDeligneRibet` and `PartialZetaFunctionalEquation`; only the second does work. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) uses a class number formula at each datum (`StandardLattice.ClassNumberFormula₂`), and the error term of the [Weil bound chapter](/proof/weil-bound/) contains $L'/L(1, \chi_d)$.

## Further reading

- H. Davenport, *Multiplicative Number Theory*, 3rd ed., chapters 1, 4 to 9, 12 and 17.
- E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, 2nd ed., chapters 2 and 3.
- H. Iwaniec and E. Kowalski, *Analytic Number Theory*, chapters 5 (5.5, the explicit formula) and 18 (Linnik).
- J. Neukirch, *Algebraic Number Theory*, chapter VII (Dedekind zeta, Hecke L-functions, Chebotarev, class number formula).
- S. Lang, *Elliptic Functions*, chapter 20 (the Kronecker limit formula).
