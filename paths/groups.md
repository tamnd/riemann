The proof works with a small number of matrix groups: $\mathrm{GL}_n$ over local fields, the symplectic group that carries the Weil representation, and unitary groups of Hermitian spaces over a CM field. Here we define these groups, their parabolic and compact subgroups, their adelic points, and the quotients $G(F)\backslash G(\mathbb{A}_F)$ on which automorphic forms live. The local Langlands laws, the theta correspondence and the Siegel-Weil formula all use them.

## General linear and symplectic groups

Let $k$ be a field and $n \ge 1$.

**Definition.** The *[[general linear group|0FCHE902D7]]* $\mathrm{GL}_n(k)$ is the group of invertible $n \times n$ matrices with entries in $k$. For a finite-dimensional vector space $V$ over $k$, $\mathrm{GL}(V)$ is the group of invertible linear maps $V \to V$. The *special linear group* $\mathrm{SL}_n(k)$ is the kernel of $\det : \mathrm{GL}_n(k) \to k^\times$.

**Definition.** A *[[symplectic space|PQ7JJY0VPH]]* over $k$ is a finite-dimensional vector space $W$ with a nondegenerate alternating bilinear form $\langle \cdot, \cdot \rangle$, that is, $\langle w, w \rangle = 0$ for each $w \in W$.

**Theorem (Darboux basis).** Let $W$ be a symplectic space over $k$. Then $\dim W = 2n$ is even, and $W$ has a basis $e_1, \dots, e_n, f_1, \dots, f_n$ with $\langle e_i, e_j \rangle = \langle f_i, f_j \rangle = 0$ and $\langle e_i, f_j \rangle = \delta_{ij}$ for all $i, j$ (Lang, Algebra, XV.8).

Such a basis gives *Darboux coordinates* on $W$. The subspaces $X = \langle e_1, \dots, e_n \rangle$ and $Y = \langle f_1, \dots, f_n \rangle$ are *Lagrangian*: each is isotropic of dimension $n$, and $W = X \oplus Y$.

**Definition.** The *[[symplectic group|X12FS2JAP0]]* $\mathrm{Sp}(W)$ is the group of $g \in \mathrm{GL}(W)$ with $\langle gw, gw' \rangle = \langle w, w' \rangle$ for all $w, w'$. In a Darboux basis it is
$$\mathrm{Sp}_{2n}(k) = \{ g \in \mathrm{GL}_{2n}(k) : g^{T} J g = J \}, \qquad J = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}.$$

**Example.** $\mathrm{Sp}_2(k) = \mathrm{SL}_2(k)$, since $g^T J g = (\det g) J$ for $g \in \mathrm{GL}_2(k)$.

The domain of the local Langlands map in [IsRecT](/step/is-rect-def/) is the set of irreducible representations of $\mathrm{GL}_n(E_w)$, and the [theta chapter](/proof/theta-matching/) fixes Darboux coordinates for the symplectic form on $X \otimes W$.

## Unitary groups

Let $E/F$ be a separable quadratic extension of fields with nontrivial automorphism $c$. Hermitian forms and their signatures are defined in [Chapter 1](/learn/algebra/).

**Definition.** Let $V = E^n$ with a Hermitian form $h(x, y) = x^{T} J c(y)$, where $J \in \mathrm{GL}_n(E)$ and $c(J)^{T} = J$. The *[[unitary group|0R9R0Y1HDK]]* of $V$ is
$$\mathrm{U}(V) = \mathrm{U}_J = \{ g \in \mathrm{GL}_n(E) : g^{T} J \, c(g) = J \}.$$
The same formula with $c(J)^{T} = -J$ defines the unitary group of a *skew-Hermitian* space. If $h$ is Hermitian, then $\delta h$ is skew-Hermitian for each $\delta \in E^\times$ with $c(\delta) = -\delta$, and both forms have the same unitary group.

