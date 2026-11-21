A Galois representation is a continuous action of the absolute Galois group of a field on a finite-dimensional vector space. Over a number field it is described place by place: by Frobenius eigenvalues where it is unramified, by a Weil-Deligne representation at the other places away from $\ell$, and by p-adic Hodge theory above $\ell$. The row statement of the proof asks for such a representation attached to a cuspidal automorphic representation.

## Profinite groups

**Definition.** A *[[profinite group|KA0YDB6QXE]]* is a topological group that is an inverse limit of finite discrete groups; equivalently, a compact, Hausdorff, totally disconnected topological group. Its open subgroups have finite index and form a basis of neighbourhoods of $1$. For example, $\mathbb{Z}_\ell = \varprojlim_n \mathbb{Z}/\ell^n\mathbb{Z}$ and $\widehat{\mathbb{Z}} = \varprojlim_n \mathbb{Z}/n\mathbb{Z} \cong \prod_\ell \mathbb{Z}_\ell$.

**Definition.** Let $K$ be a field with separable closure $\overline{K}$. The *[[absolute Galois group|PGKWBJDTKX]]* of $K$ is $G_K = \mathrm{Gal}(\overline{K}/K) = \varprojlim_L \mathrm{Gal}(L/K)$, over the finite Galois extensions $L$ of $K$ in $\overline{K}$, with the inverse limit (*Krull*) topology.

**Theorem (infinite Galois theory).** The map $H \mapsto \overline{K}^H$ is a bijection from the closed subgroups of $G_K$ to the extensions of $K$ in $\overline{K}$. Open subgroups correspond to finite extensions, and closed normal subgroups to Galois extensions.

**Definition (the group $G_S$).** Let $K$ be a number field and $S$ a set of places of $K$ containing the infinite places. Let $K_S$ be the largest extension of $K$ in $\overline{K}$ unramified at each finite place outside $S$, and $G_S = \mathrm{Gal}(K_S/K)$. A representation of $G_K$ unramified outside $S$ factors through the quotient $G_S$.

[Row0b](/step/row0b-def/) writes $\mathrm{Gal}(\Omega/E)$ as `G E Ω`, for an algebraic closure $\Omega$ of a CM field $E$, and [VWin](/step/vwin-def/) is about the cohomology of a group `GS` of this kind.

## Decomposition groups, inertia and Frobenius

Let $K$ be a number field and $v$ a finite place, with completion $K_v$ and residue field $k_v$ of size $q_v$ ([number fields](/learn/number-fields/)). Fix an embedding $\overline{K} \to \overline{K}_v$ over $K$; restriction gives an injective continuous map $G_{K_v} \to G_K$.

**Definition.** The image of $G_{K_v}$ in $G_K$ is the *[[decomposition group|7X92G8CQ33]]* at $v$; another embedding replaces it by a conjugate. For finite Galois $L/K$, its image in $\mathrm{Gal}(L/K)$ is $\{\sigma : \sigma(w) = w\}$, for the place $w$ of $L$ given by the embedding.

**Definition.** The action of $G_{K_v}$ on the integers of $\overline{K}_v$ gives a surjection $G_{K_v} \to G_{k_v} = \mathrm{Gal}(\overline{k}_v/k_v)$, whose kernel is the *inertia group* $I_v$. An algebraic extension of $K_v$ in $\overline{K}_v$ is unramified if and only if $I_v$ acts trivially on it. The group $G_{k_v} \cong \widehat{\mathbb{Z}}$ has topological generator $x \mapsto x^{q_v}$.

**Definition.** A *[[Frobenius element|H5145REFMW]]* (or *arithmetic Frobenius*) at $v$ is an element $\mathrm{Frob}_v \in G_{K_v}$ whose image in $G_{k_v}$ is $x \mapsto x^{q_v}$; its inverse is a *geometric Frobenius*.

Two Frobenius elements at $v$ differ by conjugation and by an element of $I_v$. If $L/K$ is finite Galois and unramified at $v$, their images in $\mathrm{Gal}(L/K)$ form one conjugacy class. By the Chebotarev density theorem ([L-functions](/learn/l-functions/)), for finite $S$ the conjugates of the $\mathrm{Frob}_v$ with $v \notin S$ are dense in $G_S$.

