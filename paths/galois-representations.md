A Galois representation is a continuous action of the absolute Galois group of a field on a finite-dimensional vector space. Over a number field it is described place by place: by Frobenius eigenvalues where it is unramified, by a Weil-Deligne representation at the other places away from $\ell$, and by p-adic Hodge theory at the places above $\ell$. The row statement of the proof asks for an $\ell$-adic Galois representation attached to a cuspidal automorphic representation, with all of these local properties.

## Profinite groups

**Definition.** A *[[profinite group|KA0YDB6QXE]]* is a topological group that is an inverse limit of finite groups, each with the discrete topology. Equivalently, it is a topological group that is compact, Hausdorff and totally disconnected. Its open subgroups have finite index, and they form a basis of neighbourhoods of $1$.

**Example.** $\mathbb{Z}_\ell = \varprojlim_n \mathbb{Z}/\ell^n\mathbb{Z}$ and $\widehat{\mathbb{Z}} = \varprojlim_n \mathbb{Z}/n\mathbb{Z} \cong \prod_\ell \mathbb{Z}_\ell$ are profinite.

**Definition.** Let $K$ be a field with a separable closure $\overline{K}$. The *[[absolute Galois group|PGKWBJDTKX]]* of $K$ is $G_K = \mathrm{Gal}(\overline{K}/K)$. It is the inverse limit of the finite groups $\mathrm{Gal}(L/K)$, where $L$ runs over the finite Galois extensions of $K$ in $\overline{K}$, and it has the inverse limit topology (the *Krull topology*).

**Theorem (infinite Galois theory).** The map $H \mapsto \overline{K}^H$ is a bijection from the closed subgroups of $G_K$ to the extensions of $K$ in $\overline{K}$. Open subgroups correspond to finite extensions, and closed normal subgroups to Galois extensions.

**Definition (the group $G_S$).** Let $K$ be a number field and let $S$ be a set of places of $K$ that contains the infinite places. Let $K_S$ be the largest extension of $K$ in $\overline{K}$ that is unramified at each finite place outside $S$. Put $G_S = \mathrm{Gal}(K_S/K)$. It is a quotient of $G_K$, and a representation of $G_K$ that is unramified outside $S$ factors through $G_S$.

The statement [Row0b](/step/row0b-def/) writes $\mathrm{Gal}(\Omega/E)$ as `G E Ω`, where $\Omega$ is an algebraic closure of a CM field $E$, and the window bound [VWin](/step/vwin-def/) is about the cohomology of a group `GS` of this kind.

## Decomposition groups, inertia and Frobenius

Let $K$ be a number field and let $v$ be a finite place of $K$. Let $K_v$ be the completion, with residue field $k_v$ of size $q_v$ ([number fields](/learn/number-fields/)). Fix an embedding $\overline{K} \to \overline{K}_v$ over $K$. Restriction gives an injective continuous map $G_{K_v} \to G_K$.

**Definition.** The image of $G_{K_v}$ in $G_K$ is the *[[decomposition group|7X92G8CQ33]]* at $v$. Another embedding changes it to a conjugate subgroup. For a finite Galois extension $L/K$, its image in $\mathrm{Gal}(L/K)$ is $\{\sigma : \sigma(w) = w\}$, where $w$ is the place of $L$ given by the embedding.

**Definition.** The action of $G_{K_v}$ on the integers of $\overline{K}_v$ gives a surjection $G_{K_v} \to G_{k_v} = \mathrm{Gal}(\overline{k}_v/k_v)$. Its kernel is the *inertia group* $I_v$. An algebraic extension of $K_v$ in $\overline{K}_v$ is unramified if and only if $I_v$ acts trivially on it.

The group $G_{k_v}$ is isomorphic to $\widehat{\mathbb{Z}}$, with topological generator $x \mapsto x^{q_v}$.

**Definition.** A *[[Frobenius element|H5145REFMW]]* at $v$ is an element $\mathrm{Frob}_v$ of $G_{K_v}$ whose image in $G_{k_v}$ is $x \mapsto x^{q_v}$. It is also called an *arithmetic Frobenius*, and its inverse is a *geometric Frobenius*.

Two Frobenius elements at $v$ differ by conjugation and by an element of $I_v$. If $L/K$ is finite Galois and unramified at $v$, the images of the Frobenius elements at $v$ in $\mathrm{Gal}(L/K)$ form one conjugacy class. The Chebotarev density theorem ([L-functions](/learn/l-functions/)) says more: for a finite set $S$, the conjugates of the elements $\mathrm{Frob}_v$ with $v \notin S$ are dense in $G_S$.

