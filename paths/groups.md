The proof uses $\mathrm{GL}_n$ over local fields, the symplectic group of the Weil representation, and unitary groups over a CM field. Here we define them, their parabolic and compact subgroups, their adelic points, and the quotients $G(F)\backslash G(\mathbb{A}_F)$ that carry automorphic forms.

## General linear and symplectic groups

Let $k$ be a field and $n \ge 1$.

**Definition.** The *[[general linear group|0FCHE902D7]]* $\mathrm{GL}_n(k)$ is the group of invertible $n \times n$ matrices over $k$, and $\mathrm{GL}(V)$ is the group of invertible linear maps of a finite-dimensional $k$-vector space $V$. The *special linear group* $\mathrm{SL}_n(k)$ is the kernel of $\det$.

**Definition.** A *[[symplectic space|PQ7JJY0VPH]]* over $k$ is a finite-dimensional vector space $W$ with a nondegenerate alternating bilinear form $\langle \cdot, \cdot \rangle$, that is, $\langle w, w \rangle = 0$ for each $w$.

**Theorem (Darboux basis).** A symplectic space $W$ has even dimension $2n$ and a basis $e_1, \dots, e_n, f_1, \dots, f_n$ with $\langle e_i, e_j \rangle = \langle f_i, f_j \rangle = 0$ and $\langle e_i, f_j \rangle = \delta_{ij}$ (Lang, Algebra, XV.8).

Such a basis gives *Darboux coordinates* on $W$, and $W = X \oplus Y$ with $X = \langle e_i \rangle$ and $Y = \langle f_i \rangle$ *Lagrangian*: isotropic of dimension $n$.

**Definition.** The *[[symplectic group|X12FS2JAP0]]* $\mathrm{Sp}(W)$ is the group of $g \in \mathrm{GL}(W)$ that preserve $\langle \cdot, \cdot \rangle$. In a Darboux basis it is
$$\mathrm{Sp}_{2n}(k) = \{ g \in \mathrm{GL}_{2n}(k) : g^{T} J g = J \}, \qquad J = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}.$$

**Example.** $\mathrm{Sp}_2 = \mathrm{SL}_2$, since $g^T J g = (\det g) J$ for $g \in \mathrm{GL}_2(k)$.

[IsRecT](/step/is-rect-def/) is about irreducible representations of $\mathrm{GL}_n(E_w)$, and the [theta chapter](/proof/theta-matching/) fixes Darboux coordinates on $X \otimes W$.

## Unitary groups

Let $E/F$ be a separable quadratic extension with nontrivial automorphism $c$; [Chapter 1](/learn/algebra/) defines Hermitian forms and signatures.

**Definition.** Let $V = E^n$ with the Hermitian form $h(x, y) = x^{T} J c(y)$, where $J \in \mathrm{GL}_n(E)$ and $c(J)^{T} = J$. The *[[unitary group|0R9R0Y1HDK]]* of $V$ is
$$\mathrm{U}(V) = \mathrm{U}_J = \{ g \in \mathrm{GL}_n(E) : g^{T} J \, c(g) = J \}.$$
With $c(J)^{T} = -J$ the same formula defines the unitary group of a *skew-Hermitian* space. If $\delta \in E^\times$ and $c(\delta) = -\delta$, then $\delta h$ is skew-Hermitian with the same unitary group.

As an algebraic group over $F$, $\mathrm{U}(V)$ becomes $\mathrm{GL}_n$ over $E$. The determinant maps it onto $\mathrm{U}(1) = \{ z \in E^\times : z \, c(z) = 1 \}$, with kernel the *special unitary group* $\mathrm{SU}(V)$.

**Definition.** For $p + q = n$, $\mathrm{U}(p, q)$ is the unitary group of $\mathbb{C}^n$ over $\mathbb{R}$ for $J = \mathrm{diag}(1_p, -1_q)$. It is compact if and only if $pq = 0$, and then it is the group $\mathrm{U}(n)$ of unitary matrices.

Now let $E$ be a CM field with maximal totally real subfield $F$ ([Chapter 4](/learn/number-fields/)) and $V$ a Hermitian space over $E$. At a real place $v$ of $F$, $h$ has a signature $(p_v, q_v)$ and $\mathrm{U}(V)(F_v) \cong \mathrm{U}(p_v, q_v)$.

