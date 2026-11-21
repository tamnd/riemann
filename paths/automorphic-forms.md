An automorphic form is a function on $G(F) \backslash G(\mathbb{A}_F)$, for a reductive group $G$ over a number field $F$, that satisfies a finiteness condition and a growth condition. Modular forms are the case of $\mathrm{GL}_2$ over $\mathbb{Q}$. The proof uses automorphic forms in three places: the theta integrals on unitary groups, the cuspidal representations $\pi$ of $\mathrm{GL}_a$ in the row statement, and the base change from unitary groups to $\mathrm{GL}_n$ in the window bound.

## Modular forms

Let $\mathbb{H} = \{\tau \in \mathbb{C} : \operatorname{Im}(\tau) > 0\}$. The group $\mathrm{SL}_2(\mathbb{Z})$ acts on $\mathbb{H}$ by $\gamma\tau = (a\tau + b)/(c\tau + d)$. For $N \ge 1$, let $\Gamma_0(N)$ be the subgroup of the $\gamma$ with $c \equiv 0 \pmod N$. Put $j(\gamma, \tau) = c\tau + d$.

**Definition.** Let $k$ be an integer and let $\chi$ be a Dirichlet character modulo $N$ with $\chi(-1) = (-1)^k$. A *[[modular form|GWKN5VG78A]] of weight $k$, level $N$ and character $\chi$* is a holomorphic function $f : \mathbb{H} \to \mathbb{C}$ with $f(\gamma\tau) = \chi(d)\, j(\gamma, \tau)^k f(\tau)$ for each $\gamma \in \Gamma_0(N)$, such that for each $\gamma \in \mathrm{SL}_2(\mathbb{Z})$ the function $j(\gamma, \tau)^{-k} f(\gamma\tau)$ is bounded as $\operatorname{Im}(\tau) \to \infty$. The space of these forms is $M_k(N, \chi)$. It has finite dimension.

Since $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \in \Gamma_0(N)$, a modular form has a *$q$-expansion* $f(\tau) = \sum_{n \ge 0} a_n(f) q^n$ with $q = e^{2\pi i \tau}$.

**Definition.** A modular form $f$ is a *[[cusp form|A50Y012RBP]]* if $j(\gamma, \tau)^{-k} f(\gamma\tau) \to 0$ as $\operatorname{Im}(\tau) \to \infty$, for each $\gamma \in \mathrm{SL}_2(\mathbb{Z})$. For level $1$ this means $a_0(f) = 0$. The space of cusp forms is $S_k(N, \chi)$.

**Example (Eisenstein series).** Let $k \ge 4$ be even. The *[[Eisenstein series|3NZBZXYWAJ]]* $G_k(\tau) = \sum_{(m, n) \ne (0, 0)} (m\tau + n)^{-k}$ converges absolutely and is a modular form of weight $k$ and level $1$. It is not a cusp form, since $G_k(\tau) \to 2\zeta(k)$ as $\operatorname{Im}(\tau) \to \infty$.

**Example (Dedekind eta function).** The *Dedekind eta function* is $\eta(\tau) = q^{1/24} \prod_{n \ge 1} (1 - q^n)$. It satisfies $\eta(\tau + 1) = e^{2\pi i/24}\eta(\tau)$ and $\eta(-1/\tau) = \sqrt{\tau/i}\, \eta(\tau)$. The function $\Delta = \eta^{24} = q \prod_{n \ge 1} (1 - q^n)^{24}$ is a cusp form of weight $12$ and level $1$, and it has no zero on $\mathbb{H}$.

**Definition.** Let $f, g \in M_k(N, \chi)$, and let one of them be a cusp form. The *[[Petersson inner product|EMZTGD63V3]]* is $\langle f, g \rangle = \int_{\Gamma_0(N) \backslash \mathbb{H}} f(\tau) \overline{g(\tau)}\, y^k \, \frac{dx\, dy}{y^2}$, with $\tau = x + iy$. The integral converges, and it makes $S_k(N, \chi)$ a finite dimensional Hilbert space.

**Definition.** Let $p \nmid N$ be a prime. The *[[Hecke operator|S4SV3QZ8B1]]* $T_p$ acts on $M_k(N, \chi)$ by
$$ a_n(T_p f) = a_{np}(f) + \chi(p) p^{k-1} a_{n/p}(f), $$
where $a_{n/p} = 0$ when $p \nmid n$. The operators $T_n$ for all $n \ge 1$ are defined from these and from the operators $U_p$ for $p \mid N$. They commute, and $T_p$ for $p \nmid N$ is normal for the Petersson inner product.

