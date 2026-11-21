The other chapters assume the algebra here: integers, groups, rings and modules, fields and Galois theory, matrices, Hermitian forms and tensor products. The window bound [VWin](/step/vwin-def/) counts the length of modules over $\mathbb{Z}_\ell$ and cuts fields out of $\mathbb{Q}(\zeta_N)$ by congruences. The theta branch works with Hermitian and skew-Hermitian forms, Gram matrices and determinants.

Here a ring is commutative with $1$, except a ring of matrices.

## Integers and congruences

**Definition.** Let $a, b \in \mathbb{Z}$. Then $a$ *[[divides|0PG2H7WKGG]]* $b$, written $a \mid b$, if $b = ac$ for some $c \in \mathbb{Z}$. A *prime* is an integer $p \ge 2$ whose only positive divisors are $1$ and $p$.

**Definition.** Let $a, b \in \mathbb{Z}$, not both $0$. The *[[greatest common divisor|0C8WYW4KYQ]]* $\gcd(a, b)$ is the largest integer $d$ with $d \mid a$ and $d \mid b$.

**Theorem ([[Bézout identity|0DQVHMYAGA]]).** Let $a, b \in \mathbb{Z}$, not both $0$. There are $x, y \in \mathbb{Z}$ with $ax + by = \gcd(a, b)$.

**Definition.** Fix $N \ge 1$. Two integers $a, b$ are *congruent modulo $N$*, written $a \equiv b \pmod N$, if $N \mid a - b$. The classes form the ring $\mathbb{Z}/N\mathbb{Z}$. Its *unit group* $(\mathbb{Z}/N\mathbb{Z})^\times$ is the set of classes $a \bmod N$ with $\gcd(a, N) = 1$. By the Bézout identity these are exactly the invertible classes. The order of $(\mathbb{Z}/N\mathbb{Z})^\times$ is *Euler's function* $\varphi(N)$.

The pairs of [VWin](/step/vwin-def/) are primes $q, d$ with $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$ and $q \mid d + 1$, and its fields are cut out by classes $a \in (\mathbb{Z}/N\mathbb{Z})^\times$ with $a \equiv \pm 1 \pmod{2^{e+2}}$. A gcd of depths appears in [CM divisibility](/proof/cm-divisibility/).

## Groups

**Definition.** A *[[group homomorphism|0JYTG5K9Y4]]* is a map $f : G \to H$ of groups with $f(xy) = f(x) f(y)$. Its *kernel* $\ker f = \{x \in G : f(x) = 1\}$ is a normal subgroup of $G$.

**Theorem (first isomorphism theorem).** Let $f : G \to H$ be a group homomorphism. Then $x \ker f \mapsto f(x)$ is an isomorphism $G / \ker f \to f(G)$.

**Definition.** Let $X$ be a set with a structure (a group, a field, a vector space with a form). The *[[automorphism group|0K1SCPBNKJ]]* $\mathrm{Aut}(X)$ is the group of bijections $X \to X$ that preserve the structure and whose inverses preserve it, under composition.

**Definition.** A group $G$ is *[[cyclic|0KVGH0J5B3]]* if $G = \{g^k : k \in \mathbb{Z}\}$ for some $g \in G$, a *generator*. Each cyclic group is isomorphic to $\mathbb{Z}$ or to $\mathbb{Z}/n\mathbb{Z}$ for one $n \ge 1$.

**Definition.** Let $A$ be a finite abelian group. A *[[character of an abelian group|H1WNVN5V7F]]* $A$ is a homomorphism $\chi : A \to \mathbb{C}^\times$. Its values are roots of unity. The characters of $A$ form a group $\widehat{A}$ under pointwise product, with unit the *trivial character* $1$.

**Proposition.** Let $A$ be a finite abelian group. Then $\widehat{A} \cong A$ (not canonically), and for $\chi \in \widehat{A}$,
$$\sum_{a \in A} \chi(a) = \begin{cases} |A| & \text{if } \chi = 1, \\ 0 & \text{otherwise.} \end{cases}$$

**Example.** Let $A = \mathbb{Z}/n\mathbb{Z}$. A character $\chi$ is fixed by $\chi(1)$, which can be any $n$-th root of unity in $\mathbb{C}$. A *Dirichlet character* modulo $N$ is a character of $(\mathbb{Z}/N\mathbb{Z})^\times$; Chapter 6 defines it.

