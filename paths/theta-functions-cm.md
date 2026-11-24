This chapter treats theta functions in $g$ variables and their transformation formula, theta series of lattices, the theta functions of complex tori and their algebraic theory (theta groups, the key formula, modular forms as rules on abelian schemes), abelian varieties with complex multiplication, the main theorem of complex multiplication, and the algebraicity and integrality of values at CM points. The development volumes use it in three places. The theta series of Hermitian lattices span spaces of forms in the theta correspondence. The values and Taylor coefficients of theta functions at CM points, with their integrality at each prime, carry the norm bounds of the CM chapters. The positive scalars of the iterated theta lifts are inner products of theta series. In the proof, [CM divisibility](/proof/cm-divisibility/) uses a CM elliptic curve, derivatives of theta values over periods and the Chowla-Selberg formula, and [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/) contain the main theorem of complex multiplication for elliptic curves. We assume [complex analysis](/learn/complex-analysis/), the [elliptic curves](/learn/elliptic-curves/) chapter and the [abelian varieties](/learn/abelian-varieties/) chapter, whose complex tori, Riemann forms and Siegel moduli schemes we do not repeat.

## Theta functions with characteristics

Write $e(x) = \exp(2\pi i x)$ for $x \in \mathbb{C}$. Vectors are columns, and $n^T m = \sum_j n_j m_j$ without complex conjugation.

**Definition.** The *Siegel upper half space* $\mathbb{H}_g$ is the set of symmetric matrices $Z \in M_g(\mathbb{C})$ with $\operatorname{Im} Z$ positive definite. It is an open subset of the space of symmetric complex matrices, of complex dimension $g(g+1)/2$. For $g = 1$ it is the upper half plane $\mathbb{H}$.

**Definition.** The *Riemann [[theta function|2F5CYQJVAF]]* is
$$\theta(z, Z) = \sum_{n \in \mathbb{Z}^g} \exp\big(\pi i\, n^T Z n + 2\pi i\, n^T z\big), \qquad z \in \mathbb{C}^g,\ Z \in \mathbb{H}_g.$$

**Proposition.** The series converges absolutely and uniformly on compact subsets of $\mathbb{C}^g \times \mathbb{H}_g$. So $\theta$ is holomorphic in $(z, Z)$, and the series can be differentiated term by term.

*Proof.* Let $K$ be compact. There are $c > 0$ and $C$ with $\operatorname{Im} Z \ge c \cdot 1_g$ and $|\operatorname{Im} z| \le C$ on $K$. The absolute value of the term of $n$ is $\exp(-\pi n^T (\operatorname{Im} Z) n - 2\pi n^T \operatorname{Im} z) \le \exp(-\pi c |n|^2 + 2\pi C \sqrt{g}\, |n|)$. The sum of the right side over $n \in \mathbb{Z}^g$ is finite. $\square$

**Definition.** Let $a, b \in \mathbb{R}^g$. The *theta function with characteristic* $\begin{bmatrix} a \\ b \end{bmatrix}$ is
$$\theta\begin{bmatrix} a \\ b \end{bmatrix}(z, Z) = \sum_{n \in \mathbb{Z}^g} \exp\big(\pi i\, (n+a)^T Z (n+a) + 2\pi i\, (n+a)^T (z+b)\big).$$
So $\theta\begin{bmatrix} 0 \\ 0 \end{bmatrix} = \theta$. We also write $\theta[m]$ with $m = (a, b) \in \mathbb{R}^{2g}$.

**Proposition.** Let $a, b \in \mathbb{R}^g$ and $m, m' \in \mathbb{Z}^g$.
1. $\theta[a, b](z, Z) = \exp(\pi i\, a^T Z a + 2\pi i\, a^T (z + b))\, \theta(z + Za + b, Z)$.
2. $\theta[a + m, b + m'](z, Z) = e(a^T m')\, \theta[a, b](z, Z)$.
3. $\theta[a, b](-z, Z) = \theta[-a, -b](z, Z)$.

*Proof.* For (1), expand $(n+a)^T Z (n+a) = n^T Z n + 2 n^T Z a + a^T Z a$ and compare term by term. For (2), replace $n$ by $n - m$; the factor $e((n+a)^T m')$ is $e(a^T m')$ because $n^T m' \in \mathbb{Z}$. For (3), replace $n$ by $-n$. $\square$

**Theorem (quasi-periodicity).** For $m \in \mathbb{Z}^g$,
$$\begin{aligned} \theta[a, b](z + m, Z) &= e(a^T m)\, \theta[a, b](z, Z), \\ \theta[a, b](z + Zm, Z) &= e(-b^T m)\, \exp\big(-\pi i\, m^T Z m - 2\pi i\, m^T z\big)\, \theta[a, b](z, Z). \end{aligned}$$

*Proof.* The first identity holds term by term. For the second, write $(n+a)^T Z (n+a) + 2(n+a)^T Z m = (n+m+a)^T Z (n+m+a) - m^T Z m$ and $(n+a)^T(z+b) = (n+m+a)^T (z+b) - m^T(z+b)$. Then replace $n + m$ by $n$. $\square$