The condition `ESAt` in [GeoOne](/step/geo-one-def/) says that $\rho$ is trivial on inertia at $w$ and that a given polynomial kills $\rho(\sigma^{-1})$ for each Frobenius element $\sigma$ at $w$.

## Galois representations

**Definition.** Let $A$ be a topological commutative ring and $n \geq 1$. A *[[Galois representation|QW17YJ6ZCT]]* of $K$ of dimension $n$ over $A$ is a continuous homomorphism $\rho : G_K \to \mathrm{GL}_n(A)$; two are isomorphic if they are conjugate by an element of $\mathrm{GL}_n(A)$. It is *$\ell$-adic* when $A$ is a finite extension of $\mathbb{Q}_\ell$ or $\overline{\mathbb{Q}}_\ell$, with the topology of the $\ell$-adic absolute value. It is *semisimple* if each $G_K$-stable subspace has a $G_K$-stable complement.

**Proposition.** If $\rho : G_K \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ is continuous, then $\rho(G_K) \subset \mathrm{GL}_n(L)$ for a finite extension $L$ of $\mathbb{Q}_\ell$, and $\rho$ is conjugate to a representation with values in $\mathrm{GL}_n(\mathcal{O}_L)$.

Its reduction modulo the maximal ideal of $\mathcal{O}_L$ is a *residual representation* $\bar\rho : G_K \to \mathrm{GL}_n(\overline{\mathbb{F}}_\ell)$, whose semisimplification does not depend on the lattice (Brauer-Nesbitt).

**Definition.** A Galois representation $\rho$ is an *unramified representation* at a finite place $v$ if $\rho(I_v) = 1$. Then $\rho(\mathrm{Frob}_v)$ is well defined up to conjugacy, and the roots of its characteristic polynomial are the *Frobenius eigenvalues* of $\rho$ at $v$.

**Theorem.** Let $K$ be a number field, $S$ a finite set of places, and $\rho, \rho'$ semisimple $\ell$-adic representations of $G_K$ unramified outside $S$. If $\rho(\mathrm{Frob}_v)$ and $\rho'(\mathrm{Frob}_v)$ have the same characteristic polynomial for each $v \notin S$, then $\rho \cong \rho'$.

(The traces agree on a dense set by Chebotarev, so everywhere, and they determine a semisimple representation in characteristic $0$.)

**Example.** A continuous character $\chi : G_K \to \overline{\mathbb{Q}}_\ell^\times$ factors through $G_K^{\mathrm{ab}}$. If it is unramified almost everywhere and de Rham (defined below) at the places above $\ell$, then by [class field theory](/learn/class-field-theory/) it is the $\ell$-adic form of an algebraic Hecke character.

The fields `cont` and `ss` of [Row0b](/step/row0b-def/) ask that $r$ is continuous and semisimple, and `CoreAll` in [the Galois row](/proof/galois-row/) asks that at almost all $w$, $r$ is unramified with Frobenius eigenvalues given by the Satake parameters of $\pi_w$ (the formula is below).

## The cyclotomic character and Tate modules

**Definition.** Let $\ell$ be a prime different from the characteristic of $K$, and $\mu_{\ell^n} \subset \overline{K}$ the roots of unity of order dividing $\ell^n$. The *[[cyclotomic character|XSGB5K2KEG]]* is the continuous character $\varepsilon_\ell : G_K \to \mathbb{Z}_\ell^\times$ with $\sigma(\zeta) = \zeta^{\varepsilon_\ell(\sigma) \bmod \ell^n}$ for all $n$ and $\zeta \in \mu_{\ell^n}$. For a $\mathbb{Z}_\ell[G_K]$-module $M$ and $k \in \mathbb{Z}$, the *Tate twist* $M(k)$ is $M$ with $\sigma$ acting as $\varepsilon_\ell(\sigma)^k \sigma$.

**Example.** For a number field $K$ and a finite place $v \nmid \ell$, $\varepsilon_\ell$ is unramified at $v$ with $\varepsilon_\ell(\mathrm{Frob}_v) = q_v$. For $K = \mathbb{Q}$ it is the isomorphism $\mathrm{Gal}(\mathbb{Q}(\mu_{\ell^\infty})/\mathbb{Q}) \cong \mathbb{Z}_\ell^\times$.

