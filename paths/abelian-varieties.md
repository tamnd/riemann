This chapter gives the theory of abelian varieties and abelian schemes that the development volumes assume: the basic structure over a field, abelian schemes, duality and the Poincaré bundle, polarizations and Zarhin's trick, Néron models and the criteria for good reduction, the Siegel moduli schemes with level structure and the Kodaira-Spencer isomorphism, Mumford's construction of degenerating abelian varieties, and the toroidal and minimal compactifications with Mumford's proportionality theorem. The criterion of Néron, Ogg and Shafarevich enters [the window bound](/proof/vwin/) through [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/). The dual abelian scheme is an input of [EveryCharacter](/step/every-character/), Zarhin's trick and the Lie algebras of semi-abelian schemes enter [the Weil bound](/proof/weil-bound/), and the toroidal compactifications of Siegel and unitary moduli spaces, with their Kodaira-Spencer isomorphisms, are named inputs of [the literature chapter](/proof/literature/) and of [the bundle of published arithmetic results](/step/published-results-arithmetic/). [The elliptic curves chapter](/learn/elliptic-curves/) treats dimension $1$, and [the geometry chapter](/learn/geometry/) gives the schemes, the de Rham cohomology and the Shimura varieties that we use here.

## Abelian varieties over a field

Let $k$ be a field with algebraic closure $\bar k$. A *variety* over $k$ is as in [the geometry chapter](/learn/geometry/).

**Definition.** An *[[abelian variety|R7W03TXRS9]]* over $k$ is a group scheme $A$ over $k$ that is [[proper|9537RKBZPP]], smooth and geometrically connected. Its *dimension* $g$ is the dimension of $A$ as a variety. A *homomorphism* of abelian varieties is a morphism of group schemes. An *isogeny* is a surjective homomorphism $f : A \to B$ with finite kernel; then $\dim A = \dim B$, and the *degree* $\deg f$ is the order of the finite group scheme $\ker f$, that is, $[k(A) : f^* k(B)]$.

**Theorem (rigidity lemma).** Let $k$ be algebraically closed. Let $X$, $Y$, $Z$ be varieties over $k$ with $X$ proper, and let $f : X \times Y \to Z$ be a morphism. If $f(X \times \{y_0\})$ is one point for some $y_0 \in Y(k)$, then $f(X \times \{y\})$ is one point for each $y \in Y(k)$, and $f = h \circ \mathrm{pr}_2$ for a morphism $h : Y \to Z$ (Mumford, *Abelian Varieties*, Chapter II, section on the definition and basic properties).

**Corollary.** Let $f : A \to B$ be a morphism of varieties between abelian varieties. Then $f = t_{f(0)} \circ h$, where $t_b$ is translation by $b$ and $h$ is a homomorphism. Each abelian variety is commutative.

*Proof.* We may assume $k = \bar k$. Let $F : A \times A \to B$ be $F(x, y) = f(x + y) - f(x) - f(y) + f(0)$. Then $F(A \times \{0\}) = \{0\}$, so $F(x, y)$ depends only on $y$ by rigidity. Since $F(0, y) = 0$, $F = 0$, and $h = f - f(0)$ is a homomorphism. For commutativity, apply this to the inverse map $x \mapsto x^{-1}$: it fixes $0$, so it is a homomorphism, and a group whose inverse map is a homomorphism is commutative. $\square$

We write the group law additively. An abelian variety is projective (Mumford, Chapter II).

### Complex tori

Let $V$ be a complex vector space of dimension $g$ and $\Lambda \subset V$ a lattice, a discrete subgroup of rank $2g$. The quotient $X = V/\Lambda$ is a *[[complex torus|Y7MA6KBE9M]]*, a compact complex Lie group.

**Definition.** A *Riemann form* on $X$ is a [[Hermitian form|8NJ7XY6F1S]] $H$ on $V$ whose imaginary part $E = \operatorname{Im} H$ takes integer values on $\Lambda \times \Lambda$. The form $E$ is alternating, and $H(v, w) = E(iv, w) + iE(v, w)$.

**Theorem (Appell-Humbert).** The holomorphic line bundles on $X$ correspond, up to isomorphism, to the pairs $(H, \alpha)$ of a Riemann form $H$ and a map $\alpha : \Lambda \to \{z \in \mathbb{C} : |z| = 1\}$ with $\alpha(\lambda + \mu) = e^{\pi i E(\lambda, \mu)} \alpha(\lambda) \alpha(\mu)$. The bundle $L(H, \alpha)$ is ample if and only if $H$ is positive definite (Mumford, Chapter I; Birkenhake and Lange, *Complex Abelian Varieties*, Chapter 2).

**Theorem (Riemann and Lefschetz).** A complex torus $X$ is the complex manifold $A(\mathbb{C})$ of an abelian variety $A$ over $\mathbb{C}$ if and only if it has a positive definite Riemann form. The functor $A \mapsto A(\mathbb{C})$ is an equivalence from abelian varieties over $\mathbb{C}$ to complex tori that have such a form (Mumford, Chapter I).

**Example.** Let $\mathbb{H}_g$ be the *Siegel upper half space*, the set of symmetric $Z \in M_g(\mathbb{C})$ with $\operatorname{Im} Z$ positive definite. For $Z \in \mathbb{H}_g$, let $\Lambda_Z = Z\mathbb{Z}^g + \mathbb{Z}^g$ and $A_Z = \mathbb{C}^g/\Lambda_Z$. The form $H_Z(v, w) = v^T (\operatorname{Im} Z)^{-1} \bar w$ is a positive definite Riemann form, and $E$ has determinant $1$ on $\Lambda_Z$. The *Riemann theta function*
$$\theta(v, Z) = \sum_{m \in \mathbb{Z}^g} \exp\big(\pi i\, m^T Z m + 2\pi i\, m^T v\big)$$
is a section of a line bundle $L(H_Z, \alpha)$, and its zero divisor is the *theta divisor* $\Theta$. For $g \ge 2$, most lattices $\Lambda \subset \mathbb{C}^g$ have no positive definite Riemann form, so most complex tori are not algebraic.

The fields `PeriodComparison` and `GaussManinPeriods` of [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/) use the complex torus and Riemann form of $A$ to compare de Rham classes with periods.

### The theorem of the cube

**Theorem (theorem of the cube).** Let $A$ be an abelian variety and $L$ a line bundle on $A$. For $I \subseteq \{1, 2, 3\}$, let $m_I : A^3 \to A$ be $(x_1, x_2, x_3) \mapsto \sum_{i \in I} x_i$. Then
$$\begin{aligned} &m_{123}^*L \otimes m_{12}^*L^{-1} \otimes m_{13}^*L^{-1} \otimes m_{23}^*L^{-1} \\ &\otimes m_1^*L \otimes m_2^*L \otimes m_3^*L \cong \mathcal{O}_{A^3} \end{aligned}$$
(Mumford, Chapter II, section on the theorem of the cube).

**Corollary.** (1) (*Theorem of the square.*) For $x, y \in A(\bar k)$, $t_{x+y}^*L \otimes L \cong t_x^*L \otimes t_y^*L$. (2) For $n \in \mathbb{Z}$, $[n]^*L \cong L^{(n^2 + n)/2} \otimes [-1]^*L^{(n^2 - n)/2}$. If $L$ is *symmetric*, that is $[-1]^*L \cong L$, then $[n]^*L \cong L^{n^2}$.

**Definition.** For a line bundle $L$ on $A$, let $\varphi_L(x) = t_x^*L \otimes L^{-1}$ for $x \in A(\bar k)$. By the theorem of the square, $\varphi_L$ is a homomorphism from $A(\bar k)$ to the Picard group of $A_{\bar k}$. Its kernel is $K(L)$, the set of $x$ with $t_x^*L \cong L$. If $L$ is ample, $K(L)$ is finite.

**Proposition.** Let $n \ne 0$. The map $[n] : A \to A$ is an isogeny of degree $n^{2g}$. If $n$ is prime to the characteristic of $k$, then $A[n](\bar k) \cong (\mathbb{Z}/n\mathbb{Z})^{2g}$. If $k$ has characteristic $p > 0$, then $A[p](\bar k) \cong (\mathbb{Z}/p\mathbb{Z})^r$ for some $0 \le r \le g$, the *$p$-rank*.

*Proof of the first two claims.* Let $L$ be ample. Then $L \otimes [-1]^*L$ is ample and symmetric, so we may assume $L$ symmetric. Then $[n]^*L \cong L^{n^2}$ is ample. Its restriction to the fibre $[n]^{-1}(0)$ is trivial, and a proper scheme with a trivial ample bundle is finite, so $\ker [n]$ is finite and $[n]$ is surjective. By the projection formula for intersection numbers, $\deg [n] \cdot (L^g) = ([n]^*L)^g = n^{2g} (L^g)$, and $(L^g) > 0$. So $\deg [n] = n^{2g}$. If $n$ is prime to the characteristic, $[n]$ is multiplication by $n$ on the tangent space at $0$, so $[n]$ is étale and $\# A[d](\bar k) = d^{2g}$ for each $d \mid n$. A finite abelian group with this property for each $d \mid n$ is $(\mathbb{Z}/n)^{2g}$. $\square$