The condition `ESAt` in [GeoOne](/step/geo-one-def/) says that $\rho$ is trivial on inertia at $w$, and that a given polynomial kills $\rho(\sigma^{-1})$ for each Frobenius element $\sigma$ at $w$.

## Galois representations

**Definition.** Let $A$ be a topological commutative ring and let $n \geq 1$. A *[[Galois representation|QW17YJ6ZCT]]* of $K$ of dimension $n$ over $A$ is a continuous homomorphism $\rho : G_K \to \mathrm{GL}_n(A)$. Two of them are isomorphic if they are conjugate by an element of $\mathrm{GL}_n(A)$. When $A$ is a finite extension of $\mathbb{Q}_\ell$ or the field $\overline{\mathbb{Q}}_\ell$, the representation is *$\ell$-adic*.

Here $\overline{\mathbb{Q}}_\ell$ has the topology of its $\ell$-adic absolute value. The representation $\rho$ is *semisimple* if each $G_K$-stable subspace of $\overline{\mathbb{Q}}_\ell^n$ has a $G_K$-stable complement.

**Proposition.** Let $\rho : G_K \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ be continuous. Then there is a finite extension $L$ of $\mathbb{Q}_\ell$ with $\rho(G_K) \subset \mathrm{GL}_n(L)$, and $\rho$ is conjugate to a representation with values in $\mathrm{GL}_n(\mathcal{O}_L)$.

The reduction of such a representation modulo the maximal ideal of $\mathcal{O}_L$ is a *residual representation* $\bar\rho : G_K \to \mathrm{GL}_n(\overline{\mathbb{F}}_\ell)$. Its semisimplification does not depend on the choice of the lattice (Brauer-Nesbitt).

**Definition.** Let $v$ be a finite place of $K$. A Galois representation $\rho$ is an *unramified representation* at $v$ if $\rho(I_v) = 1$. Then $\rho(\mathrm{Frob}_v)$ is well defined up to conjugacy, and so is its characteristic polynomial. The roots of this polynomial are the *Frobenius eigenvalues* of $\rho$ at $v$.

**Theorem.** Let $K$ be a number field, $S$ a finite set of places, and $\rho, \rho'$ semisimple $\ell$-adic representations of $G_K$ that are unramified outside $S$. If $\rho(\mathrm{Frob}_v)$ and $\rho'(\mathrm{Frob}_v)$ have the same characteristic polynomial for each $v \notin S$, then $\rho \cong \rho'$.

The idea is that the traces agree on a dense set by Chebotarev, so everywhere by continuity, and a semisimple representation in characteristic $0$ is determined by its trace.

**Example.** A continuous character $\chi : G_K \to \overline{\mathbb{Q}}_\ell^\times$ factors through $G_K^{\mathrm{ab}}$. By [class field theory](/learn/class-field-theory/) it is the $\ell$-adic form of a Hecke character when it is unramified almost everywhere and algebraic at $\ell$.

The fields `cont` and `ss` of [Row0b](/step/row0b-def/) ask that $r$ is continuous and semisimple. The statement `CoreAll` of [the Galois row](/proof/galois-row/) asks that, at all but finitely many places $w$, $r$ is unramified and $r(\mathrm{Frob}_w^{-1})$ has the characteristic polynomial $\prod_{b \in B}(X - q_w^{(a-1)/2} b)$, read through $\iota$, where $B$ is the multiset of Satake parameters of $\pi_w$.

## The cyclotomic character and Tate modules

**Definition.** Let $\ell$ be a prime different from the characteristic of $K$, and let $\mu_{\ell^n} \subset \overline{K}$ be the group of roots of unity of order dividing $\ell^n$. The *[[cyclotomic character|XSGB5K2KEG]]* is the continuous character $\varepsilon_\ell : G_K \to \mathbb{Z}_\ell^\times$ with $\sigma(\zeta) = \zeta^{\varepsilon_\ell(\sigma) \bmod \ell^n}$ for each $n$ and each $\zeta \in \mu_{\ell^n}$. For a $\mathbb{Z}_\ell$-module $M$ with an action of $G_K$ and $k \in \mathbb{Z}$, the *Tate twist* $M(k)$ is $M$ with $\sigma$ acting as $\varepsilon_\ell(\sigma)^k \sigma$.