The discrete module $\mathbb{Q}_\ell/\mathbb{Z}_\ell(k) = \varinjlim_n \mathbb{Z}/\ell^n\mathbb{Z}(k)$ is $\mu_{\ell^\infty}$ for $k = 1$.

**Definition.** Let $A$ be an abelian variety of dimension $g$ over $K$ (Chapter 12), and $\ell \neq \mathrm{char}\, K$. The *[[Tate module|4CSMQFTGD8]]* of $A$ is $T_\ell A = \varprojlim_n A[\ell^n](\overline{K})$, along multiplication by $\ell$. It is a free $\mathbb{Z}_\ell$-module of rank $2g$ with a continuous action of $G_K$. Put $V_\ell A = T_\ell A \otimes_{\mathbb{Z}_\ell} \mathbb{Q}_\ell$. The Tate module of the multiplicative group is $\varprojlim_n \mu_{\ell^n} = \mathbb{Z}_\ell(1)$.

**Theorem (Néron-Ogg-Shafarevich criterion; Serre and Tate, 1968).** Let $K$ be a number field and $v \nmid \ell$ a finite place. Then $A$ has good reduction at $v$ if and only if $V_\ell A$ is unramified at $v$. In that case the characteristic polynomial of $\mathrm{Frob}_v$ on $V_\ell A$ has integer coefficients independent of $\ell$.

The group of [VWin](/step/vwin-def/) lies in an $H^1$ with coefficients $\mathbb{Q}_l/\mathbb{Z}_l(-e)$, and the input `FarguesExact` of [the Weil bound](/proof/weil-bound/) is about the Tate modules of a p-divisible group (Chapter 13) and its dual.

## The Weil group

Let $F$ be a nonarchimedean local field with residue field $k$ of size $q$, a power of the prime $p$, and let $I_F = \ker(G_F \to G_k)$.

**Definition.** The *[[Weil group|TH24PGYAM5]]* $W_F$ is the group of $\sigma \in G_F$ whose image in $G_k$ is $x \mapsto x^{q^n}$ for some $n \in \mathbb{Z}$; put $\deg \sigma = n$ and $|\sigma| = q^{\deg \sigma}$. Its topology makes $I_F$, with the profinite topology, an open subgroup.

So $W_F$ is an extension of $\mathbb{Z}$ by $I_F$, dense in $G_F$, and a geometric Frobenius $\Phi$ has $\deg \Phi = -1$, $|\Phi| = q^{-1}$. We normalize the local Artin map $\mathrm{Art}_F : F^\times \to W_F^{\mathrm{ab}}$ of [class field theory](/learn/class-field-theory/) to send uniformizers to geometric Frobenius elements; then $|\mathrm{Art}_F(x)| = |x|_F$.

**Definition.** The *wild inertia group* $P_F$ is the unique pro-$p$ Sylow subgroup of $I_F$. A representation of $W_F$ is *tame* if it is trivial on $P_F$.

The quotient $I_F/P_F$ is isomorphic to $\prod_{\ell \neq p} \mathbb{Z}_\ell(1)$. For $\ell \neq p$ let $t_\ell : I_F \to \mathbb{Z}_\ell(1)$ be the projection; then $t_\ell(\sigma \tau \sigma^{-1}) = \varepsilon_\ell(\sigma)\, t_\ell(\tau)$ for $\sigma \in W_F$, $\tau \in I_F$.

In [IsRecT](/step/is-rect-def/) the map $a : W_h \to E_w^\times$ with `IsLocalArtin` inverts the local Artin map on abelianizations; its field `ord_eq` says that $a(\sigma)$ has valuation $-\deg \sigma$.

## Weil-Deligne representations

Fix a field $\Omega$ of characteristic $0$, such as $\mathbb{C}$ or $\overline{\mathbb{Q}}_\ell$.

