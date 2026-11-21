[[Arakelov geometry|YXWGV80Z2V]] treats a scheme over $\mathbb{Z}$ together with a metric on its complex points, the archimedean place. [The Weil bound](/proof/weil-bound/) turns an intersection number of Hodge line bundles on unitary Shimura varieties into many small sections, and bounds the errors by slopes.

## Hermitian line bundles

Let $M$ be a complex manifold and $L$ a holomorphic line bundle on $M$.

**Definition.** A *[[Hermitian metric|Q6X6W2N29G]]* on $L$ is a family of Hermitian norms $\|\cdot\|$ on the fibres $L_x$ that depends smoothly on $x$. For compact $M$ the *sup norm* of a section is $\|s\|_{\sup} = \sup_{x \in M} \|s(x)\|$.

Put $d^c = \frac{1}{4\pi i}(\partial - \bar\partial)$, so that $dd^c = \frac{i}{2\pi}\partial\bar\partial$.

**Definition.** The *Chern form* of $\overline{L} = (L, \|\cdot\|)$ is the real $(1,1)$-form $c_1(\overline{L}) = -dd^c \log \|e\|^2$ for any local nonvanishing holomorphic section $e$. It does not depend on $e$, it is closed, and its class in $H^2(M, \mathbb{R})$ is the [[Chern class|PAD37GKDPD]] $c_1(L)$.

**Example.** The *Fubini-Study metric* on $\mathcal{O}(1)$ over $\mathbb{P}^n(\mathbb{C})$ gives a linear form $s$ the norm $\|s\|(x) = |s(x)|/(\sum_i |x_i|^2)^{1/2}$. Its Chern form is the Fubini-Study Kähler form, and $\int_{\mathbb{P}^n} c_1^n = 1$.

**Definition.** The metric is *semipositive* if $c_1(\overline{L})$ is a semipositive $(1,1)$-form, that is, if each $-\log\|e\|^2$ is [[plurisubharmonic|FF2P7ER3QT]], and *positive* if $c_1(\overline{L})$ is positive definite at each point.

If $M$ is projective of dimension $D$, then $\int_M c_1(\overline{L})^D = (L^D)$ for each smooth metric (`ChernDegree`, inside the input `ArDegree` of [the literature chapter](/proof/literature/)).

**Theorem (Poincaré-Lelong formula).** Let $s$ be a nonzero meromorphic section of $L$. Then, as currents on $M$,

$$dd^c \log\|s\|^2 = \delta_{\operatorname{div} s} - c_1(\overline{L}),$$

where $\delta_{\operatorname{div} s}$ is the current of integration over the divisor of $s$, with multiplicities.

With Stokes' theorem, the [[Poincaré-Lelong formula|B2YBWQQMHA]] turns integrals of $\log\|s\|$ against closed forms into integrals over $\operatorname{div} s$. An integrated form, `PoincareLelongInv`, is an input of [the Weil bound](/proof/weil-bound/).

## Arithmetic varieties and intersection numbers

**Definition.** An *arithmetic variety* of dimension $D + 1$ is an integral scheme $X$, flat and projective over $\mathrm{Spec}\,\mathbb{Z}$, with generic fibre $X_{\mathbb{Q}}$ of dimension $D$. Complex conjugation $F_\infty$ acts on $X(\mathbb{C})$. A *Hermitian line bundle* $\overline{L}$ on $X$ is a line bundle $L$ with a smooth $F_\infty$-invariant Hermitian metric on $L_{\mathbb{C}}$ over $X(\mathbb{C})$.

**Definition (arithmetic degree).** Let $K$ be a number field and $\overline{L}$ a Hermitian line bundle on $\mathrm{Spec}\,\mathcal{O}_K$, that is, a projective $\mathcal{O}_K$-module of rank $1$ with a norm $\|\cdot\|_\sigma$ at each embedding $\sigma : K \to \mathbb{C}$. Its *arithmetic degree* is

$$\widehat{\deg}(\overline{L}) = \log \#(L/\mathcal{O}_K s) - \sum_{\sigma} \log\|s\|_\sigma$$

for any nonzero $s \in L$, independent of $s$ by the product formula.

An *arithmetic curve* in $X$ is an integral closed subscheme of dimension $1$ that is flat over $\mathbb{Z}$. It is the closure $C_x$ of a closed point $x$ of $X_{\mathbb{Q}}$, and $\widehat{\deg}(\overline{L}|_{C_x})$ is the arithmetic degree on the normalization of $C_x$.

