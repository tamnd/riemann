Algebraic number theory studies the finite extensions of $\mathbb{Q}$, their rings of integers and their completions. The proof needs it for [Row0b](/step/row0b-def/) (a CM field and its places), [VWin](/step/vwin-def/) (subfields of cyclotomic fields) and [IsRecT](/step/is-rect-def/) (a completion at a finite place). [Chapter 1](/learn/algebra/) defines rings, ideals, Galois extensions and finite fields.

## Number fields and their integers

**Definition.** A *[[number field|MWBDFS2KJ5]]* is a field extension $K$ of $\mathbb{Q}$ of finite degree $n = [K : \mathbb{Q}]$. An element $\alpha \in K$ is an *[[algebraic integer|C8Q408SSJM]]* if it is a root of a monic polynomial with coefficients in $\mathbb{Z}$. The algebraic integers of $K$ form a subring $\mathcal{O}_K$, the *[[ring of integers|0BXA4Q0JHW]]* of $K$. It is a free $\mathbb{Z}$-module of rank $n$; a $\mathbb{Z}$-basis of it is an *integral basis*.

**Example.** For squarefree $d \neq 0, 1$ and $K = \mathbb{Q}(\sqrt d)$, $\mathcal{O}_K = \mathbb{Z}[\sqrt d]$ if $d \equiv 2, 3 \pmod 4$, and $\mathcal{O}_K = \mathbb{Z}[(1 + \sqrt d)/2]$ if $d \equiv 1 \pmod 4$.

**Definition (embeddings and signature).** A number field $K$ of degree $n$ has exactly $n$ embeddings $\sigma_1, \dots, \sigma_n : K \to \mathbb{C}$. If $r_1$ of them are real, the others form $r_2$ pairs $\{\sigma, \bar\sigma\}$ and $n = r_1 + 2r_2$. The pair $(r_1, r_2)$ is the *signature* of $K$. The *Galois conjugates* $\sigma_i(\alpha)$ of $\alpha \in K$ are the roots of its minimal polynomial, each repeated $n / [\mathbb{Q}(\alpha) : \mathbb{Q}]$ times.

**Definition (norm and trace).** For $\alpha \in K$, $N_{K/\mathbb{Q}}(\alpha) = \prod_i \sigma_i(\alpha)$ and $\mathrm{Tr}_{K/\mathbb{Q}}(\alpha) = \sum_i \sigma_i(\alpha)$. They are the determinant and the trace of the $\mathbb{Q}$-linear map $x \mapsto \alpha x$ on $K$, so they lie in $\mathbb{Q}$, and in $\mathbb{Z}$ when $\alpha \in \mathcal{O}_K$. For a finite extension $L/K$, the relative [[field norm|KRNFEZWPY0]] $N_{L/K}(\alpha)$ is the determinant of $x \mapsto \alpha x$ on the $K$-vector space $L$.

**Definition (discriminant).** For an integral basis $\omega_1, \dots, \omega_n$, the *[[discriminant|3BCYVS9E17]]* of $K$ is $d_K = \det\bigl(\sigma_i(\omega_j)\bigr)^2$, a nonzero integer independent of the basis. The *root discriminant* is $\mathrm{rd}(K) = |d_K|^{1/n}$.

**Example.** $d_{\mathbb{Q}(i)} = -4$, and $d_{\mathbb{Q}(\zeta_p)} = (-1)^{(p-1)/2} p^{p-2}$ for a prime $p$.