**Example.** If $K$ is a number field and $v \nmid \ell$ is a finite place, then $\varepsilon_\ell$ is unramified at $v$ and $\varepsilon_\ell(\mathrm{Frob}_v) = q_v$. For $K = \mathbb{Q}$, $\varepsilon_\ell$ is the isomorphism $\mathrm{Gal}(\mathbb{Q}(\mu_{\ell^\infty})/\mathbb{Q}) \cong \mathbb{Z}_\ell^\times$.

The module $\mathbb{Q}_\ell/\mathbb{Z}_\ell(k)$ is the direct limit of the modules $\mathbb{Z}/\ell^n\mathbb{Z}(k)$, with the discrete topology. For $k = 1$ it is $\mu_{\ell^\infty}$.

**Definition.** Let $A$ be an abelian variety of dimension $g$ over $K$ (Chapter 12 defines abelian varieties), and let $\ell \neq \mathrm{char}\, K$. The *[[Tate module|4CSMQFTGD8]]* of $A$ is $T_\ell A = \varprojlim_n A[\ell^n](\overline{K})$, where the maps are multiplication by $\ell$. It is a free $\mathbb{Z}_\ell$-module of rank $2g$ with a continuous action of $G_K$. Put $V_\ell A = T_\ell A \otimes_{\mathbb{Z}_\ell} \mathbb{Q}_\ell$.

**Example.** The Tate module of the multiplicative group is $\varprojlim_n \mu_{\ell^n} = \mathbb{Z}_\ell(1)$.

**Theorem (Néron-Ogg-Shafarevich criterion; Serre and Tate, 1968).** Let $K$ be a number field and let $v \nmid \ell$ be a finite place. Then $A$ has good reduction at $v$ if and only if $V_\ell A$ is unramified at $v$. In that case the characteristic polynomial of $\mathrm{Frob}_v$ on $V_\ell A$ has integer coefficients and does not depend on $\ell$.

The group of [VWin](/step/vwin-def/) lies in an $H^1$ with coefficients $\mathbb{Q}_l/\mathbb{Z}_l(-e)$, and the input `FarguesExact` of [the Weil bound](/proof/weil-bound/) is about the Tate modules of a p-divisible group and its dual. Chapter 13 defines p-divisible groups.

## The Weil group

Let $F$ be a nonarchimedean local field with residue field $k$ of size $q$, a power of the prime $p$. Let $I_F \subset G_F$ be the inertia group, the kernel of $G_F \to G_k$.

**Definition.** The *[[Weil group|TH24PGYAM5]]* $W_F$ is the group of $\sigma \in G_F$ whose image in $G_k$ is $x \mapsto x^{q^n}$ for some $n \in \mathbb{Z}$. Put $\deg \sigma = n$ and $|\sigma| = q^{\deg \sigma}$. The topology of $W_F$ is the one for which $I_F$, with its profinite topology, is an open subgroup.

So $W_F$ is an extension of $\mathbb{Z}$ by $I_F$, and it is dense in $G_F$. A geometric Frobenius $\Phi$ has $\deg \Phi = -1$ and $|\Phi| = q^{-1}$.

In this chapter the local Artin map $\mathrm{Art}_F : F^\times \to W_F^{\mathrm{ab}}$ of [class field theory](/learn/class-field-theory/) sends each uniformizer to the class of a geometric Frobenius. Then $|\mathrm{Art}_F(x)| = |x|_F$ for $x \in F^\times$.

**Definition.** The *wild inertia group* $P_F$ is the unique pro-$p$ Sylow subgroup of $I_F$. A representation of $W_F$ is *tame* if it is trivial on $P_F$.

The quotient $I_F/P_F$ is isomorphic to $\prod_{\ell \neq p} \mathbb{Z}_\ell(1)$. For $\ell \neq p$ let $t_\ell : I_F \to \mathbb{Z}_\ell(1)$ be the projection to one factor. Then $t_\ell(\sigma \tau \sigma^{-1}) = \varepsilon_\ell(\sigma)\, t_\ell(\tau)$ for $\sigma \in W_F$ and $\tau \in I_F$.

In [IsRecT](/step/is-rect-def/) the map $a : W_h \to E_w^\times$ with `IsLocalArtin` is an inverse of the local Artin map on abelianizations: its field `ord_eq` says that the valuation of $a(\sigma)$ is $-\deg \sigma$.

