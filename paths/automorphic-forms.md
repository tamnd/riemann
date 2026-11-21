An automorphic form is a function on $G(F) \backslash G(\mathbb{A}_F)$, for $G$ reductive over a number field $F$, with a finiteness and a growth condition; modular forms are the case of $\mathrm{GL}_2$ over $\mathbb{Q}$. The proof needs them for theta integrals on unitary groups, for the cuspidal $\pi$ of the row statement, and for base change in the window bound.

## Modular forms

Let $\mathbb{H} = \{\tau \in \mathbb{C} : \operatorname{Im}(\tau) > 0\}$, with $\mathrm{SL}_2(\mathbb{Z})$ acting by $\gamma\tau = (a\tau + b)/(c\tau + d)$. For $N \ge 1$, let $\Gamma_0(N)$ be the subgroup of the $\gamma$ with $c \equiv 0 \pmod N$, and put $j(\gamma, \tau) = c\tau + d$.

**Definition.** Let $k \in \mathbb{Z}$ and let $\chi$ be a Dirichlet character modulo $N$ with $\chi(-1) = (-1)^k$. A *[[modular form|GWKN5VG78A]] of weight $k$, level $N$ and character $\chi$* is a holomorphic $f : \mathbb{H} \to \mathbb{C}$ with $f(\gamma\tau) = \chi(d)\, j(\gamma, \tau)^k f(\tau)$ for $\gamma \in \Gamma_0(N)$, such that $j(\gamma, \tau)^{-k} f(\gamma\tau)$ is bounded as $\operatorname{Im}(\tau) \to \infty$ for each $\gamma \in \mathrm{SL}_2(\mathbb{Z})$. These forms make a finite dimensional space $M_k(N, \chi)$. Since $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \in \Gamma_0(N)$, each has a *$q$-expansion* $f(\tau) = \sum_{n \ge 0} a_n(f) q^n$, $q = e^{2\pi i \tau}$.

**Definition.** A modular form $f$ is a *[[cusp form|A50Y012RBP]]* if $j(\gamma, \tau)^{-k} f(\gamma\tau) \to 0$ as $\operatorname{Im}(\tau) \to \infty$ for each $\gamma \in \mathrm{SL}_2(\mathbb{Z})$; for level $1$ this means $a_0(f) = 0$. The cusp forms make a subspace $S_k(N, \chi)$.

**Example.** For even $k \ge 4$, the *[[Eisenstein series|3NZBZXYWAJ]]* $G_k(\tau) = \sum_{(m, n) \ne (0, 0)} (m\tau + n)^{-k}$ is a modular form of weight $k$ and level $1$, not a cusp form since $G_k(\tau) \to 2\zeta(k)$. The form $\Delta = q \prod_{n \ge 1} (1 - q^n)^{24}$ is a cusp form of weight $12$ and level $1$.

**Definition.** For $f, g \in M_k(N, \chi)$, one of them cuspidal, the *[[Petersson inner product|EMZTGD63V3]]* is $\langle f, g \rangle = \int_{\Gamma_0(N) \backslash \mathbb{H}} f \bar g\, y^k \, \frac{dx\, dy}{y^2}$. It converges, and it makes $S_k(N, \chi)$ a finite dimensional Hilbert space.

**Definition.** For a prime $p \nmid N$, the *[[Hecke operator|S4SV3QZ8B1]]* $T_p$ acts on $M_k(N, \chi)$ by
$$ a_n(T_p f) = a_{np}(f) + \chi(p) p^{k-1} a_{n/p}(f), $$
where $a_{n/p} = 0$ when $p \nmid n$. With the operators $U_p$ for $p \mid N$ these generate operators $T_n$, $n \ge 1$, that commute; $T_p$ for $p \nmid N$ is normal for the Petersson inner product.

**Definition.** A *newform* of level $N$ is an $f \in S_k(N, \chi)$ that is an eigenvector of all $T_n$, is orthogonal to the forms coming from levels $M \mid N$ with $M < N$, and has $a_1(f) = 1$. Then $T_n f = a_n(f) f$ for all $n$.

