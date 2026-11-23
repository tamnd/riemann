Étale cohomology gives a scheme $X$ cohomology groups $H^i(X, \mathcal{F})$ with torsion coefficients, and from them $\ell$-adic groups $H^i(X_{\bar k}, \mathbb{Q}_\ell)$ with an action of $\mathrm{Gal}(\bar k/k)$. This chapter gives the theory that [the geometry chapter](/learn/geometry/) only summarizes: the étale site, sheaves and their cohomology, the Kummer sequence and the cohomology of curves, proper and smooth base change, Künneth and Poincaré duality, purity and cycle classes, the Lefschetz trace formula, and the comparison with singular cohomology. In [the Galois row](/proof/galois-row/), the Galois representations of automorphic representations are cut out of the étale cohomology of towers of Shimura varieties. Smooth and proper base change make them unramified at the good places, the Eichler-Shimura relation fixes their Frobenius there, the Kummer sequence and Chern classes give the classes from which the development volumes build power sums, and the comparison theorems connect them to the Hodge cohomology that enters [GeoOne](/step/geo-one-def/). Throughout, $\ell$ is a prime, $n \ge 1$ an integer and $\Lambda = \mathbb{Z}/n$; a scheme is quasi-compact and quasi-separated when we take its cohomology.

## Étale morphisms and the étale site

**Definition.** A morphism of schemes $f : X \to Y$ is *unramified* if it is locally of finite type and $\Omega_{X/Y} = 0$. It is *[[étale|H84VHC8PX2]]* if it is locally of finite presentation, flat and unramified.

This agrees with the definition in [the geometry chapter](/learn/geometry/) as a [[smooth|EXKGG9X6J0]] morphism of relative dimension $0$. Open immersions are étale. Étale morphisms are stable under composition and base change, and if $g \circ f$ and $g$ are étale, then $f$ is étale.

**Example.** Let $K$ be a field. A morphism $\mathrm{Spec}\, A \to \mathrm{Spec}\, K$ is étale if and only if $A$ is a finite product of finite separable field extensions of $K$. So étale schemes over $K$ are the geometric form of separable algebras, and Galois theory becomes a part of the étale theory.

**Example (standard étale).** Let $R$ be a ring, $f \in R[x]$ monic and $g \in R[x]/(f)$ such that the derivative $f'$ is a unit in $(R[x]/(f))_g$. Then $R \to (R[x]/(f))_g$ is étale. Each étale morphism has this form locally: for $f : X \to Y$ étale and $x \in X$, there are affine opens $x \in U$, $f(U) \subseteq V = \mathrm{Spec}\, R$ such that $U \to V$ is standard étale (Milne, *Étale Cohomology*, Chapter I).

**Example.** Let $S$ be a scheme and $m \ge 1$. The map $\mathbb{G}_{m,S} \to \mathbb{G}_{m,S}$, $t \mapsto t^m$, is finite and flat. It is étale if and only if $m$ is invertible on $S$, since $d(t^m) = m t^{m-1}\, dt$ and $t$ is a unit.

**Definition.** Let $X$ be a scheme. The *small étale site* $X_{\mathrm{et}}$ is the category of étale morphisms $U \to X$ with morphisms over $X$, in which a family $(U_i \to U)$ is a *covering* if the images cover $U$. A *presheaf* on $X_{\mathrm{et}}$ is a contravariant functor to abelian groups (or sets). It is a *sheaf* if for each covering $(U_i \to U)$ the sequence
$$\mathcal{F}(U) \to \prod_i \mathcal{F}(U_i) \rightrightarrows \prod_{i,j} \mathcal{F}(U_i \times_U U_j)$$
is exact.

This is a *[[Grothendieck topology|GDRFSJ8E2B]]*: open subsets are replaced by étale maps, and intersections by fibre products. The new opens are fine enough to extract roots of units, which is what makes the cohomology good.

**Definition.** A *geometric point* of $X$ is a morphism $\bar x : \mathrm{Spec}\, \Omega \to X$ with $\Omega$ a separably closed field. An *étale neighbourhood* of $\bar x$ is an étale $U \to X$ with a lift of $\bar x$ to $U$.

**Definition.** A local ring $(A, \mathfrak{m}, \kappa)$ is *henselian* if for each monic $f \in A[x]$ and each simple root $a_0 \in \kappa$ of $f \bmod \mathfrak{m}$ there is a root $a \in A$ of $f$ with $a \equiv a_0 \bmod \mathfrak{m}$. It is *strictly henselian* if it is henselian and $\kappa$ is separably closed.

**Definition.** The *strict henselization* of $X$ at $\bar x$ is $\mathcal{O}^{\mathrm{sh}}_{X, \bar x} = \operatorname{colim} \Gamma(U, \mathcal{O}_U)$, over the affine étale neighbourhoods $U$ of $\bar x$. It is a strictly henselian local ring, with residue field the separable closure of $\kappa(x)$ in $\Omega$.

**Example.** For $X = \mathrm{Spec}\, K$ and $\bar x = \mathrm{Spec}\, K^{\mathrm{sep}}$ the strict henselization is $K^{\mathrm{sep}}$. For $X = \mathrm{Spec}\, \mathbb{Z}_p$ at the closed point it is the ring of integers of the maximal unramified extension of $\mathbb{Q}_p$.

Strictly henselian local rings play the role of small balls: they have no nontrivial étale covers (each étale cover of $\mathrm{Spec}\, A$ has a section), so their étale cohomology vanishes in positive degrees. The development chapters reduce the proper base change theorem to schemes over them.

**Definition.** A morphism is *finite étale* if it is [[finite|N9C4X7XKE4]] and étale. Let $X$ be connected with a geometric point $\bar x$. The fibre functor $Y \mapsto Y_{\bar x}$ on finite étale $X$-schemes has an automorphism group $\pi_1^{\mathrm{et}}(X, \bar x)$, a [[profinite group|KA0YDB6QXE]], the *étale fundamental group*.

**Theorem (Grothendieck).** Let $X$ be connected. The fibre functor is an equivalence from finite étale $X$-schemes to finite sets with a continuous action of $\pi_1^{\mathrm{et}}(X, \bar x)$. Connected covers correspond to transitive sets, and Galois covers to finite quotients (SGA 1, Exposé V).

**Example.** For $X = \mathrm{Spec}\, K$, $\pi_1^{\mathrm{et}}(X, \bar x) = \mathrm{Gal}(K^{\mathrm{sep}}/K)$. For $X$ a regular noetherian integral scheme with function field $K$, $\pi_1^{\mathrm{et}}(X)$ is the quotient of $\mathrm{Gal}(K^{\mathrm{sep}}/K)$ by the normal subgroup generated by the inertia groups at the points of codimension $1$ (by the purity of the branch locus, below). For a ring of integers $\mathcal{O}_K[1/N]$ it is $\mathrm{Gal}(K_N/K)$, with $K_N$ the maximal extension unramified outside $N$ and the infinite places.

Hecke correspondences on a tower of Shimura varieties are pairs of finite étale maps, and the development chapters build the scheme of subgroups of the torsion of an abelian scheme as a finite étale scheme.

## Sheaves and their cohomology

**Definition.** Let $\mathcal{F}$ be a presheaf on $X_{\mathrm{et}}$ and $\bar x$ a geometric point. The *stalk* is $\mathcal{F}_{\bar x} = \operatorname{colim} \mathcal{F}(U)$, over the étale neighbourhoods of $\bar x$.

