A period of an automorphic form is its integral over the points of a subgroup, often against a character or a theta function. The Gan-Gross-Prasad conjectures relate the Bessel and Fourier-Jacobi periods of unitary groups to central L-values. The proof uses a Bessel period, the ascent method of Ginzburg, Rallis and Soudry, and real local multiplicity one with an interlacing condition, all in [the Bessel seesaw chapter](/proof/bessel-seesaw/).

## Generic characters

Let $F$ be a number field and $\psi$ a nontrivial character of $\mathbb{A}_F / F$. Let $G$ be quasi-split over $F$, with a Borel subgroup $B = TN$.

**Definition.** A character $\psi_N$ of $N(\mathbb{A}_F)$, trivial on $N(F)$, is a *generic character* if its restriction to each simple root subgroup is nontrivial. The *Whittaker period* of $\varphi$ is $\int_{[N]} \varphi(n)\, \overline{\psi_N(n)}\, dn$, and $\pi$ is *globally generic* if this period is nonzero on $\pi$.

For $\mathrm{GL}_n$ the standard generic character is $\psi_N(u) = \psi(u_{12} + u_{23} + \dots + u_{n-1,n})$, as in [the chapter on automorphic forms](/learn/automorphic-forms/).

The GGP conjectures use a relative form. Let $E/F$ be a CM extension, and let $W \subset V$ be nondegenerate Hermitian spaces over $E$.

1. *Bessel case.* $W^\perp = X \oplus L \oplus X^*$ has odd dimension $2r + 1$, with $X$ and $X^*$ isotropic of dimension $r$ and $L$ an anisotropic line.
2. *Fourier-Jacobi case.* $W$ and $V$ are skew-Hermitian, and $W^\perp = X \oplus X^*$ has even dimension $2r$.

Let $P$ be the parabolic of $\mathrm{U}(V)$ that stabilizes a full isotropic flag in $X$, and let $N$ be its unipotent radical. The group $\mathrm{U}(W)$ normalizes $N$, and $H = \mathrm{U}(W) \ltimes N$. In the Bessel case, $N$ has a character $\lambda$, built from $\psi$, a basis of $X$ and a vector of $L$, that is trivial on $N(F)$, generic on the root subgroups of $X$, and fixed by $\mathrm{U}(W)$ (Gan, Gross and Prasad, 2012, Section 12).

The Bessel period of [the Bessel seesaw chapter](/proof/bessel-seesaw/) uses such a generic character, named `besChar`.

## Bessel and Fourier-Jacobi periods

Let $\pi$ and $\sigma$ be cuspidal automorphic representations of $\mathrm{U}(V)$ and $\mathrm{U}(W)$.

**Definition.** In the Bessel case, the *Bessel period* of $\varphi \in \pi$ and $f \in \sigma$ is
$$ \mathcal{B}(\varphi, f) = \int_{[\mathrm{U}(W)]} \int_{[N]} \varphi(nh)\, \overline{f(h)}\, \overline{\lambda(n)}\, dn\, dh. $$
It converges, since $\varphi$ decays rapidly. When $r = 0$, so that $\dim V = \dim W + 1$, it is the *Gross-Prasad period* $\int_{[\mathrm{U}(W)]} \varphi(h)\, \overline{f(h)}\, dh$.

**Definition.** In the Fourier-Jacobi case, $N$ maps onto a Heisenberg group, and $H$ has a Weil representation $\nu$ with theta functions $\theta(\cdot, \phi)$ ([the chapter on theta lifts](/learn/theta/)). The *Fourier-Jacobi period* is
$$ \mathcal{FJ}(\varphi, f, \phi) = \int_{[\mathrm{U}(W)]} \int_{[N]} \varphi(nh)\, \overline{f(h)}\, \overline{\theta(nh, \phi)}\, dn\, dh. $$

The functional `Bplus` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is $B^+(\varphi, F) = \int_{[\mathrm{U}(V_{\mathrm{top}})]} \int_{[N]} \varphi(h) F(n\iota(h)) \overline{\psi_N(n)}$, a global Bessel period. Its bottom period $P_0(F, u) = \int_{[\mathrm{U}(V_{0,0})]} F(\iota_0 h)\, u(h)\, dh$ is a Gross-Prasad period.

## Local multiplicity one

Let $F$ be a local field and keep the notation, with $\nu = \lambda$ in the Bessel case and $\nu$ the Weil representation of $H$ in the Fourier-Jacobi case. Let $\pi$ and $\sigma$ be irreducible smooth representations of $\mathrm{U}(V)$ and $\mathrm{U}(W)$.