For $X$ regular, Gillet and Soulé defined an arithmetic Chow ring $\widehat{\mathrm{CH}}^*(X)$ with first Chern classes $\widehat{c}_1(\overline{L})$ and a degree map $\widehat{\deg} : \widehat{\mathrm{CH}}^{D+1}(X) \to \mathbb{R}$ (Gillet and Soulé, 1990). The *arithmetic intersection number* of $\overline{L}_1, \dots, \overline{L}_{D+1}$ is $\overline{L}_1 \cdots \overline{L}_{D+1} = \widehat{\deg}(\widehat{c}_1(\overline{L}_1) \cdots \widehat{c}_1(\overline{L}_{D+1}))$, and $\overline{L}^{D+1}$ is the self-intersection.

**Proposition (inductive formula).** Let $s$ be a section of $L_{D+1}$ whose divisor meets the relevant subvarieties properly. Then

$$\overline{L}_1 \cdots \overline{L}_{D+1} \cdot X = \overline{L}_1 \cdots \overline{L}_D \cdot \operatorname{div}(s) - \int_{X(\mathbb{C})} \log\|s\|\; c_1(\overline{L}_1) \wedge \cdots \wedge c_1(\overline{L}_D),$$

where a component of $\operatorname{div}(s)$ in the fibre over a prime $p$ contributes its geometric intersection number times $\log p$ (Bost, Gillet and Soulé, 1994).

By induction down to arithmetic curves it computes all intersection numbers, and it defines them when $X$ is not regular (Zhang, 1995).

**Theorem (projection formula).** Let $f : Y \to X$ be a generically finite morphism of arithmetic varieties of the same dimension. Then $f^*\overline{L}_1 \cdots f^*\overline{L}_{D+1} = \deg(f)\, \overline{L}_1 \cdots \overline{L}_{D+1}$.

`ArDegree` contains the birational case, and the Lean code of [the Weil bound](/proof/weil-bound/) takes the numbers from an abstract `IntersectionSystem` with axioms rather than from Gillet and Soulé's construction.

## Heights

**Definition.** Let $K$ be a number field. The *[[height|F1FF505PWH]]* of $P = (x_0 : \cdots : x_n) \in \mathbb{P}^n(K)$ is

$$H(P) = \prod_{v} \max_i |x_i|_v^{d_v/[K:\mathbb{Q}]},$$

over all places $v$ of $K$, where $|\cdot|_v$ extends the usual absolute value of $\mathbb{Q}_p$ or $\mathbb{R}$ and $d_v = [K_v : \mathbb{Q}_v]$. It does not depend on the coordinates or on $K$. The *logarithmic height* is $h(P) = \log H(P)$, and a map $\varphi : X \to \mathbb{P}^n$ gives the height function $h \circ \varphi$.

**Theorem (Northcott).** For each $B$ and $d$ there are only finitely many $P \in \mathbb{P}^n(\overline{\mathbb{Q}})$ with $h(P) \leq B$ and $[\mathbb{Q}(P) : \mathbb{Q}] \leq d$.

**Definition.** Let $\overline{L}$ be a Hermitian line bundle on an arithmetic variety $X$. The *height* of $x \in X(\overline{\mathbb{Q}})$ is $h_{\overline{L}}(x) = \widehat{\deg}(\overline{L}|_{C_x})/[\mathbb{Q}(x) : \mathbb{Q}]$. The *height of a cycle* $Z \subset X$, integral of dimension $r + 1$, is $h_{\overline{L}}(Z) = \overline{L}^{r+1} \cdot Z$, and its *normalized height* is $h_{\overline{L}}(Z)/((r+1)\deg_L(Z_{\mathbb{Q}}))$.

**Example.** For $\mathcal{O}(1)$ on $\mathbb{P}^n_{\mathbb{Z}}$ with the Fubini-Study metric, $0 \leq h_{\overline{L}}(P) - h(P) \leq \frac12 \log(n+1)$. Heights of cycles enter [the published arithmetic results](/step/published-results-arithmetic/) as `CycleHeights`.

**Definition (successive minima).** For $1 \leq i \leq D + 1$ let

$$e_i(\overline{L}) = \sup_{Y} \inf_{x \in X(\overline{\mathbb{Q}}) \setminus Y} h_{\overline{L}}(x),$$

where $Y$ runs over the closed subsets of $X_{\mathbb{Q}}$ of codimension $i$. So $e_1$ is the *essential minimum* and $e_{D+1}$ is the infimum of all heights.