## Weil-Deligne representations

Fix a field $\Omega$ of characteristic $0$, such as $\mathbb{C}$ or $\overline{\mathbb{Q}}_\ell$.

**Definition.** A *Weil-Deligne representation* of $W_F$ over $\Omega$ is a pair $(r, N)$. Here $r : W_F \to \mathrm{GL}(V)$ is a homomorphism on a finite-dimensional $\Omega$-vector space $V$ that is trivial on an open subgroup of $I_F$, and $N$ is a nilpotent endomorphism of $V$ with $r(\sigma) N r(\sigma)^{-1} = |\sigma| N$ for each $\sigma \in W_F$. The operator $N$ is the *monodromy operator*. A morphism commutes with $r$ and with $N$. The pair is *Frobenius-semisimple* if $r(\Phi)$ is semisimple.

The tensor product of $(r, N)$ and $(r', N')$ is $(r \otimes r', N \otimes 1 + 1 \otimes N')$. The *Frobenius-semisimplification* $(r, N)^{\mathrm{F\text{-}ss}}$ replaces $r(\Phi)$ by its semisimple part.

**Example ($\mathrm{Sp}(m)$).** For $m \geq 1$, let $\mathrm{Sp}(m)$ be $\Omega^m$ with basis $e_0, \dots, e_{m-1}$, with $r(\sigma) e_i = |\sigma|^i e_i$, $N e_i = e_{i+1}$ for $i < m - 1$, and $N e_{m-1} = 0$. It is indecomposable. Each indecomposable Frobenius-semisimple Weil-Deligne representation is $(r, 0) \otimes \mathrm{Sp}(m)$ for an irreducible $r$ and a unique $m$.

**Theorem (Grothendieck monodromy theorem).** Let $\ell \neq p$, fix a generator of $\mathbb{Z}_\ell(1)$ so that $t_\ell$ takes values in $\mathbb{Z}_\ell$, and fix a geometric Frobenius $\Phi$. Let $\rho : W_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ be continuous. Then there is a unique nilpotent $N$ with $\rho(\tau) = \exp(t_\ell(\tau) N)$ for all $\tau$ in an open subgroup of $I_F$. The formula $r(\Phi^k \tau) = \rho(\Phi^k \tau) \exp(-t_\ell(\tau) N)$, for $k \in \mathbb{Z}$ and $\tau \in I_F$, defines a Weil-Deligne representation $\mathrm{WD}(\rho) = (r, N)$. Its isomorphism class does not depend on the choices, and it determines $\rho$ up to isomorphism.

So $\rho$ is tame exactly when $r$ is tame, and $\rho$ is trivial on an open subgroup of inertia exactly when $N = 0$.

In [IsRecT](/step/is-rect-def/) the target of $rc$ is the set $\mathrm{WD}(h)$ of isomorphism classes of Weil-Deligne representations, and the law `langlands` uses the classes $\mathrm{Sp}(m)$. In [Row0b](/step/row0b-def/), `wdOf h hl ι r` is the class $\mathrm{WD}(r|_{G_{E_w}})$, and the clause `tor` of `AwayB` is about classes with $N = 0$ that factor through $W_F^{\mathrm{ab}}$.

## The local Langlands correspondence

Let $F$ be a finite extension of $\mathbb{Q}_p$. For $n \geq 1$ let $\mathcal{A}_n(F)$ be the set of isomorphism classes of irreducible smooth representations of $\mathrm{GL}_n(F)$ ([representations](/learn/representations/)), and let $\mathcal{G}_n(F)$ be the set of isomorphism classes of $n$-dimensional Frobenius-semisimple Weil-Deligne representations of $W_F$ over $\mathbb{C}$.

**Theorem (the [[local Langlands correspondence|9E45NBX1G0]]; Harris and Taylor, 2001; Henniart, 2000).** There is a unique family of bijections $\mathrm{rec}_F : \mathcal{A}_n(F) \to \mathcal{G}_n(F)$, for $n \geq 1$, with these properties.