If $L/K$ is unramified at each finite prime (defined below), then $\mathrm{rd}(L) = \mathrm{rd}(K)$. For a CM field $E$, the error term of the volume bound in the [Weil bound chapter](/proof/weil-bound/) is $\log \mathrm{rd}(E) + |\operatorname{Re} (L'/L)(1, \chi_d)|$.

## Ideals and the class group

**Definition.** A *[[Dedekind domain|7NPY2CN5KB]]* is a noetherian integral domain, integrally closed in its field of fractions, in which each nonzero prime ideal is maximal.

**Theorem (Dedekind, 1871).** The ring $\mathcal{O}_K$ is a Dedekind domain. In a Dedekind domain, each nonzero ideal is a product of nonzero prime ideals, unique up to order.

**Definition (fractional ideal).** Let $A$ be a Dedekind domain with field of fractions $K$. A *[[fractional ideal|YB4JTB4WJN]]* of $A$ is a nonzero finitely generated $A$-submodule of $K$. Under multiplication they form an abelian group $I_K$, free on the nonzero prime ideals. The principal ones $\alpha A$, $\alpha \in K^\times$, form a subgroup $P_K$.

**Definition (ideal norm).** The *[[ideal norm|M54ADM0CVF]]* of a nonzero ideal $\mathfrak a$ of $\mathcal{O}_K$ is $N(\mathfrak a) = |\mathcal{O}_K / \mathfrak a|$. It extends to a homomorphism $N : I_K \to \mathbb{Q}_{>0}^\times$ with $N(\alpha \mathcal{O}_K) = |N_{K/\mathbb{Q}}(\alpha)|$.

**Definition (class group).** The *[[ideal class group|WQ46BD3ARY]]* of $K$ is $\mathrm{Cl}_K = I_K / P_K$. It is finite by the Minkowski bound (Minkowski, 1891). Its order $h_K$ is the *class number*, and $\mathcal{O}_K$ is a principal ideal domain if and only if $h_K = 1$.

**Example.** In $\mathbb{Q}(\sqrt{-5})$, $(2) = \mathfrak p^2$ with $\mathfrak p = (2, 1 + \sqrt{-5})$. No element has norm $a^2 + 5b^2 = 2$, so $\mathfrak p$ is not principal, and $h_K = 2$.

**Theorem (Dirichlet's unit theorem, 1846).** Let $\mu_K$ be the finite group of roots of unity in $K$, of order $w_K$. Then $\mathcal{O}_K^\times \cong \mu_K \times \mathbb{Z}^{r_1 + r_2 - 1}$.

**Definition (regulator).** Let $\varepsilon_1, \dots, \varepsilon_r$, $r = r_1 + r_2 - 1$, be a basis of $\mathcal{O}_K^\times$ modulo $\mu_K$. Choose one embedding $\sigma_v$ for each real embedding and each pair of complex ones, put $e_v = 1$ if $\sigma_v$ is real and $e_v = 2$ otherwise, and drop one of the $r + 1$ choices. The *regulator* $R_K$ is $\bigl|\det\bigl(e_v \log |\sigma_v(\varepsilon_j)|\bigr)\bigr|$, independent of the choices.

The Chowla-Selberg formula of the [CM divisibility chapter](/proof/cm-divisibility/) is a mean over the $h$ ideal classes of an imaginary quadratic field.

## Kinds of number fields

**Definition.** A number field $K$ is *totally real* if $r_2 = 0$, and *totally complex* (or totally imaginary) if $r_1 = 0$. An *imaginary quadratic field* is a [[quadratic field|7SV4WA92SM]] $\mathbb{Q}(\sqrt{-d})$ with $d > 0$.

**Definition (CM field).** A *CM field* is a totally complex quadratic extension $E$ of a totally real field $E^+$, the *maximal real subfield* of $E$.

**Proposition.** A CM field $E$ has a unique automorphism $c$ with $\sigma(c(x)) = \overline{\sigma(x)}$ for each embedding $\sigma : E \to \mathbb{C}$ and each $x \in E$. This *complex conjugation* generates $\mathrm{Gal}(E/E^+)$.

**Example.** Each imaginary quadratic field is CM with $E^+ = \mathbb{Q}$. For $N \geq 3$, $\mathbb{Q}(\zeta_N)$ is CM with $E^+ = \mathbb{Q}(\zeta_N + \zeta_N^{-1})$.

**Definition (CM type).** Let $E$ be a CM field of degree $2g$. A *CM type* is a set $\Phi$ of $g$ embeddings $E \to \mathbb{C}$ disjoint from $\bar\Phi = \{\sigma \circ c : \sigma \in \Phi\}$, so that $\Phi \cup \bar\Phi$ is the set of all embeddings.

**Definition (abelian field).** A number field $K$ is an *abelian field* if $K/\mathbb{Q}$ is an [[abelian extension|EQDEXBWGJH]], that is, Galois with abelian group.

**Definition (cyclotomic field).** For $N \geq 1$ and a primitive $N$-th root of unity $\zeta_N$, the $N$-th *[[cyclotomic field|NN77VYSGXR]]* is $\mathbb{Q}(\zeta_N)$.

**Theorem (Gauss, Kronecker).** $[\mathbb{Q}(\zeta_N) : \mathbb{Q}] = \varphi(N)$, the ring of integers is $\mathbb{Z}[\zeta_N]$, and $a \mapsto \sigma_a$, with $\sigma_a(\zeta_N) = \zeta_N^a$, is an isomorphism
$$(\mathbb{Z}/N\mathbb{Z})^\times \cong \mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q}).$$