**Definition.** Let $\ell$ be a prime different from the characteristic of $k$. The *[[Tate module|4CSMQFTGD8]]* of $A$ is $T_\ell A = \varprojlim_m A[\ell^m](\bar k)$, with the maps $[\ell] : A[\ell^{m+1}] \to A[\ell^m]$. It is a free $\mathbb{Z}_\ell$-module of rank $2g$ with a continuous action of $\mathrm{Gal}(\bar k/k)$ when $k$ is perfect (in general, of the Galois group of a separable closure). Let $V_\ell A = T_\ell A \otimes \mathbb{Q}_\ell$. The good reduction criteria below use torsion points and Tate module: they are stated through the action of inertia on $A[n]$ and on $T_\ell A$.

**Theorem.** Let $A$, $B$ be abelian varieties over $k$. Then $\mathrm{Hom}(A, B)$ is a free $\mathbb{Z}$-module of finite rank, and the map $\mathrm{Hom}(A, B) \otimes \mathbb{Z}_\ell \to \mathrm{Hom}_{\mathbb{Z}_\ell}(T_\ell A, T_\ell B)$ is injective. So the rank of $\mathrm{Hom}(A, B)$ is at most $4 \dim A \dim B$ (Mumford, Chapter IV, section on $\mathrm{Hom}(X, Y)$ and the $\ell$-adic representation).

**Theorem (Poincaré complete reducibility).** Let $B \subseteq A$ be an abelian subvariety. There is an abelian subvariety $C \subseteq A$ such that $B \times C \to A$ is an isogeny. So $A$ is isogenous to a product of simple abelian varieties, and $\mathrm{End}^0(A) = \mathrm{End}(A) \otimes \mathbb{Q}$ is a semisimple $\mathbb{Q}$-algebra of finite dimension (Mumford, Chapter IV).

**Theorem (Riemann-Roch).** Let $L$ be a line bundle on $A$. Then $\chi(L) = (L^g)/g!$, and $\chi(L)^2 = \deg \varphi_L$ when $K(L)$ is finite. If $L$ is ample, then $H^i(A, L) = 0$ for $i > 0$, so $h^0(L) = \chi(L)$ (Mumford, Chapter III, section on the Riemann-Roch theorem, and the vanishing theorem that follows it).

**Example.** For $A_Z$ with $L = L(H_Z, \alpha)$ as above, $\deg \varphi_L = 1$, so $h^0(L) = 1$ and $\theta(\cdot, Z)$ spans $H^0(A_Z, L)$.

The Tate modules carry the Galois representations of [the Galois representations chapter](/learn/galois-representations/), and the criteria for good reduction below are statements about them.

## Abelian schemes

Let $S$ be a [[scheme|5A35TYZD02]].

**Definition.** An *[[abelian scheme|JDDXZ89N33]]* over $S$ is a group scheme $f : A \to S$ that is [[smooth|EXKGG9X6J0]] and proper with geometrically connected fibres. Its fibres are abelian varieties, and their dimension $g$ is locally constant on $S$, the *relative dimension*. We write $e : S \to A$ for the unit section.

**Theorem (rigidity).** Let $A$, $B$ be abelian schemes over $S$ and $h : A \to B$ a morphism of $S$-schemes with $h \circ e_A = e_B$. Then $h$ is a homomorphism. In particular each abelian scheme is commutative (Mumford, Fogarty and Kirwan, *Geometric Invariant Theory*, Chapter 6).

**Definition.** The *Hodge bundle* of $A/S$ is $\omega_{A/S} = e^*\Omega^1_{A/S}$, a locally free $\mathcal{O}_S$-module of rank $g$. Its dual is the *Lie algebra* $\operatorname{Lie}(A/S)$, the sheaf of tangent vectors along $e$. The *Hodge line bundle* is $\det \omega_{A/S}$. [The Arakelov chapter](/learn/arakelov/) puts the Hodge metric on it.

**Proposition.** For $n \ge 1$, $A[n] = \ker [n]$ is a finite flat commutative group scheme over $S$ of rank $n^{2g}$. It is étale over $S$ if $n$ is invertible on $S$ (Mumford, *Abelian Varieties*, Chapter III; Faltings and Chai, *Degeneration of Abelian Varieties*, Chapter I).

So for $n$ invertible on a connected $S$, $A[n]$ becomes isomorphic to the constant group $(\mathbb{Z}/n)^{2g}$ after a finite étale cover of $S$.

**Definition.** A line bundle $L$ on $A$ is *rigidified* if it comes with an isomorphism $e^*L \cong \mathcal{O}_S$. It is *symmetric* if $[-1]^*L \cong L$, and *relatively ample* if its restriction to each fibre is ample.

**Theorem (theorem of the cube over a base).** For each rigidified line bundle $L$ on $A$, the bundle of the theorem of the cube on $A \times_S A \times_S A$ has a canonical trivialization, compatible with the symmetries and with the unit section; this is a *cubical structure* on $L$ (Breen, *Fonctions thêta et théorème du cube*, Lecture Notes in Math. 980; Moret-Bailly, *Pinceaux de variétés abéliennes*, Astérisque 129, Chapter I).

**Remark.** An abelian variety is projective, but an abelian scheme over a general base need not be (Raynaud, *Faisceaux amples sur les schémas en groupes*, Lecture Notes in Math. 119). The abelian schemes of the development carry a relatively ample line bundle or a polarization, so this does not arise there.

The deformations of an abelian scheme in characteristic $p$ are controlled by its $p$-divisible group ([the formal groups chapter](/learn/formal-groups/)).

**Theorem (Serre-Tate).** Let $R$ be a ring in which a prime $p$ is nilpotent, $I \subset R$ a nilpotent ideal and $R_0 = R/I$. The functor $A \mapsto (A \otimes R_0, A[p^\infty], \text{the identification})$ is an equivalence from abelian schemes over $R$ to triples $(A_0, G, \varepsilon)$ of an abelian scheme $A_0$ over $R_0$, a $p$-divisible group $G$ over $R$ and an isomorphism $\varepsilon : G \otimes R_0 \cong A_0[p^\infty]$ (Katz, *Serre-Tate local moduli*, Lecture Notes in Math. 868).

With the theorem of Grothendieck and Messing in [the formal groups chapter](/learn/formal-groups/), lifting an abelian scheme along a nilpotent divided power thickening becomes lifting its Hodge filtration. This is the field `GrothendieckDeformation` of [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/).

## Duality and the Poincaré bundle

Let $A$ be an abelian variety over $k$ of dimension $g$. This section constructs the dual abelian variety and Poincaré bundle, first over a field and then over a base.

**Definition.** Let $\mathrm{Pic}^0(A_{\bar k})$ be the group of line bundles $L$ on $A_{\bar k}$ with $K(L) = A$, that is, with $t_x^*L \cong L$ for each $x \in A(\bar k)$.

**Proposition.** For a line bundle $L$ on $A_{\bar k}$, these are equivalent: (a) $L \in \mathrm{Pic}^0$; (b) $m^*L \cong p_1^*L \otimes p_2^*L$ on $A \times A$, where $m$ is the group law; (c) $L$ is algebraically equivalent to $\mathcal{O}_A$. If $L \in \mathrm{Pic}^0$ is nontrivial, then $H^i(A, L) = 0$ for each $i$ (Mumford, Chapter II, section on the dual abelian variety).

A line bundle with property (b) is called *additive* or *primitive*. Property (b) makes sense over any base, and the development defines the dual by it.

**Definition.** A *[[dual abelian variety|HZXSESHC8P]]* of $A$ is an abelian variety $A^\vee$ with a line bundle $P$ on $A \times A^\vee$, the *Poincaré bundle*, such that $P$ is trivial on $\{0\} \times A^\vee$, each $P|_{A \times \{\xi\}}$ lies in $\mathrm{Pic}^0$, and the following holds: for each $k$-scheme $T$ and each line bundle $M$ on $A \times T$ that is trivial on $\{0\} \times T$ and has $M|_{A \times \{t\}} \in \mathrm{Pic}^0$ for each $t$, there is exactly one morphism $u : T \to A^\vee$ with $M \cong (1 \times u)^* P$.

**Theorem.** The dual $A^\vee$ exists, is unique up to unique isomorphism, and has dimension $g$. For each line bundle $L$ on $A$, the bundle $m^*L \otimes p_1^*L^{-1} \otimes p_2^*L^{-1}$ on $A \times A$ is classified by a homomorphism $\varphi_L : A \to A^\vee$, which on points is $x \mapsto t_x^*L \otimes L^{-1}$. If $L$ is ample, $\varphi_L$ is an isogeny with kernel $K(L)$ and degree $\chi(L)^2$ (Mumford, Chapter II for characteristic $0$, Chapter III in general).