1. For $n = 1$, $\mathrm{rec}_F(\chi) = \chi \circ \mathrm{Art}_F^{-1}$.
2. For $\pi_1 \in \mathcal{A}_{n_1}(F)$, $\pi_2 \in \mathcal{A}_{n_2}(F)$ and each nontrivial additive character $\psi$ of $F$, $L(s, \pi_1 \times \pi_2) = L(s, \mathrm{rec}_F(\pi_1) \otimes \mathrm{rec}_F(\pi_2))$ and $\varepsilon(s, \pi_1 \times \pi_2, \psi) = \varepsilon(s, \mathrm{rec}_F(\pi_1) \otimes \mathrm{rec}_F(\pi_2), \psi)$.
3. $\det \mathrm{rec}_F(\pi) = \mathrm{rec}_F(\omega_\pi)$, where $\omega_\pi$ is the central character of $\pi$.
4. $\mathrm{rec}_F(\pi^\vee) = \mathrm{rec}_F(\pi)^\vee$.
5. $\mathrm{rec}_F(\pi \otimes (\chi \circ \det)) = \mathrm{rec}_F(\pi) \otimes \mathrm{rec}_F(\chi)$ for each smooth character $\chi$ of $F^\times$.

Uniqueness comes from the properties 1 and 2 and the local converse theorem. Scholze (2013) gave another proof of existence.

**Proposition.** The correspondence has these further properties.

1. $\pi$ is supercuspidal if and only if $\mathrm{rec}_F(\pi)$ is irreducible. Then $N = 0$.
2. Let $\sigma$ be supercuspidal, let $\Delta = [\sigma, \sigma |{\det}|^{m-1}]$ be a segment, and let $Q(\Delta)$ be its Langlands quotient. Then $\mathrm{rec}_F(Q(\Delta)) = \mathrm{rec}_F(\sigma) \otimes \mathrm{Sp}(m)$, with $\mathrm{Sp}(m)$ as above.
3. If $\pi$ is the Langlands quotient of a multisegment $\{\Delta_1, \dots, \Delta_k\}$, then $\mathrm{rec}_F(\pi) = \bigoplus_i \mathrm{rec}_F(Q(\Delta_i))$.
4. If $\pi$ is unramified with Satake parameters $b_1, \dots, b_n$, then $\mathrm{rec}_F(\pi)$ is unramified with $N = 0$, and $r(\Phi)$ has eigenvalues $b_1, \dots, b_n$.
5. If $\pi$ has a nonzero vector fixed by $1 + \varpi \mathrm{M}_n(\mathcal{O}_F)$, then $\mathrm{rec}_F(\pi)$ is tame.

The predicate [IsRecT](/step/is-rect-def/) lists twelve laws that $\mathrm{rec}_F$ satisfies, among them dimension, the case $n = 1$, segments, cuspidal to irreducible, twists, central characters, duals, injectivity and depth, some of them only on a class `Good`. It has no law on L-factors or epsilon factors, so it does not single out $\mathrm{rec}_F$. Its law `langlands` is the property 2 with the Lean normalization of $\mathrm{Sp}(m)$. The theorem [RecTExists](/step/rect-exists/) gives a map with these laws at each place.

## Period rings

Let $K$ be a finite extension of $\mathbb{Q}_p$ with residue field $k$, let $K_0 = W(k)[1/p]$, let $C$ be the completion of an algebraic closure $\overline{K}$, and let $\mathcal{O}_C$ be its ring of integers. The group $G_K$ acts continuously on $C$. The subject of *[[p-adic Hodge theory|6YDZNXR19H]]* is the study of the *p-adic representations* of $G_K$: the continuous representations on finite-dimensional $\mathbb{Q}_p$-vector spaces. Here $\ell = p$, and the Grothendieck monodromy theorem does not apply.

**Theorem (Tate, 1967).** $C^{G_K} = K$, and $C(k)^{G_K} = 0$ for each $k \neq 0$.

**Definition.** The *tilt* of $C$ is $C^\flat = \varprojlim_{x \mapsto x^p} C$, the set of sequences $x = (x^{(0)}, x^{(1)}, \dots)$ in $C$ with $(x^{(n+1)})^p = x^{(n)}$. The product is termwise, and the sum is $(x + y)^{(n)} = \lim_{m \to \infty} (x^{(n+m)} + y^{(n+m)})^{p^m}$. With $|x| = |x^{(0)}|$ it is an algebraically closed complete field of characteristic $p$. Its ring of integers $\mathcal{O}_{C^\flat}$ is isomorphic to $\varprojlim_{x \mapsto x^p} \mathcal{O}_C/p$.

