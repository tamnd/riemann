A period of an automorphic form is its integral over a subgroup, often against a character or a theta function. The Gan-Gross-Prasad conjectures relate Bessel and Fourier-Jacobi periods of unitary groups to central L-values. [The Bessel seesaw chapter](/proof/bessel-seesaw/) uses a Bessel period, the method of Ginzburg, Rallis and Soudry run upwards, and real local multiplicity one with an interlacing condition.

## Generic characters

Let $F$ be a number field, $\psi$ a nontrivial character of $\mathbb{A}_F / F$, and $G$ quasi-split over $F$ with a Borel subgroup $B = TN$.

**Definition.** A character $\psi_N$ of $N(\mathbb{A}_F)$, trivial on $N(F)$, is a *generic character* if it is nontrivial on each simple root subgroup. The *Whittaker period* of $\varphi$ is $\int_{[N]} \varphi(n)\, \overline{\psi_N(n)}\, dn$, and $\pi$ is *globally generic* if this period is nonzero on $\pi$.

For $\mathrm{GL}_n$ the standard generic character is $\psi_N(u) = \psi(u_{12} + u_{23} + \dots + u_{n-1,n})$, as in [the chapter on automorphic forms](/learn/automorphic-forms/).

Let $E/F$ be a CM extension and $W \subset V$ nondegenerate spaces over $E$, both Hermitian or both skew-Hermitian, in one of two cases:

1. *Bessel case:* $W^\perp = X \oplus L \oplus X^*$ has odd dimension $2r + 1$, with $X$, $X^*$ isotropic of dimension $r$ and $L$ an anisotropic line;
2. *Fourier-Jacobi case:* $W^\perp = X \oplus X^*$ has even dimension $2r$.

Let $N$ be the unipotent radical of the parabolic of $\mathrm{U}(V)$ that stabilizes a full isotropic flag in $X$, and $H = \mathrm{U}(W) \ltimes N$. In the Bessel case $\psi$, a basis of $X$ and a vector of $L$ give a character $\lambda$ of $N$, trivial on $N(F)$, generic on the root subgroups of $X$ and fixed by $\mathrm{U}(W)$ (Gan, Gross and Prasad, 2012, Section 12). The Bessel period of [the Bessel seesaw chapter](/proof/bessel-seesaw/) uses such a character, `besChar`.

## Bessel and Fourier-Jacobi periods

Let $\pi$ and $\sigma$ be cuspidal automorphic representations of $\mathrm{U}(V)$ and $\mathrm{U}(W)$.

**Definition.** In the Bessel case, the *Bessel period* of $\varphi \in \pi$ and $f \in \sigma$ is
$$ \mathcal{B}(\varphi, f) = \int_{[\mathrm{U}(W)]} \int_{[N]} \varphi(nh)\, \overline{f(h)}\, \overline{\lambda(n)}\, dn\, dh, $$
which converges since $\varphi$ decays rapidly. For $r = 0$, that is $\dim V = \dim W + 1$, it is the *Gross-Prasad period* $\int_{[\mathrm{U}(W)]} \varphi(h)\, \overline{f(h)}\, dh$.

**Definition.** In the Fourier-Jacobi case, $N$ maps onto a Heisenberg group and $H$ has a Weil representation $\nu$ with theta functions $\theta(\cdot, \phi)$ ([the chapter on theta lifts](/learn/theta/)). The *Fourier-Jacobi period* is
$$ \mathcal{FJ}(\varphi, f, \phi) = \int_{[\mathrm{U}(W)]} \int_{[N]} \varphi(nh)\, \overline{f(h)}\, \overline{\theta(nh, \phi)}\, dn\, dh. $$

In [the Bessel seesaw chapter](/proof/bessel-seesaw/) the functional `Bplus` is a global Bessel period, and its bottom period $P_0(F, u)$, an integral over $[\mathrm{U}(V_{0,0})]$, is a Gross-Prasad period.

## Local multiplicity one

Now let $F$ be local, $\nu = \lambda$ in the Bessel case and $\nu$ the Weil representation of $H$ in the Fourier-Jacobi case, and $\pi$, $\sigma$ irreducible smooth representations of $\mathrm{U}(V)$, $\mathrm{U}(W)$.

**Definition.** A *Bessel functional* (or Fourier-Jacobi functional) is an element of $\mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C})$.

