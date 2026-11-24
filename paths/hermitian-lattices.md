This chapter covers lattices in quadratic and Hermitian spaces over number fields. We define lattices over Dedekind domains, their scales, norms, duals and discriminants, and we classify them over local fields after Jacobowitz. Then we define the genus, the class and the spinor genus, prove that a genus has finitely many classes, compute local densities, and state Siegel's mass formula and its form for unitary groups. The proof uses this material in the unitary branch. The record [HypsAlt](/step/hyps-alt-def/) carries `GenusMassAt`, `ClassFinAt` and `ClassMassAt`, so the masses and class numbers of definite Hermitian genera. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) and the [CM divisibility chapter](/proof/cm-divisibility/) use `SiegelMassRatioCM`, a ratio of masses of standard Hermitian lattices. [TLiftK](/step/tlift-k-def/) asks for lattices that are self-dual for a Hermitian form and for a trace form, the bound [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) is a bound on covolumes of lattices, and the [Siegel-Weil chapter](/proof/siegel-weil/) uses local densities. We assume [number fields](/learn/number-fields/), [Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms) and the [unitary groups and adelic points](/learn/groups/) of the earlier chapters.

## Lattices over Dedekind domains

Let $R$ be a [[Dedekind domain|7NPY2CN5KB]] with fraction field $K$, and let $V$ be a $K$-vector space of dimension $n$. In this chapter $R$ is the ring of integers $\mathcal{O}_F$ or $\mathcal{O}_E$ of a number field, or the ring of integers of a completion.

**Definition.** A *lattice* on $V$ is a finitely generated $R$-submodule $L \subset V$ with $KL = V$. For a prime $\mathfrak{p}$ of $R$ we write $L_{\mathfrak{p}} = R_{\mathfrak{p}} L$ for the localization, or $L_{\mathfrak{p}} = \hat{R}_{\mathfrak{p}} L$ in the completion $V_{\mathfrak{p}} = V \otimes_K K_{\mathfrak{p}}$.

A lattice is a torsion-free finitely generated [[module|0NZ8JA25WK]], so it is projective. Over a principal ideal domain it is free. Over a general Dedekind domain it need not be free, and the obstruction is a class in the [[ideal class group|WQ46BD3ARY]].

**Theorem (structure of lattices).** Let $L$ be a lattice on $V$. There are a basis $x_1, \dots, x_n$ of $V$ and for each $i$ a [[fractional ideal|YB4JTB4WJN]] $\mathfrak{a}_i$ of $R$ with
$$L = \mathfrak{a}_1 x_1 \oplus \dots \oplus \mathfrak{a}_n x_n.$$
We can take $\mathfrak{a}_1 = \dots = \mathfrak{a}_{n-1} = R$. The class of $\mathfrak{a}_1 \cdots \mathfrak{a}_n$ in $\mathrm{Cl}(R)$ does not depend on the choice, and two lattices of rank $n$ are isomorphic as $R$-modules if and only if these classes are equal.

This is Steinitz's theorem. See O'Meara, Chapter VIII, "Quadratic Forms over Dedekind Domains". The class of $\mathfrak{a}_1 \cdots \mathfrak{a}_n$ is the *Steinitz class* of $L$.

**Proposition (local-global principle for lattices).** Let $L$ be a lattice on $V$. Then $L = \bigcap_{\mathfrak{p}} L_{\mathfrak{p}}$, the intersection in $V$ over all primes. Conversely, let $M(\mathfrak{p})$ be an $R_{\mathfrak{p}}$-lattice on $V$ for each $\mathfrak{p}$, with $M(\mathfrak{p}) = L_{\mathfrak{p}}$ for all but finitely many $\mathfrak{p}$. Then there is exactly one lattice $M$ on $V$ with $M_{\mathfrak{p}} = M(\mathfrak{p})$ for all $\mathfrak{p}$.

*Proof.* Clearly $L \subseteq \bigcap L_{\mathfrak{p}}$. Let $x \in \bigcap L_{\mathfrak{p}}$. The ideal $\{a \in R : ax \in L\}$ is not in any prime $\mathfrak{p}$, because $x \in L_{\mathfrak{p}}$ gives an $a \notin \mathfrak{p}$ with $ax \in L$. So it is $R$ and $x \in L$. For the converse, put $M = \bigcap_{\mathfrak{p}} M(\mathfrak{p})$. There is a nonzero $d \in R$ with $dL_{\mathfrak{p}} \subseteq M(\mathfrak{p}) \subseteq d^{-1}L_{\mathfrak{p}}$ for all $\mathfrak{p}$, so $dL \subseteq M \subseteq d^{-1}L$ and $M$ is a lattice. A direct check at each $\mathfrak{p}$, with the Chinese remainder theorem for the finitely many primes that divide $d$, gives $M_{\mathfrak{p}} = M(\mathfrak{p})$. Uniqueness follows from the first part. $\square$

So a lattice is the same as a family of local lattices that agree with a fixed lattice at almost all primes. Over number fields we use the completions and write $L_v$ for a finite place $v$.

**Theorem (invariant factors).** Let $M \subseteq L$ be lattices on $V$. There are a basis $x_1, \dots, x_n$ of $V$, fractional ideals $\mathfrak{a}_i$ and integral ideals $\mathfrak{b}_1 \supseteq \mathfrak{b}_2 \supseteq \dots \supseteq \mathfrak{b}_n$ with
$$L = \bigoplus_i \mathfrak{a}_i x_i, \qquad M = \bigoplus_i \mathfrak{a}_i \mathfrak{b}_i x_i.$$
The ideals $\mathfrak{b}_i$ depend only on $L$ and $M$.

The $\mathfrak{b}_i$ are the *invariant factors* of $M$ in $L$, and the product $[L : M] = \mathfrak{b}_1 \cdots \mathfrak{b}_n$ is the *index ideal*. Then $L/M \cong \bigoplus_i R/\mathfrak{b}_i$. If $R = \mathcal{O}_F$, the order of $L/M$ is the [[ideal norm|M54ADM0CVF]] $N([L:M])$. The same statement holds for any two lattices, with fractional $\mathfrak{b}_i$. See O'Meara, Chapter VIII.

**Example (lattices on $F^n$ up to $\mathrm{GL}_n(F)$).** Two lattices $L, L'$ on $F^n$ satisfy $L' = gL$ for some $g \in \mathrm{GL}_n(F)$ if and only if they have the same Steinitz class. In adelic terms, $\mathrm{GL}_n(\mathbb{A}_{F,f})$ acts on lattices by the local-global principle, the stabilizer of $\mathcal{O}_F^n$ is $\mathrm{GL}_n(\hat{\mathcal{O}}_F)$, and the determinant gives a bijection
$$\mathrm{GL}_n(F) \backslash \mathrm{GL}_n(\mathbb{A}_{F,f}) / \mathrm{GL}_n(\hat{\mathcal{O}}_F) \cong F^\times \backslash \mathbb{A}_{F,f}^\times / \hat{\mathcal{O}}_F^\times = \mathrm{Cl}(F).$$
Over $\mathbb{Q}$ this set has one element. This is the simplest *class number* of an algebraic group, and Borel's theorem below says that every such set is finite.

## Lattices in quadratic and Hermitian spaces

Let $F$ be a number field or a local field of characteristic $0$. In the quadratic case, $V$ is an $F$-vector space with a [[nondegenerate|01NHFZF2SK]] symmetric bilinear form $b$, and $Q(x) = b(x, x)$. In the Hermitian case, $E/F$ is a quadratic étale algebra with involution $c$, and $V$ is an $E$-module of rank $n$ with a nondegenerate [[Hermitian form|8NJ7XY6F1S]] $h$, linear in the first variable and with $h(y, x) = c(h(x, y))$. We write $\mathcal{O}$ for $\mathcal{O}_F$ in the quadratic case and for $\mathcal{O}_E$ in the Hermitian case, and $h$ for $b$ when we treat both cases together. A lattice on $V$ is an $\mathcal{O}$-lattice.

**Definition (scale and norm).** Let $L$ be a lattice on $V$. The *scale* $\mathfrak{s}L$ is the $\mathcal{O}$-module generated by all $h(x, y)$ with $x, y \in L$. The *norm* $\mathfrak{n}L$ is the $\mathcal{O}_F$-module generated by all $h(x, x)$ with $x \in L$. The lattice is *integral* if $\mathfrak{s}L \subseteq \mathcal{O}$.