So $\theta(\cdot, Z)$ is a section of a line bundle on the complex torus $A_Z = \mathbb{C}^g / (Z\mathbb{Z}^g + \mathbb{Z}^g)$ of [the abelian varieties chapter](/learn/abelian-varieties/#complex-tori). The factor $\exp(-\pi i\, m^T Z m - 2\pi i\, m^T z)$ is the *classical factor of automorphy*.

**Definition.** A characteristic $m = (a, b)$ is *half-integral* if $a, b \in \{0, \tfrac12\}^g$. It is *even* if $4 a^T b$ is even and *odd* otherwise. We also call a half-integral characteristic a *theta characteristic*; the normalization of the key rule and the theta functions at the prime $2$ use them. The *theta constant* (or *Thetanullwert*) of $m$ is $\theta[m](Z) = \theta[m](0, Z)$.

**Proposition.** Let $m$ be half-integral. Then $\theta[m](-z, Z) = (-1)^{4 a^T b}\, \theta[m](z, Z)$. So the odd theta constants are $0$. There are $2^{g-1}(2^g + 1)$ even and $2^{g-1}(2^g - 1)$ odd half-integral characteristics.

*Proof.* By (3) and (2) of the proposition above, $\theta[a, b](-z) = \theta[a - 2a, b - 2b](z) = e(-2a^T b)\,\theta[a, b](z)$, because $2a, 2b \in \mathbb{Z}^g$. Here $e(-2a^Tb) = (-1)^{4a^Tb}$. For the count, let $N_g^{\pm}$ be the numbers of even and odd characteristics. A pair $(a_j, b_j) \in \{0, \tfrac12\}^2$ has $4a_jb_j = 0$ in three cases and $1$ in one case. So $N_g^+ - N_g^- = (3 - 1)(N_{g-1}^+ - N_{g-1}^-) = 2^g$, and $N_g^+ + N_g^- = 4^g$. $\square$

**Proposition (heat equation for theta).** With the entries $Z_{jk} = Z_{kj}$, $j \le k$, as coordinates on $\mathbb{H}_g$,
$$\frac{\partial^2 \theta[m]}{\partial z_j \partial z_k} = 2\pi i\,(1 + \delta_{jk})\, \frac{\partial \theta[m]}{\partial Z_{jk}}.$$

*Proof.* Differentiate term by term. For $j < k$ the term of $n$ gives $(2\pi i)^2 n'_j n'_k$ on the left and $2\pi i \cdot n'_j n'_k$ on the right, with $n' = n + a$. For $j = k$ the right side gets $\pi i\, n'^2_j$ and the factor $2$. $\square$

The heat equation turns derivatives in $z$ at $z = 0$ into derivatives of theta constants in $Z$. The development reads the Taylor coefficients ("jets") of theta functions at $0$ and at torsion points in this way.

**Example (Jacobi's theta functions).** Let $g = 1$ and $\tau \in \mathbb{H}$. The four half-integral characteristics give $\theta_{00} = \theta\begin{bmatrix} 0 \\ 0 \end{bmatrix}$, $\theta_{01} = \theta\begin{bmatrix} 0 \\ 1/2 \end{bmatrix}$, $\theta_{10} = \theta\begin{bmatrix} 1/2 \\ 0 \end{bmatrix}$ and $\theta_{11} = \theta\begin{bmatrix} 1/2 \\ 1/2 \end{bmatrix}$. The first three are even and $\theta_{11}$ is odd. With $q = e^{\pi i \tau}$,
$$\theta_{00}(\tau) = \sum_{n} q^{n^2}, \quad \theta_{01}(\tau) = \sum_n (-1)^n q^{n^2}, \quad \theta_{10}(\tau) = \sum_n q^{(n + 1/2)^2},$$
and $\theta_{11}(z, \tau) = -2 q^{1/4} \sin(\pi z) + O(q^{9/4})$. The function $\theta(t)$ of [Poisson summation, theta and Mellin](/learn/complex-analysis/#poisson-summation-theta-and-mellin) is $\theta_{00}(it)$.

**Theorem (Jacobi).** Let $\eta(\tau) = e^{\pi i \tau/12} \prod_{n \ge 1}(1 - e^{2\pi i n \tau})$ be the Dedekind eta function. Then:
1. (*triple product*) $\theta_{00}(z, \tau) = \prod_{n \ge 1} (1 - q^{2n})(1 + q^{2n-1} e(z))(1 + q^{2n-1} e(-z))$;
2. (*Jacobi identity*) $\theta_{00}(\tau)^4 = \theta_{01}(\tau)^4 + \theta_{10}(\tau)^4$;
3. (*derivative formula*) $\theta_{11}'(0, \tau) = -\pi\, \theta_{00}(\tau)\, \theta_{01}(\tau)\, \theta_{10}(\tau) = -2\pi\, \eta(\tau)^3$, where $'$ is $\partial/\partial z$.

See Mumford, *Tata Lectures on Theta I*, Chapter I, the sections on the Jacobi identities and the product formula.

The Jacobi derivative formula is the genus one case of the normalization of the key value in the development: a theta section and the Lie basis $(2\pi i)^{-1}\partial_z$ give the value $1$ on the classical theta functions with half-integral characteristic.

## The transformation formula

Let $J = \begin{pmatrix} 0 & 1_g \\ -1_g & 0 \end{pmatrix}$. The *[[symplectic group|X12FS2JAP0]]* $\mathrm{Sp}_{2g}(\mathbb{Z})$ is the group of $\gamma \in \mathrm{GL}_{2g}(\mathbb{Z})$ with $\gamma^T J \gamma = J$. We write $\gamma = \begin{pmatrix} A & B \\ C & D \end{pmatrix}$ with $g \times g$ blocks.

**Proposition.** Let $\gamma \in \mathrm{Sp}_{2g}(\mathbb{R})$ and $Z \in \mathbb{H}_g$. Then $CZ + D$ is invertible, $\gamma Z = (AZ + B)(CZ + D)^{-1}$ lies in $\mathbb{H}_g$, and $Z \mapsto \gamma Z$ is an action of $\mathrm{Sp}_{2g}(\mathbb{R})$ on $\mathbb{H}_g$. The map $\gamma \mapsto \det(CZ+D)$ satisfies the cocycle relation $j(\gamma\gamma', Z) = j(\gamma, \gamma' Z)\, j(\gamma', Z)$ (Klingen, *Introductory Lectures on Siegel Modular Forms*, Part I).

The action of $\gamma$ on $\mathbb{H}_g$ lifts to the family of tori: the map $z \mapsto ((CZ+D)^T)^{-1} z$ is an isomorphism $A_Z \to A_{\gamma Z}$ that respects the principal polarizations. So $\mathrm{Sp}_{2g}(\mathbb{Z}) \backslash \mathbb{H}_g$ is the set of isomorphism classes of principally polarized complex abelian varieties of dimension $g$.

**Theorem (generators).** The group $\mathrm{Sp}_{2g}(\mathbb{Z})$ is generated by $J$ and the translations $\begin{pmatrix} 1 & B \\ 0 & 1 \end{pmatrix}$ with $B$ symmetric integral (Klingen, *Introductory Lectures on Siegel Modular Forms*, Part I).

So a transformation formula for all $\gamma$ follows from the formulas for $J$ and for translations. The case of $J$ is Poisson summation.

**Theorem (inversion formula).** For $z \in \mathbb{C}^g$ and $Z \in \mathbb{H}_g$,
$$\theta(Z^{-1} z, -Z^{-1}) = \det(-iZ)^{1/2} \exp\big(\pi i\, z^T Z^{-1} z\big)\, \theta(z, Z),$$
where $\det(-iZ)^{1/2}$ is the holomorphic branch on $\mathbb{H}_g$ that is positive on $Z = iY$ with $Y$ real.

*Proof.* Let $f(x) = \exp(\pi i\, x^T Z x + 2\pi i\, x^T z)$ for $x \in \mathbb{R}^g$, a Schwartz function. Its Fourier transform is
$$\hat f(\xi) = \int_{\mathbb{R}^g} f(x)\, e(-x^T \xi)\, dx = \det(-iZ)^{-1/2} \exp\big(-\pi i\, (\xi - z)^T Z^{-1} (\xi - z)\big).$$
For $Z = iY$ this is the Gaussian integral $\int \exp(-\pi x^T Y x + 2\pi i\, x^T w)\,dx = (\det Y)^{-1/2}\exp(-\pi w^T Y^{-1} w)$. Both sides are holomorphic in $Z$, and the matrices $iY$ form a totally real submanifold of maximal dimension, so they agree on $\mathbb{H}_g$. The [[Poisson summation formula|GARGJYSGFG]] gives $\theta(z, Z) = \sum_n f(n) = \sum_\xi \hat f(\xi)$, and
$$\sum_{\xi \in \mathbb{Z}^g} \hat f(\xi) = \det(-iZ)^{-1/2} \exp(-\pi i\, z^T Z^{-1} z)\, \theta(Z^{-1}z, -Z^{-1}).$$
$\square$

**Proposition.** Let $B \in M_g(\mathbb{Z})$ be symmetric and $U \in \mathrm{GL}_g(\mathbb{Z})$. Let $\operatorname{diag}(B)$ be the vector of diagonal entries. Then
$$\theta(z, Z + B) = \theta\big(z + \tfrac12 \operatorname{diag}(B), Z\big), \qquad \theta(Uz, U Z U^T) = \theta(z, Z).$$

*Proof.* For the first, $n^T B n \equiv \sum_j B_{jj} n_j^2 \equiv n^T \operatorname{diag}(B) \pmod 2$. For the second, replace $n$ by $U^T n$. $\square$

Let $\Gamma_{1,2}$ be the *theta group*, the set of $\gamma \in \mathrm{Sp}_{2g}(\mathbb{Z})$ such that the diagonals of $AB^T$ and of $CD^T$ are even. It has finite index in $\mathrm{Sp}_{2g}(\mathbb{Z})$ and contains $J$.

**Theorem (theta transformation formula).** For $\gamma \in \Gamma_{1,2}$ there is an eighth root of unity $\kappa(\gamma)$ such that, for all $z$ and $Z$,
$$\begin{aligned} &\theta\big(((CZ+D)^T)^{-1} z,\ \gamma Z\big) \\ &\quad = \kappa(\gamma)\, \det(CZ+D)^{1/2} \exp\big(\pi i\, z^T (CZ+D)^{-1} C z\big)\, \theta(z, Z), \end{aligned}$$
for a fixed choice of the holomorphic square root. See Mumford, *Tata Lectures on Theta I*, Chapter II, the section on $\theta$ as a modular form, and Igusa, *Theta Functions* (Grundlehren 194).

The elements of $\mathrm{Sp}_{2g}(\mathbb{Z})$ outside $\Gamma_{1,2}$ move $\theta$ to theta functions with other half-integral characteristics. In general, $\gamma$ permutes the half-integral characteristics modulo $\mathbb{Z}^{2g}$ by an affine map that preserves parity, with the same factor $\det(CZ+D)^{1/2}\exp(\pi i\, z^T(CZ+D)^{-1}Cz)$ and an eighth root of unity that depends on $\gamma$ and $m$ (Igusa, *Theta Functions*).

**Definition.** Let $\Gamma \subseteq \mathrm{Sp}_{2g}(\mathbb{Z})$ have finite index and let $k \in \mathbb{Z}$. A *Siegel [[modular form|GWKN5VG78A]]* of weight $k$ for $\Gamma$ is a holomorphic function $f$ on $\mathbb{H}_g$ with $f(\gamma Z) = \det(CZ+D)^k f(Z)$ for $\gamma \in \Gamma$, and, if $g = 1$, bounded on $\operatorname{Im} \tau \ge 1$ after each translation by $\mathrm{SL}_2(\mathbb{Z})$. For $g \ge 2$ the growth condition holds by itself (Koecher's principle). A *Siegel modular function* is a quotient of two modular forms of the same weight.

Let $\Gamma_g(4, 8)$ be the group of $\gamma \equiv 1_{2g} \pmod 4$ such that the diagonals of $AB^T$ and $CD^T$ are $\equiv 0 \pmod 8$.

**Theorem (Igusa).** For half-integral $m$ and $n$, the product $\theta[m](Z)\,\theta[n](Z)$ is a Siegel modular form of weight $1$ for $\Gamma_g(4, 8)$ (Igusa, *On the graded ring of theta-constants*, Amer. J. Math. 86 (1964)).

So $\theta[m]^8$ is a modular form of weight $4$, and a quotient $\theta[m]/\theta[n]$ is a modular function of level $\Gamma_g(4, 8)$.

**Example ($g = 1$).** For $\tau \in \mathbb{H}$,
$$\begin{aligned} \theta_{00}(\tau + 1) &= \theta_{01}(\tau), & \theta_{01}(\tau + 1) &= \theta_{00}(\tau), & \theta_{10}(\tau + 1) &= e^{\pi i/4}\theta_{10}(\tau), \\ \theta_{00}(-1/\tau) &= (-i\tau)^{1/2}\theta_{00}(\tau), & \theta_{01}(-1/\tau) &= (-i\tau)^{1/2}\theta_{10}(\tau), & \theta_{10}(-1/\tau) &= (-i\tau)^{1/2}\theta_{01}(\tau). \end{aligned}$$
With the derivative formula this gives $\eta(\tau+1) = e^{\pi i/12}\eta(\tau)$ and $\eta(-1/\tau) = (-i\tau)^{1/2}\eta(\tau)$. For the lattice $L_\tau = \mathbb{Z}\tau + \mathbb{Z}$, the discriminant of [the elliptic curves chapter](/learn/elliptic-curves/) is $\Delta(L_\tau) = (2\pi)^{12}\eta(\tau)^{24}$. The real analytic function $\operatorname{Im}(\tau)^6 |\Delta(L_\tau)|$ is invariant under $\mathrm{SL}_2(\mathbb{Z})$, and its logarithm is the left side of the Chowla-Selberg formula there.

## Theta series of lattices

Let $S \in M_r(\mathbb{Z})$ be symmetric, positive definite and *even*, that is, with even diagonal. It is the Gram matrix of the *even lattice* $L = \mathbb{Z}^r$ with the quadratic form $Q(x) = \tfrac12 x^T S x \in \mathbb{Z}$. The lattice is *unimodular* if $\det S = 1$.

**Definition.** The *theta series of degree $n$* of $S$ is
$$\theta_S^{(n)}(Z) = \sum_{X \in M_{r \times n}(\mathbb{Z})} \exp\big(\pi i \operatorname{tr}(X^T S X\, Z)\big), \qquad Z \in \mathbb{H}_n.$$
Its Fourier expansion is $\sum_T a(T)\, \exp(\pi i \operatorname{tr}(TZ))$, where $a(T)$ is the number of $X$ with $X^T S X = T$, the number of representations of the even matrix $T$ by $S$.

**Theorem.** Let $S$ be even unimodular of rank $r$. Then $8 \mid r$, and $\theta_S^{(n)}$ is a Siegel modular form of weight $r/2$ for $\mathrm{Sp}_{2n}(\mathbb{Z})$.

*Proof.* The congruence $r \equiv 0 \pmod 8$ is a theorem on even unimodular forms (Serre, *A Course in Arithmetic*, Chapter V). By the theorem on generators it suffices to check the translations and $J$. For a symmetric integral $B$, $\operatorname{tr}(X^T S X B)$ is even, because $X^T S X$ has even diagonal. So $\theta_S^{(n)}(Z + B) = \theta_S^{(n)}(Z)$. For $J$ we have $JZ = -Z^{-1}$ and $CZ + D = Z$. Apply Poisson summation on $M_{r \times n}(\mathbb{R})$ to $f(X) = \exp(\pi i \operatorname{tr}(X^T S X Z))$, as in the inversion formula. Since $S$ is unimodular, the dual lattice of $\mathbb{Z}^r$ for $S$ is $\mathbb{Z}^r$, and we get $\theta_S^{(n)}(-Z^{-1}) = \det(-iZ)^{r/2}\theta_S^{(n)}(Z)$. As $8 \mid r$, $\det(-iZ)^{r/2} = (-i)^{nr/2}\det(Z)^{r/2} = \det(Z)^{r/2}$. $\square$

**Example.** The root lattice $E_8$ is even unimodular of rank $8$. Since the modular forms of weight $4$ for $\mathrm{SL}_2(\mathbb{Z})$ are the multiples of the Eisenstein series $E_4$, we get $\theta_{E_8}^{(1)} = E_4 = 1 + 240\sum_{m \ge 1}\sigma_3(m) e^{2\pi i m \tau}$. So $E_8$ has $240\,\sigma_3(m)$ vectors $x$ with $Q(x) = m$.

For lattices that are not unimodular one gets forms of a level, and harmonic polynomials give cusp forms.

**Definition.** A polynomial $P$ on $\mathbb{R}^r$ is *harmonic* for $S$ if $\sum_{i,j}(S^{-1})_{ij}\, \partial_i \partial_j P = 0$. The *level* of $S$ is the least $N \ge 1$ such that $N S^{-1}$ is integral with even diagonal.

**Theorem (Hecke, Schoeneberg).** Let $S$ be even, positive definite, of even rank $r = 2k$ and level $N$. Let $P$ be a homogeneous harmonic polynomial of degree $\nu$. Then
$$\theta_{S, P}(\tau) = \sum_{x \in \mathbb{Z}^r} P(x)\, e(Q(x)\tau)$$
is a modular form of weight $k + \nu$ for $\Gamma_0(N)$ with the character $d \mapsto \big(\tfrac{(-1)^k \det S}{d}\big)$, and a cusp form if $\nu > 0$. See Iwaniec, *Topics in Classical Automorphic Forms*, the chapter on theta functions, and Miyake, *Modular Forms*, the section on theta functions.

**Remark.** In degree $n$, harmonic polynomials are replaced by *pluriharmonic* polynomials $P(X)$ on $M_{r \times n}$, and $\sum_X P(X)\exp(\pi i \operatorname{tr}(X^TSXZ))$ is a modular form whose weight is a representation of $\mathrm{GL}_n$ (Kashiwara and Vergne, *On the Segal-Shale-Weil representations and harmonic polynomials*, Invent. Math. 44 (1978)). The same Poisson argument, with the trace form, works for a positive definite [[Hermitian form|8NJ7XY6F1S]] of rank $m$ over a CM field. The theta series then lives on the Hermitian upper half space of $\mathrm{U}(n, n)$ and has weight $m$, up to a character. In the language of [the Weil representation](/learn/theta/), these series are theta integrals of Gaussian test functions in the Schrödinger model, and the Siegel-Weil formula there computes their genus averages.

The spanning statement of the development (theta series $\theta_P(\Phi)$ with row-highest harmonic $P$ span the bounded holomorphic forms of a given weight on a definite unitary group) is of this kind. The scalars of the iterated theta lifts are inner products of such series.

## Theta functions on complex tori

Let $Z \in \mathbb{H}_g$ and $A_Z = \mathbb{C}^g/\Lambda_Z$ with $\Lambda_Z = Z\mathbb{Z}^g + \mathbb{Z}^g$. By the Appell-Humbert theorem of [the abelian varieties chapter](/learn/abelian-varieties/#complex-tori), a holomorphic line bundle $L$ on a [[complex torus|Y7MA6KBE9M]] $V/\Lambda$ is given by a *factor of automorphy*: a family of nowhere zero holomorphic functions $e_\lambda$ on $V$, $\lambda \in \Lambda$, with $e_{\lambda + \mu}(v) = e_\lambda(v + \mu)\, e_\mu(v)$. Its global sections are the *theta functions* for $e$: entire $f$ with $f(v + \lambda) = e_\lambda(v) f(v)$. The torsion translates of theta functions that the CM sections need are theta functions on a complex torus in this sense.

**Definition.** For $n \ge 1$, let $\mathrm{Th}_n(Z)$ be the space of entire functions $f$ on $\mathbb{C}^g$ with
$$f(z + m) = f(z), \qquad f(z + Zm) = \exp\big(-\pi i n\, m^T Z m - 2\pi i n\, m^T z\big)\, f(z), \qquad m \in \mathbb{Z}^g.$$
By quasi-periodicity, $\theta(\cdot, Z)^n \in \mathrm{Th}_n(Z)$. So $\mathrm{Th}_n(Z) = H^0(A_Z, L^n)$, where $L$ is the principal line bundle of $\theta$.

**Theorem.** The $n^g$ functions $\theta_a(z) = \theta\begin{bmatrix} a/n \\ 0 \end{bmatrix}(nz, nZ)$, $a \in (\mathbb{Z}/n)^g$, form a basis of $\mathrm{Th}_n(Z)$.

*Proof.* Let $f \in \mathrm{Th}_n(Z)$. It is periodic for $\mathbb{Z}^g$, so $f(z) = \sum_{k \in \mathbb{Z}^g} c_k\, e(k^T z)$. Compare the coefficients of $e(k^T z)$ in the second relation: $c_{k + nm} = c_k \exp(\pi i n\, m^T Z m + 2\pi i\, k^T Z m)$. So $f$ is determined by the $c_k$ for $k$ in a set of representatives of $\mathbb{Z}^g/n\mathbb{Z}^g$, and $\dim \mathrm{Th}_n(Z) \le n^g$. On the other side, $\theta_a(z) = \sum_{k \equiv a \pmod n} \exp(\pi i\, k^T Z k/n + 2\pi i\, k^T z)$. These $n^g$ functions lie in $\mathrm{Th}_n(Z)$ by quasi-periodicity, and they are linearly independent because their Fourier coefficients have disjoint supports. $\square$

This agrees with Riemann-Roch on abelian varieties, $h^0(L^n) = n^g$. The theta functions with characteristics $(a/n, 0)$ give coordinates on $A_Z$.

**Theorem (Lefschetz).** For $n \ge 3$ the map $z \mapsto (\theta_a(z))_{a \in (\mathbb{Z}/n)^g}$ is an embedding of $A_Z$ into $\mathbb{P}^{n^g - 1}$. For $n = 2$ it factors through the quotient by $z \mapsto -z$, the *Kummer variety* (Birkenhake and Lange, *Complex Abelian Varieties*, Chapter 4, the section on Lefschetz's theorem).

The $n$-torsion of $A_Z$ acts on $\mathrm{Th}_n(Z)$ by the finite [[Heisenberg group|ZZYCV5EX9J]]. For $b, c \in \mathbb{Z}^g$ put
$$(S_b f)(z) = f(z + b/n), \qquad (T_c f)(z) = \exp\big(\pi i\, c^T Z c/n + 2\pi i\, c^T z\big)\, f(z + Zc/n).$$

**Proposition.** $S_b$ and $T_c$ preserve $\mathrm{Th}_n(Z)$, and $S_b \theta_a = e(a^T b/n)\, \theta_a$, $T_c \theta_a = \theta_{a + c}$. So $S_b T_c = e(c^T b/n)\, T_c S_b$, and $\mathrm{Th}_n(Z)$ is an irreducible representation of the group generated by the $S_b$, $T_c$ and the scalars $\mu_n$.

*Proof.* The formula for $S_b$ is the first quasi-periodicity relation of $\theta[a/n, 0](\cdot, nZ)$. For $T_c$, write $\theta_a(z) = \sum_{k \equiv a} \exp(\pi i\, k^TZk/n + 2\pi i\, k^Tz)$ and use $k^TZk + 2k^TZc = (k+c)^TZ(k+c) - c^TZc$. An operator that commutes with all $S_b$ is diagonal in the basis $\theta_a$; if it commutes with all $T_c$, its diagonal entries are equal. $\square$

This is the Schrödinger model of the representation of [the Stone-von Neumann theorem](/learn/theta/#the-stone-von-neumann-theorem), over the finite group $(\mathbb{Z}/n)^g$.

### Genus one: the sigma function

Let $L \subset \mathbb{C}$ be a lattice with the [[Weierstrass function|361NAK68QK]] $\wp$. The *Weierstrass sigma function* is
$$\sigma(z) = \sigma(z; L) = z \prod_{\omega \in L \setminus 0}\Big(1 - \frac{z}{\omega}\Big)\exp\Big(\frac{z}{\omega} + \frac{z^2}{2\omega^2}\Big).$$
It is entire and odd, with simple zeros exactly at $L$, and $\sigma'(0) = 1$. Let $\zeta = \sigma'/\sigma$, so that $\zeta' = -\wp$. Since $\wp$ is periodic, $\eta(\omega) = \zeta(z + \omega) - \zeta(z)$ does not depend on $z$. It is the *quasi-period* of $\omega$, and $\eta : L \to \mathbb{C}$ is additive.

**Proposition.** Let $\omega_1, \omega_2$ be a basis of $L$ with $\operatorname{Im}(\omega_1/\omega_2) > 0$. Then:
1. $\sigma(z + \omega) = \psi(\omega)\exp\big(\eta(\omega)(z + \omega/2)\big)\sigma(z)$ for $\omega \in L$, with $\psi(\omega) = 1$ if $\omega \in 2L$ and $\psi(\omega) = -1$ otherwise;
2. (*Legendre relation*) $\eta(\omega_2)\omega_1 - \eta(\omega_1)\omega_2 = 2\pi i$;
3. $\wp(x) - \wp(y) = -\sigma(x+y)\sigma(x-y)/(\sigma(x)^2\sigma(y)^2)$.

See Whittaker and Watson, *A Course of Modern Analysis*, Chapter XX. The Legendre relation is the residue theorem for $\zeta$ on the boundary of a fundamental parallelogram.

**Proposition.** For $L_\tau = \mathbb{Z}\tau + \mathbb{Z}$,
$$\sigma(z; L_\tau) = \exp\big(\eta(1) z^2/2\big)\, \frac{\theta_{11}(z, \tau)}{\theta_{11}'(0, \tau)}.$$

*Proof.* Call the right side $f$. By quasi-periodicity, $\theta_{11}(z + 1) = -\theta_{11}(z)$ and $\theta_{11}(z + \tau) = -\exp(-\pi i \tau - 2\pi i z)\theta_{11}(z)$. So $f(z + 1) = -\exp(\eta(1)(z + 1/2)) f(z)$ and $f(z + \tau) = -\exp((\eta(1)\tau - 2\pi i)(z + \tau/2)) f(z)$. By the Legendre relation with $\omega_1 = \tau$, $\omega_2 = 1$, we have $\eta(1)\tau - 2\pi i = \eta(\tau)$. So $f$ and $\sigma$ have the same multipliers. The odd function $\theta_{11}$ vanishes at $0$, and by the argument principle it has one zero in a fundamental parallelogram. So $f/\sigma$ is entire without zeros and periodic, hence constant, and $f'(0) = \sigma'(0) = 1$. $\square$

The quasi-period map $\eta$ extends to an $\mathbb{R}$-linear map $\mathbb{C} \to \mathbb{C}$. By the Legendre relation it has the form
$$\eta(\omega) = s_2(L)\,\omega + \frac{\pi}{a(L)}\,\bar\omega, \qquad a(L) = \operatorname{area}(\mathbb{C}/L),$$
for one number $s_2(L)$. For $L_\tau$ one finds $s_2(L_\tau) = \tfrac{\pi^2}{3} E_2^*(\tau)$, where $E_2^*(\tau) = E_2(\tau) - 3/(\pi \operatorname{Im} \tau)$ is the non-holomorphic Eisenstein series of weight $2$.

**Proposition.** The function $\theta_L(z) = \exp(-s_2(L) z^2/2)\,\sigma(z; L)$ satisfies
$$\theta_L(z + \omega) = \psi(\omega)\exp\Big(\frac{\pi}{a(L)}\bar\omega\big(z + \tfrac{\omega}{2}\big)\Big)\theta_L(z), \qquad \omega \in L.$$
So $\theta_L$ is a theta function for the canonical factor of automorphy of the Riemann form $H(z, w) = z\bar w/a(L)$, and $|\theta_L(z)|\exp(-\pi|z|^2/2a(L))$ is periodic for $L$. Also $\theta_{cL}(cz) = c\,\theta_L(z)$ for $c \in \mathbb{C}^\times$.

*Proof.* Multiply the first relation of the proposition on $\sigma$ by $\exp(-s_2((z+\omega)^2 - z^2)/2) = \exp(-s_2\omega(z + \omega/2))$. For the norm, $\operatorname{Re}\big(\tfrac{\pi}{a}\bar\omega(z + \tfrac{\omega}{2})\big) = \tfrac{\pi}{2a}(|z + \omega|^2 - |z|^2)$. $\square$

The function $\theta_L$ is the "reduced" sigma function. Its multiplier does not depend on the holomorphic quasi-periods, and its norm is the Hermitian metric on $\mathcal{O}(0)$ that [Arakelov geometry](/learn/arakelov/) uses. The constant $s_2$ in the development's even sigma log series $\varphi = \Phi(\lambda) + \tfrac12 s_2\lambda^2$ is this $s_2$. Through the Weierstrass function and sigma function, the sigma log series of [CM divisibility](/proof/cm-divisibility/) is $-\log\theta_L$.

### The cubical structure

**Proposition.** Let $f$ be a theta function on $V/\Lambda$ for a factor of the form $e_\lambda(v) = \exp(2\pi i(\ell_\lambda(v) + c_\lambda))$, with $\ell_\lambda$ complex linear and $c_\lambda \in \mathbb{C}$. Then
$$\Theta(x, y, z) = \frac{f(x + y + z)\, f(x)\, f(y)\, f(z)}{f(x + y)\, f(y + z)\, f(z + x)}$$
is invariant under $\Lambda$ in each variable. So it is a meromorphic function on $(V/\Lambda)^3$.

*Proof.* Replace $x$ by $x + \lambda$. The four factors that contain $x$ change by $e_\lambda(x+y+z)\,e_\lambda(x)/(e_\lambda(x+y)\,e_\lambda(z+x))$. Its logarithm is $2\pi i(\ell_\lambda(x+y+z) + \ell_\lambda(x) - \ell_\lambda(x+y) - \ell_\lambda(x+z))$, which is $0$ by linearity; the constants $c_\lambda$ cancel. The same holds for $y$ and $z$. $\square$

The classical factor and the canonical factor have this form. So $\Theta$, the cubical structure of a theta function $f$, is a meromorphic trivialization of the line bundle of the theorem of the cube in [the abelian varieties chapter](/learn/abelian-varieties/#the-theorem-of-the-cube). For $f = \sigma$, identity (3) above writes the "biextension" quotient $\sigma(x+y)/(\sigma(x)\sigma(y))$ through $\wp$. The development works with $\varphi = -\log$ of a sigma series in a formal parameter. Its statements "cube" and "biadd" are this proposition and the additivity of $\log(\sigma(x+y)/\sigma(x)\sigma(y))$ in each variable up to integral terms.

## The algebraic theory of theta functions

Mumford's algebraic theory replaces the Fourier analysis above by finite group theory, so that theta functions make sense over any field and over a base. Let $k$ be an algebraically closed field, $A$ an [[abelian variety|R7W03TXRS9]] over $k$ and $L$ an [[ample|RRK8P6TXG2]] line bundle on $A$ whose degree $\chi(L)^2$ is prime to the characteristic. Let $K(L)$ be the finite group of $x$ with $t_x^*L \cong L$.

**Definition.** The *theta group* $\mathcal{G}(L)$ is the set of pairs $(x, \varphi)$ with $x \in K(L)$ and $\varphi : L \to t_x^*L$ an isomorphism, with the product $(x, \varphi)(y, \psi) = (x + y, t_y^*\varphi \circ \psi)$. It is a central extension
$$1 \to k^\times \to \mathcal{G}(L) \to K(L) \to 0.$$
The commutator $e^L(x, y) = \tilde x \tilde y \tilde x^{-1}\tilde y^{-1} \in k^\times$ of lifts is a nondegenerate alternating pairing on $K(L)$.

**Definition.** Let $\delta = (d_1, \dots, d_g)$ with $d_1 \mid d_2 \mid \dots \mid d_g$, $K(\delta) = \bigoplus_i \mathbb{Z}/d_i$ and $\widehat{K}(\delta)$ its character group. The *Heisenberg group* $\mathcal{H}(\delta)$ is $k^\times \times K(\delta) \times \widehat{K}(\delta)$ with the product
$$(\alpha, x, l)(\beta, y, m) = (\alpha\beta\, m(x),\ x + y,\ l + m).$$
It acts on the space $V(\delta)$ of functions $K(\delta) \to k$ by $(U_{(\alpha, x, l)}f)(t) = \alpha\, l(t)\, f(x + t)$.

**Theorem (Mumford).** (1) $V(\delta)$ is the unique irreducible representation of $\mathcal{H}(\delta)$ on which $k^\times$ acts by scalars, up to isomorphism. (2) If $K(L) \cong K(\delta) \oplus \widehat{K}(\delta)$, there is an isomorphism $\mathcal{G}(L) \cong \mathcal{H}(\delta)$ that is the identity on $k^\times$, and $H^0(A, L)$ with its natural action of $\mathcal{G}(L)$ is isomorphic to $V(\delta)$. See Mumford, *On the equations defining abelian varieties I*, Invent. Math. 1 (1966).

**Definition.** A *theta structure* on $(A, L)$ is an isomorphism $\mathcal{G}(L) \to \mathcal{H}(\delta)$ that is the identity on $k^\times$. By part (1), a theta structure fixes an isomorphism $H^0(A, L) \cong V(\delta)$ up to a scalar. The images of the delta functions $\delta_x$, $x \in K(\delta)$, are the *algebraic theta functions* of the theta structure, and their values at $0$ form the *theta null point* in $\mathbb{P}(V(\delta))$.

Over $\mathbb{C}$, with $L^n$ on $A_Z$ and $\delta = (n, \dots, n)$, the operators $S_b$, $T_c$ of the last section give a theta structure, and the algebraic theta functions are the $\theta_a$. Mumford uses theta null points to write down projective equations for the moduli of abelian varieties with a theta structure when $4 \mid \delta$ (*On the equations defining abelian varieties*, parts II and III).

### Theta functions over a base

Let $\pi : A \to S$ be an [[abelian scheme|JDDXZ89N33]] of relative dimension $g$ with zero section $e$. Let $\omega_{A/S} = \det e^*\Omega^1_{A/S}$, a line bundle on $S$; its dual is $\det \operatorname{Lie}(A/S)$. A line bundle $L$ on $A$ is *rigidified* if an isomorphism $e^*L \cong \mathcal{O}_S$ is given, and *symmetric* if $[-1]^*L \cong L$. If $L$ is relatively ample, $\pi_*L$ is locally free of rank $\chi(L_s)$, and its formation commutes with base change (Mumford, *Abelian Varieties*, Chapter III, the vanishing theorem).

**Theorem (key formula, principal case).** Let $L$ be a symmetric rigidified line bundle on $A/S$ such that $\varphi_L$ is a principal polarization. Then $\pi_*L$ is a line bundle, and there is an isomorphism of line bundles on $S$
$$(\pi_*L)^{\otimes 8} \cong \omega_{A/S}^{\otimes -4},$$
compatible with base change. See Moret-Bailly, *Pinceaux de variétés abéliennes*, Astérisque 129 (1985), the chapter on the key formula.

Over $\mathbb{H}_g$, the section $\theta(\cdot, Z)$ of $\pi_*L$ and the Lie basis $(2\pi i)^{-1}\partial_{z_1}, \dots, (2\pi i)^{-1}\partial_{z_g}$ trivialize both sides, and the weights match the theorem of Igusa: the theta constant is a section of $(\pi_*L)^{-1} \cong \omega^{1/2}$, of weight $1/2$. The development's *key rule* $\kappa$ is the ratio of the two sides in given trivializations. Its homogeneity law $a^8\kappa(a\theta, Mv) = (\det M)^4\kappa(\theta, v)$ is the exponent pair $(8, -4)$ of the key formula. Since an isomorphism of line bundles over $\operatorname{Spec} R$ is a unit of $R$, the key value is a unit over each base where the formula holds.

### Modular forms as rules

Fix $n \ge 3$ and the Siegel moduli scheme $\mathcal{A}_{g,n}$ over $\Lambda_n = \mathbb{Z}[\zeta_n, 1/n]$ of [the abelian varieties chapter](/learn/abelian-varieties/#siegel-moduli-schemes-and-level-structures), with universal abelian scheme $\mathcal{X}$ and $\omega = \omega_{\mathcal{X}/\mathcal{A}_{g,n}}$.

**Definition.** Let $R$ be a $\Lambda_n$-algebra. A *modular form of weight $k$ and level $n$ over $R$* is a global section of $\omega^{\otimes k}$ over $\mathcal{A}_{g,n} \otimes R$ (for $g = 1$, also over the cusps). Equivalently, it is a rule $f$ that assigns to each $R$-algebra $R'$, each triple $(A, \lambda, \eta)$ over $R'$ and each basis $\omega_1, \dots, \omega_g$ of $e^*\Omega^1_{A/R'}$ an element $f(A, \lambda, \eta, \omega) \in R'$. The rule depends only on the isomorphism class, commutes with base change, and satisfies $f(A, \lambda, \eta, M\omega) = \det(M)^{-k} f(A, \lambda, \eta, \omega)$ for $M \in \mathrm{GL}_g(R')$.

Over $\mathbb{C}$, $f(Z) = f(A_Z, \lambda_Z, \eta_Z, 2\pi i\, dz)$ is a Siegel modular form of weight $k$ for the principal congruence subgroup $\Gamma(n)$, in the sense of the last section: the isomorphism $A_Z \to A_{\gamma Z}$ pulls $dz$ back to $((CZ+D)^T)^{-1}dz$. The factor $2\pi i$ makes the basis $2\pi i\,dz$ correspond to the canonical differentials $du_j/u_j$, $u_j = e(z_j)$, of the degenerating family at the cusp, so that Fourier coefficients and algebraic values match.

**Theorem (q-expansion principle).** Let $f$ be a Siegel modular form of weight $k$ for $\Gamma(n)$ over $\mathbb{C}$, $n \ge 3$, and $R \subseteq \mathbb{C}$ a subring that contains $\Lambda_n$. If the Fourier coefficients of $f$ at the standard cusp lie in $R$, then $f$ is a modular form over $R$ in the sense of the definition (Faltings and Chai, *Degeneration of Abelian Varieties*, Chapter V, the section on the q-expansion principle).

**Proposition (integrality of values).** Let $f$ be a modular form of weight $k$ and level $n \ge 3$ over $\Lambda_n$. Let $R$ be a $\Lambda_n$-algebra, $(A, \lambda, \eta)$ a triple over $R$, and $\omega$ a basis of $e^*\Omega^1_{A/R}$. Then $f(A, \lambda, \eta, \omega) \in R$.

*Proof.* The triple is the pullback of the universal triple by a morphism $\operatorname{Spec} R \to \mathcal{A}_{g,n}$, and $\omega$ trivializes the pullback of $\omega^{\otimes k}$. The value of $f$ is the pullback of the section $f$ in this trivialization, an element of $R$. $\square$

So the analytic statement "the Fourier coefficients are integral" becomes "the values on abelian schemes over integral rings are integral". This is the step from Fourier coefficients to values at CM points in the last section.

**Remark.** Near the boundary, Mumford's construction of [semi-abelian degenerations](/learn/abelian-varieties/#semi-abelian-degenerations-and-mumfords-construction) writes theta functions of a degenerating family as Fourier series over the character group $X$ of the torus part, with exponents given by a quadratic form on $X$. The development's statement `Arch` reads the key value of a degenerating family from the jets of these series near the boundary.

## Abelian varieties with complex multiplication

Let $E$ be a CM field of degree $2g$ with a CM type $\Phi$, as in [kinds of number fields](/learn/number-fields/#kinds-of-number-fields). Write $\bar x$ for the complex conjugation of $E$.

**Definition.** An abelian variety $A$ of dimension $g$ over a field $k$ has *[[complex multiplication|D3HEJTVY7G]] by $E$* if an injective ring map $i : E \to \mathrm{End}^0(A) = \mathrm{End}(A) \otimes \mathbb{Q}$ is given. If $k = \mathbb{C}$, $E$ acts on the $g$-dimensional space $\operatorname{Lie}(A)$, and this action is the sum of $g$ distinct embeddings $\Phi$. Then $\Phi$ is a CM type, and $(A, i)$ is of *CM type* $(E, \Phi)$.

**Example.** Let $\Phi : E \to \mathbb{C}^\Phi = \mathbb{C}^g$ be $x \mapsto (\varphi(x))_{\varphi \in \Phi}$. Then $E \otimes_{\mathbb{Q}} \mathbb{R} \to \mathbb{C}^g$ is an isomorphism of real vector spaces, so for each lattice $\mathfrak{a} \subset E$ (a finitely generated subgroup of rank $2g$), $\Phi(\mathfrak{a})$ is a lattice in $\mathbb{C}^g$. The torus $\mathbb{C}^g/\Phi(\mathfrak{a})$ has the action of $\mathcal{O}(\mathfrak{a}) = \{x \in E : x\mathfrak{a} \subseteq \mathfrak{a}\}$ by coordinatewise multiplication. If $\mathfrak{a}$ is a [[fractional ideal|YB4JTB4WJN]], then $\mathcal{O}(\mathfrak{a})$ is the [[ring of integers|0BXA4Q0JHW]] $\mathcal{O}_E$.

**Proposition (Riemann forms).** Let $\xi \in E^\times$ with $\bar\xi = -\xi$ and $\operatorname{Im}\varphi(\xi) > 0$ for each $\varphi \in \Phi$. Then $E_\xi(x, y) = \operatorname{Tr}_{E/\mathbb{Q}}(\xi\, \bar x\, y)$ extends to a Riemann form on $\mathbb{C}^g/\Phi(\mathfrak{a})$, after $\xi$ is multiplied by a positive integer so that $E_\xi(\mathfrak{a}, \mathfrak{a}) \subseteq \mathbb{Z}$. Such $\xi$ exist. So $\mathbb{C}^g/\Phi(\mathfrak{a})$ is an abelian variety of CM type $(E, \Phi)$.

*Proof.* Since $\operatorname{Tr}$ is invariant under conjugation, $E_\xi(y, x) = \operatorname{Tr}(\overline{\xi\bar y x}) = \operatorname{Tr}(-\xi \bar x y) = -E_\xi(x, y)$. On $\mathbb{C}^g$, $E_\xi(v, w) = \sum_{\varphi \in \Phi} 2\operatorname{Re}(\varphi(\xi)\bar v_\varphi w_\varphi)$, so $E_\xi(iv, v) = \sum_\varphi 2\operatorname{Im}(\varphi(\xi))|v_\varphi|^2 > 0$ for $v \ne 0$, and $E_\xi(iv, iw) = E_\xi(v, w)$. For existence, take $\xi_0 \in E$ with $\bar\xi_0 = -\xi_0$ (for example $\xi_0 = x - \bar x$ with $x \notin E^+$). By weak approximation in $E^+$ there is $u \in E^+$ with $\varphi(u)\operatorname{Im}\varphi(\xi_0) > 0$ for each $\varphi \in \Phi$; take $\xi = u\xi_0$. $\square$

**Theorem.** Let $(A, i)$ be an abelian variety over $\mathbb{C}$ of CM type $(E, \Phi)$. There is a lattice $\mathfrak{a} \subset E$ and an analytic isomorphism $\mathbb{C}^g/\Phi(\mathfrak{a}) \to A(\mathbb{C})$ that is $E$-linear. If $i(\mathcal{O}_E) \subseteq \mathrm{End}(A)$, then $\mathfrak{a}$ can be taken to be a fractional ideal. The abelian variety $A$ is simple if and only if $\Phi$ is *primitive*, that is, not induced from a CM subfield of $E$. See Shimura, *Abelian Varieties with Complex Multiplication and Modular Functions*, the chapters on abelian varieties with complex multiplication.

*Proof of the first claim.* Write $A(\mathbb{C}) = V/\Lambda$. Then $\Lambda \otimes \mathbb{Q}$ is an $E$-vector space of dimension $1$, because its $\mathbb{Q}$-dimension is $2g = [E : \mathbb{Q}]$. Choose a generator $\lambda_0$. Then $\Lambda = \mathfrak{a}\lambda_0$ for a lattice $\mathfrak{a} \subset E$, and $V = \Lambda \otimes \mathbb{R} = E \otimes \mathbb{R}\cdot\lambda_0$. The complex structure on $V$ is the one for which $E$ acts on $\operatorname{Lie} A$ through $\Phi$, so $x\lambda_0 \mapsto \Phi(x)$ is a $\mathbb{C}$-linear isomorphism $V \to \mathbb{C}^g$. $\square$

**Example.** (1) $g = 1$: $E = K$ is imaginary quadratic, $\Phi = \{\mathrm{id}\}$, and we get the curves $\mathbb{C}/\mathfrak{a}$ of [complex multiplication](/learn/elliptic-curves/#complex-multiplication). (2) Let $E = \mathbb{Q}(\zeta_5)$ and identify the embeddings with $(\mathbb{Z}/5)^\times$ by $\zeta_5 \mapsto \zeta_5^a$. The Jacobian of the genus two curve $y^2 = x^5 + 1$ has CM by $E$: the automorphism $(x, y) \mapsto (\zeta_5 x, y)$ multiplies $dx/y$ by $\zeta_5$ and $x\,dx/y$ by $\zeta_5^2$. So its CM type is $\Phi = \{1, 2\}$, which is primitive.

**Definition (reflex field and reflex norm).** The *reflex field* $E^*$ of $(E, \Phi)$ is the subfield of $\mathbb{C}$ generated by the numbers $\sum_{\varphi \in \Phi}\varphi(x)$, $x \in E$. It is the fixed field of the $\sigma \in \mathrm{Aut}(\mathbb{C})$ with $\sigma\Phi = \Phi$, and it is a CM field. The representation of $E$ on $\mathbb{C}^\Phi$ is defined over $E^*$: there is an $E \otimes_{\mathbb{Q}} E^*$-module $W$, free of rank $g$ over $E^*$, with $W \otimes_{E^*}\mathbb{C} \cong \mathbb{C}^\Phi$ as $E \otimes \mathbb{C}$-modules. The *reflex norm* is
$$N_{\Phi^*} : E^{*\times} \to E^\times, \qquad N_{\Phi^*}(a) = \det\nolimits_E(a \mid W).$$
It extends to ideles $\mathbb{A}_{E^*}^\times \to \mathbb{A}_E^\times$ and to ideals.

**Example.** For $g = 1$, $E^* = K$ and $N_{\Phi^*}(a) = a$. For $E = \mathbb{Q}(\zeta_5)$ and $\Phi = \{1, 2\}$, $E^* = E$ with the reflex type $\{1, 3\}$, and $N_{\Phi^*}(a) = a\,\sigma_3(a)$, with $\sigma_3(\zeta_5) = \zeta_5^3$.

**Theorem (Shimura and Taniyama).** Let $(A, i)$ be of CM type $(E, \Phi)$ over $\mathbb{C}$.
1. $A$ and $i$ have a model over a number field.
2. Let $A$ be defined over a number field $F \supseteq E^*$ with $i(\mathcal{O}_E) \subseteq \mathrm{End}_F(A)$. Let $\mathfrak{P}$ be a prime of $F$ where $A$ has good reduction, with norm $q$. There is $\pi_{\mathfrak{P}} \in \mathcal{O}_E$ such that $i(\pi_{\mathfrak{P}})$ reduces to the $q$-th power Frobenius endomorphism of the reduction, and
$$\pi_{\mathfrak{P}}\mathcal{O}_E = N_{\Phi^*}\big(N_{F/E^*}\mathfrak{P}\big).$$
This is the *Shimura-Taniyama formula*. See Shimura, *Abelian Varieties with Complex Multiplication and Modular Functions*, and Milne, *Complex Multiplication* (lecture notes), the chapters on the reduction of CM abelian varieties.

By the theorem of Serre and Tate in [Néron models and good reduction](/learn/abelian-varieties/#neron-models-and-good-reduction), $A$ has potentially good reduction at each finite place. So after a finite extension of $F$, the theorem applies at every prime.

**Theorem (the Hecke character).** In the situation of part (2), there is an algebraic [[Hecke character|KPYFGB342X]] $\psi$ of $F$ with values in $E$ such that $\psi(\mathfrak{P}) = \pi_{\mathfrak{P}}$ at the primes of good reduction, with infinity type given by $N_{\Phi^*} \circ N_{F/E^*}$. The $L$-function of $H^1(A)$ is $\prod_{\tau : E \to \mathbb{C}} L(s, \tau \circ \psi)$. For $g = 1$ and $F \supseteq K$ this is Deuring's theorem $L(E/F, s) = L(s, \psi)L(s, \bar\psi)$ (Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter II, the sections on the associated Grössencharacter and on the $L$-series of a CM elliptic curve).

So the $L$-functions of CM abelian varieties are Hecke $L$-functions of [class field theory](/learn/class-field-theory/#infinity-type-and-algebraic-characters), with a functional equation and analytic continuation from Tate's thesis.

## The main theorem of complex multiplication

The main theorem describes how $\mathrm{Aut}(\mathbb{C}/E^*)$ moves a CM abelian variety and its torsion points. Let $\mathrm{art}_{E^*} : \mathbb{A}_{E^*}^\times \to \mathrm{Gal}(E^{*\mathrm{ab}}/E^*)$ be the Artin map of [[Artin reciprocity|7938EKMMVR]]. For $s \in \mathbb{A}_{E,f}^\times$ and a lattice $\mathfrak{a} \subset E$, let $s\mathfrak{a}$ be the lattice with $(s\mathfrak{a})_\ell = s_\ell\mathfrak{a}_\ell$ for each prime $\ell$. Multiplication by $s$ is an isomorphism $E/\mathfrak{a} = \bigoplus_\ell E_\ell/\mathfrak{a}_\ell \to E/s\mathfrak{a}$.

**Theorem (main theorem of complex multiplication; Shimura and Taniyama).** Let $(A, i)$ be of CM type $(E, \Phi)$ over $\mathbb{C}$, and let $f : \mathbb{C}^g/\Phi(\mathfrak{a}) \to A(\mathbb{C})$ be an $E$-linear analytic isomorphism. Let $\sigma \in \mathrm{Aut}(\mathbb{C}/E^*)$ and $s \in \mathbb{A}_{E^*, f}^\times$ with $\mathrm{art}_{E^*}(s) = \sigma|_{E^{*\mathrm{ab}}}$. Then there is a unique $E$-linear analytic isomorphism
$$f' : \mathbb{C}^g/\Phi\big(N_{\Phi^*}(s)^{-1}\mathfrak{a}\big) \to A^\sigma(\mathbb{C})$$
such that $f(x)^\sigma = f'(N_{\Phi^*}(s)^{-1}x)$ for each $x \in E/\mathfrak{a}$. A complement describes the polarization of $A^\sigma$: its Riemann form is $E_\xi$ multiplied by a positive rational number determined by $s$. See Shimura, *Abelian Varieties with Complex Multiplication and Modular Functions*, the chapter on the main theorem, and Milne, *Complex Multiplication*, the chapter on the main theorem.

For $g = 1$ this is the theorem stated in [complex multiplication](/learn/elliptic-curves/#complex-multiplication), because $N_{\Phi^*}(s) = s$. It is the field `EllipticMainTheoremCM` of [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/).

**Corollary.** Let $(A, i)$ be as above, with $i(\mathcal{O}_E) \subseteq \mathrm{End}(A)$.
1. The isomorphism class of $(A, i)$ is fixed by $\sigma \in \mathrm{Aut}(\mathbb{C}/E^*)$ if and only if the ideal $N_{\Phi^*}(s)\mathcal{O}_E$ is principal, for $s$ as in the theorem. For the polarized triple one needs in addition a generator $\mu$ with $\mu\bar\mu$ equal to the rational number of the complement. So the field of moduli of $(A, i)$ is an abelian extension of $E^*$, a class field for the reflex norm.
2. The coordinates of the torsion points of $A$ (on a model over the field of moduli), together with the field of moduli, generate an abelian extension of $E^*$.

*Proof of the first claim.* By the theorem, $A^\sigma \cong \mathbb{C}^g/\Phi(N_{\Phi^*}(s)^{-1}\mathfrak{a})$, and two such tori are $E$-isomorphic if and only if the lattices differ by a factor in $E^\times$. For $\mathfrak{a}$ a fractional ideal, $N_{\Phi^*}(s)^{-1}\mathfrak{a} = \mu\mathfrak{a}$ means that $N_{\Phi^*}(s)\mathcal{O}_E$ is principal. $\square$

**Example ($g = 1$).** For $E = K$ imaginary quadratic and $\mathfrak{a} = \mathcal{O}_K$, the corollary says that $K(j(\mathcal{O}_K))$ is the [[Hilbert class field|WWCJ7CR2R3]] of $K$, and that $K^{\mathrm{ab}}$ is generated over $K(j)$ by the values of a Weber function at the torsion points (Silverman, *Advanced Topics*, Chapter II, the sections on the Hilbert class field and on the maximal abelian extension). For $g > 1$, $E^{*\mathrm{ab}}$ is in general larger than the field generated by the CM points of $(E, \Phi)$.

The values of modular functions at CM points obey the same law. Let $Z \in \mathbb{H}_g$ be a *CM point*: $A_Z$ has CM by a field $E$ of degree $2g$ with CM type $\Phi$.

**Theorem (Shimura reciprocity).** Let $f$ be a Siegel [[modular function|63TX60RTRQ]] of some level whose Fourier coefficients lie in $\mathbb{Q}^{\mathrm{ab}}$, finite at the CM point $Z$. Then $f(Z) \in E^{*\mathrm{ab}}$. The action of $\mathrm{art}_{E^*}(s)$ on $f(Z)$ is given by the action on $f$ of an element of $\mathrm{GSp}_{2g}(\mathbb{A}_{\mathbb{Q},f})$ built from $N_{\Phi^*}(s)$ and the embedding of $E^\times$ into $\mathrm{GSp}_{2g}$ defined by $Z$. See Shimura, *Abelian Varieties with Complex Multiplication and Modular Functions*, the chapter on modular functions and CM points, and, for $g = 1$, Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Theorem 6.31.

For example, the quotients $\theta[m](Z)/\theta[n](Z)$ of theta constants at a CM point lie in an abelian extension of $E^*$, and Galois conjugates of such quotients are quotients of theta constants at other CM points of the same type. The development's statements on the rationality of theta translates at CM points (`gal`, `galEx`) and on twisted theta series (`SeriesRatS`, from global Artin reciprocity) use this mechanism.

## Algebraicity and integrality of CM values

The values of modular forms at a CM point are transcendental, but the transcendence is in one period. Let $Z$ be a CM point. By the theorem of Shimura and Taniyama, $A_Z$ is isomorphic to $A \otimes \mathbb{C}$ for an abelian variety $A$ over a number field $F \subset \mathbb{C}$, with the polarization and a level $n$ structure defined over $F$ (enlarge $F$). Let $\omega = (\omega_1, \dots, \omega_g)$ be a basis of $H^0(A, \Omega^1)$ over $F$. The isomorphism $A_Z \cong A \otimes \mathbb{C}$ gives $dz = M\omega$ for a matrix $M = M(Z, \omega) \in \mathrm{GL}_g(\mathbb{C})$, a matrix of inverse periods.

**Proposition (algebraicity of CM values).** Let $f$ be a Siegel modular form of weight $k$ for $\Gamma(n)$ with Fourier coefficients in $\overline{\mathbb{Q}}$. Then $\det(2\pi i M)^k f(Z) \in \overline{\mathbb{Q}}$. More precisely, if the coefficients lie in a field $F_0$ that contains $\zeta_n$, then $\det(2\pi i M)^k f(Z) \in F_0 F$.

*Proof.* By the q-expansion principle, $f$ is a modular form over $F_0$. So $f(A, \lambda, \eta, \omega) \in F_0F$, because the data are defined over $F$. By the homogeneity of the rule, $f(Z) = f(A_Z, \lambda_Z, \eta_Z, 2\pi i\,dz) = f(A, \lambda, \eta, 2\pi i M\omega) = \det(2\pi i M)^{-k}f(A, \lambda, \eta, \omega)$. $\square$

For $g = 1$ and $K$ imaginary quadratic, $\det M = 1/\Omega$ for a period $\Omega$ of an algebraic differential, and the proposition says $f(\tau) \in (\Omega/2\pi i)^k\,\overline{\mathbb{Q}}$. The Chowla-Selberg formula of [the elliptic curves chapter](/learn/elliptic-curves/#the-chowla-selberg-formula) computes $\Omega$ up to algebraic factors as a product of values of $\Gamma$ at rationals with denominator $d$.

**Example.** At $\tau = i$ one has $\theta_{00}(i) = \pi^{1/4}/\Gamma(3/4)$, so $\theta_{00}(i)^2 = \Gamma(1/4)^2/(2\pi^{3/2})$ by $\Gamma(1/4)\Gamma(3/4) = \pi\sqrt 2$. The curve $y^2 = x^3 - x$ has CM by $\mathbb{Z}[i]$ and the real period $2\int_1^\infty dx/\sqrt{x^3 - x} = \Gamma(1/4)^2/\sqrt{2\pi}$. So $2\pi\,\theta_{00}(i)^2/\Omega = \sqrt 2$ for this period $\Omega$. The value of weight $1$ is an algebraic multiple of $\Omega/2\pi$, as the proposition predicts.

The same holds for the non-holomorphic constant $s_2$ of the reduced sigma function. This is the reason the development normalizes its theta functions by $s_2$ and not by the quasi-period $\eta$.

**Theorem (Masser).** Let $L$ be a lattice with complex multiplication and $g_2(L), g_3(L) \in \overline{\mathbb{Q}}$. Then $s_2(L) \in \overline{\mathbb{Q}}$. Equivalently, if $L = \Omega L_\tau$, then $E_2^*(\tau) = \tfrac{3}{\pi^2}\Omega^2 s_2(L)$ lies in $(\Omega/\pi)^2\,\overline{\mathbb{Q}}$ (Masser, *Elliptic Functions and Transcendence*, Lecture Notes in Math. 437 (1975)).

**Proposition.** Let $L$ be as in Masser's theorem. Then the Taylor coefficients at $0$ of $\log(\theta_L(z)/z)$ are algebraic. Precisely,
$$\log\frac{\theta_L(z)}{z} = -\frac{s_2(L)}{2}z^2 - \sum_{k \ge 2}\frac{G_{2k}(L)}{2k}z^{2k}, \qquad G_{2k}(L) = \sum_{\omega \in L \setminus 0}\omega^{-2k},$$
and each $G_{2k}(L)$ is a polynomial in $g_2(L)$ and $g_3(L)$ with rational coefficients.

*Proof.* Expand $\frac{1}{z - \omega} + \frac1\omega + \frac{z}{\omega^2} = -\sum_{m \ge 2} z^m\omega^{-m-1}$ and sum over $\omega$; the terms with $m$ even cancel in pairs $\pm\omega$. This gives $\zeta(z) = \frac1z - \sum_{k \ge 2}G_{2k}z^{2k-1}$. Integrate and add $-s_2z^2/2$. The recursion for the Laurent coefficients of $\wp$ writes $G_{2k}$ as a polynomial in $G_4 = g_2/60$ and $G_6 = g_3/140$ (Silverman, *The Arithmetic of Elliptic Curves*, Chapter VI). $\square$

So Masser's theorem, the algebraicity of s2 (that is, of $s_2(L)$), makes the Taylor coefficients of the reduced sigma function algebraic, and the sigma log series of the development has algebraic coefficients.

At a torsion point $z_0 \notin L$, $Nz_0 \in L$, the translated functions $\theta_L(z + z_0)/\theta_L(z_0)$ have algebraic Taylor coefficients in the variable $z$ as well: the logarithmic derivative of $\theta_L$ is $\zeta(z) - s_2 z$, and $\zeta(z + z_0) - \zeta(z) - \zeta(z_0)$ is an elliptic function, a rational function of $\wp(z), \wp'(z)$ with coefficients algebraic over $\mathbb{Q}(g_2, g_3, \wp(z_0), \wp'(z_0))$. The development's `AlgT` (algebraic Taylor coefficients of torsion translates) is of this kind.

### Integrality

Algebraicity gives the numbers. Integrality at a prime comes from good reduction and the integral theory of the last sections.

**Proposition.** Let $f$ be a modular form of weight $k$ and level $n \ge 3$ over $\Lambda_n$. Let $Z$ be a CM point, $A$ a model of $A_Z$ over a number field $F$ with the polarization and level structure, and $v$ a finite place of $F$ not above $n$. After a finite extension of $F$, $A$ has good reduction at $v$, and $A$ extends to an abelian scheme $\mathcal{A}$ over the valuation ring $\mathcal{O}_v$. If $\omega$ is a basis of $e^*\Omega^1_{\mathcal{A}/\mathcal{O}_v}$, then $\det(2\pi i\,M(Z, \omega))^k f(Z) \in \mathcal{O}_v$.

*Proof.* Good reduction after a finite extension is the theorem of Serre and Tate. The polarization and the level structure extend to $\mathcal{A}$, the first by the extension property of the Néron model and the second because $A[n]$ is finite étale over $\mathcal{O}_v$ when $v \nmid n$. Apply the proposition on integrality of values with $R = \mathcal{O}_v$, and the homogeneity of the rule as in the algebraicity proof. $\square$

So, for a CM point, the numbers $\det(2\pi i M)^kf(Z)$ with $\omega$ a basis of the Néron differentials are algebraic integers away from the level. The key formula sharpens this for theta constants: it identifies $\theta^{\otimes 8}$ with a generator of $\omega^{\otimes 4}$ over the base, so the normalized eighth power of a theta constant is a unit where the formula applies, not only an integer. This is the form `Rule4` of the development uses.

For elliptic curves the integrality of torsion values is elementary.

**Theorem.** Let $R$ be a discrete valuation ring of characteristic $0$ with valuation $v$ and residue characteristic $p$. Let $E$ be an elliptic curve over the fraction field of $R$, given by a Weierstrass equation with coefficients in $R$, and let $P \in E$ be a point of exact order $m \ge 2$.
1. If $m$ is not a power of $p$, then $x(P), y(P) \in R$.
2. If $m = p^r$, then $\pi^{2t}x(P), \pi^{3t}y(P) \in R$, where $\pi$ is a uniformizer and $t = \lfloor v(p)/(p^r - p^{r-1})\rfloor$.

See Silverman, *The Arithmetic of Elliptic Curves*, Theorem VII.3.4. The proof uses the [formal group](/learn/formal-groups/) of $E$: a torsion point of order prime to $p$ cannot lie in the formal group.

For a CM lattice $L$ and a field isomorphism $\iota : \mathbb{C} \to \mathbb{C}_\ell$, choose $\lambda$ so that $\lambda^4\iota g_2(L)$ and $\lambda^6\iota g_3(L)$ are the coefficients of a model with good reduction. Then $\lambda^2\iota\wp(z)$ and $\lambda^3\iota\wp'(z)$ are integral at each torsion point $z$ of order prime to $\ell$. This is the development's statement on CM torsion points, and with the good reduction statement `CM2` it gives the integrality of torsion translates of theta functions.

**Remark (elliptic units).** Let $\Theta(z; L) = \Delta(L)\exp(-6\eta(z, L)z)\sigma(z; L)^{12}$, where $\eta(z, L)$ is the $\mathbb{R}$-linear extension of the quasi-period map. It depends only on $z$ modulo $L$ and is homogeneous of degree $0$. For $L$ a lattice with CM by $\mathcal{O}_K$ and $z$ a torsion point, $\Theta(z; L)$ is algebraic, and it is a unit when the annihilator of $z$ in $\mathcal{O}_K$ is divisible by two distinct primes. These *elliptic units* (Siegel, Ramachandra, Robert) are the CM analogue of cyclotomic units; see de Shalit, *Iwasawa Theory of Elliptic Curves with Complex Multiplication*, the chapter on elliptic units.

**Remark (p-adic sigma functions).** Let $E$ have good ordinary reduction over a complete discrete valuation ring $R$ of residue characteristic $p$. Mazur and Tate show that there is a unique odd function $\sigma = t + \dots$ in the formal parameter $t$ with $x = -\frac{d^2}{dz^2}\log\sigma + c$ for a constant $c$ and with coefficients in $R$ (Mazur and Tate, *The p-adic sigma function*, Duke Math. J. 62 (1991)). The constant $c$ plays the role of $s_2$. At the primes $2$ and at primes inert in $K$, where the reduction is supersingular, the development proves integrality of its sigma and theta series directly from the formal group law and the cube relation.

## Notes and references

- D. Mumford, *Tata Lectures on Theta I*, Birkhäuser. Chapter I for Jacobi's theta functions, the functional equation, the Jacobi identities, the product formula and the derivative formula. Chapter II for theta functions in $g$ variables, the symplectic group and $\theta$ as a modular form. Read these two chapters first.
- D. Mumford, *Tata Lectures on Theta III*, Birkhäuser, for the Heisenberg group and the algebraic theory in the language of representations.
- D. Mumford, *On the equations defining abelian varieties I, II, III*, Invent. Math. 1 (1966) and 3 (1967). Theta groups, theta structures and theta null points.
- J.-I. Igusa, *Theta Functions*, Grundlehren 194, Springer 1972, for the general transformation formula with characteristics; and *On the graded ring of theta-constants*, Amer. J. Math. 86 (1964), for the modularity of $\theta[m]\theta[n]$ on $\Gamma_g(4, 8)$.
- C. Birkenhake and H. Lange, *Complex Abelian Varieties*, Springer. Chapter 3 for factors of automorphy and classical and canonical theta functions, Chapter 4 for Lefschetz's theorem, Chapter 8 for the Siegel upper half space and the theta transformation formula.
- H. Klingen, *Introductory Lectures on Siegel Modular Forms*, Cambridge 1990, for the symplectic group, its generators and Siegel modular forms.
- E. T. Whittaker and G. N. Watson, *A Course of Modern Analysis*, Chapters XX (Weierstrass functions, $\sigma$ and the Legendre relation) and XXI (theta functions).
- H. Iwaniec, *Topics in Classical Automorphic Forms*, AMS, the chapter on theta functions, and T. Miyake, *Modular Forms*, Springer, the section on theta functions, for theta series with harmonic polynomials. J.-P. Serre, *A Course in Arithmetic*, Chapter V, for even unimodular lattices and $\theta_{E_8} = E_4$.
- L. Moret-Bailly, *Pinceaux de variétés abéliennes*, Astérisque 129 (1985), for cubical structures and the key formula; G. Faltings and C.-L. Chai, *Degeneration of Abelian Varieties*, Springer 1990, Chapter V for modular forms over $\mathbb{Z}$ and the q-expansion principle.
- G. Shimura, *Abelian Varieties with Complex Multiplication and Modular Functions*, Princeton 1998. The main source for CM types, the reflex field, reduction modulo primes, the main theorem and the values of modular functions at CM points.
- J. S. Milne, *Complex Multiplication*, lecture notes (available on the author's web site). A modern account of the main theorem in the idelic form used here, with the polarization.
- S. Lang, *Complex Multiplication*, Grundlehren 255, Springer 1983, for a second account of the theory of Shimura and Taniyama.
- G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Princeton 1971, Chapter 5 for complex multiplication of elliptic curves and Chapter 6 for Shimura reciprocity (Theorem 6.31).
- J. H. Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Springer, Chapter II. The genus one theory: the Hilbert class field, the maximal abelian extension, the integrality of $j$, the main theorem and the Grössencharacter with Deuring's theorem. Read it before Shimura's book.
- J. H. Silverman, *The Arithmetic of Elliptic Curves*, Springer, Chapter VI for $\wp$, $\zeta$ and $\sigma$, and Theorem VII.3.4 for the integrality of torsion points.
- D. Masser, *Elliptic Functions and Transcendence*, Lecture Notes in Math. 437, Springer 1975, for the algebraicity of $s_2$ at CM lattices.
- E. de Shalit, *Iwasawa Theory of Elliptic Curves with Complex Multiplication*, Academic Press 1987, for elliptic units; B. Mazur and J. Tate, *The p-adic sigma function*, Duke Math. J. 62 (1991).
- M. Kashiwara and M. Vergne, *On the Segal-Shale-Weil representations and harmonic polynomials*, Invent. Math. 44 (1978), for pluriharmonic polynomials and the weights of theta series.