**Theorem (local multiplicity one; Aizenbud, Gourevitch, Rallis and Schiffmann, 2010; Sun and Zhu, 2012; Gan, Gross and Prasad, 2012).** For all $\pi$ and $\sigma$, $\dim \mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C}) \le 1$.

The first two papers treat $r = 0$ ($p$-adic and archimedean); Gan, Gross and Prasad reduce the general $p$-adic case to it, and Jiang, Sun and Zhu (2010) treat archimedean Bessel models. So on factorizable vectors a global Bessel period is a constant times a product of local Bessel functionals. The condition `BurGapPos` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is the bound for Bessel functionals at the real place, as a rank at most $1$.

## The Gan-Gross-Prasad conjectures

**Theorem (local Gan-Gross-Prasad conjecture; Beuzart-Plessis, 2016 and 2020; Gan and Ichino, 2016).** Let $(\pi, \sigma)$ run over the representations of the relevant pure inner forms $\mathrm{U}(V_\alpha) \times \mathrm{U}(W_\alpha)$ in the Vogan L-packet of a tempered L-parameter. Then $\mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C}) \ne 0$ for exactly one pair, and an explicit character built from local root numbers determines it ([[local Gan-Gross-Prasad conjecture|458AXP8QBB]]).

Beuzart-Plessis proved the Bessel case; Gan and Ichino deduced the Fourier-Jacobi case by theta lifts.

**Theorem (global Gan-Gross-Prasad conjecture; Beuzart-Plessis, Liu, Zhang and Zhu, 2021; Beuzart-Plessis, Chaudouard and Zydor, 2022).** Let $\dim V = \dim W + 1$, and let $\pi$, $\sigma$ be cuspidal automorphic representations of $\mathrm{U}(V)$, $\mathrm{U}(W)$ whose base changes $\Pi$, $\Sigma$ to $\mathrm{GL}$ are isobaric sums of distinct cuspidal representations. Then $L(\frac12, \Pi \times \Sigma) \ne 0$ if and only if the Gross-Prasad period is nonzero on some $\pi' \otimes \sigma'$, where $W' \subset V'$ are Hermitian of codimension one, $\mathrm{U}(V') \times \mathrm{U}(W')$ is an inner form of $\mathrm{U}(V) \times \mathrm{U}(W)$, and $(\pi', \sigma')$ is cuspidal on it with base changes $\Pi$ and $\Sigma$.

This is the [[global Gan-Gross-Prasad conjecture|NMNX13N4CD]] for unitary groups in codimension one. Its refined form (Ichino and Ikeda; N. Harris for unitary groups) writes the squared Gross-Prasad period as the central L-value times local integrals of matrix coefficients. The statement `BesselPeriodGGP` of [the Bessel seesaw chapter](/proof/bessel-seesaw/), local GGP at the real place, lies in the formal layer, outside the spine of the proof.

## Interlacing and the branching law for discrete series

By the Weyl branching law of [the chapter on representations](/learn/representations/), the irreducible representation of $\mathrm{U}(n)$ of highest weight $\lambda$ restricts to $\mathrm{U}(n-1)$ as the multiplicity-free sum of those of highest weight $\mu$ with
$$ \lambda_1 \ge \mu_1 \ge \lambda_2 \ge \mu_2 \ge \dots \ge \mu_{n-1} \ge \lambda_n. $$

**Definition.** Sequences $a_1 > \dots > a_n$ and $b_1 > \dots > b_{n-1}$ are *interlaced* if $a_1 > b_1 > a_2 > \dots > b_{n-1} > a_n$.

A discrete series representation of $\mathrm{U}(p, q)$ has a Harish-Chandra parameter: $p + q$ distinct numbers in $\frac{p+q-1}{2} + \mathbb{Z}$, each signed by whether it belongs to the $p$ part or the $q$ part.

**Theorem (branching law for discrete series; He, 2017).** Let $W \subset V$ be Hermitian spaces for $\mathbb{C}/\mathbb{R}$ of codimension one, and $\pi$, $\sigma$ discrete series of $\mathrm{U}(V)$, $\mathrm{U}(W)$. Then $\mathrm{Hom}_{\mathrm{U}(W)}(\pi \otimes \bar\sigma, \mathbb{C}) \ne 0$ if and only if the signed Harish-Chandra parameters of $\pi$ and $\sigma$ satisfy an explicit combinatorial condition, the one that local GGP predicts.