**Theorem (Atkin and Lehner, 1970; Li, 1975).** The new part of $S_k(N, \chi)$ has a basis of newforms. Two newforms with $a_p(f) = a_p(g)$ for almost all primes $p$ are equal.

The statement `KatoTwoW` of [the window bound](/proof/vwin/) is about the Galois representation of a newform of odd weight $2e + 1$, whose character is therefore odd.

## Automorphic forms on adelic groups

Let $G$ be a connected reductive group over a number field $F$ ([classical groups](/learn/groups/)). Write $G_\infty = \prod_{v \mid \infty} G(F_v)$, let $K = K_\infty \prod_{v < \infty} K_v$ be a maximal compact subgroup of $G(\mathbb{A}_F)$ with $K_v = G(\mathcal{O}_v)$ for almost all $v$, and let $\mathcal{Z}$ be the center of the universal enveloping algebra of the complexified Lie algebra $\mathfrak{g}$ of $G_\infty$. Fix $G \hookrightarrow \mathrm{GL}_N$ and put $\|g\| = \prod_v \max_{i,j} \max(|g_{ij}|_v, |(g^{-1})_{ij}|_v)$.

**Definition.** A function $\varphi$ on $G(\mathbb{A}_F)$ has *moderate growth* if $|\varphi(g)| \le C \|g\|^r$ for some $C, r$ and all $g$.

**Definition.** An *[[automorphic form|68SJQEC11F]]* on $G$ is a function $\varphi : G(F) \backslash G(\mathbb{A}_F) \to \mathbb{C}$ such that:

1. $\varphi$ is smooth: right invariant by an open compact subgroup of $G(\mathbb{A}_{F,f})$ and smooth in the variable of $G_\infty$;
2. the right translates of $\varphi$ by $K_\infty$ span a finite dimensional space;
3. an ideal of finite codimension in $\mathcal{Z}$ kills $\varphi$;
4. $\varphi$ has moderate growth.

The space $\mathcal{A}(G)$ of automorphic forms is a $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module under right translation, but not a representation of $G_\infty$.

**Example.** Let $f \in S_k(N, 1)$ and $K_0(N) = \prod_p K_{0,p}(N)$, the adelic $\Gamma_0(N)$. Since $\mathrm{GL}_2(\mathbb{A}_\mathbb{Q}) = \mathrm{GL}_2(\mathbb{Q})\, \mathrm{GL}_2^+(\mathbb{R})\, K_0(N)$ (strong approximation), $\varphi_f(\gamma g_\infty k) = f(g_\infty i)\, j(g_\infty, i)^{-k} (\det g_\infty)^{k/2}$ is a well defined automorphic form on $\mathrm{GL}_2$.

`Decay` in [the theta matching chapter](/proof/theta-matching/) asks that the theta integral $I_M(\Phi)$ has moderate growth, and the field `aut` of `IsAutRepU` in [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) asks for automorphic forms on a unitary group.

## Constant terms and cusp forms

**Definition.** Let $P = MN$ be a parabolic subgroup of $G$ over $F$ with unipotent radical $N$. The *constant term* of $\varphi \in \mathcal{A}(G)$ along $P$ is
$$ \varphi_P(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ng)\, dn, $$
for the measure of total mass $1$.

**Definition.** An automorphic form $\varphi$ is a *cusp form* if $\varphi_P = 0$ for each proper parabolic $P$ of $G$ over $F$. The cusp forms span a subspace $\mathcal{A}_0(G)$. For $\mathrm{GL}_2$, $\varphi_f$ is a cusp form exactly when $f$ is.

**Theorem (rapid decay of cusp forms; Gelfand and Piatetski-Shapiro; Harish-Chandra, 1968).** Let $\varphi$ be a cusp form on $G$, $\mathfrak{S}$ a Siegel set, and $G(\mathbb{A}_F)^1$ the common kernel of the $|\chi|$ for the rational characters $\chi$ of $G$. For each $r > 0$ there is $C$ with $|\varphi(g)| \le C \|g\|^{-r}$ for $g \in \mathfrak{S} \cap G(\mathbb{A}_F)^1$. Hence $\varphi$ is bounded on $G(\mathbb{A}_F)^1$, and square integrable modulo the center if its central character is unitary.