So the subfields of $\mathbb{Q}(\zeta_N)$ are the fixed fields of the subgroups $H \subseteq (\mathbb{Z}/N\mathbb{Z})^\times$, and all are abelian; $H = \{\pm 1\}$ gives $\mathbb{Q}(\zeta_N)^+$.

[Row0b](/step/row0b-def/) fixes a CM field $E \supset E^+$, and its field `dual` compares the dual of $\pi$ with the complex conjugate of $\pi$. In [VWin](/step/vwin-def/), `IsChiField` cuts out $E$ in $\mathbb{Q}(\zeta_N)$ as the fixed field of the $\sigma_a$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$ and two Jacobi symbols equal to $1$. CM types enter the functional equation sampled in the [literature chapter](/proof/literature/) and the data `AllLat` of the [CM divisibility chapter](/proof/cm-divisibility/).

## The splitting of primes

Let $L/K$ be an extension of number fields of degree $n$ and $\mathfrak p$ a nonzero prime of $\mathcal{O}_K$. Write
$$\mathfrak p \mathcal{O}_L = \mathfrak P_1^{e_1} \cdots \mathfrak P_g^{e_g}$$
with distinct primes $\mathfrak P_i$ of $\mathcal{O}_L$; they *lie above* $\mathfrak p$. The *ramification index* of $\mathfrak P_i$ is $e_i$, and its *residue degree* is $f_i = [\mathcal{O}_L/\mathfrak P_i : \mathcal{O}_K/\mathfrak p]$.

**Theorem (fundamental identity).** $\sum_{i=1}^g e_i f_i = n$ (Neukirch, I.8.2).

**Definition ([[ramification|E7WHZXQ0WF]]).** The prime $\mathfrak p$ is *unramified* in $L$ if each $e_i = 1$, and *ramified* otherwise. It *splits completely* if $g = n$, and is *inert* if $\mathfrak p \mathcal{O}_L$ is prime ($g = 1$, $f_1 = n$).
**Theorem (Dedekind).** A prime $p$ ramifies in $K$ if and only if $p \mid d_K$ (Neukirch, III.2.12). So only finitely many primes ramify.

**Example.** In $\mathbb{Z}[i]$, $2 = -i(1 + i)^2$ ramifies, $p \equiv 1 \pmod 4$ splits as $(a + bi)(a - bi)$, and $p \equiv 3 \pmod 4$ is inert. In $\mathbb{Q}(\zeta_N)$, a prime $p \nmid N$ is unramified, with residue degree the order of $p$ in $(\mathbb{Z}/N\mathbb{Z})^\times$.

### Decomposition groups and Frobenius elements

Let $L/K$ be Galois with group $G$. Then $G$ acts transitively on the primes above $\mathfrak p$, so all $e_i$ equal one $e$, all $f_i$ equal one $f$, and $efg = n$.

**Definition (decomposition group).** Let $\mathfrak P$ lie above $\mathfrak p$, with residue fields $k_{\mathfrak P} = \mathcal{O}_L/\mathfrak P$ and $k_{\mathfrak p} = \mathcal{O}_K/\mathfrak p$. The *[[decomposition group|7X92G8CQ33]]* is $D_{\mathfrak P} = \{\sigma \in G : \sigma(\mathfrak P) = \mathfrak P\}$. The induced map $D_{\mathfrak P} \to \mathrm{Gal}(k_{\mathfrak P}/k_{\mathfrak p})$ is onto, and its kernel is the *inertia group* $I_{\mathfrak P}$. Then $|D_{\mathfrak P}| = ef$, $|I_{\mathfrak P}| = e$, and $D_{\tau \mathfrak P} = \tau D_{\mathfrak P} \tau^{-1}$ for $\tau \in G$.