**Definition.** $V$ is *definite* if $q_v = 0$ at each real place $v$ (or $p_v = 0$ at each). Then $\mathrm{U}(V)$ is a *definite unitary group*, and $\mathrm{U}(V)(F \otimes_{\mathbb{Q}} \mathbb{R}) = \prod_v \mathrm{U}(n)$ is compact.

**Proposition.** Let $V$ be a Hermitian and $W$ a skew-Hermitian space over $E$. Then $\operatorname{Tr}_{E/F}$ of the product form makes $V \otimes_E W$ a symplectic space over $F$ of dimension $2 \dim V \dim W$, and $\mathrm{U}(V) \times \mathrm{U}(W)$ maps into $\mathrm{Sp}(V \otimes_E W)$.

The two groups are each other's centralizers in $\mathrm{Sp}(V \otimes_E W)$, a *dual pair* (Chapter 16). [TLiftK](/step/tlift-k-def/) takes $J_X = 1$ of signature $(n, 0)$ and a skew-Hermitian $W$ with $iJ_W$ of signature $(d, 0)$, and [GeoOne](/step/geo-one-def/) a definite unitary group in an odd number of variables.

## Parabolic subgroups

Let $V = k^n$.

**Definition.** A *flag* in $V$ is a chain $0 = V_0 \subsetneq V_1 \subsetneq \cdots \subsetneq V_r = V$. Its stabilizer $P$ in $\mathrm{GL}(V)$ is a *[[parabolic subgroup|Z2FEBW5MQM]]*: in an adapted basis, the block upper triangular matrices with diagonal blocks of sizes $n_i = \dim V_i - \dim V_{i-1}$. A full flag ($r = n$) gives the *[[Borel subgroup|5JSYA1JNCC]]* $B$ of upper triangular matrices.

**Definition.** For such $P$, the *Levi subgroup* $M \cong \mathrm{GL}_{n_1} \times \cdots \times \mathrm{GL}_{n_r}$ is the block diagonal matrices, and the *unipotent radical* $N$ is the block upper triangular matrices with identity diagonal blocks. Then $N$ is normal in $P$ and $P = M \ltimes N$ (the *Levi decomposition*).

For a reductive group $G$ over $k$ (defined below), a parabolic subgroup is a closed subgroup $P$ with $G/P$ projective. It has a Levi decomposition $P = M \ltimes N$, with $N$ the largest connected normal unipotent subgroup of $P$ (Borel and Tits, 1965). The parabolic subgroups of $\mathrm{U}(V)$ and $\mathrm{Sp}(W)$ are the stabilizers of flags of isotropic subspaces.

**Definition.** Let $T$ be a maximal torus of a reductive group $G$. The *[[Weyl group|YT1ZJ2S4EE]]* is $N_G(T)/T$; its elements are represented by *Weyl elements* in $N_G(T)$. For $\mathrm{GL}_n$ and the diagonal torus it is $S_n$, represented by the permutation matrices.

**Theorem ([[Bruhat decomposition|T91E86D0RH]]).** $\mathrm{GL}_n(k)$ is the disjoint union of the double cosets $BwB$, with $w$ running over the permutation matrices (Borel, Linear Algebraic Groups, 14.12).

**Definition (Siegel parabolic).** Let $W = E^{2n}$ be skew-Hermitian with $J = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}$, so $X = \langle e_1, \dots, e_n \rangle$ is maximal isotropic. The *Siegel parabolic* $P$ is the stabilizer of $X$ in $\mathrm{U}(W)$, with Levi subgroup and unipotent radical
$$M = \left\{ m(a) = \begin{pmatrix} a & 0 \\ 0 & c(a)^{-T} \end{pmatrix} : a \in \mathrm{GL}_n(E) \right\}, \qquad N = \left\{ n(\beta) = \begin{pmatrix} 1_n & \beta \\ 0 & 1_n \end{pmatrix} : \beta^{T} = c(\beta) \right\}.$$
So $M \cong \mathrm{GL}_n(E)$, and $N$ is the additive group of Hermitian matrices. The *Weyl element* $w = J$ of $P$ lies in $\mathrm{U}(W)$, and $PwP = PwN$ is open and dense in $\mathrm{U}(W)$.