The statement [GeoOne](/step/geo-one-def/) uses a surjection $\theta : J \to \mathbb{Z}/\ell^m$ and a nontrivial character of $\mathbb{Z}/\ell^m$. The metaplectic cover of the [Siegel-Weil chapter](/proof/siegel-weil/) is a covering homomorphism with a kernel of two elements, and the field of [VWin](/step/vwin-def/) is described by automorphisms of $\mathbb{Q}(\zeta_N)$.

## Multisets

**Definition.** A *[[multiset|MYJ8Y050J0]]* on a set $S$ is a function $m : S \to \mathbb{Z}_{\ge 0}$ with finite support. The value $m(s)$ is the *multiplicity* of $s$. One writes a multiset as a list in braces, for example $\{0, 0, 1\}$ for $m(0) = 2$, $m(1) = 1$.

The Galois representation of [Row0b](/step/row0b-def/) comes with a multiset $HT(\tau)$ of integers for each embedding $\tau$: its Hodge-Tate weights, repeated with multiplicity.

## Rings, ideals and modules

**Definition.** An *[[ideal|096Z9MP2ME]]* of a ring $R$ is an additive subgroup $I \subseteq R$ with $rI \subseteq I$ for each $r \in R$. The *quotient ring* $R/I$ is the set of cosets $r + I$ with the induced operations. The ideal $I$ is *prime* if $R/I$ is an integral domain, and *maximal* if $R/I$ is a field.

**Definition.** A *[[module|0NZ8JA25WK]]* over $R$ is an abelian group $M$ with a map $R \times M \to M$, $(r, m) \mapsto rm$, that is bilinear and satisfies $1m = m$ and $(rs)m = r(sm)$. A $\mathbb{Z}$-module is an abelian group.

**Definition.** Let $R$ be an integral domain and $M$ an $R$-module. An element $m \in M$ is *torsion* if $rm = 0$ for some $r \ne 0$. The torsion elements form the *[[torsion subgroup|0DBWXQRXQJ]]* $M_{\mathrm{tors}}$. The module is *torsion free* if $M_{\mathrm{tors}} = 0$. A group $G$ has *no torsion* if its only element of finite order is $1$.

**Definition.** A module $M$ is *simple* if $M \ne 0$ and its only submodules are $0$ and $M$. A *[[composition series|0XV2A49X6Q]]* of $M$ is a chain $0 = M_0 \subsetneq M_1 \subsetneq \dots \subsetneq M_n = M$ of submodules with each $M_i / M_{i-1}$ simple.

**Theorem (Jordan-Hölder).** Any two composition series of $M$ have the same number $n$ of steps, and the same quotients up to isomorphism and order.

**Definition.** The *[[length of a module|CZSCNZH8VY]]* $M$, written $\operatorname{len}_R M$, is the number $n$ of steps of a composition series. If $M$ has no composition series, $\operatorname{len}_R M = \infty$. If $N \subseteq M$, then $\operatorname{len} M = \operatorname{len} N + \operatorname{len} M/N$.

Fix a prime $\ell$. Chapter 4 defines the ring $\mathbb{Z}_\ell$ of $\ell$-adic integers and the field $\mathbb{Q}_\ell$. Here it is enough to know that $\mathbb{Z}_\ell$ is a principal ideal domain, that its nonzero ideals are $\ell^k \mathbb{Z}_\ell$, and that $\mathbb{Z}_\ell / \ell \mathbb{Z}_\ell = \mathbb{F}_\ell$.

**Proposition ($\mathbb{Z}_\ell$-modules).** The only simple $\mathbb{Z}_\ell$-module is $\mathbb{F}_\ell$. So a $\mathbb{Z}_\ell$-module $M$ of finite length is finite, and $\#M = \ell^{\operatorname{len} M}$.

**Example.** $\operatorname{len} \mathbb{Z}_\ell/\ell^3 = 3$. The module $\mathbb{Q}_\ell / \mathbb{Z}_\ell$ has infinite length, because it contains the chain $\ell^{-k}\mathbb{Z}_\ell / \mathbb{Z}_\ell$, $k \ge 0$.

The window bound [VWin](/step/vwin-def/) bounds $\sum_\ell \log \ell \cdot \operatorname{len}_{\mathbb{Z}_\ell} \text{Ш}$ for Tate-Shafarevich groups with coefficients in a twist of $\mathbb{Q}_\ell/\mathbb{Z}_\ell$; for a finite Ш this term is $\log \# \text{Ш}$. The statement [GeoOne](/step/geo-one-def/) asks for an open compact subgroup with no torsion, and the [CM divisibility](/proof/cm-divisibility/) chapter works modulo an ideal of a $p$-adically complete ring.