**Definition.** A *newform* of level $N$ is a cusp form $f \in S_k(N, \chi)$ that is an eigenvector of all $T_n$, is orthogonal to all forms that come from levels $M \mid N$ with $M < N$, and has $a_1(f) = 1$. Then $T_n f = a_n(f) f$ for all $n$.

**Theorem (Atkin and Lehner, 1970; Li, 1975).** The new part of $S_k(N, \chi)$ has a basis of newforms. Two newforms with $a_p(f) = a_p(g)$ for almost all primes $p$ are equal.

The statement `KatoTwoW` of [the window bound](/proof/vwin/) is about a Galois representation attached to a newform of odd weight $2e + 1$, so the character $\chi$ is odd.

## Automorphic forms on adelic groups

Let $F$ be a number field and let $G$ be a connected reductive group over $F$ (see [the chapter on classical groups](/learn/groups/)). Write $G_\infty = \prod_{v \mid \infty} G(F_v)$, let $K = K_\infty \prod_{v < \infty} K_v$ be a maximal compact subgroup of $G(\mathbb{A}_F)$ with $K_v = G(\mathcal{O}_v)$ for almost all $v$, and let $\mathfrak{g}$ be the complexified Lie algebra of $G_\infty$ with $\mathcal{Z}$ the center of its universal enveloping algebra. Fix an embedding $G \hookrightarrow \mathrm{GL}_N$ and put $\|g\| = \prod_v \max_{i,j} \max(|g_{ij}|_v, |(g^{-1})_{ij}|_v)$.

**Definition.** A function $\varphi : G(\mathbb{A}_F) \to \mathbb{C}$ has *moderate growth* if there are $C$ and $r$ with $|\varphi(g)| \le C \|g\|^r$ for all $g$.

**Definition.** An *[[automorphic form|68SJQEC11F]]* on $G$ is a function $\varphi : G(F) \backslash G(\mathbb{A}_F) \to \mathbb{C}$ with these properties:

1. $\varphi$ is smooth: it is invariant on the right by an open compact subgroup of $G(\mathbb{A}_{F,f})$, and smooth in the variable of $G_\infty$;
2. the right translates of $\varphi$ by $K_\infty$ span a finite dimensional space;
3. an ideal of finite codimension in $\mathcal{Z}$ kills $\varphi$;
4. $\varphi$ has moderate growth.

The space $\mathcal{A}(G)$ of automorphic forms is stable under right translation by $G(\mathbb{A}_{F,f})$ and under $\mathfrak{g}$ and $K_\infty$. It is a $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module, but not a representation of $G_\infty$.

**Example.** Let $f \in S_k(N, 1)$ and $K_0(N) = \prod_p K_{0,p}(N)$, the adelic form of $\Gamma_0(N)$. By strong approximation, $\mathrm{GL}_2(\mathbb{A}_\mathbb{Q}) = \mathrm{GL}_2(\mathbb{Q})\, \mathrm{GL}_2^+(\mathbb{R})\, K_0(N)$. The function $\varphi_f(\gamma g_\infty k) = f(g_\infty i)\, j(g_\infty, i)^{-k} (\det g_\infty)^{k/2}$ is well defined and is an automorphic form on $\mathrm{GL}_2$.

The theta integral $I_M(\Phi)$ of [the theta matching chapter](/proof/theta-matching/) is a function on $\mathrm{U}_W(\mathbb{A})$, and `Decay` asks that it has moderate growth. The field `aut` of `IsAutRepU` in [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) asks that each function is an automorphic form on a unitary group.

## Constant terms and cusp forms

**Definition.** Let $P = MN$ be a parabolic subgroup of $G$ over $F$, with unipotent radical $N$. The *constant term* of $\varphi \in \mathcal{A}(G)$ along $P$ is
$$ \varphi_P(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ng)\, dn, $$
with the measure of total mass $1$.

**Definition.** An automorphic form $\varphi$ is a *cusp form* if $\varphi_P = 0$ for each proper parabolic subgroup $P$ of $G$ over $F$. The cusp forms span a subspace $\mathcal{A}_0(G)$.