For compact groups the condition is interlacing of the $\rho$-shifted highest weights. The predicate `Interlaced` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is a sign form: merge the two parameters in decreasing order, with signs, and ask that neighbours have equal signs exactly when they come from different lists.

## The descent of Ginzburg, Rallis and Soudry

**Theorem (Ginzburg, Rallis and Soudry, 2011).** Let $\Pi = \Pi_1 \boxplus \dots \boxplus \Pi_k$ be an isobaric sum of distinct conjugate self-dual cuspidal $\Pi_i$ on $\mathrm{GL}_{n_i}(\mathbb{A}_E)$ whose Asai L-functions $L(s, \Pi_i, \mathrm{As}^{\epsilon})$ have a pole at $s = 1$, for a sign $\epsilon$ depending only on $n = \sum n_i$. Then a quasi-split $\mathrm{U}_n$ has a globally generic cuspidal $\sigma$ with base change $\Pi$, spanned by Bessel or Fourier-Jacobi coefficients of a residue of an Eisenstein series induced from $\Pi$ on a larger unitary group.

This is the *descent* of Ginzburg, Rallis and Soudry. [The Bessel seesaw chapter](/proof/bessel-seesaw/) runs it backwards as an ascent, with rungs `Rung0`, `RungB`, `RungJ` between Fourier-Jacobi and Bessel periods; `HypothesesH'` of [the window bound](/proof/vwin/) has a weak descent input `DescWeak`.

## Orbit integrals and the relative trace formula

Let $H$ be a group over $F$ acting on a variety $X$, and $x \in X(F)$ with stabilizer $H_x$.

**Definition.** The *orbit integral* of $\Phi$ on $X(\mathbb{A}_F)$ at $x$ is $\int_{H_x(\mathbb{A}_F) \backslash H(\mathbb{A}_F)} \Phi(h^{-1} x)\, dh$.

**Example.** Let $\mathrm{U}(V)$ act on $V^n$, and let $T$ be Hermitian of size $n$ with $\det T \ne 0$. By Witt's theorem the $x \in V(F)^n$ with Gram matrix $T$ form at most one $\mathrm{U}(V)(F)$-orbit, so the $T$-th Fourier coefficient of the theta integral of [the chapter on theta lifts](/learn/theta/#the-siegel-weil-formula) is one orbit integral (or $0$).

**Definition (Jacquet).** Let $H_1, H_2 \subseteq G$, $f \in C_c^\infty(G(\mathbb{A}_F))$ and $K_f(x, y) = \sum_{\gamma \in G(F)} f(x^{-1}\gamma y)$. The *relative trace formula* equates two expansions of $\int_{[H_1]} \int_{[H_2]} K_f(h_1, h_2)\, dh_1\, dh_2$: a spectral sum over $\pi$ of products of an $H_1$-period and an $H_2$-period, and a geometric sum over $H_1(F) \backslash G(F) / H_2(F)$ of relative orbit integrals.

The proofs of the global GGP conjecture compare two relative trace formulas, following Jacquet and Rallis (2011). This proof uses none and reaches periods by theta lifts and seesaw identities, but its `orb_T` in [the Siegel-Weil chapter](/proof/siegel-weil/), a sum over the $X$ with $\mathrm{gram}(X, X) = -2T$ averaged over a fundamental domain, is an orbit integral.

## Further reading

- W. T. Gan, B. Gross and D. Prasad, *Symplectic local root numbers, central critical L-values, and restriction problems in the representation theory of classical groups*, Astérisque 346 (2012), Sections 2 to 4, 12 to 17 and 24.
- D. Ginzburg, S. Rallis and D. Soudry, *The Descent Map from Automorphic Representations of GL(n) to Classical Groups* (2011), Chapters 2 and 3.
- H. Jacquet and S. Rallis, *On the Gross-Prasad conjecture for unitary groups*, in Clay Math. Proc. 13 (2011).
- R. Beuzart-Plessis, P.-H. Chaudouard and M. Zydor, *The global Gan-Gross-Prasad conjecture for unitary groups: the endoscopic case*, Publ. Math. IHES 135 (2022), Section 1.