Each presheaf has a sheafification $\mathcal{F} \to \mathcal{F}^{\#}$ with the same stalks, universal among maps to sheaves. A map of sheaves is an isomorphism (or injective, or surjective) if and only if it is so on all stalks. The sheaves of abelian groups form an abelian category with enough injectives.

**Example.** These are sheaves on $X_{\mathrm{et}}$.

1. For an $X$-scheme $Z$, the functor $U \mapsto \mathrm{Hom}_X(U, Z)$ (by faithfully flat descent). This gives $\mathbb{G}_a$, $U \mapsto \Gamma(U, \mathcal{O}_U)$, and $\mathbb{G}_m$, $U \mapsto \Gamma(U, \mathcal{O}_U)^\times$, and $\mu_n = \ker(n : \mathbb{G}_m \to \mathbb{G}_m)$.
2. For a quasi-coherent $\mathcal{O}_X$-module $\mathcal{M}$, the sheaf $W(\mathcal{M}) : (U \xrightarrow{u} X) \mapsto \Gamma(U, u^* \mathcal{M})$.
3. For an abelian group $A$, the *constant sheaf* $\underline{A}$, the sheafification of $U \mapsto A$. Its sections over $U$ are the locally constant functions $U \to A$.

The stalk of $\mathbb{G}_a$ at $\bar x$ is $\mathcal{O}^{\mathrm{sh}}_{X, \bar x}$, and the stalk of $\mathbb{G}_m$ is its unit group.

**Theorem.** Let $K$ be a field and $G_K = \mathrm{Gal}(K^{\mathrm{sep}}/K)$. The functor $\mathcal{F} \mapsto \mathcal{F}_{\bar x} = \operatorname{colim}_{L} \mathcal{F}(\mathrm{Spec}\, L)$, over finite separable $L/K$ inside $K^{\mathrm{sep}}$, is an equivalence from sheaves on $(\mathrm{Spec}\, K)_{\mathrm{et}}$ to discrete $G_K$-modules. Under it, $H^i(\mathrm{Spec}\, K, \mathcal{F}) = H^i(G_K, \mathcal{F}_{\bar x})$, the [[Galois cohomology|9MPCZ3EAJM]] (Milne, *Étale Cohomology*, Chapter II).

So the étale cohomology of a field is the Galois cohomology of [the Galois cohomology chapter](/learn/galois-cohomology/). The sheaf $\mu_n$ corresponds to $\mu_n(K^{\mathrm{sep}})$.

**Definition.** A sheaf $\mathcal{F}$ is *locally constant* if there is a covering $(U_i \to X)$ with each $\mathcal{F}|_{U_i}$ constant. It is *finite locally constant* if, in addition, the values are finite. For $X$ noetherian, $\mathcal{F}$ is *constructible* if $X$ is a finite union of locally closed subschemes $X_j$ with each $\mathcal{F}|_{X_j}$ finite locally constant.

**Proposition.** Let $X$ be connected with a geometric point $\bar x$. Then $\mathcal{F} \mapsto \mathcal{F}_{\bar x}$ is an equivalence from finite locally constant sheaves of abelian groups to finite abelian groups with a continuous action of $\pi_1^{\mathrm{et}}(X, \bar x)$.

This follows from the theorem of Grothendieck above, since a finite locally constant sheaf is represented by a finite étale $X$-scheme.

**Definition.** Let $f : X \to Y$ be a morphism. The *direct image* of a sheaf $\mathcal{F}$ on $X$ is $f_* \mathcal{F}(V) = \mathcal{F}(X \times_Y V)$. The *inverse image* $f^*$ is its left adjoint; it is exact and $(f^* \mathcal{G})_{\bar x} = \mathcal{G}_{f(\bar x)}$. For $j : U \to X$ étale, the *extension by zero* $j_!$ is the left adjoint of $j^*$; for an open immersion its stalks are $\mathcal{F}_{\bar x}$ on $U$ and $0$ off $U$.

**Definition.** The *étale cohomology* $H^i(X, \mathcal{F})$ is the $i$-th right derived functor of $\mathcal{F} \mapsto \mathcal{F}(X)$, the *[[sheaf cohomology|PQ6Q143ARJ]]* of $X_{\mathrm{et}}$. The *higher direct images* $R^i f_* \mathcal{F}$ are the right derived functors of $f_*$; $R^i f_* \mathcal{F}$ is the sheaf associated with $V \mapsto H^i(X \times_Y V, \mathcal{F})$.

**Theorem (Leray spectral sequence).** For $f : X \to Y$ and $\mathcal{F}$ on $X$ there is a spectral sequence $E_2^{pq} = H^p(Y, R^q f_* \mathcal{F}) \Rightarrow H^{p+q}(X, \mathcal{F})$.

For a closed immersion $i$, $i_*$ is exact, so $H^p(X, i_* \mathcal{F}) = H^p(Z, \mathcal{F})$. For a finite morphism $f$, $R^q f_* = 0$ for $q > 0$.

**Theorem.** Let $\mathcal{M}$ be a quasi-coherent $\mathcal{O}_X$-module. Then $H^i(X_{\mathrm{et}}, W(\mathcal{M})) = H^i(X_{\mathrm{Zar}}, \mathcal{M})$ for all $i$ (Milne, *Étale Cohomology*, Chapter III).

**Theorem (Hilbert 90).** $H^1(X_{\mathrm{et}}, \mathbb{G}_m) = H^1(X_{\mathrm{Zar}}, \mathcal{O}_X^\times) = \mathrm{Pic}(X)$ (Milne, *Étale Cohomology*, Chapter III).

For a field $K$ this is the classical $H^1(G_K, K^{\mathrm{sep}\times}) = 0$. In general $H^1(X, \mathcal{G})$ classifies $\mathcal{G}$-torsors, and Hilbert 90 says that a $\mathbb{G}_m$-torsor for the étale topology is already locally trivial for the Zariski topology.

**Proposition (stalks of direct images).** Let $f : X \to S$ be quasi-compact and quasi-separated, $\mathcal{F}$ a sheaf on $X$ and $\bar s$ a geometric point of $S$. Then $(R^i f_* \mathcal{F})_{\bar s} = H^i(X \times_S \mathrm{Spec}\, \mathcal{O}^{\mathrm{sh}}_{S, \bar s}, \mathcal{F})$.

This follows from the limit theorem.

**Theorem (cohomology and limits).** Let $(X_j)$ be a cofiltered system of quasi-compact quasi-separated schemes with affine transition maps and limit $X$. Let $\mathcal{F}_0$ be a sheaf on some $X_{j_0}$ and $\mathcal{F}_j$, $\mathcal{F}$ its inverse images. Then $H^i(X, \mathcal{F}) = \operatorname{colim}_j H^i(X_j, \mathcal{F}_j)$ (SGA 4, Exposé VII).

A development chapter proves this continuity under filtered colimits as an input to finiteness.

**Theorem (Hochschild-Serre).** Let $Y \to X$ be a finite Galois étale cover with group $G$, and $\mathcal{F}$ a sheaf on $X$. There is a spectral sequence $E_2^{pq} = H^p(G, H^q(Y, \mathcal{F})) \Rightarrow H^{p+q}(X, \mathcal{F})$. For $X$ quasi-compact and quasi-separated over a field $k$ and $\mathcal{F}$ torsion, the same holds with $Y = X_{k^{\mathrm{sep}}}$ and $G = G_k$, with continuous cohomology (Milne, *Étale Cohomology*, Chapter III).

So $H^q(X_{k^{\mathrm{sep}}}, \mathcal{F})$ is a discrete $G_k$-module, and it is the geometric part of $H^*(X, \mathcal{F})$. This Galois action is the source of the Galois representations of the proof.

**Definition.** For $i \ge 0$ put $\Lambda(i) = \mu_n^{\otimes i}$, and $\Lambda(-i) = \mathcal{H}om(\Lambda(i), \Lambda)$; these are the *Tate twists*, defined on $X$ with $n$ invertible. For a sheaf $\mathcal{F}$ of $\Lambda$-modules put $\mathcal{F}(i) = \mathcal{F} \otimes_\Lambda \Lambda(i)$.

Over a separably closed field the choice of a primitive $n$-th root of unity gives $\Lambda(i) \cong \Lambda$, but the Galois action on $\Lambda(1)$ is the [[cyclotomic character|XSGB5K2KEG]] modulo $n$. The development chapters define $\mathbb{Z}/q(i)$ as a sheafification of a presheaf built from primitive roots of unity, which is the same sheaf.

**Definition.** A *constructible $\mathbb{Z}_\ell$-sheaf* is a projective system $\mathcal{F} = (\mathcal{F}_m)_{m \ge 1}$ of constructible sheaves of $\mathbb{Z}/\ell^m$-modules with $\mathcal{F}_{m+1} \otimes \mathbb{Z}/\ell^m \cong \mathcal{F}_m$. It is *lisse* if each $\mathcal{F}_m$ is locally constant. Put $H^i(X, \mathcal{F}) = \varprojlim_m H^i(X, \mathcal{F}_m)$ and $H^i(X, \mathcal{F} \otimes \mathbb{Q}_\ell) = H^i(X, \mathcal{F}) \otimes_{\mathbb{Z}_\ell} \mathbb{Q}_\ell$ (SGA 5, Exposé VI).

For $X$ connected, lisse $\mathbb{Z}_\ell$-sheaves correspond to continuous representations of $\pi_1^{\mathrm{et}}(X, \bar x)$ on finitely generated $\mathbb{Z}_\ell$-modules. When the groups $H^i(X, \mathcal{F}_m)$ are finite, as in the finiteness theorem below, the inverse limit is exact enough: $H^i(X, \mathbb{Z}_\ell)$ is a finitely generated $\mathbb{Z}_\ell$-module. The *[[étale cohomology|7YX76G0838]]* $H^i(X_{\bar k}, \mathbb{Q}_\ell)$ of the geometry chapter is the case $\mathcal{F}_m = \mathbb{Z}/\ell^m$.

## The Kummer sequence and the cohomology of curves

**Theorem (Kummer sequence).** Let $n$ be invertible on $X$. The sequence of sheaves on $X_{\mathrm{et}}$
$$0 \to \mu_n \to \mathbb{G}_m \xrightarrow{\ u \mapsto u^n\ } \mathbb{G}_m \to 0$$
is exact.

*Proof.* Exactness on the left and in the middle hold by the definition of $\mu_n$. For surjectivity, let $u \in \Gamma(U, \mathcal{O}_U)^\times$ and put $U' = \mathrm{Spec}_U\, \mathcal{O}_U[t]/(t^n - u)$. The map $U' \to U$ is finite, flat and surjective. It is étale, since the derivative $n t^{n-1}$ is a unit: $n$ is invertible and $t$ is a unit because $t^n = u$ is. On $U'$, $u = t^n$. So $u$ is locally an $n$-th power. $\square$

The Kummer sequence fails for the Zariski topology: $\mathcal{O}^\times$ on a Zariski open is rarely an $n$-th power. This is the first place where the étale topology is needed.

**Corollary.** Let $n$ be invertible on $X$ and $\mathrm{Br}(X) = H^2(X, \mathbb{G}_m)$, the *cohomological Brauer group*. There are exact sequences
$$0 \to \Gamma(X, \mathcal{O}_X)^\times / n \xrightarrow{\ \delta\ } H^1(X, \mu_n) \to \mathrm{Pic}(X)[n] \to 0,$$
$$0 \to \mathrm{Pic}(X)/n \xrightarrow{\ c_1\ } H^2(X, \mu_n) \to \mathrm{Br}(X)[n] \to 0.$$

*Proof.* Take the long exact sequence of the Kummer sequence and use Hilbert 90 for $H^1(X, \mathbb{G}_m)$. $\square$

**Definition.** For a unit $u$ on $X$, the *Kummer class* $\delta(u) \in H^1(X, \mu_n)$ is the image of $u$ under the boundary map. For a line bundle $L$, the *first Chern class* $c_1(L) \in H^2(X, \mu_n)$ is the image of its class in $\mathrm{Pic}(X) = H^1(X, \mathbb{G}_m)$ under the boundary map.

The two classes are natural under pullback, and $\delta(uv) = \delta(u) + \delta(v)$, $c_1(L \otimes L') = c_1(L) + c_1(L')$. These are the Kummer classes and first Chern classes of the development chapters, where they are built by explicit cocycles.

**Example (Kummer theory).** For a field $K$ with $n$ invertible, $H^1(K, \mu_n) = K^\times / K^{\times n}$ and $H^2(K, \mu_n) = \mathrm{Br}(K)[n]$. For a local or global field these are the groups of local and global [class field theory](/learn/class-field-theory/).

**Example.** Let $k$ be algebraically closed with $n$ invertible, and $X = \mathbb{G}_{m,k} = \mathrm{Spec}\, k[t, t^{-1}]$. Its units are $k^\times t^{\mathbb{Z}}$ and $k^\times$ is divisible, so the units modulo $n$-th powers are $\mathbb{Z}/n$, generated by $t$. Also $\mathrm{Pic}(X) = 0$. So $H^1(\mathbb{G}_m, \mu_n) = \mathbb{Z}/n$, generated by the Kummer class $\delta(t)$. This is the étale form of $H^1(\mathbb{C}^\times, \mathbb{Z}) = \mathbb{Z}$, generated by the class of $dz/(2\pi i z)$.

**Theorem.** Let $k$ be algebraically closed and $X$ a smooth connected curve over $k$. Then $H^q(X, \mathbb{G}_m) = 0$ for $q \ge 2$ (SGA 4, Exposé IX; SGA 4½, *Cohomologie étale: les points de départ*).

The proof uses the exact sequence $0 \to \mathbb{G}_m \to g_* \mathbb{G}_{m,\eta} \to \bigoplus_{x} i_{x*} \mathbb{Z} \to 0$, with $\eta$ the generic point and $x$ the closed points, and Tsen's theorem: the function field $K$ of $X$ is $C_1$, so $\mathrm{Br}(L) = 0$ for each algebraic extension $L$ of $K$.

**Theorem (cohomology of curves).** Let $k$ be algebraically closed, $n$ invertible in $k$, and $X$ a smooth projective connected curve of genus $g$ over $k$ with Jacobian $J$. Then
$$\begin{aligned} H^0(X, \mu_n) &= \mu_n(k), \\ H^1(X, \mu_n) &\cong J[n] \cong (\mathbb{Z}/n)^{2g}, \\ H^2(X, \mu_n) &\cong \mathbb{Z}/n, \end{aligned}$$
and $H^q(X, \mu_n) = 0$ for $q \ge 3$. The isomorphism on $H^2$ is the degree: $c_1(L) \mapsto \deg L \bmod n$.

*Proof.* The units of $X$ are $k^\times$, which is divisible, and $\mathrm{Br}(X) = 0$ by the last theorem. The corollary gives $H^1(X, \mu_n) = \mathrm{Pic}(X)[n]$ and $H^2(X, \mu_n) = \mathrm{Pic}(X)/n$. There is an exact sequence $0 \to \mathrm{Pic}^0(X) \to \mathrm{Pic}(X) \xrightarrow{\deg} \mathbb{Z} \to 0$ with $\mathrm{Pic}^0(X) = J(k)$. The group $J(k)$ is divisible, and $J[n] \cong (\mathbb{Z}/n)^{2g}$ since $n$ is invertible in $k$. So $\mathrm{Pic}(X)[n] = J[n]$ and $\mathrm{Pic}(X)/n = \mathbb{Z}/n$ by the degree. For $q \ge 3$ both neighbours of $H^q(X, \mu_n)$ in the long exact sequence vanish. $\square$

**Corollary.** In the same situation, let $U = X \setminus \{x_1, \dots, x_r\}$ with $r \ge 1$. Then $H^2(U, \mu_n) = 0$ and $H^1(U, \mu_n)$ is free over $\mathbb{Z}/n$ of rank $2g + r - 1$. In particular $H^i(\mathbb{A}^1_k, \Lambda) = 0$ for $i > 0$.

So $\mathbb{A}^1$ is acyclic for coefficients prime to the characteristic, as $\mathbb{C}$ is. For $p$-torsion coefficients in characteristic $p$ this fails: the Artin-Schreier sequence $0 \to \mathbb{Z}/p \to \mathbb{G}_a \xrightarrow{x \mapsto x^p - x} \mathbb{G}_a \to 0$ gives $H^1(\mathbb{A}^1_k, \mathbb{Z}/p) = k[t]/\{f^p - f\}$, an infinite group. This is why $\ell$ is always invertible in what follows.

**Corollary (abelian varieties).** Let $A$ be an [[abelian variety|R7W03TXRS9]] of dimension $g$ over an algebraically closed field $k$ and $\ell \ne \mathrm{char}\, k$. Then $H^1(A, \mathbb{Z}_\ell) \cong \mathrm{Hom}_{\mathbb{Z}_\ell}(T_\ell A, \mathbb{Z}_\ell)$, free of rank $2g$, and cup product gives $H^i(A, \mathbb{Z}_\ell) \cong \wedge^i H^1(A, \mathbb{Z}_\ell)$ (J. S. Milne, *Abelian Varieties*, in G. Cornell and J. Silverman, eds., *Arithmetic Geometry*, the section on étale cohomology).

Here $T_\ell A$ is the [[Tate module|4CSMQFTGD8]] of [the elliptic curves chapter](/learn/elliptic-curves/). For a curve $X$ over a field $K$, the theorem gives $H^1(X_{\bar K}, \mathbb{Z}_\ell(1)) \cong T_\ell J$ as Galois modules. The $\ell$-adic representations of modular forms of weight $2$ are pieces of this $H^1$ for modular curves.

**Theorem (cohomological dimension).** Let $k$ be separably closed and $X$ of finite type over $k$ of dimension $d$. Let $\mathcal{F}$ be a torsion sheaf whose torsion orders are invertible in $k$. Then $H^i(X, \mathcal{F}) = 0$ for $i > 2d$ (SGA 4, Exposé X). If $X$ is affine, then $H^i(X, \mathcal{F}) = 0$ for $i > d$ (*Artin vanishing*, SGA 4, Exposé XIV).

## Proper and smooth base change

Fix a cartesian square of schemes, with $f' : X' = X \times_S S' \to S'$ and $g' : X' \to X$ the projections. For a sheaf $\mathcal{F}$ on $X$ adjunction gives the *base change maps*
$$g^* R^i f_* \mathcal{F} \to R^i f'_* (g'^* \mathcal{F}).$$
They are not isomorphisms in general. The two base change theorems say when they are.