With $c$ trivial these matrices give the Siegel parabolic of $\mathrm{Sp}_{2n}$. For Hermitian $V$, the doubled space $V \oplus (-V)$ has the maximal isotropic subspace $\{(x, x)\}$, hence a Siegel parabolic. The Siegel-Weil chapter lets $m(a)$, $n(\beta)$ and $w$ act on the Weil representation in [`TPar` and `TWeyl`](/proof/siegel-weil/); the [determinants chapter](/proof/determinants/) and the [Bessel periods](/proof/bessel-seesaw/) use Levi determinants and unipotent radicals.

## Reductive groups and maximal compact subgroups

**Definition.** A linear algebraic group $G$ over $k$ is *[[reductive|2XS84PWE3S]]* if it is smooth and connected and $G_{\bar{k}}$ has no nontrivial connected normal unipotent subgroup.

**Example.** $\mathrm{GL}_n$, $\mathrm{SL}_n$, $\mathrm{Sp}_{2n}$ and $\mathrm{U}(V)$ are reductive. The Borel subgroup of $\mathrm{GL}_n$, $n \ge 2$, is not: its unipotent matrices form a connected normal subgroup.

**Definition.** A *[[maximal compact subgroup|T2EB8R9HEV]]* of a locally compact group $G$ ([Chapter 2](/learn/analysis/)) is a compact subgroup contained in no larger compact subgroup.

**Definition (Cartan involution).** Let $G \subset \mathrm{GL}_n(\mathbb{C})$ be the real points of a reductive group over $\mathbb{R}$, stable under $g \mapsto \bar{g}^{T}$. The *Cartan involution* of $G$ is $\theta(g) = (\bar{g}^{T})^{-1}$. Its fixed points form the compact group $K = G \cap \mathrm{U}(n)$.

**Theorem (Cartan).** Let $\mathfrak{p} = \{ X \in \operatorname{Lie}(G) : \bar{X}^{T} = X \}$. Then $K$ is a maximal compact subgroup of $G$, $(k, X) \mapsto k \exp(X)$ is a diffeomorphism $K \times \mathfrak{p} \to G$ (the *[[Cartan decomposition|K7VVYFE9YJ]]*), and each compact subgroup of $G$ is conjugate into $K$ (Knapp, Lie Groups Beyond an Introduction, VI.2).

**Example.** The maximal compact subgroups of $\mathrm{GL}_n(\mathbb{R})$, $\mathrm{GL}_n(\mathbb{C})$, $\mathrm{Sp}_{2n}(\mathbb{R})$ and $\mathrm{U}(p, q)$ are $\mathrm{O}(n)$, $\mathrm{U}(n)$, $\mathrm{U}(n)$ and $\mathrm{U}(p) \times \mathrm{U}(q)$. Over a nonarchimedean local field $F_v$, each maximal compact subgroup of $\mathrm{GL}_n(F_v)$ is conjugate to $\mathrm{GL}_n(\mathcal{O}_v)$.

[TLiftK](/step/tlift-k-def/) asks that $\theta_w$ be a Cartan involution for $J$ at each infinite place, and the [local matching](/step/local-matching-def/) fixes the maximal compact subgroup `KInf`.

## Adelic points and compact open subgroups

Let $F$ be a number field ([Chapter 4](/learn/number-fields/) defines adeles).

**Definition.** Let $G$ be a linear algebraic group over $F$ with a model over $\mathcal{O}_F$. Its group of *[[adelic points|M07YRPQPX4]]* $G(\mathbb{A}_F)$ is the restricted product of the $G(F_v)$ with respect to the $G(\mathcal{O}_v)$. It is locally compact, with $G(F)$ a discrete subgroup.