**Definition (Frobenius element).** Let $\mathfrak p$ be unramified in $L$ and $q = N(\mathfrak p)$. Then $D_{\mathfrak P} \cong \mathrm{Gal}(k_{\mathfrak P}/k_{\mathfrak p})$ is cyclic, and the *[[Frobenius element|H5145REFMW]]* $\mathrm{Frob}_{\mathfrak P}$ is the unique $\sigma \in D_{\mathfrak P}$ with
$$\sigma(x) \equiv x^q \pmod{\mathfrak P} \quad \text{for each } x \in \mathcal{O}_L.$$
Its order is $f$. Since $\mathrm{Frob}_{\tau\mathfrak P} = \tau\, \mathrm{Frob}_{\mathfrak P}\, \tau^{-1}$, its conjugacy class $\mathrm{Frob}_{\mathfrak p}$ depends only on $\mathfrak p$; for abelian $G$ it is one element, the *Artin symbol* of $\mathfrak p$. The prime $\mathfrak p$ splits completely if and only if $\mathrm{Frob}_{\mathfrak p} = 1$. The inverse of $\mathrm{Frob}_{\mathfrak P}$ is the *geometric Frobenius*.

**Example.** For $L = \mathbb{Q}(\zeta_N)$ and $p \nmid N$, $\mathrm{Frob}_p = \sigma_p$, since $\bigl(\sum a_i \zeta_N^i\bigr)^p \equiv \sum a_i \zeta_N^{ip} \pmod p$ for integers $a_i$.

Chapter 6 states the Chebotarev density theorem with these elements. In [GeoOne](/step/geo-one-def/), `ESAt` evaluates $\rho(\sigma^{-1})$ at Frobenius elements $\sigma$ and `CrysAt` restricts $\rho$ to decomposition groups. The triples of [LocalMatching](/step/local-matching-def/) ask that $E/F$ is unramified, with conditions at the inert places.

## Places and completions

**Definition.** An *absolute value* on a field $K$ is a map $|\cdot| : K \to \mathbb{R}_{\geq 0}$ with $|x| = 0$ only for $x = 0$, $|xy| = |x|\,|y|$ and $|x + y| \leq |x| + |y|$. It is *non-archimedean* if $|x + y| \leq \max(|x|, |y|)$. Two absolute values are *equivalent* if they define the same topology; then one is a positive power of the other.

**Definition.** For a prime $p$, the *$p$-adic absolute value* on $\mathbb{Q}$ is $|p^k a / b|_p = p^{-k}$ for $k \in \mathbb{Z}$ and integers $a, b$ prime to $p$, with $|0|_p = 0$.

**Theorem ([[Ostrowski|GCQ23XT6VD]], 1916).** Each nontrivial absolute value on $\mathbb{Q}$ is equivalent to $|\cdot|_\infty$ or to $|\cdot|_p$ for exactly one prime $p$.

**Definition (place).** A *[[place|BT5V3TSNY6]]* of $K$ is an equivalence class of nontrivial absolute values on $K$. A nonzero prime $\mathfrak p$ of $\mathcal{O}_K$ gives a *finite place* with normalized absolute value $|x|_{\mathfrak p} = N(\mathfrak p)^{-v_{\mathfrak p}(x)}$, where the *$\mathfrak p$-adic valuation* $v_{\mathfrak p}(x)$ is the exponent of $\mathfrak p$ in $x\mathcal{O}_K$. A real embedding $\sigma$ gives a *real place* with $|x|_v = |\sigma(x)|$, and a pair $\{\sigma, \bar\sigma\}$ gives a *complex place* with normalized value $|x|_v = |\sigma(x)|^2$ (not an absolute value in the strict sense). These are the *infinite places*, written $v \mid \infty$; finite ones are written $v \nmid \infty$. There are no other places, so $K$ has $r_1$ real and $r_2$ complex places.

**Theorem (product formula).** For $x \in K^\times$, $|x|_v = 1$ for almost all $v$, and $\prod_v |x|_v = 1$ (Neukirch, III.1.3).

