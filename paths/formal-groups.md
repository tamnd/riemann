A formal group law is a group law given by power series. A $p$-divisible group is a tower of finite group schemes $G[p^n]$, and its connected part is a formal group. Over the ring of integers of $\mathbb{C}_p$ such groups are described by linear algebra over Fontaine's ring $A_{\mathrm{inf}}$. The proof uses formal groups inside its proof of a prismatic Dieudonné statement, and it uses Grothendieck-Messing deformation theory and the Hodge-Tate sequence as named inputs.

## Formal group laws

Let $R$ be a commutative ring, and write $X = (X_1, \dots, X_n)$ and $Y = (Y_1, \dots, Y_n)$.

**Definition.** A commutative *formal group law* of dimension $n$ over $R$ is an $n$-tuple $F(X, Y)$ of power series in $R[[X, Y]]$ with $F(X, 0) = X$, $F(0, Y) = Y$, $F(F(X, Y), Z) = F(X, F(Y, Z))$ and $F(X, Y) = F(Y, X)$. A *homomorphism* $f : F \to G$ is an $m$-tuple of series $f(X)$ without constant term with $f(F(X, Y)) = G(f(X), f(Y))$.

Then $F(X, Y) = X + Y + (\text{terms of degree} \geq 2)$, and there is a unique series $\iota(X)$ with $F(X, \iota(X)) = 0$. For $m \in \mathbb{Z}$, the series $[m]_F$ is multiplication by $m$.

**Example.** The *additive* formal group $\hat{\mathbb{G}}_a$ has $F(X, Y) = X + Y$. The *multiplicative* formal group $\hat{\mathbb{G}}_m$ has $F(X, Y) = X + Y + XY = (1 + X)(1 + Y) - 1$. An elliptic curve with a local parameter $z$ at the origin gives a one-dimensional formal group law, from the expansion of its group law in $z$ ([elliptic curves](/learn/elliptic-curves/)).

**Theorem ([[Lubin-Tate formal group laws|77QT4B80V8]]; Lubin and Tate, 1965).** Let $K$ be a nonarchimedean local field with uniformizer $\pi$ and residue field of size $q$. Let $f \in \mathcal{O}_K[[X]]$ with $f(X) \equiv \pi X$ modulo degree $2$ and $f(X) \equiv X^q \pmod{\pi}$. Then there is a unique one-dimensional formal group law $F_f$ over $\mathcal{O}_K$ with $f \in \mathrm{End}(F_f)$, and for each $a \in \mathcal{O}_K$ there is a unique endomorphism $[a]_f$ with $[a]_f(X) \equiv aX$ modulo degree $2$.

The $\pi^n$-torsion points of $F_f$ generate totally ramified abelian extensions of $K$. Their union is the field that corresponds to $\langle \pi \rangle$ in local class field theory ([class field theory](/learn/class-field-theory/)).

In [CM divisibility](/proof/cm-divisibility/), the series $\mu$ of Step 2 is a lift of a formal group law, and the formal group law is a chart of a $p$-divisible group.

## The invariant derivation and the logarithm

**Definition.** Let $F$ be a formal group law of dimension $n$ over $R$, and let $u \in R^n$. The *invariant derivation* in the direction $u$ is the derivation $D_u$ of $R[[X]]$ with
$$D_u g(X) = \sum_{i=1}^n u_i \frac{\partial}{\partial Y_i} g(F(X, Y)) \Big|_{Y = 0}.$$

It commutes with translations: $D_u$ applied in $X$ to $g(F(X, Z))$ is $(D_u g)(F(X, Z))$. The map $u \mapsto D_u$ identifies $R^n$ with the *Lie algebra* $\mathrm{Lie}(F)$, the space of translation-invariant derivations.

**Example.** For $\hat{\mathbb{G}}_a$, $D = d/dX$. For $\hat{\mathbb{G}}_m$, $D = (1 + X)\, d/dX$, and $D (1 + X)^k = k (1 + X)^k$.

If $p = 0$ in $R$, the $p$-th power of a derivation is a derivation, so $D_u^p$ is again an invariant derivation $D_{h(u)}$. The map $h$ is $p$-linear: $h(au) = a^p h(u)$. Over $\mathbb{F}_p$, the example gives $D^p = 0$ for $\hat{\mathbb{G}}_a$ and $D^p = D$ for $\hat{\mathbb{G}}_m$, since $k^p \equiv k \pmod p$.

