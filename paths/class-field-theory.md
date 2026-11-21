Class field theory describes the abelian extensions of a local or global field by the multiplicative group of the field itself. Its characters, the Hecke characters, are the coefficients of the theta lifts and of the row statement [Row0b](/step/row0b-def/), and the local Artin map is one of the laws of [IsRecT](/step/is-rect-def/). Tate's thesis gives the analytic side: Hecke L-functions, their functional equation and their epsilon factors, which appear in the constants of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/). [Chapter 4](/learn/number-fields/) defines number fields, places, completions, adeles and ideles.

## Additive characters

A *character* of a locally compact abelian group $G$ is a continuous homomorphism $G \to \mathbb{C}^\times$. It is *unitary* if its values have absolute value $1$. The unitary characters form the [[Pontryagin dual|FMW57WNPDB]] $\widehat G$.

**Definition (additive character).** An *[[additive character|2WMYTJD33F]]* of a local field $F_v$ is a nontrivial unitary character $\psi_v : F_v \to \mathbb{C}^\times$ of the additive group. An additive character of $\mathbb{A}_F$ is a nontrivial unitary character $\psi : \mathbb{A}_F \to \mathbb{C}^\times$ with $\psi(x) = 1$ for each $x \in F$.

**Example (the standard character).** On $\mathbb{R}$ put $\psi_\infty(x) = e^{2\pi i x}$. On $\mathbb{Q}_p$ put $\psi_p(x) = e^{-2\pi i \{x\}_p}$, where $\{x\}_p \in \mathbb{Z}[1/p]$ is the fractional part of $x$, so that $x - \{x\}_p \in \mathbb{Z}_p$. Then $\psi_{\mathbb{Q}} = \prod_v \psi_v$ is trivial on $\mathbb{Q}$. For a number field $F$, the *standard* additive character of $\mathbb{A}_F$ is $\psi_{\mathbb{Q}} \circ \mathrm{Tr}_{F/\mathbb{Q}}$.

**Proposition (self-duality).** Fix an additive character $\psi_v$ of $F_v$. Each unitary character of $F_v$ is $x \mapsto \psi_v(ax)$ for exactly one $a \in F_v$. In the same way, each unitary character of $\mathbb{A}_F$ that is trivial on $F$ is $x \mapsto \psi(ax)$ for exactly one $a \in F$ (Tate, 1950).

At a finite place $v$, $\psi_v$ is *unramified* if it is trivial on $\mathcal{O}_v$ and not on $\varpi_v^{-1}\mathcal{O}_v$. The standard character is unramified at each finite place where $F/\mathbb{Q}$ is unramified.

The structure `Base` of [TLiftK](/step/tlift-k-def/) holds an additive character $\psi$ of $\mathbb{A}_F$, and its condition `std` asks that $\psi$ is standard. The good triples of [LocalMatching](/step/local-matching-def/) ask that $\psi$ is unramified at the inert places.

## Hecke characters

Let $K$ be a number field.

**Definition.** A *[[Hecke character|KPYFGB342X]]* of $K$ is a continuous homomorphism $\chi : \mathbb{A}_K^\times \to \mathbb{C}^\times$ with $\chi(a) = 1$ for each $a \in K^\times$. So it is a character of the idele class group $C_K$. It is *unitary* if $|\chi| = 1$. Each Hecke character is $\chi_0 |\cdot|_{\mathbb{A}}^{t}$ for a unitary $\chi_0$ and a real $t$.

A Hecke character is a product $\chi = \prod_v \chi_v$ of characters $\chi_v : K_v^\times \to \mathbb{C}^\times$. Continuity forces $\chi_v(\mathcal{O}_v^\times) = 1$ for almost all finite $v$.