As an algebraic group over $F$, $\mathrm{U}(V)$ has points $\mathrm{U}(V)(R) = \{ g \in \mathrm{GL}_n(E \otimes_F R) : g^T J c(g) = J \}$ for each $F$-algebra $R$. Over $E$ it becomes $\mathrm{GL}_n$. The determinant maps $\mathrm{U}(V)$ onto $\mathrm{U}(1) = \{ z \in E^\times : z \, c(z) = 1 \}$, and its kernel is the *special unitary group* $\mathrm{SU}(V)$.

**Definition.** Let $p + q = n$. The group $\mathrm{U}(p, q)$ is the unitary group of $\mathbb{C}^n$ over $\mathbb{R}$ for $J = \mathrm{diag}(1_p, -1_q)$. It is compact if and only if $p = 0$ or $q = 0$, and then it is the group $\mathrm{U}(n)$ of unitary matrices.

Now let $E$ be a CM field with maximal totally real subfield $F$ (see [Chapter 4](/learn/number-fields/)), and let $V$ be a Hermitian space over $E$. At each real place $v$ of $F$, the form $h$ has a signature $(p_v, q_v)$ and $\mathrm{U}(V)(F_v) \cong \mathrm{U}(p_v, q_v)$.

**Definition.** The Hermitian space $V$ is *definite* if $q_v = 0$ at each real place $v$ of $F$ (or $p_v = 0$ at each). Then $\mathrm{U}(V)$ is a *definite unitary group*: the group $\mathrm{U}(V)(F \otimes_{\mathbb{Q}} \mathbb{R}) = \prod_v \mathrm{U}(n)$ is compact.

**Proposition.** Let $V$ be a Hermitian space over $E$ and $W$ a skew-Hermitian space over $E$. Then $\operatorname{Tr}_{E/F}$ of the product form makes $V \otimes_E W$ a symplectic space over $F$ of dimension $2 \dim V \dim W$, and $\mathrm{U}(V) \times \mathrm{U}(W)$ maps into $\mathrm{Sp}(V \otimes_E W)$.

Each of the two groups is the centralizer of the other in $\mathrm{Sp}(V \otimes_E W)$, and Chapter 16 defines such *dual pairs*. The statement [TLiftK](/step/tlift-k-def/) takes a space $X$ with $J_X = 1$ of signature $(n, 0)$ and a skew-Hermitian $W$ with $iJ_W$ of signature $(d, 0)$, and [GeoOne](/step/geo-one-def/) is about a definite unitary group in an odd number of variables.

## Parabolic subgroups

Let $k$ be a field and $V = k^n$.

**Definition.** A *flag* in $V$ is a chain of subspaces $0 = V_0 \subsetneq V_1 \subsetneq \cdots \subsetneq V_r = V$. Its stabilizer $P$ in $\mathrm{GL}(V)$ is a *[[parabolic subgroup|Z2FEBW5MQM]]*. With $n_i = \dim V_i - \dim V_{i-1}$ and a basis adapted to the flag, $P$ is the group of block upper triangular matrices with diagonal blocks of sizes $n_1, \dots, n_r$. A full flag ($r = n$) gives the *[[Borel subgroup|5JSYA1JNCC]]* $B$ of upper triangular matrices.

**Definition.** Let $P$ be the stabilizer of a flag. The *Levi subgroup* $M$ is the group of block diagonal matrices, so $M \cong \mathrm{GL}_{n_1} \times \cdots \times \mathrm{GL}_{n_r}$. The *unipotent radical* $N$ is the group of block upper triangular matrices with identity blocks on the diagonal. Then $N$ is normal in $P$ and $P = M \ltimes N$ (the *Levi decomposition*).

For a reductive group $G$ over $k$ (defined below), a parabolic subgroup is a closed subgroup $P$ such that $G/P$ is a projective variety. Each such $P$ has a Levi decomposition $P = M \ltimes N$, with $N$ the largest normal unipotent subgroup of $P$ (Borel and Tits, 1965). For $\mathrm{U}(V)$ and $\mathrm{Sp}(W)$ the parabolic subgroups are the stabilizers of flags of isotropic subspaces.