With the height $\inf_{\gamma} \|\gamma g\|$ in place of $\|g\|$, this is `CuspRapidDecay` in [the unitary hypotheses](/proof/unitary-hypotheses/) and `CuspDecaySobolev` in [the Siegel-Weil chapter](/proof/siegel-weil/).

## Fourier coefficients and Whittaker functions

Let $P = MN$ be a parabolic with $N$ abelian, and $\psi$ a nontrivial character of $\mathbb{A}_F / F$. The characters of $N(\mathbb{A}_F)$ trivial on $N(F)$ are the $\psi_T(n) = \psi(\langle T, n \rangle)$, for $T$ in a rational vector space dual to $N$.

**Definition.** The *Fourier coefficient* of $\varphi$ at $T$ is $\varphi_T(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ng)\, \overline{\psi_T(n)}\, dn$. Then $\varphi = \sum_T \varphi_T$, and $\varphi_0 = \varphi_P$. For the Siegel parabolic of $\mathrm{U}(n, n)$ (below), $T$ runs over the Hermitian $n \times n$ matrices over $E$ and $\psi_T(n(b)) = \psi(\operatorname{tr}(Tb))$.

**Definition.** Let $N$ be the upper triangular unipotent subgroup of $\mathrm{GL}_n$ and $\psi_N(u) = \psi(u_{12} + \dots + u_{n-1,n})$, a generic character (Chapter 17). The *Whittaker function* of $\varphi \in \mathcal{A}(\mathrm{GL}_n)$ is $W_\varphi(g) = \int_{N(F) \backslash N(\mathbb{A}_F)} \varphi(ug)\, \overline{\psi_N(u)}\, du$.

**Theorem (Shalika, 1974; Piatetski-Shapiro, 1979).** For a cusp form $\varphi$ on $\mathrm{GL}_n$,
$$ \varphi(g) = \sum_{\gamma \in N_{n-1}(F) \backslash \mathrm{GL}_{n-1}(F)} W_\varphi\!\left(\begin{pmatrix} \gamma & 0 \\ 0 & 1 \end{pmatrix} g\right). $$
So a nonzero cusp form on $\mathrm{GL}_n$ has a nonzero Whittaker function.

**Definition (Poincaré series).** Let $k > 2$ be even, $m \ge 1$, and $\Gamma_\infty = \{\pm \begin{pmatrix} 1 & n \\ 0 & 1 \end{pmatrix}\} \subset \mathrm{SL}_2(\mathbb{Z})$. The *Poincaré series* $P_m(\tau) = \sum_{\gamma \in \Gamma_\infty \backslash \mathrm{SL}_2(\mathbb{Z})} j(\gamma, \tau)^{-k} e^{2\pi i m \gamma\tau}$ converges absolutely to a cusp form of weight $k$, and unfolding gives $\langle f, P_m \rangle = (k-2)!\,(4\pi m)^{1-k}\, a_m(f)$ for each cusp form $f$ of weight $k$. In general a Poincaré series is a sum $\sum_{\gamma \in H(F) \backslash G(F)} f(\gamma g)$ of a fast decaying function $f$ that is left invariant by $H(F)$.

[The Siegel-Weil chapter](/proof/siegel-weil/) uses Fourier coefficients and Whittaker type integrals along the Siegel parabolic (`ThetaCoef`, `WhitK`), and a Poincaré series to build a cusp form with a nonzero theta period (`exists_multT_eq_poin`).

## Eisenstein series

**Definition.** Let $P = MN$ be a parabolic of $G$, $\sigma$ an automorphic representation of $M$ (defined below), $s$ a complex parameter of an unramified character of $M(\mathbb{A}_F)$, and $\delta_P = |\cdot|^{2\rho_P}$ the modulus character. A *section* is a function $f_s$ on $G(\mathbb{A}_F)$ such that $m \mapsto f_s(nmg)$ lies in $\sigma \otimes |\cdot|^{s + \rho_P}$ for each $g$; it is *standard* if $f_s|_K$ does not depend on $s$. The *Eisenstein series* is
$$ E(g, f_s) = \sum_{\gamma \in P(F) \backslash G(F)} f_s(\gamma g). $$