**Definition (conductor).** Let $v$ be finite and let $\chi_v$ be a character of $K_v^\times$. Put $U_v^{(0)} = \mathcal{O}_v^\times$ and $U_v^{(c)} = 1 + \varpi_v^c \mathcal{O}_v$ for $c \geq 1$. The *conductor exponent* $c(\chi_v)$ is the least $c \geq 0$ with $\chi_v(U_v^{(c)}) = 1$. The character $\chi_v$ is *unramified* if $c(\chi_v) = 0$, and *ramified* otherwise. If $\chi_v$ is unramified, $\chi_v(\varpi_v)$ does not depend on the uniformizer. The *conductor* of $\chi$ is the ideal $\mathfrak f_\chi = \prod_{v \nmid \infty} \mathfrak p_v^{c(\chi_v)}$.

An unramified $\chi_v$ is the character $x \mapsto z^{v(x)}$ with $z = \chi_v(\varpi_v)$. So a Hecke character that is unramified outside a finite set $S$ gives a character $\mathfrak a \mapsto \chi(\mathfrak a)$ of the group of fractional ideals prime to $S$, with $\chi(\mathfrak p_v) = \chi_v(\varpi_v)$.

**Example.** For $K = \mathbb{Q}$, $\mathbb{A}_\mathbb{Q}^\times = \mathbb{Q}^\times \cdot \bigl(\mathbb{R}_{>0} \times \prod_p \mathbb{Z}_p^\times\bigr)$. A unitary Hecke character of finite order, trivial on $\mathbb{R}_{>0}$, is the same as a character of $\widehat{\mathbb{Z}}^\times = \varprojlim (\mathbb{Z}/N\mathbb{Z})^\times$. These are the Dirichlet characters, which Chapter 6 defines. A Dirichlet character $\chi$ of conductor $N$ gives the Hecke character with $\chi(\mathfrak p_p) = \chi(p)$ for $p \nmid N$, for one normalization (others use $\chi(p)^{-1}$).

### Infinity type and algebraic characters

Let $v$ be an infinite place. A character of $K_v^\times = \mathbb{R}^\times$ is $x \mapsto \mathrm{sgn}(x)^{\epsilon} |x|^{s}$ with $\epsilon \in \{0, 1\}$ and $s \in \mathbb{C}$. A character of $K_v^\times = \mathbb{C}^\times$ is $z \mapsto z^{p} \bar z^{q}$ with $p, q \in \mathbb{C}$ and $p - q \in \mathbb{Z}$, where $z^p \bar z^q$ means $(z/|z|)^{p-q} |z|^{p+q}$. The family of these exponents over the infinite places is the *infinity type* of $\chi$.

**Definition (algebraic Hecke character).** A Hecke character $\chi$ of $K$ is *algebraic* (of type $A_0$) if there are integers $n_\sigma$, one for each embedding $\sigma : K \to \mathbb{C}$, with $\chi_\infty(x) = \prod_\sigma \sigma(x)^{n_\sigma}$ for each $x$ in the identity component of $K_\infty^\times = \prod_{v \mid \infty} K_v^\times$. For a CM field $E$ with a CM type $\Phi$, a unitary character has *infinity type $n = (n_\sigma)_{\sigma \in \Phi}$ relative to $\Phi$* if $\chi_v(\sigma^{-1}(z)) = (z/|z|)^{n_\sigma}$ at the complex place $v$ of each $\sigma \in \Phi$. Sign conventions differ between texts.

**Proposition (Weil, 1955).** Let $\chi$ be an algebraic Hecke character of $K$, let $\ell$ be a prime, and let $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ be a field isomorphism. There is a unique continuous character $\chi_\ell : \mathrm{Gal}(\overline{K}/K) \to \overline{\mathbb{Q}}_\ell^\times$ with $\iota\,\chi_\ell(\mathrm{Frob}_v) = \chi(\varpi_v)$ at each finite place $v \nmid \ell$ where $\chi$ is unramified, for one fixed normalization of Frobenius. It is the *$\ell$-adic form* of $\chi$. The construction uses the global Artin map of the section on global class field theory.

**Example.** For $K = \mathbb{Q}$, the idele norm $|\cdot|_{\mathbb{A}}$ is algebraic with $n = 1$, since it is $x \mapsto x$ on $\mathbb{R}_{>0}$. Its $\ell$-adic form is the $\ell$-adic cyclotomic character or its inverse, according to the normalization of Frobenius.