In the Hermitian case $h(x, x) \in F$, so $\mathfrak{n}L$ is an ideal of $F$ while $\mathfrak{s}L$ is an ideal of $E$. The identity $h(x+y, x+y) = h(x,x) + h(y,y) + \mathrm{Tr}_{E/F}\, h(x,y)$, applied to $ax$ for $a \in \mathcal{O}_E$, gives
$$\mathrm{Tr}_{E/F}(\mathfrak{s}L) \subseteq \mathfrak{n}L \subseteq \mathfrak{s}L \cap F.$$
If $\mathrm{Tr}_{E/F}(\mathcal{O}_E) = \mathcal{O}_F$ locally, for example when $E/F$ is unramified or split at the place, both inclusions are equalities. At a ramified dyadic place the norm can be smaller than the scale, and the classification needs both invariants. In the quadratic case $2\mathfrak{s}L \subseteq \mathfrak{n}L \subseteq \mathfrak{s}L$.

**Definition (dual lattice and self-dual lattice).** The *dual* of $L$ is $L^\# = \{x \in V : h(x, L) \subseteq \mathcal{O}\}$. So $L$ is integral if and only if $L \subseteq L^\#$. For a fractional ideal $\mathfrak{a}$ of $\mathcal{O}$, the lattice $L$ is *$\mathfrak{a}$-modular* if $\{x \in V : h(x, L) \subseteq \mathfrak{a}\} = L$, that is, $L = \mathfrak{a} L^\#$. It is *unimodular*, or *self-dual*, if $L^\# = L$.

An $\mathfrak{a}$-modular lattice has scale $\mathfrak{a}$. A rank one lattice $\mathcal{O}x$ is $\mathfrak{a}$-modular for $\mathfrak{a} = h(x, x)\mathcal{O}$.

**Proposition (dual of a split lattice).** Let $L = \bigoplus_i \mathfrak{a}_i x_i$, and let $y_1, \dots, y_n$ be the dual basis, with $h(x_i, y_j) = \delta_{ij}$. Then
$$L^\# = \bigoplus_i c(\mathfrak{a}_i)^{-1} y_i,$$
with $c$ the identity in the quadratic case.

*Proof.* Write $x = \sum_j b_j y_j$. For $a \in \mathfrak{a}_i$ we have $h(a x_i, x) = a\, c(b_i)$. So $x \in L^\#$ if and only if $\mathfrak{a}_i c(b_i) \subseteq \mathcal{O}$ for all $i$, that is, $b_i \in c(\mathfrak{a}_i)^{-1}$. $\square$

**Definition (discriminant of a lattice).** For $L = \bigoplus_i \mathfrak{a}_i x_i$ with [[Gram matrix|00SPJSDT3Z]] $G = (h(x_i, x_j))$, the *discriminant* of $L$ is the fractional ideal of $\mathcal{O}_F$
$$\mathfrak{d}L = \begin{cases} N_{E/F}(\mathfrak{a}_1 \cdots \mathfrak{a}_n) \det G \cdot \mathcal{O}_F & \text{(Hermitian case)}, \\ (\mathfrak{a}_1 \cdots \mathfrak{a}_n)^2 \det G \cdot \mathcal{O}_F & \text{(quadratic case)}. \end{cases}$$

The matrix $G$ is Hermitian, so $\det G \in F$. A change of basis by $g$ multiplies $\det G$ by $N_{E/F}(\det g)$ and the product of the ideals by $(\det g)^{-1}$, so $\mathfrak{d}L$ is well defined. It is local: $(\mathfrak{d}L)_v = \mathfrak{d}(L_v)$.

**Proposition (index of a lattice in its dual).** Let $L$ be an integral lattice over a number field. Then
$$|L^\# / L| = \begin{cases} N_{F/\mathbb{Q}}(\mathfrak{d}L)^2 & \text{(Hermitian case)}, \\ N_{F/\mathbb{Q}}(\mathfrak{d}L) & \text{(quadratic case)}. \end{cases}$$

*Proof.* Both sides are products of local factors, so we may assume $L$ free over a completion, with basis $x_i$ and Gram matrix $G$. Then $x_i = \sum_j h(x_i, x_j) y_j$, so the inclusion $L \subseteq L^\#$ has matrix $G^T$ in the bases $(x_i)$ and $(y_j)$. Hence $L^\#/L$ has the order of $\mathcal{O}/\det G \cdot \mathcal{O}$. In the quadratic case this is the local factor of $N_{F/\mathbb{Q}}(\mathfrak{d}L)$. In the Hermitian case $\det G \in F$ and $\mathcal{O} = \mathcal{O}_E$, so the order is the local factor of $N_{E/\mathbb{Q}}(\det G) = N_{F/\mathbb{Q}}(\det G)^2$. $\square$

**Example.** The lattice $\mathbb{Z}^n$ with $Q(x) = \sum x_i^2$ is unimodular. The root lattice $E_8$ is unimodular and *even*, that is, $Q(x) \in 2\mathbb{Z}$ for all $x$. For a CM extension $E/F$, the lattice $\mathcal{O}_E^n$ with $h(x, y) = \sum x_i c(y_i)$ is self-dual and [[positive definite|0KX66CZMBB]].

The proof also uses lattices that are self-dual for a trace form. For $\delta \in E^\times$ with $c(\delta) = -\delta$, the form $\delta h$ is skew-Hermitian, and $\mathrm{Tr}_{E/F}\, h$ is an $F$-bilinear form on $V$ viewed as an $F$-space.

**Proposition (trace dual).** Let $\mathfrak{D} = \mathfrak{D}_{E/F}$ be the different. The dual of $L$ for the trace form $\mathrm{Tr}_{E/F}\, h$ is
$$\{x \in V : \mathrm{Tr}_{E/F}\, h(x, L) \subseteq \mathcal{O}_F\} = \mathfrak{D}^{-1} L^\#.$$

*Proof.* For fixed $x$, the set $h(x, L)$ is a fractional ideal $\mathfrak{c}$ of $\mathcal{O}_E$. By the definition of the different, $\mathrm{Tr}(\mathfrak{c}) \subseteq \mathcal{O}_F$ if and only if $\mathfrak{c} \subseteq \mathfrak{D}^{-1}$. Since $h(ax, L) = a\, h(x, L)$, the condition $h(x, L) \subseteq \mathfrak{D}^{-1}$ means $x \in \mathfrak{D}^{-1} L^\#$. $\square$

So a self-dual Hermitian lattice is also self-dual for the trace form if and only if $\mathfrak{D}_{E/F} = \mathcal{O}_E$, that is, $E/F$ is unramified at all finite places. This is why the hypothesis `IsCMUnram` appears next to the two self-duality clauses `IsHerm` and `IsSkew` of [TLiftK](/step/tlift-k-def/).

**Proposition (covolume of a Hermitian lattice).** Let $E/F$ be a CM extension with $d = [F : \mathbb{Q}]$, and let $V$ be positive definite. Give $V \otimes_{\mathbb{Q}} \mathbb{R} = \prod_{v \mid \infty} V_v$ the Euclidean structure $\sum_v \mathrm{Re}\, h_v$. Then for every lattice $L$ on $V$,
$$\mathrm{covol}(L) = \left(2^{-d} |d_E|^{1/2}\right)^n N_{F/\mathbb{Q}}(\mathfrak{d}L).$$

*Proof.* For $L = \mathcal{O}_E^n$ with the standard form, $E \otimes \mathbb{R} = \mathbb{C}^d$ with the standard metric, and the covolume of $\mathcal{O}_E$ in it is $2^{-d}|d_E|^{1/2}$, the classical [[discriminant|3BCYVS9E17]] formula. For $L = \bigoplus \mathfrak{a}_i x_i$ with Gram matrix $G$, the ideals contribute $N_{E/\mathbb{Q}}(\mathfrak{a}_1 \cdots \mathfrak{a}_n) = N_{F/\mathbb{Q}}(N_{E/F}(\mathfrak{a}_1 \cdots \mathfrak{a}_n))$. At each real place $v$ of $F$, the real Gram matrix of $\mathrm{Re}\, h_v$ on $\mathbb{C}^n = \mathbb{R}^{2n}$ has determinant $(\det G_v)^2$, so the basis contributes $\det G_v$. The product over $v$ is $N_{F/\mathbb{Q}}(\det G)$, which is positive. $\square$

The bound `L3` in [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) is a bound on the logarithm of such covolumes. Siegel's induction in the last section counts lattice points in balls with this covolume.

**Definition (maximal lattice).** Let $\mathfrak{a}$ be a fractional ideal of $F$. A lattice $L$ on $V$ with $\mathfrak{n}L \subseteq \mathfrak{a}$ is *$\mathfrak{a}$-maximal* if no lattice $M \supsetneq L$ on $V$ has $\mathfrak{n}M \subseteq \mathfrak{a}$.