**Definition.** Let $F_v$ be nonarchimedean with uniformizer $\varpi$ and residue field $\mathbb{F}_q$. The groups
$$K_m = 1_n + \varpi^m M_n(\mathcal{O}_v), \qquad m \ge 1,$$
are *compact open subgroups* of $\mathrm{GL}_n(F_v)$ and form a basis of neighbourhoods of $1$. The *first congruence subgroup* $K_1$ is the kernel of reduction $\mathrm{GL}_n(\mathcal{O}_v) \to \mathrm{GL}_n(\mathbb{F}_q)$, and the *Iwahori subgroup* $I$ is the inverse image of $B(\mathbb{F}_q)$. So $K_1 \subset I \subset \mathrm{GL}_n(\mathcal{O}_v)$ and $I/K_1 \cong B(\mathbb{F}_q)$.

**Theorem (Iwahori and Matsumoto, 1965).** $\mathrm{GL}_n(F_v)$ is the disjoint union of the double cosets $I w I$, with $w$ running over the matrices $\mathrm{diag}(\varpi^{\lambda_1}, \dots, \varpi^{\lambda_n}) \, s$, $\lambda \in \mathbb{Z}^n$, $s$ a permutation matrix.

The law `depth` of [IsRecT](/step/is-rect-def/) is about representations with a nonzero `KOne`-fixed vector, and the [Galois row](/proof/galois-row/) proves local-global compatibility at places with Iwahori fixed vectors.

## Strong approximation

**Theorem (strong approximation).** Let $G$ be a simply connected, absolutely almost simple group over a number field $F$, and $S$ a finite set of places with $\prod_{v \in S} G(F_v)$ not compact. Then $G(F)$ is dense in the restricted product $G(\mathbb{A}_F^S)$ over the places outside $S$ (Kneser; Platonov; see Platonov and Rapinchuk, 7.4).

**Example.** $\mathrm{SL}_n$, and $\mathrm{SU}(V)$ for $\dim V \ge 2$, satisfy the hypotheses, but $\mathrm{U}(V)$ does not, as it maps onto the torus $\mathrm{U}(1)$. For definite $V$, $S$ must contain a finite place, as $\mathrm{SU}(V)(F_v)$ is compact at each real place.

**Remark.** If moreover $G(F \otimes \mathbb{R})$ is not compact and $K \subset G(\mathbb{A}_{F,f})$ is compact open, then $G(\mathbb{A}_F) = G(F) \, G(F \otimes \mathbb{R}) \, K$.

[ThetaLocalInputs](/step/theta-local-inputs-def/) takes strong approximation for $\mathrm{SU}$ from the literature as its field `strongApproxSU`.

## Quotients of finite volume

Let $G$ be reductive over a number field $F$. Then $G(F)\backslash G(\mathbb{A}_F)$ carries a $G(\mathbb{A}_F)$-invariant measure.

**Definition.** A *[[fundamental domain|KNJA2NEZ9F]]* for $G(F)$ in $G(\mathbb{A}_F)$ is a measurable set $D$ whose translates $\gamma D$, $\gamma \in G(F)$, cover $G(\mathbb{A}_F)$ and meet only in sets of measure zero. Then $\int_{G(F)\backslash G(\mathbb{A}_F)} f = \int_D f$ for integrable $G(F)$-invariant $f$.

**Definition (Siegel set).** Let $P_0 = M_0 N_0$ be a minimal parabolic subgroup of $G$ over $F$, $A_0$ the identity component of the real points of the largest split central torus of $M_0$, $\Delta_0$ the simple roots of $A_0$ in $N_0$, and $K$ a maximal compact subgroup of $G(\mathbb{A}_F)$ with $G(\mathbb{A}_F) = P_0(\mathbb{A}_F) K$. A *Siegel set* is
$$\mathfrak{S} = \omega \, A_0(t) \, K, \qquad A_0(t) = \{ a \in A_0 : \alpha(a) > t \text{ for each } \alpha \in \Delta_0 \},$$
with $\omega \subset N_0(\mathbb{A}_F) M_0(\mathbb{A}_F)^1$ compact and $t > 0$.

**Theorem (reduction theory).** For $t$ small and $\omega$ large enough, $G(\mathbb{A}_F) = G(F) \, \mathfrak{S}$ (Borel; Godement; see Moeglin and Waldspurger, I.2).