**Theorem (proper base change).** Let $f : X \to S$ be [[proper|9537RKBZPP]] and $\mathcal{F}$ a torsion sheaf on $X$. Then the base change maps are isomorphisms for every $g : S' \to S$ (SGA 4, Exposé XII; Milne, *Étale Cohomology*, Chapter VI).

**Corollary.** For $f$ proper, $\mathcal{F}$ torsion and $\bar s$ a geometric point of $S$, $(R^i f_* \mathcal{F})_{\bar s} \cong H^i(X_{\bar s}, \mathcal{F}|_{X_{\bar s}})$.

The heart of the theorem is the case $S = \mathrm{Spec}\, A$ with $A$ strictly henselian with residue field $\kappa$: then the restriction $H^i(X, \mathcal{F}) \to H^i(X_0, \mathcal{F}|_{X_0})$ to the closed fibre $X_0 = X \times_A \kappa$ is an isomorphism. The proof reduces to $X$ a relative curve, then to $\mathcal{F} = \mathbb{Z}/n$ with $n$ invertible, where it reduces to $H^1$ and $H^2$ and so, by the Kummer sequence, to Picard groups. The development chapters prove the theorem in this form, for the coefficients $\mathbb{Z}/q(i)$, by a reduction to absolutely integrally closed schemes.