**Example.** Let $A(\mathbb{C}) = V/\Lambda$. Let $\bar V^*$ be the space of $\mathbb{C}$-antilinear forms $\ell : V \to \mathbb{C}$ and $\Lambda^\vee = \{\ell \in \bar V^* : \operatorname{Im} \ell(\Lambda) \subseteq \mathbb{Z}\}$. Then $A^\vee(\mathbb{C}) = \bar V^*/\Lambda^\vee$, and for $L = L(H, \alpha)$ the map $\varphi_L$ is induced by $v \mapsto H(v, \cdot)$ (Mumford, Chapter I).

**Theorem (biduality).** Let $s : A^\vee \times A \to A \times A^\vee$ swap the factors. Then $s^*P$ makes $A$ a dual of $A^\vee$, so $(A^\vee)^\vee = A$ canonically. A homomorphism $f : A \to B$ has a *dual* $f^\vee : B^\vee \to A^\vee$, given by pulling back line bundles. If $f$ is an isogeny, so is $f^\vee$, and $\ker f^\vee$ is the Cartier dual of $\ker f$ (Mumford, Chapter III).

**Definition.** Let $n$ be prime to the characteristic. Applied to $f = [n]$, the last statement gives a perfect pairing $e_n : A[n] \times A^\vee[n] \to \mu_n$, the *Weil pairing*. For a homomorphism $\lambda : A \to A^\vee$, let $e^\lambda_n(x, y) = e_n(x, \lambda(y))$ on $A[n] \times A[n]$. If $\lambda = \varphi_L$, then $e^\lambda_n$ is alternating (Mumford, Chapter IV, section on the Riemann form of a line bundle). The dual isogeny and Weil pairing define the symplectic level structures on the moduli spaces below.

Now let $A \to S$ be an abelian scheme of relative dimension $g$.

**Definition.** A *dual abelian scheme* of $A$ is an abelian scheme $A^\vee \to S$ with a rigidified line bundle $P$ on $A \times_S A^\vee$ that represents the functor
$$T \mapsto \{\text{rigidified } M \text{ on } A \times_S T \text{ with } M_t \in \mathrm{Pic}^0(A_t) \text{ for each } t \in T\}/\cong$$
on $S$-schemes $T$. By the proposition above, the condition on $M$ is that $M$ be additive on each fibre.

**Theorem.** The functor of the definition is represented by an algebraic space $A^\vee$ (Artin), which is an abelian scheme in the category of algebraic spaces. If $A$ is projective over $S$, then $A^\vee$ is a scheme, by Grothendieck's construction of the Picard scheme. Biduality, the homomorphisms $\varphi_L$ and the dual isogenies extend to abelian schemes (Faltings and Chai, Chapter I, Section 1).

The statement `DualAbelianScheme` of the development asks for a scheme $B$ and an additive bundle $P$ with this universal property, together with biduality; it is used by [EveryCharacter](/step/every-character/).

**Proposition (de Rham cohomology of an abelian scheme).** Let $f : A \to S$ be an abelian scheme. Then $\operatorname{Lie}(A^\vee/S) \cong R^1 f_* \mathcal{O}_A$, and the Hodge filtration gives the exact sequence of locally free sheaves of ranks $g$, $2g$, $g$
$$0 \to \omega_{A/S} \to H^1_{\mathrm{dR}}(A/S) \to \operatorname{Lie}(A^\vee/S) \to 0$$
(Mazur and Messing, *Universal Extensions and One Dimensional Crystalline Cohomology*, Lecture Notes in Math. 370, the chapter on the universal extension). A principal polarization $\lambda$ (defined below) gives a perfect alternating pairing on $H^1_{\mathrm{dR}}(A/S)$ in which $\omega_{A/S}$ is a Lagrangian subbundle.

[The geometry chapter](/learn/geometry/) gives the [[algebraic de Rham cohomology|13F5JZPDD0]] and the [[Gauss-Manin connection|72FWSE86X4]] on it; the field `AbelianDeRham` of [the bundle of published arithmetic results](/step/published-results-arithmetic/) is a statement of this kind.

## Polarizations and Zarhin's trick

**Definition.** A *polarization* of an abelian scheme $A/S$ is a homomorphism $\lambda : A \to A^\vee$ such that, for each geometric point $\bar s$ of $S$, $\lambda_{\bar s} = \varphi_L$ for an ample line bundle $L$ on $A_{\bar s}$. It is an isogeny, and it is *symmetric*: $\lambda^\vee = \lambda$ under biduality. Over a connected base, its degree is constant. It is *principal* if it is an isomorphism.

**Example.** (1) An elliptic curve has the principal polarization $\varphi_{\mathcal{O}(O)}$. (2) The Jacobian $J$ of a smooth projective curve of genus $g$ has a principal polarization $\varphi_{\mathcal{O}(\Theta)}$, with $\Theta$ the image of the $(g-1)$-st symmetric power of the curve, translated. (3) $A_Z$ for $Z \in \mathbb{H}_g$ has the principal polarization given by $H_Z$. (4) For a relatively ample $L$ on $A/S$, $\varphi_L$ is a polarization of degree $\chi(L_s)^2$.

**Definition.** Let $\lambda$ be a polarization of an abelian variety $A$. The *Rosati involution* on $\mathrm{End}^0(A)$ is $f \mapsto f^\dagger = \lambda^{-1} \circ f^\vee \circ \lambda$, with $\lambda^{-1}$ taken in $\mathrm{Hom}^0(A^\vee, A)$. It satisfies $(fg)^\dagger = g^\dagger f^\dagger$ and $f^{\dagger\dagger} = f$.

**Theorem (positivity of the Rosati involution).** For $f \in \mathrm{End}^0(A)$ with $f \ne 0$, $\operatorname{Tr}(f f^\dagger) > 0$, where $\operatorname{Tr}$ is the trace on $V_\ell A$. So $(f, h) \mapsto \operatorname{Tr}(f h^\dagger)$ is a positive definite quadratic form on $\mathrm{End}(A) \otimes \mathbb{R}$ (Mumford, Chapter IV, section on the Rosati involution).

By Albert's classification, the endomorphism algebra of a simple abelian variety, a division algebra with a positive involution, is a totally real field, a quaternion algebra over a totally real field (totally indefinite or totally definite), or a division algebra over a CM field with an involution of the second kind (Mumford, Chapter IV, section on the classification of endomorphism algebras).

**Corollary.** The group $\mathrm{Aut}(A, \lambda)$ of automorphisms $u$ with $u^\vee \lambda u = \lambda$ is finite.

*Proof.* Such $u$ satisfy $u^\dagger u = 1$, so $\operatorname{Tr}(u u^\dagger) = \operatorname{Tr}(1) = 2g$. They lie in the lattice $\mathrm{End}(A)$ and in a compact set for the positive definite form of the theorem, so there are finitely many. $\square$

**Lemma (Serre).** Let $n \ge 3$ and $u \in \mathrm{Aut}(A, \lambda)$. If $u$ acts trivially on the group scheme $A[n]$, then $u = 1$.

*Proof.* Since $u - 1$ kills $A[n]$ and $[n]$ is the quotient by $A[n]$, $u - 1 = n\beta$ with $\beta \in \mathrm{End}(A)$. By the corollary, $u$ has finite order, so $u$ acts semisimply on $V_\ell A$ with roots of unity $\zeta$ as eigenvalues. The eigenvalues $(\zeta - 1)/n$ of $\beta$ are algebraic integers, since the characteristic polynomial of $\beta$ has integer coefficients (Mumford, Chapter IV). Let $\zeta \ne 1$ have order $m$. Then $n^{\varphi(m)}$ divides $N(1 - \zeta)$, which is $1$ if $m$ is not a prime power and $p$ if $m$ is a power of a prime $p$. As $n \ge 3$, this is impossible. So all eigenvalues are $1$, $u = 1$ on $V_\ell A$, and $u = 1$ because $\mathrm{End}(A) \to \mathrm{End}(T_\ell A)$ is injective. $\square$

The same argument shows that the principal congruence subgroup $\Gamma(n) \subset \mathrm{Sp}_{2g}(\mathbb{Z})$ has no torsion for $n \ge 3$. The Rosati involution and Serre's lemma are why the moduli problems below with level $n \ge 3$ are representable.

