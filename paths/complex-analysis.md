The zeta function and the Eisenstein series rest on a small part of complex analysis: holomorphic and meromorphic functions, zeros and poles, analytic continuation, the Gamma function and the theta function. The last step [RhOfRight](/step/rh-of-right/) of [the overview](/proof/) moves a zero of $\zeta$ across the functional equation, and it needs that $\Gamma$ has no zeros and where the cosine vanishes. The theta branch continues Eisenstein series in a complex variable $s$ and evaluates them at a point.

## Complex numbers

**Definition.** The field of *[[complex numbers|0CBAB9QQ9X]]* is $\mathbb{C} = \{a + bi : a, b \in \mathbb{R}\}$ with $i^2 = -1$. For $s = \sigma + it$ with $\sigma, t \in \mathbb{R}$, the *real part* is $\operatorname{Re}(s) = \sigma$ and the *imaginary part* is $\operatorname{Im}(s) = t$. The *[[complex conjugate|0FTH2E9TAS]]* is $\overline{s} = \sigma - it$, and $|s|^2 = s \overline{s}$.

Conjugation is a field automorphism of $\mathbb{C}$ of order $2$ with fixed field $\mathbb{R}$. It gives $\operatorname{Re}(s) = (s + \overline{s})/2$, and for $x > 0$, $|x^{s}| = x^{\operatorname{Re}(s)}$.

The statement [RiemannHypothesis](/step/riemann-hypothesis/) is about the real parts of the zeros of $\zeta$, and the Rallis integrand of Step 4 of [block determinants](/proof/determinants/) has the factor $\overline{\langle \varphi(\cdot\, g), \varphi \rangle}$.

## Holomorphic functions

**Definition.** Let $U \subseteq \mathbb{C}$ be open. A function $f : U \to \mathbb{C}$ is *[[holomorphic|0DG0Z72CQD]]* if the limit $f'(z_0) = \lim_{z \to z_0} (f(z) - f(z_0))/(z - z_0)$ exists for each $z_0 \in U$. A function holomorphic on all of $\mathbb{C}$ is *[[entire|0G4F0XB9X2]]*.

**Theorem.** A holomorphic function $f$ on $U$ is *analytic*: for each disc $D(z_0, r) \subseteq U$, $f(z) = \sum_{n \ge 0} a_n (z - z_0)^n$ on $D(z_0, r)$. In particular $f'$ is again holomorphic.

**Example.** Polynomials, $e^z$, $\cos z$ and $x^{s} = e^{s \log x}$ for fixed $x > 0$ are entire.

**Proposition (holomorphic family).** Let $(X, \mu)$ be a measure space, $U \subseteq \mathbb{C}$ open, and $F : X \times U \to \mathbb{C}$ measurable with $F(x, \cdot)$ holomorphic for each $x$. Suppose that each compact $K \subseteq U$ has an integrable $g_K$ with $|F(x, s)| \le g_K(x)$ for $s \in K$. Then $s \mapsto \int_X F(x, s) \, d\mu(x)$ is holomorphic on $U$.

The proof applies Morera's theorem and Fubini. A *holomorphic family* is such an $F$, for example $F(g, s) = a(g)^{s} \phi(g)$ with $a > 0$. The same holds for sums: a series of holomorphic functions that converges uniformly on compact sets has a holomorphic sum.

In Step 4 of [block determinants](/proof/determinants/) the integral $\int a(g,1)^{z - s_0} \langle \omega(g)\Phi, \Phi\rangle \overline{\langle \varphi(\cdot\, g), \varphi\rangle} \, dg$ is a holomorphic function of $z$, and the section $f_s = a^{s - s_0} f$ of Step 1 of [the Siegel-Weil chapter](/proof/siegel-weil/) is a holomorphic family.

## Zeros and poles

**Definition.** Let $f$ be holomorphic near $z_0$ and not identically $0$ there. The *[[order of a zero|0QX19C7K1C]]* $z_0$ is the least $m \ge 0$ with $f^{(m)}(z_0) \ne 0$. Then $f(z) = (z - z_0)^m g(z)$ with $g$ holomorphic and $g(z_0) \ne 0$. The number $m$ is also the *multiplicity* of the zero, and the zero is *simple* if $m = 1$.

**Definition.** Let $f$ be holomorphic on a punctured disc $0 < |z - z_0| < r$. The point $z_0$ is a *[[pole|066E7PJCYE]]* of order $m \ge 1$ if $f(z) = (z - z_0)^{-m} g(z)$ with $g$ holomorphic near $z_0$ and $g(z_0) \ne 0$. The *[[residue|0PHN07KVQT]]* of $f$ at $z_0$ is the coefficient $a_{-1}$ of its Laurent series $\sum_{n \ge -m} a_n (z - z_0)^n$.