**Theorem (affine analogue; Gabber).** Let $(A, I)$ be a henselian pair and $\mathcal{F}$ a torsion sheaf on $\mathrm{Spec}\, A$. Then $H^i(\mathrm{Spec}\, A, \mathcal{F}) \to H^i(\mathrm{Spec}\, A/I, \mathcal{F}|_{\mathrm{Spec}\, A/I})$ is an isomorphism for all $i$ (O. Gabber, *Affine analog of the proper base change theorem*, Israel J. Math. 87, 1994).

Here a pair $(A, I)$ is *henselian* if $I$ lies in the Jacobson radical of $A$ and each factorization $\bar f = g_0 h_0$ of a monic $f \in A[x]$ modulo $I$ into coprime monic factors lifts to $f = gh$ over $A$. This is the axiom E1 of the étale model of the development chapters.

**Theorem (finiteness).** Let $f : X \to S$ be proper with $S$ noetherian, and $\mathcal{F}$ a constructible sheaf on $X$. Then $R^i f_* \mathcal{F}$ is constructible for all $i$. In particular, for $X$ proper over a separably closed field, each $H^i(X, \mathcal{F})$ is finite (SGA 4, Exposé XIV).

So for $X$ proper over $k$, $H^i(X_{\bar k}, \mathbb{Z}_\ell)$ is finitely generated over $\mathbb{Z}_\ell$ and $H^i(X_{\bar k}, \mathbb{Q}_\ell)$ is finite dimensional. The development chapters prove this finiteness for proper schemes over an algebraically closed field and use it in the step on the finiteness of the representation.

**Definition (cohomology with compact support).** Let $f : X \to S$ be separated of finite type with $S$ quasi-compact and quasi-separated. By Nagata there is a factorization $f = \bar f \circ j$ with $j : X \to \bar X$ an open immersion and $\bar f$ proper. For a torsion sheaf $\mathcal{F}$ put $R^i f_! \mathcal{F} = R^i \bar f_* (j_! \mathcal{F})$, and for $S$ the spectrum of a separably closed field, $H^i_c(X, \mathcal{F}) = H^i(\bar X, j_! \mathcal{F})$.