For $\mathrm{GL}_2$ there is one proper parabolic up to conjugacy, and $\varphi_f$ is a cusp form exactly when $f$ is.

**Theorem (rapid decay of cusp forms).** Let $\varphi$ be a cusp form on $G$ and let $\mathfrak{S}$ be a Siegel set. For each $r > 0$ there is $C$ with $|\varphi(g)| \le C \|g\|^{-r}$ for all $g \in \mathfrak{S}$ (Gelfand and Piatetski-Shapiro; Harish-Chandra, 1968). In particular $\varphi$ is bounded, and it is square integrable modulo the center.

The statements `CuspRapidDecay` of [the unitary hypotheses](/proof/unitary-hypotheses/) and `CuspDecaySobolev` of [the Siegel-Weil chapter](/proof/siegel-weil/) are this theorem, with the height $\inf_{\gamma} \|\gamma g\|$ in place of $\|g\|$ on a Siegel set.

## Fourier coefficients and Whittaker functions

Let $P = MN$ be a parabolic with $N$ abelian, and let $\psi$ be a nontrivial character of $\mathbb{A}_F / F$. Each character of $N(\mathbb{A}_F)$ trivial on $N(F)$ has the form $\psi_T(n) = \psi(\langle T, n \rangle)$ for $T$ in a rational vector space dual to $N$.

**Definition.** The *Fourier coefficient* of $\varphi$ at $T$ is $\varphi_T(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ng)\, \overline{\psi_T(n)}\, dn$. Then $\varphi(g) = \sum_T \varphi_T(g)$, and $\varphi_0 = \varphi_P$.

**Example.** For the Siegel parabolic of $\mathrm{U}(n, n)$, $N \cong \mathrm{Herm}_n$ and $T$ runs over the Hermitian matrices of size $n$ over $E$, with $\psi_T(n(b)) = \psi(\operatorname{tr}(Tb))$.

For $\mathrm{GL}_n$, let $N$ be the upper triangular unipotent subgroup and $\psi_N(u) = \psi(u_{12} + u_{23} + \dots + u_{n-1,n})$. This character is generic. Chapter 17 defines generic characters in general.

**Definition.** The *Whittaker function* of $\varphi \in \mathcal{A}(\mathrm{GL}_n)$ is $W_\varphi(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ug)\, \overline{\psi_N(u)}\, du$.

**Theorem (Shalika, 1974; Piatetski-Shapiro, 1979).** Let $\varphi$ be a cusp form on $\mathrm{GL}_n$. Then
$$ \varphi(g) = \sum_{\gamma \in N_{n-1}(F) \backslash \mathrm{GL}_{n-1}(F)} W_\varphi\!\left(\begin{pmatrix} \gamma & 0 \\ 0 & 1 \end{pmatrix} g\right). $$
So a nonzero cusp form on $\mathrm{GL}_n$ has a nonzero Whittaker function.

**Definition (Poincaré series).** Let $k > 2$ be even and $m \ge 1$. Let $\Gamma_\infty = \{\pm \begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}\}$ in $\mathrm{SL}_2(\mathbb{Z})$. The *Poincaré series* $P_m(\tau) = \sum_{\gamma \in \Gamma_\infty \backslash \mathrm{SL}_2(\mathbb{Z})} j(\gamma, \tau)^{-k} e^{2\pi i m \gamma\tau}$ converges absolutely and is a cusp form of weight $k$. For each cusp form $f$ of weight $k$, unfolding gives $\langle f, P_m \rangle = (k-2)!\,(4\pi m)^{1-k}\, a_m(f)$.

In general a Poincaré series is a sum $\sum_{\gamma \in H(F) \backslash G(F)} f(\gamma g)$ of a function $f$ that is invariant on the left by $H(F)$ and decays fast enough. [The Siegel-Weil chapter](/proof/siegel-weil/) uses Fourier coefficients and Whittaker type integrals along the Siegel parabolic (`ThetaCoef`, `WhitK`), and it uses a Poincaré series to build a cusp form with a nonzero theta period (`exists_multT_eq_poin`).

## Eisenstein series