**Proposition (the logarithm).** Suppose that $R$ is a $\mathbb{Q}$-algebra. Then there is a unique $n$-tuple $\log_F(X) \in R[[X]]$ with $\log_F(X) \equiv X$ modulo degree $2$ and $\log_F(F(X, Y)) = \log_F(X) + \log_F(Y)$. It is an isomorphism from $F$ to $\hat{\mathbb{G}}_a^n$.

**Example.** $\log_{\hat{\mathbb{G}}_m}(X) = \log(1 + X) = \sum_{k \geq 1} (-1)^{k+1} X^k / k$. Its coefficients have denominators, so $\hat{\mathbb{G}}_m$ and $\hat{\mathbb{G}}_a$ are not isomorphic over $\mathbb{Z}_p$.

For $R$ without $p$-torsion, $\log_F$ has coefficients in $R[1/p]$, and the coefficients of the monomials $X_i^p$ control $D_u^p$ modulo $p$. The theorem `constantCoeff_pIterate_invariantDerivation_coord` of [CM divisibility](/proof/cm-divisibility/) is a form of this. It works in a frame `IsFrame p Q θ`, with $\mu$ a lift of a formal group law and $l$ a series that the code calls a quasi-logarithm. It says that the constant term of $D_u^p(X_j)$ is congruent to $\sum_i c_i u_i^p$ modulo $\ker\theta + pB$, where $c_i = p \cdot [X_i^p]\, l$.

## Height

Let $k$ be a field of characteristic $p$.

**Definition.** Let $f : F \to G$ be a nonzero homomorphism of one-dimensional formal group laws over $k$. Then $f(X) = g(X^{p^h})$ for a series $g$ with $g'(0) \neq 0$ and a unique $h \geq 0$, the height of $f$. The *height* of $F$ is the height of $[p]_F$, or $\infty$ if $[p]_F = 0$. For dimension $n$, $F$ has finite height $h$ if $[p]_F^*$ makes $k[[X]]$ a free module of rank $p^h$ over itself.

**Example.** $[p]_{\hat{\mathbb{G}}_m}(X) = (1 + X)^p - 1 = X^p$ over $\mathbb{F}_p$, so $\hat{\mathbb{G}}_m$ has height $1$. $[p]_{\hat{\mathbb{G}}_a} = 0$ over $\mathbb{F}_p$, so its height is $\infty$. The reduction of a Lubin-Tate formal group of $K$ has height $[K : \mathbb{Q}_p]$. The formal group of an elliptic curve over $\overline{\mathbb{F}}_p$ has height $1$ if the curve is ordinary and $2$ if it is supersingular.

**Theorem (Lazard, 1955).** Over a separably closed field of characteristic $p$, two one-dimensional formal group laws are isomorphic if and only if they have the same height.

The height of a $p$-divisible group below is the rank of its prismatic Dieudonné module in the statement `PrismaticDieudonneHodge` of [CM divisibility](/proof/cm-divisibility/).

## p-divisible groups

**Definition (Tate, 1967).** Let $R$ be a ring and let $h \geq 0$. A *$p$-divisible group* of height $h$ over $R$ is a system $G = (G_n)_{n \geq 1}$ of finite flat commutative [[group schemes|TJ04VQP4NB]] over $R$, with $G_n$ of order $p^{nh}$, and injections $G_n \to G_{n+1}$ that identify $G_n$ with the kernel of $p^n$ on $G_{n+1}$.

**Example.** $\mu_{p^\infty} = (\mu_{p^n})_n$ and $\mathbb{Q}_p/\mathbb{Z}_p = (\mathbb{Z}/p^n)_n$ have height $1$. For an abelian scheme $A$ of dimension $g$, $A[p^\infty] = (A[p^n])_n$ has height $2g$.

Let $R$ be a complete noetherian local ring with residue field of characteristic $p$. A $p$-divisible group is *connected* if each $G_n$ is connected, and *étale* if each $G_n$ is étale. There is an exact sequence $0 \to G^0 \to G \to G^{\mathrm{et}} \to 0$ with $G^0$ connected and $G^{\mathrm{et}}$ étale.

**Theorem (Tate, 1967).** Over such an $R$, the map $F \mapsto (\ker [p^n]_F)_n$ is an equivalence from formal group laws of finite height to connected $p$-divisible groups. The height of $F$ is the height of the $p$-divisible group, and its dimension $d$ is the dimension of $G$.

**Definition.** The *dual* of $G$ is $G^\vee = (G_n^\vee)_n$, where $G_n^\vee = \mathrm{Hom}(G_n, \mathbb{G}_m)$ is the Cartier dual. It has the same height $h$, and $\dim G + \dim G^\vee = h$.