The row statement [Row0b](/step/row0b-def/) takes a Hecke character $\chi$ of $E^+$, and its condition `sign` asks $\chi_v(-1) = (-1)^a$ at each infinite place $v$ of $E^+$. The good triples of the [theta matching chapter](/proof/theta-matching/) use Hecke characters $\alpha, \beta$ of $E$ with infinity types $m_\alpha, m_\beta$, unramified outside a finite set $T$, with $\nu = \alpha/\beta$ ramified at each place of $T$. The fields `heckeLAdicCharacter` and `heckeLAdicCharacterAbove` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) state the $\ell$-adic form.

## Quadratic symbols

**Definition.** Let $p$ be an odd prime and $a \in \mathbb{Z}$. The [[Legendre symbol|0JTC045NNZ]] $\left(\frac{a}{p}\right)$ is $0$ if $p \mid a$, $1$ if $a$ is a nonzero square modulo $p$, and $-1$ otherwise. Let $n$ be an odd positive integer with $n = p_1 \cdots p_k$, the primes repeated. The *[[Jacobi symbol|0ADTQBXRMC]]* is $\left(\frac{a}{n}\right) = \prod_{i} \left(\frac{a}{p_i}\right)$.

For fixed $n$, $a \mapsto \left(\frac{a}{n}\right)$ is a Dirichlet character modulo $n$ with values $0, \pm 1$. A value $1$ does not show that $a$ is a square modulo $n$: $\left(\frac{2}{15}\right) = \left(\frac{2}{3}\right)\left(\frac{2}{5}\right) = 1$, but $2$ is not a square modulo $3$.

**Theorem ([[quadratic reciprocity|0YY06KP3ZQ]] for the Jacobi symbol).** Let $m, n$ be odd, positive and coprime. Then
$$\left(\frac{m}{n}\right)\left(\frac{n}{m}\right) = (-1)^{\frac{m-1}{2}\frac{n-1}{2}}, \qquad \left(\frac{-1}{n}\right) = (-1)^{\frac{n-1}{2}}, \qquad \left(\frac{2}{n}\right) = (-1)^{\frac{n^2-1}{8}}$$
(Gauss, 1801; Jacobi, 1837).

**Definition (quadratic character).** Let $E/F$ be a quadratic extension of number fields. Its *quadratic character* is the Hecke character $\eta = \eta_{E/F}$ of $F$ with $\eta(t) = 1$ if $t \in F^\times N_{E/F}(\mathbb{A}_E^\times)$ and $\eta(t) = -1$ otherwise. By global class field theory below, $F^\times N(\mathbb{A}_E^\times)$ has index $2$ in $\mathbb{A}_F^\times$, so $\eta$ is a character of order $2$. For an unramified place $v$, $\eta_v(\varpi_v) = 1$ if $v$ splits in $E$ and $-1$ if $v$ is inert.

**Example.** For $F = \mathbb{Q}$ and $E = \mathbb{Q}(\sqrt{-q})$ with $q \equiv 3 \pmod 4$ prime, $\eta(\mathfrak p_p) = \left(\frac{-q}{p}\right) = \left(\frac{p}{q}\right)$ for each odd prime $p \neq q$.

The condition `IsChiField` of [VWin](/step/vwin-def/) cuts out its field with the conditions $\left(\frac{a}{q}\right) = 1$ and $\left(\frac{a}{d}\right) = 1$ on $a \in (\mathbb{Z}/N\mathbb{Z})^\times$. The condition `ResEtaPow` of [TLiftK](/step/tlift-k-def/) asks that a Hecke character restricted to $\mathbb{A}_F^\times$ is $\eta^n$, and the field `quadraticClassFieldTheory` of [ThetaLocalInputs](/step/theta-local-inputs-def/) states the facts about $\eta$ that the proof uses.

## Local class field theory