**Definition.** Let $T \subset \mathrm{GL}_n$ be the diagonal torus. The *[[Weyl group|YT1ZJ2S4EE]]* is $N_G(T)/T$. For $\mathrm{GL}_n$ it is the symmetric group $S_n$, represented by the permutation matrices. A *Weyl element* is an element of $N_G(T)$ that represents an element of the Weyl group.

**Theorem (Bruhat decomposition).** Let $k$ be a field and $B \subset \mathrm{GL}_n(k)$ the upper triangular matrices. Then $\mathrm{GL}_n(k)$ is the disjoint union of the double cosets $BwB$, where $w$ runs over the permutation matrices (Bruhat; Borel, Linear Algebraic Groups, 14.12).

This is the *[[Bruhat decomposition|T91E86D0RH]]*.

**Definition (Siegel parabolic).** Let $W = E^{2n}$ be a skew-Hermitian space with $J = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}$, so $X = \langle e_1, \dots, e_n \rangle$ is a maximal isotropic subspace. The *Siegel parabolic* $P$ is the stabilizer of $X$ in $\mathrm{U}(W)$. Its Levi subgroup and unipotent radical are
$$M = \left\{ m(a) = \begin{pmatrix} a & 0 \\ 0 & c(a)^{-T} \end{pmatrix} : a \in \mathrm{GL}_n(E) \right\}, \qquad N = \left\{ n(\beta) = \begin{pmatrix} 1_n & \beta \\ 0 & 1_n \end{pmatrix} : \beta^{T} = c(\beta) \right\}.$$
So $M \cong \mathrm{GL}_n(E)$, and $N$ is isomorphic to the additive group of $n \times n$ Hermitian matrices. The matrix $w = J$ lies in $\mathrm{U}(W)$ and is the *Weyl element* of $P$: the double coset $PwP = PwN$ is open and dense in $\mathrm{U}(W)$.

The same matrices with $c$ trivial give the Siegel parabolic of $\mathrm{Sp}_{2n}$, with $N$ the symmetric matrices. The doubled space $V \oplus (-V)$ of a Hermitian space $V$ has the maximal isotropic subspace $\{(x, x)\}$, so its unitary group has a Siegel parabolic. The Siegel-Weil chapter writes the action of $m(a)$, $n(\beta)$ and $w$ on the Weil representation in [`TPar` and `TWeyl`](/proof/siegel-weil/), the [determinants chapter](/proof/determinants/) uses characters of Levi determinants, and the [Bessel periods](/proof/bessel-seesaw/) integrate over the unipotent radical of a flag.

## Reductive groups and maximal compact subgroups

**Definition.** Let $k$ be a field with algebraic closure $\bar{k}$. A linear algebraic group $G$ over $k$ is *[[reductive|2XS84PWE3S]]* if it is smooth and connected and $G_{\bar{k}}$ has no nontrivial connected normal unipotent subgroup.

**Example.** $\mathrm{GL}_n$, $\mathrm{SL}_n$, $\mathrm{Sp}_{2n}$ and $\mathrm{U}(V)$ are reductive. The group $B$ of upper triangular matrices in $\mathrm{GL}_n$, $n \ge 2$, is not reductive: the upper triangular unipotent matrices form a nontrivial connected normal unipotent subgroup.

Lie groups and Haar measure are defined in [Chapter 2](/learn/analysis/).

**Definition.** A *[[maximal compact subgroup|T2EB8R9HEV]]* of a locally compact group $G$ is a compact subgroup $K$ that is contained in no larger compact subgroup.

**Definition (Cartan involution).** Let $G \subset \mathrm{GL}_n(\mathbb{C})$ be the group of real points of a reductive algebraic group over $\mathbb{R}$, and assume that $G$ is stable under $g \mapsto \bar{g}^{T}$. The map $\theta(g) = (\bar{g}^{T})^{-1}$ is the *Cartan involution* of $G$. Its fixed points form the compact group $K = G \cap \mathrm{U}(n)$.

