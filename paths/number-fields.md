Algebraic number theory studies the finite extensions of $\mathbb{Q}$, their rings of integers and their completions. The proof uses this language in its arithmetic statements: [Row0b](/step/row0b-def/) is about a CM field and its places, [VWin](/step/vwin-def/) is about subfields of cyclotomic fields, and [IsRecT](/step/is-rect-def/) is a statement over the completion of a number field at a finite place. [Chapter 1](/learn/algebra/) defines rings, ideals, Galois extensions and finite fields.

## Number fields and their integers

**Definition.** A *[[number field|MWBDFS2KJ5]]* is a field extension $K$ of $\mathbb{Q}$ of finite degree $n = [K : \mathbb{Q}]$. An element $\alpha \in K$ is an *[[algebraic integer|C8Q408SSJM]]* if it is a root of a monic polynomial with coefficients in $\mathbb{Z}$. The algebraic integers of $K$ form a subring $\mathcal{O}_K$, the *[[ring of integers|0BXA4Q0JHW]]* of $K$. It is a free $\mathbb{Z}$-module of rank $n$, and a $\mathbb{Z}$-basis of it is an *integral basis*.

**Example.** Let $d \neq 0, 1$ be a squarefree integer and $K = \mathbb{Q}(\sqrt d)$. Then $\mathcal{O}_K = \mathbb{Z}[\sqrt d]$ if $d \equiv 2, 3 \pmod 4$, and $\mathcal{O}_K = \mathbb{Z}[(1 + \sqrt d)/2]$ if $d \equiv 1 \pmod 4$.

**Definition (embeddings and signature).** A number field $K$ of degree $n$ has exactly $n$ field embeddings $\sigma_1, \dots, \sigma_n : K \to \mathbb{C}$. Let $r_1$ be the number of embeddings with image in $\mathbb{R}$. The others come in pairs $\{\sigma, \bar\sigma\}$, with $r_2$ pairs, so $n = r_1 + 2r_2$. The pair $(r_1, r_2)$ is the *signature* of $K$. For $\alpha \in K$, the numbers $\sigma_i(\alpha)$ are the *Galois conjugates* of $\alpha$. They are the roots of the minimal polynomial of $\alpha$, each repeated $n / [\mathbb{Q}(\alpha) : \mathbb{Q}]$ times.

**Definition (norm and trace).** The *norm* and the *trace* of $\alpha \in K$ are $N_{K/\mathbb{Q}}(\alpha) = \prod_i \sigma_i(\alpha)$ and $\mathrm{Tr}_{K/\mathbb{Q}}(\alpha) = \sum_i \sigma_i(\alpha)$. They are the determinant and the trace of the $\mathbb{Q}$-linear map $x \mapsto \alpha x$ on $K$, so they lie in $\mathbb{Q}$, and in $\mathbb{Z}$ when $\alpha \in \mathcal{O}_K$. For a finite extension $L/K$, the relative [[field norm|KRNFEZWPY0]] $N_{L/K} : L^\times \to K^\times$ is the determinant of $x \mapsto \alpha x$ on the $K$-vector space $L$.

**Definition (discriminant).** Let $\omega_1, \dots, \omega_n$ be an integral basis of $\mathcal{O}_K$. The *[[discriminant|3BCYVS9E17]]* of $K$ is $d_K = \det\bigl(\sigma_i(\omega_j)\bigr)^2$. It is a nonzero integer, and it does not depend on the basis. The *root discriminant* of $K$ is $\mathrm{rd}(K) = |d_K|^{1/n}$.

**Example.** $d_{\mathbb{Q}(i)} = -4$. For a prime $p$, $d_{\mathbb{Q}(\zeta_p)} = (-1)^{(p-1)/2} p^{p-2}$.