By proper base change this does not depend on the compactification (SGA 4, Exposé XVII; B. Conrad, *Deligne's notes on Nagata compactifications*, J. Ramanujan Math. Soc. 22, 2007). For $Z \subseteq X$ closed with complement $U$ there is a long exact sequence
$$\begin{aligned} \cdots &\to H^i_c(U, \mathcal{F}) \to H^i_c(X, \mathcal{F}) \\ &\to H^i_c(Z, \mathcal{F}) \to H^{i+1}_c(U, \mathcal{F}) \to \cdots. \end{aligned}$$
The groups $H^i_c(X, \mathcal{F})$ are finite for $\mathcal{F}$ constructible, and vanish for $i > 2 \dim X$. For $X$ proper, $H^i_c = H^i$.

**Theorem (smooth base change).** Let $g : S' \to S$ be smooth, $f : X \to S$ quasi-compact and quasi-separated, and $\mathcal{F}$ a torsion sheaf on $X$ whose torsion orders are invertible on $S$. Then the base change maps $g^* R^i f_* \mathcal{F} \to R^i f'_* g'^* \mathcal{F}$ are isomorphisms (SGA 4, Exposé XVI; Milne, *Étale Cohomology*, Chapter VI).

**Corollary (change of algebraically closed field).** Let $k \subseteq K$ be algebraically closed fields, $X$ of finite type over $k$, and $n$ invertible in $k$. Then $H^i(X, \Lambda) \to H^i(X_K, \Lambda)$ is an isomorphism for all $i$ (SGA 4, Exposé XVI).

A development chapter checks that Kummer classes are compatible with this change of field. It lets us pass between $\overline{\mathbb{Q}}$, $\mathbb{C}$ and $\overline{\mathbb{Q}}_\ell$, and so compare Galois actions with singular cohomology.

**Corollary (smooth and proper base change).** Let $f : X \to S$ be smooth and proper and $\mathcal{F}$ a locally constant constructible sheaf on $X$ with torsion orders invertible on $S$. Then each $R^i f_* \mathcal{F}$ is locally constant constructible, and its formation commutes with all base change (SGA 4, Exposé XVI).

**Definition.** Let $\mathcal{O}$ be a henselian discrete valuation ring with fraction field $K$ and residue field $\kappa$, and $X$ proper over $\mathcal{O}$. Choose a geometric point $\bar\eta$ over $K$ and $\bar s$ over $\kappa$, inside the strict henselization $\mathcal{O}^{\mathrm{sh}}$. The *specialization map* is the composite
$$H^i(X_{\bar s}, \Lambda) \xleftarrow{\ \sim\ } H^i(X_{\mathcal{O}^{\mathrm{sh}}}, \Lambda) \to H^i(X_{\bar\eta}, \Lambda),$$
where the first map is an isomorphism by proper base change.

**Corollary (good reduction).** Let $X$ be smooth and proper over $\mathcal{O}$ and $\ell$ invertible in $\kappa$. Then the specialization map $H^i(X_{\bar s}, \mathbb{Q}_\ell) \to H^i(X_{\bar\eta}, \mathbb{Q}_\ell)$ is an isomorphism compatible with the actions of $\mathrm{Gal}(\bar K/K)$, which acts on the left through $\mathrm{Gal}(\bar\kappa/\kappa)$. In particular the inertia group acts trivially on $H^i(X_{\bar\eta}, \mathbb{Q}_\ell)$.

**Corollary.** Let $K$ be a number field, $N \ge 1$, and $X$ smooth and proper over $\mathcal{O}_K[1/N]$. Then for each finite place $v \nmid N\ell$, the representation $H^i(X_{\bar K}, \mathbb{Q}_\ell)$ is unramified at $v$, and the characteristic polynomial of a geometric [[Frobenius element|H5145REFMW]] $\mathrm{Frob}_v$ on it equals that of the geometric Frobenius of the residue field $k_v$ on $H^i(X_{\bar k_v}, \mathbb{Q}_\ell)$.

This is the form used in the Eichler-Shimura chapter of the development volumes (smooth and proper base change for a discrete valuation ring), and in the record `Steps` of [GeoOne](/step/geo-one-def/). It is the cohomological form of the criterion of Néron, Ogg and Shafarevich in [the Galois representations chapter](/learn/galois-representations/).

**Example.** Properness is needed. Let $S = \mathrm{Spec}\, \mathbb{Z}_p$ and $X = \mathbb{A}^1_S \setminus \{0, p\}$, the complement of the two sections $t = 0$ and $t = p$. Then $X$ is smooth over $S$. Its generic geometric fibre is $\mathbb{A}^1$ minus two points, with $H^1$ of rank $2$, and its special geometric fibre is $\mathbb{A}^1$ minus one point, with $H^1$ of rank $1$. So $R^1 f_* \Lambda$ is not locally constant.

## Cup products, Künneth and Poincaré duality

**Definition.** Let $\mathcal{F}, \mathcal{G}$ be sheaves of $\Lambda$-modules on $X$. The *cup product* is the natural pairing
$$H^i(X, \mathcal{F}) \times H^j(X, \mathcal{G}) \to H^{i+j}(X, \mathcal{F} \otimes_\Lambda \mathcal{G}),$$
induced by a map of complexes $\mathcal{I}^\bullet(\mathcal{F}) \otimes \mathcal{I}^\bullet(\mathcal{G}) \to \mathcal{I}^\bullet(\mathcal{F} \otimes \mathcal{G})$ of injective resolutions, or by Čech cochains.

It is associative, natural under pullback and compatible with boundary maps up to sign. With $\mathcal{F} = \Lambda(a)$, $\mathcal{G} = \Lambda(b)$, it makes $\bigoplus_{i, a} H^i(X, \Lambda(a))$ a ring, graded commutative in $i$: $\alpha \cup \beta = (-1)^{ij} \beta \cup \alpha$ for $\alpha$ of degree $i$ and $\beta$ of degree $j$. The development chapters build this ring from Alexander-Whitney cochains on simplicial spaces and prove the unit law and graded commutativity.

**Theorem (Künneth formula).** Let $k$ be separably closed, $\ell$ invertible in $k$, and $X$, $Y$ separated of finite type over $k$. Then the cup product of the pullbacks along the two projections gives an isomorphism
$$\begin{aligned} \bigoplus_{i + j = m} H^i_c(X, \mathbb{Q}_\ell) \otimes H^j_c(Y, \mathbb{Q}_\ell) \\ &\xrightarrow{\ \sim\ } H^m_c(X \times_k Y, \mathbb{Q}_\ell). \end{aligned}$$
The same holds for $H^*$ in place of $H^*_c$ (SGA 4, Exposé XVII, for $H_c$; SGA 4½, *Théorèmes de finitude en cohomologie $\ell$-adique*, for $H$).

With torsion coefficients the statement is an isomorphism $R\Gamma_c(X \times Y, \Lambda) \cong R\Gamma_c(X, \Lambda) \otimes^L_\Lambda R\Gamma_c(Y, \Lambda)$ in the derived category, and Tor terms appear on cohomology groups. The development chapters prove Künneth for the Hodge cohomology of proper smooth products by a Mayer-Vietoris argument, and a Künneth formula for $\mathbb{G}_m$ in étale cohomology.

**Example.** Over $k$ algebraically closed with $n$ invertible, the Künneth formula and the example $H^1(\mathbb{G}_m, \mu_n) = \mathbb{Z}/n \cdot \delta(t)$ give $H^*(\mathbb{G}_m^r, \Lambda) = \wedge^* (\Lambda(-1)^r)$, the exterior algebra on the Kummer classes $\delta(t_1), \dots, \delta(t_r)$ of the coordinates (after the twist). This is the étale form of the cohomology of the torus $(\mathbb{C}^\times)^r$.

**Theorem (Poincaré duality).** Let $k$ be separably closed, $n$ invertible in $k$, and $X$ smooth and separated over $k$ of pure dimension $d$. There is a *trace map* $\mathrm{tr} : H^{2d}_c(X, \Lambda(d)) \to \Lambda$, an isomorphism when $X$ is connected. For each locally constant constructible sheaf $\mathcal{F}$ of $\Lambda$-modules, with $\mathcal{F}^\vee = \mathcal{H}om(\mathcal{F}, \Lambda)$, the pairing
$$\begin{aligned} H^i_c(X, \mathcal{F}) \times H^{2d-i}(X, \mathcal{F}^\vee(d)) &\xrightarrow{\ \cup\ } H^{2d}_c(X, \Lambda(d)) \\ &\xrightarrow{\ \mathrm{tr}\ } \Lambda \end{aligned}$$
is perfect (SGA 4, Exposé XVIII; SGA 4½, *Dualité*).

**Corollary.** For $X$ smooth, proper and connected of dimension $d$ over $k$ and $\ell \ne \mathrm{char}\, k$, cup product and trace give a perfect pairing $H^i(X, \mathbb{Q}_\ell) \times H^{2d-i}(X, \mathbb{Q}_\ell(d)) \to \mathbb{Q}_\ell$. If $X$ is defined over a subfield $k_0$ with $k = \bar k_0$, the pairing is $\mathrm{Gal}(k/k_0)$-equivariant.

So $H^i(X_{\bar k}, \mathbb{Q}_\ell)^\vee \cong H^{2d-i}(X_{\bar k}, \mathbb{Q}_\ell)(d)$ as Galois representations. For a curve, the pairing on $H^1(X, \mathbb{Z}_\ell(1)) = T_\ell J$ is, up to sign, the Weil pairing. Duality, with a polarization, is one source of the conjugate self-duality of the representations in the Galois row.

**Definition.** Let $f : X \to Y$ be a proper morphism of smooth connected schemes over $k$, of dimensions $d_X$ and $d_Y$, and $c = d_X - d_Y$. The *Gysin map* $f_* : H^i(X, \mathbb{Q}_\ell(r)) \to H^{i - 2c}(Y, \mathbb{Q}_\ell(r - c))$ is the map dual to $f^* : H^{2d_X - i}_c(Y) \to H^{2d_X - i}_c(X)$ under Poincaré duality, with the twists that make the pairings land in $\mathbb{Q}_\ell(d_Y)$ and $\mathbb{Q}_\ell(d_X)$.

It satisfies the *projection formula* $f_*(f^* a \cup b) = a \cup f_* b$. For $f$ finite étale, $c = 0$ and $f_*$ is the trace map on cohomology. A correspondence $c_1, c_2 : Y \to X$ with $c_1$ finite étale acts on $H^*(X)$ by $c_{1*} \circ c_2^*$; this is how the Hecke algebra acts on the cohomology of Shimura varieties.

## Purity, cycle classes and Chern classes

**Definition.** Let $i : Z \to X$ be a closed immersion with complement $j : U \to X$. For a sheaf $\mathcal{F}$ on $X$, $\Gamma_Z(X, \mathcal{F})$ is the group of sections of $\mathcal{F}$ over $X$ whose restriction to $U$ is $0$. Its derived functors are the *cohomology with supports* $H^i_Z(X, \mathcal{F})$, and the derived functors of the sheaf version are the sheaves $\mathcal{H}^i_Z(\mathcal{F})$ on $Z$.

There is a long exact sequence
$$\begin{aligned} \cdots &\to H^i_Z(X, \mathcal{F}) \to H^i(X, \mathcal{F}) \\ &\to H^i(U, \mathcal{F}) \to H^{i+1}_Z(X, \mathcal{F}) \to \cdots. \end{aligned}$$

**Theorem (cohomological purity).** Let $S$ be a scheme on which $n$ is invertible, and $Z \subseteq X$ a closed immersion of schemes smooth over $S$, with $Z$ of pure codimension $c$ in $X$. Then $\mathcal{H}^i_Z(\Lambda) = 0$ for $i \ne 2c$, and there is a canonical isomorphism $\mathcal{H}^{2c}_Z(\Lambda(c)) \cong \Lambda_Z$. So for $\mathcal{F}$ locally constant constructible on $X$,
$$H^i_Z(X, \mathcal{F}) \cong H^{i-2c}(Z, \mathcal{F}|_Z(-c))$$
(SGA 4, Exposé XVI; Milne, *Étale Cohomology*, Chapter VI).

**Theorem (absolute purity; Gabber).** The same conclusion holds for $Z \subseteq X$ a closed immersion of regular noetherian schemes, of pure codimension $c$, with $n$ invertible on $X$ (K. Fujiwara, *A proof of the absolute purity conjecture (after Gabber)*, in *Algebraic Geometry 2000, Azumino*, Adv. Stud. Pure Math. 36, 2002).

Absolute purity matters for integral models, which are regular but not smooth over a field, for example over $\mathbb{Z}_p$.

**Corollary (Gysin sequence).** In the situation of purity, with $U = X \setminus Z$ and $\mathcal{F}$ locally constant constructible, there is a long exact sequence
$$\begin{aligned} \cdots &\to H^{i-2c}(Z, \mathcal{F}(-c)) \to H^i(X, \mathcal{F}) \to H^i(U, \mathcal{F}) \\ &\to H^{i-2c+1}(Z, \mathcal{F}(-c)) \to \cdots. \end{aligned}$$

**Example (projective space).** Let $k$ be algebraically closed and $n$ invertible in $k$. Apply the Gysin sequence to a hyperplane $Z = \mathbb{P}^{d-1} \subset X = \mathbb{P}^d$ with $U = \mathbb{A}^d$. By Künneth and the acyclicity of $\mathbb{A}^1$, $H^i(\mathbb{A}^d, \Lambda) = 0$ for $i > 0$. So $H^i(\mathbb{P}^d, \Lambda) \cong H^{i-2}(\mathbb{P}^{d-1}, \Lambda(-1))$ for $i \ge 2$, and $H^1(\mathbb{P}^d, \Lambda) = 0$. By induction $H^{2j}(\mathbb{P}^d, \Lambda(j)) \cong \Lambda$ for $0 \le j \le d$, generated by $c_1(\mathcal{O}(1))^j$, and the other groups vanish.

**Theorem (projective bundle formula).** Let $E$ be a vector bundle of rank $r$ on $X$, $\pi : \mathbb{P}(E) \to X$ its projective bundle and $\xi = c_1(\mathcal{O}(1)) \in H^2(\mathbb{P}(E), \Lambda(1))$, with $n$ invertible on $X$. Then
$$\bigoplus_{i=0}^{r-1} H^{m-2i}(X, \Lambda(a - i)) \xrightarrow{\ \sum_i \pi^*(-) \cup \xi^i\ } H^m(\mathbb{P}(E), \Lambda(a))$$
is an isomorphism for all $m$ and $a$ (Milne, *Étale Cohomology*, Chapter VI).

The development chapters prove the projective bundle formula first for the trivial bundle and then by descent.

**Definition (Chern classes; Grothendieck).** In this situation, with $\mathbb{P}(E) = \mathrm{Proj}\, \mathrm{Sym}\, E$, the *Chern classes* $c_i(E) \in H^{2i}(X, \Lambda(i))$ are the unique classes with $c_0(E) = 1$ and
$$\sum_{i=0}^{r} (-1)^i\, \pi^* c_i(E) \cup \xi^{r-i} = 0.$$
Put $c_i(E) = 0$ for $i > r$ and $c_t(E) = \sum_i c_i(E) t^i$.

This follows Grothendieck (*La théorie des classes de Chern*, Bull. Soc. Math. France 86, 1958) and the convention of Hartshorne, *Algebraic Geometry*, Appendix A. Each [[Chern class|PAD37GKDPD]] $c_i(E)$ is natural under pullback and $c_1$ of a line bundle is the class from the Kummer sequence.

**Theorem (Whitney sum formula and splitting principle).** For an exact sequence $0 \to E' \to E \to E'' \to 0$ of vector bundles, $c_t(E) = c_t(E') c_t(E'')$. For each $E$ there is a morphism $p : X' \to X$ with $p^*$ injective on cohomology such that $p^* E$ has a filtration with line bundle quotients $L_1, \dots, L_r$; then $p^* c_t(E) = \prod_j (1 + x_j t)$ with $x_j = c_1(L_j)$.