## Polynomials and power series

**Definition.** The *polynomial ring* $R[X]$ is the set of finite sums $\sum_i a_i X^i$ with $a_i \in R$. A nonzero polynomial has a *degree* (the largest $i$ with $a_i \ne 0$) and a *leading coefficient* $a_{\deg}$. It is *monic* if its leading coefficient is $1$. Over a field $k$, a nonconstant polynomial is *[[irreducible|03FKX7Z5DC]]* if it is not a product of two polynomials of smaller degree.

**Definition.** The ring of *[[formal power series|033WGN00BF]]* $R[[X_1, \dots, X_d]]$ is the set of all formal sums $\sum_\alpha a_\alpha X^\alpha$ over multi-indices $\alpha \in \mathbb{Z}_{\ge 0}^d$, with the product of polynomials. No convergence is asked.

The prime labels of [Green](/step/green-def/) are monic irreducible polynomials over $\mathbb{Z}/g$ with nonzero constant term. A formal group law, in [CM divisibility](/proof/cm-divisibility/), is a $d$-tuple of power series in $X_1, \dots, X_d, Y_1, \dots, Y_d$.

## Fields and extensions

**Definition.** A *[[field extension|0EQWVHF3W5]]* $L/K$ is a field $L$ that contains the field $K$. Its *[[degree|0EAJ2XXADC]]* $[L : K]$ is the dimension of $L$ as a $K$-vector space. For $K \subseteq L \subseteq M$, the *tower law* is $[M : K] = [M : L][L : K]$.

**Definition.** Let $L/K$ be an extension. An element $\alpha \in L$ is *algebraic* over $K$ if $f(\alpha) = 0$ for some nonzero $f \in K[X]$. Its *[[minimal polynomial|03NDVCSHSB]]* is the monic $f \in K[X]$ of least degree with $f(\alpha) = 0$. It is irreducible, it divides each $g \in K[X]$ with $g(\alpha) = 0$, and $[K(\alpha) : K] = \deg f$.

**Definition.** A field $\Omega$ is *algebraically closed* if each nonconstant polynomial in $\Omega[X]$ has a root in $\Omega$. An *[[algebraic closure|0X6AB5P3G1]]* of $K$ is an extension $\Omega/K$ that is algebraically closed and in which each element is algebraic over $K$.

**Theorem (Steinitz).** Each field $K$ has an algebraic closure $\overline{K}$, and it is unique up to an isomorphism that is the identity on $K$. Examples in the proof are $\overline{\mathbb{Q}}_\ell$ and $\overline{\mathbb{F}}_g$.

### Finite fields

**Theorem.** Let $p$ be a prime and $q = p^d$ with $d \ge 1$. There is a field $\mathbb{F}_q$ with $q$ elements, and it is unique up to isomorphism: it is the set of roots of $X^q - X$ in $\overline{\mathbb{F}}_p$. Each *[[finite field|0ZXZ82FTX2]]* is one of these. The subfields of $\mathbb{F}_{p^n}$ are the $\mathbb{F}_{p^d}$ with $d \mid n$. The group $\mathbb{F}_q^\times$ is cyclic of order $q - 1$.

**Definition.** Let $q$ be a power of $p$ and $d \ge 1$. The *[[Frobenius automorphism|0CGCPX8Z70]]* of $\mathbb{F}_{q^d}$ over $\mathbb{F}_q$ is $\phi(x) = x^q$. It is a field automorphism, and it fixes exactly $\mathbb{F}_q$.

**Proposition.** The group of automorphisms of $\mathbb{F}_{q^d}$ that fix $\mathbb{F}_q$ is cyclic of order $d$, generated by $\phi$. Let $x \in \mathbb{F}_{q^d}$. Its *Frobenius conjugates* $x, x^q, \dots, x^{q^{d-1}}$ are the roots of its minimal polynomial over $\mathbb{F}_q$, each repeated $d / \deg$ times. They are distinct if and only if $\mathbb{F}_q(x) = \mathbb{F}_{q^d}$.

The statement [Green](/step/green-def/) parametrizes the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$ by monic irreducible polynomials of degree $d$ over $\mathbb{F}_g$, and its value formula sums a character over the Frobenius conjugates $z^{g^i}$. Its proof in [GreenOfRegular](/step/green-of-regular/) uses the minimal polynomial of an $x$ with $x^{g^d} = x$.