**Theorem ([[Borel and Harish-Chandra|3B451RD8AJ]], 1962).** If $G$ has no nontrivial character $G \to \mathbb{G}_m$ over $F$, then $G(F)\backslash G(\mathbb{A}_F)$ has *finite volume*, and it is compact if and only if $G$ has no proper parabolic subgroup over $F$.

**Example.** Each character of $\mathrm{U}(V)$ factors through $\det$ onto $\mathrm{U}(1)$, which has no nontrivial character over $F$, so $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_F)$ has finite volume. It is compact if $V$ is definite, since then $V$ has no isotropic vector and $\mathrm{U}(V)$ no proper parabolic subgroup.

**Definition (height).** Let $P = MN$ be a parabolic subgroup and $K$ a maximal compact subgroup of $G(\mathbb{A}_F)$ with $G(\mathbb{A}_F) = P(\mathbb{A}_F) K$ (an *[[Iwasawa decomposition|ZYVEVYBA41]]*). For the Siegel parabolic of $\mathrm{U}(W)$, the *height* of $g = n(\beta) m(a) k$ is $a(g) = |\det a|_{\mathbb{A}_E}$. It is independent of the decomposition, $a(pk) = a(p)$, and $a(\gamma g) = a(g)$ for $\gamma \in P(F)$ by the product formula.

On $\mathrm{GL}_n(\mathbb{A}_F)$ the norm is $\|g\| = \prod_v \max_{i,j}(|g_{ij}|_v, |(g^{-1})_{ij}|_v)$, and a function on $G(F)\backslash G(\mathbb{A}_F)$ has *moderate growth* if it is bounded by a constant times a power of $\|g\|$.

The [Siegel-Weil chapter](/proof/siegel-weil/) fixes a fundamental domain, the standard $K$ and a height, and uses that $\mathrm{U}(F)\backslash \mathrm{U}(\mathbb{A})$ has finite volume; the [determinants chapter](/proof/determinants/) proves that $a(g, 1)^t$ is integrable, and [HypsAlt is nonempty](/step/nonempty-hyps/) reaches Siegel sets through `siegelSetUnitary`.

## Hermitian lattices and the mass formula

Let $E/F$ be a CM extension and $V$ a positive definite Hermitian space over $E$ of dimension $n$, with form $h$.

**Definition.** A *Hermitian lattice* is a finitely generated $\mathcal{O}_E$-submodule $L \subset V$ that spans $V$. Its *dual* is $L^\# = \{ x \in V : h(x, L) \subset \mathcal{O}_E \}$, and $L$ is *self-dual* if $L^\# = L$.

**Definition.** Lattices $L, L'$ are in the same *class* if $L' = \gamma L$ for some $\gamma \in \mathrm{U}(V)(F)$, and in the same *genus* if $L'_v = g_v L_v$ for some $g_v \in \mathrm{U}(V)(F_v)$ at each finite place $v$, where $L_v = L \otimes_{\mathcal{O}_F} \mathcal{O}_v$.

With $K_L \subset \mathrm{U}(V)(\mathbb{A}_{F,f})$ the stabilizer of $\prod_v L_v$, the classes in the genus of $L$ are in bijection with the finite set $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_{F,f}) / K_L$ (Shimura, 1964).

