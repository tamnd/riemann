The Weil representation is a representation of a double cover of a symplectic group on a space of Schwartz functions. Restricted to a pair of groups that centralize each other, it gives the theta correspondence between representations of the two groups, and its theta kernels carry automorphic forms from one group to the other. The proof makes the unitary representations of [the theta matching chapter](/proof/theta-matching/) by theta lifts, and it computes them with the Siegel-Weil formula and the Rallis inner product formula.

## Reductive dual pairs

Let $F$ be a field of characteristic $0$ and let $W$ be a symplectic space over $F$ ([the chapter on classical groups](/learn/groups/) defines symplectic spaces and $\mathrm{Sp}(W)$).

**Definition (Howe).** A *reductive dual pair* in $\mathrm{Sp}(W)$ is a pair $(G, G')$ of reductive subgroups such that $G$ is the centralizer of $G'$ in $\mathrm{Sp}(W)$ and $G'$ is the centralizer of $G$. The pair is *irreducible* if $W$ is not an orthogonal sum of two nonzero subspaces stable under $G \cdot G'$.

Let $E$ be $F$ or a quadratic extension of $F$, with conjugation $c$ (trivial when $E = F$), and let $\epsilon = \pm 1$. Let $V$ be an $\epsilon$-Hermitian space over $E$ and $V'$ a $(-\epsilon)$-Hermitian space over $E$, with forms $(\, , \,)$ and $(\, , \,)'$. The space $W = V \otimes_E V'$ with the form
$$ \langle v \otimes v', u \otimes u' \rangle = \operatorname{Tr}_{E/F}\big((v, u)\, \overline{(v', u')'}\big) $$
is symplectic over $F$, and the isometry groups of $V$ and $V'$ form a dual pair in $\mathrm{Sp}(W)$. These are the pairs of *type I*.

**Example.** For $E = F$, $V$ quadratic of dimension $m$ and $V'$ symplectic of dimension $2n$, the pair is $(\mathrm{O}(V), \mathrm{Sp}_{2n})$. For $E/F$ quadratic, $V$ Hermitian and $V'$ skew-Hermitian, the pair is $(\mathrm{U}(V), \mathrm{U}(V'))$.

**Example (type II).** Let $X = \mathrm{M}_{n \times m}(F)$ and $W = X \oplus X^*$ with the pairing of $X$ and $X^*$. Then $(\mathrm{GL}_n, \mathrm{GL}_m)$, acting on $X$ on the two sides, is a dual pair in $\mathrm{Sp}(W)$.

The record `IsTriple` of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) fixes a Hermitian $V$ of signature $(a - p, p)$, a Hermitian $V'$ of signature $(q, a' - q)$ and a skew-Hermitian $W$ of dimension $a + a'$, so it uses the unitary dual pairs $(\mathrm{U}(V), \mathrm{U}(W))$ and $(\mathrm{U}(V'), \mathrm{U}(W))$.

## The Stone-von Neumann theorem

Let $F$ be a local field and $\psi$ a nontrivial character of $F$. Let $H(W)$ be the Heisenberg group of $W$, the set $W \times F$ with $(w, t)(w', t') = (w + w', t + t' + \frac12 \langle w, w' \rangle)$, as in [the chapter on classical groups](/learn/groups/). Its center is $F$.

**Theorem (Stone-von Neumann).** Up to isomorphism, there is exactly one irreducible smooth representation $\rho_\psi$ of $H(W)$ (unitary when $F$ is archimedean) on which the center acts by $\psi$.

The group $\mathrm{Sp}(W)$ acts on $H(W)$ by $g(w, t) = (gw, t)$, which fixes the center. So $\rho_\psi \circ g \cong \rho_\psi$, and there is an operator $\omega(g)$, unique up to a scalar, with $\omega(g)\, \rho_\psi(h)\, \omega(g)^{-1} = \rho_\psi(g h)$ for all $h \in H(W)$. The map $g \mapsto \omega(g)$ is a projective representation of $\mathrm{Sp}(W)$.

This theorem is the field `stoneVonNeumann` of [ThetaLocalInputs](/step/theta-local-inputs-def/).

## The Weil representation

Let $\mathrm{Mp}(W)$ be the metaplectic group, the double cover of $\mathrm{Sp}(W)$ that is nontrivial when $F \ne \mathbb{C}$ ([the chapter on classical groups](/learn/groups/) defines it).

**Theorem (Weil, 1964).** The projective representation $\omega$ lifts to a genuine representation $\omega_\psi$ of $\mathrm{Mp}(W)$, unique up to isomorphism. It does not come from a representation of $\mathrm{Sp}(W)$ when $F \ne \mathbb{C}$.

**Definition.** The representation $\omega_\psi$ is the *[[Weil representation|H3Q2703KKV]]* of $\mathrm{Mp}(W)$ for $\psi$. It is also called the oscillator representation. It is the sum of two irreducible representations.

The fields `weilRepresentationExists`, `metaplecticRepresentation` and `realMetaplecticRepresentation` of [ThetaLocalInputs](/step/theta-local-inputs-def/) give this representation over $p$-adic fields and over $\mathbb{R}$.

## The Schrödinger model

A Lagrangian decomposition $W = X \oplus Y$ realizes $\omega_\psi$ on the Schwartz space $S(Y)$. For a type I pair this gives explicit formulas.

Let $V$ be a quadratic space over $F$ of dimension $m$, and let $\mathrm{Sp}_{2n}$ be the isometry group of $F^{2n}$ with its standard symplectic form. Then $W = V^n \oplus V^n$ and $\omega_\psi$ acts on $S(V^n)$. For $x = (x_1, \dots, x_n) \in V^n$ let $(x, x) = ((x_i, x_j))_{i,j}$ be the Gram matrix. Let $\chi_V$ be the quadratic character of the discriminant of $V$. Let $m(a) = \mathrm{diag}(a, {}^t a^{-1})$ for $a \in \mathrm{GL}_n(F)$, $n(b) = \begin{pmatrix} 1 & b \\ 0 & 1 \end{pmatrix}$ for symmetric $b$, and $w = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$.

**Definition (Schrödinger model).** The *Schrödinger model* of the Weil representation of $\mathrm{O}(V) \times \mathrm{Sp}_{2n}$ is the action on $S(V^n)$ given by
$$ \omega(m(a))\varphi(x) = \chi_V(\det a)\, |\det a|^{m/2} \varphi(xa), \qquad \omega(n(b))\varphi(x) = \psi\big(\tfrac12 \operatorname{tr}(b\, (x, x))\big) \varphi(x), $$
$$ \omega(w)\varphi(x) = \gamma\, \hat\varphi(x), \qquad \omega(h)\varphi(x) = \varphi(h^{-1} x) \quad (h \in \mathrm{O}(V)), $$
where $\hat\varphi$ is the Fourier transform for the self-dual measure and $\gamma$ is an eighth root of unity (the Weil index). When $m$ is even these formulas define a representation of $\mathrm{Sp}_{2n}(F)$. When $m$ is odd they define one of $\mathrm{Mp}_{2n}(F)$.

For a Hermitian space $V$ of dimension $m$ over $E$ and the pair $(\mathrm{U}(V), \mathrm{U}(n, n))$, the same formulas hold on $S(V^n)$ with $a \in \mathrm{GL}_n(E)$, $b \in \mathrm{Herm}_n$, $|\det a|_E$ in place of $|\det a|$, and a splitting character $\chi$ in place of $\chi_V$ (see below).

**Definition.** Let $F$ be $p$-adic and let $L \subset V$ be a self-dual lattice. The characteristic function of $L^n$ is the *vacuum vector* of $S(V^n)$. Let $F = \mathbb{R}$ and $V$ positive definite. The Gaussian $\varphi^0(x) = e^{-\pi \operatorname{tr}(x, x)}$ is the vacuum vector. In both cases a maximal compact subgroup of $\mathrm{Mp}$ acts on the vacuum vector by a character.

The proof writes these formulas as `TPar` and `TWeyl` in [the Siegel-Weil chapter](/proof/siegel-weil/), and `MetaplecticRepresentation` there has the Gaussian vacuum $e^{-\pi x \cdot x}$. The models of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) carry Darboux coordinates and vacuum vectors.

## The Fock model

Let $F = \mathbb{R}$ and $W = \mathbb{R}^{2n}$ with the standard symplectic form. The maximal compact subgroup of $\mathrm{Sp}_{2n}(\mathbb{R})$ is $K \cong \mathrm{U}(n)$, and $\tilde K$ is its inverse image in $\mathrm{Mp}_{2n}(\mathbb{R})$.

**Definition.** The *Fock space* $\mathcal{F}_n$ is the Hilbert space of holomorphic functions $f$ on $\mathbb{C}^n$ with $\int_{\mathbb{C}^n} |f(z)|^2 e^{-\pi |z|^2}\, dz < \infty$. The *[[Bargmann transform|QPH28QH036]]* is a unitary isomorphism $L^2(\mathbb{R}^n) \to \mathcal{F}_n$ that sends the Gaussian $e^{-\pi x \cdot x}$ to the constant $1$.

**Definition (Fock model).** The *Fock model* of the Weil representation is its transport to $\mathcal{F}_n$ by the Bargmann transform.

In the Fock model, the $\tilde K$-finite vectors are the polynomials $\mathbb{C}[z_1, \dots, z_n]$, and $\tilde K$ preserves the degree. The vacuum vector is $1$. The complexified Lie algebra $\mathfrak{sp}_{2n}(\mathbb{C})$ acts by the operators $z_i z_j$, $\partial_i \partial_j$ and $z_i \partial_j + \frac12 \delta_{ij}$ (up to constants). So the polynomial Fock space is a $(\mathfrak{sp}_{2n}, \tilde K)$-module.

The local matching statement [LocalMatching](/step/local-matching-def/) puts the Lie algebra and $K_\infty$ actions at the real places on the polynomial Fock space `Pol`.

## Splitting characters

Let $E/F$ be a quadratic extension of local or global fields, with quadratic character $\eta$ of $F^\times$ or of $\mathbb{A}_F^\times / F^\times$. Let $V$ be Hermitian of dimension $m$ and $V'$ skew-Hermitian of dimension $n$ over $E$.

**Theorem (Kudla, 1994; Harris, Kudla and Sweet, 1996).** Let $\chi$ be a character of $E^\times$ (or of $\mathbb{A}_E^\times / E^\times$) with $\chi|_{F^\times} = \eta^m$. Then $\chi$ determines a splitting $\mathrm{U}(V') \to \mathrm{Mp}(V \otimes V')$ of the metaplectic cover. A pair $(\chi, \chi')$ with $\chi|_{F^\times} = \eta^m$ and $\chi'|_{F^\times} = \eta^n$ determines a splitting over $\mathrm{U}(V) \times \mathrm{U}(V')$.

**Definition.** The characters $(\chi, \chi')$ are the *splitting characters of the Weil representation* of $\mathrm{U}(V) \times \mathrm{U}(V')$. With them, $\omega_\psi$ becomes a representation $\omega_{\psi, \chi, \chi'}$ of $\mathrm{U}(V) \times \mathrm{U}(V')$.

The field `kudlaSplittingSplitUnitary` of [ThetaLocalInputs](/step/theta-local-inputs-def/) is this theorem. In `IsTriple`, the Weil representation `om` of $\mathrm{U}_V \times \mathrm{U}_W$ has splitting characters $(\beta, \beta/\alpha)$ and `om'` has $(\alpha, \alpha/\beta)$, and [TLiftK](/step/tlift-k-def/) asks for the restriction condition as `ResEtaPow`.

## Theta kernels

Let $F$ be a number field and $(G, G')$ a type I dual pair over $F$ in $\mathrm{Sp}(W)$, with splitting characters. The *global Weil representation* is $\omega = \bigotimes'_v \omega_v$ on $S(V(\mathbb{A}_F)^n) = \bigotimes'_v S(V(F_v)^n)$, the restricted tensor product along the vacuum vectors.

**Theorem (Weil, 1964).** The linear form $\Theta(\varphi) = \sum_{\xi \in V(F)^n} \varphi(\xi)$ is invariant: $\Theta(\omega(\gamma)\varphi) = \Theta(\varphi)$ for $\gamma \in G(F) \times G'(F)$.

For the Weyl element $w$ this is the Poisson summation formula.

**Definition.** The *theta kernel* of $\varphi \in S(V(\mathbb{A}_F)^n)$ is
$$ \theta(g, h; \varphi) = \sum_{\xi \in V(F)^n} (\omega(g, h)\varphi)(\xi), \qquad g \in G(\mathbb{A}_F),\ h \in G'(\mathbb{A}_F). $$
It is a smooth function of moderate growth on $[G] \times [G']$, where $[G] = G(F) \backslash G(\mathbb{A}_F)$.

**Example.** For $V = \mathbb{Q}$ with the form $x^2$, $\mathrm{SL}_2$, and the Gaussian at $\infty$ with the characteristic function of $\hat{\mathbb{Z}}$ at the finite places, the theta kernel restricted to $\mathrm{SL}_2(\mathbb{R})$ is the theta function $\sum_n e^{\pi i n^2 \tau}$ of [the chapter on complex analysis](/learn/complex-analysis/), up to a factor $y^{1/4}$.

The function `thetaSum` of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) is the theta kernel, the field `thetaRationalInvariance` of [ThetaLocalInputs](/step/theta-local-inputs-def/) is its invariance, and `TTheta` in [the Siegel-Weil chapter](/proof/siegel-weil/) is the Poisson summation.

## The local theta correspondence

Let $F$ be local and $(G, G')$ a type I dual pair with splitting characters, so that $\omega$ is a representation of $G \times G'$. Let $\pi$ be an irreducible smooth representation of $G$.

**Definition.** The maximal $\pi$-isotypic quotient of $\omega$ has the form $\pi \otimes \Theta(\pi)$ for a smooth representation $\Theta(\pi)$ of $G'$, the *big theta lift* of $\pi$. It can be zero.

**Theorem (Howe duality; Howe, 1989; Waldspurger, 1990; Gan and Takeda, 2016; Gan and Sun, 2017).** Let $\pi$ be an irreducible smooth representation of $G$ with $\Theta(\pi) \ne 0$. Then $\Theta(\pi)$ has a unique irreducible quotient $\theta(\pi)$. If $\pi_1$ and $\pi_2$ are irreducible with $\theta(\pi_1) \cong \theta(\pi_2) \ne 0$, then $\pi_1 \cong \pi_2$.

**Definition.** The map $\pi \mapsto \theta(\pi)$ is the *[[theta correspondence|6WB6TKE70H]]* for $(G, G')$. It is a bijection between the irreducible representations of $G$ and of $G'$ that occur as quotients of $\omega$.

For $p$ odd and unramified data, the theta correspondence sends unramified representations to unramified representations, with explicit Satake parameters (Howe; Rallis). The fields `gLHoweDuality` and `howeDualityReal` of [ThetaLocalInputs](/step/theta-local-inputs-def/) are Howe duality, and [LocalMatching](/step/local-matching-def/) asks that two local theta lifts have a common irreducible quotient $\Pi_v$.

## Theta towers

Let $V_0$ be an anisotropic Hermitian space and $V_r = V_0 \oplus \mathbb{H}^r$, with $\mathbb{H}$ the hyperbolic plane. The spaces $V_r$ form a *Witt tower*. Fix a skew-Hermitian $W$ and an irreducible $\pi$ of $\mathrm{U}(W)$.

**Definition.** The *theta tower* of $\pi$ is the sequence of lifts $\Theta_{V_r}(\pi)$ to $\mathrm{U}(V_r)$. The *first occurrence* of $\pi$ is the least $\dim V_r$ with $\Theta_{V_r}(\pi) \ne 0$.

**Theorem (persistence; Kudla, 1986).** If $\Theta_{V_r}(\pi) \ne 0$, then $\Theta_{V_{r+1}}(\pi) \ne 0$.

**Theorem (conservation; Sun and Zhu, 2015).** Let $V^+$ and $V^-$ be the two Witt towers of Hermitian spaces with a fixed dimension parity. Then the first occurrences $n^\pm(\pi)$ of $\pi$ in these towers satisfy $n^+(\pi) + n^-(\pi) = 2 \dim W + 2$.

The steps `StepAlpha` and `StepBeta` of [the theta matching chapter](/proof/theta-matching/) split off a hyperbolic plane, so they move one place up a Witt tower.

## The global theta lift

Let $F$ be a number field, $(G, G') = (\mathrm{U}(V), \mathrm{U}(W))$ with splitting characters, and $\pi$ a cuspidal automorphic representation of $G'$.

**Definition.** For $f \in \pi$ and $\varphi \in S(V(\mathbb{A}_F)^n)$, the *theta lift* of $f$ is
$$ \theta(\varphi, f)(g) = \int_{[G']} \theta(g, h; \varphi)\, \overline{f(h)}\, dh, \qquad g \in G(\mathbb{A}_F). $$
The integral converges, since $f$ decays rapidly and the theta kernel has moderate growth. The *global theta lift* $\Theta_V(\pi)$ is the span of these functions. It is a space of automorphic forms on $G$.

**Theorem (Rallis, 1984).** In a Witt tower $V_r$, the first nonzero global lift $\Theta_{V_r}(\pi)$ is cuspidal.

**Theorem (Kudla and Rallis; Moeglin, 1997).** If $\Theta_V(\pi)$ is nonzero and cuspidal, then it is irreducible and $\Theta_V(\pi) \cong \bigotimes'_v \theta(\pi_v)$.

The integral $I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi)\, d\mu(g)$ of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) is a theta lift of the constant function over a fundamental domain, and [TLiftK](/step/tlift-k-def/) lifts a definite automorphic representation of $\mathrm{U}_n$ to $\mathrm{U}_d$.

## Seesaw pairs

**Definition.** A *seesaw pair* is a pair of dual pairs $(G, G')$ and $(H, H')$ in the same $\mathrm{Sp}(W)$ with $H \subseteq G$ and $G' \subseteq H'$.

**Example.** Let $V = V_1 \oplus V_2$ be an orthogonal sum of Hermitian spaces and $W$ skew-Hermitian. Then $(\mathrm{U}(V), \mathrm{U}(W))$ and $(\mathrm{U}(V_1) \times \mathrm{U}(V_2), \mathrm{U}(W) \times \mathrm{U}(W))$ form a seesaw pair, with $\mathrm{U}(W)$ diagonal in $\mathrm{U}(W) \times \mathrm{U}(W)$.

**Proposition (seesaw identity).** Let $f$ be a cusp form on $H$ and $f'$ a cusp form on $G'$. Then
$$ \int_{[H]} \theta(\varphi, f')(h)\, \overline{f(h)}\, dh = \int_{[G']} f'(g)\, \overline{\theta(\bar\varphi, f)(g)}\, dg, $$
where on the left the lift goes from $G'$ to $G$ and is restricted to $H$, and on the right the lift goes from $H$ to $H'$ and is restricted to $G'$. Both sides are $\iint \theta(h, g; \varphi)\, \overline{f'(g)}\, \overline{f(h)}$, with the integrals in two orders.

The step `upLast` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is this exchange of integrals.

## The Siegel-Weil formula

Let $W$ be skew-Hermitian of dimension $n$ over $E$.

**Definition.** The *doubled group* of $\mathrm{U}(W)$ is $\mathrm{U}(W^\square)$ for $W^\square = W \oplus (-W)$. It is isomorphic to $\mathrm{U}(n, n)$ and contains $\mathrm{U}(W) \times \mathrm{U}(W)$. The diagonal $W^\Delta$ is a Lagrangian subspace, and its stabilizer is the Siegel parabolic $P$.

Let $V$ be Hermitian of dimension $m$, and let $\chi$ be a Hecke character with $\chi|_{\mathbb{A}_F^\times} = \eta^m$. For $\Phi \in S(V(\mathbb{A}_F)^n)$, the function $f_\Phi(g) = (\omega(g)\Phi)(0)$ on $\mathrm{U}(n, n)$ lies in $I(s_0, \chi)$ with $s_0 = (m - n)/2$. Let $f_{\Phi, s}$ be the standard section with $f_{\Phi, s_0} = f_\Phi$, and let $E(g, s, f_\Phi)$ be the Siegel Eisenstein series of [the chapter on automorphic forms](/learn/automorphic-forms/).

**Theorem (Siegel-Weil formula; Weil, 1965; Kudla and Rallis, 1988; Ichino, 2004 and 2007).** Let $V$ be anisotropic. Then the theta integral $I(g, \Phi) = \int_{[\mathrm{U}(V)]} \theta(g, h; \Phi)\, dh$, with $\mathrm{vol}([\mathrm{U}(V)]) = 1$, converges absolutely. The Eisenstein series $E(g, s, f_\Phi)$ is holomorphic at $s_0$, and
$$ E(g, s_0, f_\Phi) = \kappa\, I(g, \Phi), \qquad \kappa = \begin{cases} 1 & m > n, \\ 2 & m \le n. \end{cases} $$

Siegel's mass formula is the comparison of the $T$-th Fourier coefficients of the two sides. The coefficient of the theta integral is an orbit integral of $\Phi$ over the vectors with Gram matrix $T$ (Chapter 17 defines orbit integrals), and the coefficient of the Eisenstein series is a product of local densities.

**Remark (regularized Siegel-Weil formula).** When $V$ is isotropic and Weil's condition fails, the theta integral diverges. Kudla and Rallis (1994) defined a regularized theta integral by a Hecke operator that kills the divergent part. The *regularized Siegel-Weil formula* expresses the leading Laurent coefficients of $E(g, s, f_\Phi)$ at $s_0$ by regularized theta integrals of $V$ and of a complementary space (Kudla and Rallis, 1994; Ichino, 2004; Yamana, 2013; Gan, Qiu and Takeda, 2014).

The statement `SiegelWeilStd` of [the Siegel-Weil chapter](/proof/siegel-weil/) is the formula for a definite $V$ and the doubled group $G_2 = \mathrm{U}(Y \oplus -Y)$, with $c = 1$ for $n < m$ and $c = 2$ for $n \ge m$, and `SiegelWeilUnitaryConvergent` adds the Siegel densities $g_\infty(T) \prod_v g_v(T)$.

## The doubling method

Let $G = \mathrm{U}(W)$ with $\dim W = n$, and let $\iota : G \times G \to \mathrm{U}(W^\square)$ be the inclusion. The group $G \times G$ has an open orbit on $P \backslash \mathrm{U}(W^\square)$, with a representative $\delta$.

**Definition.** Let $\pi$ be a cuspidal automorphic representation of $G$, let $\varphi_1, \varphi_2 \in \pi$, and let $f_s$ be a section of $I(s, \chi)$. The *doubling zeta integral* is
$$ Z(s, \varphi_1, \varphi_2, f_s) = \int_{[G \times G]} E(\iota(g_1, g_2), s, f_s)\, \varphi_1(g_1)\, \overline{\varphi_2(g_2)}\, \chi^{-1}(\det g_2)\, dg_1\, dg_2. $$

**Theorem (doubling method; Piatetski-Shapiro and Rallis, 1987).** For $\operatorname{Re}(s)$ large, unfolding gives
$$ Z(s, \varphi_1, \varphi_2, f_s) = \int_{G(\mathbb{A}_F)} f_s(\delta\, \iota(g, 1))\, \langle \pi(g)\varphi_1, \varphi_2 \rangle\, dg, $$
with the Petersson inner product. For factorizable data, this is a product of *local zeta integrals* $Z_v(s, f_v, \xi_v) = \int_{G(F_v)} f_{s,v}(\delta\, \iota(g, 1))\, \xi_v(g)\, dg$ of matrix coefficients $\xi_v$ of $\pi_v$. At a finite place $v$ where all the data are unramified and spherical,
$$ Z_v(s) = \frac{L(s + \frac12, \pi_v \times \chi_v)}{d_v(s)}, $$
where $d_v(s)$ is an explicit product of abelian L-factors.

So $Z(s) = \frac{L^S(s + \frac12, \pi \times \chi)}{d^S(s)} \prod_{v \in S} Z_v(s)$ for a finite set $S$ of places. The fields `doublingMethod` and `unramifiedDoublingGL` of [ThetaLocalInputs](/step/theta-local-inputs-def/) are these statements, and the tool `dbl` of [the determinants chapter](/proof/determinants/) uses the integral at $s_0 = (d - n)/2$.

## The Rallis inner product formula

Let $\pi$ be a cuspidal automorphic representation of $\mathrm{U}(W)$, $\dim W = n$, and let $V$ be Hermitian of dimension $m$. Apply the Siegel-Weil formula to $V$ and the doubled space $W^\square$, with $\Phi = \varphi_1 \otimes \bar\varphi_2$. Then $f_\Phi(\delta\, \iota(g, 1)) = \langle \omega(g)\varphi_1, \varphi_2 \rangle$, and the doubling method gives the following.

**Theorem (Rallis inner product formula; Rallis, 1984; Kudla and Rallis, 1994; Gan, Qiu and Takeda, 2014).** Let $V$ be anisotropic, let $f_1, f_2 \in \pi$ and $\varphi_1, \varphi_2 \in S(V(\mathbb{A}_F)^n)$ be factorizable, and let $S$ be a finite set of places outside of which all data are unramified. Then
$$ \langle \theta(\varphi_1, f_1), \theta(\varphi_2, f_2) \rangle = \kappa\, \frac{L^S(s_0 + \frac12, \pi \times \chi)}{d^S(s_0)} \prod_{v \in S} Z_v(s_0), \qquad s_0 = \frac{m - n}{2}, $$
where $Z_v(s_0) = \int_{\mathrm{U}(W)(F_v)} \langle \omega_v(g)\varphi_{1,v}, \varphi_{2,v} \rangle\, \overline{\langle \pi_v(g) f_{1,v}, f_{2,v} \rangle}\, dg$, and $\kappa$ is the constant of the Siegel-Weil formula for $V$ and $W^\square$.

It reduces the nonvanishing of the global theta lift to the nonvanishing of an L-value and of local zeta integrals. The lemma `rallis_of_dm` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is the field `rallisInnerProductConvergent`, and `Rallis_k` of [the determinants chapter](/proof/determinants/) proves one direction of the formula.

## Further reading

- S. Kudla, *Notes on the local theta correspondence* (1996), Chapters I to III.
- C. Moeglin, M.-F. Vignéras and J.-L. Waldspurger, *Correspondances de Howe sur un corps p-adique*, LNM 1291 (1987), Chapters 2 and 3.
- S. Gelbart, I. Piatetski-Shapiro and S. Rallis, *Explicit Constructions of Automorphic L-functions*, LNM 1254 (1987), Part A.
- S. Kudla and S. Rallis, *A regularized Siegel-Weil formula: the first term identity*, Ann. of Math. 140 (1994).
- W. T. Gan, Y. Qiu and S. Takeda, *The regularized Siegel-Weil formula (second term identity) and the Rallis inner product formula*, Invent. Math. 198 (2014).