### Roots of unity

**Definition.** Let $K$ be a field and $n \ge 1$. An *$n$-th root of unity* in $K$ is an element $\zeta$ with $\zeta^n = 1$. They form a finite cyclic group $\mu_n(K)$. A *[[primitive root of unity|0EHM5ZP5QH]]* of order $n$ is a $\zeta$ whose order in $K^\times$ is exactly $n$.

**Example.** In $\mathbb{C}$, the primitive $n$-th roots of unity are $e^{2\pi i k/n}$ with $\gcd(k, n) = 1$.

The statement `IsChiField` of [VWin](/step/vwin-def/) fixes a primitive $N$-th root of unity $\zeta$ in $\mathbb{Q}(\zeta_N)$, and Lemma K of [the window bound](/proof/vwin/) asks for a field that contains a primitive root of unity of order $l$.

## Galois theory

**Definition.** Let $L/K$ be a finite extension, and let $\mathrm{Aut}(L/K)$ be the group of field automorphisms of $L$ that fix $K$. Then $|\mathrm{Aut}(L/K)| \le [L : K]$. The extension is a *[[Galois extension|0QMZAQ6QQ4]]* if equality holds. Then $\mathrm{Gal}(L/K) = \mathrm{Aut}(L/K)$ is its *Galois group*. For a subgroup $H$, the *[[fixed field|0J1E5ZRZRM]]* is $L^H = \{x \in L : h(x) = x \text{ for each } h \in H\}$.

**Theorem ([[fundamental theorem of Galois theory|0T1Q8D0FW8]]).** Let $L/K$ be a finite Galois extension with group $G$. The maps $H \mapsto L^H$ and $M \mapsto \mathrm{Gal}(L/M)$ are inverse bijections between the subgroups of $G$ and the fields $M$ with $K \subseteq M \subseteq L$. The extension $L^H/K$ is Galois if and only if $H$ is normal in $G$, and then $\mathrm{Gal}(L^H/K) \cong G/H$.

Chapter 4 shows that $\mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q}) \cong (\mathbb{Z}/N\mathbb{Z})^\times$, where $a$ acts by $\zeta \mapsto \zeta^a$. The field $E$ of `IsChiField` in [VWin](/step/vwin-def/) is the fixed field of the subgroup of classes $a$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$ and two Jacobi symbols equal to $1$.

## Matrices

Let $R$ be a ring. $M_{m \times n}(R)$ is the set of $m \times n$ matrices, and $M_n(R) = M_{n \times n}(R)$. The *[[transpose|09DXWYRD43]]* of $A = (a_{ij})$ is $A^T = (a_{ji})$, and $(AB)^T = B^T A^T$.

**Definition.** The *[[determinant|00KDZRW4C0]]* of $A \in M_n(R)$ is
$$\det A = \sum_{\sigma \in S_n} \operatorname{sgn}(\sigma) \prod_{i=1}^n a_{i, \sigma(i)}.$$
The *[[trace of a matrix|0XC1RDBY7A]]* is $\operatorname{tr} A = \sum_i a_{ii}$.

**Proposition.** $\det(AB) = \det A \det B$, $\det A^T = \det A$, and $\operatorname{tr}(AB) = \operatorname{tr}(BA)$. A matrix $A$ is invertible in $M_n(R)$ if and only if $\det A \in R^\times$. The invertible matrices form the group $\mathrm{GL}_n(R)$.

**Definition.** The *[[characteristic polynomial|0VSSPAFM2C]]* of $A \in M_n(R)$ is $\chi_A(X) = \det(X \cdot 1 - A)$. It is monic of degree $n$, its coefficient of $X^{n-1}$ is $-\operatorname{tr} A$, and its constant term is $(-1)^n \det A$.

**Definition.** Let $A \in M_{m \times n}(R)$ and $s \le \min(m, n)$. A *[[minor|0BT9BYWVRY]]* of size $s$ is the determinant of the submatrix on $s$ rows and $s$ columns. The *leading principal minor* $\Delta_s(A)$ is the minor on the first $s$ rows and the first $s$ columns.

**Proposition.** Let $x \in M_{d \times n}(R)$ with $n \le d$, and let $b \in M_n(R)$ be upper triangular with diagonal $b_{11}, \dots, b_{nn}$. Then $\Delta_s(xb) = \Delta_s(x) \, b_{11} \cdots b_{ss}$. For each $g \in \mathrm{GL}_n(R)$, $\Delta_n(xg) = \Delta_n(x) \det g$.

