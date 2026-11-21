An elliptic curve over $\mathbb{C}$ is a quotient $\mathbb{C}/L$ by a lattice, and also a plane cubic. When the lattice is an ideal of an imaginary quadratic field, the curve has complex multiplication and its invariants generate class fields. [The CM divisibility chapter](/proof/cm-divisibility/) uses a CM curve with good reduction outside one prime, the Chowla-Selberg formula and Eisenstein sums of lattices; abelian varieties, the higher-dimensional case, appear in the window bound and the Weil bound.

## Lattices and the Weierstrass function

**Definition.** A *lattice* in $\mathbb{C}$ is a subgroup $L = \mathbb{Z}\omega_1 + \mathbb{Z}\omega_2$ with $\omega_1, \omega_2$ linearly independent over $\mathbb{R}$. Lattices $L, L'$ are *homothetic* if $L' = cL$ for some $c \in \mathbb{C}^\times$. Each lattice is homothetic to $L_\tau = \mathbb{Z} + \mathbb{Z}\tau$ with $\tau \in \mathbb{H}$, and $L_\tau, L_{\tau'}$ are homothetic exactly when $\tau' = \gamma\tau$ for some $\gamma \in \mathrm{SL}_2(\mathbb{Z})$.

The quotient $\mathbb{C}/L$, a compact Riemann surface of genus $1$ and an abelian group, is a *[[complex torus|Y7MA6KBE9M]]* of dimension $1$. An *elliptic function* for $L$ is a meromorphic function $f$ on $\mathbb{C}$ with $f(z + \omega) = f(z)$ for each $\omega \in L$.

**Definition.** For an integer $k \geq 3$ the *Eisenstein sum* of $L$ is $G_k(L) = \sum_{\omega \in L \setminus \{0\}} \omega^{-k}$. It converges absolutely and is $0$ for odd $k$. Put $g_2(L) = 60\, G_4(L)$ and $g_3(L) = 140\, G_6(L)$.

**Definition.** The *[[Weierstrass function|361NAK68QK]]* of $L$ is

$$\wp(z) = \frac{1}{z^2} + \sum_{\omega \in L \setminus \{0\}} \left( \frac{1}{(z - \omega)^2} - \frac{1}{\omega^2} \right).$$

It is an even elliptic function with a double pole at each point of $L$ and no other pole. The field of elliptic functions for $L$ is $\mathbb{C}(\wp, \wp')$.

**Proposition.** $\wp'(z)^2 = 4\wp(z)^3 - g_2(L)\wp(z) - g_3(L)$, and the *discriminant* $\Delta(L) = g_2(L)^3 - 27 g_3(L)^2$ is not $0$.

Scaling gives $g_2(cL) = c^{-4} g_2(L)$, $g_3(cL) = c^{-6} g_3(L)$ and $\Delta(cL) = c^{-12}\Delta(L)$. The function $\tau \mapsto \Delta(L_\tau)$ is the cusp form $(2\pi)^{12}\eta(\tau)^{24}$ of weight $12$, with $\eta$ the Dedekind eta function of [the automorphic forms chapter](/learn/automorphic-forms/).

## Elliptic curves and the j-invariant

**Definition.** An *[[elliptic curve|427N6S6QQW]]* over a field $K$ is a smooth projective curve $E$ over $K$ of genus $1$ with a point $O \in E(K)$. If the characteristic of $K$ is not $2$ or $3$, $E$ has a *Weierstrass equation* $y^2 = x^3 + ax + b$ with $a, b \in K$ and discriminant $\Delta = -16(4a^3 + 27b^2) \neq 0$, and $O$ is the point at infinity.

The points $E(K)$ form an abelian group with neutral element $O$, in which three points add to $O$ when they lie on a line, counted with multiplicity.

**Definition.** The *[[j-invariant|9538W1K1EX]]* of $y^2 = x^3 + ax + b$ is $j = 1728 \cdot 4a^3 / (4a^3 + 27b^2)$. For a lattice, $j(L) = 1728\, g_2(L)^3/\Delta(L)$.

Over an algebraically closed field, two elliptic curves are isomorphic exactly when they have the same $j$-invariant.

**Theorem (uniformization).** For each lattice $L$, the map $z \mapsto (\wp(z), \wp'(z)/2)$ is an isomorphism of complex Lie groups from $\mathbb{C}/L$ onto $E_L : y^2 = x^3 - \tfrac{g_2(L)}{4} x - \tfrac{g_3(L)}{4}$, whose discriminant is $\Delta(L)$. Each elliptic curve over $\mathbb{C}$ is $E_L$ for a lattice $L$ unique up to homothety, and $j(E_L) = j(L)$.

The function $j(\tau) = j(L_\tau)$ is a modular function for $\mathrm{SL}_2(\mathbb{Z})$ with $q$-expansion $q^{-1} + 744 + 196884q + \cdots$. The proof starts from the model $E_L$ in the statement `CMCurveGoodOutsidePrimeSt` of [the CM divisibility chapter](/proof/cm-divisibility/).

## Reduction and minimal models

Let $K$ be a number field, $v$ a finite place of $K$ with valuation ring $\mathcal{O}_v$, and $E$ an elliptic curve over $K$.

**Definition.** A *Weierstrass model* of $E$ at $v$ is a general Weierstrass equation $y^2 + a_1 xy + a_3 y = x^3 + a_2 x^2 + a_4 x + a_6$ for $E$ with all $a_i \in \mathcal{O}_v$. It is *minimal* if $v(\Delta)$ is least among such models. The *minimal discriminant* of $E$ is the ideal $\prod_v \mathfrak{p}_v^{v(\Delta_v)}$, with $\Delta_v$ the discriminant of a minimal model at $v$.

The change of variables $x = u^2 x' + r$, $y = u^3 y' + su^2 x' + t$ changes $\Delta$ to $u^{-12}\Delta$. A minimal model exists at each $v$, unique up to such a change with $u \in \mathcal{O}_v^\times$ and $r, s, t \in \mathcal{O}_v$.

**Definition.** $E$ has *good reduction* at $v$ if a minimal model reduces modulo $v$ to a smooth curve, that is, if $v(\Delta_v) = 0$, and *bad reduction* otherwise. Bad reduction is *multiplicative* if the reduced curve has a node and *additive* if it has a cusp.

A curve has bad reduction at finitely many places. The [[Néron model|K0EQTBRPE3]] of $E$ over $\mathcal{O}_K$ is the smooth group scheme that extends $E$ and has the universal property for maps from smooth schemes; at a place of good reduction it is the minimal model.

**Theorem (criterion of Néron, Ogg and Shafarevich).** Let $\ell$ be a prime not below $v$. Then $E$ has good reduction at $v$ exactly when the inertia group at $v$ acts trivially on the Tate module $T_\ell(E)$.

## Quadratic twists

**Definition.** Let $E : y^2 = x^3 + ax + b$ over $K$ of characteristic not $2$ or $3$, and let $d \in K^\times$. The *quadratic twist* of $E$ by $d$ is $E^{(d)} : dy^2 = x^3 + ax + b$, which is isomorphic to $y^2 = x^3 + ad^2 x + bd^3$.

The twist has the same $j$-invariant, becomes isomorphic to $E$ over $K(\sqrt d)$, and has discriminant $d^6\Delta$. It can change the reduction type at the primes dividing $2d$, for example from additive to good.

The proof of `CMCurveGoodOutsidePrimeSt` twists $E_L$ by $d_F = 1$ if $p \equiv 3 \pmod 8$ and by $d_F = -p$ if $p \equiv 7 \pmod 8$, then finds minimal models prime by prime.

## Periods

Let $E$ be an elliptic curve over a subfield $K$ of $\mathbb{C}$ and $\omega$ a nonzero invariant differential on $E$ over $K$, for example $dx/2y$ on $y^2 = x^3 + ax + b$.

**Definition.** The *period lattice* of $(E, \omega)$ is $\{\int_\gamma \omega : \gamma \in H_1(E(\mathbb{C}), \mathbb{Z})\}$. It is a lattice $L$ with $E \cong E_L$, and a *period* of $E$ is an element of it.

Replacing $\omega$ by $c\omega$ with $c \in K^\times$ replaces $L$ by $cL$, so a period is well defined up to a factor in $K^\times$. For $\omega = dx/2y$, $g_2(L) = -4a$ and $g_3(L) = -4b$ lie in $K$.

If $\Omega^{12} = \Delta(L)$, then $\Omega$ scales like $c^{-1}$, so $G_k(L)/\Omega^k$ is invariant under scaling. It is a polynomial with rational coefficients in $g_2/\Omega^4$ and $g_3/\Omega^6$, hence algebraic when $j(L)$ is algebraic. The periods $a_i$ of `JetInt` (below) are chosen so that $a_i/\Omega$, with $\Omega^{12} = \Delta(\Lambda)$, has a known $l$-adic size.

## Complex multiplication

**Definition.** The *endomorphism ring* $\mathrm{End}(E)$ of an elliptic curve over $\mathbb{C}$ is the ring of holomorphic group maps $E \to E$. For $E = \mathbb{C}/L$ it is $\{\alpha \in \mathbb{C} : \alpha L \subset L\}$, which is $\mathbb{Z}$ or an order in an imaginary quadratic field $K$. In the second case $E$ has *[[complex multiplication|D3HEJTVY7G]]* (CM) by that order.

**Example.** For a fractional ideal $\mathfrak{a}$ of an imaginary quadratic field $K$, the curve $\mathbb{C}/\mathfrak{a}$ has $\mathrm{End} = \mathcal{O}_K$. For $K = \mathbb{Q}(i)$ the curve $y^2 = x^3 - x$ has $j = 1728$, and $i$ acts by $(x, y) \mapsto (-x, iy)$.

Up to homothety, $\mathfrak{a}$ depends only on its ideal class, so there are exactly $h_K$ curves with CM by $\mathcal{O}_K$ up to isomorphism, and $\mathrm{Cl}(K)$ acts simply transitively on them by $\mathfrak{b} \ast \mathbb{C}/\mathfrak{a} = \mathbb{C}/\mathfrak{b}^{-1}\mathfrak{a}$.

**Theorem (j and the Hilbert class field).** Let $K$ be imaginary quadratic and $\mathfrak{a}$ a fractional ideal of $\mathcal{O}_K$. Then $j(\mathfrak{a})$ is an algebraic integer, $[\mathbb{Q}(j(\mathfrak{a})) : \mathbb{Q}] = h_K$, and $K(j(\mathfrak{a}))$ is the [[Hilbert class field|WWCJ7CR2R3]] $H$ of $K$ ([class field theory](/learn/class-field-theory/)). For each fractional ideal $\mathfrak{b}$ with Artin symbol $\sigma_{\mathfrak{b}} \in \mathrm{Gal}(H/K)$, $\sigma_{\mathfrak{b}}(j(\mathfrak{a})) = j(\mathfrak{b}^{-1}\mathfrak{a})$.

So the field $F = \mathbb{Q}(j(\mathcal{O}_K))$ of `CMCurveGoodOutsidePrimeSt` has degree $h_K$, and the curve has a model over $F$.

**Theorem (main theorem of complex multiplication).** Let $E$ be an elliptic curve over $\mathbb{C}$ with $\mathrm{End}(E) = \mathcal{O}_K$, and $f : \mathbb{C}/\mathfrak{a} \to E(\mathbb{C})$ an analytic isomorphism. Let $\sigma \in \mathrm{Aut}(\mathbb{C}/K)$ and let $s \in \mathbb{A}_K^\times$ be an idele whose Artin symbol is $\sigma$ on $K^{\mathrm{ab}}$. Then there is a unique analytic isomorphism $f' : \mathbb{C}/s^{-1}\mathfrak{a} \to E^\sigma(\mathbb{C})$ with $f(x)^\sigma = f'(s^{-1}x)$ for each $x \in K/\mathfrak{a}$ (Shimura, 1971).

**Theorem (Shimura reciprocity).** Let $\tau \in \mathbb{H} \cap K$ and let $q_\tau : \mathbb{A}_{K,f}^\times \to \mathrm{GL}_2(\mathbb{A}_{\mathbb{Q},f})$ be given by the action of $\mathbb{A}_{K,f}^\times$ on $\mathbb{A}_{K,f} = \mathbb{A}_{\mathbb{Q},f}\tau + \mathbb{A}_{\mathbb{Q},f}$. For each [[modular function|63TX60RTRQ]] $f$ of some level with Fourier coefficients in $\mathbb{Q}^{\mathrm{ab}}$ that is finite at $\tau$, and each $s \in \mathbb{A}_{K,f}^\times$, the value $f(\tau)$ lies in $K^{\mathrm{ab}}$ and $f(\tau)^{[s^{-1}, K]} = f^{q_\tau(s)}(\tau)$, where $f \mapsto f^g$ is the action of $\mathrm{GL}_2(\mathbb{A}_{\mathbb{Q},f})$ on modular functions (Shimura, 1971, Theorem 6.31).

Both theorems write a Galois conjugate of a CM value as a value of the same shape at another lattice. In `Transport`, each conjugate $\sigma(\beta)$ of $\beta = (C_0 \cdot T)^{12}/\Delta(\Lambda)^{\mathrm{wt}}$ is such a value for an ideal $\mathfrak{a}_\sigma$ and a lattice $\Lambda_\sigma$. The record [CM and abelian inputs](/step/cm-abelian-inputs-from-literature/) has the fields `EllipticMainTheoremCM` and `HilbertClassFieldJ`.

## The Chowla-Selberg formula

The classical form of the formula writes the periods of CM curves through values of the Gamma function at rationals with denominator $d$ (Chowla and Selberg, 1967). The proof uses the form below, which is equivalent by the functional equation of $L(s, \chi)$ and Lerch's formula.

**Theorem (Chowla-Selberg).** Let $K$ be an imaginary quadratic field of discriminant $-d$ with $d > 4$, class number $h$ and quadratic character $\chi$. For each ideal class $c$ choose an ideal $\mathfrak{a}_c$ in $c$ with lattice $L_c \subset \mathbb{C}$. Then

$$\frac{1}{h} \sum_{c} \log\Big( N(\mathfrak{a}_c)^6 \,\big| g_2(L_c)^3 - 27 g_3(L_c)^2 \big| \Big) = 12 \log 2\pi - 6 \log d + 6\gamma - 6\, \frac{L'(1, \chi)}{L(1, \chi)},$$

where $\gamma$ is Euler's constant.

The left side does not depend on the choice of $\mathfrak{a}_c$, since $N(\mathfrak{a})^6|\Delta(\mathfrak{a})|$ is invariant under scaling. It follows from the [[first Kronecker limit formula|PD750J2XV9]] for the real analytic Eisenstein series and the class number formula $L(1, \chi) = \pi h/\sqrt d$. In terms of $\eta$, the mean of $\log(\operatorname{Im}\tau\, |\eta(\tau)|^4)$ over the CM points $\tau$ of the classes is $\gamma - \log(2\sqrt d) - L'/L(1, \chi)$.

The code proves both forms: `BetaArch` averages the bounds on the conjugates of $\beta$ with the first, and the volume theorem of [the Weil bound](/proof/weil-bound/) gets its term $L'/L(1, \chi_d)$ from the second.

## Gross's curves

**Theorem (Gross's curves; Gross, 1980).** Let $p > 3$ be a prime with $p \equiv 3 \pmod 4$, let $K = \mathbb{Q}(\sqrt{-p})$, $L = \mathcal{O}_K \subset \mathbb{C}$ and $F = \mathbb{Q}(j(L))$. There is an elliptic curve $A$ over $F$ with $j(A) = j(L)$, good reduction at each prime of $F$ not dividing $p$, and minimal discriminant $(-p)^3$, that is, at each prime of $F$ a minimal model with discriminant a unit times $(-p)^3$.

This is the statement `CMCurveGoodOutsidePrimeSt`, a field of the bundle [UnitaryGroupThirdPlaceHypotheses](/step/published-results-eigen/) that the code proves. Inside `baseCond_KPx` it is applied with $p = d$, where $-d$ is the discriminant of the host field and $d \equiv 7 \pmod{16}$.

## Eisenstein sums of lattices

A *CM type* $\varphi = (\varphi_i)_{i \in I}$ of $E$ is a set of embeddings $E \to \mathbb{C}$ that contains exactly one from each pair of complex conjugate embeddings. It embeds a lattice $L \subset E$ as a lattice in $\mathbb{C}^I$, and the Eisenstein lattice sums of weight $2s$, analogues of $G_{2s}$, are functions on $\mathbb{C}^I$ built from $L$. For $E = K$ imaginary quadratic they are the $G_{2s}(L)$, and $G_{2s}(L)/\Omega^{2s}$ is algebraic.

The statement `JetInt` of [the CM divisibility chapter](/proof/cm-divisibility/) bounds the $l$-adic size of the partial derivatives at $0$ of these sums, divided by powers of periods $a_i$. Its proof takes `EllipticMainTheoremCM` and `HilbertClassFieldJ` as inputs but uses only the functional equation of partial zeta functions.

## Abelian varieties and abelian schemes

**Definition.** An *[[abelian variety|R7W03TXRS9]]* over a field $k$ is a connected smooth proper group scheme over $k$. It is commutative and projective. An elliptic curve is an abelian variety of dimension $1$, and over $\mathbb{C}$ an abelian variety of dimension $g$ is a complex torus $\mathbb{C}^g/\Lambda$ with a positive definite Riemann form.

**Definition.** The *[[dual abelian variety|HZXSESHC8P]]* of $A$ is $A^\vee = \mathrm{Pic}^0_{A/k}$, the abelian variety of line bundles on $A$ algebraically equivalent to $0$. A line bundle $\mathcal{L}$ on $A$ gives a homomorphism $\varphi_{\mathcal{L}} : A \to A^\vee$, $x \mapsto t_x^*\mathcal{L} \otimes \mathcal{L}^{-1}$.

**Definition.** A *polarization* of $A$ is a homomorphism $\lambda : A \to A^\vee$ that over $\bar k$ equals $\varphi_{\mathcal{L}}$ for an ample line bundle $\mathcal{L}$. It is an isogeny, and it is *principal* if it is an isomorphism. An elliptic curve has a unique principal polarization, given by $\mathcal{L} = \mathcal{O}(O)$, so $E \cong E^\vee$.

**Definition.** Let $S$ be a scheme. An *[[abelian scheme|JDDXZ89N33]]* over $S$ is a smooth proper group scheme over $S$ with geometrically connected fibres. A *semi-abelian scheme* is a smooth separated commutative group scheme over $S$ whose fibres are extensions of an abelian variety by a torus.

The dual, the polarizations and the Tate modules $T_\ell(A) = \varprojlim A[\ell^n]$ extend to abelian schemes. An abelian variety $A$ over a number field $K$ has *good reduction* at $v$ if it extends to an abelian scheme over $\mathcal{O}_v$.

**Theorem (Serre and Tate).** Let $K$ be a field with a discrete valuation $v$ of residue characteristic $p$, let $A$ be an abelian variety over $K$ and let $\ell \neq p$ be a prime. Then $A$ has good reduction at $v$ exactly when inertia at $v$ acts trivially on $T_\ell(A)$. An abelian variety with complex multiplication has potentially good reduction at every place (Serre and Tate, 1968).

**Theorem (semistable reduction).** An abelian variety over a number field $K$ acquires semistable reduction over a finite extension $K'$ of $K$: the identity components of the fibres of its Néron model over $\mathcal{O}_{K'}$ are semi-abelian (Grothendieck, SGA 7).

The largest field of [CM and abelian inputs](/step/cm-abelian-inputs-from-literature/), used by [the window bound](/proof/vwin/), is `SerreTateGoodReductionSt`. Semi-abelian schemes and their Lie algebras enter the slope bound of [the Weil bound](/proof/weil-bound/).

## Further reading

- J. H. Silverman, *The Arithmetic of Elliptic Curves*, Chapters III, VI and VII.
- J. H. Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter II.
- G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Chapters 4 to 6.
- D. A. Cox, *Primes of the Form $x^2 + ny^2$*, Sections 10 and 11.
- D. Mumford, *Abelian Varieties*, Chapters I and II.