Let $K$ be a finite extension of $\mathbb{Q}_p$ with residue field $\mathbb{F}_q$. Let $K^{ab}$ be its maximal abelian extension, and $K^{ur}$ its maximal unramified extension. Then $\mathrm{Gal}(K^{ur}/K) \cong \widehat{\mathbb{Z}}$, generated by the Frobenius $x \mapsto x^q$ on residue fields. The *Weil group* $W_K$ is the subgroup of $\mathrm{Gal}(\overline K/K)$ of elements that act on $K^{ur}$ by an integer power $\mathrm{Frob}^{\deg \sigma}$, with $\deg \sigma \in \mathbb{Z}$. The inertia group $I_K$ is the kernel of $\deg$.

**Theorem ([[local class field theory|SHEN158T3M]]).** There is a unique homomorphism $\mathrm{Art}_K : K^\times \to \mathrm{Gal}(K^{ab}/K)$, the *local Artin map*, such that $\mathrm{Art}_K(\varpi)$ acts on $K^{ur}$ as the arithmetic Frobenius for each uniformizer $\varpi$, and $N_{L/K}(L^\times)$ is the kernel of the induced map $K^\times \to \mathrm{Gal}(L/K)$ for each finite abelian $L/K$. It is injective with dense image. It maps $\mathcal{O}_K^\times$ onto the inertia subgroup, and induces $W_K^{ab} \cong K^\times$. The map $L \mapsto N_{L/K}(L^\times)$ is a bijection from the finite abelian extensions of $K$ to the open subgroups of finite index of $K^\times$, with $K^\times / N_{L/K}(L^\times) \cong \mathrm{Gal}(L/K)$ (Hasse, 1930; Lubin and Tate, 1965).

Many texts use the geometric normalization, where $\varpi$ goes to a geometric Frobenius. The two normalizations differ by the inverse.

**Corollary.** The characters of $W_K$ (continuous homomorphisms $W_K \to \mathbb{C}^\times$) are exactly the maps $\chi \circ a$, with $\chi$ a character of $K^\times$ and $a : W_K \to W_K^{ab} \cong K^\times$ the inverse of the Artin isomorphism. This is local class field theory for $\mathrm{GL}_1$.

The structure `IsLocalArtin` in [IsRecT](/step/is-rect-def/) is this map $a : W \to E_w^\times$, stated by five laws: it is onto (`surj`), it is continuous on inertia (`cont`), the valuation of $a(\sigma)$ is $-\deg \sigma$ (`ord_eq`, which fixes the normalization), each smooth character of $W$ is $\chi \circ a$ (`factor`), and it is compatible with each global Artin map of $E$ (`glob`). The step proves that exactly one such $a$ exists (`artEx`), and the law `one` of IsRecT is the case $\mathrm{GL}_1$.

## Global class field theory

Let $K$ be a number field with maximal abelian extension $K^{ab}$.

**Theorem ([[class field theory|AA943HVK6Z]]).** There is a unique continuous surjective homomorphism $\mathrm{Art}_K : C_K \to \mathrm{Gal}(K^{ab}/K)$, the *global Artin map*, whose restriction to $K_v^\times$ is the local Artin map at each place $v$. Its kernel is the identity component of $C_K$. The map $L \mapsto N_{L/K}(C_L)$ is a bijection from the finite abelian extensions $L$ of $K$ to the open subgroups of finite index of $C_K$, with $C_K / N_{L/K}(C_L) \cong \mathrm{Gal}(L/K)$ (Takagi, 1920; Artin, 1927; Chevalley, 1940).

At an infinite place, $\mathrm{Art}$ sends $-1 \in \mathbb{R}^\times$ to complex conjugation when the place is complex in $L$. At a finite place $v$ unramified in $L$, $\mathrm{Art}(\varpi_v)$ is the Frobenius element of $v$ in $\mathrm{Gal}(L/K)$.