If $L/K$ is unramified at each finite prime (defined below), then $\mathrm{rd}(L) = \mathrm{rd}(K)$. The error term of the volume bound in the [Weil bound chapter](/proof/weil-bound/) is $\log \mathrm{rd}(E) + |\operatorname{Re} (L'/L)(1, \chi_d)|$ for a CM field $E$.

## Ideals and the class group

**Definition.** A *[[Dedekind domain|7NPY2CN5KB]]* is a noetherian integral domain that is integrally closed in its field of fractions, and in which each nonzero prime ideal is maximal.

**Theorem (Dedekind).** The ring $\mathcal{O}_K$ is a Dedekind domain. In a Dedekind domain, each nonzero ideal is a product of nonzero prime ideals, and the factors are unique up to order (Dedekind, 1871).

**Definition (fractional ideal).** Let $A$ be a Dedekind domain with field of fractions $K$. A *[[fractional ideal|YB4JTB4WJN]]* of $A$ is a nonzero finitely generated $A$-submodule of $K$. The fractional ideals form an abelian group $I_K$ under multiplication. It is the free abelian group on the nonzero prime ideals. The principal fractional ideals $\alpha A$, $\alpha \in K^\times$, form a subgroup $P_K$.

**Definition (ideal norm).** The *[[ideal norm|M54ADM0CVF]]* of a nonzero ideal $\mathfrak a$ of $\mathcal{O}_K$ is $N(\mathfrak a) = |\mathcal{O}_K / \mathfrak a|$. It extends to a homomorphism $N : I_K \to \mathbb{Q}_{>0}^\times$, and $N(\alpha \mathcal{O}_K) = |N_{K/\mathbb{Q}}(\alpha)|$.

**Definition (class group).** The *[[ideal class group|WQ46BD3ARY]]* of $K$ is $\mathrm{Cl}_K = I_K / P_K$. It is a finite group, by the Minkowski bound (Minkowski, 1891). Its order $h_K$ is the *class number* of $K$. The ring $\mathcal{O}_K$ is a principal ideal domain if and only if $h_K = 1$.

**Example.** In $K = \mathbb{Q}(\sqrt{-5})$, $(2) = \mathfrak p^2$ with $\mathfrak p = (2, 1 + \sqrt{-5})$. The ideal $\mathfrak p$ is not principal, because no element has norm $a^2 + 5b^2 = 2$. Here $h_K = 2$.

**Theorem (Dirichlet's unit theorem).** Let $\mu_K$ be the finite group of roots of unity in $K$, of order $w_K$. Then $\mathcal{O}_K^\times \cong \mu_K \times \mathbb{Z}^{r_1 + r_2 - 1}$ (Dirichlet, 1846).

**Definition (regulator).** Let $\varepsilon_1, \dots, \varepsilon_r$, $r = r_1 + r_2 - 1$, be a basis of $\mathcal{O}_K^\times$ modulo $\mu_K$. Choose one embedding $\sigma_v$ for each real embedding and each pair of complex embeddings, and put $e_v = 1$ for a real one and $e_v = 2$ for a complex one. Delete one of the $r + 1$ choices. The *regulator* $R_K$ is the absolute value of the determinant of the $r \times r$ matrix $\bigl(e_v \log |\sigma_v(\varepsilon_j)|\bigr)$. It does not depend on the choices.

The Chowla-Selberg formula of the [CM divisibility chapter](/proof/cm-divisibility/) is a mean over the $h$ ideal classes of an imaginary quadratic field.

## Kinds of number fields

**Definition.** A number field $K$ is *totally real* if $r_2 = 0$, and *totally complex* (or totally imaginary) if $r_1 = 0$. An *imaginary quadratic field* is a [[quadratic field|7SV4WA92SM]] $\mathbb{Q}(\sqrt{-d})$ with $d > 0$.

**Definition (CM field).** A *CM field* is a totally complex quadratic extension $E$ of a totally real number field $E^+$. The field $E^+$ is the *maximal real subfield* of $E$.

**Proposition.** Let $E$ be a CM field. There is a unique automorphism $c$ of $E$ with $\sigma(c(x)) = \overline{\sigma(x)}$ for each embedding $\sigma : E \to \mathbb{C}$ and each $x \in E$. It generates $\mathrm{Gal}(E/E^+)$. It is the *complex conjugation* of $E$.

**Example.** Each imaginary quadratic field is a CM field with $E^+ = \mathbb{Q}$. For $N \geq 3$, $\mathbb{Q}(\zeta_N)$ is a CM field with $E^+ = \mathbb{Q}(\zeta_N + \zeta_N^{-1})$.

**Definition (CM type).** Let $E$ be a CM field of degree $2g$. A *CM type* of $E$ is a set $\Phi$ of $g$ embeddings $E \to \mathbb{C}$ such that $\Phi$ and $\bar\Phi = \{\sigma \circ c : \sigma \in \Phi\}$ are disjoint. Then $\Phi \cup \bar\Phi$ is the set of all $2g$ embeddings.

**Definition (abelian field).** A number field $K$ is an *abelian field* if $K/\mathbb{Q}$ is an [[abelian extension|EQDEXBWGJH]]: a Galois extension with abelian Galois group.

**Definition (cyclotomic field).** Let $N \geq 1$ and let $\zeta_N$ be a primitive $N$-th root of unity. The $N$-th *[[cyclotomic field|NN77VYSGXR]]* is $\mathbb{Q}(\zeta_N)$.

**Theorem (Gauss, Kronecker).** The degree of $\mathbb{Q}(\zeta_N)$ over $\mathbb{Q}$ is $\varphi(N)$, and its ring of integers is $\mathbb{Z}[\zeta_N]$. The map $a \mapsto \sigma_a$, with $\sigma_a(\zeta_N) = \zeta_N^a$, is an isomorphism
$$(\mathbb{Z}/N\mathbb{Z})^\times \cong \mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q}).$$