**Theorem (Langlands, 1976).** Let $\sigma$ be cuspidal and $f_s$ standard. The series converges absolutely for $\operatorname{Re}(s)$ in a translate of the positive chamber, continues meromorphically to all $s$, and satisfies a functional equation. Where the continuation is holomorphic it is an automorphic form.

### Siegel Eisenstein series

For a CM extension $E/F$, let $G = \mathrm{U}(n, n)$ be the unitary group of the skew-Hermitian form $w = \begin{pmatrix} 0 & 1_n \\ -1_n & 0 \end{pmatrix}$. Its *Siegel parabolic* $P = MN$ has $M = \{m(a) = \mathrm{diag}(a, {}^t\bar a^{-1}) : a \in \mathrm{GL}_n(E)\}$ and $N = \{n(b) : b \in \mathrm{Herm}_n\}$.

**Definition.** Let $\chi$ be a Hecke character of $E$. A section of $I(s, \chi)$ is a smooth $K$-finite function with $f_s(n(b) m(a) g) = \chi(\det a)\, |\det a|_E^{s + n/2} f_s(g)$. The *Siegel Eisenstein series* $E(g, s, f) = \sum_{\gamma \in P(F) \backslash G(F)} f_s(\gamma g)$ converges for $\operatorname{Re}(s) > n/2$.

For a standard section it continues meromorphically in $s$ (Langlands; Tan, 1999, for the poles). For $\operatorname{Re}(s)$ large, $\det T \ne 0$ and a factorizable section, the $T$-th Fourier coefficient is a product of local *Whittaker integrals*:
$$ E_T(g, s, f) = \prod_v W_{T,v}(g_v, s, f_v), \qquad W_{T,v}(g, s, f) = \int_{\mathrm{Herm}_n(F_v)} f_{s}(w\, n(b)\, g)\, \overline{\psi_v(\operatorname{tr}(Tb))}\, db. $$

`SiegelWeilStd` in [the Siegel-Weil chapter](/proof/siegel-weil/) asks for the value of $E(x, s, \Phi)$ at $s_0$, for the section flattened by $f_s(x) = a(x)^{s - s_0} f(x)$, and `EisBL` gives the continuation. Chapter 16 builds these sections from Schwartz functions.

## Automorphic representations

**Definition.** An *automorphic representation* of $G$ is an irreducible $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module that is a subquotient of $\mathcal{A}(G)$. A *cuspidal automorphic representation* is an irreducible submodule of $\mathcal{A}_0(G)$.

A `CuspSub E a` in [Row0b](/step/row0b-def/) is the second form: a nonzero stable space of cusp forms on $\mathrm{GL}_a(\mathbb{A}_E)$ with no proper nonzero stable subspace.

**Definition (restricted tensor product).** Let $V_v$ be vector spaces, one for each place $v$, with nonzero $\xi_v \in V_v$ for almost all $v$. The *restricted tensor product* $\bigotimes'_v V_v$ is the direct limit over finite sets $S$ of $\bigotimes_{v \in S} V_v$ along the maps $x \mapsto x \otimes \xi_{v'}$, $v' \notin S$.

**Theorem (Flath, 1979).** Let $\pi$ be an irreducible admissible $(\mathfrak{g}, K_\infty) \times G(\mathbb{A}_{F,f})$-module. There are irreducible admissible representations $\pi_v$ of $G(F_v)$ (a $(\mathfrak{g}_v, K_v)$-module for $v \mid \infty$), unique up to isomorphism, such that $\pi_v$ has a nonzero $K_v$-fixed vector $\xi_v$ for almost all $v$ and $\pi \cong \bigotimes'_v \pi_v$.

The $\pi_v$ is the *local component* of $\pi$ at $v$; for almost all $v$ it is unramified and has Satake parameters ([representations](/learn/representations/)). The Flath tensor product theorem is the field `flathFactorisation` of [ThetaLocalInputs](/step/theta-local-inputs-def/); local components appear as `IsLocComp` in [Row0b](/step/row0b-def/) and as the field `loc` of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/).