**Definition.** Let $P = MN$ be a parabolic of $G$, let $\sigma$ be an automorphic representation of $M$, and let $s$ be a complex parameter of an unramified character of $M(\mathbb{A}_F)$. A *section* is a function $f_s$ on $G(\mathbb{A}_F)$ such that $m \mapsto f_s(nmg)$ lies in $\sigma \otimes |\cdot|^{s + \rho_P}$ for each $g$, for the modulus character $\delta_P = |\cdot|^{2\rho_P}$. The section is *standard* if its restriction to $K$ does not depend on $s$. The *Eisenstein series* is
$$ E(g, f_s) = \sum_{\gamma \in P(F) \backslash G(F)} f_s(\gamma g). $$

**Theorem (Langlands, 1976).** The series converges absolutely for $\operatorname{Re}(s)$ in a translate of the positive chamber. It has a meromorphic continuation to all $s$, and it satisfies a functional equation. The continuation is an automorphic form at each point where it is holomorphic.

### Siegel Eisenstein series

Let $E/F$ be a CM extension with conjugation $c$ and quadratic character $\eta$ of $\mathbb{A}_F^\times$. Let $G = \mathrm{U}(n, n)$ be the unitary group of the skew-Hermitian form $\begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}$. The *Siegel parabolic* $P = MN$ has $M = \{m(a) = \mathrm{diag}(a, {}^t\bar a^{-1}) : a \in \mathrm{GL}_n(E)\}$ and $N = \{n(b) : b \in \mathrm{Herm}_n\}$.

**Definition.** Let $\chi$ be a Hecke character of $E$. A section of $I(s, \chi)$ is a smooth $K$-finite function with $f_s(n(b) m(a) g) = \chi(\det a)\, |\det a|_E^{s + n/2} f_s(g)$. The *Siegel Eisenstein series* is $E(g, s, f) = \sum_{\gamma \in P(F) \backslash G(F)} f_s(\gamma g)$. It converges for $\operatorname{Re}(s) > n/2$.

For a standard section, the series has a meromorphic continuation in $s$ (Langlands; Tan, 1999, for its poles). For a Hermitian $T$ with $\det T \ne 0$ and a factorizable section, the $T$-th Fourier coefficient is a product of local *Whittaker integrals*:
$$ E_T(g, s, f) = \prod_v W_{T,v}(g_v, s, f_v), \qquad W_{T,v}(g, s, f) = \int_{\mathrm{Herm}_n(F_v)} f_{s}(w\, n(b)\, g)\, \overline{\psi_v(\operatorname{tr}(Tb))}\, db, $$
where $w = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}$ and $\operatorname{Re}(s)$ is large.

The statement `SiegelWeilStd` of [the Siegel-Weil chapter](/proof/siegel-weil/) asks for a value of $E(x, s, \Phi)$ at $s_0$, with the section flattened by $f_s(x) = a(x)^{s - s_0} f(x)$, and `EisBL` gives the continuation. Chapter 16 makes these sections from Schwartz functions.

## Automorphic representations

**Definition.** An *automorphic representation* of $G$ is an irreducible $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module that is a subquotient of $\mathcal{A}(G)$. A *cuspidal automorphic representation* is an irreducible submodule of $\mathcal{A}_0(G)$.

The code uses the second form directly. A `CuspSub E a` in [Row0b](/step/row0b-def/) is a nonzero subspace of cusp forms on $\mathrm{GL}_a(\mathbb{A}_E)$, stable under the group actions, with no proper nonzero stable subspace.

**Definition (restricted tensor product).** Let $V_v$ be vector spaces, one for each place $v$, and let $\xi_v \in V_v$ be nonzero vectors for almost all $v$. The *restricted tensor product* $\bigotimes'_v V_v$ is the direct limit over finite sets $S$ of $\bigotimes_{v \in S} V_v$, with the maps $x \mapsto x \otimes \xi_{v'}$ for $v' \notin S$.

**Theorem (Flath, 1979).** Let $\pi$ be an irreducible admissible $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module. Then there are irreducible admissible representations $\pi_v$ of $G(F_v)$ (and a $(\mathfrak{g}_v, K_v)$-module for $v \mid \infty$), unique up to isomorphism, such that $\pi_v$ has a nonzero $K_v$-fixed vector $\xi_v$ for almost all $v$ and $\pi \cong \bigotimes'_v \pi_v$.

The representation $\pi_v$ is the *local component* of $\pi$ at $v$. For almost all $v$ it is unramified, and so it has Satake parameters ([the chapter on representations](/learn/representations/)). The Flath tensor product theorem is the field `flathFactorisation` of [ThetaLocalInputs](/step/theta-local-inputs-def/). Local components appear as `IsLocComp` in [Row0b](/step/row0b-def/) and as the field `loc` of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/).

