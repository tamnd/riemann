The Weil representation of the metaplectic group, restricted to two groups that centralize each other, gives the theta correspondence, and its theta kernels carry automorphic forms from one group to the other. The proof builds the representations of [the theta matching chapter](/proof/theta-matching/) as theta lifts and computes them with the Siegel-Weil and Rallis inner product formulas.

## Reductive dual pairs

Let $F$ be a field of characteristic $0$ and $W$ a symplectic space over $F$ ([the chapter on classical groups](/learn/groups/) defines $\mathrm{Sp}(W)$).

**Definition (Howe).** A *reductive dual pair* in $\mathrm{Sp}(W)$ is a pair $(G, G')$ of reductive subgroups, each the centralizer of the other. It is *irreducible* if $W$ is not an orthogonal sum of two nonzero $G \cdot G'$-stable subspaces.

Let $E$ be $F$ (with trivial conjugation) or a quadratic extension of $F$, and $\epsilon = \pm 1$. Let $V$ be an $\epsilon$-Hermitian and $V'$ a $(-\epsilon)$-Hermitian space over $E$. Then $W = V \otimes_E V'$ with the form
$$ \langle v \otimes v', u \otimes u' \rangle = \operatorname{Tr}_{E/F}\big((v, u)\, \overline{(v', u')'}\big) $$
is symplectic over $F$, and the isometry groups of $V$ and $V'$ form a dual pair, of *type I*. (Quaternion algebras give the remaining type I pairs.)

**Example.** $E = F$ with $V$ quadratic and $V'$ symplectic of dimension $2n$ gives $(\mathrm{O}(V), \mathrm{Sp}_{2n})$; $E/F$ quadratic with $V$ Hermitian and $V'$ skew-Hermitian gives $(\mathrm{U}(V), \mathrm{U}(V'))$.

`IsTriple` in [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) fixes Hermitian $V$, $V'$ of signatures $(a - p, p)$, $(q, a' - q)$ and a skew-Hermitian $W$ of dimension $a + a'$, hence the dual pairs $(\mathrm{U}(V), \mathrm{U}(W))$ and $(\mathrm{U}(V'), \mathrm{U}(W))$.

## The Stone-von Neumann theorem

Let $F$ be local and $\psi$ a nontrivial character of $F$. The Heisenberg group $H(W)$ ([the chapter on classical groups](/learn/groups/)) is $W \times F$ with $(w, t)(w', t') = (w + w', t + t' + \frac12 \langle w, w' \rangle)$; its center is $F$.

**Theorem (Stone-von Neumann).** Up to isomorphism, $H(W)$ has exactly one irreducible smooth representation $\rho_\psi$ (unitary when $F$ is archimedean) with central character $\psi$.

As $\mathrm{Sp}(W)$ acts on $H(W)$ by $g(w, t) = (gw, t)$, fixing the center, $\rho_\psi \circ g \cong \rho_\psi$, so some $\omega(g)$, unique up to a scalar, satisfies $\omega(g)\, \rho_\psi(h)\, \omega(g)^{-1} = \rho_\psi(g h)$. This gives a projective representation $\omega$ of $\mathrm{Sp}(W)$. The theorem is `stoneVonNeumann` in [ThetaLocalInputs](/step/theta-local-inputs-def/).

## The Weil representation

Let $\mathrm{Mp}(W)$ be the metaplectic double cover of $\mathrm{Sp}(W)$ ([the chapter on classical groups](/learn/groups/)).

**Theorem (Weil, 1964).** The projective representation $\omega$ lifts to a genuine representation $\omega_\psi$ of $\mathrm{Mp}(W)$, unique up to isomorphism. When $F \ne \mathbb{C}$ the cover is nontrivial and $\omega_\psi$ does not come from $\mathrm{Sp}(W)$.

**Definition.** $\omega_\psi$ is the *[[Weil representation|H3Q2703KKV]]* (or oscillator representation) of $\mathrm{Mp}(W)$. It is the sum of two irreducible representations. [ThetaLocalInputs](/step/theta-local-inputs-def/) gives it over $p$-adic fields and $\mathbb{R}$ (`weilRepresentationExists`, `metaplecticRepresentation`, `realMetaplecticRepresentation`).

## The Schrödinger model

A Lagrangian decomposition $W = X \oplus Y$ realizes $\omega_\psi$ on the Schwartz space $S(Y)$. Let $V$ be a quadratic space of dimension $m$ and $\mathrm{Sp}_{2n}$ the isometry group of the standard symplectic $F^{2n}$, so $W = V^n \oplus V^n$. For $x \in V^n$ let $(x, x) = ((x_i, x_j))_{i,j}$ be the Gram matrix, and let $\chi_V$ be the quadratic character of the discriminant of $V$. Put $m(a) = \mathrm{diag}(a, {}^t a^{-1})$ for $a \in \mathrm{GL}_n(F)$, $n(b) = \begin{pmatrix} 1 & b \\ 0 & 1 \end{pmatrix}$ for symmetric $b$, and $w = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$.

**Definition (Schrödinger model).** The *Schrödinger model* of the Weil representation of $\mathrm{O}(V) \times \mathrm{Sp}_{2n}$ is the action on $S(V^n)$ given by
$$ \omega(m(a))\varphi(x) = \chi_V(\det a)\, |\det a|^{m/2} \varphi(xa), \qquad \omega(n(b))\varphi(x) = \psi\big(\tfrac12 \operatorname{tr}(b\, (x, x))\big) \varphi(x), $$
$$ \omega(w)\varphi(x) = \gamma\, \hat\varphi(x), \qquad \omega(h)\varphi(x) = \varphi(h^{-1} x) \quad (h \in \mathrm{O}(V)), $$
with $\hat\varphi$ the Fourier transform for the self-dual measure and $\gamma$ an eighth root of unity (the Weil index). For $m$ even this is a representation of $\mathrm{Sp}_{2n}(F)$; for $m$ odd, with $\chi_V$ corrected by Weil indices, of $\mathrm{Mp}_{2n}(F)$.

For Hermitian $V$ over $E$ and the pair $(\mathrm{U}(V), \mathrm{U}(n, n))$ the same formulas hold, with $a \in \mathrm{GL}_n(E)$, $b \in \mathrm{Herm}_n$, $|\det a|_E$ for $|\det a|$, and a splitting character $\chi$ (defined below) for $\chi_V$.

**Definition.** For $F$ $p$-adic, $\psi$ of conductor $\mathcal{O}_F$ and $L \subset V$ a self-dual lattice, the *vacuum vector* of $S(V^n)$ is the characteristic function of $L^n$; for $F = \mathbb{R}$ and $V$ positive definite it is the Gaussian $\varphi^0(x) = e^{-\pi \operatorname{tr}(x, x)}$. In both cases the inverse image in $\mathrm{Mp}$ of a maximal compact subgroup acts on it by a character.

These formulas are `TPar` and `TWeyl` in [the Siegel-Weil chapter](/proof/siegel-weil/), whose `MetaplecticRepresentation` uses the Gaussian $e^{-\pi x \cdot x}$; [LocalMatching](/step/local-matching-def/) matches vacuum vectors outside a finite set.

## The Fock model

Let $F = \mathbb{R}$, $W = \mathbb{R}^{2n}$, $K \cong \mathrm{U}(n)$ the maximal compact subgroup of $\mathrm{Sp}_{2n}(\mathbb{R})$ and $\tilde K$ its inverse image in $\mathrm{Mp}_{2n}(\mathbb{R})$.

**Definition.** The *Fock space* $\mathcal{F}_n$ is the Hilbert space of holomorphic $f$ on $\mathbb{C}^n$ with $\int_{\mathbb{C}^n} |f(z)|^2 e^{-\pi |z|^2}\, dz < \infty$. The *[[Bargmann transform|QPH28QH036]]* is a unitary isomorphism $L^2(\mathbb{R}^n) \to \mathcal{F}_n$ that sends the Gaussian $e^{-\pi x \cdot x}$ to a constant.

**Definition (Fock model).** The *Fock model* is the transport of the Weil representation to $\mathcal{F}_n$ by the Bargmann transform.

Its $\tilde K$-finite vectors are the polynomials, with $\tilde K$ preserving degree and vacuum vector $1$, and $\mathfrak{sp}_{2n}(\mathbb{C})$ acts on them by $z_i z_j$, $\partial_i \partial_j$ and $z_i \partial_j + \frac12 \delta_{ij}$ (up to constants). [LocalMatching](/step/local-matching-def/) puts the real Lie algebra and $K_\infty$ actions on this $(\mathfrak{sp}_{2n}, \tilde K)$-module, named `Pol`.

## Splitting characters

Let $E/F$ be a quadratic extension of local or global fields, with quadratic character $\eta$ of $F^\times$ or $\mathbb{A}_F^\times / F^\times$. Let $V$ be Hermitian of dimension $m$ and $V'$ skew-Hermitian of dimension $n$ over $E$.

**Theorem (Kudla, 1994; Harris, Kudla and Sweet, 1996).** A character $\chi$ of $E^\times$ (or $\mathbb{A}_E^\times / E^\times$) with $\chi|_{F^\times} = \eta^m$ determines a splitting $\mathrm{U}(V') \to \mathrm{Mp}(V \otimes V')$. A pair $(\chi, \chi')$ with $\chi|_{F^\times} = \eta^m$ and $\chi'|_{F^\times} = \eta^n$ determines a splitting over $\mathrm{U}(V) \times \mathrm{U}(V')$.

**Definition.** Such $(\chi, \chi')$ are *splitting characters of the Weil representation*; they make $\omega_\psi$ a representation $\omega_{\psi, \chi, \chi'}$ of $\mathrm{U}(V) \times \mathrm{U}(V')$.

The theorem is `kudlaSplittingSplitUnitary` in [ThetaLocalInputs](/step/theta-local-inputs-def/). The Weil representations `om` and `om'` of `IsTriple` have splitting characters $(\beta, \beta/\alpha)$ and $(\alpha, \alpha/\beta)$, and [TLiftK](/step/tlift-k-def/) calls the restriction condition `ResEtaPow`.

## Theta kernels

Let $F$ be a number field and $(G, G')$ a type I dual pair over $F$ with splitting characters. The *global Weil representation* is the restricted tensor product $\omega = \bigotimes'_v \omega_v$ on $S(V(\mathbb{A}_F)^n)$, along the vacuum vectors.

**Theorem (Weil, 1964).** The form $\Theta(\varphi) = \sum_{\xi \in V(F)^n} \varphi(\xi)$ satisfies $\Theta(\omega(\gamma)\varphi) = \Theta(\varphi)$ for $\gamma \in G(F) \times G'(F)$. For the Weyl element $w$ this is Poisson summation.

**Definition.** The *theta kernel* of $\varphi \in S(V(\mathbb{A}_F)^n)$ is
$$ \theta(g, h; \varphi) = \sum_{\xi \in V(F)^n} (\omega(g, h)\varphi)(\xi), \qquad g \in G(\mathbb{A}_F),\ h \in G'(\mathbb{A}_F), $$
a smooth function of moderate growth on $[G] \times [G']$, where $[G] = G(F) \backslash G(\mathbb{A}_F)$.

**Example.** For $V = \mathbb{Q}$ with the form $x^2$ (the group is $\mathrm{Mp}_2$), the Gaussian at $\infty$ and $\mathbf{1}_{\mathbb{Z}_p}$ at each $p$, the theta kernel at $n(x)\, m(\sqrt{y})$ is $y^{1/4}$ times the theta function $\sum_n e^{\pi i n^2 \tau}$, $\tau = x + iy$, of [the chapter on complex analysis](/learn/complex-analysis/).

The kernel is `thetaSum` in [ThetaIntegralsAgree](/step/theta-integrals-agree-def/), its invariance `thetaRationalInvariance` in [ThetaLocalInputs](/step/theta-local-inputs-def/), and Poisson summation `TTheta` in [the Siegel-Weil chapter](/proof/siegel-weil/).

## The local theta correspondence

Let $F$ be local, $(G, G')$ a type I dual pair with splitting characters, and $\pi$ an irreducible smooth representation of $G$.

**Definition.** The maximal $\pi$-isotypic quotient of $\omega$ is $\pi \otimes \Theta(\pi)$ for a smooth representation $\Theta(\pi)$ of $G'$, possibly zero, the *big theta lift* of $\pi$.

**Theorem (Howe duality; Howe, 1989; Waldspurger, 1990; Gan and Takeda, 2016; Gan and Sun, 2017).** If $\Theta(\pi) \ne 0$, it has a unique irreducible quotient $\theta(\pi)$. If $\theta(\pi_1) \cong \theta(\pi_2) \ne 0$, then $\pi_1 \cong \pi_2$.

**Definition.** The map $\pi \mapsto \theta(\pi)$ is the *[[theta correspondence|6WB6TKE70H]]* for $(G, G')$, a bijection between the irreducible representations of $G$ and of $G'$ that occur as quotients of $\omega$.

For $p$ odd and unramified data, an unramified $\pi$ with $\theta(\pi) \ne 0$ has unramified $\theta(\pi)$, with explicit Satake parameters (Howe; Rallis). Howe duality is `gLHoweDuality` and `howeDualityReal` in [ThetaLocalInputs](/step/theta-local-inputs-def/); [LocalMatching](/step/local-matching-def/) asks that two local theta lifts share an irreducible quotient $\Pi_v$.

## Theta towers

Let $V_0$ be an anisotropic Hermitian space and $V_r = V_0 \oplus \mathbb{H}^r$, with $\mathbb{H}$ the hyperbolic plane; the $V_r$ form a *Witt tower*. Fix a skew-Hermitian $W$ and an irreducible $\pi$ of $\mathrm{U}(W)$.

**Definition.** The *theta tower* of $\pi$ is the sequence of lifts $\Theta_{V_r}(\pi)$ to $\mathrm{U}(V_r)$. The *first occurrence* of $\pi$ is the least $\dim V_r$ with $\Theta_{V_r}(\pi) \ne 0$.

**Theorem (persistence; Kudla, 1986).** If $\Theta_{V_r}(\pi) \ne 0$, then $\Theta_{V_{r+1}}(\pi) \ne 0$.

**Theorem (conservation; Sun and Zhu, 2015).** Let $F$ be $p$-adic and $V^\pm$ the two Witt towers of Hermitian spaces of a fixed dimension parity. The first occurrences of $\pi$ in them satisfy $n^+(\pi) + n^-(\pi) = 2 \dim W + 2$.

Each of the steps `StepAlpha` and `StepBeta` of [the theta matching chapter](/proof/theta-matching/) splits off a hyperbolic plane: one place up a Witt tower.

## The global theta lift

Let $F$ be a number field, $(G, G') = (\mathrm{U}(V), \mathrm{U}(W))$ with splitting characters, and $\pi$ a cuspidal automorphic representation of $G'$.

**Definition.** For $f \in \pi$ and $\varphi \in S(V(\mathbb{A}_F)^n)$, the *theta lift* of $f$ is
$$ \theta(\varphi, f)(g) = \int_{[G']} \theta(g, h; \varphi)\, \overline{f(h)}\, dh, \qquad g \in G(\mathbb{A}_F), $$
which converges since $f$ decays rapidly. The *global theta lift* $\Theta_V(\pi)$ is the span of these automorphic forms on $G$.

**Theorem (Rallis, 1984).** In a Witt tower $V_r$, the first nonzero global lift $\Theta_{V_r}(\pi)$ is cuspidal.

**Theorem (Kudla and Rallis; Moeglin, 1997).** If $\Theta_V(\pi)$ is nonzero and cuspidal, it is irreducible and $\Theta_V(\pi) \cong \bigotimes'_v \theta(\pi_v)$.

In [ThetaIntegralsAgree](/step/theta-integrals-agree-def/), $I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi)\, d\mu(g)$ lifts the constant function over a fundamental domain; [TLiftK](/step/tlift-k-def/) lifts a definite automorphic representation of $\mathrm{U}_n$ to $\mathrm{U}_d$.

## Seesaw pairs

**Definition.** A *seesaw pair* is two dual pairs $(G, G')$ and $(H, H')$ in one $\mathrm{Sp}(W)$ with $H \subseteq G$ and $G' \subseteq H'$.

**Example.** For $V = V_1 \oplus V_2$ Hermitian and $W$ skew-Hermitian, $(\mathrm{U}(V), \mathrm{U}(W))$ and $(\mathrm{U}(V_1) \times \mathrm{U}(V_2), \mathrm{U}(W) \times \mathrm{U}(W))$ form a seesaw pair, with $\mathrm{U}(W)$ embedded diagonally.

**Proposition (seesaw identity).** For cusp forms $f$ on $H$ and $f'$ on $G'$,
$$ \int_{[H]} \theta(\varphi, f')(h)\, \overline{f(h)}\, dh = \int_{[G']} \theta(\varphi, f)(g)\, \overline{f'(g)}\, dg, $$
with $f'$ lifted to $G$ on the left and $f$ lifted to $H'$ on the right. Both sides are $\iint \theta(h, g; \varphi)\, \overline{f'(g)}\, \overline{f(h)}\, dg\, dh$, integrated in the two orders; this exchange is the step `upLast` of [the Bessel seesaw chapter](/proof/bessel-seesaw/).

## The Siegel-Weil formula

Let $W$ be skew-Hermitian of dimension $n$ over $E$.

**Definition.** The *doubled group* of $\mathrm{U}(W)$ is $\mathrm{U}(W^\square)$, $W^\square = W \oplus (-W)$. It is isomorphic to $\mathrm{U}(n, n)$ and contains $\mathrm{U}(W) \times \mathrm{U}(W)$. The diagonal $W^\Delta$ is Lagrangian, and its stabilizer is the Siegel parabolic $P$.

Let $V$ be Hermitian of dimension $m$ and $\chi$ a Hecke character with $\chi|_{\mathbb{A}_F^\times} = \eta^m$. For $\Phi \in S(V(\mathbb{A}_F)^n)$, $f_\Phi(g) = (\omega(g)\Phi)(0)$ lies in $I(s_0, \chi)$ on $\mathrm{U}(n, n)$, $s_0 = (m - n)/2$. Let $f_{\Phi, s}$ be the standard section through $f_\Phi$, and $E(g, s, f_\Phi)$ the Siegel Eisenstein series of [the chapter on automorphic forms](/learn/automorphic-forms/).

**Theorem (Siegel-Weil formula; Weil, 1965; Kudla and Rallis, 1988; Ichino, 2004 and 2007).** Let $V$ be anisotropic and $\Phi$ $K$-finite. The theta integral $I(g, \Phi) = \int_{[\mathrm{U}(V)]} \theta(g, h; \Phi)\, dh$, with $\mathrm{vol}([\mathrm{U}(V)]) = 1$, converges absolutely, $E(g, s, f_\Phi)$ is holomorphic at $s_0$, and
$$ E(g, s_0, f_\Phi) = \kappa\, I(g, \Phi), \qquad \kappa = \begin{cases} 1 & m > n, \\ 2 & m \le n. \end{cases} $$

On $T$-th Fourier coefficients it is Siegel's mass formula: an orbit integral (defined in Chapter 17) over the vectors with Gram matrix $T$ equals a product of local densities.

**Remark (regularized Siegel-Weil formula).** When Weil's convergence condition fails, Kudla and Rallis (1994) regularize the theta integral with a Hecke operator. The *regularized Siegel-Weil formula* gives the leading Laurent coefficients of $E(g, s, f_\Phi)$ at $s_0$ by regularized theta integrals of $V$ and of a complementary space (Ichino, 2004; Yamana, 2013; Gan, Qiu and Takeda, 2014). The proof does not need it.

`SiegelWeilStd` in [the Siegel-Weil chapter](/proof/siegel-weil/) is the formula for definite $V$ on $G_2 = \mathrm{U}(Y \oplus -Y)$, with $c$ for $\kappa$; `SiegelWeilUnitaryConvergent` adds the Siegel densities $g_\infty(T) \prod_v g_v(T)$.

## The doubling method

Let $G = \mathrm{U}(W)$, $\dim W = n$, and $\iota : G \times G \to \mathrm{U}(W^\square)$ the inclusion. $G \times G$ has an open orbit on $P \backslash \mathrm{U}(W^\square)$, with representative $\delta$.

**Definition.** For $\pi$ cuspidal automorphic on $G$, $\varphi_1, \varphi_2 \in \pi$ and $f_s$ a section of $I(s, \chi)$, the *doubling zeta integral* is
$$ Z(s, \varphi_1, \varphi_2, f_s) = \int_{[G \times G]} E(\iota(g_1, g_2), s, f_s)\, \varphi_1(g_1)\, \overline{\varphi_2(g_2)}\, \chi^{-1}(\det g_2)\, dg_1\, dg_2. $$

**Theorem (doubling method; Piatetski-Shapiro and Rallis, 1987).** For $\operatorname{Re}(s)$ large, unfolding gives
$$ Z(s, \varphi_1, \varphi_2, f_s) = \int_{G(\mathbb{A}_F)} f_s(\delta\, \iota(g, 1))\, \langle \pi(g)\varphi_1, \varphi_2 \rangle\, dg, $$
with the Petersson inner product. For factorizable data this is a product of *local zeta integrals* $Z_v(s, f_v, \xi_v) = \int_{G(F_v)} f_{s,v}(\delta\, \iota(g, 1))\, \xi_v(g)\, dg$ of matrix coefficients $\xi_v$ of $\pi_v$. At a finite place with unramified spherical data,
$$ Z_v(s) = \frac{L(s + \frac12, \pi_v \times \chi_v)}{d_v(s)}, $$
with $d_v(s)$ an explicit product of abelian L-factors.

These are `doublingMethod` and `unramifiedDoublingGL` in [ThetaLocalInputs](/step/theta-local-inputs-def/); the tool `dbl` of [the determinants chapter](/proof/determinants/) uses the integral at $s_0 = (d - n)/2$.

## The Rallis inner product formula

The Siegel-Weil formula for $V$ and $W^\square$ at $\Phi = \varphi_1 \otimes \bar\varphi_2$, where $f_\Phi(\delta\, \iota(g, 1)) = \langle \omega(g)\varphi_1, \varphi_2 \rangle$, turns the doubling integral into an inner product of theta lifts.

**Theorem (Rallis inner product formula; Rallis, 1984; Kudla and Rallis, 1994; Gan, Qiu and Takeda, 2014).** Let $\pi$ be cuspidal automorphic on $\mathrm{U}(W)$, $\dim W = n$, $V$ anisotropic Hermitian of dimension $m$, $f_1, f_2 \in \pi$ and $\varphi_1, \varphi_2 \in S(V(\mathbb{A}_F)^n)$ factorizable, and $S$ a finite set of places outside of which all data are unramified. Then
$$ \langle \theta(\varphi_1, f_1), \theta(\varphi_2, f_2) \rangle = \kappa\, \frac{L^S(s_0 + \frac12, \pi \times \chi)}{d^S(s_0)} \prod_{v \in S} Z_v(s_0), \qquad s_0 = \frac{m - n}{2}, $$
where $Z_v(s_0) = \int_{\mathrm{U}(W)(F_v)} \langle \omega_v(g)\varphi_{1,v}, \varphi_{2,v} \rangle\, \overline{\langle \pi_v(g) f_{1,v}, f_{2,v} \rangle}\, dg$ and $\kappa$ is the Siegel-Weil constant for $V$ and $W^\square$.

It reduces the nonvanishing of $\Theta_V(\pi)$ to that of an L-value and of local zeta integrals. The lemma `rallis_of_dm` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is the field `rallisInnerProductConvergent`, and `Rallis_k` of [the determinants chapter](/proof/determinants/) proves one direction.

## Further reading

- S. Kudla, *Notes on the local theta correspondence* (1996), Chapters I to III.
- C. Moeglin, M.-F. Vignéras and J.-L. Waldspurger, *Correspondances de Howe sur un corps p-adique*, LNM 1291 (1987), Chapters 2 and 3.
- S. Gelbart, I. Piatetski-Shapiro and S. Rallis, *Explicit Constructions of Automorphic L-functions*, LNM 1254 (1987), Part A.
- W. T. Gan, Y. Qiu and S. Takeda, *The regularized Siegel-Weil formula (second term identity) and the Rallis inner product formula*, Invent. Math. 198 (2014).
