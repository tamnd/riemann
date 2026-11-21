The proof uses representations of compact unitary groups, at the infinite places of a definite unitary group, of $\mathrm{GL}_n(F)$ for a $p$-adic field $F$, and of real groups such as $\mathrm{U}(p, q)$. [Chapter 7](/learn/groups/) defines these groups.

## Representations of a group

Let $G$ be a group. All vector spaces are over $\mathbb{C}$.

**Definition.** A *[[representation|WYGRXCG2RN]]* of $G$ is a vector space $V$ with a homomorphism $\pi : G \to \mathrm{GL}(V)$, and a *subrepresentation* is a $G$-stable subspace. The representation is *[[irreducible|FX3NEFYFFN]]* if $V \ne 0$ and its only subrepresentations are $0$ and $V$, and *semisimple* if it is a direct sum of irreducible subrepresentations, or equivalently if each subrepresentation has an invariant complement.

**Theorem ([[Maschke|4SBZ4EMPBZ]]).** Each finite-dimensional representation of a finite group is semisimple.

**Definition.** An *intertwining map* $T : (\pi, V) \to (\pi', V')$ is a linear map with $T\pi(g) = \pi'(g)T$ for all $g$. These maps form $\mathrm{Hom}_G(\pi, \pi')$, and $\pi \cong \pi'$ if it contains a bijection.