**Definition (modulus).** A *modulus* of $K$ is a formal product $\mathfrak m = \mathfrak m_f \mathfrak m_\infty$ of an ideal $\mathfrak m_f$ of $\mathcal{O}_K$ and a set $\mathfrak m_\infty$ of real places. Let $I_K^{\mathfrak m}$ be the group of fractional ideals prime to $\mathfrak m_f$, and $P_K^{\mathfrak m}$ the subgroup of principal ideals $(\alpha)$ with $\alpha \equiv 1 \bmod^\times \mathfrak m_f$ and $\sigma(\alpha) > 0$ for each $\sigma \in \mathfrak m_\infty$. The *ray class group* modulo $\mathfrak m$ is $\mathrm{Cl}_K^{\mathfrak m} = I_K^{\mathfrak m} / P_K^{\mathfrak m}$. It is finite.

**Theorem ([[Artin reciprocity|7938EKMMVR]]).** Let $L/K$ be a finite abelian extension, and let $\mathfrak m$ be a modulus divisible by each finite prime and each real place that ramifies in $L$. The *Artin map* $I_K^{\mathfrak m} \to \mathrm{Gal}(L/K)$ sends each prime $\mathfrak p \nmid \mathfrak m$ to its Frobenius element. It is surjective. If the exponents of $\mathfrak m_f$ are large enough, its kernel is $P_K^{\mathfrak m} N_{L/K}(I_L^{\mathfrak m})$ (Artin, 1927).

**Definition (ray class field).** For each modulus $\mathfrak m$ there is a unique abelian extension $K_{\mathfrak m}/K$, the *ray class field* modulo $\mathfrak m$, unramified outside $\mathfrak m$, such that the Artin map induces $\mathrm{Cl}_K^{\mathfrak m} \cong \mathrm{Gal}(K_{\mathfrak m}/K)$. Each finite abelian extension lies in some ray class field.

**Definition (Hilbert class field).** The *[[Hilbert class field|WWCJ7CR2R3]]* $H_K$ is the ray class field for $\mathfrak m = 1$. It is the maximal abelian extension of $K$ that is unramified at each place, and $\mathrm{Gal}(H_K/K) \cong \mathrm{Cl}_K$. A prime $\mathfrak p$ splits completely in $H_K$ if and only if it is principal.

**Example.** For $K = \mathbb{Q}$ and $\mathfrak m = N\infty$, $\mathrm{Cl}^{\mathfrak m}_{\mathbb{Q}} \cong (\mathbb{Z}/N\mathbb{Z})^\times$ and the ray class field is $\mathbb{Q}(\zeta_N)$. This gives the [[Kronecker-Weber theorem|AW00HPFB54]]: each abelian extension of $\mathbb{Q}$ lies in a cyclotomic field. For an imaginary quadratic field $K$, $H_K = K(j(E))$ for an elliptic curve $E$ with complex multiplication by $\mathcal{O}_K$ (Weber, 1908).

By Artin reciprocity, the characters of $\mathrm{Gal}(K_{\mathfrak m}/K)$ are the characters of $\mathrm{Cl}^{\mathfrak m}_K$, and these are the finite order Hecke characters of conductor dividing $\mathfrak m$.

The fields `globalArtinReciprocity`, `rayClassFieldSt`, `rayCharacterArtin` and `weberRayFieldSt` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) state these theorems, and the law `glob` of [IsRecT](/step/is-rect-def/) uses the global Artin map. The field `hj` of [the CM inputs](/step/cm-abelian-inputs-from-literature/) states that a $j$-invariant generates the Hilbert class field, and `RayClassFieldSt` is also one of [the published arithmetic results](/step/published-results-arithmetic/).

## Norms and Hermitian forms

**Theorem ([[Hasse norm theorem|R7DJ6XYZ4F]]).** Let $L/K$ be a cyclic extension of number fields and $x \in K^\times$. Then $x$ is a norm from $L^\times$ if and only if $x$ is a norm from $L_w^\times$ at each place $v$ of $K$ and one (so each) $w \mid v$ (Hasse, 1931).