**Definition.** For a compact open $K_v \subset G(F_v)$, the *[[Hecke algebra|5J2P2AGY4N]]* $\mathcal{H}(G(F_v), K_v)$ is the convolution algebra of compactly supported functions on $G(F_v)$ that are left and right $K_v$-invariant. It acts on the $K_v$-fixed vectors of $\pi_v$ by $\pi_v(f) \xi = \int f(g) \pi_v(g) \xi\, dg$. For $G$ unramified at $v$ and $K_v = G(\mathcal{O}_v)$ it is commutative (Satake).

For $f \in S_k(N, 1)$ and $p \nmid N$, the classical $T_p$ is $p^{k/2 - 1}$ times the action on $\varphi_f$ of the characteristic function of $K_p \begin{pmatrix} p & 0 \\ 0 & 1 \end{pmatrix} K_p$, with $\mathrm{vol}(K_p) = 1$. `CoreAll` in [the Galois row](/proof/galois-row/) compares the eigenvalues of these operators, through Satake parameters, with Frobenius characteristic polynomials.

## The discrete spectrum

Let $Z$ be the center of $G$ and $\omega$ a unitary character of $Z(F) \backslash Z(\mathbb{A}_F)$. Let $L^2(G, \omega)$ be the space of functions on $G(F) \backslash G(\mathbb{A}_F)$ with central character $\omega$ that are square integrable modulo $Z(\mathbb{A}_F)$, with $G(\mathbb{A}_F)$ acting by right translation.

**Definition.** The *discrete spectrum* $L^2_{\mathrm{disc}}(G, \omega)$ is the closed span of the irreducible closed subrepresentations. The *cuspidal spectrum* $L^2_{\mathrm{cusp}}$ is the closure of the cusp forms, and the *residual spectrum* $L^2_{\mathrm{res}}$ is the orthogonal complement of $L^2_{\mathrm{cusp}}$ in $L^2_{\mathrm{disc}}$.

**Theorem (Gelfand, Graev and Piatetski-Shapiro).** $L^2_{\mathrm{cusp}} \subseteq L^2_{\mathrm{disc}}$, and $L^2_{\mathrm{cusp}}$ is a Hilbert direct sum of irreducible representations with finite multiplicities.

**Theorem (Langlands, 1976).** The residual spectrum is spanned by residues of Eisenstein series induced from cusp forms on Levi subgroups, and the orthogonal complement of $L^2_{\mathrm{disc}}$ is a direct integral of Eisenstein series on the unitary axis.

**Theorem (Moeglin and Waldspurger, 1989).** Let $n = ab$ and let $\sigma$ be a unitary cuspidal automorphic representation of $\mathrm{GL}_a$. The residues at $(s_1, \dots, s_b) = (\frac{b-1}{2}, \frac{b-3}{2}, \dots, \frac{1-b}{2})$ of the Eisenstein series induced from $\sigma|\det|^{s_1} \otimes \dots \otimes \sigma|\det|^{s_b}$ span an irreducible representation $\mathrm{Speh}(\sigma, b)$ of $\mathrm{GL}_n$. Each irreducible subrepresentation of $L^2_{\mathrm{disc}}(\mathrm{GL}_n)$ is $\mathrm{Speh}(\sigma, b)$ for exactly one pair $(\sigma, b)$, with multiplicity one.

The $\mathrm{Speh}(\sigma, b)$ with $b > 1$ are the *residual representations* of $\mathrm{GL}_n$. Each embeds in the representation induced from $\sigma|\det|^{(1-b)/2} \otimes \dots \otimes \sigma|\det|^{(b-1)/2}$, with ascending exponents; this, for $\sigma$ conjugate self-dual, is the condition `CsdAsc` (with `AscEmb`) on the blocks $V_i$ of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/).

**Theorem (multiplicity one; Shalika, 1974; Piatetski-Shapiro, 1979).** Each cuspidal automorphic representation of $\mathrm{GL}_n$ occurs in $\mathcal{A}_0(\mathrm{GL}_n)$ exactly once.