Maximal lattices exist on every space, since an integral lattice lies in its dual and the dual is a lattice. Over a local field, all $\mathfrak{a}$-maximal quadratic lattices on $V$ are isometric (O'Meara, Chapter IX, "Integral Theory of Quadratic Forms over Local Fields"). We prove the Hermitian analogue in the unramified case below.

## Local classification

Let $F_v$ be a nonarchimedean local field with uniformizer $\varpi$, ring of integers $\mathcal{O}_v$ and residue field $\mathbb{F}_q$. Let $E_v/F_v$ be a quadratic field extension, or $E_v = F_v \times F_v$ with $c(a, b) = (b, a)$. We call $E_v/F_v$ *unramified*, *ramified* or *split*. Let $\eta_v$ be the quadratic character of $F_v^\times$ attached to $E_v/F_v$ by [local class field theory](/learn/class-field-theory/#local-class-field-theory), with $\eta_v = 1$ in the split case. Lattices are $\mathcal{O}_{E_v}$-lattices on a Hermitian space $V$ of rank $n$.

**Proposition (Hermitian spaces over a local field).** Let $E_v/F_v$ be a field extension. Every Hermitian space of dimension $n \ge 2$ represents every element of $F_v^\times$. Hermitian spaces are classified by dimension and by $\det V \in F_v^\times / N(E_v^\times)$, a group of order $2$. Every space of dimension at least $3$ is isotropic, and a space of dimension $2$ is isotropic if and only if $-\det V \in N(E_v^\times)$.

*Proof.* A nondegenerate Hermitian space has an orthogonal basis, so $V \cong \langle a_1, \dots, a_n \rangle$ with $a_i \in F_v^\times$, and $\langle a \rangle \cong \langle a N(z) \rangle$. The binary space $\langle a, b \rangle$ represents $t$ if and only if the quadratic form $a N(x) + b N(y)$ on $E_v^2 = F_v^4$ represents $t$. A quadratic form of rank $5$ over $F_v$ is isotropic (Serre, A Course in Arithmetic, Chapter IV), so a form of rank $4$ represents every $t \ne 0$. Hence a space of dimension $n \ge 2$ splits as $\langle 1 \rangle \perp V'$, and by induction $V \cong \langle 1, \dots, 1, \det V \rangle$. If $n \ge 3$, then $\langle a_1, a_2 \rangle$ represents $-a_3$ and $V$ is isotropic. Finally $a N(x) + b N(y) = 0$ has a nonzero solution if and only if $-b/a$ is a norm, and $-b/a \equiv -ab$ modulo norms. $\square$

In the split case, every Hermitian space of rank $n$ is $W \oplus W^\vee$ with $W = F_v^n$, and $\mathrm{U}(V) \cong \mathrm{GL}_n(F_v)$. Over a number field, Landherr's theorem glues the local invariants with the signatures at the real places ([class field theory](/learn/class-field-theory/#norms-and-hermitian-forms)).

**Definition (Jordan splitting).** A *Jordan splitting* of $L$ is an orthogonal decomposition $L = L_1 \perp \dots \perp L_t$ with $L_j$ an $\mathfrak{s}_j$-modular lattice and $\mathfrak{s}_1 \supsetneq \mathfrak{s}_2 \supsetneq \dots \supsetneq \mathfrak{s}_t$. The *type* of the splitting is the list of pairs $(\mathrm{rank}\, L_j, \mathfrak{s}_j)$.

**Lemma (splitting lemma).** Let $M \subseteq L$ be a sublattice that is $\mathfrak{a}$-modular with $\mathfrak{a} = \mathfrak{s}L$. Then $L = M \perp (M^\perp \cap L)$.

*Proof.* The space $EM$ is nondegenerate, so $V = EM \perp (EM)^\perp$, with [[orthogonal complement|0XJXTBCB2T]] $(EM)^\perp$. Let $w \in L$ and write $w = m + m'$ with $m \in EM$ and $m' \in (EM)^\perp$. Then $h(m, M) = h(w, M) \subseteq \mathfrak{s}L = \mathfrak{a}$. As $M$ is $\mathfrak{a}$-modular, $m \in M$. So $m' = w - m \in L \cap M^\perp$. $\square$

**Theorem (existence of Jordan splittings).** Every lattice on $V$ has a Jordan splitting. The type of a Jordan splitting depends only on $L$.

*Proof.* Let $\mathfrak{s}L = \alpha \mathcal{O}_{E_v}$. If $h(x, x)$ generates $\mathfrak{s}L$ for some $x \in L$, then $\mathcal{O}x$ is $\mathfrak{s}L$-modular and splits off by the lemma. If not, take $x, y \in L$ with $h(x, y) = \beta$ a generator of $\mathfrak{s}L$. The Gram matrix of $P = \mathcal{O}x + \mathcal{O}y$ is $\begin{pmatrix} a & \beta \\ c(\beta) & d \end{pmatrix}$ with $a, d \in \mathfrak{s}L$ and $v_E(a), v_E(d) > v_E(\beta)$. So $v_E(ad - N\beta) = 2 v_E(\beta)$, and $P$ is $\mathfrak{s}L$-modular. It splits off by the lemma. Induction on the rank gives a splitting into modular pieces, and we group pieces of equal scale. For uniqueness of the type, each $\mathfrak{s}_j$-modular $L_j$ satisfies $L_j^\# = \mathfrak{s}_j^{-1} L_j$, so $L^\# = \perp_j \mathfrak{s}_j^{-1} L_j$. The invariant factors of $L$ in $L^\#$ are therefore the ideals $\mathfrak{s}_j$, each repeated $\mathrm{rank}\, L_j$ times, and these depend only on $L$. $\square$

The same argument works for quadratic lattices. Over non-dyadic fields the Jordan type and the discriminants of the components, up to squares of units, classify quadratic lattices; over dyadic fields the classification is O'Meara's and needs norm groups. See O'Meara, Chapter IX.

**Theorem (unramified and split classification).** Let $E_v/F_v$ be unramified or split. Then every unimodular lattice has an orthonormal basis. Every lattice $L$ has an orthogonal basis $e_1, \dots, e_n$ with $h(e_j, e_j) = \varpi^{i_j}$, and two lattices are isometric if and only if they have the same multiset $\{i_1, \dots, i_n\}$.

*Proof.* Let $L$ be unimodular. Suppose $h(x, x) \in \mathfrak{p}$ for all $x \in L$. Unimodularity gives $x, y$ with $h(x, y) = 1$. For $a \in \mathcal{O}_{E_v}$,
$$h(x + ay, x + ay) = h(x, x) + \mathrm{Tr}(c(a)) + N(a)\, h(y, y).$$
Since $\mathrm{Tr}(\mathcal{O}_{E_v}) = \mathcal{O}_v$, we can choose $a$ with $\mathrm{Tr}(c(a))$ a unit, and then $h(x + ay, x+ay)$ is a unit, a contradiction. So some $h(x, x) = u$ is a unit, $\mathcal{O}x$ is unimodular, and the splitting lemma gives $L = \mathcal{O}x \perp L'$ with $L'$ unimodular. As $N(\mathcal{O}_{E_v}^\times) = \mathcal{O}_v^\times$ in the unramified and split cases, we rescale $x$ to get $h(x, x) = 1$. Induction gives an orthonormal basis. For a general $L$, every scale is stable under $c$, because $h(y, x) = c(h(x, y))$. In the inert case $\varpi$ generates the prime of $E_v$, and in the split case $c$ swaps the two factors, so the scales are $\varpi^i \mathcal{O}_{E_v}$. Then $\varpi^{-i} h$ makes a $\varpi^i$-modular component unimodular. An orthonormal basis for $\varpi^{-i}h$ gives an orthogonal basis with $h(e_j, e_j) = \varpi^i$. The multiset of the $i_j$ is the Jordan type, which is an invariant, and it determines $L$ up to isometry by this construction. $\square$

**Corollary.** In the unramified case, $V$ contains a unimodular lattice if and only if $v(\det V)$ is even. All unimodular lattices on $V$ are isometric.

*Proof.* A unimodular lattice has $\det V$ a unit up to norms, and $N(E_v^\times) = \mathcal{O}_v^\times \varpi^{2\mathbb{Z}}$. Conversely, if $v(\det V)$ is even, then $V \cong \langle 1, \dots, 1 \rangle$ and the span of an orthonormal basis is unimodular. $\square$

**Example (maximal lattices, unramified case).** An integral lattice with $i_j \ge 2$ for some $j$ is not maximal, since we can replace $e_j$ by $\varpi^{-1} e_j$. If $i_j = i_k = 1$ for $j \ne k$, the binary lattice $\langle \varpi, \varpi \rangle$ is not maximal either. Take $a \in \mathcal{O}_{E_v}^\times$ with $N(a) = -1$; then $z = \varpi^{-1}(e_j + a e_k)$ is isotropic, with $h(z, e_j) = 1$ and $h(z, e_k) = c(a)$, so $L + \mathcal{O}z$ is integral. Hence a maximal integral lattice is unimodular if $v(\det V)$ is even and has type $\langle 1, \dots, 1, \varpi \rangle$ if $v(\det V)$ is odd. In both cases it is unique up to isometry.

**Theorem (Jacobowitz, ramified case with $p$ odd).** Let $E_v/F_v$ be ramified with residue characteristic $p \ne 2$, and let $\Pi$ be a uniformizer of $E_v$ with $c(\Pi) = -\Pi$. Let $L$ be $\Pi^i \mathcal{O}_{E_v}$-modular. If $i$ is odd, $L$ has even rank and is an orthogonal sum of planes $H(i)$ with Gram matrix $\begin{pmatrix} 0 & \Pi^i \\ c(\Pi)^i & 0 \end{pmatrix}$. If $i$ is even, $L \cong \langle \varpi^{i/2} u_1, \dots, \varpi^{i/2} u_r \rangle$ with $u_j \in \mathcal{O}_v^\times$, and $L$ is determined by its rank and by the class of $\det L$ in $\mathcal{O}_v^\times / N(\mathcal{O}_{E_v}^\times)$, a group of order $2$. Two lattices are isometric if and only if their Jordan splittings have the same type and the components of even scale have the same determinant classes.

This is the Jacobowitz classification, in Jacobowitz, Hermitian forms over local fields (1962). The reason for the odd case is that $h(x, x) \in F_v \cap \Pi^i \mathcal{O}_{E_v} = \Pi^{i+1}\mathcal{O}_{E_v} \cap F_v$, so no vector generates the scale and the second case of the existence proof applies. In the ramified dyadic case $\mathrm{Tr}(\mathcal{O}_{E_v}) \ne \mathcal{O}_v$, and Jacobowitz classifies lattices with the norm ideals of the Jordan components as additional invariants.

**Lemma (hyperbolic splitting).** Assume $\mathrm{Tr}(\mathcal{O}_{E_v}) = \mathcal{O}_v$, and let $L$ be unimodular. Let $x \in L$ be primitive and isotropic. Then there is $y \in L$ with $h(x, y) = 1$ and $h(y, y) = 0$, and
$$L = (\mathcal{O}x + \mathcal{O}y) \perp L', \qquad L' = \{x, y\}^\perp \cap L.$$

*Proof.* As $x$ is primitive and $L$ is unimodular, there is $z \in L$ with $h(x, z) = 1$. Choose $a \in \mathcal{O}_{E_v}$ with $\mathrm{Tr}(a) = h(z, z)$ and put $y = z - a x$. Then $h(x, y) = h(x, z) = 1$ and $h(y, y) = h(z, z) - \mathrm{Tr}(a) = 0$. The plane $\mathcal{O}x + \mathcal{O}y$ is a unimodular [[hyperbolic plane|1X5PZSK44P]], and the splitting lemma gives the decomposition, with projection $w \mapsto h(w, y) x + h(w, x) y$. $\square$

**Corollary (Iwasawa decomposition).** Assume $\mathrm{Tr}(\mathcal{O}_{E_v}) = \mathcal{O}_v$, let $L$ be unimodular, and assume that unimodular lattices of the same rank and determinant class are isometric (true in the unramified and split cases, and in the ramified case with $p$ odd). Then $K = \mathrm{U}(L)$ acts transitively on maximal isotropic flags in $V$. If $P$ is the stabilizer of one such flag, then $\mathrm{U}(V) = P K$.

*Proof.* Let $X_1 \subset \dots \subset X_r$ be a maximal isotropic flag with $\dim X_i = i$. The modules $L \cap X_i$ are saturated, so there are $x_1, \dots, x_r$ with $L \cap X_i = \mathcal{O}x_1 + \dots + \mathcal{O}x_i$. The lemma splits off a plane $H_1 \ni x_1$, and the projection of $x_2$ to $H_1^\perp \cap L$ is $x_2 - h(x_2, y_1) x_1$, still primitive and isotropic. By induction $L = H_1 \perp \dots \perp H_r \perp L_0$ with the flag in standard position, and $L_0$ is unimodular and anisotropic. For a second flag we get a second such decomposition with an isometric $L_0$. The isometry that matches the hyperbolic bases and the two copies of $L_0$ lies in $K$ and moves one flag to the other. As $\mathrm{U}(V)$ acts transitively on maximal isotropic flags by Witt's theorem (Scharlau, Quadratic and Hermitian Forms, Chapter 7), every $g \in \mathrm{U}(V)$ is $p k$ with $k \in K$ and $p \in P$. $\square$

The theta computations of the proof use this decomposition at the good places for the Siegel parabolic of a doubled space. See [groups](/learn/groups/) for parabolic and maximal compact subgroups.

## Genus, class and spinor genus

Now let $F$ be a number field and $E/F$ a quadratic extension, and let $V$ be a Hermitian space over $E$ or a quadratic space over $F$. Write $G = \mathrm{U}(V)$ or $G = \mathrm{O}(V)$, and $G^+ = \mathrm{SO}(V)$ in the quadratic case. The isometry classes of spaces are given by Landherr's theorem in the Hermitian case and by the [[Hasse principle|EMAR4X3W8D]] of Hasse and Minkowski in the quadratic case. So we fix $V$ and study the lattices on it.

**Definition (genus and class).** Lattices $L, L'$ on $V$ are in the same *class* if $L' = \sigma L$ for some $\sigma \in G(F)$, and in the same *proper class* if $\sigma \in G^+(F)$. They are in the same *genus* if for each finite [[place|BT5V3TSNY6]] $v$ there is $\sigma_v \in G(F_v)$ with $L'_v = \sigma_v L_v$.

By the local-global principle, $G(\mathbb{A}_{F,f})$ acts on lattices on $V$: for $g = (g_v)$, the lattice $gL$ is the one with $(gL)_v = g_v L_v$. This uses that $g_v L_v = L_v$ for almost all $v$. Let $K_L = \{g \in G(\mathbb{A}_{F,f}) : gL = L\}$, a compact open subgroup.

**Proposition (classes and double cosets).** The map $g \mapsto gL$ induces a bijection
$$G(F) \backslash G(\mathbb{A}_{F,f}) / K_L \longrightarrow \{\text{classes in the genus of } L\}.$$

*Proof.* The image of $g \mapsto gL$ is the genus of $L$ by definition and by the local-global principle. If $g'L = \sigma g L$ with $\sigma \in G(F)$, then $g^{-1}\sigma^{-1} g' \in K_L$, so $g' \in G(F) g K_L$. The converse is clear. $\square$

The number of classes in the genus is the *class number* $h(L)$. The [groups chapter](/learn/groups/) states this bijection for Hermitian lattices after Shimura (Arithmetic of unitary groups, 1964).

In the quadratic case the genus splits further. Let $\theta : G^+(F_v) \to F_v^\times / F_v^{\times 2}$ be the *spinor norm*, and let $G'(\mathbb{A}_{F,f})$ be the group of $g$ with $\theta(g_v) = 1$ for all $v$.

**Definition (spinor genus).** Lattices $L, L'$ on a quadratic space are in the same *proper spinor genus* if $L' = \sigma g L$ with $\sigma \in G^+(F)$ and $g \in G'(\mathbb{A}_{F,f})$.

**Proposition.** A genus is a disjoint union of proper spinor genera, each a union of proper classes. The number of proper spinor genera in a genus is a power of $2$.

The second statement holds because the spinor genera in the genus of $L$ are the cosets of a subgroup in a quotient of $\mathbb{A}_F^\times$ by $F^\times \mathbb{A}_F^{\times 2}$ and the spinor norms of the local groups $G^+(L_v)$, and every element of this quotient has order dividing $2$. See O'Meara, Chapter X, "Integral Theory of Quadratic Forms over Global Fields".

**Theorem (Eichler and Kneser).** Let $\dim V \ge 3$, and assume that $V_v$ is isotropic for some infinite place $v$. Then every proper spinor genus on $V$ consists of one proper class.

The proof is strong approximation for the spin group, which is simply connected and noncompact at $v$ (Eichler, 1952; Kneser, 1956; O'Meara, Chapter X). See the [groups chapter](/learn/groups/) for strong approximation.

**Example (indefinite unimodular lattices).** An indefinite unimodular $\mathbb{Z}$-lattice is determined by its rank, its signature and its type (even or odd) (Serre, A Course in Arithmetic, Chapter V). For instance, $E_8 \perp E_8$ and the lattice $D_{16}^+$ are in the same genus but in different classes, while $E_8 \perp E_8 \perp H$ and $D_{16}^+ \perp H$ are isometric for the even hyperbolic plane $H$.

For Hermitian lattices the determinant plays the part of the spinor norm. Let $E^1 = \{z \in E^\times : z\, c(z) = 1\}$, an algebraic torus over $F$, and let $\mathrm{SU}(V) = \ker(\det : \mathrm{U}(V) \to E^1)$.

**Proposition (indefinite Hermitian genera).** Let $\dim V \ge 2$, and assume that $\mathrm{SU}(V)(F_v)$ is noncompact for some infinite place $v$. Then the determinant induces a bijection
$$\mathrm{U}(V)(F) \backslash \mathrm{U}(V)(\mathbb{A}_{F,f}) / K_L \cong E^1(F) \backslash E^1(\mathbb{A}_{F,f}) / \det K_L.$$

*Proof.* In an orthogonal basis, $\mathrm{diag}(u, 1, \dots, 1)$ is unitary for $u \in E^1$, so $\det$ is onto at each place and on $F$-points. So the map is onto. Let $g, g' \in \mathrm{U}(V)(\mathbb{A}_{F,f})$ with $\det g' \in E^1(F) \det g \det K_L$. Changing $g'$ in its double coset, we may assume $\det g' = \det g$, so $g' = gs$ with $s \in \mathrm{SU}(V)(\mathbb{A}_{F,f})$. The group $\mathrm{SU}(V)$ is simply connected and absolutely almost simple, and it is noncompact at $v$, so strong approximation gives $g s g^{-1} = \delta \kappa$ with $\delta \in \mathrm{SU}(V)(F)$ and $\kappa \in \mathrm{SU}(V)(\mathbb{A}_{F,f}) \cap g K_L g^{-1}$. Then $g' = \delta g (g^{-1}\kappa g) \in \mathrm{U}(V)(F)\, g K_L$. $\square$

For a CM extension and a positive definite $V$, the group $\mathrm{U}(V)(F_v)$ is the compact group $\mathrm{U}(n)$ at every infinite place. Strong approximation fails, and the class number can be large. We then count classes with weights, by the mass.

## Class numbers

**Theorem (Borel).** Let $G$ be a linear algebraic group over a number field $F$ and $K \subset G(\mathbb{A}_{F,f})$ a compact open subgroup. Then $G(F) \backslash G(\mathbb{A}_{F,f}) / K$ is finite.

This is Borel, Some finiteness properties of adele groups over number fields, Publ. Math. IHES 16 (1963). See also Platonov and Rapinchuk, Algebraic Groups and Number Theory, Chapter 5, "Arithmetic groups and reduction theory", and Chapter 8, "Class numbers and class groups of algebraic groups".

We outline the proof in the form the development volumes use. First, restriction of scalars reduces to $F = \mathbb{Q}$. Second, for reductive $G$, embed $G$ in $\mathrm{GL}_N$ as the stabilizer of a tensor $t$ in a representation of $\mathrm{GL}_N$, chosen so that the orbit of $t$ under $\mathrm{GL}_N$ is closed. Third, the class number of $\mathrm{GL}_N$ over $\mathbb{Q}$ is $1$, so every pair (lattice, tensor) in the adelic orbit is rational: the double cosets of $G$ correspond to $\mathrm{GL}_N(\mathbb{Z})$-orbits of integral tensors in $\mathrm{GL}_N(\mathbb{R})t$ of bounded denominators. Fourth, reduction theory with Siegel sets shows that there are finitely many such orbits (Borel and Harish-Chandra). Unipotent groups have class number $1$ by strong approximation, and an induction on the span of the unipotent radical reduces the general case to the reductive one. Fifth, a smaller open subgroup has a finite index, so finiteness passes to every open level.

**Corollary.** The genus of a lattice on a quadratic or Hermitian space over a number field contains finitely many classes.

**Proposition (definite case).** If $G(F \otimes \mathbb{R})$ is compact, then for every $g \in G(\mathbb{A}_{F,f})$ the group $\Gamma_g = G(F) \cap g K g^{-1}$ is finite. In particular $\mathrm{U}(L)$ is finite for a lattice $L$ in a positive definite space.

*Proof.* $G(F)$ is discrete in $G(\mathbb{A}_F)$, and $\Gamma_g$ embeds in the compact set $G(F \otimes \mathbb{R}) \times gKg^{-1}$. A discrete subset of a compact set is finite. $\square$

In the definite case finiteness can also be seen directly. Two lattices in a genus have the same rank and discriminant, and by Hermite's reduction there are finitely many isometry classes of positive definite integral lattices of given rank and discriminant.

**Example (unimodular $\mathbb{Z}$-lattices).** In the genus of $\mathbb{Z}^n$ with the sum of squares, there is one class for $n \le 8$ and there are two for $n = 9$, namely $\mathbb{Z}^9$ and $E_8 \perp \mathbb{Z}$. The genus of even unimodular positive definite lattices has one class in rank $8$, namely $E_8$, two classes in rank $16$, namely $E_8 \perp E_8$ and $D_{16}^+$, and $24$ classes in rank $24$, the Niemeier lattices (Niemeier, 1973). See Conway and Sloane, Sphere Packings, Lattices and Groups, Chapter 16.

**Example (rank one Hermitian lattices).** Let $E/F$ be CM and $n = 1$, so $\mathrm{U}(V) = E^1$. For a lattice $L = \mathfrak{a}$ the group $\mathrm{U}(L) = E^1 \cap \mathcal{O}_E^\times$ is the group $\mu_E$ of roots of unity of $E$, since a unit of norm one has absolute value one at every place. The classes in the genus are $E^1(F) \backslash E^1(\mathbb{A}_{F,f}) / K_L$, a finite abelian group of order $h^1(K_L)$, and the mass defined below is $h^1(K_L)/|\mu_E|$.

In the proof, `ClassFinAt` in [HypsAlt](/step/hyps-alt-def/) is the finiteness of the class number for the definite Hermitian spaces of the construction, and `ClassMassAt` relates the classes to the mass.

## Local densities

Let $v$ be a finite place, with residue field $\mathbb{F}_q$. Let $L$ be a Hermitian $\mathcal{O}_{E_v}$-lattice of rank $m$ with Gram matrix $S$, and $T$ a Hermitian lattice of rank $a \le m$ with Gram matrix $T$.

**Definition (local density).** Let $A_k(S, T)$ be the number of $X \in M_{m \times a}(\mathcal{O}_{E_v}/\varpi^k)$ with $X^T S\, c(X) \equiv T \pmod{\varpi^k}$ as Hermitian matrices. The *local density* of $T$ in $L$ is
$$\alpha_v(L, T) = \lim_{k \to \infty} q^{-k(2ma - a^2)} A_k(S, T).$$

The exponent $2ma - a^2$ is the number of unknowns over $\mathcal{O}_v$ minus the number of equations, so the limit exists and is stationary for $k$ large. Two cases are used most. For $a = 1$ and $t \in \mathcal{O}_v$, $\alpha_v(L, t)$ counts $x \in L/\varpi^k L$ with $h(x, x) \equiv t$, divided by $q^{k(2m-1)}$. For $T = L$, $\alpha_v(L, L)$ counts endomorphisms of $L/\varpi^kL$ that keep $h$ modulo $\varpi^k$, divided by $q^{km^2}$. In the quadratic case the definition is the same with $X^T S X$, symmetric matrices and the exponent $ma - a(a+1)/2$; at $p = 2$ and for $a = m$ we use the normalization of the next section.

**Lemma (smooth models).** Let $\mathcal{X}$ be a smooth scheme over $\mathcal{O}_v$ of relative dimension $d$. Then $|\mathcal{X}(\mathcal{O}_v/\varpi^k)| = q^{(k-1)d}\, |\mathcal{X}(\mathbb{F}_q)|$ for all $k \ge 1$.

*Proof.* By Hensel's lemma for smooth schemes, each point modulo $\varpi^k$ lifts modulo $\varpi^{k+1}$, and the lifts form a torsor under the tangent space at the point, a vector space of dimension $d$ over $\mathbb{F}_q$. $\square$

This is Weil's observation that the volume of $\mathcal{X}(\mathcal{O}_v)$ for a generator of the top differential forms is $q^{-d}|\mathcal{X}(\mathbb{F}_q)|$. Gan and Yu (Group schemes and local densities, 2000) compute densities at all places by smooth models that are not reductive.

**Proposition (order of finite unitary groups).** Let $\mathrm{U}_n(\mathbb{F}_q)$ be the unitary group of a nondegenerate Hermitian form on $\mathbb{F}_{q^2}^n$. Then
$$|\mathrm{U}_n(\mathbb{F}_q)| = q^{n(n-1)/2} \prod_{i=1}^n \left(q^i - (-1)^i\right).$$

*Proof.* A count by induction on $n$, using that $z \mapsto z^{q+1}$ maps $\mathbb{F}_{q^2}^\times$ onto $\mathbb{F}_q^\times$ with fibres of size $q+1$, gives $q^{n-1}(q^n - (-1)^n)$ vectors $x$ with $h(x, x) = 1$. By Witt's theorem over $\mathbb{F}_q$, $\mathrm{U}_n$ acts transitively on them with stabilizer $\mathrm{U}_{n-1}$. So $|\mathrm{U}_n| = q^{n-1}(q^n - (-1)^n)|\mathrm{U}_{n-1}|$, and $|\mathrm{U}_1| = q+1$. $\square$

For a place $v$ unramified or split in $E$, put $\eta_v(\varpi) = -1$ in the inert case and $\eta_v = 1$ in the split case, and $L_v(s, \eta_v^i) = (1 - \eta_v(\varpi)^i q^{-s})^{-1}$. In the ramified case $L_v(s, \eta_v^i) = 1$ for $i$ odd and $(1 - q^{-s})^{-1}$ for $i$ even.

**Theorem (unimodular local densities).** Let $E_v/F_v$ be unramified or split, $L$ unimodular of rank $m$, and $T$ unimodular of rank $a \le m$. Then
$$\alpha_v(L, T) = \prod_{i = m-a+1}^{m} \left(1 - \eta_v(\varpi)^i q^{-i}\right).$$
In particular $\alpha_v(L, L) = \prod_{i=1}^m L_v(i, \eta_v^i)^{-1}$, and $\alpha_v(L, t) = 1 - \eta_v(\varpi)^m q^{-m}$ for $t \in \mathcal{O}_v^\times$.

*Proof.* The scheme of isometric embeddings of $T$ in $L$ is smooth over $\mathcal{O}_v$ of relative dimension $2ma - a^2$, because $L$ and $T$ are unimodular. By the lemma, $\alpha_v(L, T) = q^{-(2ma - a^2)}$ times the number of isometric embeddings of $T \otimes \mathbb{F}_q$ in $L \otimes \mathbb{F}_q$. In the inert case, Witt's theorem makes this number $|\mathrm{U}_m(\mathbb{F}_q)| / |\mathrm{U}_{m-a}(\mathbb{F}_q)|$, and the order formula gives the product after a count of the powers of $q$. In the split case the group is $\mathrm{GL}_m(\mathbb{F}_q)$, with $|\mathrm{GL}_m(\mathbb{F}_q)| = q^{m(m-1)/2}\prod_{i=1}^m(q^i - 1)$, and the same count gives the product with $\eta_v = 1$. $\square$

For quadratic lattices over $\mathbb{Z}_p$ with $p$ odd, the same method and the order $|\mathrm{O}^{\pm}_{2k}(\mathbb{F}_p)| = 2p^{k(k-1)}(p^k \mp 1)\prod_{i=1}^{k-1}(p^{2i} - 1)$ give, for $L$ unimodular of rank $2k$,
$$\alpha_p(L, L) = 2\left(1 - \chi_L(p)\, p^{-k}\right) \prod_{i=1}^{k-1} (1 - p^{-2i}), \qquad \chi_L(p) = \left(\frac{(-1)^k \det L}{p}\right),$$
before the factor $2^{-1}$ of Siegel's normalization below.

The next result is the link between densities and Haar measures. Fix a nonzero invariant top form $\omega$ on $\mathrm{U}(V)$ over $F_v$ and let $|\omega|_v$ be the [[Haar measure|CE0V9686M8]] it defines on $\mathrm{U}(V)(F_v)$. Let $|\cdot|_v$ be the normalized absolute value of $F_v$.

**Proposition (volume and local density).** There is a constant $c_v > 0$, depending on $V$ and $\omega$ but not on $L$, with
$$|\omega|_v(\mathrm{U}(L)) = c_v\, \alpha_v(L, L)\, |\mathfrak{d}L|_v^{m}$$
for every lattice $L$ on $V$ of rank $m$.

*Proof.* Choose a basis of $L$. The map $\phi_S : X \mapsto X^T S\, c(X)$ goes from $M_m(E_v)$ to the space of Hermitian matrices, and its fibre over $S$ is $\mathrm{U}(V)(F_v)$ in this basis, with $\mathrm{U}(L) = \phi_S^{-1}(S) \cap M_m(\mathcal{O}_{E_v})$. Let $dX$ be the additive Haar measure with $M_m(\mathcal{O}_{E_v})$ of volume $1$ and $dT$ the one on Hermitian matrices with the integral ones of volume $1$. Then $\alpha_v(L, L)$ is the volume of $\mathrm{U}(L)$ for the fibre measure $\nu_S = dX / \phi_S^* dT$. For another lattice $gL$ with Gram matrix $S' = g^T S c(g)$, we have $\phi_{S'} = A_g \circ \phi_S \circ \mathrm{Ad}(g)$, with $A_g(T) = g^T T c(g)$. Conjugation keeps $dX$, and $A_g$ multiplies $dT$ by $|N(\det g)|_v^m$. So $\nu_{S'} = |N(\det g)|_v^{-m} \nu_S$ under the identification, and $\mathfrak{d}(gL) = N(\det g)\mathfrak{d}L$. Hence the measure $|\mathfrak{d}L|_v^m \nu_S$ on $\mathrm{U}(V)(F_v)$ does not depend on $L$, and it is a constant multiple of $|\omega|_v$. $\square$

The development checks the same identity in the two simplest cases: $L \mapsto \varpi L$ multiplies $\alpha_v(L, L)$ by $q^{2m^2}$ and $|\mathfrak{d}L|_v^m$ by $q^{-2m^2}$, and a change of basis changes neither side.

## Siegel's mass formula and Tamagawa measures

Let $G$ be $\mathrm{U}(V)$ or $\mathrm{O}(V)$ over a number field $F$, with $G(F_\infty) = G(F \otimes \mathbb{R})$ compact, and let $L$ be a lattice on $V$ with stabilizer $K = K_L$. Let $L_1, \dots, L_h$ represent the classes in the genus of $L$, and $\Gamma_i = \mathrm{U}(L_i)$ or $\mathrm{O}(L_i)$.

**Definition (mass of a genus).** The *mass* of the genus of $L$ is
$$\mathrm{mass}(L) = \sum_{i=1}^{h} \frac{1}{|\Gamma_i|}.$$

**Proposition (mass as a volume).** For every Haar measure $\mu$ on $G(\mathbb{A}_F)$,
$$\mathrm{mass}(L) = \frac{\mu(G(F) \backslash G(\mathbb{A}_F))}{\mu(G(F_\infty) K)}.$$

*Proof.* Let $g_1, \dots, g_h$ represent the double cosets, with $L_i = g_i L$. Then $G(\mathbb{A}_F) = \bigsqcup_i G(F)\, (G(F_\infty) \times g_i K)$. The map $G(F_\infty) \times g_i K \to G(F) \backslash G(\mathbb{A}_F)$ is $|\Gamma_i|$ to $1$ onto its image, where $\Gamma_i = G(F) \cap g_i K g_i^{-1}$. Since $G(\mathbb{A}_F)$ is unimodular, $\mu(G(F_\infty) g_i K) = \mu(G(F_\infty) K)$. Summing over $i$ gives the claim. $\square$

**Corollary (mass ratio).** For lattices $L, L'$ on the same space $V$ of rank $m$,
$$\frac{\mathrm{mass}(L)}{\mathrm{mass}(L')} = \prod_{v < \infty} \frac{\alpha_v(L', L')\, |\mathfrak{d}L'|_v^m}{\alpha_v(L, L)\, |\mathfrak{d}L|_v^m}.$$

*Proof.* Take $\mu = \prod_v \mu_v$ and use the proposition for $L$ and $L'$. The numerators cancel and the factor at infinity cancels. At finite places, apply the proposition on volume and local density. Almost all factors are $1$, since $L_v = L'_v$ for almost all $v$. $\square$

To compare lattices on different spaces we need a canonical measure.

**Definition (Tamagawa measure).** Let $G$ be connected reductive over $F$ and $\omega$ a nonzero invariant top form defined over $F$. Give $F_v$ the Haar measure with $\mathcal{O}_v$ of volume $1$ at finite places and the Lebesgue measure at real places, twice the Lebesgue measure at complex places. The *Tamagawa measure* is
$$\mu_G = |d_F|^{-\dim G/2} \prod_v |\omega|_v,$$
when the product over finite places of $|\omega|_v(G(\mathcal{O}_v))$ converges absolutely. It does not depend on $\omega$, by the product formula. The *Tamagawa number* is $\tau(G) = \mu_G(G(F) \backslash G(\mathbb{A}_F))$ when $G$ has no nontrivial $F$-rational characters.

For $\mathrm{U}(V)$ the local volumes at good places are $\prod_{i=1}^n L_v(i, \eta_v^i)^{-1}$, and the product of the factors $L_v(1, \eta_v)^{-1}$ converges only conditionally. One then uses the convergence factors $L_v(1, \eta_v)$ at the finite places and the global factor $L(1, \eta)^{-1}$, where $L(s, \eta)$ is the Hecke L-function of the quadratic character $\eta$ of $E/F$ ([Tate's thesis](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions)). This is Ono's normalization for tori, applied to $\mathrm{U}(V)$ through its determinant.

**Theorem (Tamagawa numbers).** Over a number field:
- $\tau(G) = 1$ for $G$ semisimple and simply connected, for example $\mathrm{SL}_n$, $\mathrm{Sp}_{2n}$, $\mathrm{Spin}(V)$ and $\mathrm{SU}(V)$ (Weil for the classical groups; Kottwitz, Tamagawa numbers, Ann. of Math. 127 (1988), in general, after Langlands and Lai).
- $\tau(\mathrm{SO}(V)) = 2$ for $\dim V \ge 3$ (Weil, Adeles and Algebraic Groups).
- $\tau(\mathrm{U}(V)) = 2$ for $\dim V \ge 1$, by Ono's formula $\tau(G) = |\mathrm{Pic}(G)| / |\text{Ш}(G)|$ (Ono for tori; Sansuc, J. reine angew. Math. 327 (1981), in general).

Siegel did not use this language. He compared the number of representations of a form by the lattices of a genus with products of local densities.

**Theorem (Siegel).** Let $S$ and $T$ be positive definite integral symmetric matrices of sizes $m \ge n$, with $S$ the Gram matrix of a lattice $L$ over $\mathbb{Z}$, and $L_1, \dots, L_h$ the classes in its genus. Let $r(L_i, T)$ be the number of $X \in M_{m \times n}(\mathbb{Z})$ with $X^T S_i X = T$. Define
$$\alpha_p(S, T) = 2^{-\delta_{m,n}} \lim_{k \to \infty} p^{k(n(n+1)/2 - mn)} A_{p^k}(S, T),$$
with $A_{p^k}$ the number of solutions modulo $p^k$, also at $p = 2$, and
$$\alpha_\infty(S, T) = \frac{\pi^{n(2m-n+1)/4}}{\prod_{j=0}^{n-1}\Gamma\left(\frac{m-j}{2}\right)} (\det S)^{-n/2} (\det T)^{(m-n-1)/2}.$$
Then
$$\frac{1}{\mathrm{mass}(L)} \sum_{i=1}^h \frac{r(L_i, T)}{|\mathrm{O}(L_i)|} = \varepsilon\, \alpha_\infty(S, T) \prod_p \alpha_p(S, T),$$
with $\varepsilon = 1/2$ if $m = n+1$ or $m = n > 1$, and $\varepsilon = 1$ otherwise.

This is Siegel, Über die analytische Theorie der quadratischen Formen, Ann. of Math. 36 (1935). The archimedean density uses the Lebesgue measure on the entries $t_{ij}$ with $i \le j$. See Kitaoka, Arithmetic of Quadratic Forms, Chapter 6, "Quadratic forms over $\mathbb{Z}$", for a proof with these conventions.

**Corollary (Siegel mass formula).** For $m = n > 1$ and $T = S$,
$$\mathrm{mass}(L) = \frac{2}{\alpha_\infty(S, S) \prod_p \alpha_p(S, S)}.$$

*Proof.* If $X^T S_i X = S$, then $X$ is an isometry from $L$ onto $L_i$. So $r(L_i, S) = |\mathrm{O}(L)|$ if $L_i \cong L$, and $0$ otherwise. The left side of Siegel's formula is $1/\mathrm{mass}(L)$, and $\varepsilon = 1/2$. $\square$

**Example ($E_8$).** Here $m = 8$ and $\det S = 1$. The Gamma values give $\alpha_\infty(S, S) = 16\pi^{16}/135$. For $p$ odd, the unimodular density formula with $k = 4$ and Siegel's factor $2^{-1}$ gives $\alpha_p = (1 - p^{-2})(1 - p^{-4})^2(1 - p^{-6})$. At $p = 2$ the diagonal congruences hold automatically to one extra power of $2$ for an even lattice, and $\alpha_2$ is $2^8$ times the same product. With $\zeta(2)\zeta(4)^2\zeta(6) = \pi^{16}/45927000$ we get
$$\mathrm{mass}(E_8) = \frac{2 \cdot 135}{16 \cdot 2^8 \cdot 45927000} = \frac{1}{696729600} = \frac{1}{|W(E_8)|},$$
the inverse order of the Weyl group, which is $\mathrm{O}(E_8)$. So the genus has one class.

**Example (even unimodular lattices).** For even unimodular positive definite lattices of rank $n = 2k$ with $k \equiv 0 \pmod 4$, the same computation gives
$$\mathrm{mass} = \frac{|B_k|}{2k} \prod_{j=1}^{k-1} \frac{|B_{2j}|}{4j},$$
with $B_j$ the Bernoulli numbers. For $k = 4$ this is $\frac{1}{240} \cdot \frac{1}{24} \cdot \frac{1}{240} \cdot \frac{1}{504} = 1/696729600$.

**Remark (Weil's reformulation).** Weil showed that Siegel's mass formula is equivalent to $\tau(\mathrm{SO}(V)) = 2$, and that the representation formula is an identity between an integral of a theta function over $G(F)\backslash G(\mathbb{A}_F)$ and an Eisenstein series (Weil, Sur la formule de Siegel dans la théorie des groupes classiques, Acta Math. 113 (1965)). This is the [Siegel-Weil formula](/learn/theta/), which the [Siegel-Weil chapter](/proof/siegel-weil/) uses for unitary groups with the local densities of the previous section.

## The mass formula for unitary groups

Let $E/F$ be a CM extension with quadratic character $\eta$, and let $V$ be a positive definite Hermitian space of rank $n$. Then $\mathrm{U}(V)(F_v) \cong \mathrm{U}(n)$ is compact at every infinite place, and the theory of the previous sections applies to the [[unitary group|0R9R0Y1HDK]] $G = \mathrm{U}(V)$.

**Definition (normalized local factor).** For a lattice $L$ on $V$ and a finite place $v$, put
$$\lambda_v(L) = \frac{|\mathfrak{d}L|_v^{-n}}{\alpha_v(L, L) \prod_{i=1}^n L_v(i, \eta_v^i)}.$$
With $d_v(L) = v(\mathfrak{d}L)$ this reads $\lambda_v(L) = \alpha_{\mathrm{std}}(n)\, q_v^{n d_v(L)} / \alpha_v(L, L)$, with $\alpha_{\mathrm{std}}(n) = \prod_{i=1}^n L_v(i, \eta_v^i)^{-1}$, which is the form of the development volumes.

By the theorem on unimodular densities, $\lambda_v(L) = 1$ when $E_v/F_v$ is unramified or split and $L_v$ is unimodular. So $\lambda_v(L) = 1$ for all but finitely many $v$.

**Theorem (unitary mass formula).** There is a constant $c(V) > 0$, depending on $V$ but not on $L$, with
$$\mathrm{mass}(L) = c(V) \prod_{i=1}^n L(i, \eta^i) \prod_{v < \infty} \lambda_v(L)$$
for every lattice $L$ on $V$. Here $L(s, \eta^i)$ is $L(s, \eta)$ for $i$ odd and the [[Dedekind zeta function|KXS5DQDFYD]] $\zeta_F(s)$ for $i$ even.

*Proof.* Let $\omega$ be an invariant top form on $\mathrm{U}(V)$ over $F$, and let $\mu$ be the Tamagawa measure with the convergence factors $L_v(1, \eta_v)$. By the proposition on mass as a volume and $\tau(\mathrm{U}(V)) = 2$,
$$\mathrm{mass}(L) = \frac{2\, |d_F|^{n^2/2}\, L(1, \eta)}{\prod_{v \mid \infty} |\omega|_v(\mathrm{U}(n)) \prod_{v < \infty} L_v(1, \eta_v)\, |\omega|_v(\mathrm{U}(L_v))}.$$
By the proposition on volume and local density, $|\omega|_v(\mathrm{U}(L_v)) = c_v\, \alpha_v(L, L)\, |\mathfrak{d}L|_v^n$, and by the definition of $\lambda_v$,
$$L_v(1, \eta_v)\, |\omega|_v(\mathrm{U}(L_v)) = c_v\, \lambda_v(L)^{-1} \prod_{i=2}^n L_v(i, \eta_v^i)^{-1}.$$
The constants $c_v$ do not depend on $L$, and $c_v = 1$ for almost all $v$ if $\omega$ has good reduction for one fixed lattice. The product over $v$ of $\prod_{i=2}^n L_v(i, \eta_v^i)$ converges absolutely to $\prod_{i=2}^n L(i, \eta^i)$. Collecting terms gives the formula with $c(V) = 2|d_F|^{n^2/2} / (\prod_{v \mid \infty}|\omega|_v(\mathrm{U}(n)) \prod_{v<\infty} c_v)$. $\square$

The constant $c(V)$ is explicit. The archimedean volumes are those of the compact group $\mathrm{U}(n)$, computed by Macdonald (The volume of a compact Lie group, Invent. Math. 56 (1980)), and the $c_v$ at the finitely many bad places compare $\omega$ with a lattice there. Gan, Hanke and Yu (On an exact mass formula of Shimura, Duke Math. J. 107 (2001)) use Gross's motive of a reductive group (Gross, On the motive of a reductive group, Invent. Math. 130 (1997)) and the functional equations to write the mass as a power of $2$ times $\prod_{i=1}^n |L(1-i, \eta^i)|$ times the local factors $\lambda_v(L)$ at the bad places, and they compute $\lambda_v$ for maximal lattices. The values $L(1-i, \eta^i)$ are rational by the theorem of Siegel and Klingen, so the mass is a rational number. The first form of the Hermitian Siegel theorem is due to Braun (Zur Theorie der hermitischen Formen, Abh. Math. Sem. Hamburg 14 (1941)).

**Corollary (everywhere unramified case).** Let $E/F$ be unramified at all finite places and let $L$ be unimodular at all finite places, for example $L = \mathcal{O}_E^n$ with the standard form. Then
$$\mathrm{mass}(L) = c(V) \prod_{i=1}^n L(i, \eta^i).$$

This is the case of the hypothesis `IsCMUnram` in the proof, and of the standard lattices in `SiegelMassRatioCM`.

**Remark (rank one).** For $n = 1$ the group is the torus $E^1$, and the formula says that $h^1(K_L)/|\mu_E|$ is $L(1, \eta)$ times elementary factors. This is the analytic class number formula for $E/F$ in Ono's form for the norm one torus.

The development volumes do not use Tamagawa numbers for the constant. They use the Siegel induction on the rank, which gives the ratio of consecutive masses directly. We describe it in the everywhere unramified case.

**Proposition (Siegel's induction).** Let $E/F$ be unramified at all finite places, and for each $m$ let $L^{(m)}$ be a lattice that is unimodular at all finite places on a positive definite space $V_m = V_{m-1} \perp \langle 1 \rangle$. Assume Siegel's representation theorem for Hermitian lattices and $a = 1$: the weighted average of $r(L_i, 1)$ over the genus of $L^{(m)}$ is $\alpha_\infty \prod_{v < \infty} \alpha_v(L^{(m)}, 1)$, with $\alpha_\infty$ an explicit archimedean density. Then
$$\frac{\mathrm{mass}(L^{(m)})}{\mathrm{mass}(L^{(m-1)})} = \frac{L(m, \eta^m)}{\alpha_\infty}.$$

*Proof.* Let $L'$ be in the genus of $L^{(m)}$ and $x \in L'$ with $h(x, x) = 1$. Then $\mathcal{O}_E x$ is unimodular, and the splitting lemma at each place gives $L' = \mathcal{O}_E x \perp L'_x$ with $L'_x = x^\perp \cap L'$ unimodular at all finite places. By the local classification, $L'_x$ lies in the genus of $L^{(m-1)}$, and $L'$ is determined by $L'_x$. The stabilizer of $x$ in $\mathrm{U}(L')$ is $\mathrm{U}(L'_x)$. Counting pairs $(L', x)$ up to isometry in two ways gives
$$\sum_{[L']} \frac{r(L', 1)}{|\mathrm{U}(L')|} = \sum_{[M]} \frac{1}{|\mathrm{U}(M)|} = \mathrm{mass}(L^{(m-1)}),$$
the second sum over the classes in the genus of $L^{(m-1)}$. Divide by $\mathrm{mass}(L^{(m)})$ and use the assumed theorem. By the theorem on unimodular densities, $\alpha_v(L^{(m)}, 1) = 1 - \eta_v(\varpi)^m q_v^{-m} = L_v(m, \eta_v^m)^{-1}$ at every finite place, and the product over $v$ is $L(m, \eta^m)^{-1}$. $\square$

At an infinite place, the volume of $\{x \in \mathbb{C}^m : |x|^2 \le t\}$ is $\pi^m t^m / m!$, so the density of the value $1$ for the standard form is $\pi^m/(m-1)!$ for the Lebesgue measure on $\mathbb{R}^{2m}$. The constant $\alpha_\infty$ is the product of these factors over the $d$ infinite places, times a power of $|d_E|$ and $|d_F|$ from the covolume formula of the second section. The proof of the representation theorem counts the vectors of $L'$ in balls of growing radius, with the covolume formula as the main term. The development counts all vectors of bounded norm and sorts them by the value $n = h(x, x)$, so it needs the representation numbers of all totally positive $n$ and a singular series. Its step constant is $\rho(m) = ((m-1)!/\pi^m)^d$ times a power of the root discriminant of $E$ times $L_F(m, \eta) = \prod_{\mathfrak{p}} (1 - \eta(\mathfrak{p})^m N\mathfrak{p}^{-m})^{-1}$, which is $L(m, \eta^m)$ in the unramified case. Iterating from $m = 1$ recovers the product $\prod_{i=1}^n L(i, \eta^i)$ of the theorem.

In the proof, `GenusMassAt D 2` in [HypsAlt](/step/hyps-alt-def/) is the mass of each positive definite Hermitian space of rank $2$ in the construction, `MassRatioUnderVolume` compares masses under a change of volume normalization, and `SiegelMassRatioCM` in the [unitary hypotheses chapter](/proof/unitary-hypotheses/) is the ratio of the masses of the standard lattices of ranks $M$ and $M-1$ for an unramified CM field and $M \ge 3$. The [CM divisibility chapter](/proof/cm-divisibility/) takes `SiegelMassRatioCM` as an input to `baseCond_KPx`. The masses of self-dual lattices with a given trace and the covolumes of integral unipotent radicals in the development use the same local densities and the same covolume formula.

## Notes and references

The structure theory of lattices over Dedekind domains, the local theory of quadratic lattices and the global theory of genera and spinor genera are in O'Meara, Introduction to Quadratic Forms, Chapter VIII, "Quadratic Forms over Dedekind Domains", Chapter IX, "Integral Theory of Quadratic Forms over Local Fields", and Chapter X, "Integral Theory of Quadratic Forms over Global Fields". The local classification of Hermitian lattices, in all cases including the dyadic ones, is Jacobowitz, Hermitian forms over local fields, Amer. J. Math. 84 (1962). Hermitian spaces over local and global fields and Witt's theorem for them are in Scharlau, Quadratic and Hermitian Forms, Chapter 7. Shimura, Arithmetic of unitary groups, Ann. of Math. 79 (1964), treats genera of Hermitian lattices adelically.

The spinor genus and the theorem that it equals the class in the indefinite case are due to Eichler (Quadratische Formen und orthogonale Gruppen, 1952) and Kneser (Klassenzahlen indefiniter quadratischer Formen in drei oder mehr Veränderlichen, Arch. Math. 7 (1956)). The classification of indefinite unimodular $\mathbb{Z}$-lattices is in Serre, A Course in Arithmetic, Chapter V. The finiteness of class numbers is Borel, Some finiteness properties of adele groups over number fields, Publ. Math. IHES 16 (1963), with an exposition in Platonov and Rapinchuk, Algebraic Groups and Number Theory, Chapters 5 and 8. The tables of unimodular lattices and their masses are in Conway and Sloane, Sphere Packings, Lattices and Groups, Chapter 16.

Siegel's theorem is in Siegel, Über die analytische Theorie der quadratischen Formen, Ann. of Math. 36 (1935), with a modern proof in Kitaoka, Arithmetic of Quadratic Forms, Chapter 6. Weil's interpretation through Tamagawa numbers is in Weil, Adeles and Algebraic Groups, and in Weil, Sur la formule de Siegel dans la théorie des groupes classiques, Acta Math. 113 (1965). The general results on Tamagawa numbers are Kottwitz, Tamagawa numbers, Ann. of Math. 127 (1988), and Sansuc, Groupe de Brauer et arithmétique des groupes algébriques linéaires sur un corps de nombres, J. reine angew. Math. 327 (1981).

For unitary groups, the Hermitian Siegel theorem is Braun, Zur Theorie der hermitischen Formen, Abh. Math. Sem. Hamburg 14 (1941). The exact mass formula with the local factors $\lambda_v$ is Gan, Hanke and Yu, On an exact mass formula of Shimura, Duke Math. J. 107 (2001), which uses Gross, On the motive of a reductive group, Invent. Math. 130 (1997), and the local densities of Gan and Yu, Group schemes and local densities, Duke Math. J. 105 (2000). The volume of the compact unitary group is in Macdonald, The volume of a compact Lie group, Invent. Math. 56 (1980).