This is a *[[Hasse principle|EMAR4X3W8D]]*: a global property holds if it holds at each place. For a quadratic $E/F$ it says that $x \in F^\times$ is in $N(E^\times)$ if and only if $\eta_v(x) = 1$ for each $v$.

Let $E/F$ be a quadratic extension with conjugation $c$. A *[[Hermitian form|48P4A1CX85]]* on an $E$-vector space $V$ is a map $h : V \times V \to E$, $E$-linear in the first variable, with $h(y, x) = c(h(x, y))$. Its determinant $\det h$ is well defined in $F^\times / N(E^\times)$. At a real place $v$ of $F$ that is complex in $E$, $h_v$ has a signature $(p_v, q_v)$.

**Theorem (Landherr, 1936).** Two nondegenerate Hermitian forms over $E/F$ of the same dimension are isomorphic if and only if they are isomorphic over $E_v/F_v$ at each place $v$ of $F$. A family of nondegenerate local forms $h_v$ of one dimension $n$, one for each place $v$, comes from a global form if and only if $\eta_v(\det h_v) = 1$ for almost all $v$ and $\prod_v \eta_v(\det h_v) = 1$.

**Example.** At a real place $v$ that is complex in $E$, $\eta_v(\det h_v) = (-1)^{q_v}$. So the signatures of a global Hermitian form are not free: their parities are tied to the finite places.

The statements `LandherrSt` and `HasseNormSt` in [the published arithmetic results](/step/published-results-arithmetic/), and `hermitianLocalGlobal` and `hermitianHassePrinciple` of [ThetaLocalInputs](/step/theta-local-inputs-def/), state these results. They build the Hermitian spaces $V$, $V'$ and the skew-Hermitian space $W$ with given signatures in the [theta matching chapter](/proof/theta-matching/).

## Tate's thesis and Hecke L-functions

Let $\chi = \prod_v \chi_v$ be a Hecke character of $K$.

**Definition (local factors).** At a finite place $v$, $L(s, \chi_v) = (1 - \chi_v(\varpi_v) q_v^{-s})^{-1}$ if $\chi_v$ is unramified, and $L(s, \chi_v) = 1$ otherwise. At a real place with $\chi_v = \mathrm{sgn}^\epsilon |\cdot|^t$, $L(s, \chi_v) = \Gamma_\mathbb{R}(s + t + \epsilon)$ with $\Gamma_\mathbb{R}(s) = \pi^{-s/2}\Gamma(s/2)$. At a complex place with $\chi_v(z) = (z/|z|)^{m}|z|^{2t}$, $L(s, \chi_v) = \Gamma_\mathbb{C}(s + t + |m|/2)$ with $\Gamma_\mathbb{C}(s) = 2(2\pi)^{-s}\Gamma(s)$. [Chapter 3](/learn/complex-analysis/) defines $\Gamma$.

**Definition (Hecke L-function).** The *Hecke L-function* of $\chi$ is $L(s, \chi) = \prod_{v \nmid \infty} L(s, \chi_v)$. If $\chi$ is unitary, the product converges absolutely for $\operatorname{Re}(s) > 1$. For a finite set $S$ of places, the *partial L-function* $L^S(s, \chi)$ is the same product without the factors at $v \in S$. The *completed L-function* is $\Lambda(s, \chi) = \prod_v L(s, \chi_v)$, over all places.

**Example.** For $\chi = 1$, $L(s, 1) = \zeta_K(s) = \sum_{\mathfrak a} N(\mathfrak a)^{-s}$ is the [[Dedekind zeta function|KXS5DQDFYD]] of $K$, and for $K = \mathbb{Q}$ it is the Riemann zeta function.