**Definition.** Let $K_v$ be a compact open subgroup of $G(F_v)$. The *[[Hecke algebra|5J2P2AGY4N]]* $\mathcal{H}(G(F_v), K_v)$ is the space of compactly supported functions on $G(F_v)$ that are invariant on both sides by $K_v$, with convolution. It acts on the $K_v$-fixed vectors of $\pi_v$ by $\pi_v(f) \xi = \int f(g) \pi_v(g) \xi\, dg$. For $K_v = G(\mathcal{O}_v)$ and $G$ unramified at $v$ it is commutative (Satake).

For $\mathrm{GL}_2$ over $\mathbb{Q}$ and $p \nmid N$, the operator $T_p$ is the action of $p^{(k-1)/2}$ times the characteristic function of $K_p \begin{pmatrix} p & 0 \\ 0 & 1 \end{pmatrix} K_p$ on $\varphi_f$. The statement `CoreAll` of [the Galois row](/proof/galois-row/) compares the eigenvalues of these operators, through Satake parameters, with Frobenius characteristic polynomials.

## The discrete spectrum

Let $\omega$ be a unitary character of the center $Z(\mathbb{A}_F)$, trivial on $Z(F)$. Let $L^2(G, \omega)$ be the space of functions on $G(F) \backslash G(\mathbb{A}_F)$ with central character $\omega$ that are square integrable modulo $Z(\mathbb{A}_F)$. The group $G(\mathbb{A}_F)$ acts on it by right translation.

**Definition.** The *discrete spectrum* $L^2_{\mathrm{disc}}(G, \omega)$ is the closed span of the irreducible closed subrepresentations. The *cuspidal spectrum* $L^2_{\mathrm{cusp}}$ is the closure of the cusp forms in $L^2$. The *residual spectrum* $L^2_{\mathrm{res}}$ is the orthogonal complement of $L^2_{\mathrm{cusp}}$ in $L^2_{\mathrm{disc}}$.

**Theorem (Gelfand, Graev and Piatetski-Shapiro).** The cuspidal spectrum is a Hilbert direct sum of irreducible representations, each with finite multiplicity, and $L^2_{\mathrm{cusp}} \subseteq L^2_{\mathrm{disc}}$.

**Theorem (Langlands, 1976).** The residual spectrum is spanned by residues of Eisenstein series induced from cusp forms on Levi subgroups, and the orthogonal complement of $L^2_{\mathrm{disc}}$ is a direct integral of Eisenstein series on the unitary axis.

**Theorem (Moeglin and Waldspurger, 1989).** Let $n = ab$ and let $\sigma$ be a unitary cuspidal automorphic representation of $\mathrm{GL}_a$. The residues of the Eisenstein series induced from $\sigma|\det|^{s_1} \otimes \dots \otimes \sigma|\det|^{s_b}$ at $(s_1, \dots, s_b) = (\frac{b-1}{2}, \frac{b-3}{2}, \dots, \frac{1-b}{2})$ span an irreducible representation $\mathrm{Speh}(\sigma, b)$ of $\mathrm{GL}_n$. Each irreducible subrepresentation of $L^2_{\mathrm{disc}}(\mathrm{GL}_n)$ is $\mathrm{Speh}(\sigma, b)$ for exactly one pair $(\sigma, b)$, and it occurs with multiplicity one.

The representations $\mathrm{Speh}(\sigma, b)$ with $b > 1$ are the *residual representations* of $\mathrm{GL}_n$, also called Speh representations. Each one embeds in the representation induced from $\sigma|\det|^{(b-1)/2} \otimes \dots \otimes \sigma|\det|^{(1-b)/2}$. This is the condition `CsdAsc` (with `AscEmb`) on the blocks $V_i$ of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/), where $\sigma$ is also conjugate self-dual.

**Theorem (multiplicity one; Shalika, 1974; Piatetski-Shapiro, 1979).** Each cuspidal automorphic representation of $\mathrm{GL}_n$ occurs in $\mathcal{A}_0(\mathrm{GL}_n)$ exactly once.