**Definition.** A *Weil-Deligne representation* of $W_F$ over $\Omega$ is a pair $(r, N)$ of a homomorphism $r : W_F \to \mathrm{GL}(V)$, on a finite-dimensional $\Omega$-vector space $V$, trivial on an open subgroup of $I_F$, and a nilpotent endomorphism $N$ of $V$, the *monodromy operator*, with $r(\sigma) N r(\sigma)^{-1} = |\sigma| N$ for $\sigma \in W_F$. Morphisms commute with $r$ and $N$. The pair is *Frobenius-semisimple* if $r(\Phi)$ is semisimple.

The tensor product of $(r, N)$ and $(r', N')$ is $(r \otimes r', N \otimes 1 + 1 \otimes N')$. The *Frobenius-semisimplification* $(r, N)^{\mathrm{F\text{-}ss}}$ replaces $r(\Phi)$ by its semisimple part.

**Example ($\mathrm{Sp}(m)$).** For $m \geq 1$, $\mathrm{Sp}(m)$ is $\Omega^m$ with basis $e_0, \dots, e_{m-1}$, $r(\sigma) e_i = |\sigma|^i e_i$, $N e_i = e_{i+1}$ for $i < m - 1$ and $N e_{m-1} = 0$. It is indecomposable, and each indecomposable Frobenius-semisimple Weil-Deligne representation is $(r, 0) \otimes \mathrm{Sp}(m)$ for an irreducible $r$ and a unique $m$.

**Theorem (Grothendieck monodromy theorem).** Let $\ell \neq p$, fix a generator of $\mathbb{Z}_\ell(1)$ so that $t_\ell$ takes values in $\mathbb{Z}_\ell$, and fix a geometric Frobenius $\Phi$. Let $\rho : W_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ be continuous. There is a unique nilpotent $N$ with $\rho(\tau) = \exp(t_\ell(\tau) N)$ for all $\tau$ in an open subgroup of $I_F$. Then $r(\Phi^k \tau) = \rho(\Phi^k \tau) \exp(-t_\ell(\tau) N)$, for $k \in \mathbb{Z}$ and $\tau \in I_F$, defines a Weil-Deligne representation $\mathrm{WD}(\rho) = (r, N)$, whose isomorphism class does not depend on the choices and determines $\rho$ up to isomorphism.

So $\rho$ is trivial on an open subgroup of inertia exactly when $N = 0$.

In [IsRecT](/step/is-rect-def/), $rc$ takes values in the set $\mathrm{WD}(h)$ of classes of Weil-Deligne representations, and the law `langlands` uses $\mathrm{Sp}(m)$. In [Row0b](/step/row0b-def/), `wdOf h hl ι r` is the class of $\mathrm{WD}(r|_{G_{E_w}})$, and the clause `tor` of `AwayB` concerns classes with $N = 0$ that factor through $W_F^{\mathrm{ab}}$.

## The local Langlands correspondence

Let $F$ be a finite extension of $\mathbb{Q}_p$. For $n \geq 1$ let $\mathcal{A}_n(F)$ be the set of isomorphism classes of irreducible smooth representations of $\mathrm{GL}_n(F)$ ([representations](/learn/representations/)), and $\mathcal{G}_n(F)$ the set of isomorphism classes of $n$-dimensional Frobenius-semisimple Weil-Deligne representations of $W_F$ over $\mathbb{C}$.

**Theorem (the [[local Langlands correspondence|9E45NBX1G0]]; Harris and Taylor, 2001; Henniart, 2000).** There is a unique family of bijections $\mathrm{rec}_F : \mathcal{A}_n(F) \to \mathcal{G}_n(F)$, $n \geq 1$, such that:

1. for $n = 1$, $\mathrm{rec}_F(\chi) = \chi \circ \mathrm{Art}_F^{-1}$;
2. for $\pi_i \in \mathcal{A}_{n_i}(F)$ and each nontrivial additive character $\psi$ of $F$, $L(s, \pi_1 \times \pi_2) = L(s, \mathrm{rec}_F(\pi_1) \otimes \mathrm{rec}_F(\pi_2))$ and $\varepsilon(s, \pi_1 \times \pi_2, \psi) = \varepsilon(s, \mathrm{rec}_F(\pi_1) \otimes \mathrm{rec}_F(\pi_2), \psi)$;
3. $\det \mathrm{rec}_F(\pi) = \mathrm{rec}_F(\omega_\pi)$, for the central character $\omega_\pi$ of $\pi$;
4. $\mathrm{rec}_F(\pi^\vee) = \mathrm{rec}_F(\pi)^\vee$;
5. $\mathrm{rec}_F(\pi \otimes (\chi \circ \det)) = \mathrm{rec}_F(\pi) \otimes \mathrm{rec}_F(\chi)$ for each smooth character $\chi$ of $F^\times$.