**Theorem ([[Schur's lemma|X4M2FFKQJ6]]).** If $\pi, \pi'$ are irreducible, each nonzero intertwining map $\pi \to \pi'$ is an isomorphism. If moreover $V$ has countable dimension, then $\mathrm{Hom}_G(\pi, \pi) = \mathbb{C}$.

So the center $Z$ of $G$ acts on an irreducible $\pi$ of countable dimension by a character $\omega_\pi : Z \to \mathbb{C}^\times$, the *central character*.

**Definition.** The *dual* of $(\pi, V)$ is $V^* = \mathrm{Hom}(V, \mathbb{C})$ with $(\pi^*(g)\lambda)(v) = \lambda(\pi(g^{-1})v)$. For a character $\chi : G \to \mathbb{C}^\times$, the *twist* $\pi \otimes \chi$ is $V$ with the action $\chi(g)\pi(g)$.

**Definition.** A *class function* on $G$ satisfies $f(hgh^{-1}) = f(g)$. The *[[character of a representation|RMWMYBY8TC]]* $(\pi, V)$ of finite dimension is the class function $\chi_\pi(g) = \operatorname{tr} \pi(g)$.

**Theorem ([[orthogonality of characters|S6ARZ7M1YE]]).** For finite $G$ and $\langle f, f' \rangle = |G|^{-1} \sum_g f(g)\overline{f'(g)}$, the irreducible characters form an orthonormal basis of the class functions. So a finite-dimensional representation is determined by its character.

[IsRecT](/step/is-rect-def/) defines $rc$ on irreducible representations of $\mathrm{GL}_n(E_w)$, with laws `twist` and `dual`, and [the statement Green](/step/green-def/) is about irreducible characters of $\mathrm{GL}_d(\mathbb{Z}/g)$.

## Compact groups

Let $G$ be a compact group with Haar measure $dg$ of total mass $1$ ([Chapter 2](/learn/analysis/#haar-measure)).

**Definition.** A *[[unitary representation|74BPYJNZTM]]* of a topological group $G$ is a homomorphism $\pi$ from $G$ to the unitary group of a Hilbert space $H$ with $g \mapsto \pi(g)v$ continuous for each $v$. Its *[[matrix coefficients|J85Q7QGGHS]]* are the functions $c_{u,v}(g) = \langle \pi(g)u, v \rangle$, $u, v \in H$.

A finite-dimensional representation of a compact group has an invariant inner product, so it is unitary and semisimple.

**Theorem ([[Schur orthogonality|ETNDTECY97]]).** Irreducible unitary representations $\pi, \pi'$ of the compact group $G$ are finite-dimensional, and
$$ \int_G \langle \pi(g)u, v \rangle \overline{\langle \pi'(g)u', v' \rangle}\, dg = \begin{cases} \dfrac{\langle u, u' \rangle \overline{\langle v, v' \rangle}}{\dim \pi} & \text{if } \pi = \pi', \\ 0 & \text{if } \pi \not\cong \pi'. \end{cases} $$

**Theorem ([[Peter-Weyl|6VC9QE39XH]]).** The matrix coefficients of the irreducible representations span a dense subspace of $L^2(G)$, and $L^2(G) \cong \widehat{\bigoplus}_\pi \pi \otimes \pi^*$ under $G \times G$.

**Definition.** For $(\pi, H)$ unitary and $\sigma$ irreducible, the *[[isotypic component|2J9PXE82TJ]]* $H[\sigma]$ is the closed span of the images of all intertwining maps $\sigma \to \pi$. Then $H = \widehat{\bigoplus}_\sigma H[\sigma]$, and the orthogonal projection onto $H[\sigma]$ is $\dim \sigma \int_G \overline{\chi_\sigma(g)}\, \pi(g)\, dg$.

The [determinants chapter](/proof/determinants/) pairs theta functions with the matrix coefficient `mc M φ g` and reads weights from the isotypic projection lemma `AbsIso`.

## Highest weights and branching

Let $G = \mathrm{U}(n)$ with diagonal torus $T \cong \mathrm{U}(1)^n$, and write $t^\lambda = t_1^{\lambda_1} \cdots t_n^{\lambda_n}$ for $\lambda \in \mathbb{Z}^n$.

**Definition.** Let $V$ be a finite-dimensional representation of $\mathrm{U}(n)$. A vector $v \ne 0$ has *weight* $\lambda \in \mathbb{Z}^n$ if $tv = t^\lambda v$ for $t \in T$, and then $\lambda$ is a weight of $V$. It is *dominant* if $\lambda_1 \ge \dots \ge \lambda_n$.

The action extends to a holomorphic action of $\mathrm{GL}_n(\mathbb{C})$. A *highest weight vector* is a vector of some weight fixed by the upper triangular unipotent matrices.

**Theorem ([[theorem of the highest weight|J1EFY61K87]]).** An irreducible $V$ has a highest weight vector, unique up to a scalar. Its weight $\lambda$, the *[[highest weight|C5W8BE1DRY]]* of $V$, is dominant, and $V \mapsto \lambda$ is a bijection from the irreducible representations of $\mathrm{U}(n)$ onto the dominant weights. The irreducible $V_\lambda$ of highest weight $\lambda$ has dimension
$$ \dim V_\lambda = \prod_{i < j} \frac{\lambda_i - \lambda_j + j - i}{j - i} $$
([[Weyl dimension formula|6VBN872BK1]]).

**Example.** $\mathbb{C}^n$ has highest weight $(1, 0, \dots, 0)$, and $\det^m$ has $(m, \dots, m)$. Let $\mathrm{GL}_n$ act on polynomials in a $d \times n$ matrix $x$, $n \le d$, by $(gf)(x) = f(xg)$, and let $\Delta_s$ be the leading $s \times s$ minor. For dominant $\nu$ with $\nu_n \ge 0$ and $\nu_{n+1} = 0$, $\prod_s \Delta_s^{\nu_s - \nu_{s+1}}$ is a highest weight vector of weight $\nu$.

**Theorem (Weyl branching law).** For $\mathrm{U}(n-1) \subset \mathrm{U}(n)$ the upper left block, $V_\lambda$ restricts to $\mathrm{U}(n-1)$ as the direct sum, with multiplicity one, of the $V_\mu$ with
$$ \lambda_1 \ge \mu_1 \ge \lambda_2 \ge \mu_2 \ge \dots \ge \mu_{n-1} \ge \lambda_n. $$

**Example.** For $n = 2$, $V_{(a, b)}$ restricts to $\mathrm{U}(1)$ as the sum of the characters $z^m$, $b \le m \le a$.

[TLiftK](/step/tlift-k-def/) asks for dominant weights `DomWeight`, the [determinants chapter](/proof/determinants/) builds its test vector from the minors above, and [ThetaLocalInputs](/step/theta-local-inputs-def/) has the field `weylBranching`.

## Smooth representations of p-adic groups

Let $F$ be a nonarchimedean local field with ring of integers $\mathcal{O}$, uniformizer $\varpi$ and residue field $\mathbb{F}_q$. Let $G = \mathrm{GL}_n(F)$, or $G(F)$ for a reductive group $G$ ([Chapter 7](/learn/groups/#reductive-groups-and-maximal-compact-subgroups)), and $\nu = |\det|$.

**Definition.** A representation $(\pi, V)$ of $G$ is *smooth* if each $v \in V$ has an open stabilizer, and *[[admissible|SZV8Y806Y7]]* if moreover $V^K$ is finite-dimensional for each compact open subgroup $K$.

A smooth irreducible representation has countable dimension, hence a central character. For $n = 1$ these are the characters of $F^\times$ trivial on an open subgroup.

**Definition.** The *contragredient* $\pi^\vee$ of a smooth $\pi$ is the space of smooth vectors in $V^*$. If $\pi$ is admissible, $\pi^{\vee\vee} \cong \pi$. For a character $\chi$ of $F^\times$, $\pi \otimes \chi$ means $\pi \otimes (\chi \circ \det)$.

**Theorem (Jacquet; Bernstein, 1974).** Each smooth irreducible representation of $G$ is admissible.

The type `IrrGL` of [IsRecT](/step/is-rect-def/) is this set of classes for $\mathrm{GL}_n(E_w)$, and its laws `central` and `absCentral` compare $\det rc(x)$ with the central character.

## Parabolic induction and the Jacquet module

Let $P = MN$ be a parabolic subgroup with Levi subgroup $M$ and unipotent radical $N$ ([Chapter 7](/learn/groups/#parabolic-subgroups)), and $\delta_P(m) = |\det \mathrm{Ad}(m)|_{\operatorname{Lie} N}|$.

**Definition.** For a smooth representation $(\sigma, W)$ of $M$, the *[[parabolic induction|JJP4JFH3C6]]* $i_P^G \sigma$ is the space of smooth $f : G \to W$ with $f(nmg) = \delta_P(m)^{1/2}\sigma(m)f(g)$, with $G$ acting by right translation. For $\mathrm{GL}_n$ and block upper triangular $P$ with $M = \mathrm{GL}_{n_1} \times \dots \times \mathrm{GL}_{n_k}$, write $\sigma_1 \times \dots \times \sigma_k = i_P^G(\sigma_1 \otimes \dots \otimes \sigma_k)$.

**Definition.** The *Jacquet module* of a smooth $(\pi, V)$ along $P$ is the representation $r_P(\pi) = \delta_P^{-1/2} \otimes V_N$ of $M$, where $V_N = V / \langle \pi(n)v - v \rangle$ is the space of $N$-coinvariants.

**Theorem (Bernstein and Zelevinsky, 1977).** The functors $i_P^G$ and $r_P$ are exact and preserve admissibility, and $\mathrm{Hom}_G(\pi, i_P^G \sigma) \cong \mathrm{Hom}_M(r_P \pi, \sigma)$ ([[Frobenius reciprocity|PAP76H0ND9]]).

**Theorem (geometric lemma; Bernstein and Zelevinsky, 1977).** Let $P = MN$ and $Q = LU$ be standard parabolic subgroups and $\sigma$ a smooth representation of $M$. Then $r_Q(i_P^G \sigma)$ has a finite filtration with quotients $i^L_{L \cap wPw^{-1}} \circ w \circ r^M_{M \cap w^{-1}Qw}(\sigma)$, where $w$ runs over the Weyl elements with $w(M \cap B) \subseteq B$ and $w^{-1}(L \cap B) \subseteq B$.

**Example.** For characters $\chi_i$ of $F^\times$, the semisimplification of $r_B(\chi_1 \times \dots \times \chi_n)$ is $\bigoplus_{w \in S_n} \chi_{w(1)} \otimes \dots \otimes \chi_{w(n)}$.

[Local Langlands from the literature](/step/local-langlands-gl-rect-exists-of-literature/) takes `GeometricLemma` as an input, and [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the fields `geometricLemmaFiltration` and `depthZeroJacquetInjective`.

## Cuspidal representations and segments

**Definition.** A smooth irreducible $\pi$ is *[[cuspidal|9AZ164C298]]* if $r_P(\pi) = 0$ for each proper parabolic $P$, and *supercuspidal* if it is not a subquotient of $i_P^G \sigma$ for any proper $P$ and smooth irreducible $\sigma$.

**Theorem (Harish-Chandra; Jacquet).** A smooth irreducible $\pi$ is cuspidal if and only if its matrix coefficients $g \mapsto \lambda(\pi(g)v)$, $v \in V$, $\lambda \in V^\vee$, have compact support modulo the center. For complex representations of $\mathrm{GL}_n(F)$, cuspidal and supercuspidal agree.

**Theorem (supercuspidal support; Bernstein and Zelevinsky, 1977).** Each smooth irreducible $\pi$ of $\mathrm{GL}_n(F)$ is a subquotient of some $\rho_1 \times \dots \times \rho_k$ with $\rho_i$ supercuspidal of $\mathrm{GL}_{n_i}(F)$, $\sum n_i = n$, and the multiset $\{\rho_1, \dots, \rho_k\}$, the *supercuspidal support* of $\pi$, is unique.

**Definition (Zelevinsky).** A *segment* of length $m$ is a list $\Delta = [\rho, \rho\nu^{m-1}] = (\rho, \rho\nu, \dots, \rho\nu^{m-1})$ with $\rho$ supercuspidal. Two segments are *linked* if their union is a segment and neither contains the other. If $\Delta_1$ begins at $\rho_1$, it *precedes* $\Delta_2$ if they are linked and $\Delta_2$ begins at $\rho_1\nu^j$ with $j > 0$. A *multisegment* is a multiset of segments.

**Theorem (Zelevinsky, 1980).** The representation $\rho \times \rho\nu \times \dots \times \rho\nu^{m-1}$ has a unique irreducible quotient $L(\Delta)$. Some twist of $L(\Delta)$ by a character is square-integrable, and each irreducible representation with a square-integrable twist is $L(\Delta)$ for exactly one $\Delta$. A product $L(\Delta_1) \times \dots \times L(\Delta_k)$ is irreducible if and only if no two $\Delta_i$ are linked.

**Example.** For $\Delta = [\nu^{-1/2}, \nu^{1/2}]$ in $\mathrm{GL}_1$, $\nu^{-1/2} \times \nu^{1/2}$ has the trivial character of $\mathrm{GL}_2(F)$ as subrepresentation and the Steinberg representation $\mathrm{St} = L(\Delta)$ as quotient.

**Theorem ([[Langlands classification|YHFP9HGBTT]] for $\mathrm{GL}_n$; Zelevinsky, 1980).** Order a multisegment $\mathfrak{a} = \{\Delta_1, \dots, \Delta_k\}$ so that $\Delta_i$ does not precede $\Delta_j$ for $i < j$. Then $L(\Delta_1) \times \dots \times L(\Delta_k)$ has a unique irreducible quotient $L(\mathfrak{a})$, and $\mathfrak{a} \mapsto L(\mathfrak{a})$ is a bijection from multisegments onto the classes of smooth irreducible representations of all the $\mathrm{GL}_n(F)$.

In [IsRecT](/step/is-rect-def/), the law `langlands` writes $rc(L(\mathfrak{a}))$ as a sum over the segments of $\mathfrak{a}$, `cusp` is about cuspidal classes, and a class is `Good` when each element of its supercuspidal support is `GoodCusp`; clause `R1` of [the Galois row](/proof/galois-row/) asks for a support of characters with no two linked.

## Unramified representations

Let $G = \mathrm{GL}_n(F)$, $K = \mathrm{GL}_n(\mathcal{O})$, $B$ the upper triangular Borel subgroup and $T$ the diagonal torus.

**Definition.** A smooth irreducible $\pi$ is *unramified*, or *spherical*, if $\pi^K \ne 0$; a nonzero vector of $\pi^K$ is a *spherical vector*. A character $\chi = \chi_1 \otimes \dots \otimes \chi_n$ of $T$ is *unramified* if it is trivial on $T(\mathcal{O})$.

**Definition.** The *spherical Hecke algebra* $\mathcal{H}(G, K)$ is the convolution algebra of compactly supported functions on $G$ that are left and right $K$-invariant. It acts on $\pi^K$ by $\pi(f)v = \int_G f(g)\pi(g)v\, dg$.

**Theorem (Satake isomorphism; Satake, 1963).** The map $Sf(t) = \delta_B(t)^{1/2}\int_N f(tn)\, dn$ is an isomorphism of $\mathcal{H}(G, K)$ onto $\mathbb{C}[T/T(\mathcal{O})]^{S_n} = \mathbb{C}[X_1^{\pm 1}, \dots, X_n^{\pm 1}]^{S_n}$. So $\mathcal{H}(G, K)$ is commutative.

**Theorem.** If $\pi$ is unramified, then $\dim \pi^K = 1$, and $\pi$ is the unique unramified subquotient of some $\chi_1 \times \dots \times \chi_n$ with unramified $\chi_i$; the multiset $\{\chi_1(\varpi), \dots, \chi_n(\varpi)\}$, the *Satake parameter* of $\pi$, is determined by $\pi$ and gives a bijection from the unramified representations onto the multisets of $n$ elements of $\mathbb{C}^\times$.

**Example.** The trivial representation of $\mathrm{GL}_n(F)$ has Satake parameters $q^{(n-1)/2}, q^{(n-3)/2}, \dots, q^{(1-n)/2}$.

**Theorem (Iwahori fixed vectors; Borel, 1976; Casselman, 1980).** Let $I$ be the Iwahori subgroup ([Chapter 7](/learn/groups/#adelic-points-and-compact-open-subgroups)). A smooth irreducible $\pi$ has $\pi^I \ne 0$ if and only if it is a subquotient of $\chi_1 \times \dots \times \chi_n$ with each $\chi_i$ unramified.

**Example.** $\dim \mathrm{St}^I = 1$ and $\mathrm{St}^K = 0$.

[The Galois row](/proof/galois-row/) matches Frobenius polynomials with Satake parameters in `CoreAll` and proves local-global compatibility at places with Iwahori fixed vectors; `SatU` in [GeoOne](/step/geo-one-def/) asks for Satake parameters, and `unram` in [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) for a spherical base change.

## Depth zero representations and types

Let $K_1 = 1 + \varpi M_n(\mathcal{O})$, so $K/K_1 \cong \mathrm{GL}_n(\mathbb{F}_q)$.

**Definition.** A smooth irreducible $\pi$ of $\mathrm{GL}_n(F)$ has *depth zero* if $\pi^{K_1} \ne 0$.

**Definition.** A representation $\tau$ of $\mathrm{GL}_n(\mathbb{F}_q)$ is *cuspidal* if no nonzero vector is fixed by the unipotent radical of a proper parabolic subgroup. A character $\theta$ of $\mathbb{F}_{q^n}^\times$ is *regular* if $\theta^{q^i} \ne \theta$ for $0 < i < n$.

**Theorem (Green, 1955).** For each regular $\theta$ there is an irreducible cuspidal representation $\tau_\theta$ of $\mathrm{GL}_n(\mathbb{F}_q)$ of dimension $\prod_{i=1}^{n-1}(q^i - 1)$ whose character at each $y$ with irreducible characteristic polynomial, with a root $z \in \mathbb{F}_{q^n}$, is
$$ \chi_{\tau_\theta}(y) = (-1)^{n-1}\sum_{j=0}^{n-1} \theta(z^{q^j}). $$
Each irreducible cuspidal representation is some $\tau_\theta$, and $\tau_\theta \cong \tau_{\theta'}$ if and only if $\theta' = \theta^{q^j}$ for some $j$. This is *Green's parametrization* of the cuspidal representations.

*Deligne-Lusztig induction* (Deligne and Lusztig, 1976) gives $\tau_\theta = (-1)^{n-1}R_T^\theta$, with $T(\mathbb{F}_q) = \mathbb{F}_{q^n}^\times$ the elliptic torus and $R_T^\theta$ the alternating sum of the $\theta$-parts of the compactly supported $\ell$-adic cohomology of the Deligne-Lusztig variety of $T$.

**Theorem (depth zero supercuspidals; Carayol, 1984; Moy and Prasad, 1996).** Inflate an irreducible cuspidal $\tau$ of $\mathrm{GL}_n(\mathbb{F}_q)$ to $K$ and extend it to $F^\times K$ by a value at $\varpi$. Then $\operatorname{c-Ind}_{F^\times K}^{G}\tau$ is irreducible, supercuspidal and of depth zero, and each depth zero supercuspidal representation of $\mathrm{GL}_n(F)$ arises so.

**Definition (Bushnell and Kutzko, 1998).** The *inertial class* of a supercuspidal support $\{\rho_i\}$ is its class up to twisting each $\rho_i$ by an unramified character. A *type* is a pair $(J, \lambda)$ of a compact open subgroup $J$ and an irreducible representation $\lambda$ of $J$ such that the smooth irreducible $\pi$ containing $\lambda$ are exactly those with supercuspidal support in one inertial class.

**Example.** By Borel's theorem, $(I, 1)$ is a type for the supports made of unramified characters of $F^\times$, and for $\tau$ cuspidal, $(K, \tau)$ is a type for the depth zero supercuspidals $\operatorname{c-Ind}\tau$.

The laws `depth` and `type` of [IsRecT](/step/is-rect-def/) send a `Good` class with a $K_1$-fixed vector to a tame class and give the inertia of $rc(\sigma)$ for $\sigma$ inflated from a cuspidal $\tau$; [the statement Green](/step/green-def/) is Green's theorem, obtained in [Green from regular characters](/step/green-of-regular/).

## Generic representations and local factors

Let $N_n$ be the upper triangular unipotent subgroup of $\mathrm{GL}_n(F)$, $\psi$ a nontrivial character of $F$, and $\psi_N(u) = \psi(u_{12} + \dots + u_{n-1,n})$.

**Definition.** A smooth irreducible $\pi$ is *generic* if $\mathrm{Hom}_{N_n}(\pi, \psi_N) \ne 0$. This space then has dimension $1$ (Gelfand and Kazhdan, 1975; Shalika, 1974), and for $\lambda \ne 0$ in it the functions $W_v(g) = \lambda(\pi(g)v)$ form the *Whittaker model* $\mathcal{W}(\pi, \psi)$, whose elements are *[[Whittaker functions|7EFDMJSVDP]]*.

**Theorem (Zelevinsky, 1980).** $L(\mathfrak{a})$ is generic if and only if no two segments of $\mathfrak{a}$ are linked. Each cuspidal representation is generic.

**Definition (Jacquet, Piatetski-Shapiro and Shalika, 1983).** Let $\pi$ and $\pi'$ be generic representations of $\mathrm{GL}_n(F)$ and $\mathrm{GL}_m(F)$, $m < n$. For $W \in \mathcal{W}(\pi, \psi)$ and $W' \in \mathcal{W}(\pi', \psi^{-1})$, put
$$ \Psi(s, W, W') = \int_{N_m \backslash \mathrm{GL}_m(F)} W\!\begin{pmatrix} g & 0 \\ 0 & 1_{n-m} \end{pmatrix} W'(g)\, |\det g|^{s - (n-m)/2}\, dg. $$
These integrals converge for $\operatorname{Re}(s)$ large and span a fractional ideal of $\mathbb{C}[q^{s}, q^{-s}]$ generated by a unique $L(s, \pi \times \pi') = P(q^{-s})^{-1}$ with $P(0) = 1$, the *L-factor of the pair*. The local functional equation relates $\Psi$ to the integral for $\pi^\vee \times \pi'^\vee$ at $1 - s$ by
$$ \gamma(s, \pi \times \pi', \psi) = \varepsilon(s, \pi \times \pi', \psi)\, \frac{L(1 - s, \pi^\vee \times \pi'^\vee)}{L(s, \pi \times \pi')}, $$
where the *epsilon factor* is $\varepsilon(s, \pi \times \pi', \psi) = c q^{-fs}$ for a constant $c$ and an integer $f$. The Langlands classification extends these factors to all irreducible $\pi, \pi'$.

**Example.** For unramified $\pi, \pi'$ with Satake parameters $\{a_i\}$ and $\{b_j\}$, $L(s, \pi \times \pi') = \prod_{i,j}(1 - a_ib_jq^{-s})^{-1}$. For $n = m = 1$ these are the factors of Tate's thesis ([Chapter 5](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions)).

**Theorem (local converse theorem; Henniart, 1993).** Let $\pi, \pi'$ be generic irreducible representations of $\mathrm{GL}_n(F)$ with the same central character. If $\gamma(s, \pi \times \tau, \psi) = \gamma(s, \pi' \times \tau, \psi)$ for each irreducible generic $\tau$ of $\mathrm{GL}_m(F)$, $1 \le m \le n - 1$, then $\pi \cong \pi'$.

**Theorem (Bernstein-Zelevinsky finiteness).** If $\sigma$ has finite length, so do $i_P^G\sigma$ and $r_P\sigma$ (Bernstein and Zelevinsky, 1977). For each compact open $J$ there is $c(J)$ with $\dim \pi^J \le c(J)$ for every smooth irreducible $\pi$ (Bernstein, 1974).

**Definition.** The *[[unitary dual|95Q8WZMN0W]]* $\widehat{G}$ of a locally compact group $G$ is the set of classes of irreducible unitary representations. For $G = \mathrm{GL}_n(F)$, passing to smooth vectors identifies it with the smooth irreducible $\pi$ that have an invariant inner product.

**Theorem (Bernstein, 1984).** If $\sigma_1, \sigma_2$ are irreducible unitary, then $\sigma_1 \times \sigma_2$ is irreducible.

`LawsT` in [IsRecT](/step/is-rect-def/) has no law on local factors of pairs. [Local Langlands from the literature](/step/local-langlands-gl-rect-exists-of-literature/) takes `LocalConverseGL` and `BernsteinZelevinskyFiniteness` as inputs it does not use, and [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has `genericUnitaryDualGL` and `bernsteinUnitaryProductIrreducible`.

## Representations of real groups

Let $G$ be the real points of a reductive group, such as $\mathrm{U}(p, q)$ or $\mathrm{GL}_n(\mathbb{R})$, with maximal compact subgroup $K$, complexified Lie algebra $\mathfrak{g}$, and $\mathcal{Z}(\mathfrak{g})$ the center of the [[universal enveloping algebra|SCZ8PRVY00]] $U(\mathfrak{g})$.

**Definition.** Let $\pi$ be a continuous representation of $G$ on a Banach space $V$. A vector $v$ is *$K$-finite* if $\pi(K)v$ spans a finite-dimensional space, and $\pi$ is *admissible* if each irreducible representation of $K$ occurs in $V$ with finite multiplicity.

The $K$-finite vectors $V_K$ of an admissible $\pi$ are smooth and form a dense subspace stable under $\mathfrak{g}$ and $K$.

**Definition.** A *$(\mathfrak{g}, K)$-module* is a vector space $V$ with actions of $\mathfrak{g}$ and $K$ such that each vector is $K$-finite, the derivative of the $K$-action is the action of $\operatorname{Lie}(K)$, and $k(Xv) = (\mathrm{Ad}(k)X)(kv)$. A *[[Harish-Chandra module|2MKHH636C3]]* is an admissible $(\mathfrak{g}, K)$-module that is finitely generated over $U(\mathfrak{g})$.

**Theorem (Harish-Chandra, 1953).** Each irreducible unitary representation $\pi$ of $G$ is admissible, and $V_K$ is an irreducible Harish-Chandra module. Two irreducible unitary representations are equivalent if and only if their Harish-Chandra modules are isomorphic.

**Definition.** On an irreducible Harish-Chandra module, $\mathcal{Z}(\mathfrak{g})$ acts by a character, the *infinitesimal character*. By the [[Harish-Chandra isomorphism|YNBQS0X9ZB]] $\mathcal{Z}(\mathfrak{g}) \cong S(\mathfrak{h})^W$, for a Cartan subalgebra $\mathfrak{h}$ with Weyl group $W$, it is a $W$-orbit in $\mathfrak{h}^*$; for $\mathfrak{gl}_n(\mathbb{C})$, a multiset of $n$ complex numbers. It is *regular* if they are distinct.

**Example.** The irreducible representation of $\mathrm{U}(n)$ of highest weight $\lambda$ has infinitesimal character $\lambda + \rho = \{\lambda_k + \frac{n+1}{2} - k : 1 \le k \le n\}$.

**Theorem (Casselman-Wallach globalization; Casselman, 1989; Wallach, 1992).** Each Harish-Chandra module $V$ is $V^\infty_K$ for a smooth admissible representation $V^\infty$ of $G$ on a Fréchet space of moderate growth, unique up to isomorphism, and $V \mapsto V^\infty$ is an equivalence of categories.

[Row0b](/step/row0b-def/) and [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) state weights through the infinitesimal character, [the Siegel-Weil chapter](/proof/siegel-weil/) uses a $K$-finite Schwartz function, and [HypsAlt is nonempty](/step/nonempty-hyps/) uses `harishChandraModules` and `casselmanWallach`.

## Discrete series

Let $G$ be a real or $p$-adic reductive group with compact center, such as $\mathrm{U}(p, q)$, with a Haar measure.

**Definition.** A *[[discrete series|9AB7HYGPEK]]* representation of $G$ is an irreducible unitary $\pi$ with a nonzero matrix coefficient in $L^2(G)$. Then all its matrix coefficients are in $L^2(G)$, and $\pi$ is a subrepresentation of $L^2(G)$.

**Theorem (Schur orthogonality for discrete series; Godement).** There is $d(\pi) > 0$ with
$$ \int_G \langle \pi(g)u, v \rangle \overline{\langle \pi(g)u', v' \rangle}\, dg = d(\pi)^{-1} \langle u, u' \rangle \overline{\langle v, v' \rangle}. $$
The number $d(\pi)$ is the *formal degree*. For compact $G$ of total mass $1$ it is $\dim \pi$.

**Theorem (Harish-Chandra, 1966).** A connected real $G$ has discrete series if and only if it has a compact Cartan subgroup $T \subseteq K$. Then the discrete series $\pi_\lambda$ are parametrized by the regular $\lambda \in i\mathfrak{t}^*$ with $\lambda - \rho$ integral, up to the Weyl group $W_K$ of $K$, and $\pi_\lambda$ has infinitesimal character $\lambda$, its *Harish-Chandra parameter*. For a suitable Haar measure, $d(\pi_\lambda) = \prod_{\alpha > 0} |\langle \lambda, \alpha \rangle| / \langle \rho, \alpha \rangle$, the Weyl dimension formula for the compact dual group.

**Example.** For $\mathrm{U}(p, q)$, $T$ is the diagonal torus and $W_K = S_p \times S_q$. A Harish-Chandra parameter is $p + q$ distinct numbers in $\frac{p+q-1}{2} + \mathbb{Z}$ split into a $p$ part and a $q$ part, so each regular integral infinitesimal character carries $\binom{p+q}{p}$ discrete series.

**Theorem (lowest $K$-type; Schmid, 1975; Hecht and Schmid, 1975).** Fix the positive roots for which $\lambda$ is dominant, with $\rho_c, \rho_n$ the half sums of the compact and the noncompact ones. The representation of $K$ of highest weight $\Lambda = \lambda + \rho_n - \rho_c$, the *lowest $K$-type*, occurs in $\pi_\lambda$ with multiplicity one, and each $K$-type of $\pi_\lambda$ has highest weight $\Lambda$ plus a sum of noncompact positive roots.

**Definition.** Let $G/K$ be a Hermitian symmetric domain, as for $\mathrm{U}(p, q)$ and $\mathrm{Sp}_{2n}(\mathbb{R})$. A *holomorphic discrete series* is a discrete series realized on holomorphic functions on $G/K$ with values in its lowest $K$-type.

**Example.** For $\mathrm{SL}_2(\mathbb{R})$ and $k \ge 2$, the holomorphic $f$ on $\mathbb{H}$ with $\int |f|^2 y^{k-2}\, dx\, dy < \infty$, under the weight $k$ action, form the holomorphic discrete series $D_k$, with lowest $K$-type $e^{i\phi} \mapsto e^{ik\phi}$ on $\mathrm{SO}(2)$.

**Definition (Plancherel measure).** By Harish-Chandra's Plancherel theorem there is a unique measure $\mu$ on $\widehat{G}$ with $f(1) = \int_{\widehat{G}} \operatorname{tr}\pi(f)\, d\mu(\pi)$ for each smooth compactly supported $f$, the *[[Plancherel measure|6JGAG0KN98]]*. Each discrete series is an atom of mass $d(\pi)$.

[HypsAlt is nonempty](/step/nonempty-hyps/) uses `discreteSeriesCover`, the [Bessel seesaw chapter](/proof/bessel-seesaw/) imposes interlacing of the Harish-Chandra parameters of discrete series of unitary groups, and [ThetaLocalInputs](/step/theta-local-inputs-def/) has `discreteSeriesLowestKType`, `holomorphicDiscreteSeries`, `formalDegreeCompactDual` and `schurOrthogonalitySquareIntegrable`.

## Further reading

- Bump, *Automorphic Forms and Representations*: 2.4 and Ch. 4 ($\mathrm{GL}_2$ over $\mathbb{R}$ and over a $p$-adic field, the Satake isomorphism).
- Bushnell and Henniart, *The Local Langlands Conjecture for GL(2)*: Ch. 1 to 4 and 6 (induction, Jacquet modules, cuspidal representations, local factors).
- Zelevinsky, Induced representations of reductive p-adic groups II, Ann. Sci. ENS 13 (1980) (segments and the classification for $\mathrm{GL}_n$).
- Knapp, *Representation Theory of Semisimple Groups*: Ch. I to IV, IX and XII (highest weights, discrete series, the Plancherel formula).
- Digne and Michel, *Representations of Finite Groups of Lie Type*: Ch. 11 to 15 (Deligne-Lusztig induction, characters of $\mathrm{GL}_n(\mathbb{F}_q)$).