**Theorem (strong multiplicity one; Jacquet and Shalika, 1981; Piatetski-Shapiro, 1979).** If cuspidal automorphic representations $\pi, \pi'$ of $\mathrm{GL}_n(\mathbb{A}_F)$ have $\pi_v \cong \pi'_v$ for all $v$ outside a finite set, then $\pi = \pi'$.

Strong multiplicity one is an input of `HypothesesH'` in [the window bound](/proof/vwin/), named `CuspidalMultiplicityOne` among [the literature inputs](/proof/literature/).

## Isobaric sums

**Theorem (Langlands, 1979; Jacquet and Shalika, 1981).** Let $\pi_i$ be unitary cuspidal automorphic representations of $\mathrm{GL}_{n_i}(\mathbb{A}_F)$, $1 \le i \le k$, and $n = \sum n_i$. There is exactly one automorphic representation $\Pi$ of $\mathrm{GL}_n$ whose local component at each $v$ is parabolically induced from $\pi_{1,v} \otimes \dots \otimes \pi_{k,v}$. If the $\Pi$ for $(\pi_i)$ and for $(\pi'_j)$ have isomorphic local components at almost all places, then $\{\pi_i\} = \{\pi'_j\}$ as multisets.

**Definition.** This $\Pi$ is the *isobaric sum* $\pi_1 \boxplus \dots \boxplus \pi_k$. For discrete automorphic representations $\pi_i$, the isobaric sum is the automorphic representation whose local component at each $v$ is the Langlands quotient of the induced representation. In both cases $L(s, \Pi) = \prod_i L(s, \pi_i)$, and at an unramified place the Satake parameter of $\Pi$ is the union of those of the $\pi_{i,v}$.

The conclusion of [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) is an isobaric sum $V_0 \boxplus \dots \boxplus V_{c-1}$ of discrete blocks.

## Regular algebraic, cohomological and polarized representations

Let $\pi$ be an automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$, $E$ a number field. By the Harish-Chandra isomorphism, its infinitesimal character at each embedding $\tau : E \to \mathbb{C}$ is a multiset of $n$ complex numbers.

**Definition (Clozel, 1990).** $\pi$ is a *regular algebraic automorphic representation* if at each $\tau$ its infinitesimal character consists of $n$ distinct numbers in $\frac{n-1}{2} + \mathbb{Z}$.

**Definition.** A cuspidal $\pi$ is *cohomological* if $H^*(\mathfrak{g}, K_\infty; \pi_\infty \otimes \xi) \ne 0$ for some irreducible algebraic representation $\xi$ of $\prod_\tau \mathrm{GL}_n(\mathbb{C})$.

**Theorem (Clozel, 1990).** A cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$ is regular algebraic if and only if it is cohomological.

Now let $E$ be a CM field with maximal totally real subfield $E^+$ and complex conjugation $c$; write $\pi^c = \pi \circ c$ and $\pi^\vee$ for the dual.

**Definition.** A *polarized automorphic representation* is a pair $(\pi, \chi)$ of an automorphic representation $\pi$ of $\mathrm{GL}_n(\mathbb{A}_E)$ and a Hecke character $\chi$ of $\mathbb{A}_{E^+}^\times / (E^+)^\times$ with $\pi^c \cong \pi^\vee \otimes (\chi \circ N_{E/E^+} \circ \det)$ and $\chi_v(-1) = (-1)^n$ at each infinite place $v$ of $E^+$. If $\pi^c \cong \pi^\vee$, then $\pi$ is *conjugate self-dual*.

Chapter 10 attaches Galois representations to regular algebraic polarized cuspidal representations. [Row0b](/step/row0b-def/) takes a cuspidal $\pi$ of $\mathrm{GL}_a$ with `IsRegAlg` and `PolarizedPair π χ`, the two definitions above, and [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the field `clozelCohomological`.

## Base change

**Theorem (Arthur and Clozel, 1989).** Let $E/F$ be a cyclic extension of number fields of prime degree, and $\pi$ a cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_F)$. There is an isobaric automorphic representation $\mathrm{BC}(\pi)$ of $\mathrm{GL}_n(\mathbb{A}_E)$ such that, at each place $w$ of $E$ over an unramified place $v$ of $F$, the Satake parameter of $\mathrm{BC}(\pi)_w$ is the $f$-th power of that of $\pi_v$, with $f$ the residue degree of $w$ over $v$.

