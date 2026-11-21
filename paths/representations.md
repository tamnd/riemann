The proof uses representations of three kinds of local groups: compact unitary groups at the infinite places of a definite unitary group, the groups $\mathrm{GL}_n(F)$ for a $p$-adic field $F$, and real groups such as $\mathrm{U}(p, q)$. [Chapter 7](/learn/groups/) defines the groups.

## Representations of a group

Let $G$ be a group. All vector spaces are over $\mathbb{C}$.

**Definition.** A *[[representation|WYGRXCG2RN]]* of $G$ is a vector space $V$ with a homomorphism $\pi : G \to \mathrm{GL}(V)$. A subspace $W \subseteq V$ with $\pi(g)W \subseteq W$ for all $g$ is a *subrepresentation*. The representation is *[[irreducible|FX3NEFYFFN]]* if $V \ne 0$ and its only subrepresentations are $0$ and $V$. It is *semisimple* if it is a direct sum of irreducible subrepresentations, or equivalently if each subrepresentation has a complement that is also a subrepresentation.

**Theorem ([[Maschke|4SBZ4EMPBZ]]).** Each finite-dimensional representation of a finite group is semisimple.

**Definition.** An *intertwining map* $T : (\pi, V) \to (\pi', V')$ is a linear map with $T\pi(g) = \pi'(g)T$ for all $g$. The space of these maps is $\mathrm{Hom}_G(\pi, \pi')$, and $\pi \cong \pi'$ if it contains a bijection.