**Theorem (Cartan).** Let $G$ and $\theta$ be as above, with $K = G^\theta$ and $\mathfrak{p} = \{ X \in \operatorname{Lie}(G) : \bar{X}^{T} = X \}$. Then $K$ is a maximal compact subgroup of $G$, the map $K \times \mathfrak{p} \to G$, $(k, X) \mapsto k \exp(X)$, is a diffeomorphism, and each compact subgroup of $G$ is conjugate to a subgroup of $K$ (Knapp, Lie Groups Beyond an Introduction, VI.2).

This is the *[[Cartan decomposition|K7VVYFE9YJ]]* $G = K \exp(\mathfrak{p})$.

**Example.** The maximal compact subgroups of $\mathrm{GL}_n(\mathbb{R})$, $\mathrm{GL}_n(\mathbb{C})$, $\mathrm{Sp}_{2n}(\mathbb{R})$ and $\mathrm{U}(p, q)$ are $\mathrm{O}(n)$, $\mathrm{U}(n)$, $\mathrm{U}(n)$ and $\mathrm{U}(p) \times \mathrm{U}(q)$.

Over a nonarchimedean local field $F_v$ with ring of integers $\mathcal{O}_v$, the group $\mathrm{GL}_n(\mathcal{O}_v)$ is a maximal compact subgroup of $\mathrm{GL}_n(F_v)$, and each maximal compact subgroup is conjugate to it.

The statement [TLiftK](/step/tlift-k-def/) asks that the matrix $\theta_w$ at each infinite place be a Cartan involution for $J$, and the [local matching](/step/local-matching-def/) fixes the maximal compact subgroup `KInf`.

## Adelic points and compact open subgroups

Let $F$ be a number field. Adeles and local fields are defined in [Chapter 4](/learn/number-fields/).

**Definition.** Let $G$ be a linear algebraic group over $F$ with a model over $\mathcal{O}_F$. The group of *[[adelic points|M07YRPQPX4]]* $G(\mathbb{A}_F)$ is the restricted product of the groups $G(F_v)$ over all places $v$ with respect to the subgroups $G(\mathcal{O}_v)$. It is a locally compact group, and $G(F)$ embeds in it as a discrete subgroup.

**Definition.** Let $F_v$ be a nonarchimedean local field with uniformizer $\varpi$ and residue field $\mathbb{F}_q$. A *compact open subgroup* of $\mathrm{GL}_n(F_v)$ is a subgroup that is both compact and open. The groups
$$K_m = 1_n + \varpi^m M_n(\mathcal{O}_v), \qquad m \ge 1,$$
are compact open and form a basis of neighbourhoods of $1$. The group $K_1$ is the *first congruence subgroup*: it is the kernel of reduction $\mathrm{GL}_n(\mathcal{O}_v) \to \mathrm{GL}_n(\mathbb{F}_q)$.

**Definition.** The *Iwahori subgroup* $I \subset \mathrm{GL}_n(\mathcal{O}_v)$ is the inverse image of the upper triangular matrices $B(\mathbb{F}_q)$ under reduction modulo $\varpi$.

So $K_1 \subset I \subset \mathrm{GL}_n(\mathcal{O}_v)$, with $\mathrm{GL}_n(\mathcal{O}_v)/K_1 \cong \mathrm{GL}_n(\mathbb{F}_q)$ and $I/K_1 \cong B(\mathbb{F}_q)$.

**Theorem (Iwahori and Matsumoto).** $\mathrm{GL}_n(F_v)$ is the disjoint union of the double cosets $I w I$, where $w$ runs over the matrices $\mathrm{diag}(\varpi^{\lambda_1}, \dots, \varpi^{\lambda_n}) \, s$ with $\lambda \in \mathbb{Z}^n$ and $s$ a permutation matrix (Iwahori and Matsumoto, 1965).

The law `depth` of [IsRecT](/step/is-rect-def/) is about representations with a nonzero vector fixed by the first congruence subgroup `KOne`, and the [Galois row](/proof/galois-row/) proves local-global compatibility at places with Iwahori fixed vectors.

## Strong approximation

