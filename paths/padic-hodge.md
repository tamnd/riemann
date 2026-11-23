This chapter studies [[p-adic Hodge theory|6YDZNXR19H]]: the p-adic representations of the absolute Galois group of a p-adic field, sorted by Fontaine's period rings into Hodge-Tate, de Rham, semistable and crystalline ones, together with the linear algebra that describes them (filtered $(\varphi, N)$-modules and weak admissibility), the comparison theorems with the cohomology of varieties, integral lattices (Fontaine-Laffaille, Wach, Breuil-Kisin and prismatic F-crystals), and the local Bloch-Kato subgroups $H^1_e \subset H^1_f \subset H^1_g$. The proof uses it at the places above $\ell$. The clause `above` of [Row0b](/step/row0b-def/) asks for crystalline representations with given Hodge-Tate jumps, [GeoOne](/step/geo-one-def/) reads Frobenius from Fontaine's Weil-Deligne representation, and [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has fields for the equality of de Rham and potentially semistable and for the Bhatt-Scholze crystalline lattices, with a sub-bundle `nLink` that names Fontaine's $B_{\mathrm{cris}}$ and local Bloch-Kato theory. [The literature chapter](/proof/literature/) lists these results as `FontaineBcris`, `DeRhamPotSemistable`, `BhattScholzeIntegral` and `BlochKatoLocal`. The short account of period rings in [Galois representations](/learn/galois-representations/) is the starting point; here we prove the basic facts and state the deep ones with references.

## Admissible representations and Hodge-Tate representations

Throughout, $K$ is a finite extension of $\mathbb{Q}_p$ with residue field $k$ of size $p^f$, $K_0 = W(k)[1/p]$ is its maximal unramified subfield, $\sigma$ is the Frobenius of $K_0$, $C$ is the completion of an algebraic closure $\overline{K}$, and $G_K = \mathrm{Gal}(\overline{K}/K)$. We write $\chi : G_K \to \mathbb{Z}_p^\times$ for the [[cyclotomic character|XSGB5K2KEG]] and $C(i)$ for $C$ with $G_K$ acting by $g \cdot x = \chi(g)^i g(x)$. The prime is $p$ in this chapter. The proof chapters call it $\ell$, since there $p$ is reserved for other uses.

**Definition.** A *p-adic representation* of $G_K$ is a finite-dimensional $\mathbb{Q}_p$-vector space $V$ with a continuous linear action of $G_K$. A *lattice* in $V$ is a $G_K$-stable $\mathbb{Z}_p$-submodule $T$ with $T \otimes \mathbb{Q}_p = V$.

Every p-adic representation has a lattice, since $G_K$ is compact. For an [[abelian variety|R7W03TXRS9]] $A$ over $K$ the rational [[Tate module|4CSMQFTGD8]] $V_p A$ is a p-adic representation of dimension $2 \dim A$ with lattice $T_p A$.

**Definition (regular ring).** Let $B$ be a $\mathbb{Q}_p$-algebra and a domain with a $G_K$ action, and put $E = B^{G_K}$, a field in the cases below. $B$ is *$(\mathbb{Q}_p, G_K)$-regular* if $(\mathrm{Frac}\, B)^{G_K} = B^{G_K}$ and each $b \neq 0$ in $B$ with $\mathbb{Q}_p b$ stable under $G_K$ is a unit of $B$.

**Definition (admissible representation).** For such $B$ and a p-adic representation $V$ put $D_B(V) = (B \otimes_{\mathbb{Q}_p} V)^{G_K}$, an $E$-vector space, and let $\alpha_V : B \otimes_E D_B(V) \to B \otimes_{\mathbb{Q}_p} V$ be the multiplication map. $V$ is *$B$-admissible* if $\alpha_V$ is an isomorphism.

**Theorem.** Let $B$ be $(\mathbb{Q}_p, G_K)$-regular with $E = B^{G_K}$.

1. $\alpha_V$ is injective, and $\dim_E D_B(V) \leq \dim_{\mathbb{Q}_p} V$.
2. $V$ is $B$-admissible if and only if $\dim_E D_B(V) = \dim_{\mathbb{Q}_p} V$.
3. $B$-admissible representations form a full subcategory closed under subobjects, quotients, tensor products and duals, and on it $D_B$ is exact, faithful, and compatible with tensor products and duals.

*Proof.* Put $L = \mathrm{Frac}\, B$, so $L^{G_K} = E$. For 1 it is enough to show that elements $d_1, \dots, d_r$ of $(L \otimes V)^{G_K}$ that are linearly independent over $E$ stay independent over $L$, since $D_B(V) \subset (L \otimes V)^{G_K}$ and $B \otimes_E D_B(V) \subset L \otimes_E D_B(V)$. Suppose not, and take a relation $\sum \lambda_i d_i = 0$ with $\lambda_i \in L$ of minimal length, ordered so that $\lambda_1 = 1$. For $g \in G_K$, the relation $\sum g(\lambda_i) d_i = 0$ minus the first one is shorter, so it is trivial, and $g(\lambda_i) = \lambda_i$. Hence all $\lambda_i$ lie in $L^{G_K} = E$, which contradicts independence over $E$. The bound follows, as $L \otimes V$ has dimension $\dim V$ over $L$. For 2, let $d = \dim V$ and suppose $\dim_E D_B(V) = d$. Choose bases $(d_i)$ of $D_B(V)$ and $(v_j)$ of $V$, and write $d_i = \sum_j b_{ij} v_j$. Then $b = \det(b_{ij})$ is not zero by 1, and applying $g$ gives $g(b) \det \rho(g) = b$, where $\rho$ is the action on $V$. So $\mathbb{Q}_p b$ is stable, $b$ is a unit by regularity, and $\alpha_V$ is an isomorphism. The converse is a rank count. Part 3 is formal from 1 and 2; see Fontaine, Exposé III of Astérisque 223, or the chapter on admissible representations in Fontaine and Ouyang. $\square$

The rest of the chapter applies this to four rings. To compute invariants we need Tate's theorem on $C$.

**Theorem (Tate, 1967).** $H^0(G_K, C(i))$ is $K$ for $i = 0$ and $0$ for $i \neq 0$. $H^1(G_K, C)$ is a one-dimensional $K$-vector space, spanned by the class of $\log \chi$, and $H^1(G_K, C(i)) = 0$ for $i \neq 0$.

See Tate, *p-divisible groups*, section 3. The case $i = 0$ of the first statement, $C^{G_K} = K$, is the Ax-Sen-Tate theorem. Here $H^i$ is continuous [[group cohomology|YXJXA0Q52R]] ([Galois cohomology](/learn/galois-cohomology/)).

**Definition (Hodge-Tate ring).** $B_{\mathrm{HT}} = C[t, t^{-1}]$ is the ring of Laurent polynomials, with $G_K$ acting on $C$ as usual and on $t$ by $g(t) = \chi(g) t$. So $C t^i \cong C(i)$, and $D_{\mathrm{HT}}(V) = \bigoplus_{i} (V \otimes C(i))^{G_K}$ is a graded $K$-vector space.

**Proposition.** $B_{\mathrm{HT}}$ is $(\mathbb{Q}_p, G_K)$-regular with $B_{\mathrm{HT}}^{G_K} = K$. A p-adic representation $V$ is $B_{\mathrm{HT}}$-admissible if and only if there are integers $m_i \geq 0$ with
$$V \otimes_{\mathbb{Q}_p} C \cong \bigoplus_i C(-i)^{m_i}$$
as $C$-semilinear representations, and then $m_i = \dim_K (V \otimes C(i))^{G_K}$.

*Proof.* $B_{\mathrm{HT}}^{G_K} = K$ is Tate's theorem applied degree by degree. Let $b = \sum_i b_i t^i \neq 0$ with $g(b) = \eta(g) b$ for a character $\eta$. Each part $b_i t^i$ satisfies the same relation. If $b_i$ and $b_j$ are nonzero with $i \neq j$, then $x = b_i/b_j \in C$ satisfies $g(x) = \chi(g)^{j-i} x$, which gives a nonzero invariant of $C(i-j)$, against Tate's theorem. So $b = b_i t^i$ with $b_i \in C^\times$, a unit. The equality $(\mathrm{Frac}\, B_{\mathrm{HT}})^{G_K} = K$ needs a separate argument, given in the chapter on Hodge-Tate representations of Fontaine and Ouyang. If $V$ is admissible, the degree $0$ part of $\alpha_V$ is an isomorphism $\bigoplus_i (V \otimes C(i))^{G_K} \otimes_K C t^{-i} \cong V \otimes C$, which is the displayed decomposition. Conversely, Tate's theorem computes $D_{\mathrm{HT}}$ of the right side, and its dimension is $\sum m_i = \dim V$. $\square$

**Definition (Hodge-Tate weights).** $V$ is *Hodge-Tate* if it is $B_{\mathrm{HT}}$-admissible. An integer $i$ with $m_i = \dim_K (V \otimes C(i))^{G_K} > 0$ is a *Hodge-Tate weight* of $V$ with multiplicity $m_i$.

**Remark (sign convention).** We keep the convention of [Galois representations](/learn/galois-representations/): $\mathbb{Q}_p(n)$ has weight $-n$, the Tate module $V_p A$ of an abelian variety has weights $0$ and $-1$, each with multiplicity $\dim A$, and $H^n_{\mathrm{et}}$ of a smooth proper variety has weights $a \in [0, n]$ with multiplicity the Hodge number $h^{a, n-a}$. Many authors use the opposite sign, so that $\mathbb{Q}_p(1)$ has weight $1$. The proof pages speak of *Hodge-Tate jumps*, which are the same integers read off the de Rham filtration of the next section.

**Example.** $\mathbb{Q}_p(n)$ is Hodge-Tate with the single weight $-n$, by Tate's theorem. An unramified character is Hodge-Tate of weight $0$, since it becomes trivial on $C$ after a twist by a unit of $\widehat{K^{\mathrm{ur}}}$. For an abelian variety $A$ over $K$, Tate proved $V_p A \otimes C \cong C(1)^g \oplus C^g$ with $g = \dim A$ when $A$ has good reduction (Tate, *p-divisible groups*, section 4), and Faltings proved it in general (see the comparison theorems below).

**Example (not Hodge-Tate).** Let $V = \mathbb{Q}_p^2$ with $g$ acting by $\begin{pmatrix} 1 & \log \chi(g) \\ 0 & 1 \end{pmatrix}$. Then $V \otimes C$ is an extension of $C$ by $C$ with class $\log \chi \neq 0$ in $H^1(G_K, C)$. The coboundary sends $1 \in (C)^{G_K}$ to this class, so $(V \otimes C)^{G_K} = K$ has dimension $1$. The twists $C(i)$ with $i \neq 0$ contribute nothing, so $\dim D_{\mathrm{HT}}(V) = 1 < 2$.

**Theorem (Sen, 1980).** Let $V$ be a p-adic representation. Then $V$ is $C$-admissible, that is $V \otimes C \cong C^{\dim V}$, if and only if the inertia subgroup $I_K$ acts on $V$ through a finite quotient. There is also a canonical linear operator $\Theta_V$ on a descent of $V \otimes C$ to $\widehat{K(\mu_{p^\infty})}$, the *Sen operator*, and $V$ is Hodge-Tate if and only if $\Theta_V$ is semisimple with integer eigenvalues. These eigenvalues are then the Hodge-Tate weights, up to the sign convention.

See Sen, *Continuous cohomology and p-adic Galois representations*, Invent. Math. 62 (1980). The eigenvalues of $\Theta_V$ are defined for every $V$ and are called the generalized Hodge-Tate weights. In the representation above $\Theta_V$ is a nonzero nilpotent matrix.

## De Rham representations

The ring $B_{\mathrm{dR}}$ is defined in [Galois representations](/learn/galois-representations/) as $B^+_{\mathrm{dR}}[1/t]$, where $B^+_{\mathrm{dR}}$ is the $\ker\theta$-adic completion of $A_{\mathrm{inf}}[1/p]$ and $t = \log[\epsilon]$. We now prove the facts we use.

**Proposition.** $B^+_{\mathrm{dR}}$ is a complete discrete [[valuation ring|QSX12D8RQM]] with residue field $C$ and uniformizer $t$, and $\overline{K}$ embeds in it compatibly with $\theta$. With $\mathrm{Fil}^i B_{\mathrm{dR}} = t^i B^+_{\mathrm{dR}}$ we have $\mathrm{gr}^i B_{\mathrm{dR}} \cong C(i)$, and
$$(\mathrm{Fil}^i B_{\mathrm{dR}})^{G_K} = \begin{cases} K & i \leq 0, \\ 0 & i > 0. \end{cases}$$
In particular $B_{\mathrm{dR}}^{G_K} = K$, and $B_{\mathrm{dR}}$, a field, is $(\mathbb{Q}_p, G_K)$-regular.

*Proof.* The first sentence is Fontaine's; see Fontaine, Exposé II of Astérisque 223. The element $\xi$ generates $\ker\theta$, and $t/\xi$ is a unit of $B^+_{\mathrm{dR}}$, so $t$ is a uniformizer. Since $g(t) = \chi(g) t$, multiplication by $t^i$ gives $\mathrm{gr}^i \cong C(i)$. For the invariants, take $j > i \geq 1$. The quotient $\mathrm{Fil}^i / \mathrm{Fil}^j$ has a finite filtration with graded pieces $C(m)$ for $i \leq m < j$, all without invariants by Tate's theorem, so $(\mathrm{Fil}^i / \mathrm{Fil}^j)^{G_K} = 0$. Passing to the limit in $j$ by completeness gives $(\mathrm{Fil}^i)^{G_K} = 0$ for $i \geq 1$. For $i \leq 0$, the same argument with the pieces $C(m)$, $i \leq m < 0$, shows $(\mathrm{Fil}^i / \mathrm{Fil}^1)^{G_K} \to (\mathrm{Fil}^0/\mathrm{Fil}^1)^{G_K} = C^{G_K} = K$ is injective. Hence $(\mathrm{Fil}^i)^{G_K}$ injects into $K$, and it contains $K \subset \overline{K} \subset B^+_{\mathrm{dR}}$. Finally, $B_{\mathrm{dR}} = \bigcup_i \mathrm{Fil}^{-i}$. $\square$

**Definition.** For a p-adic representation $V$ put $D_{\mathrm{dR}}(V) = (B_{\mathrm{dR}} \otimes_{\mathbb{Q}_p} V)^{G_K}$, a $K$-vector space with the decreasing filtration $\mathrm{Fil}^i D_{\mathrm{dR}}(V) = (\mathrm{Fil}^i B_{\mathrm{dR}} \otimes V)^{G_K}$, which is exhaustive and separated. $V$ is *de Rham* if $\dim_K D_{\mathrm{dR}}(V) = \dim V$. The *jumps* of $V$ are the integers $i$ with $\mathrm{gr}^i D_{\mathrm{dR}}(V) \neq 0$, counted with multiplicity $\dim_K \mathrm{gr}^i$.

A *filtered $K$-vector space* is a finite-dimensional $K$-space with such a filtration. For de Rham $V$, $\alpha_V$ is an isomorphism of filtered $B_{\mathrm{dR}}$-modules, with the tensor product filtration on the source and $\mathrm{Fil}^i B_{\mathrm{dR}} \otimes V$ on the target (Fontaine, Exposé III).

**Proposition.** A de Rham representation is Hodge-Tate, and its jumps are its Hodge-Tate weights with the same multiplicities.

*Proof.* Tensor $0 \to \mathrm{Fil}^{i+1} B_{\mathrm{dR}} \to \mathrm{Fil}^i B_{\mathrm{dR}} \to C(i) \to 0$ with $V$ and take invariants. Left exactness gives an injection $\mathrm{gr}^i D_{\mathrm{dR}}(V) \hookrightarrow (V \otimes C(i))^{G_K}$. Summing over $i$,
$$\dim V = \dim_K D_{\mathrm{dR}}(V) = \sum_i \dim \mathrm{gr}^i D_{\mathrm{dR}}(V) \leq \sum_i \dim (V \otimes C(i))^{G_K} \leq \dim V.$$
So each inequality is an equality. $\square$

**Example.** $D_{\mathrm{dR}}(\mathbb{Q}_p(n)) = K \cdot t^{-n} \otimes e$, where $e$ is a basis of $\mathbb{Q}_p(n)$, because $g(t^{-n} \otimes e) = \chi(g)^{-n} \chi(g)^n t^{-n} \otimes e$. The vector $t^{-n} \otimes e$ lies in $\mathrm{Fil}^{-n}$ and not in $\mathrm{Fil}^{-n+1}$, so the single jump is $-n$, equal to the Hodge-Tate weight.

**Example (geometry).** For a smooth proper variety $X$ over $K$, $H^n_{\mathrm{et}}(X_{\overline{K}}, \mathbb{Q}_p)$ is de Rham, and $D_{\mathrm{dR}}$ of it is the [[algebraic de Rham cohomology|13F5JZPDD0]] $H^n_{\mathrm{dR}}(X/K)$ with its Hodge filtration ([geometry](/learn/geometry/)). This is Faltings' comparison theorem below. The jump $a$ occurs with multiplicity $\dim \mathrm{gr}^a H^n_{\mathrm{dR}} = h^{a, n-a}$.

**Proposition.** Let $L/K$ be a finite extension. Then $(B_{\mathrm{dR}} \otimes V)^{G_L} = L \otimes_K D_{\mathrm{dR}}(V)$ as filtered $L$-spaces. So $V$ is de Rham if and only if $V|_{G_L}$ is de Rham.

*Proof.* We may enlarge $L$ and assume $L/K$ Galois. The $L$-space $W = (B_{\mathrm{dR}} \otimes V)^{G_L}$ has a semilinear action of $\mathrm{Gal}(L/K)$, so by Galois descent (Hilbert 90 for $\mathrm{GL}_n(L)$) the map $L \otimes_K W^{\mathrm{Gal}(L/K)} \to W$ is an isomorphism, and $W^{\mathrm{Gal}(L/K)} = D_{\mathrm{dR}}(V)$. The same argument applies to each $\mathrm{Fil}^i$. $\square$

The same descent argument shows that being Hodge-Tate depends only on the restriction to an open subgroup. This is the first sign of the theorem of the fifth section: being de Rham is a property that cannot see finite ramification. The converse of "de Rham implies Hodge-Tate" fails: some Hodge-Tate representations are not de Rham. We give one in the last section, where the tools to prove it are available.

## Crystalline and semistable representations

The rings $A_{\mathrm{cris}}$, $B_{\mathrm{cris}}$ and $B_{\mathrm{st}}$ are defined in [Galois representations](/learn/galois-representations/), and the [[Witt vectors|6N3X2QX4W9]] behind them in [algebra](/learn/algebra/). We record their properties.

**Proposition (Fontaine).** $B_{\mathrm{cris}}$ is $(\mathbb{Q}_p, G_K)$-regular with $B_{\mathrm{cris}}^{G_K} = K_0$. It has an injective Frobenius $\varphi$ that commutes with $G_K$, is $\sigma$-semilinear over $K_0$, and satisfies $\varphi(t) = pt$. The natural map $K \otimes_{K_0} B_{\mathrm{cris}} \to B_{\mathrm{dR}}$ is injective, and $B_{\mathrm{cris}}$ gets the filtration induced from $B_{\mathrm{dR}}$, which $\varphi$ does not preserve.

See Fontaine, Exposé II of Astérisque 223. The relation $\varphi(t) = pt$ holds because $\varphi([\epsilon]) = [\epsilon]^p$, so $\varphi(t) = \log [\epsilon]^p = pt$.

**Theorem (fundamental exact sequence).** The sequence
$$0 \to \mathbb{Q}_p \to B_{\mathrm{cris}}^{\varphi = 1} \to B_{\mathrm{dR}} / B^+_{\mathrm{dR}} \to 0$$
is exact. Equivalently, $B_{\mathrm{cris}}^{\varphi = 1} \cap B^+_{\mathrm{dR}} = \mathbb{Q}_p$, and every element of $B_{\mathrm{dR}}$ is the sum of an element of $B_{\mathrm{cris}}^{\varphi=1}$ and an element of $B_{\mathrm{dR}}^+$.

See Fontaine, *Le corps des périodes p-adiques*, Exposé II of Astérisque 223. The element $t$ lies in $B_{\mathrm{cris}}^{\varphi = p}$, so $t^{-1}$ lies in $\mathrm{Fil}^{-1}$ but $\varphi(t^{-1}) = p^{-1} t^{-1}$.

**Definition (semistable ring).** $B_{\mathrm{st}} = B_{\mathrm{cris}}[u]$ with $u$ transcendental over $B_{\mathrm{cris}}$, $\varphi(u) = pu$, $G_K$ acting on $u$ through the Kummer cocycle of $p$ (so that $u$ maps to $\log[p^\flat]$ in $B_{\mathrm{dR}}$), and $N = -d/du$. Then $N \varphi = p \varphi N$, $N$ commutes with $G_K$, and $B_{\mathrm{st}}^{N = 0} = B_{\mathrm{cris}}$. The ring $B_{\mathrm{st}}$ is $(\mathbb{Q}_p, G_K)$-regular with $B_{\mathrm{st}}^{G_K} = K_0$, and $K \otimes_{K_0} B_{\mathrm{st}} \to B_{\mathrm{dR}}$ is injective (Fontaine, Exposé III).

The relation $N\varphi = p \varphi N$ is a one-line check on $u^m$: $N \varphi(u^m) = -m p^m u^{m-1}$ and $p\varphi N(u^m) = -p m p^{m-1} u^{m-1}$.

**Definition (filtered $(\varphi, N)$-module).** A *filtered $\varphi$-module* over $K$ is a finite-dimensional $K_0$-vector space $D$ with a $\sigma$-semilinear bijection $\varphi$ and an exhaustive separated decreasing filtration on $D_K = K \otimes_{K_0} D$ by $K$-subspaces. A *filtered $(\varphi, N)$-module* has in addition a $K_0$-linear map $N$ with $N\varphi = p\varphi N$. Morphisms are $K_0$-linear maps that commute with $\varphi$ and $N$ and preserve the filtration after $K \otimes_{K_0}$.

**Lemma.** In a filtered $(\varphi, N)$-module, $N$ is nilpotent.

*Proof.* The relation gives $\varphi N \varphi^{-1} = p^{-1} N$, hence $\varphi^f N \varphi^{-f} = p^{-f} N$, and $\varphi^f$ is $K_0$-linear. So $N$ is conjugate to $p^{-f} N$, and its set of eigenvalues in an algebraic closure is stable under multiplication by $p^{-f}$. A finite set with this property is $\{0\}$. $\square$

**Definition.** For a p-adic representation $V$ put $D_{\mathrm{cris}}(V) = (B_{\mathrm{cris}} \otimes V)^{G_K}$ and $D_{\mathrm{st}}(V) = (B_{\mathrm{st}} \otimes V)^{G_K}$. They are filtered $\varphi$-modules and filtered $(\varphi, N)$-modules, with $\varphi$ and $N$ from the rings and the filtration from $K \otimes_{K_0} D_{\mathrm{st}}(V) \subset D_{\mathrm{dR}}(V)$. $V$ is *crystalline* if $\dim_{K_0} D_{\mathrm{cris}}(V) = \dim V$ and *semistable* if $\dim_{K_0} D_{\mathrm{st}}(V) = \dim V$.

**Proposition.** Crystalline implies semistable, and semistable implies de Rham. $D_{\mathrm{cris}}(V) = D_{\mathrm{st}}(V)^{N = 0}$, and for semistable $V$ we have $K \otimes_{K_0} D_{\mathrm{st}}(V) = D_{\mathrm{dR}}(V)$.

*Proof.* $B_{\mathrm{cris}} = B^{N=0}_{\mathrm{st}}$ gives $D_{\mathrm{cris}} = D_{\mathrm{st}}^{N=0}$, so $\dim D_{\mathrm{cris}} \leq \dim D_{\mathrm{st}}$. The injection $K \otimes_{K_0} B_{\mathrm{st}} \to B_{\mathrm{dR}}$ gives an injection $K \otimes_{K_0} D_{\mathrm{st}}(V) \to D_{\mathrm{dR}}(V)$, so $\dim_{K_0} D_{\mathrm{st}} \leq \dim_K D_{\mathrm{dR}} \leq \dim V$. If the left end equals $\dim V$, all terms do. $\square$

**Theorem.** The functors $D_{\mathrm{cris}}$ and $D_{\mathrm{st}}$ are fully faithful on crystalline and semistable representations. For crystalline $V$ with $D = D_{\mathrm{cris}}(V)$,
$$V \cong V_{\mathrm{cris}}(D) := (B_{\mathrm{cris}} \otimes_{K_0} D)^{\varphi = 1} \cap \mathrm{Fil}^0 (B_{\mathrm{dR}} \otimes_K D_K),$$
and for semistable $V$, $V \cong (B_{\mathrm{st}} \otimes D_{\mathrm{st}}(V))^{\varphi = 1, N = 0} \cap \mathrm{Fil}^0$.

*Proof.* For crystalline $V$, $\alpha_V$ is a $G_K$- and $\varphi$-equivariant isomorphism $B_{\mathrm{cris}} \otimes_{K_0} D \cong B_{\mathrm{cris}} \otimes V$, and after $K \otimes_{K_0}$ and extension to $B_{\mathrm{dR}}$ it respects filtrations, where $V$ has $\mathrm{Fil}^0 V = V$ and $\mathrm{Fil}^1 V = 0$. Hence the right side of the display is $(B_{\mathrm{cris}}^{\varphi = 1} \cap B^+_{\mathrm{dR}}) \otimes V$, which is $V$ by the fundamental exact sequence. Since $V_{\mathrm{cris}}$ is a functor, a morphism $D_{\mathrm{cris}}(V) \to D_{\mathrm{cris}}(V')$ induces a morphism $V \to V'$, which gives fullness, and faithfulness follows from injectivity of $\alpha_V$. For $B_{\mathrm{st}}$ the same argument works with $B_{\mathrm{st}}^{N = 0} = B_{\mathrm{cris}}$. $\square$

**Example ($\mathbb{Q}_p(1)$).** $D_{\mathrm{cris}}(\mathbb{Q}_p(n)) = K_0 \cdot t^{-n} \otimes e$, with $\varphi = p^{-n}$ and the jump at $-n$. In particular $D_{\mathrm{cris}}(\mathbb{Q}_p(1))$ has $\varphi = p^{-1}$ and jump $-1$.

**Example (unramified characters).** Let $\mu$ be an unramified character with $\mu(\mathrm{Frob}) = a$ for the arithmetic Frobenius, so $a \in \mathbb{Z}_p^\times$. Frobenius acts on $W(\overline{k}) \subset B_{\mathrm{cris}}$ as $\sigma^f$, and by Lang's theorem there is a unit $b$ of $W(\overline{k})$ with $\sigma^f(b) = a^{-1} b$. Then $b \otimes e$ spans $D_{\mathrm{cris}}(\mu)$, on which $\varphi^f = a^{-1}$ and the jump is $0$. For $K = \mathbb{Q}_p$ this says $\varphi = a^{-1}$. Combining with the previous example, every character $\mu \chi^n$ of $G_{\mathbb{Q}_p}$ is crystalline with $\varphi = \mu(\mathrm{Frob})^{-1} p^{-n}$ and jump $-n$. These are all the crystalline characters of $G_{\mathbb{Q}_p}$, as the next section shows.

**Example (Tate curve).** Let $E_q$ be the Tate curve over $K$ with parameter $q \in K^\times$, $|q| < 1$. Then $V_p E_q$ is an extension of $\mathbb{Q}_p$ by $\mathbb{Q}_p(1)$ whose class is the Kummer class of $q$ in $H^1(K, \mathbb{Q}_p(1))$. It is semistable and not crystalline. $D_{\mathrm{st}}(V_p E_q)$ has a basis $e_0, e_1$ with
$$\varphi e_0 = e_0, \quad \varphi e_1 = p^{-1} e_1, \quad N e_0 = e_1, \quad N e_1 = 0,$$
and the jumps are $0$ and $-1$: $\mathrm{Fil}^{-1} D_K = D_K$, $\mathrm{Fil}^1 D_K = 0$, and $\mathrm{Fil}^0 D_K$ is a line different from $K e_1$, whose position is fixed by a p-adic logarithm of $q$. One checks $N\varphi e_0 = e_1 = p\varphi N e_0$. The period of $e_0$ involves $u$, which is why $q$ needs $B_{\mathrm{st}}$ and not $B_{\mathrm{cris}}$; $D_{\mathrm{cris}} = \ker N = K_0 e_1$ is $D_{\mathrm{cris}}(\mathbb{Q}_p(1))$.

**Example (good reduction).** Let $E$ be an [[elliptic curve|427N6S6QQW]] over $\mathbb{Q}_p$ with good reduction and $a_p = p + 1 - \#\widetilde{E}(\mathbb{F}_p)$. Then $V = H^1_{\mathrm{et}}(E_{\overline{\mathbb{Q}}_p}, \mathbb{Q}_p)$ is crystalline, $D_{\mathrm{cris}}(V) = H^1_{\mathrm{cris}}(\widetilde{E}/\mathbb{Z}_p)[1/p]$, $\varphi$ has characteristic polynomial $X^2 - a_p X + p$, and the jumps are $0$ and $1$, with $\mathrm{Fil}^1$ the line $H^0(E, \Omega^1)$. This is the crystalline comparison theorem below.

## Weakly admissible modules

Which filtered $(\varphi, N)$-modules come from representations? The answer is a numerical condition.

**Definition.** For a filtered $(\varphi, N)$-module $D$ put
$$t_H(D) = \sum_i i \dim_K \mathrm{gr}^i D_K, \qquad t_N(D) = v_p(\det \varphi),$$
where $\det \varphi$ is the determinant of the matrix of $\varphi$ in any $K_0$-basis and $v_p(p) = 1$. The second is independent of the basis since $\sigma$ preserves $v_p$. A *subobject* of $D$ is a $K_0$-subspace $D'$ stable under $\varphi$ and $N$, with the filtration $\mathrm{Fil}^i D'_K = D'_K \cap \mathrm{Fil}^i D_K$.

$t_H(D)$ is the sum of the jumps, and $t_N(D)$ is the sum of the slopes of $\varphi$ in the [[Dieudonné-Manin classification|TKAB3ZDEZD]]. Both are additive in short exact sequences and satisfy $t(D) = t(\det D)$.

**Definition (weakly admissible).** $D$ is *weakly admissible* if $t_H(D) = t_N(D)$ and $t_H(D') \leq t_N(D')$ for every subobject $D'$.

In words: the Hodge polygon of every subobject lies on or below its Newton polygon, and the two polygons of $D$ have the same endpoint.

**Proposition (Fontaine).** If $V$ is semistable, $D_{\mathrm{st}}(V)$ is weakly admissible.

See Fontaine, *Représentations p-adiques semi-stables*, Exposé III of Astérisque 223. The proof reduces through exterior powers to the case of a line, where the rank one case of the next example and its analogue over $K$ give $t_H = t_N$.

**Example (rank one over $\mathbb{Q}_p$).** Let $K = \mathbb{Q}_p$ and $D = \mathbb{Q}_p e$ with $\varphi e = \lambda e$ and jump $i$. Then $N = 0$ by the Lemma, there are no proper subobjects, and $D$ is weakly admissible if and only if $v_p(\lambda) = i$. Write $\lambda = p^i a^{-1}$ with $a \in \mathbb{Z}_p^\times$; then $D \cong D_{\mathrm{cris}}(\mu \chi^{-i})$ with $\mu(\mathrm{Frob}) = a$. So the weakly admissible lines are exactly the $D_{\mathrm{cris}}$ of crystalline characters, and, by full faithfulness, every crystalline character of $G_{\mathbb{Q}_p}$ is some $\mu \chi^n$.

**Example (checks).** For $\mathbb{Q}_p(1)$, $t_H = -1$ and $t_N = v_p(p^{-1}) = -1$. For the Tate curve, $t_H(D) = -1 = t_N(D)$, and the only proper nonzero subobject is $K_0 e_1$, since $K_0 e_0$ is not $N$-stable. It has $t_N = -1$, and $t_H = -1$ if $\mathrm{Fil}^0 D_K \neq K e_1$ but $t_H = 0$ if $\mathrm{Fil}^0 D_K = K e_1$. So weak admissibility is exactly the condition that $\mathrm{Fil}^0$ is not the line $K e_1$, and the module with $\mathrm{Fil}^0 = Ke_1$ comes from no representation. For an ordinary elliptic curve over $\mathbb{Q}_p$, $\varphi$ has a unit eigenvalue $\alpha$ and the eigenvalue $p/\alpha$, with eigenlines $D_\alpha$ and $D_{p/\alpha}$. Here $t_H(D) = 1 = t_N(D)$, and $D_\alpha$ has $t_N = 0$, so weak admissibility says $D_\alpha \neq \mathrm{Fil}^1$: the unit root line is not the Hodge line.

**Theorem (Colmez and Fontaine, 2000).** Every weakly admissible filtered $(\varphi, N)$-module is admissible. Hence $D_{\mathrm{st}}$ is an equivalence between semistable representations and weakly admissible filtered $(\varphi, N)$-modules, with quasi-inverse $V_{\mathrm{st}}(D) = (B_{\mathrm{st}} \otimes D)^{\varphi = 1, N = 0} \cap \mathrm{Fil}^0$, and $D_{\mathrm{cris}}$ is an equivalence between crystalline representations and weakly admissible filtered $\varphi$-modules.

See Colmez and Fontaine, *Construction des représentations p-adiques semi-stables*, Invent. Math. 140 (2000). The case of jumps in an interval of length at most $p - 2$ and $K$ unramified is due to Fontaine and Laffaille (see the section on lattices). Later proofs use $(\varphi, \Gamma)$-modules (Berger) and vector bundles on the Fargues-Fontaine curve. The theorem turns questions about representations into linear algebra: to build a crystalline representation with given Frobenius eigenvalues and jumps, it is enough to write down a weakly admissible module.

**Corollary (Mazur's inequality).** If $V$ is crystalline, the Newton polygon of $\varphi$ on $D_{\mathrm{cris}}(V)$ lies on or above the Hodge polygon of the jumps, with the same endpoints.

*Proof.* Let $\lambda_1 \leq \dots \leq \lambda_d$ be the slopes and $h_1 \leq \dots \leq h_d$ the jumps. The subobject of slopes $\leq \lambda_r$ (over $\widehat{K_0^{\mathrm{ur}}}$, if $\varphi$ is not split over $K_0$) has $t_N = \lambda_1 + \dots + \lambda_r$, and its $t_H$ is at least $h_1 + \dots + h_r$, since a subspace of dimension $r$ meets the filtration in at least the $r$ smallest jumps. Weak admissibility gives $h_1 + \dots + h_r \leq \lambda_1 + \dots + \lambda_r$. $\square$

Mazur proved the inequality for the crystalline cohomology of smooth proper schemes over $W(k)$ (Mazur, *Frobenius and the Hodge filtration*, Bull. AMS 78, 1972), before Fontaine's theory. In the proof, [GeoOne holds](/step/geo-one-holds/) treats the jump condition `JumpStep` and the Frobenius condition `PhiStep` separately; weak admissibility is the link between the two.

**Remark (period domains).** For fixed $(D, \varphi, N)$ the filtrations of a given type form a flag variety, and the weakly admissible ones form an open subset in the sense of rigid geometry. These *period domains* are the targets of the period maps of Rapoport-Zink spaces (Rapoport and Zink, *Period spaces for p-divisible groups*, Annals of Math. Studies 141, 1996).

## Potentially semistable representations

**Definition.** $V$ is *potentially semistable* (resp. *potentially crystalline*) if $V|_{G_L}$ is semistable (resp. crystalline) for some finite extension $L/K$. Let $K_0^{\mathrm{ur}}$ be the maximal unramified extension of $K_0$ in $\overline{K}$, and put
$$D_{\mathrm{pst}}(V) = \varinjlim_{L} (B_{\mathrm{st}} \otimes V)^{G_L},$$
a $K_0^{\mathrm{ur}}$-vector space with a $\sigma$-semilinear $\varphi$, a linear $N$ with $N\varphi = p \varphi N$, and a semilinear action of $G_K$ commuting with both, under which an open subgroup of $I_K$ acts trivially.

The limit is over finite $L/K$ in $\overline{K}$, and $(B_{\mathrm{st}})^{G_L} = L_0$. As in the first section, $\dim_{K_0^{\mathrm{ur}}} D_{\mathrm{pst}}(V) \leq \dim V$ with equality exactly when $V$ is potentially semistable.

**Definition (Fontaine's Weil-Deligne representation).** For $w$ in the [[Weil group|TH24PGYAM5]] $W_K$ let $\alpha(w) \in \mathbb{Z}$ be such that $w$ acts on $\overline{k}$ as $x \mapsto x^{p^{f\alpha(w)}}$. For potentially semistable $V$ put
$$r(w) = w \circ \varphi^{-f\alpha(w)} \quad \text{on } D_{\mathrm{pst}}(V).$$
Then $r(w)$ is $K_0^{\mathrm{ur}}$-linear, $r$ is trivial on an open subgroup of $I_K$, and $r(w) N r(w)^{-1} = p^{f\alpha(w)} N$. The pair $\mathrm{WD}(V) = (r, N)$ is a Weil-Deligne representation over $K_0^{\mathrm{ur}}$, and after an embedding $K_0^{\mathrm{ur}} \to \overline{\mathbb{Q}}_p$ it is a Weil-Deligne representation in the sense of [Galois representations](/learn/galois-representations/), whose isomorphism class does not depend on the embedding.

This is Fontaine, *Représentations ℓ-adiques potentiellement semi-stables*, Exposé VIII of Astérisque 223. Linearity holds because $w$ acts on $K_0^{\mathrm{ur}}$ as $\sigma^{f\alpha(w)}$ and $\varphi^{-f\alpha(w)}$ is $\sigma^{-f\alpha(w)}$-semilinear. The relation for $N$ follows from $N\varphi^{-1} = p^{-1}\varphi^{-1} N$. A geometric Frobenius $\Phi$ has $\alpha(\Phi) = -1$, so $r(\Phi) = \Phi \circ \varphi^f$ and $r(\Phi) N r(\Phi)^{-1} = p^{-f} N = |\Phi| N$, matching the convention there.

**Proposition.** Let $V$ be potentially semistable. Then $V$ is semistable if and only if $I_K$ acts trivially on $\mathrm{WD}(V)$, and crystalline if and only if in addition $N = 0$. For crystalline $V$, $\mathrm{WD}(V)$ is unramified and $r(\Phi)$ is $\varphi^f$ on $D_{\mathrm{cris}}(V)$, extended linearly.

*Proof.* For $w \in I_K$, $\alpha(w) = 0$ and $r(w)$ is the action of $w$. Since $I_K$ acts trivially on $K_0^{\mathrm{ur}}$, $D_{\mathrm{pst}}^{I_K}$ is a $K_0^{\mathrm{ur}}$-space with a semilinear action of $\mathrm{Gal}(K_0^{\mathrm{ur}}/K_0)$ that is smooth, and Galois descent gives $D_{\mathrm{pst}}^{I_K} = K_0^{\mathrm{ur}} \otimes_{K_0} D_{\mathrm{pst}}^{G_K} = K_0^{\mathrm{ur}} \otimes_{K_0} D_{\mathrm{st}}(V)$. So $\dim D_{\mathrm{st}}(V) = \dim V$ if and only if $I_K$ acts trivially. Then $N = 0$ on $D_{\mathrm{st}}$ means $D_{\mathrm{cris}} = D_{\mathrm{st}}$. On $D_{\mathrm{cris}}(V) \otimes 1$ the element $\Phi$ acts trivially, so $r(\Phi) = \varphi^f$ there. $\square$

So for crystalline $V$ the clause `PhiKilled` of [GeoOne](/step/geo-one-def/), which concerns the characteristic polynomial of `wdAt` at an element of degree $-1$, is a statement about the $K_0$-linear map $\varphi^f$ on $D_{\mathrm{cris}}(V)$.

**Example.** For the Tate curve, $\mathrm{WD}(V_p E_q)$ is unramified with $r(\Phi) e_0 = e_0$, $r(\Phi) e_1 = p^{-f} e_1$ and $N e_0 = e_1$. This is $\mathrm{Sp}(2)$ in the notation of [Galois representations](/learn/galois-representations/), the same as the $\ell$-adic Weil-Deligne representation of $V_\ell E_q$ for $\ell \neq p$. For a ramified character $\eta$ of finite order, $\eta$ is potentially crystalline, $\mathrm{WD}(\eta)$ is $\eta$ seen as a character of $W_K$ (through local class field theory, [class field theory](/learn/class-field-theory/)) and $N = 0$.

**Theorem (Fontaine; Colmez and Fontaine).** Let $L/K$ be finite Galois. The functor $D_{\mathrm{st}, L}(V) = (B_{\mathrm{st}} \otimes V)^{G_L}$ is an equivalence between representations of $G_K$ that are semistable over $L$ and weakly admissible filtered $(\varphi, N, \mathrm{Gal}(L/K))$-modules: $L_0$-spaces with $\varphi$, $N$, a semilinear $\mathrm{Gal}(L/K)$ action commuting with both, and a $\mathrm{Gal}(L/K)$-stable filtration on the $L$-space $L \otimes_{L_0} D$.

This follows from the theorem of Colmez and Fontaine over $L$ and Galois descent; see Fontaine, Exposé VIII, and the chapter on potentially semistable representations in Fontaine and Ouyang. Weak admissibility is checked for the underlying filtered $(\varphi, N)$-module over $L$.

**Theorem (p-adic monodromy theorem; Berger, 2002).** A p-adic representation of $G_K$ is de Rham if and only if it is potentially semistable.

One direction follows from the previous sections: potentially semistable implies de Rham over some $L$, hence over $K$. For the other, Berger attaches to $V$ a $(\varphi, \Gamma)$-module over the Robba ring. When $V$ is de Rham, the Lie algebra of $\Gamma$ gives a p-adic differential equation with a Frobenius structure, and Crew's conjecture, proved by André, Kedlaya and Mebkhout, says such an equation becomes unipotent after a finite extension. Unipotence gives potential semistability. See Berger, *Représentations p-adiques et équations différentielles*, Invent. Math. 148 (2002), 219 to 284. This is `DeRhamPotSemistable` in [the literature chapter](/proof/literature/), used through the field `deRhamPotSemistable` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/). It makes Fontaine's $\mathrm{WD}(V)$ defined for every de Rham $V$, and so for every representation coming from geometry.

**Remark.** This is the p-adic analogue of Grothendieck's ℓ-adic monodromy theorem, which makes every ℓ-adic representation of $G_K$ with $\ell \neq p$ potentially semistable without any condition. The de Rham condition is the price of $\ell = p$: the representation $\log\chi$ of the first section is not potentially semistable, since it is not Hodge-Tate.

## The comparison theorems

Let $X$ be a smooth proper variety over $K$ and $V = H^n_{\mathrm{et}}(X_{\overline{K}}, \mathbb{Q}_p)$, the [[étale cohomology|7YX76G0838]] of [geometry](/learn/geometry/). The comparison theorems compute the invariants of $V$ from differential forms and from the special fiber.

**Theorem ($C_{\mathrm{HT}}$; Faltings, 1988).** There is a canonical $G_K$-equivariant isomorphism
$$V \otimes_{\mathbb{Q}_p} C \cong \bigoplus_{a = 0}^n H^{n-a}(X, \Omega^a_{X/K}) \otimes_K C(-a).$$

So $V$ is Hodge-Tate with weight $a$ of multiplicity $h^{a, n-a}$, in our sign convention. Tate conjectured this and proved it for abelian varieties with good reduction (Tate, *p-divisible groups*). See Faltings, *p-adic Hodge theory*, J. AMS 1 (1988), 255 to 299.

**Theorem ($C_{\mathrm{dR}}$; Faltings, 1988).** There is a canonical isomorphism $B_{\mathrm{dR}} \otimes_{\mathbb{Q}_p} V \cong B_{\mathrm{dR}} \otimes_K H^n_{\mathrm{dR}}(X/K)$ compatible with $G_K$ and filtrations. Hence $V$ is de Rham and $D_{\mathrm{dR}}(V) = H^n_{\mathrm{dR}}(X/K)$ with its Hodge filtration.

Taking $\mathrm{gr}^0$ of $C_{\mathrm{dR}}$ gives $C_{\mathrm{HT}}$. Scholze extended both to proper smooth rigid-analytic varieties, with a proof through perfectoid spaces (Scholze, *p-adic Hodge theory for rigid-analytic varieties*, Forum Math. Pi 1, 2013).

**Theorem ($C_{\mathrm{cris}}$).** Suppose $X$ has a smooth proper model $\mathfrak{X}$ over $\mathcal{O}_K$ with special fiber $\mathfrak{X}_k$. There is a canonical isomorphism
$$\begin{aligned} B_{\mathrm{cris}} \otimes_{\mathbb{Q}_p} V &\cong B_{\mathrm{cris}} \otimes_{K_0} H^n_{\mathrm{cris}}(\mathfrak{X}_k / W(k))[1/p] \end{aligned}$$
compatible with $G_K$ and $\varphi$, and with filtrations after $K \otimes_{K_0}$, through the Berthelot-Ogus isomorphism $K \otimes_{K_0} H^n_{\mathrm{cris}}[1/p] \cong H^n_{\mathrm{dR}}(X/K)$. Hence $V$ is crystalline with $D_{\mathrm{cris}}(V) = H^n_{\mathrm{cris}}(\mathfrak{X}_k/W(k))[1/p]$.

Fontaine and Messing proved this for $K$ unramified and $n < p - 1$ (Fontaine and Messing, *p-adic periods and p-adic étale cohomology*, Contemp. Math. 67, 1987). Faltings proved it in general (Faltings, *Crystalline cohomology and p-adic Galois representations*, 1989), and it is also the case $N = 0$ of Tsuji's theorem.

**Theorem ($C_{\mathrm{st}}$; Tsuji, 1999).** Suppose $X$ has a proper model with semistable reduction over $\mathcal{O}_K$. Then $V$ is semistable, and $D_{\mathrm{st}}(V)$ is the log-crystalline cohomology of Hyodo and Kato of the special fiber, with its $\varphi$, its monodromy $N$, and the filtration from $H^n_{\mathrm{dR}}(X/K)$ through the Hyodo-Kato isomorphism.

See Tsuji, *p-adic étale cohomology and crystalline cohomology in the semi-stable reduction case*, Invent. Math. 137 (1999), 233 to 411, and Hyodo and Kato, *Semi-stable reduction and crystalline cohomology with logarithmic poles*, in Astérisque 223. The statement was conjectured by Fontaine and Jannsen.

**Corollary.** For every smooth proper $X$ over $K$, $H^n_{\mathrm{et}}(X_{\overline{K}}, \mathbb{Q}_p)$ is potentially semistable.

*Proof.* By de Jong's alterations there is a finite extension $L/K$ and a proper generically finite map $X' \to X_L$ with $X'$ having semistable reduction, and $H^n(X_{\overline{K}})$ is a direct summand of $H^n(X'_{\overline{K}})$ as a $G_L$-representation by the trace. Apply $C_{\mathrm{st}}$ to $X'$. Alternatively, apply $C_{\mathrm{dR}}$ and Berger's theorem. $\square$

**Theorem (Katz and Messing, 1974).** If $\mathfrak{X}$ is smooth proper over $\mathcal{O}_K$, the characteristic polynomial of $\varphi^f$ on $H^n_{\mathrm{cris}}(\mathfrak{X}_k/W(k))[1/p]$ equals the characteristic polynomial of the geometric [[Frobenius element|H5145REFMW]] on $H^n_{\mathrm{et}}(\mathfrak{X}_{\overline{k}}, \mathbb{Q}_{\ell'})$ for every prime $\ell' \neq p$. It has integer coefficients independent of $\ell'$.

See Katz and Messing, *Some consequences of the Riemann hypothesis for varieties over finite fields*, Invent. Math. 23 (1974). With $C_{\mathrm{cris}}$ and the Proposition of the previous section, this says $\mathrm{WD}(V)$ has the same Frobenius characteristic polynomial as the $\ell'$-adic Weil-Deligne representations of the same variety. Proof pages use exactly this kind of compatibility between $\ell$-adic and $\ell'$-adic data.

**Theorem (good reduction).** An abelian variety $A$ over $K$ has good reduction if and only if $V_p A$ is crystalline.

This is the p-adic analogue of the Néron-Ogg-Shafarevich criterion. See Coleman and Iovita, *The Frobenius and monodromy operators for curves and abelian varieties*, Duke Math. J. 97 (1999), and Breuil, *Groupes p-divisibles, groupes finis et modules filtrés*, Ann. of Math. 152 (2000). For $p > 2$, Kisin proved more: $p$-divisible groups over $\mathcal{O}_K$ are equivalent to lattices in crystalline representations with weights in $\{0, -1\}$ (Kisin, *Crystalline representations and F-crystals*, 2006). See [formal groups](/learn/formal-groups/) for $p$-divisible groups.

**Remark.** The proofs go through a local study of the étale cohomology of affine pieces of $X$: Faltings uses almost purity, Scholze uses perfectoid spaces and the pro-étale site, and Bhatt, Morrow and Scholze build an $A_{\mathrm{inf}}$-cohomology from which the étale, de Rham and crystalline theories are specializations. The last route also gives integral statements, which the next section takes up.

## Lattices: Wach, Breuil-Kisin and prismatic F-crystals

$D_{\mathrm{cris}}$ is defined only after inverting $p$, so it does not see a lattice $T \subset V$ or the reduction $T/pT$. Deformation theory and congruences between modular forms need these. Several theories describe lattices by modules over rings of power series.

**Theorem (Fontaine and Laffaille, 1982).** Let $K = K_0$ be unramified. There is an exact fully faithful functor from *Fontaine-Laffaille modules* (finite $W(k)$-modules $M$ with a filtration $\mathrm{Fil}^i M$, $0 \leq i \leq p-2$, by direct summands, and $\sigma$-semilinear maps $\varphi_i : \mathrm{Fil}^i M \to M$ with $\varphi_i|_{\mathrm{Fil}^{i+1}} = p \varphi_{i+1}$ and $\sum_i \varphi_i(\mathrm{Fil}^i M) = M$) to $\mathbb{Z}_p[G_K]$-modules. Its image on free modules is the category of lattices in crystalline representations whose weights lie in an interval of length at most $p - 2$, after a twist.

See Fontaine and Laffaille, *Construction de représentations p-adiques*, Ann. Sci. ENS 15 (1982). This is the integral theory used in many modularity lifting theorems with small weights.

**Theorem (Fontaine, 1990).** Let $K$ be unramified and $\Gamma = \mathrm{Gal}(K(\mu_{p^\infty})/K)$. Let $\mathcal{O}_{\mathcal{E}}$ be the $p$-adic completion of $W(k)[[\pi]][1/\pi]$, with $\varphi(\pi) = (1 + \pi)^p - 1$ and $\gamma(\pi) = (1 + \pi)^{\chi(\gamma)} - 1$ for $\gamma \in \Gamma$. Then $\mathbb{Z}_p$-representations of $G_K$ are equivalent to étale $(\varphi, \Gamma)$-modules over $\mathcal{O}_{\mathcal{E}}$: finite modules $D$ with commuting semilinear $\varphi$ and $\Gamma$ such that the linearization of $\varphi$ is an isomorphism.

See Fontaine, *Représentations p-adiques des corps locaux I*, in the Grothendieck Festschrift II (1990). For general $K$ the same holds with a larger coefficient ring. The equivalence holds for all representations, and the crystalline ones correspond to modules with a special lattice over the bounded ring $W(k)[[\pi]]$.

**Definition (Wach module).** Let $K$ be unramified and $q = \varphi(\pi)/\pi$. A *Wach module* of height $h$ is a free $W(k)[[\pi]]$-module $N$ with commuting semilinear $\varphi$ and $\Gamma$, such that $\Gamma$ acts trivially on $N / \pi N$ and $N / \varphi^*(N)$ is killed by $q^h$.

**Theorem (Wach, 1996; Berger, 2004).** Let $K$ be unramified. A p-adic representation $V$ is crystalline with weights in an interval of length $h$, normalized as in Berger, if and only if $D(V)$ contains a Wach module $N(V)$ of height $h$ with $N(V)[1/\pi] = D(V)$. Each lattice $T$ in $V$ gives a Wach module $N(T)$, and $N(V)/\pi N(V)$ is $D_{\mathrm{cris}}(V)$ with its $\varphi$, and with the filtration induced by $\varphi$ and $q$.

See Wach, *Représentations p-adiques potentiellement cristallines*, Bull. SMF 124 (1996), and Berger, *Limites de représentations cristallines*, Compositio Math. 140 (2004). Wach modules are explicit, and Berger uses them to compute the reductions mod $p$ of crystalline representations of $G_{\mathbb{Q}_p}$ in families.

**Definition (Breuil-Kisin module).** Fix a uniformizer $\varpi$ of $K$ with Eisenstein polynomial $E(u) \in W(k)[u]$, and put $\mathfrak{S} = W(k)[[u]]$ with $\varphi$ extending $\sigma$ by $\varphi(u) = u^p$. A *Breuil-Kisin module* of height $\leq h$ is a finite free $\mathfrak{S}$-module $\mathfrak{M}$ with a $\varphi$-semilinear map $\varphi_{\mathfrak{M}}$ whose linearization $\varphi^* \mathfrak{M} \to \mathfrak{M}$ is injective with cokernel killed by $E(u)^h$.

Let $K_\infty = K(\varpi^{1/p^\infty})$ for a compatible system of $p$-power roots, and $\varpi^\flat \in \mathcal{O}_{C^\flat}$ the corresponding element. The map $u \mapsto [\varpi^\flat]$ embeds $\mathfrak{S}$ in $A_{\mathrm{inf}} \subset W(C^\flat)$ compatibly with $\varphi$, and $G_{K_\infty}$ fixes its image.

**Theorem (Kisin, 2006).** Let $V$ be crystalline with weights in $[-h, 0]$ and $T \subset V$ a lattice. There is a Breuil-Kisin module $\mathfrak{M}$ of height $\leq h$, unique up to unique isomorphism, with
$$T|_{G_{K_\infty}} \cong (\mathfrak{M} \otimes_{\mathfrak{S}} W(C^\flat))^{\varphi = 1}.$$
The restriction from crystalline representations of $G_K$ to representations of $G_{K_\infty}$ is fully faithful, and $\mathfrak{M}/u\mathfrak{M}[1/p]$ recovers $D_{\mathrm{cris}}(V)$ up to a Frobenius twist.

See Kisin, *Crystalline representations and F-crystals*, in Algebraic Geometry and Number Theory, Progr. Math. 253 (2006), section 2. Kisin works with the contravariant functor, so his statement is dual to the one above, and his weights carry the opposite sign. Breuil-Kisin modules have no $\Gamma$-action, so they work for ramified $K$, at the cost of seeing only $G_{K_\infty}$.

**Definition (BKF module).** A *Breuil-Kisin-Fargues module* is a finite free $A_{\mathrm{inf}}$-module $M$ with an isomorphism $\varphi_M : (\varphi^* M)[1/\varphi(\xi)] \cong M[1/\varphi(\xi)]$.

**Theorem (Fargues; see Bhatt, Morrow and Scholze, 2018, section 4).** BKF modules are equivalent to pairs $(T, \Xi)$, where $T$ is a finite free $\mathbb{Z}_p$-module and $\Xi$ is a $B^+_{\mathrm{dR}}$-lattice in $T \otimes_{\mathbb{Z}_p} B_{\mathrm{dR}}$.

Here $T$ is recovered as $(M \otimes W(C^\flat))^{\varphi = 1}$. A Breuil-Kisin module $\mathfrak{M}$ gives the BKF module $\mathfrak{M} \otimes_{\mathfrak{S}, \varphi} A_{\mathrm{inf}}$, and the case of $p$-divisible groups, where $M$ is minuscule, is the classification in [formal groups](/learn/formal-groups/).

**Theorem (Bhatt, Morrow and Scholze, 2018).** Let $\mathfrak{X}$ be a proper smooth formal scheme over $\mathcal{O}_C$. There is a perfect complex $R\Gamma_{A_{\mathrm{inf}}}(\mathfrak{X})$ of $A_{\mathrm{inf}}$-modules with a Frobenius whose cohomology groups are finitely presented, free after inverting $p$, with a Frobenius that is an isomorphism after inverting $\varphi(\xi)$, and whose base changes compute étale, de Rham and crystalline cohomology. If $H^i_{\mathrm{cris}}(\mathfrak{X}_k/W(k))$ is torsion-free, so is $H^i_{\mathrm{et}}(\mathfrak{X}_C, \mathbb{Z}_p)$, and $\dim_{\mathbb{F}_p} H^i_{\mathrm{et}}(\mathfrak{X}_C, \mathbb{F}_p) \leq \dim_k H^i_{\mathrm{dR}}(\mathfrak{X}_k/k)$.

See Bhatt, Morrow and Scholze, *Integral p-adic Hodge theory*, Publ. Math. IHES 128 (2018), Theorem 1.1 for the torsion statements.

**Definition (prism).** A *prism* is a pair $(A, I)$ of a $\delta$-ring $A$ and an ideal $I$ defining a Cartier divisor on $\mathrm{Spec}\, A$, such that $A$ is derived $(p, I)$-complete and $p \in I + \varphi(I) A$. Here $\varphi(x) = x^p + p\delta(x)$ is the Frobenius lift of the $\delta$-structure.

**Example.** $(\mathfrak{S}, (E(u)))$ is the *Breuil-Kisin prism*, $(A_{\mathrm{inf}}, \ker\theta)$ is the *perfect prism* of $\mathcal{O}_C$, and $(W(k), (p))$ is the crystalline prism of $k$. The prismatic site of $\mathcal{O}_K$ consists of prisms with a map from $\mathcal{O}_K$ to $A/I$, and its prismatic cohomology specializes to Breuil-Kisin, $A_{\mathrm{inf}}$ and crystalline cohomology at these three prisms (Bhatt and Scholze, *Prisms and prismatic cohomology*, Ann. of Math. 196, 2022).

**Theorem (Bhatt and Scholze, 2023).** The étale realization is an equivalence between prismatic F-crystals in vector bundles on $(\mathcal{O}_K)_{\Delta}$ and lattices in crystalline representations of $G_K$.

See Bhatt and Scholze, *Prismatic F-crystals and crystalline Galois representations*, Camb. J. Math. 11 (2023). Evaluation at the Breuil-Kisin prism gives Kisin's module, and evaluation at $A_{\mathrm{inf}}$ gives the BKF module, so the theorem puts all the earlier lattice theories in one category and works for every $K$ and every $p$. This is `BhattScholzeIntegral` in [the literature chapter](/proof/literature/) and the field `bhattScholzeCrystallineLattices` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/).

**Remark (prismatic Dieudonné theory).** Anschütz and Le Bras classify $p$-divisible groups over quasi-syntomic rings by admissible prismatic Dieudonné crystals (Anschütz and Le Bras, *Prismatic Dieudonné theory*, Forum Math. Pi 11, 2023). Over $\mathcal{O}_K$ this is the case of weights in $\{0, -1\}$ of the Bhatt-Scholze theorem. The statement `PrismaticDieudonneHodge` of [CM divisibility](/proof/cm-divisibility/) asks for this module with its Hodge filtration; see [formal groups](/learn/formal-groups/).

## Local Bloch-Kato theory

Let $V$ be a p-adic representation of $G_K$ and $V^*(1) = \mathrm{Hom}(V, \mathbb{Q}_p(1))$. We use continuous [[Galois cohomology|9MPCZ3EAJM]] (Tate, *Relations between $K_2$ and Galois cohomology*, Invent. Math. 36, 1976, section 2) and the facts from [Galois cohomology](/learn/galois-cohomology/), passed from finite modules to $\mathbb{Q}_p$-coefficients by limits: $H^i(K, V)$ is finite-dimensional and vanishes for $i > 2$, the cup product $H^i(K, V) \times H^{2-i}(K, V^*(1)) \to H^2(K, \mathbb{Q}_p(1)) = \mathbb{Q}_p$ is perfect (local Tate duality), and
$$h^0(V) - h^1(V) + h^2(V) = -[K : \mathbb{Q}_p] \dim V,$$
where $h^i(V) = \dim_{\mathbb{Q}_p} H^i(K, V)$.

**Definition (Bloch-Kato subgroups).** Put
$$\begin{aligned} H^1_e(K, V) &= \ker\big(H^1(K, V) \to H^1(K, B_{\mathrm{cris}}^{\varphi = 1} \otimes V)\big), \\ H^1_f(K, V) &= \ker\big(H^1(K, V) \to H^1(K, B_{\mathrm{cris}} \otimes V)\big), \\ H^1_{\mathrm{st}}(K, V) &= \ker\big(H^1(K, V) \to H^1(K, B_{\mathrm{st}} \otimes V)\big), \\ H^1_g(K, V) &= \ker\big(H^1(K, V) \to H^1(K, B_{\mathrm{dR}} \otimes V)\big). \end{aligned}$$
The inclusions of rings give $H^1_e \subset H^1_f \subset H^1_{\mathrm{st}} \subset H^1_g$.

**Proposition.** Let $V$ be crystalline (resp. semistable, de Rham), and let $c \in H^1(K, V)$ be the class of an extension $0 \to V \to E \to \mathbb{Q}_p \to 0$. Then $E$ is crystalline (resp. semistable, de Rham) if and only if $c \in H^1_f$ (resp. $H^1_{\mathrm{st}}$, $H^1_g$).

*Proof.* Take $B = B_{\mathrm{cris}}$; the other cases are the same. Tensor the extension with $B$ and take cohomology: $0 \to D_{\mathrm{cris}}(V) \to D_{\mathrm{cris}}(E) \to K_0 \xrightarrow{\delta} H^1(K, B \otimes V)$. The connecting map is $K_0$-linear and sends $1$ to the image of $c$. So $\dim D_{\mathrm{cris}}(E) = \dim V + 1$ if and only if this image is $0$. $\square$

So $H^1_f$ is the group of crystalline extensions, and in the global Selmer groups of [Galois cohomology](/learn/galois-cohomology/) it is the local condition at places above $p$.

**Proposition (places prime to $p$).** Let $F$ be a finite extension of $\mathbb{Q}_r$ with $r \neq p$, and define $H^1_f(F, V) = H^1(G_F / I_F, V^{I_F})$, the unramified classes. Then $\dim H^1_f(F, V) = \dim H^0(F, V)$.

*Proof.* $G_F/I_F \cong \widehat{\mathbb{Z}}$ is generated by Frobenius $\mathrm{Fr}$, and for a finite-dimensional $\mathbb{Q}_p$-space $W$ with continuous action, $H^0 = \ker(\mathrm{Fr} - 1)$ and $H^1 = \mathrm{coker}(\mathrm{Fr} - 1)$, which have the same dimension. Apply this to $W = V^{I_F}$, noting $W^{\mathrm{Fr} = 1} = H^0(F, V)$. $\square$

**Lemma (Bloch and Kato).** The sequences
$$0 \to \mathbb{Q}_p \to B_{\mathrm{cris}}^{\varphi = 1} \to B_{\mathrm{dR}}/B^+_{\mathrm{dR}} \to 0, \qquad 0 \to \mathbb{Q}_p \to B_{\mathrm{cris}} \xrightarrow{x \mapsto ((1 - \varphi)x,\, x)} B_{\mathrm{cris}} \oplus B_{\mathrm{dR}}/B^+_{\mathrm{dR}} \to 0$$
are exact.

The first is the fundamental exact sequence. The second follows from it and the surjectivity of $1 - \varphi$ on $B_{\mathrm{cris}}$; see Bloch and Kato, *L-functions and Tamagawa numbers of motives*, in the Grothendieck Festschrift I (1990).

**Theorem (fundamental sequences; Bloch and Kato, section 3).** Let $V$ be de Rham. There are exact sequences
$$\begin{aligned} &0 \to H^0(K, V) \to D_{\mathrm{cris}}(V) \to D_{\mathrm{cris}}(V) \oplus D_{\mathrm{dR}}(V)/\mathrm{Fil}^0 \to H^1_f(K, V) \to 0, \\ &0 \to H^0(K, V) \to D_{\mathrm{cris}}(V)^{\varphi = 1} \to D_{\mathrm{dR}}(V)/\mathrm{Fil}^0 \xrightarrow{\exp} H^1_e(K, V) \to 0. \end{aligned}$$

*Proof.* Tensor the two sequences of the Lemma with $V$ and take the long exact sequence of cohomology. For de Rham $V$, $(B_{\mathrm{dR}}/B^+_{\mathrm{dR}} \otimes V)^{G_K} = D_{\mathrm{dR}}(V)/\mathrm{Fil}^0$ (Bloch and Kato, section 3). The image of the coboundary is the kernel of $H^1(K, V) \to H^1(K, B_{\mathrm{cris}} \otimes V) \oplus H^1(K, B_{\mathrm{dR}}/B^+_{\mathrm{dR}} \otimes V)$. A class that dies in $H^1(B_{\mathrm{cris}} \otimes V)$ dies in $H^1(B_{\mathrm{dR}} \otimes V)$ and so in the quotient, so this kernel is $H^1_f$. The second sequence is the same with $B^{\varphi = 1}_{\mathrm{cris}}$. $\square$

The map $\exp$ is the *Bloch-Kato exponential*. For $V = \mathbb{Q}_p(1)$ it is the p-adic exponential $K \to \widehat{K^\times} \otimes \mathbb{Q}_p$ followed by the Kummer map, which explains the name.

**Corollary (dimension formulas).** For de Rham $V$, with all dimensions over $\mathbb{Q}_p$,
$$\begin{aligned} \dim H^1_f(K, V) &= \dim D_{\mathrm{dR}}(V)/\mathrm{Fil}^0 + \dim H^0(K, V), \\ \dim H^1_f(K, V) &= \dim H^1_e(K, V) + \dim D_{\mathrm{cris}}(V)^{\varphi = 1}. \end{aligned}$$

*Proof.* Take alternating sums of dimensions in the two sequences. In the first the two copies of $D_{\mathrm{cris}}(V)$ cancel. $\square$

This is Bloch and Kato, Corollary 3.8.4.

**Proposition.** For de Rham $V$, $\dim H^1_f(K, V) + \dim H^1_f(K, V^*(1)) = \dim H^1(K, V)$.

*Proof.* $V^*(1)$ is de Rham with $D_{\mathrm{dR}}(V^*(1)) = D_{\mathrm{dR}}(V)^* \otimes D_{\mathrm{dR}}(\mathbb{Q}_p(1))$, so its jumps are $-i - 1$ for the jumps $i$ of $V$. A jump $-i-1$ is negative if and only if $i \geq 0$, so $\dim D_{\mathrm{dR}}(V^*(1))/\mathrm{Fil}^0 = \dim \mathrm{Fil}^0 D_{\mathrm{dR}}(V)$. Add the first dimension formula for $V$ and for $V^*(1)$:
$$h^1_f(V) + h^1_f(V^*(1)) = \dim_{\mathbb{Q}_p} D_{\mathrm{dR}}(V) + h^0(V) + h^0(V^*(1)).$$
Here $\dim_{\mathbb{Q}_p} D_{\mathrm{dR}}(V) = [K : \mathbb{Q}_p] \dim V$, and $h^0(V^*(1)) = h^2(V)$ by local duality. The Euler characteristic formula turns the right side into $h^1(V)$. $\square$

**Theorem (Bloch and Kato, Proposition 3.8).** Let $V$ be de Rham. Under the local Tate pairing $H^1(K, V) \times H^1(K, V^*(1)) \to \mathbb{Q}_p$, the subspaces $H^1_f(K, V)$ and $H^1_f(K, V^*(1))$ are exact annihilators of each other, and so are $H^1_e(K, V)$ and $H^1_g(K, V^*(1))$.

Given the Proposition, the first statement reduces to the fact that $H^1_f(V)$ and $H^1_f(V^*(1))$ are orthogonal, which Bloch and Kato prove with the cup product $B_{\mathrm{cris}} \otimes B_{\mathrm{cris}} \to B_{\mathrm{cris}}$.

**Corollary.** For de Rham $V$, $\dim H^1_g(K, V) = \dim H^1_f(K, V) + \dim D_{\mathrm{cris}}(V^*(1))^{\varphi = 1}$.

*Proof.* By duality, $h^1_g(V^*(1)) - h^1_f(V^*(1)) = (h^1 - h^1_e(V)) - (h^1 - h^1_f(V)) = h^1_f(V) - h^1_e(V)$, which is $\dim D_{\mathrm{cris}}(V)^{\varphi = 1}$ by the dimension formula. Replace $V$ by $V^*(1)$. $\square$

**Example ($\mathbb{Q}_p(1)$).** By Kummer theory $H^1(K, \mathbb{Q}_p(1)) = \widehat{K^\times} \otimes \mathbb{Q}_p$, of dimension $[K : \mathbb{Q}_p] + 1$. The jump $-1$ gives $\dim D_{\mathrm{dR}}/\mathrm{Fil}^0 = [K:\mathbb{Q}_p]$ and $h^0 = 0$, so $h^1_f = [K : \mathbb{Q}_p]$, and indeed $H^1_f = \mathcal{O}_K^\times \otimes \mathbb{Q}_p$ (Bloch and Kato, section 3). $D_{\mathrm{cris}}(\mathbb{Q}_p(1))^{\varphi=1} = 0$, so $H^1_e = H^1_f$, and $D_{\mathrm{cris}}(\mathbb{Q}_p)^{\varphi=1} = \mathbb{Q}_p$, so $h^1_g = [K:\mathbb{Q}_p] + 1$ and $H^1_g = H^1$: every extension of $\mathbb{Q}_p$ by $\mathbb{Q}_p(1)$ is de Rham, and the Tate curve is the case of the class of $q$.

**Example ($\mathbb{Q}_p$).** Here $h^1 = 1 + [K:\mathbb{Q}_p]$, $D_{\mathrm{dR}}/\mathrm{Fil}^0 = 0$ and $h^0 = 1$. So $h^1_f = 1$ and $H^1_f$ is the line of unramified homomorphisms $G_K \to \mathbb{Q}_p$. Then $h^1_e = 1 - 1 = 0$ and $h^1_g = 1 + 0 = 1$. The ramified homomorphisms, such as $\log \chi$, give extensions that are not de Rham, in line with the first section.

**Example (Hodge-Tate but not de Rham).** Let $n \leq -1$. Then $h^0(\mathbb{Q}_p(n)) = 0$ and $h^2(\mathbb{Q}_p(n)) = h^0(\mathbb{Q}_p(1-n)) = 0$, so $h^1 = [K : \mathbb{Q}_p] \geq 1$. The jump of $\mathbb{Q}_p(n)$ is $-n \geq 1$, so $D_{\mathrm{dR}}/\mathrm{Fil}^0 = 0$ and $h^1_f = 0$; and $\varphi = p^{n-1} \neq 1$ on $D_{\mathrm{cris}}(\mathbb{Q}_p(1-n))$, so $h^1_g = 0$. Hence a nonsplit extension $E$ of $\mathbb{Q}_p$ by $\mathbb{Q}_p(n)$ is not de Rham. It is Hodge-Tate: $E \otimes C$ is an extension of $C$ by $C(n)$, which splits since $H^1(G_K, C(n)) = 0$.

**Example (abelian varieties).** For an abelian variety $A$ over $K$, the Kummer map identifies $A(K) \otimes \mathbb{Q}_p$ with $H^1_e(K, V_p A) = H^1_f(K, V_p A) = H^1_g(K, V_p A)$ (Bloch and Kato, section 3). As a check, $V_pA$ has jumps $0$ and $-1$ with multiplicity $g$, so $h^1_f = g [K : \mathbb{Q}_p] = \dim_{\mathbb{Q}_p} A(K) \otimes \mathbb{Q}_p$, since $A(K)$ has a subgroup of finite index isomorphic to $\mathcal{O}_K^g$ (Mattuck). This is why Bloch-Kato Selmer groups generalize the Selmer groups of abelian varieties and the [[Selmer group|36YNSTESMQ]] of [Galois cohomology](/learn/galois-cohomology/), with the [[Tate-Shafarevich group|BK9WBMF56G]] as the obstruction to the Kummer image being everything.

**Corollary ($H^1_g = H^1_{\mathrm{st}}$).** If $V$ is semistable, then $H^1_g(K, V) = H^1_{\mathrm{st}}(K, V)$.

*Proof.* Let $c \in H^1_g$ be the class of $E$. Then $E$ is de Rham, so potentially semistable by Berger's theorem, and $I_K$ acts on $\mathrm{WD}(E)$ through a finite quotient. $\mathrm{WD}(E)$ is an extension of $\mathrm{WD}(\mathbb{Q}_p)$ by $\mathrm{WD}(V)$, and $I_K$ acts trivially on both. So each element of $I_K$ acts by a unipotent matrix of finite order, which in characteristic $0$ is the identity. By the Proposition of the fifth section, $E$ is semistable. $\square$

This equality was expected by Hyodo, and Berger states it as a consequence of his theorem.

**Definition (integral Bloch-Kato groups).** For a lattice $T \subset V$ let $H^1_f(K, T)$ be the preimage of $H^1_f(K, V)$ in $H^1(K, T)$, and $H^1_f(K, V/T)$ the image of $H^1_f(K, V)$ in $H^1(K, V/T)$. For $V/T$ the same exact annihilator statement holds under the pairing of $H^1(K, T)$ with $H^1(K, V^*(1)/T^*(1))$ (Bloch and Kato, section 3).

**Remark (use in the proof).** The global Bloch-Kato Selmer group of a representation of $G_F$, for a number field $F$, is the set of classes whose restriction lies in $H^1_f$ at every place. The bundle `nLink` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) contains the local dimension formula with rational and integral duality as `BlochKatoLocal`, together with local Tate duality and the local Euler characteristic. The vanishing of Bloch-Kato Selmer groups of two twists of a two-dimensional representation is the conclusion of `KatoTwoW` in [the window bound](/proof/vwin/). Global duality combines the local dimension formulas of this section into the Greenberg-Wiles formula of [Galois cohomology](/learn/galois-cohomology/).

## Notes and references

- J.-M. Fontaine and Y. Ouyang, *Theory of p-adic Galois representations* (book manuscript). The chapters on $C$-representations and the Sen operator, on $B_{\mathrm{dR}}$ and de Rham representations, on $B_{\mathrm{cris}}$ and $B_{\mathrm{st}}$, and on admissible representations cover the first four sections of this chapter at the level of detail used here; the chapter on $(\varphi, \Gamma)$-modules covers part of the section on lattices.
- O. Brinon and B. Conrad, *CMI Summer School notes on p-adic Hodge theory* (2009). Complete proofs of Tate's theorem on $C(i)$, the structure of $B_{\mathrm{dR}}$ and $B_{\mathrm{cris}}$, the formalism of admissible representations, the full faithfulness of $D_{\mathrm{cris}}$, and the statement of weak admissibility. Read it first for the period rings.
- J.-M. Fontaine (ed.), *Périodes p-adiques*, Astérisque 223 (1994). Exposé II (*Le corps des périodes p-adiques*) for $B_{\mathrm{dR}}$, $B_{\mathrm{cris}}$ and the fundamental exact sequence; Exposé III (*Représentations p-adiques semi-stables*) for $B_{\mathrm{st}}$, filtered $(\varphi, N)$-modules and weak admissibility; Exposé VIII (*Représentations ℓ-adiques potentiellement semi-stables*) for $D_{\mathrm{pst}}$ and $\mathrm{WD}(V)$. The volume also contains Hyodo and Kato on log-crystalline cohomology.
- L. Berger, *An introduction to the theory of p-adic representations*, in Geometric Aspects of Dwork Theory, de Gruyter (2004). A survey of the whole theory, including $(\varphi, \Gamma)$-modules and the route to the monodromy theorem.
- J. Tate, *p-divisible groups*, in Proceedings of a Conference on Local Fields, Springer (1967). Section 3 for the cohomology of $C(i)$, section 4 for the Hodge-Tate decomposition of $p$-divisible groups.
- S. Sen, *Continuous cohomology and p-adic Galois representations*, Invent. Math. 62 (1980), for $C$-admissibility and the Sen operator.
- P. Colmez and J.-M. Fontaine, *Construction des représentations p-adiques semi-stables*, Invent. Math. 140 (2000), for weakly admissible implies admissible.
- L. Berger, *Représentations p-adiques et équations différentielles*, Invent. Math. 148 (2002), 219 to 284, for the p-adic monodromy theorem and $H^1_g = H^1_{\mathrm{st}}$.
- G. Faltings, *p-adic Hodge theory*, J. AMS 1 (1988), 255 to 299, and *Crystalline cohomology and p-adic Galois representations* (1989), for $C_{\mathrm{HT}}$, $C_{\mathrm{dR}}$ and $C_{\mathrm{cris}}$. J.-M. Fontaine and W. Messing, *p-adic periods and p-adic étale cohomology*, Contemp. Math. 67 (1987), for the first case of $C_{\mathrm{cris}}$. T. Tsuji, Invent. Math. 137 (1999), 233 to 411, for $C_{\mathrm{st}}$. P. Scholze, *p-adic Hodge theory for rigid-analytic varieties*, Forum Math. Pi 1 (2013), for the perfectoid proof.
- N. Katz and W. Messing, Invent. Math. 23 (1974), for the comparison of crystalline and ℓ-adic Frobenius. B. Mazur, Bull. AMS 78 (1972), for Mazur's inequality. R. Coleman and A. Iovita, Duke Math. J. 97 (1999), and C. Breuil, Ann. of Math. 152 (2000), for the crystalline criterion of good reduction.
- J.-M. Fontaine and G. Laffaille, Ann. Sci. ENS 15 (1982); J.-M. Fontaine, *Représentations p-adiques des corps locaux I*, Grothendieck Festschrift II (1990); N. Wach, Bull. SMF 124 (1996); L. Berger, *Limites de représentations cristallines*, Compositio Math. 140 (2004); M. Kisin, *Crystalline representations and F-crystals*, Progr. Math. 253 (2006), section 2. These are the lattice theories in historical order.
- B. Bhatt, M. Morrow and P. Scholze, *Integral p-adic Hodge theory*, Publ. Math. IHES 128 (2018): section 4 for BKF modules and Fargues' classification, Theorem 1.1 for torsion. B. Bhatt and P. Scholze, *Prisms and prismatic cohomology*, Ann. of Math. 196 (2022), and *Prismatic F-crystals and crystalline Galois representations*, Camb. J. Math. 11 (2023). J. Anschütz and A.-C. Le Bras, *Prismatic Dieudonné theory*, Forum Math. Pi 11 (2023).
- S. Bloch and K. Kato, *L-functions and Tamagawa numbers of motives*, in The Grothendieck Festschrift I, Progr. Math. 86 (1990), section 3: the definitions of $H^1_e$, $H^1_f$, $H^1_g$, the exponential, Proposition 3.8 for duality and Corollary 3.8.4 for dimensions. Read it with J. Tate, Invent. Math. 36 (1976), for continuous cohomology, and J.-P. Serre, *Galois Cohomology*, Chapter II, section 5, for local duality and the Euler characteristic.
- M. Rapoport and T. Zink, *Period spaces for p-divisible groups*, Annals of Math. Studies 141 (1996), for period domains of weakly admissible filtrations.