**Theorem (strong multiplicity one; Jacquet and Shalika, 1981; Piatetski-Shapiro, 1979).** Let $\pi$ and $\pi'$ be cuspidal automorphic representations of $\mathrm{GL}_n(\mathbb{A}_F)$ with $\pi_v \cong \pi'_v$ for all places $v$ outside a finite set. Then $\pi = \pi'$.

The structure `HypothesesH'` of [the window bound](/proof/vwin/) lists strong multiplicity one among its inputs, and [the literature inputs](/proof/literature/) name `CuspidalMultiplicityOne`.

## Isobaric sums

**Theorem (Langlands, 1979; Jacquet and Shalika, 1981).** Let $\pi_i$ be unitary cuspidal automorphic representations of $\mathrm{GL}_{n_i}(\mathbb{A}_F)$, $1 \le i \le k$, and let $n = \sum n_i$. There is exactly one automorphic representation $\Pi$ of $\mathrm{GL}_n$ whose local component at each $v$ is the representation parabolically induced from $\pi_{1,v} \otimes \dots \otimes \pi_{k,v}$. If two such representations, for $(\pi_i)$ and $(\pi'_j)$, have isomorphic local components at almost all places, then the multisets $\{\pi_i\}$ and $\{\pi'_j\}$ are equal.

**Definition.** This $\Pi$ is the *isobaric sum* $\pi_1 \boxplus \dots \boxplus \pi_k$. More generally, for discrete automorphic representations $\pi_i$, the isobaric sum is the automorphic representation whose local component at each $v$ is the Langlands quotient of the induced representation. Its L-function is $L(s, \Pi) = \prod_i L(s, \pi_i)$.

At an unramified place, the Satake parameter of $\pi_1 \boxplus \dots \boxplus \pi_k$ is the union of the Satake parameters of the $\pi_{i,v}$. The conclusion of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) is an isobaric sum $V_0 \boxplus \dots \boxplus V_{c-1}$ of discrete blocks.

## Regular algebraic, cohomological and polarized representations

Let $E$ be a number field and $\pi$ an automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$. For each embedding $\tau : E \to \mathbb{C}$, the infinitesimal character of $\pi$ at $\tau$ is a multiset of $n$ complex numbers (by the Harish-Chandra isomorphism).

**Definition (Clozel, 1990).** A *regular algebraic automorphic representation* is an automorphic representation $\pi$ of $\mathrm{GL}_n(\mathbb{A}_E)$ such that, for each $\tau$, the infinitesimal character of $\pi$ at $\tau$ consists of $n$ distinct numbers in $\frac{n-1}{2} + \mathbb{Z}$.

**Definition.** A cuspidal $\pi$ is *cohomological* if there is an irreducible algebraic representation $\xi$ of $\prod_\tau \mathrm{GL}_n(\mathbb{C})$ with $H^*(\mathfrak{g}, K_\infty; \pi_\infty \otimes \xi) \ne 0$.

**Theorem (Clozel, 1990).** A cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$ is regular algebraic if and only if it is cohomological.

Now let $E$ be a CM field with maximal totally real subfield $E^+$ and complex conjugation $c$. Write $\pi^c = \pi \circ c$ and $\pi^\vee$ for the dual.

**Definition.** A *polarized automorphic representation* is a pair $(\pi, \chi)$ of an automorphic representation $\pi$ of $\mathrm{GL}_n(\mathbb{A}_E)$ and a Hecke character $\chi$ of $\mathbb{A}_{E^+}^\times / (E^+)^\times$ such that $\pi^c \cong \pi^\vee \otimes (\chi \circ N_{E/E^+})$ and $\chi_v(-1) = (-1)^n$ at each infinite place $v$ of $E^+$. When $\chi = 1$, $\pi$ is *conjugate self-dual*.

Chapter 10 attaches Galois representations to regular algebraic polarized cuspidal representations. The row statement [Row0b](/step/row0b-def/) takes a cuspidal $\pi$ of $\mathrm{GL}_a$ with `IsRegAlg` and `PolarizedPair π χ`, which are these two definitions with $n = a$. The record [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the field `clozelCohomological`.

## Base change

Let $E/F$ be an extension of number fields.

**Theorem (Arthur and Clozel, 1989).** Let $E/F$ be cyclic of prime degree and let $\pi$ be a cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_F)$. There is an isobaric automorphic representation $\mathrm{BC}(\pi)$ of $\mathrm{GL}_n(\mathbb{A}_E)$ such that, at each place $w$ of $E$ over an unramified place $v$ of $F$, the Satake parameter of $\mathrm{BC}(\pi)_w$ is the $f$-th power of that of $\pi_v$, where $f$ is the residue degree of $w$ over $v$.