**Definition.** Let $E/F$ be a CM extension and $\mathrm{U}_n$ a unitary group over $F$ that splits over $E$. A *base change of automorphic representations* from $\mathrm{U}_n$ to $\mathrm{GL}_n$ sends $\pi$ to an isobaric $\Pi$ of $\mathrm{GL}_n(\mathbb{A}_E)$ such that:

1. at a place $v$ of $F$ that splits as $w \bar w$, $\mathrm{U}_n(F_v) \cong \mathrm{GL}_n(E_w)$ and $\Pi_w \cong \pi_v$;
2. at an inert place $v$ where $\pi_v$ is unramified with Satake parameter $\{\alpha_1, \dots, \alpha_m\}$, $m = \lfloor n/2 \rfloor$, the Satake parameter of $\Pi_w$ is $\{\alpha_j\} \cup \{\alpha_j^{-1}\}$, with one extra $1$ when $n$ is odd;
3. at each infinite place, the infinitesimal characters match.

**Theorem (Mok, 2015, for quasi-split $\mathrm{U}_n$; Kaletha, Minguez, Shin and White, 2014, for inner forms; Labesse, 2011, for cohomological representations).** Each discrete automorphic representation of a unitary group $\mathrm{U}_n$ has a base change to $\mathrm{GL}_n(\mathbb{A}_E)$, and it is an isobaric sum of conjugate self-dual discrete representations.

[BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) is this theorem for the unitary group of the identity form over a CM field unramified over $E^+$; the window bound uses it as `baseChangeN` in [vwin-of-row](/step/vwin-of-row/).

## Definite quaternion algebras

**Definition.** A *[[quaternion algebra|ZWXW0T3EAC]]* over $F$ is a central simple $F$-algebra $D$ of dimension $4$. It is *ramified* at $v$ if $D \otimes_F F_v$ is a division algebra, and *split* at $v$ if $D \otimes_F F_v \cong M_2(F_v)$.

**Theorem.** The set $\mathrm{Ram}(D)$ of ramified places is finite of even cardinality, and each finite set of noncomplex places of even cardinality is $\mathrm{Ram}(D)$ for exactly one $D$ up to isomorphism.

**Definition.** Let $F$ be totally real. A *definite quaternion algebra* over $F$ is one ramified at every real place. Then $D^\times(F \otimes \mathbb{R}) / (F \otimes \mathbb{R})^\times$ is compact, and for compact open $K_f \subset D^\times(\mathbb{A}_{F,f})$ the set $D^\times(F) \backslash D^\times(\mathbb{A}_{F,f}) / K_f$ is finite; automorphic forms of trivial weight and level $K_f$ on $D^\times$ are functions on it. For example, the Hamilton quaternions $\left(\frac{-1, -1}{\mathbb{Q}}\right)$ are ramified exactly at $\{2, \infty\}$.

**Theorem (Jacquet and Langlands, 1970).** There is a bijection from the automorphic representations of $D^\times$ of dimension greater than $1$ onto the cuspidal automorphic representations of $\mathrm{GL}_2(\mathbb{A}_F)$ that are discrete series at each $v \in \mathrm{Ram}(D)$. It preserves the local components outside $\mathrm{Ram}(D)$.

Besides fields on newforms and quadratic base change, `HypothesesH'` in [the window bound](/proof/vwin/) asks for a definite quaternion algebra.

## Further reading

- J.-P. Serre, *A Course in Arithmetic*, Chapter VII.
- F. Diamond and J. Shurman, *A First Course in Modular Forms*, Chapters 1, 5 and 9.
- A. Borel and H. Jacquet, *Automorphic forms and automorphic representations*, and D. Flath, *Decomposition of representations into tensor products*, in Proc. Sympos. Pure Math. 33, Part 1 (1979).
- C. Moeglin and J.-L. Waldspurger, *Spectral Decomposition and Eisenstein Series*, Chapters I and II.
- L. Clozel, *Motifs et formes automorphes*, in *Automorphic Forms, Shimura Varieties and L-functions I* (1990), Section 3.