**Definition.** Fontaine's ring is $A_{\mathrm{inf}} = W(\mathcal{O}_{C^\flat})$, the ring of [[Witt vectors|6N3X2QX4W9]] of $\mathcal{O}_{C^\flat}$, with the Frobenius $\varphi$ induced by $x \mapsto x^p$. There is a unique ring map $\theta : A_{\mathrm{inf}} \to \mathcal{O}_C$ with $\theta([x]) = x^{(0)}$ for the Teichmüller lift $[x]$. It is surjective, and its kernel is generated by $\xi = p - [p^\flat]$, where $p^\flat \in \mathcal{O}_{C^\flat}$ has $(p^\flat)^{(0)} = p$.

**Definition (Fontaine period rings).** Let $\epsilon = (1, \zeta_p, \zeta_{p^2}, \dots) \in \mathcal{O}_{C^\flat}$ for a compatible system of primitive $p^n$-th roots of unity.

1. $B_{\mathrm{dR}}^+$ is the completion of $A_{\mathrm{inf}}[1/p]$ for the $\ker\theta$-adic topology. The series $t = \log [\epsilon]$ converges in it and generates its maximal ideal, and $\sigma(t) = \varepsilon_p(\sigma) t$. The field $B_{\mathrm{dR}} = B_{\mathrm{dR}}^+[1/t]$ has the filtration $\mathrm{Fil}^i = t^i B_{\mathrm{dR}}^+$, with $\mathrm{gr}^i B_{\mathrm{dR}} \cong C(i)$.
2. $A_{\mathrm{cris}}$ is the $p$-adic completion of the divided power envelope of $A_{\mathrm{inf}}$ with respect to $\ker\theta$, and $B_{\mathrm{cris}} = A_{\mathrm{cris}}[1/t]$. It has a Frobenius $\varphi$ and an injection into $B_{\mathrm{dR}}$.
3. $B_{\mathrm{st}} = B_{\mathrm{cris}}[u]$ with $u$ an indeterminate, $\varphi(u) = pu$, and the monodromy operator $N = -d/du$. An embedding $B_{\mathrm{st}} \to B_{\mathrm{dR}}$ sends $u$ to $\log [p^\flat]$.