By the Galois correspondence, the subfields of $\mathbb{Q}(\zeta_N)$ correspond to the subgroups $H$ of $(\mathbb{Z}/N\mathbb{Z})^\times$: the field of $H$ is the set of $x$ with $\sigma_a(x) = x$ for each $a \in H$. Each such subfield is abelian. For example, $H = \{\pm 1\}$ gives $\mathbb{Q}(\zeta_N)^+$.

The statement [Row0b](/step/row0b-def/) fixes a CM field $E$ with its maximal real subfield $E^+$, and its field `dual` compares the dual of $\pi$ with the complex conjugate of $\pi$. The condition `IsChiField` of [VWin](/step/vwin-def/) defines $E$ as the subfield of $\mathbb{Q}(\zeta_N)$ fixed by the $\sigma_a$ with $a \equiv \pm 1 \pmod{2^{e+2}}$, $\psi(a) = 1$ and two Jacobi symbols equal to $1$. CM types occur in the functional equation that the [literature chapter](/proof/literature/) samples and in the data `AllLat` of the [CM divisibility chapter](/proof/cm-divisibility/).

## The splitting of primes

Let $L/K$ be an extension of number fields of degree $n$, and let $\mathfrak p$ be a nonzero prime ideal of $\mathcal{O}_K$. Write
$$\mathfrak p \mathcal{O}_L = \mathfrak P_1^{e_1} \cdots \mathfrak P_g^{e_g}$$
with distinct prime ideals $\mathfrak P_i$ of $\mathcal{O}_L$. The $\mathfrak P_i$ *lie above* $\mathfrak p$. The exponent $e_i$ is the *ramification index* of $\mathfrak P_i$, and $f_i = [\mathcal{O}_L/\mathfrak P_i : \mathcal{O}_K/\mathfrak p]$ is its *residue degree*.

**Theorem (fundamental identity).** $\sum_{i=1}^g e_i f_i = n$ (Neukirch, I.8.2).

**Definition ([[ramification|E7WHZXQ0WF]]).** The prime $\mathfrak p$ is *unramified* in $L$ if each $e_i = 1$, and *ramified* otherwise. It *splits completely* if $g = n$. It is *inert* if $\mathfrak p \mathcal{O}_L$ is prime, that is $g = 1$ and $f_1 = n$. In a quadratic extension, each prime is split ($g = 2$), inert or ramified.

**Theorem (Dedekind).** A prime $p$ of $\mathbb{Z}$ ramifies in $K$ if and only if $p \mid d_K$ (Neukirch, III.2.12). So only finitely many primes ramify.