**Definition.** Let $U$ be open. A function $f$ is *[[meromorphic|0NSD1TPHR0]]* on $U$ if there is a set $P \subseteq U$ with no limit point in $U$ such that $f$ is holomorphic on $U \setminus P$ and has a pole at each point of $P$. On a connected $U$ the meromorphic functions form a field.

**Example.** $1/(s - 1)$ is meromorphic on $\mathbb{C}$ with a simple pole at $1$ of residue $1$. The [[Riemann zeta function|TXB2F07CC6]] $\zeta(s)$, the sum $\sum_{n \ge 1} n^{-s}$ for $\operatorname{Re}(s) > 1$, continues to a meromorphic function on $\mathbb{C}$ with one simple pole, at $s = 1$, of residue $1$.

The Riemann hypothesis in [the overview](/proof/) excludes the pole $s = 1$. The statement `EisValueAt` of Step 1 of [the Siegel-Weil chapter](/proof/siegel-weil/) asks for a meromorphic function equal to the Eisenstein series for large $\operatorname{Re}(s)$, and `HolLead` of Step 6 says that it has no pole at $s_0$.

## Analytic continuation and the identity theorem

**Theorem ([[identity theorem|0YBVKMYX0W]]).** Let $U \subseteq \mathbb{C}$ be open and connected, and let $f, g$ be holomorphic on $U$. If $f = g$ on a set with a limit point in $U$, for example a nonempty open subset, then $f = g$ on $U$.

**Definition.** Let $U \subseteq V$ be open, $U$ nonempty, $V$ connected, and $f$ holomorphic on $U$. An *[[analytic continuation|0M3YQJ81NB]]* of $f$ to $V$ is a holomorphic (or meromorphic) $F$ on $V$ with $F = f$ on $U$. By the identity theorem there is at most one.

So "the" continuation of $\zeta$ or of an L-function is well defined, and an identity between continued functions holds on all of $V$ once it holds for large $\operatorname{Re}(s)$.

The L-function $L(s, \chi)$ of [EveryCharacter](/step/every-character-def/) is the Dirichlet series continued to all of $\mathbb{C}$, and the lemma `zero_of_half_pk` of Step 4 of [block determinants](/proof/determinants/) extends an identity from large $\operatorname{Re}(z)$ to $z = s_0$ by analytic continuation on a connected open set.

## The logarithmic derivative

**Definition.** The *logarithmic derivative* of a meromorphic $f \not\equiv 0$ is $f'/f$.

**Proposition.** If $f$ has a zero of order $m$ at $z_0$, then $f'/f$ has a simple pole at $z_0$ with residue $m$. If $f$ has a pole of order $m$, the residue is $-m$. Away from zeros and poles, $f'/f$ is holomorphic, and $(fg)'/(fg) = f'/f + g'/g$.

**Example.** For $\operatorname{Re}(s) > 1$, the Euler product gives $-\zeta'(s)/\zeta(s) = \sum_{n \ge 1} \Lambda(n) n^{-s}$, with the von Mangoldt function $\Lambda$ of Chapter 6.

The bound `LogDerOne` of [the literature](/proof/literature/) compares $L'(1, \chi)/L(1, \chi)$ with a sum $Z(\chi)$ of $1/(1 - \rho)$ over the zeros $\rho$, counted with multiplicity, and [the theta matching](/proof/theta-matching/) uses a constant `logDerivativeAtOne` of the same kind.

## The zeros of the cosine

**Definition.** For $z \in \mathbb{C}$, $\cos z = (e^{iz} + e^{-iz})/2$ and $\sin z = (e^{iz} - e^{-iz})/(2i)$. Both are entire, and $\cos^2 z + \sin^2 z = 1$.

**Proposition ([[zeros of the cosine|00NZKRSWNX]]).** $\cos z = 0$ if and only if $z = (2k + 1)\pi/2$ for some $k \in \mathbb{Z}$. Each of these zeros is simple. The zeros of $\sin z$ are the $k\pi$, $k \in \mathbb{Z}$.

The idea: $\cos z = 0$ means $e^{2iz} = -1$, and $e^w = -1$ exactly for $w \in \pi i + 2\pi i \mathbb{Z}$. So there are no zeros off the real line.

In [RhOfRight](/step/rh-of-right/), $\cos(\pi u/2) = 0$ forces $u = 2k + 1$, so $s = 1 - u = -2k$ is $0$, a trivial zero, or has $\operatorname{Re}(s) \ge 2$.

## The Gamma function

**Definition.** For $\operatorname{Re}(s) > 0$, the *[[Gamma function|0V3FZMVB4K]]* is
$$\Gamma(s) = \int_0^\infty t^{s - 1} e^{-t} \, dt.$$
It is holomorphic there, $\Gamma(1) = 1$, and $\Gamma(s + 1) = s \Gamma(s)$. So $\Gamma(n + 1) = n!$.

**Theorem.** $\Gamma$ continues to a meromorphic function on $\mathbb{C}$. Its poles are simple poles at $s = 0, -1, -2, \dots$, and the residue at $-n$ is $(-1)^n / n!$.