**Definition.** The *power sum classes* of $E$ are $s_k(E) = \sum_j x_j^k \in H^{2k}(X, \Lambda(k))$, defined by the splitting principle. In terms of Chern classes they are given by Newton's identities
$$s_k - c_1 s_{k-1} + c_2 s_{k-2} - \cdots + (-1)^{k-1} c_{k-1} s_1 + (-1)^k k\, c_k = 0.$$

So $s_k$ is additive in exact sequences, and $s_k(L) = c_1(L)^k$ for a line bundle. These two properties are the axiom D2 of the étale model of the development chapters; the class $s_k$ is the étale form of $k! \cdot \mathrm{ch}_k$.

**Definition (cycle class).** Let $X$ be smooth over a field $k$ with $n$ invertible, and $Z \subseteq X$ an integral closed subscheme of codimension $c$. Purity on the smooth locus of $Z$ gives a class in $H^{2c}_{Z}(X, \Lambda(c))$, since the singular locus of $Z$ has codimension $> c$ in $X$ and does not change $H^{2c}_Z$. Its image in $H^{2c}(X, \Lambda(c))$ is the *cycle class* $\mathrm{cl}_X(Z)$. It extends linearly to cycles.

**Theorem (properties of the cycle class).** Let $X$ be smooth and quasi-projective over $k$. The cycle class factors through rational equivalence and gives a ring homomorphism $\mathrm{cl} : \mathrm{CH}^*(X) \to \bigoplus_c H^{2c}(X, \mathbb{Q}_\ell(c))$. It is compatible with pullback and with proper pushforward, it sends a divisor $D$ to $c_1(\mathcal{O}_X(D))$, and for $X$ proper over $k = \bar k$ and connected it sends the class of a point to the generator of $H^{2d}(X, \mathbb{Q}_\ell(d))$ with trace $1$ (SGA 4½, *Cycle*; Milne, *Étale Cohomology*, Chapter VI).

The cycle class is used in the trace formula below: the class of the diagonal and Künneth turn an intersection number into an alternating sum of traces. The development chapters also need a de Rham first Chern class and the non-vanishing of its top power on a smooth variety, in the comparison chapter.

**Theorem (purity of the branch locus; Zariski-Nagata).** Let $X$ be a regular noetherian integral scheme, $Y$ a normal integral scheme and $f : Y \to X$ a finite surjective morphism. If $f$ is étale over the complement of a closed subset of codimension at least $2$ in $X$, then $f$ is étale (SGA 1, Exposé X).

This is a different purity: it is about covers, not cohomology. It says that the ramification of a finite cover of a regular scheme lies on a divisor. It gives the description of $\pi_1^{\mathrm{et}}$ of a normal scheme by inertia at codimension $1$, and the development chapters use it with Abhyankar's lemma (SGA 1, Exposé XIII) to control tame covers of integral models.

## The Lefschetz trace formula

Let $q$ be a power of a prime $p$, $X$ separated of finite type over $\mathbb{F}_q$ of dimension $d$, and $\bar X = X \times_{\mathbb{F}_q} \bar{\mathbb{F}}_q$.

**Definition.** The *absolute Frobenius* $F_X : X \to X$ is the identity on the underlying space and $a \mapsto a^q$ on $\mathcal{O}_X$; it is a morphism over $\mathbb{F}_q$. The *Frobenius endomorphism* of $\bar X$ is $F = F_X \times \mathrm{id}$. On points, $F$ raises coordinates to the $q$-th power, so the fixed points of $F^m$ on $X(\bar{\mathbb{F}}_q)$ are the points of $X(\mathbb{F}_{q^m})$.

**Proposition.** The action of $F^*$ on $H^i_c(\bar X, \mathbb{Q}_\ell)$ equals the action of the geometric Frobenius $\mathrm{Frob}_q \in \mathrm{Gal}(\bar{\mathbb{F}}_q/\mathbb{F}_q)$, the inverse of $x \mapsto x^q$ (SGA 4½, *Rapport sur la formule des traces*).

The reason is that $F_X \times F_{\mathrm{Spec}\, \bar{\mathbb{F}}_q}$ is the absolute Frobenius of $\bar X$, which acts as the identity on étale cohomology. So the Galois action on $H^i$ is geometry: it comes from an endomorphism of $\bar X$.

**Theorem (Grothendieck-Lefschetz trace formula).** Let $\ell \ne p$ and $\mathcal{F}$ a constructible $\mathbb{Q}_\ell$-sheaf on $X$. Then
$$\begin{aligned} \sum_{x \in X(\mathbb{F}_q)} \mathrm{tr}(\mathrm{Frob}_x \mid \mathcal{F}_{\bar x}) \\ &= \sum_{i=0}^{2d} (-1)^i\, \mathrm{tr}(F^* \mid H^i_c(\bar X, \mathcal{F})). \end{aligned}$$
In particular $\# X(\mathbb{F}_{q^m}) = \sum_i (-1)^i\, \mathrm{tr}((F^*)^m \mid H^i_c(\bar X, \mathbb{Q}_\ell))$ for each $m \ge 1$ (SGA 4½, *Rapport* and *Fonctions L modulo $\ell^n$ et modulo $p$*).