**Example.** In $\mathbb{Z}[i]$, $2 = -i(1 + i)^2$ ramifies, a prime $p \equiv 1 \pmod 4$ splits as $p = (a + bi)(a - bi)$, and a prime $p \equiv 3 \pmod 4$ is inert. In $\mathbb{Q}(\zeta_N)$, a prime $p \nmid N$ is unramified, and its residue degree is the order of $p$ in $(\mathbb{Z}/N\mathbb{Z})^\times$.

### Decomposition groups and Frobenius elements

Let $L/K$ be a finite Galois extension of number fields with group $G$, and let $\mathfrak p$ be a nonzero prime of $\mathcal{O}_K$. The group $G$ acts transitively on the primes above $\mathfrak p$. So all $e_i$ are equal to one $e$, all $f_i$ are equal to one $f$, and $efg = n$.

**Definition (decomposition group).** Let $\mathfrak P$ be a prime above $\mathfrak p$, with residue fields $k_{\mathfrak P} = \mathcal{O}_L/\mathfrak P$ and $k_{\mathfrak p} = \mathcal{O}_K/\mathfrak p$. The *[[decomposition group|7X92G8CQ33]]* of $\mathfrak P$ is $D_{\mathfrak P} = \{\sigma \in G : \sigma(\mathfrak P) = \mathfrak P\}$. Each $\sigma \in D_{\mathfrak P}$ induces an automorphism of $k_{\mathfrak P}$ over $k_{\mathfrak p}$, and the map $D_{\mathfrak P} \to \mathrm{Gal}(k_{\mathfrak P}/k_{\mathfrak p})$ is onto. Its kernel is the *inertia group* $I_{\mathfrak P}$. Then $|D_{\mathfrak P}| = ef$, $|I_{\mathfrak P}| = e$, and $D_{\tau \mathfrak P} = \tau D_{\mathfrak P} \tau^{-1}$ for $\tau \in G$.

**Definition (Frobenius element).** Suppose that $\mathfrak p$ is unramified in $L$, and let $q = N(\mathfrak p) = |k_{\mathfrak p}|$. Then $D_{\mathfrak P} \cong \mathrm{Gal}(k_{\mathfrak P}/k_{\mathfrak p})$, a cyclic group generated by $x \mapsto x^q$. The *[[Frobenius element|H5145REFMW]]* $\mathrm{Frob}_{\mathfrak P}$ is the unique $\sigma \in D_{\mathfrak P}$ with
$$\sigma(x) \equiv x^q \pmod{\mathfrak P} \quad \text{for each } x \in \mathcal{O}_L.$$
Its order is $f$. Since $\mathrm{Frob}_{\tau\mathfrak P} = \tau\, \mathrm{Frob}_{\mathfrak P}\, \tau^{-1}$, the conjugacy class $\mathrm{Frob}_{\mathfrak p}$ of $\mathrm{Frob}_{\mathfrak P}$ depends only on $\mathfrak p$. When $G$ is abelian it is one element, the *Artin symbol* of $\mathfrak p$. The prime $\mathfrak p$ splits completely in $L$ if and only if $\mathrm{Frob}_{\mathfrak p} = 1$. The inverse of $\mathrm{Frob}_{\mathfrak P}$ is the *geometric Frobenius*.

**Example.** For $L = \mathbb{Q}(\zeta_N)$ and $p \nmid N$, $\mathrm{Frob}_p = \sigma_p$, because $\bigl(\sum a_i \zeta_N^i\bigr)^p \equiv \sum a_i \zeta_N^{ip} \pmod p$ for integers $a_i$.

Chapter 6 states the Chebotarev density theorem with these elements. The condition `ESAt` of [GeoOne](/step/geo-one-def/) is about $\rho(\sigma^{-1})$ for Frobenius elements $\sigma$, and `CrysAt` restricts $\rho$ to decomposition groups. The triples of [LocalMatching](/step/local-matching-def/) ask that $E/F$ is unramified, with conditions at the inert places.

## Places and completions