**Definition.** Let $E/F$ be a CM extension and $\mathrm{U}_n$ a unitary group over $F$ that splits over $E$. A *base change of automorphic representations* from $\mathrm{U}_n$ to $\mathrm{GL}_n$ sends $\pi$ to an isobaric $\Pi$ of $\mathrm{GL}_n(\mathbb{A}_E)$ with these local matchings:

1. at a place $v$ of $F$ that splits as $w \bar w$, $\mathrm{U}_n(F_v) \cong \mathrm{GL}_n(E_w)$ and $\Pi_w \cong \pi_v$;
2. at an inert place $v$ where $\pi_v$ is unramified with Satake parameter $\{\alpha_1, \dots, \alpha_m\}$, $m = \lfloor n/2 \rfloor$, the Satake parameter of $\Pi_w$ is $\{\alpha_j\} \cup \{\alpha_j^{-1}\}$, with one extra $1$ when $n$ is odd;
3. at each infinite place, the infinitesimal characters match.

**Theorem (Labesse, 2011; Mok, 2015; Kaletha, Minguez, Shin and White, 2014).** Each discrete automorphic representation of a unitary group $\mathrm{U}_n$ has a base change to $\mathrm{GL}_n(\mathbb{A}_E)$. It is an isobaric sum of conjugate self-dual discrete representations.

The statement [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) is this theorem for a unitary group of the identity form over a CM field unramified over $E^+$. The window bound uses it as `baseChangeN` in [vwin-of-row](/step/vwin-of-row/).

## Definite quaternion algebras

**Definition.** A *[[quaternion algebra|ZWXW0T3EAC]]* over $F$ is a central simple $F$-algebra $D$ of dimension $4$. It is *ramified* at $v$ if $D \otimes_F F_v$ is a division algebra, and *split* at $v$ if $D \otimes_F F_v \cong M_2(F_v)$.

**Theorem.** The set $\mathrm{Ram}(D)$ of ramified places is finite and has even cardinality. Each finite set of noncomplex places of even cardinality is $\mathrm{Ram}(D)$ for exactly one $D$ up to isomorphism.

**Definition.** Let $F$ be totally real. A *definite quaternion algebra* over $F$ is one that is ramified at every real place. Then $D^\times(F \otimes \mathbb{R}) / (F \otimes \mathbb{R})^\times$ is compact, and for a compact open $K_f \subset D^\times(\mathbb{A}_{F,f})$ the set $D^\times(F) \backslash D^\times(\mathbb{A}_{F,f}) / K_f$ is finite. Automorphic forms of trivial weight on $D^\times$ are functions on this finite set.

**Example.** Over $\mathbb{Q}$, the Hamilton quaternions $\left(\frac{-1, -1}{\mathbb{Q}}\right)$ are ramified at $\{2, \infty\}$, so they form a definite quaternion algebra.

**Theorem (Jacquet and Langlands, 1970).** There is a bijection from the automorphic representations of $D^\times$ of dimension greater than $1$ onto the cuspidal automorphic representations $\pi$ of $\mathrm{GL}_2(\mathbb{A}_F)$ that are discrete series at each $v \in \mathrm{Ram}(D)$. It preserves the local components at the places outside $\mathrm{Ram}(D)$.

The structure `HypothesesH'` of [the window bound](/proof/vwin/) has a field for the existence of a definite quaternion algebra, next to its fields on newforms and quadratic base change.

## Further reading

- J.-P. Serre, *A Course in Arithmetic*, Chapter VII (modular forms of level 1).
- F. Diamond and J. Shurman, *A First Course in Modular Forms*, Chapters 1, 5 and 9.
- A. Borel and H. Jacquet, *Automorphic forms and automorphic representations*, and D. Flath, *Decomposition of representations into tensor products*, in Proc. Sympos. Pure Math. 33, Part 1 (1979).
- C. Moeglin and J.-L. Waldspurger, *Spectral Decomposition and Eisenstein Series*, Chapters I and II.
- L. Clozel, *Motifs et formes automorphes*, in *Automorphic Forms, Shimura Varieties and L-functions I* (1990), Section 3.