**Example.** $(\mu_{p^\infty})^\vee = \mathbb{Q}_p/\mathbb{Z}_p$. For an abelian scheme, $A[p^\infty]^\vee = A^\vee[p^\infty]$, with $A^\vee$ the dual abelian scheme.

**Definition.** Let $C$ be a complete algebraically closed extension of $\mathbb{Q}_p$ with ring of integers $\mathcal{O}_C$, and let $G$ be a $p$-divisible group over $\mathcal{O}_C$. Its *Tate module* is $T_p G = \varprojlim_n G_n(\mathcal{O}_C)$, a free $\mathbb{Z}_p$-module of rank $h$.

**Proposition (the Weil pairing).** Cartier duality gives a perfect pairing $T_p G \times T_p G^\vee \to T_p \mu_{p^\infty} = \mathbb{Z}_p(1)$. For $G = A[p^\infty]$ it is the Weil pairing of $A$ and $A^\vee$.

The theorem `isNil_dual_frobenius` of [CM divisibility](/proof/cm-divisibility/) is about a $p$-divisible group $G$ over $\mathcal{O}_C$ whose dual $G^\vee$ is connected. It says that the dual Frobenius is nilpotent.

## Dieudonné modules and the Hodge-Tate sequence

Let $k$ be a perfect field of characteristic $p$, let $W(k)$ be its ring of [[Witt vectors|6N3X2QX4W9]], and let $\sigma$ be the Frobenius of $W(k)$.

**Definition.** A *Dieudonné module* over $k$ is a free $W(k)$-module $M$ of finite rank with a $\sigma$-linear map $F$ and a $\sigma^{-1}$-linear map $V$ such that $FV = VF = p$.

**Theorem (Dieudonné; Fontaine, 1977).** There is an anti-equivalence $G \mapsto \mathbb{D}(G)$ from $p$-divisible groups over $k$ to Dieudonné modules over $k$. The rank of $\mathbb{D}(G)$ is the height of $G$. The *Hodge filtration* $V\mathbb{D}(G)/p\mathbb{D}(G) \subset \mathbb{D}(G)/p\mathbb{D}(G)$ is $\omega_G$, the space of invariant differentials of $G$, and the quotient is $\mathrm{Lie}(G^\vee)$.

So $0 \to \omega_G \to \mathbb{D}(G)/p \to \mathrm{Lie}(G^\vee) \to 0$ is exact, and the dimensions are $d$, $h$ and $h - d$. With this normalization, $G$ is étale exactly when $F$ is bijective, and $\mathbb{D}(\mathbb{Q}_p/\mathbb{Z}_p) = W(k)$ with $F = 1$ and $V = p$. For an abelian variety $A$ over $k$, $\mathbb{D}(A[p^\infty])$ is the crystalline cohomology $H^1_{\mathrm{cris}}(A/W(k))$.

**Theorem ([[Dieudonné-Manin classification|TKAB3ZDEZD]]).** If $k$ is algebraically closed, then $\mathbb{D}(G)[1/p]$ is a direct sum of simple isocrystals of slopes $\lambda \in [0, 1] \cap \mathbb{Q}$, and these slopes classify $G$ up to isogeny.

A supersingular elliptic curve has the slope $1/2$ twice, and an ordinary one has the slopes $0$ and $1$.

**Definition.** Let $G$ be a $p$-divisible group over $\mathcal{O}_C$ of dimension $d$. For $x \in T_p G$, Cartier duality makes $x$ a map $G^\vee \to \mu_{p^\infty}$, and the pullback of $dt/t$ is an element $\alpha_G(x) \in \omega_{G^\vee}$. This gives the *Hodge-Tate map* $\alpha_G : T_p G \otimes \mathcal{O}_C \to \omega_{G^\vee}$.

**Theorem (the Hodge-Tate sequence; Fargues, 2008).** The sequence
$$0 \to \mathrm{Lie}(G) \otimes_{\mathcal{O}_C} C(1) \to T_p G \otimes_{\mathbb{Z}_p} C \xrightarrow{\alpha_G} \omega_{G^\vee} \otimes_{\mathcal{O}_C} C \to 0$$
is exact. The first map is the dual of $\alpha_{G^\vee}$ under the Weil pairing.

The input `FarguesExact` of [the Weil bound](/proof/weil-bound/) names the exactness of this sequence, and its Lean form is an orthogonality statement under the Weil pairing.

## Prismatic Dieudonné theory

Let $A_{\mathrm{inf}} = W(\mathcal{O}_{C^\flat})$, with $\theta : A_{\mathrm{inf}} \to \mathcal{O}_C$, the generator $\xi$ of $\ker\theta$ and the Frobenius $\varphi$ ([Galois representations](/learn/galois-representations/)).