**Definition (completion).** The *completion* $K_v$ is the completion of $K$ for $|\cdot|_v$: $\mathbb{R}$ at a real place, $\mathbb{C}$ at a complex one. At a finite $v = \mathfrak p$, $\mathcal{O}_v = \{x : |x|_v \leq 1\}$ is a discrete valuation ring with maximal ideal $\mathfrak m_v = \{x : |x|_v < 1\}$. A *uniformizer* is an element $\varpi_v$ with $\mathfrak m_v = \varpi_v \mathcal{O}_v$. The *[[residue field|NJ3APQ8BHH]]* $k_v = \mathcal{O}_v / \mathfrak m_v \cong \mathcal{O}_K / \mathfrak p$ has $q_v = N(\mathfrak p)$ elements.

### p-adic numbers and local fields

**Definition.** The field $\mathbb{Q}_p$ of *[[p-adic numbers|BT6T702C28]]* is the completion of $\mathbb{Q}$ for $|\cdot|_p$. Its valuation ring is the ring $\mathbb{Z}_p \cong \varprojlim \mathbb{Z}/p^k\mathbb{Z}$ of *[[p-adic integers|V6TJAFZ4MD]]*. The element $p$ is a uniformizer, and the residue field is $\mathbb{F}_p$.

**Example.** $\mathbb{Q}_p / \mathbb{Z}_p \cong \mathbb{Z}[1/p]/\mathbb{Z}$ is the union of the subgroups $p^{-k}\mathbb{Z}_p / \mathbb{Z}_p \cong \mathbb{Z}/p^k\mathbb{Z}$. A finite $\mathbb{Z}_p$-module $M$ has length $m$ exactly when $|M| = p^m$.

**Definition.** A *[[local field|J85FZEQG38]]* is a field that is locally compact for a nontrivial absolute value. In characteristic $0$ these are $\mathbb{R}$, $\mathbb{C}$ and the finite extensions of the $\mathbb{Q}_p$, among them each completion $K_v$ of a number field at a finite place.

Let $L/K$ be a finite extension and $v$ a place of $K$. A place $w$ of $L$ *lies above* $v$, written $w \mid v$, if $|\cdot|_w$ restricted to $K$ lies in $v$; for finite $v = \mathfrak p$ these are the primes $\mathfrak P$ above $\mathfrak p$. Then $L \otimes_K K_v \cong \prod_{w \mid v} L_w$, with $[L_w : K_v] = e_w f_w$ for finite $v$, and for Galois $L/K$ restriction gives $\mathrm{Gal}(L_w/K_v) \cong D_{\mathfrak P}$.

[IsRecT](/step/is-rect-def/) is about the local field $E_w$, and its law `type` assumes $E_w \cong \mathbb{Q}_g$. The epsilon factor of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) uses a uniformizer $\varpi$, and [VWin](/step/vwin-def/) bounds the $\mathbb{Z}_\ell$-lengths of Tate-Shafarevich groups with coefficients $\mathbb{Q}_\ell/\mathbb{Z}_\ell(-e)$.

### Valuation rings over a place and the field isomorphism

Let $\Omega$ be an algebraic closure of a number field $K$.

**Definition.** A *[[valuation ring|QSX12D8RQM]]* of $\Omega$ is a subring $A$ with $x \in A$ or $x^{-1} \in A$ for each $x \in \Omega^\times$. A valuation ring $A \neq \Omega$ *lies over* the finite place $w = \mathfrak p$ if $A \cap K = (\mathcal{O}_K)_{\mathfrak p}$.

Such rings exist, $\mathrm{Gal}(\Omega/K)$ permutes them transitively, and the stabilizer of one is a decomposition group at $w$. Choosing one amounts to choosing, compatibly, a prime above $\mathfrak p$ in each finite extension of $K$ in $\Omega$.

**Definition.** Fix a prime $\ell$ and an algebraic closure $\overline{\mathbb{Q}}_\ell$ of $\mathbb{Q}_\ell$. The absolute value $|\cdot|_\ell$ extends uniquely to $\overline{\mathbb{Q}}_\ell$.

**Proposition.** There is a field isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, since both fields are algebraically closed of characteristic $0$ and transcendence degree $2^{\aleph_0}$ over $\mathbb{Q}$ (this uses the axiom of choice). No such $\iota$ is continuous.