**Theorem ([[Euler reflection formula|WF7KQAQTS2]]).** For $s \in \mathbb{C} \setminus \mathbb{Z}$, $\Gamma(s) \Gamma(1 - s) = \pi / \sin(\pi s)$.

**Theorem ([[Gamma has no zeros|WBS4NM1TFC]]).** The Gamma function has no zeros: $\Gamma(s) \ne 0$ for each $s \in \mathbb{C} \setminus \{0, -1, -2, \dots\}$. So $1/\Gamma$ is entire.

This follows from the reflection formula: a zero of $\Gamma(s)$ would be a pole of $\pi/\sin(\pi s)$ that $\Gamma(1 - s)$ cannot cancel. For $\operatorname{Re}(s) > 0$ it is also Mathlib's `Complex.Gamma_ne_zero_of_re_pos`.

**Theorem ([[Legendre duplication formula|CND4E1PY9V]]).** $\Gamma(s) \Gamma(s + \tfrac12) = 2^{1 - 2s} \sqrt{\pi} \, \Gamma(2s)$. In particular $\Gamma(\tfrac12) = \sqrt{\pi}$.

The [[functional equation|NFXKNDJX9C]] of Mathlib used in [RhOfRight](/step/rh-of-right/) is
$$\zeta(1 - u) = 2 (2\pi)^{-u} \Gamma(u) \cos\Big(\frac{\pi u}{2}\Big) \zeta(u), \qquad u \notin \{1, 0, -1, -2, \dots\}.$$
That step uses $\Gamma(u) \ne 0$ for $\operatorname{Re}(u) > \tfrac12$. With the reflection and duplication formulas this equation is equivalent to $\Lambda(s) = \Lambda(1 - s)$ for $\Lambda(s) = \pi^{-s/2} \Gamma(s/2) \zeta(s)$.

## Poisson summation, theta and Mellin

**Theorem ([[Poisson summation formula|GARGJYSGFG]]).** Let $f$ be a Schwartz function on $\mathbb{R}^n$ with Fourier transform $\hat f$ (see [the Fourier transform](/learn/analysis/#the-fourier-transform)). Then
$$\sum_{m \in \mathbb{Z}^n} f(m) = \sum_{k \in \mathbb{Z}^n} \hat f(k),$$
and both series converge absolutely. The same holds for a lattice $L$ and its dual lattice $L^*$ with a factor $1/\operatorname{vol}(\mathbb{R}^n/L)$.

**Definition.** For $t > 0$ the *[[theta function|2F5CYQJVAF]]* is $\theta(t) = \sum_{n \in \mathbb{Z}} e^{-\pi n^2 t}$. Poisson summation applied to the Gaussian $e^{-\pi t x^2}$ gives
$$\theta(1/t) = \sqrt{t} \, \theta(t).$$

**Definition.** Let $f : (0, \infty) \to \mathbb{C}$ and $s \in \mathbb{C}$ with $x^{s - 1} f(x)$ integrable. The *[[Mellin transform|KPZ1S446MN]]* of $f$ at $s$ is $\mathcal{M}f(s) = \int_0^\infty f(x) x^{s} \, dx/x$.

**Example.** $\Gamma$ is the Mellin transform of $e^{-x}$.

**Theorem (Riemann, 1859).** For $\operatorname{Re}(s) > 1$,
$$\Lambda(s) = \pi^{-s/2} \Gamma(s/2) \zeta(s) = \int_0^\infty \frac{\theta(t) - 1}{2} \, t^{s/2} \, \frac{dt}{t}.$$
With $\theta(1/t) = \sqrt t \, \theta(t)$, this integral continues $\Lambda$ to $\mathbb{C}$ with simple poles at $s = 0, 1$ only, and $\Lambda(s) = \Lambda(1 - s)$.

The theta function $\theta(g, h; \Phi) = \sum_\xi (\omega(g, h)\Phi)(\xi)$ of Step 1 of [the theta matching](/proof/theta-matching/) is a sum of a Schwartz function over rational points, as $\theta(t)$ is. The proof `siegelWeilStd_pre` in Step 2 of [the Siegel-Weil chapter](/proof/siegel-weil/) gets the properties `TAll` of the Schrödinger model, among them $\sum_X T\Phi(X) = \theta(\Phi)$ and the action of the Weyl element by a Fourier transform, from a Poisson summation theorem.

## Further reading

- L. Ahlfors, *Complex Analysis*, Chapters 4 and 5 (Cauchy's theorem, zeros and poles, residues, the Gamma function).
- E. Stein and R. Shakarchi, *Complex Analysis*, Chapter 6 (the Gamma and zeta functions).
- E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, Chapter II (the functional equation).
- E. T. Whittaker and G. N. Watson, *A Course of Modern Analysis*, Chapter XII (the Gamma function).