**Theorem ([[Schur's lemma|X4M2FFKQJ6]]).** Let $\pi, \pi'$ be irreducible. Then each nonzero intertwining map $\pi \to \pi'$ is an isomorphism. If $V$ has countable dimension, then $\mathrm{Hom}_G(\pi, \pi) = \mathbb{C}$.

So the center $Z$ of $G$ acts on an irreducible $\pi$ of countable dimension by a character $\omega_\pi : Z \to \mathbb{C}^\times$, the *central character*.

**Definition.** The *dual* of $(\pi, V)$ is $V^* = \mathrm{Hom}(V, \mathbb{C})$ with $(\pi^*(g)\lambda)(v) = \lambda(\pi(g^{-1})v)$. For a character $\chi : G \to \mathbb{C}^\times$, the *twist* $\pi \otimes \chi$ is $V$ with the action $\chi(g)\pi(g)$.

**Definition.** A *class function* on $G$ is a function $f$ with $f(hgh^{-1}) = f(g)$ for all $g, h$. The *[[character of a representation|RMWMYBY8TC]]* $(\pi, V)$ of finite dimension is the class function $\chi_\pi(g) = \operatorname{tr} \pi(g)$.

**Theorem ([[orthogonality of characters|S6ARZ7M1YE]]).** Let $G$ be finite, with $\langle f, f' \rangle = |G|^{-1} \sum_g f(g)\overline{f'(g)}$ on class functions. The characters of the irreducible representations form an orthonormal basis of the class functions. So a finite-dimensional representation is determined by its character.

The domain of the map $rc$ in [IsRecT](/step/is-rect-def/) is the set of isomorphism classes of irreducible representations of $\mathrm{GL}_n(E_w)$; its laws `twist` and `dual` compare $rc$ with twists and duals, and [the statement Green](/step/green-def/) is about class functions on $\mathrm{GL}_d(\mathbb{Z}/g)$ that are characters of irreducible representations.

## Compact groups

Let $G$ be a compact group with the Haar measure $dg$ of total mass $1$ ([Chapter 2](/learn/analysis/#haar-measure)).

**Definition.** A *[[unitary representation|74BPYJNZTM]]* of a topological group $G$ is a Hilbert space $H$ with a homomorphism $\pi$ from $G$ to the unitary group of $H$ such that $g \mapsto \pi(g)v$ is continuous for each $v$. A *[[matrix coefficient|J85Q7QGGHS]]* of $\pi$ is a function $c_{u,v}(g) = \langle \pi(g)u, v \rangle$ with $u, v \in H$.

Each finite-dimensional representation of a compact group has an invariant inner product, so it is unitary and semisimple.

**Theorem ([[Schur orthogonality|ETNDTECY97]]).** Let $\pi, \pi'$ be irreducible unitary representations of the compact group $G$. Then they are finite-dimensional, and
$$ \int_G \langle \pi(g)u, v \rangle \overline{\langle \pi'(g)u', v' \rangle}\, dg = \begin{cases} \dfrac{\langle u, u' \rangle \overline{\langle v, v' \rangle}}{\dim \pi} & \text{if } \pi = \pi', \\ 0 & \text{if } \pi \not\cong \pi'. \end{cases} $$

**Theorem ([[Peter-Weyl|6VC9QE39XH]]).** The matrix coefficients of the irreducible representations span a dense subspace of $L^2(G)$, and $L^2(G) \cong \widehat{\bigoplus}_\pi \pi \otimes \pi^*$ under $G \times G$.

**Definition.** Let $(\pi, H)$ be a unitary representation of $G$ and $\sigma$ an irreducible one. The *[[isotypic component|2J9PXE82TJ]]* $H[\sigma]$ is the closed span of the images of all intertwining maps $\sigma \to \pi$. Then $H = \widehat{\bigoplus}_\sigma H[\sigma]$, and the orthogonal projection onto $H[\sigma]$ is $\dim \sigma \int_G \overline{\chi_\sigma(g)}\, \pi(g)\, dg$.

The [determinants chapter](/proof/determinants/) pairs theta functions with the matrix coefficient `mc M φ g` of an automorphic form, and it reads weights from the abstract isotypic projection lemma `AbsIso`.

## Highest weights and branching

Let $G = \mathrm{U}(n)$ and let $T \cong \mathrm{U}(1)^n$ be the diagonal torus. Each $\lambda \in \mathbb{Z}^n$ gives a character $t \mapsto t_1^{\lambda_1} \cdots t_n^{\lambda_n}$ of $T$.

**Definition.** Let $V$ be a finite-dimensional representation of $\mathrm{U}(n)$. A *weight* of $V$ is a $\lambda \in \mathbb{Z}^n$ with $V_\lambda = \{ v : tv = t^\lambda v \text{ for } t \in T \} \ne 0$. A weight is *dominant* if $\lambda_1 \ge \lambda_2 \ge \dots \ge \lambda_n$.

The action of $\mathrm{U}(n)$ on $V$ extends to $\mathrm{GL}_n(\mathbb{C})$. A *highest weight vector* is a nonzero $v \in V_\lambda$ that is fixed by the upper triangular unipotent matrices.

**Theorem ([[theorem of the highest weight|J1EFY61K87]]).** Each irreducible $V$ has a highest weight vector, unique up to a scalar. Its weight $\lambda$, the *[[highest weight|C5W8BE1DRY]]* of $V$, is dominant, and $V \mapsto \lambda$ is a bijection from the irreducible representations of $\mathrm{U}(n)$ to the dominant weights. The dimension is
$$ \dim V_\lambda = \prod_{i < j} \frac{\lambda_i - \lambda_j + j - i}{j - i} $$
([[Weyl dimension formula|6VBN872BK1]]).

**Example.** The standard representation $\mathbb{C}^n$ has highest weight $(1, 0, \dots, 0)$, and $\det^m$ has highest weight $(m, \dots, m)$. Let $x$ be a $d \times n$ matrix of variables, $n \le d$, and $\Delta_s$ its leading $s \times s$ minor. For dominant $\nu$ with $\nu_n \ge 0$, the polynomial $\prod_s \Delta_s^{\nu_s - \nu_{s+1}}$ (with $\nu_{n+1} = 0$) is a highest weight vector of weight $\nu$ for $\mathrm{GL}_n$.

**Theorem (Weyl branching law).** Let $\mathrm{U}(n-1) \subset \mathrm{U}(n)$ be the upper left block, and let $V_\lambda$ be irreducible of highest weight $\lambda$. Then the restriction of $V_\lambda$ to $\mathrm{U}(n-1)$ is the direct sum, each with multiplicity one, of the $V_\mu$ with
$$ \lambda_1 \ge \mu_1 \ge \lambda_2 \ge \mu_2 \ge \dots \ge \mu_{n-1} \ge \lambda_n. $$

**Example.** For $n = 2$, $V_{(a, b)}$ restricts to $\mathrm{U}(1)$ as the sum of the characters $z^m$, $b \le m \le a$.

The statement [TLiftK](/step/tlift-k-def/) asks for dominant weights `DomWeight` of an automorphic representation of a definite unitary group, the [determinants chapter](/proof/determinants/) builds its test vector from the highest weight vector of minors above, and [ThetaLocalInputs](/step/theta-local-inputs-def/) has the field `weylBranching`.

## Smooth representations of p-adic groups

Let $F$ be a nonarchimedean local field with ring of integers $\mathcal{O}$, uniformizer $\varpi$ and residue field $\mathbb{F}_q$. Let $G = \mathrm{GL}_n(F)$, or more generally $G(F)$ for a reductive group $G$ ([Chapter 7](/learn/groups/#reductive-groups-and-maximal-compact-subgroups)). Write $\nu = |\det|$.

**Definition.** A representation $(\pi, V)$ of $G$ is *smooth* if the stabilizer of each $v \in V$ is open. It is *[[admissible|SZV8Y806Y7]]* if it is smooth and $V^K$ has finite dimension for each compact open subgroup $K$.

A smooth irreducible representation has countable dimension, so it has a central character. For $n = 1$, the smooth irreducible representations are the characters $F^\times \to \mathbb{C}^\times$ that are trivial on an open subgroup.

**Definition.** The *contragredient* $\pi^\vee$ of a smooth $\pi$ is the space of smooth vectors in $V^*$. If $\pi$ is admissible, then $\pi^{\vee\vee} \cong \pi$. For a character $\chi$ of $F^\times$, the twist $\pi \otimes \chi$ means $\pi \otimes (\chi \circ \det)$.

**Theorem (Jacquet; Bernstein, 1974).** Each smooth irreducible representation of $G$ is admissible.

The type `IrrGL` of [IsRecT](/step/is-rect-def/) is the set of classes of smooth irreducible representations of $\mathrm{GL}_n(E_w)$, and its laws `central` and `absCentral` compare $\det rc(x)$ with the central character $\omega$.

## Parabolic induction and the Jacquet module

Let $P = MN$ be a parabolic subgroup with Levi subgroup $M$ and unipotent radical $N$ ([Chapter 7](/learn/groups/#parabolic-subgroups)), and $\delta_P(m) = |\det \mathrm{Ad}(m)|_{\operatorname{Lie} N}|$.

**Definition.** Let $(\sigma, W)$ be a smooth representation of $M$. The *[[parabolic induction|JJP4JFH3C6]]* $i_P^G \sigma$ is the space of smooth $f : G \to W$ with $f(nmg) = \delta_P(m)^{1/2}\sigma(m)f(g)$, with $G$ acting by right translation. For $\mathrm{GL}_n$ and the block upper triangular $P$ with $M = \mathrm{GL}_{n_1} \times \dots \times \mathrm{GL}_{n_k}$, write $\sigma_1 \times \dots \times \sigma_k = i_P^G(\sigma_1 \otimes \dots \otimes \sigma_k)$.

**Definition.** The *Jacquet module* of a smooth $(\pi, V)$ along $P$ is $r_P(\pi) = \delta_P^{-1/2} \otimes V_N$, where $V_N = V / \langle \pi(n)v - v \rangle$ is the space of $N$-coinvariants with its action of $M$.

**Theorem.** The functors $i_P^G$ and $r_P$ are exact and preserve admissibility, and ([[Frobenius reciprocity|PAP76H0ND9]]) $\mathrm{Hom}_G(\pi, i_P^G \sigma) \cong \mathrm{Hom}_M(r_P \pi, \sigma)$ (Bernstein and Zelevinsky, 1977).

**Theorem (geometric lemma; Bernstein and Zelevinsky, 1977).** Let $P = MN$ and $Q = LU$ be standard parabolic subgroups and $\sigma$ a smooth representation of $M$. Then $r_Q(i_P^G \sigma)$ has a finite filtration whose quotients are $i^L_{L \cap wPw^{-1}} \circ w \circ r^M_{M \cap w^{-1}Qw}(\sigma)$, where $w$ runs over the Weyl elements with $w(M \cap B) \subseteq B$ and $w^{-1}(L \cap B) \subseteq B$.

**Example.** For characters $\chi_i$ of $F^\times$, the semisimplification of $r_B(\chi_1 \times \dots \times \chi_n)$ is $\bigoplus_{w \in S_n} \chi_{w(1)} \otimes \dots \otimes \chi_{w(n)}$.

The proof of [local Langlands from the literature](/step/local-langlands-gl-rect-exists-of-literature/) takes `GeometricLemma` as an input, and [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the fields `geometricLemmaFiltration` and `depthZeroJacquetInjective`.

## Cuspidal representations and segments

**Definition.** A smooth irreducible $\pi$ is *[[cuspidal|9AZ164C298]]* if $r_P(\pi) = 0$ for each proper parabolic $P$. It is *supercuspidal* if it is not a subquotient of $i_P^G \sigma$ for any proper $P$ and smooth irreducible $\sigma$.

**Theorem (Harish-Chandra; Jacquet).** A smooth irreducible $\pi$ is cuspidal if and only if its matrix coefficients $g \mapsto \lambda(\pi(g)v)$, $v \in V$, $\lambda \in V^\vee$, have compact support modulo the center. For complex representations of $\mathrm{GL}_n(F)$, cuspidal and supercuspidal are the same.

**Theorem (supercuspidal support; Bernstein and Zelevinsky, 1977).** Let $\pi$ be smooth irreducible of $\mathrm{GL}_n(F)$. There are supercuspidal $\rho_i$ of $\mathrm{GL}_{n_i}(F)$ with $\sum n_i = n$ such that $\pi$ is a subquotient of $\rho_1 \times \dots \times \rho_k$, and the multiset $\{\rho_1, \dots, \rho_k\}$ is unique. It is the *supercuspidal support* of $\pi$.

**Definition (Zelevinsky).** A *segment* is a list $\Delta = [\rho, \rho\nu^{m-1}] = (\rho, \rho\nu, \dots, \rho\nu^{m-1})$ with $\rho$ supercuspidal; $m$ is its length. Two segments are *linked* if their union is a segment and neither contains the other. Then $\Delta_1$ *precedes* $\Delta_2$ if they are linked and $\Delta_2$ begins at $\rho_1\nu^j$ with $j > 0$, where $\Delta_1$ begins at $\rho_1$. A *multisegment* is a multiset of segments.

**Theorem (Zelevinsky, 1980).** The representation $\rho \times \rho\nu \times \dots \times \rho\nu^{m-1}$ has a unique irreducible quotient $L(\Delta)$. A twist of $L(\Delta)$ by a character is square-integrable, and each irreducible representation with a square-integrable twist is $L(\Delta)$ for exactly one $\Delta$. A product $L(\Delta_1) \times \dots \times L(\Delta_k)$ is irreducible if and only if no two $\Delta_i$ are linked.

**Example.** For $\Delta = [\nu^{-1/2}, \nu^{1/2}]$ in $\mathrm{GL}_1$, the representation $\nu^{-1/2} \times \nu^{1/2}$ of $\mathrm{GL}_2(F)$ has the trivial character as subrepresentation and the Steinberg representation $\mathrm{St} = L(\Delta)$ as quotient.

**Theorem ([[Langlands classification|YHFP9HGBTT]] for $\mathrm{GL}_n$; Zelevinsky, 1980).** Let $\mathfrak{a} = \{\Delta_1, \dots, \Delta_k\}$ be a multisegment, ordered so that $\Delta_i$ does not precede $\Delta_j$ for $i < j$. Then $L(\Delta_1) \times \dots \times L(\Delta_k)$ has a unique irreducible quotient $L(\mathfrak{a})$, and $\mathfrak{a} \mapsto L(\mathfrak{a})$ is a bijection from multisegments onto the classes of smooth irreducible representations of all the $\mathrm{GL}_n(F)$.

The law `langlands` of [IsRecT](/step/is-rect-def/) writes $rc(L(\mathfrak{a}))$ as a sum over the segments of $\mathfrak{a}$, the law `cusp` is about cuspidal classes, and a class is `Good` when each element of its supercuspidal support is `GoodCusp`; the clause `R1` of [the Galois row](/proof/galois-row/) asks for a support of characters with no two linked.

## Unramified representations

Let $G = \mathrm{GL}_n(F)$, $K = \mathrm{GL}_n(\mathcal{O})$, $B$ the upper triangular Borel subgroup and $T$ the diagonal torus.

**Definition.** A smooth irreducible $\pi$ is *unramified*, or *spherical*, if $\pi^K \ne 0$. A nonzero vector of $\pi^K$ is a *spherical vector*. A character $\chi = \chi_1 \otimes \dots \otimes \chi_n$ of $T$ is *unramified* if it is trivial on $T(\mathcal{O})$.

**Definition.** The *spherical Hecke algebra* $\mathcal{H}(G, K)$ is the algebra of compactly supported functions on $G$ that are invariant on both sides by $K$, with convolution. It acts on $\pi^K$ by $\pi(f)v = \int_G f(g)\pi(g)v\, dg$.

**Theorem (Satake isomorphism; Satake, 1963).** The map $Sf(t) = \delta_B(t)^{1/2}\int_N f(tn)\, dn$ is an isomorphism of $\mathcal{H}(G, K)$ onto $\mathbb{C}[T/T(\mathcal{O})]^{S_n} = \mathbb{C}[X_1^{\pm 1}, \dots, X_n^{\pm 1}]^{S_n}$. In particular $\mathcal{H}(G, K)$ is commutative.

**Theorem.** If $\pi$ is unramified, then $\dim \pi^K = 1$. Each unramified $\pi$ is the unique unramified subquotient of $\chi_1 \times \dots \times \chi_n$ for unramified $\chi_i$, and the multiset $\{\chi_1(\varpi), \dots, \chi_n(\varpi)\}$ is determined by $\pi$. This multiset, the *Satake parameter* of $\pi$, gives a bijection from the unramified representations onto the multisets of $n$ elements of $\mathbb{C}^\times$.

**Example.** The trivial representation of $\mathrm{GL}_n(F)$ has Satake parameters $q^{(n-1)/2}, q^{(n-3)/2}, \dots, q^{(1-n)/2}$.

Let $I$ be the Iwahori subgroup ([Chapter 7](/learn/groups/#adelic-points-and-compact-open-subgroups)).

**Theorem (Iwahori fixed vectors; Borel, 1976; Casselman, 1980).** A smooth irreducible $\pi$ has $\pi^I \ne 0$ if and only if $\pi$ is a subquotient of $\chi_1 \times \dots \times \chi_n$ with each $\chi_i$ unramified.

**Example.** $\mathrm{St}$ has $\dim \mathrm{St}^I = 1$ and $\mathrm{St}^K = 0$.

The statement `CoreAll` of [the Galois row](/proof/galois-row/) matches Frobenius characteristic polynomials with Satake parameters, `SatU` in [GeoOne](/step/geo-one-def/) asks for Satake parameters of a local component, the field `unram` of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) asks that the base change is spherical, and the Galois row proves local-global compatibility at places with Iwahori fixed vectors (`localGlobalCompatAtIwahoriFixed_of_unlinked`).

## Depth zero representations and types

Let $K_1 = 1 + \varpi M_n(\mathcal{O})$, so $K/K_1 \cong \mathrm{GL}_n(\mathbb{F}_q)$.

**Definition.** A smooth irreducible $\pi$ of $\mathrm{GL}_n(F)$ has *depth zero* if $\pi^{K_1} \ne 0$.

**Definition.** A representation $\tau$ of $\mathrm{GL}_n(\mathbb{F}_q)$ is *cuspidal* if it has no nonzero vector fixed by the unipotent radical of a proper parabolic subgroup. A character $\theta$ of $\mathbb{F}_{q^n}^\times$ is *regular* if $\theta^{q^i} \ne \theta$ for $0 < i < n$.

**Theorem (Green, 1955).** For each regular $\theta$ there is an irreducible cuspidal representation $\tau_\theta$ of $\mathrm{GL}_n(\mathbb{F}_q)$ of dimension $\prod_{i=1}^{n-1}(q^i - 1)$, whose character at each $y$ with irreducible characteristic polynomial, with a root $z \in \mathbb{F}_{q^n}$, is
$$ \chi_{\tau_\theta}(y) = (-1)^{n-1}\sum_{j=0}^{n-1} \theta(z^{q^j}). $$
Each irreducible cuspidal representation is some $\tau_\theta$, and $\tau_\theta \cong \tau_{\theta'}$ if and only if $\theta' = \theta^{q^j}$ for some $j$. This is *Green's parametrization* of the cuspidal representations.

By *Deligne-Lusztig induction* (Deligne and Lusztig, 1976), $\tau_\theta$ is $(-1)^{n-1}R_T^\theta$, where $T(\mathbb{F}_q) = \mathbb{F}_{q^n}^\times$ is the elliptic torus and $R_T^\theta$ is the alternating sum of the $\theta$-parts of the $\ell$-adic cohomology with compact support of a variety with an action of $\mathrm{GL}_n(\mathbb{F}_q) \times T(\mathbb{F}_q)$.

**Theorem (depth zero supercuspidals).** Let $\tau$ be an irreducible cuspidal representation of $\mathrm{GL}_n(\mathbb{F}_q)$, inflated to $K$ and extended to $F^\times K$ by a value at $\varpi$. Then $\operatorname{c-Ind}_{F^\times K}^{G}\tau$ is irreducible, supercuspidal and of depth zero, and each depth zero supercuspidal representation of $\mathrm{GL}_n(F)$ is of this form (Carayol, 1984; Moy and Prasad, 1996).

**Definition (Bushnell and Kutzko, 1998).** The *inertial class* of a supercuspidal support $\{\rho_i\}$ is its class up to twists of each $\rho_i$ by unramified characters. A *type* is a pair $(J, \lambda)$ of a compact open subgroup $J$ and an irreducible representation $\lambda$ of $J$ such that the smooth irreducible $\pi$ that contain $\lambda$ are exactly those with supercuspidal support in one inertial class.

**Example.** $(I, 1)$ is a type for the supports of unramified characters of $F^\times$, by the theorem of Borel. $(K, \tau)$, with $\tau$ cuspidal of $\mathrm{GL}_n(\mathbb{F}_q)$, is a type for the depth zero supercuspidals $\operatorname{c-Ind}\tau$.

The law `depth` of [IsRecT](/step/is-rect-def/) sends a `Good` class with a $K_1$-fixed vector to a tame class, the law `type` gives the inertia of $rc(\sigma)$ for $\sigma$ that inflates a cuspidal $\tau$, and [the statement Green](/step/green-def/) is Green's theorem in the code, obtained from `GreenRegularCharacters` in [Green from regular characters](/step/green-of-regular/).

## Generic representations and local factors

Let $N_n$ be the upper triangular unipotent subgroup of $\mathrm{GL}_n(F)$, $\psi$ a nontrivial character of $F$, and $\psi_N(u) = \psi(u_{12} + \dots + u_{n-1,n})$.

**Definition.** A smooth irreducible $\pi$ is *generic* if $\mathrm{Hom}_{N_n}(\pi, \psi_N) \ne 0$. Then this space has dimension $1$ (Gelfand and Kazhdan, 1975; Shalika, 1974), and the functions $W_v(g) = \lambda(\pi(g)v)$, for $\lambda$ a nonzero element of it, form the *Whittaker model* $\mathcal{W}(\pi, \psi)$. Its elements are *[[Whittaker functions|7EFDMJSVDP]]*.

**Theorem (Zelevinsky, 1980).** $L(\mathfrak{a})$ is generic if and only if no two segments of $\mathfrak{a}$ are linked. Each cuspidal representation is generic.

**Definition (Jacquet, Piatetski-Shapiro and Shalika, 1983).** Let $\pi$ and $\pi'$ be generic of $\mathrm{GL}_n(F)$ and $\mathrm{GL}_m(F)$, $m < n$. For $W \in \mathcal{W}(\pi, \psi)$ and $W' \in \mathcal{W}(\pi', \psi^{-1})$, put
$$ \Psi(s, W, W') = \int_{N_m \backslash \mathrm{GL}_m(F)} W\!\begin{pmatrix} g & 0 \\ 0 & 1_{n-m} \end{pmatrix} W'(g)\, |\det g|^{s - (n-m)/2}\, dg. $$
These integrals converge for $\operatorname{Re}(s)$ large and span a fractional ideal of $\mathbb{C}[q^{s}, q^{-s}]$ with a unique generator $L(s, \pi \times \pi') = P(q^{-s})^{-1}$, $P(0) = 1$, the *L-factor of the pair*. The local functional equation compares $\Psi$ with the integral for $\pi^\vee \times \pi'^\vee$ at $1 - s$ through the factor
$$ \gamma(s, \pi \times \pi', \psi) = \varepsilon(s, \pi \times \pi', \psi)\, \frac{L(1 - s, \pi^\vee \times \pi'^\vee)}{L(s, \pi \times \pi')}, $$
where the *epsilon factor* $\varepsilon(s, \pi \times \pi', \psi)$ is $c q^{-fs}$ for a constant $c$ and an integer $f$. The Langlands classification extends the factors to all irreducible $\pi, \pi'$.

**Example.** For unramified $\pi, \pi'$ with Satake parameters $\{a_i\}$ and $\{b_j\}$, $L(s, \pi \times \pi') = \prod_{i,j}(1 - a_ib_jq^{-s})^{-1}$. For $n = m = 1$ these are the factors of Tate's thesis ([Chapter 5](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions)).

**Theorem (local converse theorem; Henniart, 1993).** Let $\pi, \pi'$ be generic irreducible representations of $\mathrm{GL}_n(F)$ with the same central character. If $\gamma(s, \pi \times \tau, \psi) = \gamma(s, \pi' \times \tau, \psi)$ for each irreducible generic $\tau$ of $\mathrm{GL}_m(F)$ and each $1 \le m \le n - 1$, then $\pi \cong \pi'$.

**Theorem (Bernstein-Zelevinsky finiteness).** If $\sigma$ has finite length, then $i_P^G\sigma$ and $r_P\sigma$ have finite length (Bernstein and Zelevinsky, 1977). For each compact open $J$ there is a constant $c(J)$ with $\dim \pi^J \le c(J)$ for each smooth irreducible $\pi$ (Bernstein, 1974).

**Definition.** The *[[unitary dual|95Q8WZMN0W]]* $\widehat{G}$ of a locally compact group $G$ is the set of classes of irreducible unitary representations. For $G = \mathrm{GL}_n(F)$, taking smooth vectors identifies it with the smooth irreducible $\pi$ that have an invariant inner product.

**Theorem (Bernstein, 1984).** If $\sigma_1, \sigma_2$ are irreducible unitary, then $\sigma_1 \times \sigma_2$ is irreducible.

`LawsT` in [IsRecT](/step/is-rect-def/) has no law on L-factors or epsilon factors of pairs, and [local Langlands from the literature](/step/local-langlands-gl-rect-exists-of-literature/) takes `LocalConverseGL` and `BernsteinZelevinskyFiniteness` as inputs that its proof does not use; [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the fields `genericUnitaryDualGL` and `bernsteinUnitaryProductIrreducible`.

## Representations of real groups

Let $G$ be the real points of a reductive group, for example $\mathrm{U}(p, q)$ or $\mathrm{GL}_n(\mathbb{R})$, let $K$ be a maximal compact subgroup, $\mathfrak{g}$ the complexified Lie algebra and $\mathcal{Z}(\mathfrak{g})$ the center of its [[universal enveloping algebra|SCZ8PRVY00]] $U(\mathfrak{g})$.

**Definition.** Let $\pi$ be a continuous representation of $G$ on a Banach space $V$. A vector $v$ is *$K$-finite* if $\pi(K)v$ spans a finite-dimensional space. The representation is *admissible* if each irreducible representation of $K$ occurs in $V$ with finite multiplicity.

The $K$-finite vectors $V_K$ of an admissible $\pi$ are smooth and form a dense subspace stable under $\mathfrak{g}$ and $K$.

**Definition.** A *$(\mathfrak{g}, K)$-module* is a vector space $V$ with actions of $\mathfrak{g}$ and $K$ such that each vector is $K$-finite, the derivative of the action of $K$ is the action of $\operatorname{Lie}(K)$, and $k(Xv) = (\mathrm{Ad}(k)X)(kv)$. A *[[Harish-Chandra module|2MKHH636C3]]* is a $(\mathfrak{g}, K)$-module that is finitely generated over $U(\mathfrak{g})$ and admissible.

**Theorem (Harish-Chandra, 1953).** Each irreducible unitary representation $\pi$ of $G$ is admissible, and $V_K$ is an irreducible Harish-Chandra module. Two irreducible unitary representations are equivalent if and only if their Harish-Chandra modules are isomorphic.

**Definition.** On an irreducible Harish-Chandra module, $\mathcal{Z}(\mathfrak{g})$ acts by a character, the *infinitesimal character*. By the [[Harish-Chandra isomorphism|YNBQS0X9ZB]] $\mathcal{Z}(\mathfrak{g}) \cong S(\mathfrak{h})^W$, for a Cartan subalgebra $\mathfrak{h}$ with Weyl group $W$, it is a $W$-orbit in $\mathfrak{h}^*$. For $\mathfrak{g} = \mathfrak{gl}_n(\mathbb{C})$ it is a multiset of $n$ complex numbers. It is *regular* if they are distinct.

**Example.** The irreducible representation of $\mathrm{U}(n)$ of highest weight $\lambda$ has infinitesimal character $\lambda + \rho = \{\lambda_k + \frac{n+1}{2} - k : 1 \le k \le n\}$.

**Theorem (Casselman-Wallach globalization; Casselman, 1989; Wallach, 1992).** Each Harish-Chandra module $V$ is $V^\infty_K$ for a smooth admissible representation $V^\infty$ of $G$ on a Fréchet space of moderate growth, unique up to isomorphism, and $V \mapsto V^\infty$ is an equivalence of categories.

The fields `weights` of [Row0b](/step/row0b-def/) and `weight` of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) are stated with the infinitesimal character, [the Siegel-Weil chapter](/proof/siegel-weil/) uses a $K$-finite Schwartz function, and the functional row in [HypsAlt is nonempty](/step/nonempty-hyps/) uses the fields `harishChandraModules` and `casselmanWallach`.

## Discrete series

Let $G$ be a real or $p$-adic reductive group with compact center, such as $\mathrm{U}(p, q)$, with a Haar measure.

**Definition.** A *[[discrete series|9AB7HYGPEK]]* representation of $G$ is an irreducible unitary $\pi$ with a nonzero matrix coefficient in $L^2(G)$. Then all matrix coefficients are in $L^2(G)$, and $\pi$ is a subrepresentation of $L^2(G)$.

**Theorem (Schur orthogonality for discrete series; Godement).** There is $d(\pi) > 0$ with
$$ \int_G \langle \pi(g)u, v \rangle \overline{\langle \pi(g)u', v' \rangle}\, dg = d(\pi)^{-1} \langle u, u' \rangle \overline{\langle v, v' \rangle}. $$
The number $d(\pi)$ is the *formal degree*. For compact $G$ with total mass $1$ it is $\dim \pi$.

**Theorem (Harish-Chandra, 1966).** A real $G$ has discrete series if and only if it has a compact Cartan subgroup $T \subseteq K$. Then the discrete series are parametrized by the regular $\lambda \in i\mathfrak{t}^*$ with $\lambda - \rho$ integral, up to the Weyl group $W_K$ of $K$; $\pi_\lambda$ has infinitesimal character $\lambda$, its *Harish-Chandra parameter*. For a suitable Haar measure, $d(\pi_\lambda) = \prod_{\alpha > 0} |\langle \lambda, \alpha \rangle| / \langle \rho, \alpha \rangle$, the dimension given by the Weyl formula for the compact dual group.

**Example.** For $\mathrm{U}(p, q)$, $T$ is the diagonal torus and $W_K = S_p \times S_q$. A Harish-Chandra parameter is $p + q$ distinct numbers in $\frac{p+q-1}{2} + \mathbb{Z}$, split into a $p$ part and a $q$ part, so each regular integral infinitesimal character carries $\binom{p+q}{p}$ discrete series.

**Theorem (lowest $K$-type; Schmid, 1975; Hecht and Schmid, 1975).** Fix the positive roots for which $\lambda$ is dominant, and let $\rho_c, \rho_n$ be the half sums of the compact and the noncompact ones. The representation of $K$ of highest weight $\Lambda = \lambda + \rho_n - \rho_c$ occurs in $\pi_\lambda$ with multiplicity one, and each $K$-type of $\pi_\lambda$ has highest weight $\Lambda$ plus a sum of noncompact positive roots. It is the *lowest $K$-type*.

**Definition.** Let $G/K$ be a Hermitian symmetric domain, as for $\mathrm{U}(p, q)$ and $\mathrm{Sp}_{2n}(\mathbb{R})$. A discrete series is a *holomorphic discrete series* if it is realized on holomorphic functions on $G/K$ with values in its lowest $K$-type.

**Example.** For $\mathrm{SL}_2(\mathbb{R})$ and $k \ge 2$, the holomorphic $f$ on $\mathbb{H}$ with $\int |f|^2 y^{k-2}\, dx\, dy < \infty$, with the weight $k$ action, form the holomorphic discrete series $D_k$. Its lowest $K$-type is the character $e^{i\phi} \mapsto e^{ik\phi}$ of $\mathrm{SO}(2)$.

**Definition (Plancherel measure).** By the Plancherel theorem of Harish-Chandra, there is a unique measure $\mu$ on $\widehat{G}$ with $f(1) = \int_{\widehat{G}} \operatorname{tr}\pi(f)\, d\mu(\pi)$ for each smooth compactly supported $f$. It is the *[[Plancherel measure|6JGAG0KN98]]*, and each discrete series is an atom of mass $d(\pi)$.

The functional row of [HypsAlt is nonempty](/step/nonempty-hyps/) uses `discreteSeriesCover`, the [Bessel seesaw chapter](/proof/bessel-seesaw/) states its interlacing condition on the Harish-Chandra parameters of discrete series of unitary groups, and [ThetaLocalInputs](/step/theta-local-inputs-def/) has the fields `discreteSeriesLowestKType`, `holomorphicDiscreteSeries`, `formalDegreeCompactDual` and `schurOrthogonalitySquareIntegrable`.

## Further reading

- Bump, *Automorphic Forms and Representations*: Ch. 2.4 (discrete series and $(\mathfrak{g}, K)$-modules of $\mathrm{GL}_2(\mathbb{R})$) and Ch. 4 (smooth representations of $\mathrm{GL}_2$ over a $p$-adic field, the Satake isomorphism).
- Bushnell and Henniart, *The Local Langlands Conjecture for GL(2)*: Ch. 1 to 4 (smooth representations, induction, Jacquet modules, cuspidal representations) and Ch. 6 (local factors).
- Zelevinsky, Induced representations of reductive p-adic groups II, Ann. Sci. ENS 13 (1980): segments, multisegments and the classification for $\mathrm{GL}_n$.
- Knapp, *Representation Theory of Semisimple Groups*: Ch. I to IV (compact groups, highest weights) and Ch. IX, XII (discrete series, formal degree, the Plancherel formula).
- Digne and Michel, *Representations of Finite Groups of Lie Type*: Ch. 11 to 15 (Deligne-Lusztig induction and the characters of $\mathrm{GL}_n(\mathbb{F}_q)$).