[RecTExists](/step/rect-exists-def/) and [IsRecT](/step/is-rect-def/) take a valuation subring $A$ of $\Omega$ above $w$ (the hypothesis `IsPlaceOver A w`). [Row0b](/step/row0b-def/) uses $\iota$ to compare a Galois representation in $\mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ with the complex data of $\pi$.

## Adeles and ideles

**Definition (adele ring).** The *[[adele ring|NYJFYZ0B4M]]* $\mathbb{A}_K$ is the set of $(x_v) \in \prod_v K_v$ with $x_v \in \mathcal{O}_v$ for almost all finite $v$, with componentwise operations and the *restricted product topology*: a basis of open sets is $\prod_{v \in S} U_v \times \prod_{v \notin S} \mathcal{O}_v$, for finite sets $S$ of places containing the infinite ones and open $U_v \subseteq K_v$. It is a locally compact ring. The *finite adeles* $\mathbb{A}_{K,f}$ use the finite places only, and $\mathbb{A}_K = K_\infty \times \mathbb{A}_{K,f}$ with $K_\infty = \prod_{v \mid \infty} K_v \cong \mathbb{R}^{r_1} \times \mathbb{C}^{r_2}$.

**Example.** $\mathbb{A}_{\mathbb{Q},f} = \widehat{\mathbb{Z}} \otimes_{\mathbb{Z}} \mathbb{Q}$ with $\widehat{\mathbb{Z}} = \prod_p \mathbb{Z}_p$, and $\mathbb{A}_\mathbb{Q} = \mathbb{R} \times \mathbb{A}_{\mathbb{Q},f}$.

**Proposition.** Diagonally, $K$ is a discrete subgroup of $\mathbb{A}_K$ with compact quotient. For a finite extension $L/K$, $\mathbb{A}_L \cong \mathbb{A}_K \otimes_K L$.

**Definition (ideles).** The *[[idele group|KKHTYY0TGK]]* $\mathbb{A}_K^\times$ is the unit group of $\mathbb{A}_K$: the $(x_v)$ with $x_v \in K_v^\times$, and $x_v \in \mathcal{O}_v^\times$ for almost all $v$. Its topology is the restricted product topology for the $\mathcal{O}_v^\times$, finer than the one from $\mathbb{A}_K$. Diagonally, $K^\times$ is a discrete subgroup, and the *[[idele class group|9GHD9MXNYV]]* is $C_K = \mathbb{A}_K^\times / K^\times$.

The *idele norm* $|x|_{\mathbb{A}} = \prod_v |x_v|_v$ is a continuous homomorphism $\mathbb{A}_K^\times \to \mathbb{R}_{>0}$, trivial on $K^\times$ by the product formula. Its kernel modulo $K^\times$ is compact.

**Proposition.** The map $\mathbb{A}_K^\times \to I_K$, $x \mapsto \prod_{v \nmid \infty} \mathfrak p_v^{v(x_v)}$, is onto with kernel $K_\infty^\times \times \prod_{v \nmid \infty} \mathcal{O}_v^\times$, and induces
$$\mathbb{A}_K^\times \big/ \Bigl(K^\times \cdot K_\infty^\times \cdot \prod_{v \nmid \infty} \mathcal{O}_v^\times\Bigr) \cong \mathrm{Cl}_K.$$

For finite $L/K$, the norm $N_{L/K} : \mathbb{A}_L^\times \to \mathbb{A}_K^\times$ is $N(x)_v = \prod_{w \mid v} N_{L_w/K_v}(x_w)$. It maps $L^\times$ into $K^\times$, so it induces $C_L \to C_K$.

The theta integrals of the [theta matching chapter](/proof/theta-matching/) are over the adelic points of unitary groups. In [TLiftK](/step/tlift-k-def/), `Base` holds an additive character of $\mathbb{A}_F$, and `ResEtaPow` asks whether an idele $t$ of $F$ lies in $F^\times \cdot N(\mathbb{A}_E^\times)$.

## Further reading

- J. Neukirch, *Algebraic Number Theory*, chapters I and II.
- J.-P. Serre, *Local Fields*, chapters I to III.
- L. C. Washington, *Introduction to Cyclotomic Fields*, chapters 2 and 4.