Uniqueness follows from 1, 2 and the local converse theorem. Scholze (2013) gave another proof of existence.

**Proposition.** Moreover:

1. $\pi$ is supercuspidal if and only if $\mathrm{rec}_F(\pi)$ is irreducible, and then $N = 0$.
2. For supercuspidal $\sigma$, a segment $\Delta = [\sigma, \sigma |{\det}|^{m-1}]$ and its Langlands quotient $Q(\Delta)$, $\mathrm{rec}_F(Q(\Delta)) = \mathrm{rec}_F(\sigma) \otimes \mathrm{Sp}(m)$.
3. If $\pi$ is the Langlands quotient of a multisegment $\{\Delta_1, \dots, \Delta_k\}$, then $\mathrm{rec}_F(\pi) = \bigoplus_i \mathrm{rec}_F(Q(\Delta_i))$.
4. If $\pi$ is unramified with Satake parameters $b_1, \dots, b_n$, then $\mathrm{rec}_F(\pi)$ is unramified with $N = 0$, and $r(\Phi)$ has eigenvalues $b_1, \dots, b_n$.
5. If $\pi$ has a nonzero vector fixed by $1 + \varpi \mathrm{M}_n(\mathcal{O}_F)$, then $\mathrm{rec}_F(\pi)$ is tame.

The predicate [IsRecT](/step/is-rect-def/) lists twelve laws of $\mathrm{rec}_F$, some only on a class `Good`, among them the case $n = 1$, segments, twists, central characters, duals and depth. With no law on L-factors or epsilon factors, it does not single out $\mathrm{rec}_F$. Its law `langlands` is property 2 with the Lean normalization of $\mathrm{Sp}(m)$, and [RecTExists](/step/rect-exists/) gives such a map at each place.

## Period rings

Let $K$ be a finite extension of $\mathbb{Q}_p$ with residue field $k$, $K_0 = W(k)[1/p]$, $C$ the completion of an algebraic closure $\overline{K}$, and $\mathcal{O}_C$ its ring of integers; $G_K$ acts continuously on $C$. *[[p-adic Hodge theory|6YDZNXR19H]]* studies the *p-adic representations* of $G_K$, the continuous representations on finite-dimensional $\mathbb{Q}_p$-vector spaces, where the Grothendieck monodromy theorem does not apply.

**Theorem (Tate, 1967).** $C^{G_K} = K$, and $C(k)^{G_K} = 0$ for each $k \neq 0$.

**Definition.** The *tilt* of $C$ is $C^\flat = \varprojlim_{x \mapsto x^p} C$, the set of sequences $x = (x^{(0)}, x^{(1)}, \dots)$ in $C$ with $(x^{(n+1)})^p = x^{(n)}$, with termwise product and the sum $(x + y)^{(n)} = \lim_{m \to \infty} (x^{(n+m)} + y^{(n+m)})^{p^m}$. With $|x| = |x^{(0)}|$ it is an algebraically closed complete field of characteristic $p$, and $\mathcal{O}_{C^\flat} \cong \varprojlim_{x \mapsto x^p} \mathcal{O}_C/p$.

**Definition.** Fontaine's ring is $A_{\mathrm{inf}} = W(\mathcal{O}_{C^\flat})$, the [[Witt vectors|6N3X2QX4W9]] of $\mathcal{O}_{C^\flat}$, with the Frobenius $\varphi$ induced by $x \mapsto x^p$. There is a unique ring map $\theta : A_{\mathrm{inf}} \to \mathcal{O}_C$ with $\theta([x]) = x^{(0)}$ for Teichmüller lifts $[x]$. It is surjective, with kernel generated by $\xi = p - [p^\flat]$, where $(p^\flat)^{(0)} = p$.