**Theorem (strong approximation).** Let $G$ be a simply connected, absolutely almost simple algebraic group over a number field $F$. Let $S$ be a finite set of places of $F$ such that $\prod_{v \in S} G(F_v)$ is not compact. Then $G(F)$ is dense in $G(\mathbb{A}_F^S)$, the restricted product over the places outside $S$ (Kneser and Platonov; Platonov and Rapinchuk, Algebraic Groups and Number Theory, 7.4).

**Example.** $\mathrm{SL}_n$ and $\mathrm{SU}(V)$ for $\dim V \ge 2$ satisfy the hypotheses. The group $\mathrm{U}(V)$ does not, since $\det$ maps it onto the torus $\mathrm{U}(1)$. For a definite $V$, the set $S$ must contain a finite place, because $\mathrm{SU}(V)(F_v)$ is compact at each real place.

**Remark.** For $G$ as in the theorem and $K \subset G(\mathbb{A}_{F,f})$ compact open, strong approximation with $S$ the infinite places gives $G(\mathbb{A}_F) = G(F) \, G(F \otimes \mathbb{R}) \, K$ when $G(F \otimes \mathbb{R})$ is not compact.

The literature records for theta lifting carry strong approximation for $\mathrm{SU}$ as the field `strongApproxSU` of [ThetaLocalInputs](/step/theta-local-inputs-def/).

## Quotients of finite volume

Let $G$ be a reductive group over a number field $F$. The group $G(F)$ is discrete in $G(\mathbb{A}_F)$, and the quotient $G(F)\backslash G(\mathbb{A}_F)$ carries a $G(\mathbb{A}_F)$-invariant measure.

**Definition.** A *[[fundamental domain|KNJA2NEZ9F]]* for $G(F)$ in $G(\mathbb{A}_F)$ is a measurable set $D$ such that the translates $\gamma D$, $\gamma \in G(F)$, cover $G(\mathbb{A}_F)$ and meet only in sets of measure zero. Then $\int_{G(F)\backslash G(\mathbb{A}_F)} f = \int_D f$ for each integrable $G(F)$-invariant $f$.

**Definition (Siegel set).** Let $P_0 = M_0 N_0$ be a minimal parabolic subgroup of $G$ over $F$, let $A_0$ be the identity component of the real points of the largest split central torus of $M_0$, and let $\Delta_0$ be the simple roots of $A_0$ in $N_0$. Let $K$ be a maximal compact subgroup of $G(\mathbb{A}_F)$ with $G(\mathbb{A}_F) = P_0(\mathbb{A}_F) K$. A *Siegel set* is a set
$$\mathfrak{S} = \omega \, A_0(t) \, K, \qquad A_0(t) = \{ a \in A_0 : \alpha(a) > t \text{ for each } \alpha \in \Delta_0 \},$$
with $\omega$ a compact subset of $N_0(\mathbb{A}_F) M_0(\mathbb{A}_F)^1$ and $t > 0$.

**Theorem (reduction theory).** For $t$ small enough and $\omega$ large enough, $G(\mathbb{A}_F) = G(F) \, \mathfrak{S}$ (Borel; Godement; see Moeglin and Waldspurger, Spectral Decomposition and Eisenstein Series, I.2).

**Theorem ([[Borel and Harish-Chandra|3B451RD8AJ]]).** Let $G$ be a reductive group over a number field $F$ with no nontrivial character $G \to \mathbb{G}_m$ defined over $F$. Then $G(F)\backslash G(\mathbb{A}_F)$ has *finite volume*. It is compact if and only if $G$ has no proper parabolic subgroup over $F$ (Borel and Harish-Chandra, 1962).

**Example.** Each character of $\mathrm{U}(V)$ factors through $\det : \mathrm{U}(V) \to \mathrm{U}(1)$, and $\mathrm{U}(1)$ has no nontrivial character over $F$. So $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_F)$ has finite volume. If $V$ is definite, then $V$ has no isotropic vector, so $\mathrm{U}(V)$ has no proper parabolic subgroup and the quotient is compact.