**Theorem (Zhang's successive minima).** Let $\overline{L}$ be a Hermitian line bundle on $X$ with $L_{\mathbb{Q}}$ ample, $L$ nef on each closed fibre and $c_1(\overline{L}) \geq 0$. Then

$$e_1(\overline{L}) \geq \frac{\overline{L}^{D+1}}{(D+1)\deg_L(X_{\mathbb{Q}})} \geq \frac{1}{D+1} \sum_{i=1}^{D+1} e_i(\overline{L})$$

(Zhang, 1995).

[The Weil bound](/proof/weil-bound/) derives two bounds of this shape: a lower bound for $\overline{A}^{D+1}$ from heights of all arithmetic curves, and an upper bound from heights of a Zariski dense set of curves, which yields the Siegel lemma below.

## Arithmetic volume and bigness

Let $\overline{L}$ be a Hermitian line bundle on an arithmetic variety $X$ of dimension $D + 1$.

**Definition.** The finite set of *small sections* is $\widehat{H}^0(X, \overline{L}) = \{s \in H^0(X, L) : \|s\|_{\sup} \leq 1\}$. The *arithmetic volume* is

$$\widehat{\mathrm{vol}}(\overline{L}) = \limsup_{n \to \infty} \frac{\log \#\widehat{H}^0(X, \overline{L}^{\otimes n})}{n^{D+1}/(D+1)!}.$$

$\overline{L}$ is *big* if $\widehat{\mathrm{vol}}(\overline{L}) > 0$, and *nef* if $c_1(\overline{L}) \geq 0$ and $\widehat{\deg}(\overline{L}|_C) \geq 0$ for each integral closed subscheme $C$ of dimension $1$.

**Theorem (arithmetic Hilbert-Samuel).** Let $X$ have smooth generic fibre, $L$ ample and $c_1(\overline{L})$ positive. For a lattice $M$ with a norm on $M_{\mathbb{R}}$ put $\widehat{\chi}(M) = \log(\operatorname{vol}(B)/\operatorname{covol}(M))$, where $B$ is the unit ball. Then

$$\widehat{\chi}\big(H^0(X, L^{\otimes n}), \|\cdot\|_{\sup}\big) = \frac{\overline{L}^{D+1}}{(D+1)!}\, n^{D+1} + o(n^{D+1})$$

(Gillet and Soulé, 1992; Abbes and Bouche, 1995; Zhang, 1995). If $\overline{L}$ is also nef, then $\widehat{\mathrm{vol}}(\overline{L}) = \overline{L}^{D+1}$ by the theorem of Moriwaki below. The proof needs only $\widehat{\mathrm{vol}}(\overline{A}) \leq \overline{A}^{D+1}$ for nef $\overline{A}$ (`ArithmeticVolumeNef` in `HSUse`).

**Theorem (Moriwaki and Yuan).** If $\overline{L}$ and $\overline{M}$ are nef, then $\widehat{\mathrm{vol}}(\overline{L} \otimes \overline{M}^{-1}) \geq \overline{L}^{D+1} - (D+1)\, \overline{L}^D \cdot \overline{M}$ (Yuan, 2008). The volume is continuous, and $\widehat{\mathrm{vol}}(\overline{L}) = \overline{L}^{D+1}$ for nef $\overline{L}$ (Moriwaki, 2009).

So a nef $\overline{L}$ with $\overline{L}^{D+1} > 0$ is big. The proof states only $\overline{A}^{D+1} \leq \widehat{\mathrm{vol}}(\overline{A})$ for semipositive $\overline{A}$ nef on the fibres and on the generic fibre, as `MoriwakiBigStatement`, and uses it to count small cusp sections.

**Theorem (arithmetic Kleiman criterion).** In the form `ArithKleiman` of `HSUse`: a nef Hermitian line bundle $\overline{A}$ with nonnegative heights on all arithmetic curves has $\overline{A}^{D+1} \geq 0$.

## Hermitian lattices and slopes

**Definition.** A *Euclidean lattice* is a free $\mathbb{Z}$-module $E$ of finite rank with a Euclidean norm on $E_{\mathbb{R}}$. Its *degree* is $\widehat{\deg}(\overline{E}) = -\log \operatorname{covol}(E)$.

**Definition.** Let $K$ be a number field. A *Hermitian lattice* over $\mathcal{O}_K$ is a finitely generated projective $\mathcal{O}_K$-module $E$ with a Hermitian norm $\|\cdot\|_\sigma$ on $E \otimes_\sigma \mathbb{C}$ for each $\sigma : K \to \mathbb{C}$, with $\|\cdot\|_{\bar\sigma}$ the conjugate of $\|\cdot\|_\sigma$. Its *degree* $\widehat{\deg}(\overline{E})$ is the arithmetic degree of $\det E$ with the induced metric. The *normalized degree* is $\widehat{\deg}_n(\overline{E}) = \widehat{\deg}(\overline{E})/[K : \mathbb{Q}]$, and the *slope* is $\mu(\overline{E}) = \widehat{\deg}_n(\overline{E})/\operatorname{rank} E$. Both are unchanged by extension of scalars to a larger number field.

**Definition.** The *maximal slope* $\mu_{\max}(\overline{E})$ is the supremum, which is attained, of $\mu(\overline{F})$ over the nonzero submodules $F \subset E$ with the restricted norms.

**Example.** By Minkowski's theorem in the [[geometry of numbers|AAATH70CY1]], a Euclidean lattice of rank $n$ has a vector $v \neq 0$ with $\log\|v\| \leq \frac12 \log n - \mu(\overline{E})$, that is, a line $\mathbb{Z}v$ of degree at least $\mu(\overline{E}) - \frac12 \log n$.

**Theorem (absolute Siegel lemma).** For each number field $K$, each Hermitian lattice $\overline{F}$ of rank $i \geq 1$ over $\mathcal{O}_K$ and each $\varepsilon > 0$, there are a finite extension $K'$ and a vector $v \neq 0$ of $F \otimes \mathcal{O}_{K'}$ with

$$\mu(\overline{F}) - \tfrac12 \log i - \varepsilon \leq \widehat{\deg}_{K'}(v),$$

where $\widehat{\deg}_{K'}(v)$ is the normalized degree of the line that $v$ spans (Zhang, 1995; Roy and Thunder, 1996).

This is `LineOfLargeDegree` in [the Weil bound](/proof/weil-bound/), which the code derives from Zhang's upper bound above.

**Theorem (Bost slope inequality).** Let $\overline{E}, \overline{F}$ be Hermitian lattices over $\mathcal{O}_K$ and $\varphi : E \to F$ an injective $\mathcal{O}_K$-linear map with $\|\varphi(x)\|_\sigma \leq C\|x\|_\sigma$ at each $\sigma$. Then $\mu(\overline{E}) \leq \mu_{\max}(\overline{F}) + \log C$ (Bost, 1996).

The code proves it, but [the Weil bound](/proof/weil-bound/) bounds slopes by short vectors from the Siegel lemma instead.

## The Hodge bundle and Zarhin's trick

Let $A \to S$ be an abelian or semi-abelian scheme of relative dimension $g$ with zero section $e$, as in [the elliptic curves chapter](/learn/elliptic-curves/).

**Definition.** The *Hodge bundle* is $\omega_{A/S} = e^*\Omega^1_{A/S}$, a vector bundle of rank $g$ on $S$, dual to $\operatorname{Lie}(A)$. The *Hodge line bundle* is $\det \omega_{A/S}$. At a complex point $s$, the *Hodge metric* on $\det\omega$ is $\|\alpha\|^2 = \frac{i^{g^2}}{2^g} \int_{A_s(\mathbb{C})} \alpha \wedge \bar\alpha$. The proof also puts a Hodge metric on $\operatorname{Lie}(A)$.

For an abelian variety over a number field with semistable reduction, the *Faltings height* is the normalized arithmetic degree of the Hodge line bundle of the Néron model with this metric.

**Theorem (semipositivity of the Hodge bundle).** The Hodge metric on $\det\omega$ over a complex base has semipositive Chern form (Griffiths). Let $C$ be a smooth projective geometrically connected curve over a field of characteristic $0$ and $G$ a semi-abelian scheme over $C$. Then every vector bundle $W$ that injects into $\operatorname{Lie}(G)$ has $\deg \det W \leq 0$ (Moret-Bailly, 1985; Faltings and Chai, 1990).

The second statement, `SemiAbelianLieSeminegative`, is the dual form of the nefness of the Hodge bundle. Its arithmetic analogue in [the Weil bound](/proof/weil-bound/), `SlopeBoundSt`, bounds the maximal slope of the Lie algebra of a semi-abelian scheme, with the Hodge metric, by $C \log(2 + \operatorname{rank} + \max(-\widehat{\deg}_n, 0))$.

**Theorem (Zarhin's trick).** For each abelian variety $A$ over a field, $(A \times A^\vee)^4$ has a principal polarization (Zarhin, 1974).

[The Weil bound](/proof/weil-bound/) uses it as `ZarhinStatement`: over the valuation ring of an algebraically closed valued field, a polarizable abelian scheme is a retract of a principally polarized one.

## Further reading

- C. Soulé, D. Abramovich, J.-F. Burnol and J. Kramer, *Lectures on Arakelov Geometry*, Chapters II to IV.
- J.-B. Bost, H. Gillet and C. Soulé, *Heights of projective varieties and positive Green forms*, J. Amer. Math. Soc. 7 (1994), Sections 2 and 3.
- E. Bombieri and W. Gubler, *Heights in Diophantine Geometry*, Chapters 1 and 2.
- J.-B. Bost, *Périodes et isogénies des variétés abéliennes sur les corps de nombres*, Séminaire Bourbaki 795, Astérisque 237 (1996), Sections 4 and 5.
- G. Faltings and C.-L. Chai, *Degeneration of Abelian Varieties*, Chapters IV and V.