**Definition (Fontaine period rings).** Let $\epsilon = (1, \zeta_p, \zeta_{p^2}, \dots) \in \mathcal{O}_{C^\flat}$ for a compatible system of primitive $p^n$-th roots of unity.

1. $B_{\mathrm{dR}}^+$ is the $\ker\theta$-adic completion of $A_{\mathrm{inf}}[1/p]$. The series $t = \log [\epsilon]$ converges in it and generates its maximal ideal, and $\sigma(t) = \varepsilon_p(\sigma) t$. The field $B_{\mathrm{dR}} = B_{\mathrm{dR}}^+[1/t]$ has the filtration $\mathrm{Fil}^i = t^i B_{\mathrm{dR}}^+$, with $\mathrm{gr}^i B_{\mathrm{dR}} \cong C(i)$.
2. $A_{\mathrm{cris}}$ is the $p$-adic completion of the divided power envelope of $A_{\mathrm{inf}}$ with respect to $\ker\theta$, and $B_{\mathrm{cris}} = A_{\mathrm{cris}}[1/t]$. It has a Frobenius $\varphi$ and an injection into $B_{\mathrm{dR}}$.
3. $B_{\mathrm{st}} = B_{\mathrm{cris}}[u]$ for an indeterminate $u$, with $\varphi(u) = pu$ and monodromy operator $N = -d/du$. An embedding $B_{\mathrm{st}} \to B_{\mathrm{dR}}$ sends $u$ to $\log [p^\flat]$.