**Definition (local epsilon factor).** Let $v$ be finite, $\psi_v$ an unramified additive character, and $\chi_v$ a ramified character with conductor exponent $c = c(\chi_v)$. The *Gauss sum* is
$$\mathfrak g(\psi_v, \chi_v) = \sum_{u \in \mathcal{O}_v^\times / U_v^{(c)}} \chi_v^{-1}(u)\, \psi_v(u / \varpi_v^{c}),$$
up to the normalization of the text. It has absolute value $q_v^{c/2}$. The *[[epsilon factor|B8BM0B4RRW]]* $\varepsilon(s, \chi_v, \psi_v)$ is $1$ for unramified $\chi_v$, and for ramified $\chi_v$ it is $q_v^{-cs}$ times a constant built from $\mathfrak g(\psi_v, \chi_v)$, $\chi_v(\varpi_v)^{c}$ and powers of $q_v$. At each place it satisfies $\varepsilon(s, \chi_v, \psi_v)\varepsilon(1 - s, \chi_v^{-1}, \psi_v) = \chi_v(-1)$.

**Theorem ([[Tate thesis|QYW79XKJTP]]).** Let $\chi$ be a unitary Hecke character of $K$ and $\psi$ an additive character of $\mathbb{A}_K$. The function $\Lambda(s, \chi)$ extends to a meromorphic function on $\mathbb{C}$. It is entire unless $\chi = |\cdot|_{\mathbb{A}}^{i t}$ for a real $t$, and then its only poles are simple, at $s = -it$ and $s = 1 - it$. It satisfies
$$\Lambda(s, \chi) = \varepsilon(s, \chi)\,\Lambda(1 - s, \chi^{-1}), \qquad \varepsilon(s, \chi) = \prod_v \varepsilon(s, \chi_v, \psi_v) = a\,b^{-s},$$
with $a \in \mathbb{C}^\times$, $|a| = 1$ and $b = |d_K| N(\mathfrak f_\chi) > 0$ (Hecke, 1918; Tate, 1950). The global factor $\varepsilon(s, \chi)$ does not depend on $\psi$.

Tate's idea is to write $\Lambda(s, \chi)$ as an integral of a Schwartz-Bruhat function against $\chi |\cdot|^s$ over $\mathbb{A}_K^\times$, and to apply Poisson summation for $K \subset \mathbb{A}_K$. The local zeta integrals give the factors $L(s, \chi_v)$ and $\varepsilon(s, \chi_v, \psi_v)$.

**Corollary.** For $\chi \neq |\cdot|_{\mathbb{A}}^{it}$, $L(s, \chi)$ is entire and $L(1, \chi) \neq 0$ (Hecke). Each partial L-function $L^S(s, \chi)$ is $L(s, \chi)$ times finitely many polynomials in the $q_v^{-s}$, so it extends to $\mathbb{C}$.

The constants of [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) contain the partial L-values $L^{S_0}(s, \nu)$ (`charL`) and the factor $\varepsilon(\psi, \nu_v, z) = N(v)^{-c(\nu_v) z}\, \mathfrak g(\psi, \nu_v)\, \nu_v(\varpi)^{c(\nu_v)}$, and the [theta matching chapter](/proof/theta-matching/) uses them in step 3. The [literature chapter](/proof/literature/) samples the functional equation $\Lambda(s) = \varepsilon_\infty(n)\varepsilon_f(\chi, a, s)\Lambda'(1 - s)$ for a unitary Hecke character of a totally complex field with infinity type $n \neq 0$ relative to a CM type. The fields `heckeLPartialContinuation` and `heckeLEntireAndNonzeroAtOne` of [ThetaLocalInputs](/step/theta-local-inputs-def/) state the corollary.

## Further reading

- J. Neukirch, *Algebraic Number Theory*, chapters V (local class field theory), VI (global class field theory) and VII.8 (Hecke L-functions).
- J. W. S. Cassels and A. Fröhlich (eds.), *Algebraic Number Theory*, chapter VI (Serre, local class field theory), chapter VII (Tate, global class field theory) and chapter XV (Tate's thesis).
- J. S. Milne, *Class Field Theory* (course notes), chapters I, V and VIII.
- D. Ramakrishnan and R. Valenza, *Fourier Analysis on Number Fields*, chapters 5 and 7.
- W. Scharlau, *Quadratic and Hermitian Forms*, chapter 10.