**Definition.** The *zeta function* of $X$ is
$$Z(X, t) = \prod_{x} (1 - t^{\deg x})^{-1} = \exp\Big(\sum_{m \ge 1} \# X(\mathbb{F}_{q^m}) \frac{t^m}{m}\Big),$$
over the closed points $x$ of $X$, with $\deg x = [\kappa(x) : \mathbb{F}_q]$.

**Corollary (rationality).** $Z(X, t) = \prod_{i=0}^{2d} \det(1 - F^* t \mid H^i_c(\bar X, \mathbb{Q}_\ell))^{(-1)^{i+1}}$. So $Z(X, t)$ is a rational function.

*Proof.* For an endomorphism $A$ of a finite-dimensional space, $\log \det(1 - At)^{-1} = \sum_{m \ge 1} \mathrm{tr}(A^m) t^m / m$. Take the logarithm of $Z(X, t)$, insert the trace formula for each $m$ and sum over $i$ with the signs $(-1)^i$. $\square$

The left side has rational coefficients, so the rational function lies in $\mathbb{Q}(t)$, although each factor is only known to lie in $\mathbb{Q}_\ell(t)$.

**Theorem (Deligne).** Let $X$ be smooth and proper over $\mathbb{F}_q$. For each $i$, the eigenvalues of $F^*$ on $H^i(\bar X, \mathbb{Q}_\ell)$ are algebraic integers whose complex conjugates all have absolute value $q^{i/2}$ (P. Deligne, *La conjecture de Weil I*, Publ. Math. IHÉS 43, 1974).

So the eigenvalues on different $H^i$ are distinct in size, and the factors of the rational function are determined by $Z(X, t)$; the characteristic polynomial of $F^*$ on $H^i$ has integer coefficients independent of $\ell$. Deligne's second paper (*La conjecture de Weil II*, Publ. Math. IHÉS 52, 1980) extends weights to sheaves and to non-proper $X$.

**Corollary (Weil bound for curves).** Let $X$ be a smooth projective geometrically connected curve of genus $g$ over $\mathbb{F}_q$. Then $|\# X(\mathbb{F}_q) - q - 1| \le 2g\sqrt{q}$.

*Proof.* By the cohomology of curves, $H^0 = \mathbb{Q}_\ell$ with $F^* = 1$, $H^1$ has dimension $2g$, and $H^2 = \mathbb{Q}_\ell(-1)$. The geometric Frobenius acts on $\mathbb{Q}_\ell(1)$ by $q^{-1}$, so $F^* = q$ on $H^2$. The trace formula gives $\# X(\mathbb{F}_q) = 1 - \sum_{j=1}^{2g} \alpha_j + q$, with $\alpha_j$ the eigenvalues on $H^1$, and $|\alpha_j| = \sqrt{q}$ (Weil for curves, or Deligne). $\square$

**Theorem (Lefschetz fixed-point formula).** Let $k$ be algebraically closed, $\ell \ne \mathrm{char}\, k$, and $X$ smooth, projective and connected of dimension $d$ over $k$. Let $\Gamma \subset X \times X$ be a cycle of dimension $d$, acting on $H^*(X, \mathbb{Q}_\ell)$ by $\Gamma^* a = p_{1*}(\mathrm{cl}(\Gamma) \cup p_2^* a)$. Then
$$(\Gamma \cdot \Delta) = \sum_{i=0}^{2d} (-1)^i\, \mathrm{tr}(\Gamma^* \mid H^i(X, \mathbb{Q}_\ell)),$$
with $\Delta$ the diagonal. For $\Gamma$ the graph of $f : X \to X$ meeting $\Delta$ transversally, the left side is the number of fixed points of $f$ (S. Kleiman, *Algebraic cycles and the Weil conjectures*, in *Dix exposés sur la cohomologie des schémas*, 1968; Milne, *Étale Cohomology*, Chapter VI).

The proof writes $\mathrm{cl}(\Delta)$ in the Künneth decomposition of $H^{2d}(X \times X)$ by dual bases and computes the degree of $\mathrm{cl}(\Gamma) \cup \mathrm{cl}(\Delta)$. For $X$ smooth and projective over $\mathbb{F}_q$, the graph of $F$ meets $\Delta$ transversally, because $dF = 0$. This gives the trace formula for constant coefficients in that case.

The trace formula for a correspondence on a non-proper $X$ has local terms at the boundary. Deligne conjectured, and K. Fujiwara proved (*Rigid geometry, Lefschetz-Verdier trace formula and Deligne's conjecture*, Invent. Math. 127, 1997), that after a twist by a high power of Frobenius the local terms are the naive ones. This is the form used to compute the cohomology of Shimura varieties by counting points. The holomorphic analogue over $\mathbb{C}$, with Hodge cohomology in place of $\ell$-adic cohomology, is the formula of Atiyah and Bott in [the geometry chapter](/learn/geometry/); it is the input of [GeoOne holds](/step/geo-one-holds/), with the [[Lefschetz fixed-point theorem|G44NQXCWT9]] as its model.

**Theorem (Eichler-Shimura relation).** Let $p \nmid N$ be a prime and $X_0(N)$ the modular curve over $\mathbb{Z}[1/N]$. On its reduction modulo $p$, the Hecke correspondence $T_p$ is $F + {}^t F$, the sum of the Frobenius and its transpose (G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Chapter 7).

**Corollary.** On $H^1(X_0(N)_{\overline{\mathbb{Q}}}, \mathbb{Q}_\ell)$ with $p \nmid N\ell$, the geometric Frobenius $\mathrm{Frob}_p$ satisfies $\mathrm{Frob}_p^2 - T_p \mathrm{Frob}_p + p = 0$.

*Proof.* By good reduction, $\mathrm{Frob}_p$ acts on $H^1(X_0(N)_{\overline{\mathbb{Q}}})$ as $F^*$ on $H^1(X_0(N)_{\bar{\mathbb{F}}_p})$, compatibly with the Hecke correspondences. The correspondence ${}^t F \circ F$ is $p$ times the diagonal, so $F^* \cdot ({}^t F)^* = p$ on $H^1$. Hence $F^{*2} - T_p F^* + p = F^*(F^* + ({}^tF)^*) - T_p F^* = 0$. $\square$

So for an eigenform $f$ the trace of Frobenius on the $f$-part is the Hecke eigenvalue $a_p$ (P. Deligne, *Formes modulaires et représentations $\ell$-adiques*, Sém. Bourbaki 355, 1969). The Eichler-Shimura chapter of the development volumes proves the same principle for Hecke towers: a congruence relation for the Hecke correspondences on the special fibre, with smooth and proper base change, shows that the Hecke polynomial kills Frobenius on the Galois representation.

## Comparison with singular cohomology

For a scheme $X$ of finite type over $\mathbb{C}$, let $X^{\mathrm{an}} = X(\mathbb{C})$ with the analytic topology. A sheaf $\mathcal{F}$ on $X_{\mathrm{et}}$ gives a sheaf $\mathcal{F}^{\mathrm{an}}$ on $X^{\mathrm{an}}$, since an étale map gives a local homeomorphism on complex points.

**Theorem (Riemann existence theorem).** Let $X$ be of finite type over $\mathbb{C}$. Then $Y \mapsto Y^{\mathrm{an}}$ is an equivalence from finite étale $X$-schemes to finite covering spaces of $X^{\mathrm{an}}$. So for $X$ connected, $\pi_1^{\mathrm{et}}(X, \bar x)$ is the profinite completion of the topological fundamental group $\pi_1(X^{\mathrm{an}}, x)$ (SGA 1, Exposé XII).

**Theorem (comparison theorem; Artin).** Let $X$ be of finite type over $\mathbb{C}$ and $\mathcal{F}$ a constructible sheaf on $X_{\mathrm{et}}$. Then the natural maps
$$\begin{aligned} H^i(X_{\mathrm{et}}, \mathcal{F}) &\to H^i(X^{\mathrm{an}}, \mathcal{F}^{\mathrm{an}}), \\ H^i_c(X_{\mathrm{et}}, \mathcal{F}) &\to H^i_c(X^{\mathrm{an}}, \mathcal{F}^{\mathrm{an}}) \end{aligned}$$
are isomorphisms for all $i$ (SGA 4, Exposé XI for $X$ smooth, and Exposé XVI in general).

For $H^1$ with finite constant coefficients this is the Riemann existence theorem, since both groups classify torsors. The general case uses Artin's *elementary fibrations*: each point of a smooth $X$ has a Zariski neighbourhood that is a tower of smooth curve fibrations, each a complement of a finite étale divisor in a smooth proper curve. On such a tower both cohomologies are computed by the same Leray spectral sequences, and the fibres are $K(\pi, 1)$ spaces in both topologies.

**Corollary.** For $X$ of finite type over $\mathbb{C}$, $H^i(X_{\mathrm{et}}, \mathbb{Z}_\ell) \cong H^i(X^{\mathrm{an}}, \mathbb{Z}) \otimes \mathbb{Z}_\ell$ and $H^i(X_{\mathrm{et}}, \mathbb{Q}_\ell) \cong H^i(X^{\mathrm{an}}, \mathbb{Q}) \otimes \mathbb{Q}_\ell$.

*Proof.* The space $X^{\mathrm{an}}$ has the homotopy type of a finite CW complex, so its integral cohomology groups are finitely generated. Apply the theorem to $\mathbb{Z}/\ell^m$, use the universal coefficient theorem and pass to the limit, which is exact on finite groups. $\square$

Under the comparison, $\mu_n(\mathbb{C})$ is identified with $\mathbb{Z}/n$ by $\zeta = e^{2\pi i/n} \mapsto 1$. So canonically $\Lambda(1) \cong 2\pi i \mathbb{Z} \otimes \mathbb{Z}/n$, as in Hodge theory, and the étale Chern classes, cycle classes, cup products and trace maps match the topological ones, up to these factors of $2\pi i$ and the usual signs.

**Corollary.** Let $X$ be of finite type over a field $K \subseteq \mathbb{C}$, with $\bar K$ its algebraic closure in $\mathbb{C}$. Then $H^i(X_{\bar K}, \mathbb{Q}_\ell) \cong H^i(X(\mathbb{C}), \mathbb{Q}) \otimes \mathbb{Q}_\ell$.

*Proof.* Combine the change of algebraically closed field $\bar K \subseteq \mathbb{C}$ with the comparison theorem. $\square$

So the dimensions of the $\ell$-adic groups are the Betti numbers of $X(\mathbb{C})$. They do not depend on $\ell$, and they can be computed by topology or, for $X$ smooth and projective, by the Hodge numbers. For a [[Shimura variety|QT4CF7ZKK5]] over its reflex field $E$, the corollary identifies the $\ell$-adic cohomology with the singular cohomology on which the automorphic forms are seen through Matsushima's formula, and the Galois action of $\mathrm{Gal}(\bar E/E)$ is the new structure.

**Theorem (Hodge-Tate decomposition; Faltings).** Let $K$ be a finite extension of $\mathbb{Q}_p$, $\mathbb{C}_p$ the completion of $\bar K$, and $X$ proper and smooth over $K$. There is a canonical $\mathrm{Gal}(\bar K/K)$-equivariant isomorphism
$$\begin{aligned} H^i(X_{\bar K}, \mathbb{Q}_p) \otimes_{\mathbb{Q}_p} \mathbb{C}_p \\ &\cong \bigoplus_{j=0}^{i} H^{i-j}(X, \Omega^j_{X/K}) \otimes_K \mathbb{C}_p(-j) \end{aligned}$$
(G. Faltings, *p-adic Hodge theory*, J. Amer. Math. Soc. 1, 1988).

This is the $p$-adic comparison: the coefficient prime equals the residue characteristic, and singular cohomology is replaced by Hodge cohomology and the period rings of [the Galois representations chapter](/learn/galois-representations/). With good reduction, the crystalline comparison $H^i(X_{\bar K}, \mathbb{Q}_p) \otimes B_{\mathrm{cris}} \cong H^i_{\mathrm{cris}} \otimes B_{\mathrm{cris}}$ holds (G. Faltings, *Crystalline cohomology and p-adic Galois representations*, 1989; T. Tsuji, *p-adic étale cohomology and crystalline cohomology in the semi-stable reduction case*, Invent. Math. 137, 1999). The development chapters use these with the coefficient prime $\ell$ above the place, through [[p-adic Hodge theory|6YDZNXR19H]], to show that the representations of [GeoOne](/step/geo-one-def/) are crystalline at the places above $\ell$ with the expected Hodge-Tate weights.

## Notes and references

- J. S. Milne, *Étale Cohomology*, Princeton, 1980. Chapter I for étale morphisms and henselian rings, Chapter II for sheaves and the Galois case, Chapter III for cohomology, Hilbert 90, limits and Hochschild-Serre, Chapter IV for the Brauer group, Chapter V for the cohomology of curves and surfaces, and Chapter VI for the fundamental theorems: base change, purity, Künneth, cycle classes, Poincaré duality and the Lefschetz formula. This is the main reference for a first reading. Milne's free *Lectures on Étale Cohomology* cover the same ground more briefly.
- P. Deligne, SGA 4½, *Cohomologie étale: les points de départ* (the Arcata lectures). The quickest complete path: the étale site, Galois cohomology, the cohomology of curves via Tsen, and proper base change. In the same volume, *Rapport sur la formule des traces* and *Fonctions L modulo $\ell^n$ et modulo $p$* for the trace formula, *Cycle* for cycle classes, *Dualité* for Poincaré duality, and *Théorèmes de finitude en cohomologie $\ell$-adique* for finiteness and Künneth without compact support.
- E. Freitag and R. Kiehl, *Étale Cohomology and the Weil Conjecture*, Springer, 1988, Chapter I. A systematic account of the main theorems with complete proofs; the later chapters give Deligne's proof of the Weil conjectures.
- SGA 1 (Grothendieck), Exposé V for the fundamental group, Exposé X for purity of the branch locus, Exposé XII for the Riemann existence theorem, Exposé XIII for Abhyankar's lemma.
- SGA 4 (Artin, Grothendieck, Verdier), Exposés VII to XVIII: VII for the étale site and limits, IX for constructible sheaves and curves, X for cohomological dimension, XI and XVI for the comparison theorem, XII for proper base change, XIV for finiteness and Artin vanishing, XVI for smooth base change and purity, XVII for compact supports and Künneth, XVIII for Poincaré duality. SGA 5, Exposés V and VI, for $\ell$-adic sheaves.
- The Stacks Project, chapters *Étale Cohomology* and *More Étale Cohomology*, for modern proofs of the base change theorems with all details, and L. Fu, *Étale Cohomology Theory*, World Scientific, 2011, for a full textbook treatment.
- O. Gabber, *Affine analog of the proper base change theorem*, Israel J. Math. 87, 1994; K. Fujiwara, *A proof of the absolute purity conjecture (after Gabber)*, 2002.
- P. Deligne, *La conjecture de Weil I*, Publ. Math. IHÉS 43, 1974, and *La conjecture de Weil II*, Publ. Math. IHÉS 52, 1980. R. Hartshorne, *Algebraic Geometry*, Appendix A for Chern classes and Appendix C for an overview of the Weil conjectures. S. Kleiman, *Algebraic cycles and the Weil conjectures*, 1968, for the Lefschetz formula from cycle classes.
- N. Katz, *Review of $\ell$-adic cohomology*, in *Motives*, Proc. Sympos. Pure Math. 55, Part 1, 1994: a short list of the facts in the form a user needs.
- For Eichler-Shimura: G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Chapter 7, and P. Deligne, *Formes modulaires et représentations $\ell$-adiques*, Sém. Bourbaki 355, 1969. For the trace formula on Shimura varieties, K. Fujiwara, Invent. Math. 127, 1997.
- For $p$-adic comparison: G. Faltings, *p-adic Hodge theory*, J. Amer. Math. Soc. 1, 1988; T. Tsuji, Invent. Math. 137, 1999; B. Bhatt, M. Morrow and P. Scholze, *Integral p-adic Hodge theory*, Publ. Math. IHÉS 128, 2018. For a modern foundation of $\ell$-adic sheaves, B. Bhatt and P. Scholze, *The pro-étale topology for schemes*, Astérisque 369, 2015.