**Definition.** A *[[block matrix|0ASDFEQS6P]]* is a matrix written as an array of submatrices, for example $\begin{pmatrix} A & B \\ C & D \end{pmatrix}$ with $A$ of size $a \times a$ and $D$ of size $b \times b$. If $C = 0$, then $\det \begin{pmatrix} A & B \\ 0 & D \end{pmatrix} = \det A \det D$.

**Definition.** A matrix $A \in M_n(R)$ is *[[nilpotent|07BSPZPSMF]]* if $A^k = 0$ for some $k \ge 1$. Over a field, $A$ is nilpotent if and only if $\chi_A = X^n$, and then $A^n = 0$.

**Example.** $\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$ is nilpotent. The matrices $\begin{pmatrix} 1 & * \\ 0 & 1 \end{pmatrix}$ with blocks of sizes $a$ and $d - a$ form a subgroup of $\mathrm{GL}_d$.

The only determinants in [block determinants](/proof/determinants/) are leading principal minors: the test vector at infinity is $\prod_s \Delta_s^{\nu_s - \nu_{s+1}}$, and the proposition above is the reason that it is a highest weight vector. The cuspidal condition of [Green](/step/green-def/) averages over the block unipotent matrices above, [GeoOne](/step/geo-one-def/) asks that a Frobenius characteristic polynomial divide a power, and [CM divisibility](/proof/cm-divisibility/) shows that a dual Frobenius matrix is nilpotent.

## Hermitian and skew-Hermitian forms

Let $E$ be a field of characteristic $\ne 2$ with an automorphism $\sigma$ of order $1$ or $2$, and let $F = E^\sigma$ be its fixed field. In the proof, $E$ is a CM field, $F = E^+$ and $\sigma$ is the complex conjugation (Chapter 4). Let $V$ be an $E$-vector space of dimension $n$.

**Definition.** A *sesquilinear form* on $V$ is a map $h : V \times V \to E$ that is linear in the first variable, additive in the second, and satisfies $h(x, ay) = \sigma(a) h(x, y)$. It is a *[[Hermitian form|8NJ7XY6F1S]]* if $h(y, x) = \sigma(h(x, y))$, and a *skew-Hermitian form* if $h(y, x) = -\sigma(h(x, y))$. If $\sigma = 1$ these are the symmetric and the alternating *bilinear forms*.

**Definition.** Let $v_1, \dots, v_k \in V$. Their *[[Gram matrix|00SPJSDT3Z]]* is $J = (h(v_i, v_j))_{i, j} \in M_k(E)$. If $v_1, \dots, v_n$ is a basis, then $h(x, y) = x^T J \sigma(y)$ in coordinates. The form is Hermitian if and only if $\sigma(J_{ji}) = J_{ij}$ for all $i, j$, and skew-Hermitian if and only if $\sigma(J_{ji}) = -J_{ij}$. A change of basis by $g \in \mathrm{GL}_n(E)$ replaces $J$ by $g^T J \sigma(g)$.

**Definition.** The form $h$ is *[[nondegenerate|01NHFZF2SK]]* if $h(x, y) = 0$ for each $y$ implies $x = 0$. This holds if and only if $\det J \ne 0$ for the Gram matrix $J$ of one basis.

**Definition.** Let $W \subseteq V$ be a subspace. Its *[[orthogonal complement|0XJXTBCB2T]]* is $W^\perp = \{x \in V : h(x, w) = 0 \text{ for each } w \in W\}$. The sum $V = W_1 \oplus W_2$ is an *orthogonal sum* if $h(W_1, W_2) = 0$.

**Proposition.** Let $h$ be nondegenerate. Then $\dim W^\perp = n - \dim W$. If the restriction of $h$ to $W$ is nondegenerate, then $V = W \oplus W^\perp$ is an orthogonal sum.

**Definition.** A vector $x \ne 0$ is *isotropic* if $h(x, x) = 0$. A *[[hyperbolic plane|1X5PZSK44P]]* is a space of dimension $2$ with a basis $x, y$ such that $h(x, x) = h(y, y) = 0$ and $h(x, y) = 1$.

**Proposition.** Let $h$ be a nondegenerate Hermitian or skew-Hermitian form and $x \in V$ an isotropic vector. Then $x$ lies in a hyperbolic plane $H \subseteq V$, and $V = H \oplus H^\perp$ with $h$ nondegenerate on $H^\perp$.