**Definition.** A *Bessel functional* (or a Fourier-Jacobi functional) is an element of $\mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C})$.

**Theorem (local multiplicity one; Aizenbud, Gourevitch, Rallis and Schiffmann, 2010; Sun and Zhu, 2012; Gan, Gross and Prasad, 2012).** For all $\pi$ and $\sigma$,
$$ \dim \mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C}) \le 1. $$

The first two papers prove the case $r = 0$, over $p$-adic and archimedean fields. Gan, Gross and Prasad reduce the general case to it. The local component of a global Bessel period is a Bessel functional, so local multiplicity one makes the global period a product of local functionals up to a constant.

The condition `BurGapPos` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) uses local multiplicity one for Bessel functionals at the real place, in the form that a certain map has rank at most $1$.

## The Gan-Gross-Prasad conjectures

**Theorem (local Gan-Gross-Prasad conjecture; Beuzart-Plessis, 2016 and 2020; Gan and Ichino, 2016).** Let $(\pi, \sigma)$ run over the representations of the relevant pure inner forms $\mathrm{U}(V_\alpha) \times \mathrm{U}(W_\alpha)$ in a Vogan L-packet of a tempered L-parameter. Then $\mathrm{Hom}_H(\pi \otimes \bar\sigma \otimes \bar\nu, \mathbb{C}) \ne 0$ for exactly one pair $(\pi, \sigma)$, and an explicit character built from local root numbers determines this pair ([[local Gan-Gross-Prasad conjecture|458AXP8QBB]]).

Beuzart-Plessis proved the Bessel case for unitary groups. Gan and Ichino deduced the Fourier-Jacobi case from it by theta lifts.

**Theorem (global Gan-Gross-Prasad conjecture; Beuzart-Plessis, Liu, Zhang and Zhu, 2021; Beuzart-Plessis, Chaudouard and Zydor, 2022).** Let $\dim V = \dim W + 1$, and let $\pi$ and $\sigma$ be cuspidal automorphic representations of $\mathrm{U}(V)$ and $\mathrm{U}(W)$ whose base changes $\Pi$ and $\Sigma$ to $\mathrm{GL}$ are isobaric sums of distinct cuspidal representations. Then the following are equivalent:

1. $L(\frac12, \Pi \times \Sigma) \ne 0$;
2. for some Hermitian spaces $W' \subset V'$ of codimension one, with $\mathrm{U}(V') \times \mathrm{U}(W')$ an inner form of $\mathrm{U}(V) \times \mathrm{U}(W)$, and some cuspidal $(\pi', \sigma')$ with the same base changes $\Pi$ and $\Sigma$, the Gross-Prasad period is nonzero on $\pi' \otimes \sigma'$.

This is the [[global Gan-Gross-Prasad conjecture|NMNX13N4CD]] for unitary groups in codimension one. The refined form of Ichino and Ikeda gives $|\mathcal{B}(\varphi, f)|^2$ as the central L-value times a product of local integrals of matrix coefficients.

The statement `BesselPeriodGGP` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is local GGP at the real place. It lies in the formal layer and is not in the spine of the proof.

## Interlacing and the branching law for discrete series

For compact unitary groups, the Weyl branching law of [the chapter on representations](/learn/representations/) says that the irreducible representation of $\mathrm{U}(n)$ of highest weight $\lambda$ restricts to $\mathrm{U}(n-1)$ as the sum, each once, of the representations of highest weight $\mu$ with
$$ \lambda_1 \ge \mu_1 \ge \lambda_2 \ge \mu_2 \ge \dots \ge \mu_{n-1} \ge \lambda_n. $$

**Definition.** Two strictly decreasing sequences $a_1 > \dots > a_n$ and $b_1 > \dots > b_{n-1}$ are *interlaced* if $a_1 > b_1 > a_2 > \dots > b_{n-1} > a_n$.

A discrete series representation of $\mathrm{U}(p, q)$ has a Harish-Chandra parameter: $p + q$ distinct numbers in $\frac{p+q-1}{2} + \mathbb{Z}$, each with a sign that tells whether it belongs to the $p$ part or the $q$ part.

**Theorem (branching law for discrete series; He, 2017).** Let $W \subset V$ be Hermitian spaces for $\mathbb{C}/\mathbb{R}$, of codimension one, and let $\pi$ and $\sigma$ be discrete series of $\mathrm{U}(V)$ and $\mathrm{U}(W)$. Then $\mathrm{Hom}_{\mathrm{U}(W)}(\pi \otimes \bar\sigma, \mathbb{C}) \ne 0$ if and only if the Harish-Chandra parameters of $\pi$ and $\sigma$, with their signs, satisfy an explicit combinatorial condition. This is the local GGP conjecture for discrete series of real unitary groups.