**Definition.** An *absolute value* on a field $K$ is a map $|\cdot| : K \to \mathbb{R}_{\geq 0}$ with $|x| = 0$ only for $x = 0$, $|xy| = |x|\,|y|$ and $|x + y| \leq |x| + |y|$. It is *non-archimedean* if $|x + y| \leq \max(|x|, |y|)$. Two absolute values are *equivalent* if they define the same topology. Then one is a positive power of the other.

**Definition.** Let $p$ be a prime. The *$p$-adic absolute value* on $\mathbb{Q}$ is $|p^k a / b|_p = p^{-k}$ for $k \in \mathbb{Z}$ and integers $a, b$ prime to $p$, with $|0|_p = 0$.

**Theorem ([[Ostrowski|GCQ23XT6VD]]).** Each nontrivial absolute value on $\mathbb{Q}$ is equivalent to the usual absolute value $|\cdot|_\infty$ or to $|\cdot|_p$ for exactly one prime $p$ (Ostrowski, 1916).

**Definition (place).** A *[[place|BT5V3TSNY6]]* of a number field $K$ is an equivalence class of nontrivial absolute values on $K$. Each nonzero prime $\mathfrak p$ of $\mathcal{O}_K$ gives a *finite place*, with the normalized absolute value $|x|_{\mathfrak p} = N(\mathfrak p)^{-v_{\mathfrak p}(x)}$. Here $v_{\mathfrak p}(x)$ is the exponent of $\mathfrak p$ in $x\mathcal{O}_K$, and $v_{\mathfrak p} : K^\times \to \mathbb{Z}$ is the *$\mathfrak p$-adic valuation*. Each real embedding $\sigma$ gives a *real place*, with $|x|_v = |\sigma(x)|$. Each pair $\{\sigma, \bar\sigma\}$ of complex embeddings gives a *complex place*, with $|x|_v = |\sigma(x)|^2$ (the normalized value, which is not an absolute value in the strict sense). Real and complex places are the *infinite places*. There are no others, so $K$ has $r_1$ real and $r_2$ complex places. One writes $v \mid \infty$ for an infinite place and $v \nmid \infty$ for a finite one.

**Theorem (product formula).** For each $x \in K^\times$, $|x|_v = 1$ for almost all $v$, and $\prod_v |x|_v = 1$ with the normalized absolute values (Neukirch, III.1.3).

**Definition (completion).** The *completion* $K_v$ of $K$ at a place $v$ is the completion of $K$ for $|\cdot|_v$. If $v$ is real, $K_v = \mathbb{R}$. If $v$ is complex, $K_v = \mathbb{C}$. If $v = \mathfrak p$ is finite, the set $\mathcal{O}_v = \{x : |x|_v \leq 1\}$ is the valuation ring of $K_v$. It is a discrete valuation ring with maximal ideal $\mathfrak m_v = \{x : |x|_v < 1\}$. A *uniformizer* is an element $\varpi_v$ with $\mathfrak m_v = \varpi_v \mathcal{O}_v$. The *[[residue field|NJ3APQ8BHH]]* $k_v = \mathcal{O}_v / \mathfrak m_v$ is isomorphic to $\mathcal{O}_K / \mathfrak p$, a finite field with $q_v = N(\mathfrak p)$ elements.

### p-adic numbers and local fields

**Definition.** The field $\mathbb{Q}_p$ of *[[p-adic numbers|BT6T702C28]]* is the completion of $\mathbb{Q}$ for $|\cdot|_p$. Its valuation ring is the ring $\mathbb{Z}_p$ of *[[p-adic integers|V6TJAFZ4MD]]*, and $\mathbb{Z}_p \cong \varprojlim \mathbb{Z}/p^k\mathbb{Z}$. Each $x \in \mathbb{Q}_p$ is a unique sum $\sum_{k \geq k_0} a_k p^k$ with digits $a_k \in \{0, \dots, p - 1\}$. The element $p$ is a uniformizer, and the residue field is $\mathbb{F}_p$.