**Theorem (Scholze and Weinstein, 2013).** The functor $G \mapsto (T_p G, \mathrm{Lie}(G) \otimes C(1))$ is an equivalence from $p$-divisible groups over $\mathcal{O}_C$ to pairs $(T, W)$, where $T$ is a free $\mathbb{Z}_p$-module of finite rank and $W \subset T \otimes_{\mathbb{Z}_p} C$ is a $C$-subspace.

**Theorem (Fargues; see Bhatt, Morrow and Scholze, 2018, section 14).** $p$-divisible groups over $\mathcal{O}_C$ are equivalent to finite free $A_{\mathrm{inf}}$-modules $M$ with a $\varphi$-linear Frobenius that satisfies a minuscule condition with respect to $\xi$. The rank of $M$ is the height of $G$.

*Prismatic Dieudonné theory* (Anschütz and Le Bras, 2023) extends this to quasi-syntomic rings $R$: $p$-divisible groups over $R$ are equivalent to admissible prismatic Dieudonné crystals. Over $\mathcal{O}_C$ its value on the prism $A_{\mathrm{inf}}$ is the module of Fargues, and its reduction gives the Hodge filtration $0 \to \omega_G \to D \to \mathrm{Lie}(G^\vee) \to 0$.

**Theorem (Bhatt and Scholze, 2023).** Let $K$ be a finite extension of $\mathbb{Q}_p$. The étale realization is an equivalence from prismatic F-crystals on $\mathcal{O}_K$ to $G_K$-stable $\mathbb{Z}_p$-lattices in crystalline representations of $G_K$.

These *crystalline lattices* of Bhatt and Scholze give integral structures on the crystalline representations of [Galois representations](/learn/galois-representations/).

The statement `PrismaticDieudonneHodge`, proved as `UpperTheory.Lit.prismaticDieudonneHodge` and used in [CM divisibility](/proof/cm-divisibility/), asks for a functor from $p$-divisible groups over $\mathcal{O}$ to free $A_{\mathrm{inf}}$-modules of rank equal to the height, with a Frobenius and this Hodge filtration. The record [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has the field `bhattScholzeCrystallineLattices`.

## Grothendieck-Messing deformation theory

**Definition.** A *divided power thickening* is a surjection of rings $R \to R_0$ whose kernel $I$ has divided powers $\gamma_n : I \to I$, maps that behave like $x \mapsto x^n / n!$. They are *nilpotent* if products of the $\gamma_n$ of high total degree vanish.

**Example.** For $p$ odd, the ideal $pW(k)/p^2$ of $W_2(k) = W(k)/p^2$ has nilpotent divided powers with $\gamma_n(px) = p^n x^n / n!$.

**Theorem (Grothendieck-Messing; Messing, 1972).** Let $R \to R_0$ be a nilpotent divided power thickening, with $p$ nilpotent in $R$. Let $G_0$ be a $p$-divisible group over $R_0$. Then the Dieudonné crystal of $G_0$ gives a locally free $R$-module $\mathbb{D}(G_0)_R$ that lifts $\mathbb{D}(G_0)_{R_0}$. The lifts of $G_0$ to $R$, up to isomorphism, correspond to the direct summands of $\mathbb{D}(G_0)_R$ that lift the Hodge filtration $\omega_{G_0} \subset \mathbb{D}(G_0)_{R_0}$.

So [[deformation theory|H8AAQJ1SZW]] of $p$-divisible groups is linear algebra. By the Serre-Tate theorem ([elliptic curves](/learn/elliptic-curves/)), the same holds for abelian schemes.

The field `q1` of [published-results-arithmetic](/step/published-results-arithmetic/) has the type `GrothendieckMessing`, with the hypothesis that $p$ is nilpotent, and it comes from the input `GrothendieckDeformation` of [cm-abelian-inputs-from-literature](/step/cm-abelian-inputs-from-literature/).

## Further reading

- J. Tate, p-divisible groups, in *Proceedings of a Conference on Local Fields* (1967), sections 1 and 2.
- J. H. Silverman, *The Arithmetic of Elliptic Curves*, 2nd ed. (2009), chapter IV.
- M. Demazure, *Lectures on p-divisible Groups*, LNM 302 (1972), chapters II and III.
- W. Messing, *The Crystals Associated to Barsotti-Tate Groups*, LNM 264 (1972), chapter V.
- P. Scholze and J. Weinstein, Moduli of p-divisible groups, Cambridge J. Math. 1 (2013), sections 4 and 5.