**Definition.** As $V$ is definite, each $\mathrm{U}(L') = \{ g \in \mathrm{U}(V)(F) : g L' = L' \}$ is finite. The *mass* of the genus of $L$ is
$$\operatorname{mass}(L) = \sum_{[L']} \frac{1}{|\mathrm{U}(L')|},$$
over the classes $[L']$ in the genus. It is the volume of $\mathrm{U}(V)(F)\backslash \mathrm{U}(V)(\mathbb{A}_F)$ for the Haar measure with $\operatorname{vol}(\mathrm{U}(V)(F \otimes \mathbb{R}) \, K_L) = 1$.

**Definition (local density).** Let $v$ be a finite place of $F$ with uniformizer $\varpi$ and residue field of order $q_v$, let $S$ and $T$ be Hermitian matrices over $\mathcal{O}_{E_v}$ of sizes $m$ and $n$, and let $N_k$ be the number of $X \in M_{m \times n}(\mathcal{O}_{E_v}/\varpi^k)$ with $X^{T} S \, c(X) \equiv T \pmod{\varpi^k}$. The *local density* is
$$\alpha_v(S, T) = \lim_{k \to \infty} q_v^{k(n^2 - 2mn)} N_k.$$

**Theorem (Siegel mass formula).** Let $L \subset V$ have Gram matrix $S$, and let $\chi$ be the quadratic character of $E/F$ ([Chapter 6](/learn/l-functions/)). Then $\operatorname{mass}(L)$ is an explicit constant times $\prod_v \alpha_v(S, S)^{-1}$ over the finite places, and outside a finite set of places $\alpha_v(S, S)^{-1}$ is the $v$-factor of $\prod_{i=1}^{n} L(i, \chi^i)$ (Siegel, 1935, for quadratic forms; Gan, Hanke and Yu, 2001, for Hermitian lattices).

In its general form, Siegel's theorem writes a weighted average over the genus of the number of representations of $T$ by the $L'$ as an explicit constant times a product of local densities over all places; the Siegel-Weil formula of Chapter 16 is its analytic form. `GenusMassAt` in [HypsAlt](/step/hyps-alt-def/) is the mass of each positive definite Hermitian space of rank $2$, [TLiftK](/step/tlift-k-def/) uses a self-dual Hermitian lattice, and `SiegelWeilUnitaryConvergent` in the [Siegel-Weil chapter](/proof/siegel-weil/) contains local densities.

## The Heisenberg and metaplectic groups

Let $W$ be a symplectic space over a local field $F$ of characteristic $0$.

**Definition.** The *[[Heisenberg group|ZZYCV5EX9J]]* of $W$ is $H(W) = W \times F$ with the product
$$(w, t)(w', t') = \left(w + w', \, t + t' + \tfrac{1}{2} \langle w, w' \rangle \right).$$
Its center is $\{0\} \times F$, and $\mathrm{Sp}(W)$ acts on it by $g \cdot (w, t) = (gw, t)$, trivially on the center.

For a nontrivial unitary character $\psi$ of $F$, the Stone-von Neumann theorem (Chapter 16) gives one irreducible unitary representation $\rho_\psi$ of $H(W)$ with central character $\psi$, up to isomorphism. As $h \mapsto \rho_\psi(g \cdot h)$ has the same central character, there is a unitary $\omega(g)$, unique up to a scalar of absolute value $1$, with $\omega(g) \rho_\psi(h) \omega(g)^{-1} = \rho_\psi(g \cdot h)$, a projective representation of $\mathrm{Sp}(W)$.

**Theorem (Weil, 1964).** Let $F \ne \mathbb{C}$ and $W \ne 0$. There is a nonsplit central extension
$$1 \to \{\pm 1\} \to \mathrm{Mp}(W) \to \mathrm{Sp}(W) \to 1$$
such that the $\omega(g)$ can be chosen to form a true representation of $\mathrm{Mp}(W)$.

**Definition.** $\mathrm{Mp}(W)$ is the *[[metaplectic group|8B0JM2YDE2]]*. For $F = \mathbb{R}$ it is the unique connected double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$ ([Chapter 2](/learn/analysis/)). Chapter 16 defines its Weil representation $\omega_\psi$.

The [Siegel-Weil chapter](/proof/siegel-weil/) proves that the metaplectic representation intertwines the Heisenberg action, and the [Bessel periods](/proof/bessel-seesaw/) use the Heisenberg group.

## Further reading

- Platonov and Rapinchuk, *Algebraic Groups and Number Theory*: Ch. 4 (reduction theory, finite volume), Ch. 5 (adele groups), Ch. 7 (strong approximation), Ch. 8 (class numbers, genera).
- Borel, *Linear Algebraic Groups*: Ch. IV and V (Borel and parabolic subgroups, Bruhat decomposition).
- Knapp, *Lie Groups Beyond an Introduction*: Ch. VI (Cartan and Iwasawa decompositions, maximal compact subgroups).
- Moeglin and Waldspurger, *Spectral Decomposition and Eisenstein Series*: I.1 and I.2 (adelic groups, heights, Siegel sets).