**Definition (height).** Let $P = MN$ be a parabolic subgroup of $G$ and $K$ a maximal compact subgroup of $G(\mathbb{A}_F)$ with the *[[Iwasawa decomposition|ZYVEVYBA41]]* $G(\mathbb{A}_F) = P(\mathbb{A}_F) K$. For the Siegel parabolic of $\mathrm{U}(W)$, the *height* of $g = n(\beta) m(a) k$ is $a(g) = |\det a|_{\mathbb{A}_E}$. It does not depend on the decomposition, it satisfies $a(pk) = a(p)$, and $a(\gamma g) = a(g)$ for $\gamma \in P(F)$ by the product formula.

On $\mathrm{GL}_n(\mathbb{A}_F)$ one also uses the norm $\|g\| = \prod_v \max_{i,j}(|g_{ij}|_v, |(g^{-1})_{ij}|_v)$. A function on $G(F)\backslash G(\mathbb{A}_F)$ is *of moderate growth* if it is bounded by a power of $\|g\|$.

The [Siegel-Weil chapter](/proof/siegel-weil/) fixes a fundamental domain, the standard maximal compact $K$ and a height $a$ with $a(pk) = |\det t|$, and it uses the finite volume of $\mathrm{U}(F)\backslash \mathrm{U}(\mathbb{A})$. The [determinants chapter](/proof/determinants/) proves that powers $a(g, 1)^t$ are integrable, and [HypsAlt is nonempty](/step/nonempty-hyps/) uses Siegel sets through the field `siegelSetUnitary`.

## Hermitian lattices and the mass formula

Let $E/F$ be a CM extension and $V$ a positive definite Hermitian space over $E$ of dimension $n$, with form $h$.

**Definition.** A *Hermitian lattice* in $V$ is a finitely generated $\mathcal{O}_E$-submodule $L \subset V$ that spans $V$ over $E$. Its *dual* is $L^\# = \{ x \in V : h(x, y) \in \mathcal{O}_E \text{ for each } y \in L \}$. The lattice is *self-dual* if $L^\# = L$.

**Definition.** Two lattices $L, L' \subset V$ are in the same *class* if $L' = \gamma L$ for some $\gamma \in \mathrm{U}(V)(F)$. They are in the same *genus* if $L'_v = g_v L_v$ with $g_v \in \mathrm{U}(V)(F_v)$ at each finite place $v$, where $L_v = L \otimes_{\mathcal{O}_F} \mathcal{O}_v$.

Let $K_L \subset \mathrm{U}(V)(\mathbb{A}_{F,f})$ be the stabilizer of $\prod_v L_v$. The classes in the genus of $L$ are in bijection with the finite set $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_{F,f}) / K_L$ (Shimura, 1964). The local classification of lattices is due to Jacobowitz (1962).