**Example.** The quotient $\mathbb{Q}_p / \mathbb{Z}_p$ is isomorphic to $\mathbb{Z}[1/p]/\mathbb{Z}$. It is the union of its subgroups $p^{-k}\mathbb{Z}_p / \mathbb{Z}_p \cong \mathbb{Z}/p^k\mathbb{Z}$. A finite $\mathbb{Z}_p$-module $M$ has length $m$ as a $\mathbb{Z}_p$-module exactly when $|M| = p^m$.

**Definition.** A *[[local field|J85FZEQG38]]* is a field with a nontrivial absolute value for which it is locally compact. The local fields of characteristic $0$ are $\mathbb{R}$, $\mathbb{C}$ and the finite extensions of the fields $\mathbb{Q}_p$. (The fields $\mathbb{F}_q((t))$ are the local fields of positive characteristic. The proof does not use them.)

Let $L/K$ be a finite extension of number fields and $v$ a place of $K$. A place $w$ of $L$ *lies above* $v$, written $w \mid v$, if the restriction of $|\cdot|_w$ to $K$ is in the class $v$. For $v = \mathfrak p$ finite, the places above $v$ are the primes $\mathfrak P$ above $\mathfrak p$. There is an isomorphism $L \otimes_K K_v \cong \prod_{w \mid v} L_w$, and $[L_w : K_v] = e_w f_w$. If $L/K$ is Galois, restriction gives $\mathrm{Gal}(L_w/K_v) \cong D_{\mathfrak P}$. So the completion $K_v$ at a finite place is a finite extension of $\mathbb{Q}_p$, where $p$ is the prime below $\mathfrak p$.

The statement [IsRecT](/step/is-rect-def/) is about the local field $E_w$, and its law `type` assumes $E_w \cong \mathbb{Q}_g$. The epsilon factor of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) uses a uniformizer $\varpi$. The window bound [VWin](/step/vwin-def/) bounds lengths as $\mathbb{Z}_\ell$-modules of Tate-Shafarevich groups with coefficients $\mathbb{Q}_\ell/\mathbb{Z}_\ell(-e)$.

### Valuation rings over a place and the field isomorphism

Let $\Omega$ be an algebraic closure of a number field $K$.

**Definition.** A *[[valuation ring|QSX12D8RQM]]* of $\Omega$ is a subring $A$ such that $x \in A$ or $x^{-1} \in A$ for each $x \in \Omega^\times$. A valuation ring $A \neq \Omega$ *lies over* the finite place $w = \mathfrak p$ of $K$ if $A \cap K$ is the localization $(\mathcal{O}_K)_{\mathfrak p}$.

For each finite place $w$, valuation rings of $\Omega$ over $w$ exist, and $\mathrm{Gal}(\Omega/K)$ permutes them transitively. To choose one is to choose, in a compatible way, a prime above $\mathfrak p$ in each finite extension of $K$ inside $\Omega$. Its stabilizer in $\mathrm{Gal}(\Omega/K)$ is a decomposition group at $w$.

**Definition.** Fix a prime $\ell$ and an algebraic closure $\overline{\mathbb{Q}}_\ell$ of $\mathbb{Q}_\ell$. The absolute value $|\cdot|_\ell$ extends in exactly one way to $\overline{\mathbb{Q}}_\ell$.

**Proposition.** There is a field isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$. Both fields are algebraically closed of characteristic $0$ with transcendence degree $2^{\aleph_0}$ over $\mathbb{Q}$, so such an $\iota$ exists by the axiom of choice. No such $\iota$ is continuous.

The statements [RecTExists](/step/rect-exists-def/) and [IsRecT](/step/is-rect-def/) take a valuation subring $A$ of $\Omega$ above $w$ (the hypothesis `IsPlaceOver A w`). The statement [Row0b](/step/row0b-def/) takes an isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ to compare a Galois representation with values in $\mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ with the complex data of $\pi$.

## Adeles and ideles