These are *[[Fontaine's period rings|K6HW8YWCQJ]]*, each with a continuous action of $G_K$. For $B = B_{\mathrm{cris}}, B_{\mathrm{st}}, B_{\mathrm{dR}}$, $B^{G_K}$ is $K_0$, $K_0$, $K$. For a p-adic representation $V$ put $D_B(V) = (B \otimes_{\mathbb{Q}_p} V)^{G_K}$. Then $\dim_{B^{G_K}} D_B(V) \leq \dim_{\mathbb{Q}_p} V$, and $V$ is *$B$-admissible* when equality holds.

The bundle `nLink` of [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) has a statement named after $B_{\mathrm{cris}}$, and the tilt and $A_{\mathrm{inf}}$ enter the prismatic Dieudonné statement of [CM divisibility](/proof/cm-divisibility/).

## Crystalline, de Rham and potentially semistable representations

**Definition (Hodge-Tate weights).** Let $V$ be a p-adic representation of $G_K$. An integer $i$ is a *Hodge-Tate weight* of $V$, with multiplicity $\dim_K (V \otimes_{\mathbb{Q}_p} C(i))^{G_K}$, when this number is positive. $V$ is *Hodge-Tate* if the multiplicities add up to $\dim V$. With this convention $\mathbb{Q}_p(1)$ has Hodge-Tate weight $-1$.

If $V$ has coefficients in a finite extension $L$ of $\mathbb{Q}_p$ containing the images of all embeddings $\tau : K \to \overline{\mathbb{Q}}_p$, then $K \otimes_{\mathbb{Q}_p} L = \prod_\tau L$, and the $\tau$-components of the $(V \otimes C(i))^{G_K}$ give a multiset $\mathrm{HT}_\tau(V)$ of $\dim_L V$ integers; likewise for $\overline{\mathbb{Q}}_p$ coefficients. Proof pages call its elements *Hodge-Tate jumps*.

**Definition.** $V$ is *crystalline*, *semistable* or *de Rham* if it is admissible for $B_{\mathrm{cris}}$, $B_{\mathrm{st}}$ or $B_{\mathrm{dR}}$, and *potentially semistable* if its restriction to $G_{K'}$ is semistable for some finite extension $K'/K$.

Since $B_{\mathrm{cris}} \subset B_{\mathrm{st}} \subset B_{\mathrm{dR}}$, crystalline implies semistable, semistable implies de Rham, and de Rham implies Hodge-Tate.

**Theorem (p-adic monodromy theorem; Berger, 2002).** A p-adic representation is de Rham if and only if it is potentially semistable.

**Example.** Unramified characters and $\mathbb{Q}_p(1)$ are crystalline. If an abelian variety $A$ over $K$ has good reduction, then $V_p A$ is crystalline with Hodge-Tate weights $0$ and $-1$, each of multiplicity $g$ (Tate, 1967; Fontaine, 1982).

**Definition.** Let $V$ be semistable over a finite Galois extension $K'/K$. The space $D_{\mathrm{st}, K'}(V) = (B_{\mathrm{st}} \otimes V)^{G_{K'}}$ carries $\varphi$, $N$ and an action of $\mathrm{Gal}(K'/K)$, from which Fontaine (1994) builds a Weil-Deligne representation $\mathrm{WD}(V)$ of $W_K$. When $V$ is crystalline, $\mathrm{WD}(V)$ is unramified with $N = 0$, and $r(\Phi)$ acts through $\varphi^f$, where $p^f = |k|$.

The field `above` of [Row0b](/step/row0b-def/) asks that $r$ at $w \mid \ell$ is crystalline with Hodge-Tate jumps $HT$ when $\pi_w$ is spherical, and, only when $rc(\pi_w)$ has $N = 0$ and some further conditions hold, potentially semistable with a class `wdAt` matching $rc(\pi_w)$. `PhiKilled` in [GeoOne](/step/geo-one-def/) concerns the characteristic polynomial of `wdAt` at an element of degree $-1$.

## The Galois representation of an automorphic representation

Let $E$ be a CM field with maximal totally real subfield $E^+$ and complex conjugation $c$. Fix a prime $\ell$ and an isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$. Let $\pi$ be a regular algebraic cuspidal automorphic representation of $\mathrm{GL}_n(\mathbb{A}_E)$ and $\chi$ a Hecke character of $E^+$ with $(\pi, \chi)$ polarized ([automorphic forms](/learn/automorphic-forms/)).

**Theorem (Chenevier and Harris, 2013; Shin, 2011; Caraiani, 2012 and 2014; Barnet-Lamb, Gee, Geraghty and Taylor, 2014).** There is a continuous semisimple representation $r = r_{\ell,\iota}(\pi) : G_E \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ such that:

1. $r^c \cong r^\vee \otimes \varepsilon_\ell^{1-n}\, r_{\ell,\iota}(\chi)|_{G_E}$, where $r_{\ell,\iota}(\chi)$ is the $\ell$-adic character of $\chi$;
2. for each finite place $v \nmid \ell$, $\iota\, \mathrm{WD}(r|_{G_{E_v}})^{\mathrm{F\text{-}ss}} \cong \mathrm{rec}_{E_v}(\pi_v \otimes |{\det}|_v^{(1-n)/2})$;
3. for each $v \mid \ell$, $r|_{G_{E_v}}$ is potentially semistable, crystalline when $\pi_v$ is unramified, and 2 holds with Fontaine's $\mathrm{WD}$;
4. for each $\tau : E \to \overline{\mathbb{Q}}_\ell$, $\mathrm{HT}_\tau(r)$ consists of $n$ distinct integers given by the infinitesimal character of $\pi_\infty$ at $\iota \circ \tau$.

Properties 2 and 3 are *local-global compatibility*. At an unramified $v \nmid \ell$ with Satake parameters $B$, property 2 says that $r$ is unramified at $v$ and $r(\mathrm{Frob}_v^{-1})$ has characteristic polynomial $\prod_{b \in B}(X - \iota^{-1}(q_v^{(n-1)/2} b))$; the twist by $|{\det}|^{(1-n)/2}$ makes these eigenvalues algebraic.

[Row0b](/step/row0b-def/) is this theorem, proved in Lean in [the Galois row holds](/step/galois-row-holds/): `away` is property 2 for each $rc$ with `IsRecT` and the twist `algNorm` $\sigma \mapsto \sigma \otimes |{\det}|^{(1-a)/2}$, `weights` and `weights_conj` are property 4, and `above` is a weak form of property 3. The field `caraianiLocalGlobalDual` of [the literature structure](/proof/literature/) is named after Caraiani's theorem, but on the trunk it has the same Lean proof.

## Modularity lifting

A representation $\rho : G_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ of a number field $F$ is *automorphic* if $\rho \cong r_{\ell,\iota}(\pi)$ for some automorphic representation $\pi$ of $\mathrm{GL}_n(\mathbb{A}_F)$.

**Definition.** Let $\mathcal{O}$ be the ring of integers of a finite extension of $\mathbb{Q}_\ell$, with residue field $k$, let $S$ be finite, and let $\bar\rho : G_S \to \mathrm{GL}_n(k)$ be absolutely irreducible. A *deformation* of $\bar\rho$ to a complete local noetherian $\mathcal{O}$-algebra $A$ with residue field $k$ is a lift $G_S \to \mathrm{GL}_n(A)$ of $\bar\rho$, up to conjugation by $\ker(\mathrm{GL}_n(A) \to \mathrm{GL}_n(k))$. The deformations with given local conditions are the maps from a universal *deformation ring* $R$ (Mazur, 1989).

A *[[modularity lifting|VQ8XNV47K9]]* theorem says that if $\bar\rho$ is automorphic, $\rho$ has local properties at $\ell$ like those of an automorphic representation, and $\bar\rho$ has large image, then $\rho$ is automorphic. The *Taylor-Wiles patching* method proves such a theorem by showing $R = \mathbb{T}$ for a localized Hecke algebra $\mathbb{T}$ acting on automorphic forms.

**Theorem (Barnet-Lamb, Gee, Geraghty and Taylor, 2014, Theorem 4.2.1).** Let $F$ be an imaginary CM field, $\ell \geq 2(n+1)$ a prime, and $r : G_F \to \mathrm{GL}_n(\overline{\mathbb{Q}}_\ell)$ continuous. Suppose:

1. $r$ is unramified at all but finitely many places;
2. $r^c \cong r^\vee \otimes \varepsilon_\ell^{1-n} \mu|_{G_F}$ for a character $\mu$ of $G_{F^+}$ with $\mu(c_v)$ the same at each real place $v$;
3. at each $v \mid \ell$, $r|_{G_{F_v}}$ is potentially diagonalizable and has $n$ distinct Hodge-Tate weights for each $\tau$;
4. $\bar r|_{G_{F(\zeta_\ell)}}$ is irreducible, and the field cut out by $\mathrm{ad}\, \bar r$ does not contain $F(\zeta_\ell)$;
5. $\bar r \cong \bar r_{\ell,\iota}(\pi)$ for a regular algebraic polarized cuspidal $\pi$ with $r_{\ell,\iota}(\pi)$ potentially diagonalizable at each $v \mid \ell$.

Then $r$ is automorphic.

Potential diagonalizability is a condition at $\ell$; it holds, for example, for crystalline representations with Hodge-Tate weights in a range $[a, a + \ell - 2]$ when $F_v/\mathbb{Q}_\ell$ is unramified.

**Example (known cases of automorphy).** Elliptic curves over $\mathbb{Q}$ are modular (Wiles, 1995, and Taylor and Wiles, 1995, in the semistable case; Breuil, Conrad, Diamond and Taylor, 2001). Serre's modularity conjecture holds (Khare and Wintenberger, 2009), all symmetric powers of holomorphic newforms without CM are automorphic (Newton and Thorne, 2021), and potential automorphy holds in many cases over CM fields (Allen, Calegari, Caraiani and seven others, 2023).

In [the window bound](/proof/vwin/), `HypothesesH'` comes from `published_hypotheses_from_patching_alt`, and the counts of the cases II, III and V use automorphy of representations of dimensions four and three.

## Further reading

- J.-P. Serre, *Abelian $\ell$-adic Representations and Elliptic Curves*, chapter I.
- J. Tate, Number theoretic background, in *Automorphic Forms, Representations and L-functions*, Proc. Sympos. Pure Math. 33 (1979), part 2, sections 1 to 4.
- T. Wedhorn, The local Langlands correspondence for $\mathrm{GL}(n)$ over p-adic fields, ICTP Lecture Notes 21 (2008).
- O. Brinon and B. Conrad, *CMI Summer School Notes on p-adic Hodge Theory* (2009).
- T. Barnet-Lamb, T. Gee, D. Geraghty and R. Taylor, Potential automorphy and change of weight, Ann. of Math. 179 (2014), sections 1 and 2.