**Definition.** Since $V$ is definite, the group $\mathrm{U}(L') = \{ g \in \mathrm{U}(V)(F) : g L' = L' \}$ is finite. The *mass* of the genus of $L$ is
$$\operatorname{mass}(L) = \sum_{[L']} \frac{1}{|\mathrm{U}(L')|},$$
the sum over the classes $[L']$ in the genus. For the Haar measure with $\operatorname{vol}(\mathrm{U}(V)(F \otimes \mathbb{R}) \, K_L) = 1$, it is the volume of $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_F)$.

**Definition (local density).** Let $v$ be a finite place of $F$ with uniformizer $\varpi$ and residue field of order $q_v$. Let $S$ and $T$ be Hermitian matrices over $\mathcal{O}_{E_v}$ of sizes $m$ and $n$, and let $N_k$ be the number of $X \in M_{m \times n}(\mathcal{O}_{E_v}/\varpi^k)$ with $X^{T} S \, c(X) \equiv T \pmod{\varpi^k}$. The *local density* is
$$\alpha_v(S, T) = \lim_{k \to \infty} q_v^{k(n^2 - 2mn)} N_k.$$

**Theorem (Siegel mass formula).** Let $V$ be positive definite and $L \subset V$ a lattice with Gram matrix $S$. Then $\operatorname{mass}(L)$ is an explicit constant times the product of the factors $\alpha_v(S, S)^{-1}$ over the finite places $v$. Let $\chi$ be the quadratic character of $E/F$ (see [Chapter 6](/learn/l-functions/)). Outside a finite set of places, $\alpha_v(S, S)^{-1}$ is the $v$-factor of $\prod_{i=1}^{n} L(i, \chi^i)$ (Siegel, 1935, for quadratic forms; Gan, Hanke and Yu, 2001, for Hermitian lattices).

Siegel's theorem in its general form expresses the average over the genus of the number of representations of $T$ by the lattices $L'$ as a product of local densities. Chapter 16 states the Siegel-Weil formula, which is its analytic form.

The condition `GenusMassAt` in [HypsAlt](/step/hyps-alt-def/) is the mass of each positive definite Hermitian space of rank $2$, the self-dual lattice of [TLiftK](/step/tlift-k-def/) is a Hermitian lattice, and `SiegelWeilUnitaryConvergent` in the [Siegel-Weil chapter](/proof/siegel-weil/) contains Siegel's local densities.

## The Heisenberg and metaplectic groups

Let $W$ be a symplectic space over a local field $F$ of characteristic $0$.

**Definition.** The *[[Heisenberg group|ZZYCV5EX9J]]* of $W$ is the set $H(W) = W \times F$ with the product
$$(w, t)(w', t') = \left(w + w', \, t + t' + \tfrac{1}{2} \langle w, w' \rangle \right).$$
Its center is $\{0\} \times F$. The group $\mathrm{Sp}(W)$ acts on $H(W)$ by $g \cdot (w, t) = (gw, t)$, and this action is trivial on the center.

Let $\psi : F \to \mathbb{C}^\times$ be a nontrivial unitary character. By the Stone-von Neumann theorem (Chapter 16 states it), $H(W)$ has exactly one irreducible unitary representation $\rho_\psi$, up to isomorphism, on which the center acts by $\psi$. For $g \in \mathrm{Sp}(W)$ the representation $h \mapsto \rho_\psi(g \cdot h)$ also has central character $\psi$, so there is a unitary operator $\omega(g)$, unique up to a scalar of absolute value $1$, with $\omega(g) \rho_\psi(h) \omega(g)^{-1} = \rho_\psi(g \cdot h)$. This gives a projective representation of $\mathrm{Sp}(W)$.

**Theorem (Weil).** Let $F \ne \mathbb{C}$. There is a nonsplit central extension
$$1 \to \{\pm 1\} \to \mathrm{Mp}(W) \to \mathrm{Sp}(W) \to 1$$
such that the operators $\omega(g)$ can be chosen to form a true representation of $\mathrm{Mp}(W)$ (Weil, 1964).

**Definition.** The group $\mathrm{Mp}(W)$ is the *[[metaplectic group|8B0JM2YDE2]]*. For $F = \mathbb{R}$ it is the unique connected double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$. Double covers of topological groups are defined in [Chapter 2](/learn/analysis/), and Chapter 16 defines the Weil representation $\omega_\psi$ of $\mathrm{Mp}(W)$.

The [Siegel-Weil chapter](/proof/siegel-weil/) proves the metaplectic representation of the double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$ that intertwines the Heisenberg action, and the [Bessel periods](/proof/bessel-seesaw/) use the Heisenberg group of a symplectic space.

## Further reading

- Platonov and Rapinchuk, *Algebraic Groups and Number Theory*: Ch. 4 (reduction theory and finite volume), Ch. 5 (adele groups), Ch. 7 (strong approximation), Ch. 8 (class numbers and genera).
- Borel, *Linear Algebraic Groups*: Ch. IV (Borel subgroups, Bruhat decomposition) and Ch. V (parabolic subgroups over a field).
- Knapp, *Lie Groups Beyond an Introduction*: Ch. VI (Cartan decomposition, Iwasawa decomposition, maximal compact subgroups).
- Moeglin and Waldspurger, *Spectral Decomposition and Eisenstein Series*: I.1 and I.2 (adelic groups, heights, Siegel sets).
- Gan, Hanke and Yu, On an exact mass formula of Shimura, Duke Math. J. 107 (2001).