These are *[[Fontaine's period rings|K6HW8YWCQJ]]*. Each carries a continuous action of $G_K$. For $B \in \{B_{\mathrm{cris}}, B_{\mathrm{st}}, B_{\mathrm{dR}}\}$ the ring $B^{G_K}$ is $K_0$, $K_0$ and $K$, and for a p-adic representation $V$ put $D_B(V) = (B \otimes_{\mathbb{Q}_p} V)^{G_K}$. Then $\dim_{B^{G_K}} D_B(V) \leq \dim_{\mathbb{Q}_p} V$, and $V$ is *$B$-admissible* when equality holds.

The bundle `nLink` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has a statement named after Fontaine's $B_{\mathrm{cris}}$, and the tilt and $A_{\mathrm{inf}}$ enter the prismatic Dieudonné statement of [CM divisibility](/proof/cm-divisibility/).

## Crystalline, de Rham and potentially semistable representations

**Definition (Hodge-Tate weights).** Let $V$ be a p-adic representation of $G_K$. An integer $i$ is a *Hodge-Tate weight* of $V$ with multiplicity $\dim_K (V \otimes_{\mathbb{Q}_p} C(i))^{G_K}$ when this number is positive. $V$ is *Hodge-Tate* if the multiplicities add up to $\dim V$. With this convention $\mathbb{Q}_p(1)$ has the Hodge-Tate weight $-1$.

Let $V$ have coefficients in a finite extension $L$ of $\mathbb{Q}_p$ that contains the image of each embedding $\tau : K \to \overline{\mathbb{Q}}_p$. Then $K \otimes_{\mathbb{Q}_p} L = \prod_\tau L$, and the $\tau$-component of each $(V \otimes C(i))^{G_K}$ gives a multiset $\mathrm{HT}_\tau(V)$ of $\dim_L V$ integers. The same holds for $\overline{\mathbb{Q}}_p$ coefficients. Proof pages call its elements *Hodge-Tate jumps*.

**Definition.** $V$ is *crystalline*, *semistable* or *de Rham* if it is admissible for $B_{\mathrm{cris}}$, $B_{\mathrm{st}}$ or $B_{\mathrm{dR}}$. It is *potentially semistable* if its restriction to $G_{K'}$ is semistable for some finite extension $K'/K$.

Since $B_{\mathrm{cris}} \subset B_{\mathrm{st}} \subset B_{\mathrm{dR}}$, a crystalline representation is semistable, a semistable representation is de Rham, and a de Rham representation is Hodge-Tate.

**Theorem (p-adic monodromy theorem; Berger, 2002).** A p-adic representation is de Rham if and only if it is potentially semistable.

**Example.** Unramified characters and $\mathbb{Q}_p(1)$ are crystalline. If $A$ is an abelian variety over $K$ with good reduction, then $V_p A$ is crystalline with the Hodge-Tate weights $0$ and $-1$, each with multiplicity $g$ (Tate, 1967; Fontaine, 1982).

**Definition.** Let $V$ be potentially semistable, and semistable over a finite Galois extension $K'/K$. The space $D_{\mathrm{st}, K'}(V) = (B_{\mathrm{st}} \otimes V)^{G_{K'}}$ carries $\varphi$, $N$ and an action of $\mathrm{Gal}(K'/K)$. Fontaine (1994) turns these data into a Weil-Deligne representation $\mathrm{WD}(V)$ of $W_K$. When $V$ is crystalline, $\mathrm{WD}(V)$ is unramified with $N = 0$, and $r(\Phi)$ acts through $\varphi^f$, where $p^f = |k|$.

The field `above` of [Row0b](/step/row0b-def/) asks that $r$ at a place $w \mid \ell$ is crystalline and de Rham with the Hodge-Tate jumps $HT$ when $\pi_w$ is spherical, and de Rham and potentially semistable, with a class `wdAt` that matches $rc(\pi_w)$, in some cases with $N = 0$. The condition `PhiKilled` of [GeoOne](/step/geo-one-def/) is about the characteristic polynomial of the class `wdAt` at an element of degree $-1$.

## The Galois representation of an automorphic representation

Let $E$ be a CM field with maximal totally real subfield $E^+$ and complex conjugation $c$. Fix a prime $\ell$ and an isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$. Let $\pi$ be a regular algebraic cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$, and let $\chi$ be a Hecke character of $E^+$ such that $(\pi, \chi)$ is polarized ([automorphic forms](/learn/automorphic-forms/)).

**Theorem (Chenevier and Harris, 2013; Shin, 2011; Caraiani, 2012 and 2014; Barnet-Lamb, Gee, Geraghty and Taylor, 2014).** There is a continuous semisimple representation $r = r_{\ell,\iota}(\pi) : G_E \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ with these properties.

1. $r^c \cong r^\vee \otimes \varepsilon_\ell^{1-n}\, r_{\ell,\iota}(\chi)|_{G_E}$, where $r_{\ell,\iota}(\chi)$ is the $\ell$-adic character of $\chi$.
2. For each finite place $v \nmid \ell$, $\iota\, \mathrm{WD}(r|_{G_{E_v}})^{\mathrm{F\text{-}ss}} \cong \mathrm{rec}_{E_v}(\pi_v \otimes |{\det}|_v^{(1-n)/2})$.
3. For each place $v \mid \ell$, $r|_{G_{E_v}}$ is potentially semistable, it is crystalline when $\pi_v$ is unramified, and the isomorphism of 2 holds with Fontaine's $\mathrm{WD}$.
4. For each $\tau : E \to \overline{\mathbb{Q}}_\ell$, $\mathrm{HT}_\tau(r)$ consists of $n$ distinct integers given by the infinitesimal character of $\pi_\infty$ at $\iota \circ \tau$.

The properties 2 and 3 are *local-global compatibility*. At an unramified $v \nmid \ell$ with Satake parameters $B$, the property 2 says that $r$ is unramified at $v$ and that $r(\mathrm{Frob}_v^{-1})$ has the characteristic polynomial $\prod_{b \in B}(X - \iota^{-1}(q_v^{(n-1)/2} b))$. The twist by $|{\det}|^{(1-n)/2}$ makes these eigenvalues algebraic.

[Row0b](/step/row0b-def/) has this form. Its field `away` is local-global compatibility at $w \nmid \ell$ through each $rc$ with `IsRecT`, with the twist `algNorm` $\sigma \mapsto \sigma \otimes |{\det}|^{(1-a)/2}$. Its fields `weights` and `weights_conj` give the Hodge-Tate multisets, and `above` gives the conditions at $w \mid \ell$. The Lean code proves it, in [the Galois row holds](/step/galois-row-holds/). The field `caraianiLocalGlobalDual` of [the literature structure](/proof/literature/) is named after Caraiani's theorem, but on the trunk it gets the same Lean proof as Row0b.

## Modularity lifting

A representation $\rho : G_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ of a number field $F$ is *automorphic* if $\rho \cong r_{\ell,\iota}(\pi)$ for some automorphic representation $\pi$ of $\mathrm{GL}_n(\mathbb{A}_F)$.

**Definition.** Let $\mathcal{O}$ be the ring of integers of a finite extension of $\mathbb{Q}_\ell$, with residue field $k$, and let $\bar\rho : G_S \to \mathrm{GL}_n(k)$ be absolutely irreducible. A *deformation* of $\bar\rho$ to a complete local noetherian $\mathcal{O}$-algebra $A$ with residue field $k$ is a lift $G_S \to \mathrm{GL}_n(A)$ of $\bar\rho$, up to conjugation by $\ker(\mathrm{GL}_n(A) \to \mathrm{GL}_n(k))$. By Mazur (1989), the deformations with given local conditions are the maps from a universal *deformation ring* $R$.

A *[[modularity lifting|VQ8XNV47K9]]* theorem says that if $\bar\rho$ is automorphic, $\rho$ has local properties at $\ell$ like those of an automorphic representation, and $\bar\rho$ has a large image, then $\rho$ is automorphic. The *Taylor-Wiles patching* method proves such a theorem by showing $R = \mathbb{T}$, where $\mathbb{T}$ is a localized Hecke algebra acting on automorphic forms.

**Theorem (Barnet-Lamb, Gee, Geraghty and Taylor, 2014, Theorem 4.2.1).** Let $F$ be an imaginary CM field, let $\ell \geq 2(n+1)$ be prime, and let $r : G_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ be continuous. Suppose:

1. $r$ is unramified at all but finitely many places;
2. $r^c \cong r^\vee \otimes \varepsilon_\ell^{1-n} \mu|_{G_F}$ for a character $\mu$ of $G_{F^+}$ with $\mu(c_v)$ the same at each real place $v$;
3. at each $v \mid \ell$, $r|_{G_{F_v}}$ is potentially diagonalizable and has $n$ distinct Hodge-Tate weights for each $\tau$;
4. $\bar r|_{G_{F(\zeta_\ell)}}$ is irreducible, and the field cut out by $\mathrm{ad}\, \bar r$ does not contain $F(\zeta_\ell)$;
5. $\bar r \cong \bar r_{\ell,\iota}(\pi)$ for a regular algebraic polarized cuspidal $\pi$ such that $r_{\ell,\iota}(\pi)$ is potentially diagonalizable at each $v \mid \ell$.

Then $r$ is automorphic.

Potential diagonalizability is a condition at $\ell$. It holds, for example, for crystalline representations with Hodge-Tate weights in a range $[a, a + \ell - 2]$ when $F_v/\mathbb{Q}_\ell$ is unramified.

**Example (known cases of automorphy).** Wiles (1995) and Taylor and Wiles (1995) proved that semistable elliptic curves over $\mathbb{Q}$ are modular, and Breuil, Conrad, Diamond and Taylor (2001) removed the condition. Khare and Wintenberger (2009) proved Serre's modularity conjecture. Newton and Thorne (2021) proved the automorphy of all symmetric powers of holomorphic newforms without CM. Allen, Calegari, Caraiani, Gee, Helm, Le Hung, Newton, Scholze, Taylor and Thorne (2023) proved potential automorphy results over CM fields.

In [the window bound](/proof/vwin/), the structure `HypothesesH'` is built by `published_hypotheses_from_patching_alt`, named after patching, and the counts of the cases II, III and V use automorphy statements for representations of dimensions four and three.

## Further reading

- J.-P. Serre, *Abelian $\ell$-adic Representations and Elliptic Curves*, chapter I.
- J. Tate, Number theoretic background, in *Automorphic Forms, Representations and L-functions*, Proc. Sympos. Pure Math. 33 (1979), part 2, sections 1 to 4.
- T. Wedhorn, The local Langlands correspondence for $\mathrm{GL}(n)$ over p-adic fields, ICTP Lecture Notes 21 (2008).
- O. Brinon and B. Conrad, *CMI Summer School Notes on p-adic Hodge Theory* (2009).
- T. Barnet-Lamb, T. Gee, D. Geraghty and R. Taylor, Potential automorphy and change of weight, Ann. of Math. 179 (2014), sections 1 and 2.