**Definition (adele ring).** Let $K$ be a number field. The *[[adele ring|NYJFYZ0B4M]]* $\mathbb{A}_K$ is the set of families $(x_v) \in \prod_v K_v$ with $x_v \in \mathcal{O}_v$ for almost all finite $v$. It has componentwise addition and multiplication, and the *restricted product topology*: a basis of open sets is $\prod_{v \in S} U_v \times \prod_{v \notin S} \mathcal{O}_v$, with $S$ a finite set of places that contains the infinite places and $U_v \subseteq K_v$ open. It is a locally compact ring. The *finite adeles* $\mathbb{A}_{K,f}$ are defined in the same way with the finite places only. Then $\mathbb{A}_K = K_\infty \times \mathbb{A}_{K,f}$ with $K_\infty = \prod_{v \mid \infty} K_v \cong \mathbb{R}^{r_1} \times \mathbb{C}^{r_2}$.

**Example.** $\mathbb{A}_{\mathbb{Q},f} = \widehat{\mathbb{Z}} \otimes_{\mathbb{Z}} \mathbb{Q}$, with $\widehat{\mathbb{Z}} = \prod_p \mathbb{Z}_p$, and $\mathbb{A}_\mathbb{Q} = \mathbb{R} \times \mathbb{A}_{\mathbb{Q},f}$.

**Proposition.** The diagonal map $K \to \mathbb{A}_K$ makes $K$ a discrete subgroup with compact quotient $\mathbb{A}_K / K$. For a finite extension $L/K$, $\mathbb{A}_L \cong \mathbb{A}_K \otimes_K L$.

**Definition (ideles).** The *[[idele group|KKHTYY0TGK]]* $\mathbb{A}_K^\times$ is the group of units of $\mathbb{A}_K$: the families $(x_v)$ with $x_v \in K_v^\times$ and $x_v \in \mathcal{O}_v^\times$ for almost all $v$. Its topology is the restricted product topology for the subgroups $\mathcal{O}_v^\times$. (This is finer than the topology from $\mathbb{A}_K$.) The group $K^\times$ embeds diagonally as a discrete subgroup. The *[[idele class group|9GHD9MXNYV]]* is $C_K = \mathbb{A}_K^\times / K^\times$.

The *idele norm* $|x|_{\mathbb{A}} = \prod_v |x_v|_v$ is a continuous homomorphism $\mathbb{A}_K^\times \to \mathbb{R}_{>0}$. It is trivial on $K^\times$ by the product formula, and its kernel modulo $K^\times$ is compact.

**Proposition.** The map $\mathbb{A}_K^\times \to I_K$, $x \mapsto \prod_{v \nmid \infty} \mathfrak p_v^{v(x_v)}$, is onto, with kernel $K_\infty^\times \times \prod_{v \nmid \infty} \mathcal{O}_v^\times$. It induces an isomorphism
$$\mathbb{A}_K^\times \big/ \Bigl(K^\times \cdot K_\infty^\times \cdot \prod_{v \nmid \infty} \mathcal{O}_v^\times\Bigr) \cong \mathrm{Cl}_K.$$

For a finite extension $L/K$, the norm $N_{L/K} : \mathbb{A}_L^\times \to \mathbb{A}_K^\times$ is $N(x)_v = \prod_{w \mid v} N_{L_w/K_v}(x_w)$. It maps $L^\times$ into $K^\times$, so it induces a map $C_L \to C_K$.

The theta integrals of the [theta matching chapter](/proof/theta-matching/) are integrals over the adelic points of unitary groups. The structure `Base` of [TLiftK](/step/tlift-k-def/) holds an additive character of $\mathbb{A}_F$, and its condition `ResEtaPow` asks whether an idele $t$ of $F$ lies in $F^\times \cdot N(\mathbb{A}_E^\times)$.

## Further reading

- J. Neukirch, *Algebraic Number Theory*, chapters I and II.
- J.-P. Serre, *Local Fields*, chapters I to III.
- J. S. Milne, *Algebraic Number Theory* (course notes), chapters 2 to 8.
- J. W. S. Cassels and A. Fröhlich (eds.), *Algebraic Number Theory*, chapters I (Fröhlich) and II (Cassels).
- L. C. Washington, *Introduction to Cyclotomic Fields*, chapters 2 and 4.