**Theorem (Zarhin's trick).** Let $A$ be an abelian variety over a field. Then $(A \times A^\vee)^4$ has a principal polarization. More generally, the same holds for an abelian scheme $A/S$ with a polarization whose kernel is killed by an integer $n \ge 1$ (Zarhin, 1974).

*Proof.* Let $\lambda$ be a polarization with $\ker \lambda \subseteq A[n]$. Then $n_A = \psi \circ \lambda$ for a unique $\psi : A^\vee \to A$, also $\lambda \psi = n_{A^\vee}$, and $\psi = n \lambda^{-1}$ in $\mathrm{Hom}^0$. By Lagrange's four squares theorem, $n - 1 = a^2 + b^2 + c^2 + d^2$ with $a, b, c, d \in \mathbb{Z}$. Let $\alpha \in M_4(\mathbb{Z})$ be the matrix of left multiplication by the quaternion $a + bi + cj + dk$ in the basis $1, i, j, k$, so $\alpha^T \alpha = \alpha \alpha^T = (n - 1) \cdot 1$. Integer matrices act on $A^4$ and on $(A^\vee)^4$, and commute with $\lambda$ and $\psi$ applied coordinatewise. Let $X = A^4 \times (A^\vee)^4$, so $X^\vee = (A^\vee)^4 \times A^4$, and define $\nu : X \to X^\vee$ and $\nu' : X^\vee \to X$ by the block matrices
$$\nu = \begin{pmatrix} \lambda & \alpha \\ \alpha^T & \psi \end{pmatrix}, \qquad \nu' = \begin{pmatrix} \psi & -\alpha \\ -\alpha^T & \lambda \end{pmatrix}.$$
A direct computation with $\psi\lambda = n$, $\lambda\psi = n$ and $\alpha\alpha^T = \alpha^T\alpha = n - 1$ gives $\nu' \nu = 1$, so $\nu$ is an isomorphism. Since $\lambda$ and $\psi$ are symmetric and the dual of an integer matrix is its transpose, $\nu^\vee = \nu$. Finally, with $w = \begin{pmatrix} 1 & \lambda^{-1}\alpha \\ 0 & 1 \end{pmatrix} \in \mathrm{End}^0(X)$, one checks $\nu = w^\vee \circ \operatorname{diag}(\lambda, \lambda^{-1}) \circ w$ in $\mathrm{Hom}^0(X, X^\vee)$. Here $\lambda^{-1} = (\lambda^{-1})^\vee \lambda \lambda^{-1}$ is positive on $A^\vee$, so $\nu$ is the pullback of a positive symmetric element by a quasi-isogeny. A symmetric homomorphism that is positive in this sense is a polarization (Mumford, Chapter IV, section on the Rosati involution). So $\nu$ is a principal polarization. $\square$

Over $\mathbb{C}$ the last step is the Schur complement: the Hermitian form of $\nu$ is $\begin{pmatrix} H & \alpha \\ \alpha^T & nH^{-1} \end{pmatrix}$, whose Schur complement $nH^{-1} - (n-1)H^{-1} = H^{-1}$ is positive definite. The trick lets one replace $A$ by a principally polarized abelian variety of which $A$ is a direct factor. [The Weil bound](/proof/weil-bound/) uses it as `ZarhinStatement`, and [the Arakelov chapter](/learn/arakelov/) states it next to the Hodge bundle.

**Definition (PEL structure).** Let $B$ be a finite-dimensional semisimple $\mathbb{Q}$-algebra with a positive involution $*$ and $\mathcal{O} \subset B$ an order stable under $*$. An *$\mathcal{O}$-action* on a polarized $(A, \lambda)$ is a ring map $\iota : \mathcal{O} \to \mathrm{End}(A)$ with $\iota(b)^\dagger = \iota(b^*)$. In the *unitary* case, $B = E$ is a CM field and $*$ is complex conjugation. Over $\mathbb{C}$, $\mathcal{O}_E$ acts on $\operatorname{Lie}(A)$, which splits as $\bigoplus_\tau \operatorname{Lie}(A)_\tau$ over the embeddings $\tau : E \to \mathbb{C}$; the dimensions $(p_\tau, q_\tau) = (\dim \operatorname{Lie}(A)_\tau, \dim \operatorname{Lie}(A)_{\bar\tau})$ form the *signature*.

The moduli of such data are the PEL Shimura varieties of [the geometry chapter](/learn/geometry/); the unitary ones of signature $(p, q)$ carry the towers of the proof.

## Néron models and good reduction

Let $R$ be a discrete [[valuation ring|QSX12D8RQM]] with fraction field $K$, residue field $k$ and maximal ideal $(\pi)$. Let $K^s$ be a separable closure of $K$, and fix an extension of the valuation to $K^s$, with decomposition group $D$ and *inertia group* $I \subseteq D$, the kernel of $D \to \mathrm{Aut}(\bar k/k)$. Let $A_K$ be an abelian variety over $K$ of dimension $g$.

**Definition.** A *[[Néron model|K0EQTBRPE3]]* of $A_K$ is a smooth separated group scheme $N$ of finite type over $R$ with an isomorphism $N_K \cong A_K$ and the *Néron mapping property*: for each smooth $R$-scheme $Y$, each $K$-morphism $Y_K \to A_K$ extends uniquely to an $R$-morphism $Y \to N$.

**Theorem (Néron).** Each abelian variety $A_K$ has a Néron model, unique up to unique isomorphism. Its formation commutes with étale base change, for example with passage to the strict henselization of $R$ (Bosch, Lütkebohmert and Raynaud, *Néron Models*, Chapter 1 for the statement, Chapters 3 to 6 for the construction, Chapter 7 for the properties).

**Proposition.** If $A_K$ extends to an abelian scheme $A$ over $R$, then $A$ is the Néron model of $A_K$. In particular such an extension is unique (Bosch, Lütkebohmert and Raynaud, Chapter 1).

**Definition.** Let $N$ be the Néron model and $N_k^0$ the identity component of its special fibre. The *component group* $\Phi = N_k/N_k^0$ is a finite étale group over $k$. Over $\bar k$, Chevalley's theorem gives an exact sequence $0 \to T \times U \to N^0_{\bar k} \to B \to 0$ with $T$ a torus, $U$ unipotent and $B$ an abelian variety, and $\dim T + \dim U + \dim B = g$. Then $A_K$ has

- *good reduction* if $N$ is an abelian scheme, that is, $\dim B = g$;
- *semi-abelian* (or *semistable*) reduction if $U = 0$;
- *purely toric* reduction if $U = 0$ and $B = 0$.

It has *potentially good* (*potentially semi-abelian*) reduction if this holds for $A_L$ over a discrete valuation ring of a finite extension $L/K$ above $R$.

**Example.** For an elliptic curve with split multiplicative reduction, $N_k^0 \cong \mathbb{G}_m$ and $\Phi \cong \mathbb{Z}/v(\Delta)$, where $\Delta$ is the discriminant of a minimal model. With additive reduction, $N_k^0 \cong \mathbb{G}_a$ (Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter IV, Tate's algorithm). See also [the elliptic curves chapter](/learn/elliptic-curves/).

**Theorem (criterion of Néron, Ogg and Shafarevich).** Let $\ell$ be a prime different from the characteristic of $k$. These are equivalent:

1. $A_K$ has good reduction;
2. $I$ acts trivially on $A_K[m](K^s)$ for each $m$ prime to the characteristic of $k$;
3. $I$ acts trivially on $A_K[m](K^s)$ for infinitely many such $m$;
4. $I$ acts trivially on $T_\ell(A_K)$.

(Serre and Tate, *Good reduction of abelian varieties*, Ann. of Math. 88 (1968), Theorem 1; Bosch, Lütkebohmert and Raynaud, Chapter 7, section on the criterion of Néron, Ogg and Shafarevich.)

*Proof of $1 \Rightarrow 2$.* We may replace $R$ by its strict henselization, which does not change $I$ and has separably closed residue field. If $A$ is an abelian scheme over $R$ and $m$ is invertible in $R$, then $A[m]$ is finite étale over the henselian $R$. So $A[m](K^s) = A[m](R) \to A[m](\bar k)$ is a bijection, and each point of $A[m](K^s)$ is defined over $K$. $\square$

The converse uses the Néron model: if $I$ fixes $A[m]$ for large $m$, the points extend to $N$ by the mapping property, and their reductions give too many $m$-torsion points in $N^0_k$ unless $T = U = 0$.

**Theorem (potential good reduction).** $A_K$ has potentially good reduction if and only if the image of $I$ in $\mathrm{Aut}(T_\ell A_K)$ is finite (Serre and Tate, section on potential good reduction).

**Theorem (Grothendieck).** Let $\ell$ be a prime different from the characteristic of $k$.

1. $A_K$ has semi-abelian reduction if and only if each $\sigma \in I$ acts unipotently on $T_\ell(A_K)$, and then $(\sigma - 1)^2 = 0$ on $T_\ell(A_K)$ for each $\sigma \in I$ (SGA 7 I, Exposé IX, Proposition 3.5).
2. (*Semistable reduction theorem.*) There is a finite separable extension $L/K$ such that $A_L$ has semi-abelian reduction at each place of $L$ above $R$ (SGA 7 I, Exposé IX, Théorème 3.6).

**Theorem (Serre and Tate, potential good reduction of CM abelian varieties).** Let $A$ be an abelian variety over a number field $F$ with complex multiplication over $F$: a commutative semisimple subalgebra of $\mathrm{End}^0(A)$ of dimension $2g$ over $\mathbb{Q}$. Then $A$ has potentially good reduction at each finite place of $F$ (Serre and Tate, section on complex multiplication).

These three results form `SerreTateGoodReductionSt`, the largest field of [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/), and the semistable reduction theorem is the field `SemistableReductionSt` of [the bundle of published arithmetic results](/step/published-results-arithmetic/).

**Proposition.** Let $G$ be a semi-abelian scheme over $R$ (defined in the next sections) whose generic fibre is the abelian variety $A_K$. Then $G$ is the identity component of the Néron model of $A_K$ (Bosch, Lütkebohmert and Raynaud, Chapter 7, section on semi-abelian reduction).

**Theorem (extension of homomorphisms).** Let $S$ be a normal noetherian scheme, $U \subseteq S$ a dense open subscheme, and $G$, $H$ semi-abelian schemes over $S$. Each homomorphism $G_U \to H_U$ extends uniquely to a homomorphism $G \to H$ (Faltings and Chai, Chapter I, Section 2).

This is the statement `SemiAbelianHomExtension` of [the bundle of published arithmetic results](/step/published-results-arithmetic/).

## Siegel moduli schemes and level structures

Fix $g \ge 1$ and $n \ge 1$. Let $\zeta_n = e^{2\pi i/n}$ and $\Lambda_n = \mathbb{Z}[\zeta_n, 1/n]$. On $(\mathbb{Z}/n)^{2g}$ let $\langle x, y \rangle = x^T J y$ with $J = \begin{pmatrix} 0 & 1_g \\ -1_g & 0 \end{pmatrix}$, the standard [[symplectic group|X12FS2JAP0]] form.

**Definition.** Let $S$ be a $\Lambda_n$-scheme and $(A, \lambda)$ a principally polarized abelian scheme of relative dimension $g$ over $S$. A *symplectic level-$n$ structure* is an isomorphism of group schemes $\eta : (\mathbb{Z}/n)^{2g}_S \to A[n]$ with $e^\lambda_n(\eta(x), \eta(y)) = \zeta_n^{\langle x, y \rangle}$ for all $x, y$. The *Siegel moduli functor* $\mathcal{A}_{g,n}$ sends $S$ to the set of isomorphism classes of triples $(A, \lambda, \eta)$ over $S$.

**Theorem (Mumford).** Let $n \ge 3$. The functor $\mathcal{A}_{g,n}$ is represented by a quasi-projective scheme $\mathcal{A}_{g,n}$ over $\Lambda_n$ with a universal triple $(\mathcal{X}, \lambda, \eta)$. It is smooth over $\Lambda_n$ of relative dimension $g(g+1)/2$ (Mumford, Fogarty and Kirwan, *Geometric Invariant Theory*, Chapter 7, for representability; Faltings and Chai, Chapter I, for smoothness).

By Serre's lemma, a triple with $n \ge 3$ has no automorphism other than $1$; this is what makes the functor representable by a scheme rather than a stack. The development calls such a family a *Siegel family* of genus $g$ and level $n$. This Siegel moduli scheme with level structure is the base of `SiegelToroidalIntegral` in [the literature chapter](/proof/literature/).

**Theorem (deformations).** Let $k$ be a perfect field and $(A_0, \lambda_0)$ a principally polarized abelian variety over $k$. The deformations of $(A_0, \lambda_0)$ over local Artin rings with residue field $k$ are unobstructed, and the universal deformation ring is a power series ring in $g(g+1)/2$ variables over the Witt vectors $W(k)$. The tangent space of the deformations of $A_0$ alone is $\operatorname{Lie}(A_0) \otimes \operatorname{Lie}(A_0^\vee)$, of dimension $g^2$, and $\lambda_0$ cuts it down to $\operatorname{Sym}^2 \operatorname{Lie}(A_0)$ (Oort, *Finite group schemes, local moduli for abelian varieties, and lifting problems*, Compositio Math. 23, 1971; Faltings and Chai, Chapter I).

So the cotangent space of $\mathcal{A}_{g,n}$ at a point is $\operatorname{Sym}^2 \omega_{A_0}$, which the Kodaira-Spencer isomorphism below makes global. For ordinary $A_0$ in characteristic $p$, the Serre-Tate theorem makes the deformation space a formal torus of dimension $g(g+1)/2$ (Katz, *Serre-Tate local moduli*).

### The complex uniformization

The group $\mathrm{Sp}_{2g}(\mathbb{R})$ acts on $\mathbb{H}_g$ by $\gamma Z = (aZ + b)(cZ + d)^{-1}$ for $\gamma = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$. Let $\Gamma(n) = \ker(\mathrm{Sp}_{2g}(\mathbb{Z}) \to \mathrm{Sp}_{2g}(\mathbb{Z}/n))$.

**Theorem.** Each principally polarized abelian variety of dimension $g$ over $\mathbb{C}$ is isomorphic to some $A_Z$, and $A_Z \cong A_{Z'}$ as polarized abelian varieties if and only if $Z' = \gamma Z$ for some $\gamma \in \mathrm{Sp}_{2g}(\mathbb{Z})$. For the embedding $\Lambda_n \to \mathbb{C}$ with $\zeta_n \mapsto e^{2\pi i/n}$, $\mathcal{A}_{g,n}(\mathbb{C}) \cong \Gamma(n) \backslash \mathbb{H}_g$, a connected complex manifold for $n \ge 3$ (Birkenhake and Lange, *Complex Abelian Varieties*, Chapter 8).

**Definition.** Let $\Gamma \subseteq \mathrm{Sp}_{2g}(\mathbb{Z})$ be a subgroup of finite index and $k \in \mathbb{Z}$. A *Siegel modular form* of weight $k$ for $\Gamma$ is a holomorphic $f : \mathbb{H}_g \to \mathbb{C}$ with $f(\gamma Z) = \det(cZ + d)^k f(Z)$ for each $\gamma \in \Gamma$, and, if $g = 1$, bounded on $\{\operatorname{Im} Z \ge 1\}$ after each transformation by $\mathrm{SL}_2(\mathbb{Z})$. They form a space $M_k(\Gamma)$.

For $\Gamma = \Gamma(n)$, $f(Z + nb) = f(Z)$ for each integral symmetric $b$, so $f$ has a *Fourier expansion*
$$f(Z) = \sum_T a(T) \exp\big(2\pi i \operatorname{tr}(TZ)/n\big),$$
over the half-integral symmetric matrices $T$ (integer diagonal entries, off-diagonal entries in $\tfrac12 \mathbb{Z}$).

**Theorem (Koecher principle).** Let $g \ge 2$ and let $f$ be holomorphic on $\mathbb{H}_g$ with the transformation law of weight $k$ for $\Gamma$. Then $a(T) = 0$ unless $T$ is positive semidefinite. So the condition at the cusps is automatic for $g \ge 2$ (Faltings and Chai, Chapter V, in algebraic form).

**Definition.** The *Siegel $\Phi$-operator* is $(\Phi f)(Z') = \lim_{t \to +\infty} f\begin{pmatrix} Z' & 0 \\ 0 & it \end{pmatrix}$ for $Z' \in \mathbb{H}_{g-1}$. A modular form $f$ is a *cusp form* if $\Phi(f|_k \gamma) = 0$ for each $\gamma \in \mathrm{Sp}_{2g}(\mathbb{Z})$, where $(f|_k\gamma)(Z) = \det(cZ + d)^{-k} f(\gamma Z)$. Equivalently, for each $\gamma$, the coefficients of $f|_k\gamma$ vanish unless $T$ is positive definite. For $g = 1$ these are the [[cusp forms|A50Y012RBP]] of [the automorphic forms chapter](/learn/automorphic-forms/).

**Proposition.** Let $\mathbb{E}$ be the Hodge bundle of the universal abelian scheme over $\Gamma(n)\backslash\mathbb{H}_g$ and $\omega = \det \mathbb{E}$. The forms $dv_1, \dots, dv_g$ on $\mathbb{C}^g$ trivialize $\mathbb{E}$ over $\mathbb{H}_g$, and in this trivialization a section of $\omega^{\otimes k}$ is a function $f$ with $f(\gamma Z) = \det(cZ + d)^k f(Z)$. So for $g \ge 2$, $H^0(\mathcal{A}_{g,n,\mathbb{C}}, \omega^{\otimes k}) = M_k(\Gamma(n))$ (Faltings and Chai, Chapter V).

So modular forms are defined over $\Lambda_n$, as sections of powers of the Hodge line bundle; this is the algebraic definition the development uses.

### The Kodaira-Spencer map

**Definition.** Let $S$ be smooth over a base $S_0$ and $f : A \to S$ an abelian scheme. The *[[Kodaira-Spencer map|EWZ1G10MAY]]* of $A/S$ is the composite
$$\omega_{A/S} \to H^1_{\mathrm{dR}}(A/S) \xrightarrow{\nabla} H^1_{\mathrm{dR}}(A/S) \otimes \Omega^1_{S/S_0} \to \operatorname{Lie}(A^\vee/S) \otimes \Omega^1_{S/S_0},$$
with $\nabla$ the Gauss-Manin connection. By adjunction it is a map $\kappa : \omega_{A/S} \otimes \omega_{A^\vee/S} \to \Omega^1_{S/S_0}$. By Griffiths transversality ([the geometry chapter](/learn/geometry/)) it is $\mathcal{O}_S$-linear.

If $\lambda$ is a principal polarization, $\lambda^*$ identifies $\omega_{A^\vee}$ with $\omega_A$, and $\kappa$ becomes symmetric, so it factors through $\operatorname{Sym}^2 \omega_{A/S} \to \Omega^1_{S/S_0}$.

**Theorem (Kodaira-Spencer isomorphism).** For the universal family over $\mathcal{A}_{g,n}$, $n \ge 3$, the map $\kappa : \operatorname{Sym}^2 \mathbb{E} \to \Omega^1_{\mathcal{A}_{g,n}/\Lambda_n}$ is an isomorphism, with $\mathbb{E} = \omega_{\mathcal{X}/\mathcal{A}_{g,n}}$ (Faltings and Chai, Chapter III, section on the Kodaira-Spencer map).

**Corollary.** The canonical bundle of $\mathcal{A}_{g,n}$ over $\Lambda_n$ is $\omega^{\otimes (g+1)}$, with $\omega = \det \mathbb{E}$.

*Proof.* If $\mathbb{E}$ has Chern roots $x_1, \dots, x_g$, then $\operatorname{Sym}^2 \mathbb{E}$ has the roots $x_i + x_j$ with $i \le j$, whose sum is $(g + 1) \sum_i x_i$. More directly, $\det \operatorname{Sym}^2 E \cong (\det E)^{\otimes (g+1)}$ for each locally free $E$ of rank $g$. $\square$

**Example.** For $g = 1$, $\omega^{\otimes 2} \cong \Omega^1$ on the modular curve $Y(n)$, and a modular form $f$ of weight $2$ corresponds to the differential $f(\tau)\, d\tau$.

**Remark (PEL type).** For a family with an $\mathcal{O}$-action and polarization, the Kodaira-Spencer map factors through the quotient of $\omega_A \otimes \omega_{A^\vee}$ by the relations of symmetry and of $\mathcal{O}$-linearity, and on the PEL moduli space this quotient is isomorphic to $\Omega^1$ (Lan, *Arithmetic Compactifications of PEL-Type Shimura Varieties*, the chapter on deformation theory). In the unitary case of signature $(p, q)$ over a CM field $E$, the moduli space has relative dimension $\tfrac{[E:\mathbb{Q}]}{2} pq$.

The record `KSAll` of [the Galois row](/proof/galois-row/) holds six statements about the Kodaira-Spencer map, and the log form below is the last clause of `ToroidalForFanKS` in [the literature chapter](/proof/literature/).

## Semi-abelian degenerations and Mumford's construction

**Definition.** A *torus* over $S$ is a group scheme that becomes isomorphic to $\mathbb{G}_m^r$ locally for the étale topology. It is *split* if $T \cong \mathrm{Spec}\, \mathcal{O}_S[X]$ for a free abelian group $X$ of rank $r$, its *character group*. A *semi-abelian scheme* over $S$ is a smooth separated commutative group scheme $G$ of finite type over $S$ whose fibres $G_s$ are extensions $0 \to T_s \to G_s \to B_s \to 0$ of an abelian variety by a torus. The *abelian locus* is the open set of $s$ where $T_s = 0$.

The identity component of the Néron model in the case of semi-abelian reduction is a semi-abelian scheme. The simplest degeneration is the Tate curve.

**Example (the Tate curve).** Let $K$ be complete for a discrete valuation and $q \in K^\times$ with $|q| < 1$. Let
$$a_4(q) = -5 \sum_{m \ge 1} \sigma_3(m) q^m, \qquad a_6(q) = -\frac{1}{12} \sum_{m \ge 1} \big(5\sigma_3(m) + 7\sigma_5(m)\big) q^m.$$
The curve $E_q : y^2 + xy = x^3 + a_4(q) x + a_6(q)$ is an elliptic curve over $K$ with $j(E_q) = q^{-1} + 744 + 196884\, q + \cdots$, and there is a Galois-equivariant isomorphism $\bar K^\times/q^{\mathbb{Z}} \cong E_q(\bar K)$. Each elliptic curve over $K$ with $|j| > 1$ is isomorphic to some $E_q$ over an extension of degree at most $2$ (Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter V). The same equation over $\mathbb{Z}[\![q]\!]$ defines a curve whose smooth locus is a semi-abelian scheme with fibre $\mathbb{G}_m$ at $q = 0$. Over $\mathbb{C}$, $z \mapsto e^{2\pi i z}$ gives $\mathbb{C}/(\mathbb{Z} + \tau\mathbb{Z}) \cong \mathbb{C}^\times/q^{\mathbb{Z}}$ with $q = e^{2\pi i \tau}$.

**Example (totally degenerate case).** Let $K$ be as above with valuation $v$, and $q = (q_{ij})$ a symmetric $g \times g$ matrix with entries in $K^\times$ such that $\sum_{i,j} x_i x_j v(q_{ij}) > 0$ for each $0 \ne x \in \mathbb{Z}^g$. Let $\iota : \mathbb{Z}^g \to (K^\times)^g$ be $\iota(x)_i = \prod_j q_{ij}^{x_j}$. The rigid analytic quotient $(K^\times)^g/\iota(\mathbb{Z}^g)$ is the analytification of an abelian variety over $K$ with purely toric reduction (Mumford, *An analytic construction of degenerating abelian varieties over complete rings*, Compositio Math. 24, 1972). Over $\mathbb{C}$, with $q_{ij} = e^{2\pi i Z_{ij}}$, the same quotient is $A_Z$, and the positivity condition is the analogue of $\operatorname{Im} Z > 0$.

Mumford's construction does this over complete rings of higher dimension, with an abelian part. We state it in the principally polarized case, following Faltings and Chai.

**Setting.** Let $R$ be an excellent normal noetherian domain, complete for the $I$-adic topology of an ideal $I$ with $\sqrt{I} = I$. Let $K$ be its fraction field, $S = \mathrm{Spec}\, R$ and $S_0 = \mathrm{Spec}\, R/I$. Let $\mathrm{DEG}(R, I)$ be the category of pairs $(G, \lambda)$ of a semi-abelian scheme $G$ over $S$ whose generic fibre $G_K$ is an abelian variety with a principal polarization $\lambda$, such that $G \times_S S_0$ is an extension of an abelian scheme by a split torus.

**Theorem (Raynaud extension).** Let $(G, \lambda) \in \mathrm{DEG}(R, I)$. The formal completion of $G$ along $S_0$ is an extension of a formal abelian scheme by a formal split torus, and it algebraizes uniquely to an extension
$$0 \to T \to \widetilde{G} \to B \to 0$$
over $S$, with $B$ an abelian scheme and $T$ a split torus with character group $X$. The polarization $\lambda$ induces a principal polarization $\lambda_B$ of $B$ (Faltings and Chai, Chapter II).

The extension $\widetilde{G}$ is given by a homomorphism $c : X \to B^\vee(S)$: for $\chi \in X$, the pushout of $\widetilde{G}$ along $\chi : T \to \mathbb{G}_m$ is the $\mathbb{G}_m$-torsor of the line bundle that $c(\chi)$ classifies. Let $c^\vee = \lambda_B^{-1} \circ c : X \to B(S)$.

**Definition (degeneration data).** *Principally polarized degeneration data* over $(R, I)$ consist of

1. an abelian scheme $B$ over $S$ with a principal polarization $\lambda_B$;
2. a free abelian group $X$ of rank $r$ with $g = \dim B + r$, and a homomorphism $c : X \to B^\vee(S)$, which defines $\widetilde{G}$;
3. a homomorphism $\iota : X \to \widetilde{G}(K)$ that lifts $c^\vee$, the *periods*. Equivalently, a trivialization $\tau$ over $K$ of the pullback of $P_B^{-1}$ along $c^\vee \times c : X \times X \to B \times B^\vee$, compatible with the biextension structure and symmetric;

subject to *positivity*: for each $x \ne 0$ in $X$, $\tau(x, x)$ extends to a section over $S$ that vanishes modulo $I$, and for each $m \ge 0$, $\tau(x, x) \in I^m$ for all but finitely many $x$.

With $B = 0$ and $R$ a complete discrete valuation ring, $\tau$ is the matrix $(q_{ij})$ of the totally degenerate example.

**Theorem (Mumford; Faltings and Chai).** In the setting above, the construction of the Raynaud extension and the periods defines an equivalence from $\mathrm{DEG}(R, I)$ to the category of principally polarized degeneration data over $(R, I)$. The inverse is *Mumford's construction*: from the data it builds a relatively complete model of $\widetilde{G}$ with an action of $X$, and $G$ is the algebraization of its formal quotient by $X$; the generic fibre $G_K$ is the quotient "$\widetilde{G}_K/\iota(X)$" (Mumford, Compositio Math. 24, 1972; Faltings and Chai, Chapter II for the functor to data, Chapter III for the construction and the equivalence).

**Remark.** Let $R$ be a complete discrete valuation ring with valuation $v$. Then $b(x, y) = v(\tau(x, y))$ is a symmetric positive definite bilinear form on $X$. This *monodromy pairing* describes the action of inertia on $T_\ell(G_K)$, and the torsion of $G_K$ fits into $0 \to \widetilde{G}[m]_K \to G_K[m] \to \tfrac1m X/X \to 0$. In general, at a point of a regular base where the boundary is $t_1 \cdots t_m = 0$, the periods are monomials in the $t_i$, and their exponents give a cone of positive semidefinite forms on $X$. These cones are the subject of the next section.

**Remark.** To keep an ample cubical line bundle $L$ on $G_K$ instead of the polarization, one adds a trivialization $\psi$ of $\iota^*\widetilde{L}^{-1}$ whose associated bilinear form is $\tau$. The development uses data of this form, with one lattice: an abelian scheme with an ample, rigidified, symmetric, cubical line bundle, a lattice $X$, a map $c : X \to B(R)$ and the trivializations $\psi(\chi)$. Its theorem `has_of_base` builds the semi-abelian scheme and the uniformization over a complete normal local domain of characteristic $0$.

## Toroidal and minimal compactifications

Fix $g \ge 1$ and $n \ge 3$, and let $X = \mathbb{Z}^g$. A compactification of $\mathcal{A}_{g,n}$ must add semi-abelian degenerations, and the choices at the boundary are recorded by cones of quadratic forms, through [[toric varieties|YWB981MEF2]].

**Definition.** Let $\mathrm{B}(X)$ be the lattice of integral symmetric bilinear forms on $X$ and $\mathrm{B}(X)_\mathbb{R} = \mathrm{B}(X) \otimes \mathbb{R}$. Let $C(X) \subset \mathrm{B}(X)_\mathbb{R}$ be the cone of positive semidefinite forms whose radical is defined over $\mathbb{Q}$. The group $\mathrm{GL}(X)$ acts on it. A *rational polyhedral cone* is a set $\{\sum_i a_i b_i : a_i > 0\}$ for finitely many $b_i \in \mathrm{B}(X)$.

**Definition.** A *$\Gamma$-admissible cone decomposition* of $C(X)$, for a subgroup $\Gamma \subseteq \mathrm{GL}(X)$ of finite index, is a set $\Sigma$ of rational polyhedral cones such that $C(X)$ is their disjoint union, the closure of each cone is a union of cones of $\Sigma$ (its faces), $\Sigma$ is stable under $\Gamma$, and $\Sigma/\Gamma$ is finite. It is *smooth* if each cone is spanned by part of a basis of the lattice. A *polarization function* for $\Sigma$ is a $\Gamma$-invariant continuous function $\varphi : C(X) \to \mathbb{R}_{\ge 0}$, linear on each cone of $\Sigma$, with integer values on integral points, whose maximal domains of linearity are exactly the closures of the top-dimensional cones of $\Sigma$, and which is convex in the sense of Faltings and Chai. Then $\Sigma$ is *projective*.

**Example.** For $g = 1$, $C(X) = \mathbb{R}_{\ge 0}$, and the only decomposition is $\{\{0\}, \mathbb{R}_{>0}\}$. For each $g$, Voronoi's perfect cone decomposition is $\mathrm{GL}(X)$-admissible, and smooth projective admissible refinements exist for each $\Gamma$ (Ash, Mumford, Rapoport and Tai, *Smooth Compactification of Locally Symmetric Varieties*; Faltings and Chai, Chapter IV).

For level $n$ one uses the same cones with the lattice $\tfrac1n \mathrm{B}(X)$, since the periods at level $n$ are $n$-th roots of the periods at level $1$.

**Theorem (toroidal compactification; Faltings and Chai, Theorem IV.5.7).** Let $n \ge 3$ and let $\Sigma$ be a smooth admissible cone decomposition for level $n$. There is an algebraic space $\overline{\mathcal{A}}_{g,n} = \overline{\mathcal{A}}_{g,n,\Sigma}$, proper and smooth over $\Lambda_n$, that contains $\mathcal{A}_{g,n}$ as a dense open subspace, such that:

1. the boundary $D = \overline{\mathcal{A}}_{g,n} \setminus \mathcal{A}_{g,n}$ is a divisor with normal crossings relative to $\Lambda_n$;
2. the universal abelian scheme extends to a semi-abelian scheme $G$ over $\overline{\mathcal{A}}_{g,n}$ whose abelian locus is $\mathcal{A}_{g,n}$, and the level structure and polarization extend in the sense of degeneration data;
3. the boundary is stratified by the $\Gamma(n)$-orbits of cones of $\Sigma$, with their rational boundary components; the formal completion along a stratum is described by Mumford's construction over the completion of the toric variety of the cone, over an abelian scheme of smaller dimension;
4. the Kodaira-Spencer map extends to an isomorphism $\operatorname{Sym}^2 \omega_G \cong \Omega^1_{\overline{\mathcal{A}}_{g,n}/\Lambda_n}(\log D)$.

If $\Sigma$ has a polarization function, $\overline{\mathcal{A}}_{g,n}$ is a projective scheme over $\Lambda_n$; then for suitable $k$ the line bundle $\omega^{\otimes k} \otimes \mathcal{O}(-D_\varphi)$ is ample, where $D_\varphi$ is the boundary divisor whose multiplicity along the component of a ray is $\varphi$ at the primitive vector of that ray (Faltings and Chai, Chapter V).

So at a point $x$ of the boundary there is a complete regular local ring $\widehat{\mathcal{O}}_x$ with parameters $t_1, \dots, t_m$, the boundary is $t_1 \cdots t_m = 0$, and $G$ over it comes from degeneration data whose periods are monomials in the $t_i$ with exponents in a cone of $\Sigma$. These are the *polarized charts* of the statement `SiegelToroidalIntegral` in [the literature chapter](/proof/literature/); the unitary analogue `ToroidalForFanKS` is due to Lan.

**Example.** For $g = 1$, $\overline{\mathcal{A}}_{1,n}$ is the modular curve $X(n)$ over $\Lambda_n$, and $D$ is the set of cusps. Near each cusp, $G$ is the Tate curve over $\Lambda_n[\![q^{1/n}]\!]$, and $\omega^{\otimes 2} \cong \Omega^1(\log D)$.

**Theorem (minimal compactification).** Let $\overline{\mathcal{A}}_{g,n}$ be a toroidal compactification and $\omega$ the Hodge line bundle of $G$. Then
$$\mathcal{A}^*_{g,n} = \operatorname{Proj} \bigoplus_{k \ge 0} H^0(\overline{\mathcal{A}}_{g,n}, \omega^{\otimes k})$$
is a normal projective scheme over $\Lambda_n$ that does not depend on $\Sigma$. It contains $\mathcal{A}_{g,n}$ as a dense open subscheme, $\omega^{\otimes m}$ descends to an ample line bundle on it for some $m \ge 1$, and as a set it is a disjoint union of copies of $\mathcal{A}_{g',n}$ for $0 \le g' \le g$. There is a proper map $\overline{\mathcal{A}}_{g,n} \to \mathcal{A}^*_{g,n}$ that is the identity on $\mathcal{A}_{g,n}$ (Faltings and Chai, Chapter V). Over $\mathbb{C}$ it is the Satake and Baily-Borel compactification (Baily and Borel, *Compactification of arithmetic quotients of bounded symmetric domains*, Ann. of Math. 84, 1966).

**Theorem (Koecher principle, algebraic form).** For $g \ge 2$, restriction gives $H^0(\overline{\mathcal{A}}_{g,n}, \omega^{\otimes k}) = H^0(\mathcal{A}_{g,n}, \omega^{\otimes k})$ (Faltings and Chai, Chapter V).

The minimal compactification and Koecher principle together show that a power of the Hodge line bundle is globally generated on $\overline{\mathcal{A}}_{g,n}$, as `SiegelToroidalIntegral` in [the literature chapter](/proof/literature/) states.

**Definition.** The module of *cusp forms* of weight $k$ is $S_k = H^0(\overline{\mathcal{A}}_{g,n}, \omega^{\otimes k}(-D))$. Over $\mathbb{C}$ these are the cusp forms of the last section: at a boundary chart, $\exp(2\pi i \operatorname{tr}(TZ)/n)$ is a monomial in the $t_i$ whose exponents are the values of $T$ on the rays of the cone, and these are all positive exactly when $T$ is positive definite.

**Corollary.** $H^0(\overline{\mathcal{A}}_{g,n}, \Omega^{g(g+1)/2}) \cong S_{g+1}$. So the holomorphic forms of top degree on a smooth toroidal compactification are the cusp forms of weight $g + 1$.

*Proof.* By part 4 of the theorem and the corollary of the last section, $\Omega^{g(g+1)/2}(\log D) = \det \Omega^1(\log D) \cong \omega^{\otimes (g+1)}$. The canonical bundle is $\Omega^{g(g+1)/2} = \Omega^{g(g+1)/2}(\log D) \otimes \mathcal{O}(-D)$. $\square$

**Remark.** Since $\omega$ is the pullback of an ample bundle from $\mathcal{A}^*_{g,n}$ up to a power, it is nef on $\overline{\mathcal{A}}_{g,n}$: its degree on each complete curve is $\ge 0$. The development uses a finer statement, `SemiAbelianLieSeminegative`: over a smooth projective curve in characteristic $0$, each subbundle of the Lie algebra of a semi-abelian scheme has degree $\le 0$. [The Arakelov chapter](/learn/arakelov/) states it, and `SlopeBoundSt` of [the Weil bound](/proof/weil-bound/) is its arithmetic analogue.

### Mumford's proportionality theorem

Let $\Gamma \subseteq \mathrm{Sp}_{2g}(\mathbb{Z})$ be a neat subgroup of finite index, for example $\Gamma(n)$ with $n \ge 3$. Let $Y = \Gamma\backslash\mathbb{H}_g$, of dimension $N = g(g+1)/2$, and $\overline{Y}$ a smooth projective toroidal compactification with boundary $D$. The *compact dual* of $\mathbb{H}_g$ is the Lagrangian Grassmannian $\check{Y}$ of $g$-dimensional isotropic subspaces of $\mathbb{C}^{2g}$; the Borel embedding sends $Z$ to the position of $\omega_{A_Z}$ inside $H^1_{\mathrm{dR}}(A_Z) \cong \mathbb{C}^{2g}$.

**Definition.** An *automorphic vector bundle* on $Y$ is the descent $\mathcal{E}$ to $Y$ of the restriction to $\mathbb{H}_g$ of an $\mathrm{Sp}_{2g}(\mathbb{C})$-equivariant vector bundle $\check{\mathcal{E}}$ on $\check{Y}$. A $\mathrm{U}(g)$-invariant [[Hermitian metric|Q6X6W2N29G]] on the fibre at the base point gives an invariant metric $h$ on $\mathcal{E}$. The bundles $\mathbb{E}$, $\omega$ and $\Omega^1_Y$ are automorphic.

**Theorem (Mumford).** (1) There is a unique extension $\overline{\mathcal{E}}$ of $\mathcal{E}$ to $\overline{Y}$ in which $h$ is a *good* metric: near $D$, $h$, $h^{-1}$ and the connection and curvature forms have at most logarithmic growth in the sense of Mumford. The Chern forms of $h$ are integrable and represent the [[Chern classes|PAD37GKDPD]] of $\overline{\mathcal{E}}$ as currents. (2) (*Proportionality.*) For each polynomial $P$ of weighted degree $N$ in the Chern classes,
$$P(c(\overline{\mathcal{E}}))[\overline{Y}] = (-1)^N\, v(\Gamma)\, P(c(\check{\mathcal{E}}))[\check{Y}],$$
where $v(\Gamma)$ is the ratio of the volume of $Y$ to the volume of $\check{Y}$, for invariant metrics on $\mathbb{H}_g$ and on $\check{Y}$ that agree at the base point (Mumford, *Hirzebruch's proportionality theorem in the non-compact case*, Invent. Math. 42, 1977).

The extension $\overline{\mathcal{E}}$ is the *canonical extension*. For $\mathbb{E}$ it is the Hodge bundle of the semi-abelian scheme $G$, and for $\Omega^1_Y$ it is $\Omega^1_{\overline{Y}}(\log D)$.

**Example.** Let $g = 1$ and $\Gamma = \Gamma(n)$, $n \ge 3$, with $\mu_n = [\mathrm{PSL}_2(\mathbb{Z}) : \Gamma(n)/\{\pm 1\}] = \tfrac{n^3}{2} \prod_{p \mid n} (1 - p^{-2})$. The modular curve $X(n)$ has $\mu_n/n$ cusps. The discriminant $\Delta \in H^0(X(n), \omega^{\otimes 12})$ has no zero on $Y(n)$ and a zero of order $n$ in the parameter $q^{1/n}$ at each cusp, so $\deg \omega = \mu_n/12$. On the other side, $\check{Y} = \mathbb{P}^1$ and $\omega$ corresponds to $\mathcal{O}(-1)$. The hyperbolic area of $Y(n)$ for curvature $-1$ is $\mu_n \pi/3$, and the area of $\mathbb{P}^1$ for curvature $+1$ is $4\pi$, so $v(\Gamma) = \mu_n/12$ and the theorem gives $\deg \omega = (-1)^1 \cdot \tfrac{\mu_n}{12} \cdot (-1)$. For $n = 3$: $\mu_3 = 12$, $\deg \omega = 1$, and $2 \deg \omega = 2 = -2 + 4$, the degree of $\Omega^1(\log D)$ on a curve of genus $0$ with $4$ cusps.

In the development, a form of Mumford proportionality for toroidal flag spaces of unitary Shimura varieties, `GoodChernWeil`, is the field `p16` of [the bundle of published arithmetic results](/step/published-results-arithmetic/). It turns self-intersection numbers of automorphic line bundles into a covolume times a flag degree, the volume term of [the Weil bound](/proof/weil-bound/).

## Notes and references

- D. Mumford, *Abelian Varieties*. Chapter I for complex tori, the Appell-Humbert theorem and the dual torus. Chapter II for rigidity, the theorem of the cube, the structure of $A[n]$ and the dual in characteristic $0$. Chapter III for quotients by finite group schemes, the dual in any characteristic, Cartier duality of kernels and the Riemann-Roch theorem. Chapter IV for $\mathrm{Hom}(A, B)$ and Tate modules, the Weil pairing, the Rosati involution and Albert's classification. Read Chapters II and III first.
- J. S. Milne, *Abelian varieties*, in G. Cornell and J. H. Silverman (eds.), *Arithmetic Geometry*, Springer 1986. A short account over arbitrary fields.
- C. Birkenhake and H. Lange, *Complex Abelian Varieties*, Chapter 2 (line bundles on complex tori) and Chapter 8 (moduli and the Siegel upper half space).
- D. Mumford, J. Fogarty and F. Kirwan, *Geometric Invariant Theory*, Chapter 6 (abelian schemes and rigidity) and Chapter 7 (the moduli schemes of polarized abelian schemes with level structure).
- S. Bosch, W. Lütkebohmert and M. Raynaud, *Néron Models*, Chapter 1 for the definition and the existence theorem, Chapter 7 for semi-abelian reduction and the criterion of Néron, Ogg and Shafarevich.
- J.-P. Serre and J. Tate, *Good reduction of abelian varieties*, Ann. of Math. 88 (1968). Theorem 1 is the criterion; the later sections treat potential good reduction and complex multiplication.
- A. Grothendieck, *Modèles de Néron et monodromie*, SGA 7 I, Exposé IX, Lecture Notes in Math. 288. Proposition 3.5 and Théorème 3.6 for semi-abelian reduction; the exposé also gives the monodromy pairing.
- J. H. Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter IV (Néron models and Tate's algorithm) and Chapter V (the Tate curve).
- N. Katz, *Serre-Tate local moduli*, Lecture Notes in Math. 868, and F. Oort, *Finite group schemes, local moduli for abelian varieties, and lifting problems*, Compositio Math. 23 (1971), for deformations.
- Yu. G. Zarhin, his papers of 1974 on endomorphisms of abelian varieties in characteristic $p$, the source of the trick.
- D. Mumford, *An analytic construction of degenerating abelian varieties over complete rings*, Compositio Math. 24 (1972). The original form of Mumford's construction.
- G. Faltings and C.-L. Chai, *Degeneration of Abelian Varieties*, Springer 1990. Chapter I for abelian schemes, duality, extension of homomorphisms and the moduli schemes. Chapter II for the Raynaud extension and degeneration data. Chapter III for Mumford's construction and the Kodaira-Spencer map. Chapter IV for the arithmetic toroidal compactifications, Theorem IV.5.7. Chapter V for modular forms, the Koecher principle and the minimal compactification. This is the main source for the last three sections.
- C.-L. Chai, *Compactification of Siegel Moduli Schemes*, London Math. Soc. Lecture Note Series 107. An earlier account of the compactifications.
- A. Ash, D. Mumford, M. Rapoport and Y.-S. Tai, *Smooth Compactification of Locally Symmetric Varieties*. Cone decompositions and toroidal compactifications over $\mathbb{C}$.
- W. Baily and A. Borel, *Compactification of arithmetic quotients of bounded symmetric domains*, Ann. of Math. 84 (1966).
- D. Mumford, *Hirzebruch's proportionality theorem in the non-compact case*, Invent. Math. 42 (1977). Good metrics, canonical extensions and proportionality.
- K.-W. Lan, *Arithmetic Compactifications of PEL-Type Shimura Varieties*, London Math. Soc. Monographs 36, Princeton 2013. The PEL and unitary versions of the moduli spaces, the Kodaira-Spencer isomorphism and the toroidal and minimal compactifications that the development uses for unitary Shimura varieties.
- L. Breen, *Fonctions thêta et théorème du cube*, Lecture Notes in Math. 980, and L. Moret-Bailly, *Pinceaux de variétés abéliennes*, Astérisque 129, for cubical structures over a base.