When both groups are compact the condition is interlacing. The predicate `Interlaced` of [the Bessel seesaw chapter](/proof/bessel-seesaw/) is a sign form: merge the two Harish-Chandra parameters in decreasing order, each entry with a sign, and ask that two neighbours have equal signs exactly when they come from different lists.

## The descent of Ginzburg, Rallis and Soudry

**Theorem (Ginzburg, Rallis and Soudry, 2011).** Let $\Pi = \Pi_1 \boxplus \dots \boxplus \Pi_k$ be an isobaric sum of distinct conjugate self-dual cuspidal automorphic representations $\Pi_i$ of $\mathrm{GL}_{n_i}(\mathbb{A}_E)$, such that each Asai L-function $L(s, \Pi_i, \mathrm{As}^{\epsilon})$ has a pole at $s = 1$, for a sign $\epsilon$ that depends only on $n = \sum n_i$. Then a quasi-split unitary group $\mathrm{U}_n$ has a globally generic cuspidal automorphic representation $\sigma$ whose base change is $\Pi$. The representation $\sigma$ is the span of Bessel or Fourier-Jacobi coefficients of a residue of an Eisenstein series induced from $\Pi$ on a larger unitary group.

This construction is the *descent* of Ginzburg, Rallis and Soudry. Its steps alternate between Bessel and Fourier-Jacobi coefficients. The ascent of [the Bessel seesaw chapter](/proof/bessel-seesaw/) runs the same method in the other direction, with `Rung0`, `RungB` and `RungJ` passing from Fourier-Jacobi to Bessel periods and back, and the structure `HypothesesH'` of [the window bound](/proof/vwin/) has a weak descent input `DescWeak`.

## Orbit integrals and the relative trace formula

Let $H$ be a group over $F$ that acts on a variety $X$, and let $x \in X(F)$ with stabilizer $H_x$.

**Definition.** The *orbit integral* (or orbital integral) of $\Phi$ on $X(\mathbb{A}_F)$ at $x$ is $\int_{H_x(\mathbb{A}_F) \backslash H(\mathbb{A}_F)} \Phi(h^{-1} x)\, dh$.

**Example.** Let $H = \mathrm{U}(V)$ act on $X = V^n$, and let $T$ be Hermitian of size $n$ with $\det T \ne 0$. By Witt's theorem, the $x \in V(F)^n$ with Gram matrix $(x, x) = T$ form at most one $\mathrm{U}(V)(F)$-orbit. So the $T$-th Fourier coefficient of the theta integral of [the chapter on theta lifts](/learn/theta/#the-siegel-weil-formula) is one orbit integral.

**Definition (Jacquet).** Let $H_1, H_2 \subseteq G$, let $f \in C_c^\infty(G(\mathbb{A}_F))$, and let $K_f(x, y) = \sum_{\gamma \in G(F)} f(x^{-1}\gamma y)$. The *relative trace formula* is the equality of two expansions of $\int_{[H_1]} \int_{[H_2]} K_f(h_1, h_2)\, dh_1\, dh_2$: a spectral side, a sum over $\pi$ of products of an $H_1$-period and an $H_2$-period, and a geometric side, a sum over $H_1(F) \backslash G(F) / H_2(F)$ of relative orbit integrals.

The proofs of the global GGP conjecture compare two relative trace formulas (Jacquet and Rallis, 2011). The function `orb_T` of [the Siegel-Weil chapter](/proof/siegel-weil/), an average over a fundamental domain $D$ of a sum over the $X$ with $\mathrm{gram}(X, X) = -2T$, is an orbit integral in this sense. The proof uses no relative trace formula: it reaches periods by theta lifts and seesaw identities.

## Further reading

- W. T. Gan, B. Gross and D. Prasad, *Symplectic local root numbers, central critical L-values, and restriction problems in the representation theory of classical groups*, Astérisque 346 (2012), Sections 2 to 4, 12 to 17 and 24.
- D. Ginzburg, S. Rallis and D. Soudry, *The Descent Map from Automorphic Representations of GL(n) to Classical Groups* (2011), Chapters 2 and 3.
- H. Jacquet and S. Rallis, *On the Gross-Prasad conjecture for unitary groups*, in Clay Math. Proc. 13 (2011).
- R. Beuzart-Plessis, P.-H. Chaudouard and M. Zydor, *The global Gan-Gross-Prasad conjecture for unitary groups: the endoscopic case*, Publ. Math. IHES 135 (2022), Section 1.