Now let $E = \mathbb{C}$ with complex conjugation, or $E = \mathbb{R}$ with $\sigma = 1$, and let $h$ be Hermitian. The form is *[[positive definite|0KX66CZMBB]]* if $h(x, x) > 0$ for each $x \neq 0$.

**Theorem (Sylvester's law of inertia).** $V$ has a basis $e_1, \dots, e_n$ with $h(e_i, e_j) = 0$ for $i \ne j$ and $h(e_i, e_i) \in \{1, -1, 0\}$. The number $p$ of $i$ with $h(e_i, e_i) = 1$ and the number $q$ with $h(e_i, e_i) = -1$ do not depend on the basis.

**Definition.** The pair $(p, q)$ is the *[[signature|07EZA80NEH]]* of $h$. The form is nondegenerate if and only if $p + q = n$, positive definite if and only if the signature is $(n, 0)$, and *definite* if the signature is $(n, 0)$ or $(0, n)$. For a skew-Hermitian form $h$ over $\mathbb{C}$, the form $ih$ is Hermitian, and the signature of $h$ is that of $ih$.

The spaces of [TLiftK](/step/tlift-k-def/) have Gram matrices $J_X = 1$, Hermitian and positive definite at each infinite place, and $J_W = \delta \cdot 1$, skew-Hermitian with $iJ$ of signature $(d, 0)$. The recursion steps of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) split a hyperbolic plane off a space and keep its orthogonal complement. The [Siegel-Weil chapter](/proof/siegel-weil/) takes orbit integrals over nondegenerate Hermitian matrices $T$, and the seesaw of [the Bessel seesaw](/proof/bessel-seesaw/) uses an orthogonal sum $X = T \oplus L''$.

## Tensor products and coinvariants

**Definition.** Let $M, N$ be $R$-modules. Their *direct sum* $M \oplus N$ is the set of pairs $(m, n)$ with componentwise operations. Their *[[tensor product of modules|F0HQXQ0HCD]]* is an $R$-module $M \otimes_R N$ with a bilinear map $(m, n) \mapsto m \otimes n$, such that for each bilinear map $\beta : M \times N \to P$ there is exactly one linear map $\bar\beta : M \otimes_R N \to P$ with $\bar\beta(m \otimes n) = \beta(m, n)$.

**Definition.** A *pure tensor* is an element of the form $m \otimes n$. The pure tensors generate $M \otimes_R N$, but not every element is a pure tensor.

**Example.** In $k^2 \otimes_k k^2$, the element $e_1 \otimes e_1 + e_2 \otimes e_2$ is not a pure tensor.

**Definition.** Let a group $G$ act linearly on a vector space $V$ over $k$. The space of *coinvariants* is $V_G = V / \operatorname{span}\{gv - v : g \in G, v \in V\}$. A linear form $\lambda : V \to k$ factors through $V_G$ if and only if $\lambda(gv) = \lambda(v)$ for all $g, v$.

At each good place, [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) asks that the kernel of a local map $p_v$ be exactly a space of coinvariants, so that the invariant linear forms factor through $p_v$. Its matching condition compares pure tensors $\bigotimes_v \Phi_v$ in $\Pi_\infty \otimes \bigotimes_{v \in T'} \Pi_v$; see [the theta matching](/proof/theta-matching/).

## Zorn's lemma

**Theorem ([[Zorn's lemma|04RXTQA5ZA]]).** Let $P$ be a nonempty partially ordered set in which each chain has an upper bound in $P$. Then $P$ has a maximal element.

Zorn's lemma gives a basis of each vector space, a maximal ideal in each nonzero ring, and the algebraic closure of each field.

The proof `projEx` in [block determinants](/proof/determinants/) uses Zorn's lemma to find, for a nonzero automorphic form, an irreducible representation $U'$ and an equivariant projection onto $U'$ that does not kill the form.

## Further reading

- J.-P. Serre, *A Course in Arithmetic*, Chapter I (finite fields) and Chapter IV (quadratic forms).
- S. Lang, *Algebra*, Chapters I to VI (groups, rings, modules, polynomials, fields, Galois theory) and Chapter XVI (tensor products).
- M. Atiyah and I. Macdonald, *Introduction to Commutative Algebra*, Chapters 1, 2 and 6 (ideals, modules, length).
- W. Scharlau, *Quadratic and Hermitian Forms*, Chapters 1 and 7.
- R. Lidl and H. Niederreiter, *Finite Fields*, Chapters 1 and 2.
