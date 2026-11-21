Algebraic geometry studies the solution sets of polynomial equations as schemes, and complex geometry studies them as complex manifolds. The proof needs both. The Galois row builds Galois representations from the cohomology of towers of Shimura varieties, with a holomorphic Lefschetz formula, Kodaira-Spencer maps and proper base change. The Weil bound counts small sections of line bundles on integral models of unitary Shimura varieties, with vanishing theorems, resolution of singularities and toroidal compactifications.

## Schemes and varieties

**Definition.** A *[[scheme|5A35TYZD02]]* is a locally ringed space that is locally isomorphic to $\mathrm{Spec}\, R$ for commutative rings $R$. A scheme $X$ over $S$ is a morphism $X \to S$. A *variety* over a field $k$ is an integral separated scheme of finite type over $k$.

The underlying space of $\mathrm{Spec}\, R$ is the set of prime ideals with the *Zariski topology*, whose closed sets are the sets $V(I)$ of primes that contain an ideal $I$.

**Definition.** A morphism $f : X \to S$ is *[[smooth|EXKGG9X6J0]]* of relative dimension $d$ if it is locally of finite presentation and flat, and its fibres are regular of pure dimension $d$ after each extension of the field. It is *[[étale|H84VHC8PX2]]* if it is smooth of relative dimension $0$. It is *[[proper|9537RKBZPP]]* if it is separated, of finite type and universally closed. It is *[[projective|Z5G47MQ99B]]* if it factors as a closed immersion into some $\mathbb{P}^N_S$ followed by the projection.

A *smooth projective scheme* over $S$ is an $X \to S$ that is smooth and projective. Over $\mathbb{C}$, its complex points $X(\mathbb{C})$ form a compact complex manifold (Serre's GAGA compares the two kinds of geometry).

**Definition.** A *product of projective spaces* over $S$ is $\mathbb{P}^{n_1}_S \times_S \cdots \times_S \mathbb{P}^{n_r}_S$. Its line bundles are $\mathcal{O}(a_1, \dots, a_r)$, the tensor products of the pullbacks of $\mathcal{O}(a_i)$, and $(a_1, \dots, a_r)$ is the *multidegree*. The Segre map embeds it in $\mathbb{P}^N_S$ with $N + 1 = \prod (n_i + 1)$.

**Definition.** A subset of a scheme is *Zariski dense* if its closure in the Zariski topology is the whole space.

**Example.** The set $\mathbb{Z}^n$ is Zariski dense in $\mathbb{A}^n_{\mathbb{C}}$, since a polynomial that vanishes on $\mathbb{Z}^n$ is $0$.

The arithmetic statements `NefRR`, `MoriwakiBigStatement` and `HSUse` of [the Weil bound](/proof/weil-bound/) are about subvarieties of a product of projective spaces, and Zhang's upper bound there asks for a Zariski dense set of curves.

## Line bundles and divisors

Let $X$ be a normal projective variety of dimension $n$ over a field.

**Definition.** A *[[Cartier divisor|FHV05ZK99F]]* is a global section of the sheaf $\mathcal{K}^\times/\mathcal{O}^\times$, where $\mathcal{K}$ is the sheaf of rational functions. It gives a line bundle $\mathcal{O}(D)$. A *Weil divisor* is a finite sum $\sum a_i D_i$ of prime divisors. A *$\mathbb{Q}$-divisor* is such a sum with $a_i \in \mathbb{Q}$. It is *$\mathbb{Q}$-Cartier* if some multiple $mD$ is Cartier.

The intersection number $(L_1 \cdots L_n)$ of $n$ line bundles is defined, and so is $(L^{\dim Y} \cdot Y)$ for a subvariety $Y$. Two divisors are *numerically equivalent*, $D \equiv D'$, if $(D \cdot C) = (D' \cdot C)$ for each curve $C$.

**Definition.** A line bundle $L$ is *[[ample|RRK8P6TXG2]]* if $L^{\otimes m}$ is very ample for some $m > 0$, that is, its sections give a closed immersion into a projective space. It is *[[nef|RZ66X0NAM5]]* if $(L \cdot C) \geq 0$ for each curve $C \subset X$. It is *big* if $h^0(X, L^{\otimes m}) \geq c\, m^n$ for some $c > 0$ and all large divisible $m$.

**Example.** On $\mathbb{P}^{n_1} \times \cdots \times \mathbb{P}^{n_r}$ the bundle $\mathcal{O}(a_1, \dots, a_r)$ is ample when all $a_i > 0$, and nef when all $a_i \geq 0$.

**Theorem (Kleiman).** A nef line bundle $L$ has $(L^{\dim Y} \cdot Y) \geq 0$ for each subvariety $Y$, and it is a limit of ample $\mathbb{Q}$-divisors in the space of numerical classes.

A nef line bundle $L$ is big exactly when $(L^n) > 0$ (Lazarsfeld, Theorem 2.2.16).

**Definition.** A reduced divisor $D = \sum D_i$ on a smooth variety has *simple normal crossings* (snc) if each $D_i$ is smooth and, near each point, $D$ is given in local coordinates by $z_1 \cdots z_k = 0$.

**Definition.** Let $X$ be normal and $\Delta$ an effective $\mathbb{Q}$-divisor with $K_X + \Delta$ $\mathbb{Q}$-Cartier, where $K_X$ is the [[canonical divisor|W05VYY4HBR]]. A *log resolution* is a proper birational $\mu : Y \to X$ with $Y$ smooth and the exceptional locus plus $\mu^{-1}(\Delta)$ an snc divisor. Write $K_Y + \Delta_Y = \mu^*(K_X + \Delta)$. The pair $(X, \Delta)$ is *klt* (Kawamata log terminal) if all coefficients of $\Delta_Y$ are $< 1$ for one, equivalently each, log resolution.

**Definition.** For $X$ smooth and $D$ an effective $\mathbb{Q}$-divisor with a log resolution $\mu$, the *[[multiplier ideal|BKM0TQSCD9]]* is $\mathcal{J}(D) = \mu_* \mathcal{O}_Y(K_{Y/X} - \lfloor \mu^* D \rfloor)$. The pair $(X, D)$ is klt exactly when $\mathcal{J}(D) = \mathcal{O}_X$.

The point separation input of [EveryCharacter from the literature](/step/every-character-of-literature/) uses a klt boundary and a nef and big $\mathbb{Q}$-divisor.

## Vanishing theorems and resolution

### Riemann-Roch and vanishing

**Theorem (asymptotic Riemann-Roch).** Let $L$ be a nef line bundle on a projective variety $X$ of dimension $n$. Then $h^0(X, L^{\otimes m}) = \frac{(L^n)}{n!} m^n + O(m^{n-1})$, and $h^i(X, L^{\otimes m}) = O(m^{n-i})$ for $i > 0$ (Lazarsfeld, Corollary 1.4.41).

It follows from [[Hirzebruch-Riemann-Roch|G3X02FKQCR]] for $\chi(X, L^{\otimes m})$, a polynomial of degree $n$ in $m$ with leading coefficient $(L^n)/n!$. The proof states it as `NefRR`: for a variety $X$ of dimension $D$ in a product of projective spaces and a multidegree $a$ that is nef on the generic fibre, $D!\, \dim H^0(X, \mathcal{O}(\tau a))/\tau^D$ tends to the degree of $a$ on $X$. It is one of the eight inputs of `deep_slim_use` in [the Weil bound](/proof/weil-bound/).

**Theorem (Kodaira vanishing).** Let $X$ be a smooth projective variety over a field of characteristic $0$ and $L$ an ample line bundle. Then $H^i(X, \omega_X \otimes L) = 0$ for $i > 0$.

**Theorem (Kawamata-Viehweg vanishing).** Let $X$ be a smooth projective variety of dimension $n$ over a field of characteristic $0$ and $L$ a nef line bundle with $(L^n) > 0$. Then $H^i(X, \omega_X \otimes L) = 0$ for $i > 0$ (Kawamata, 1982; Viehweg, 1982).

**Theorem (Nadel vanishing).** Let $X$ be a smooth complex projective variety, $D$ an effective $\mathbb{Q}$-divisor and $L$ a line bundle with $L - D$ nef and big. Then $H^i(X, \omega_X \otimes L \otimes \mathcal{J}(D)) = 0$ for $i > 0$ (Nadel, 1990).

With $D = 0$, Nadel vanishing is [[Kawamata-Viehweg vanishing|TAMCTW7SA0]] over $\mathbb{C}$. The statements `KawamataViehweg` and `NadelVanishingAndNonKltDivisor` are fields of [the bundle of published arithmetic results](/step/published-results-arithmetic/).

### Point separation

**Theorem (Angehrn-Siu).** Let $X$ be a smooth complex projective variety of dimension $n$, $L$ an ample line bundle and $x \in X$. If $(L^d \cdot Z) > (\tfrac12 n(n+1))^d$ for each subvariety $Z \ni x$ of dimension $d$, $1 \leq d \leq n$, then $\omega_X \otimes L$ has a section that does not vanish at $x$ (Angehrn and Siu, 1995).

The proof uses the point separation form `PointSeparationPair`. Let $X$ be a normal projective complex variety of dimension $n$ with a klt boundary $\Delta$, and $M$ a line bundle numerically equal to $G/m + N_0/r$, with $G$ a log canonical multiple and $N_0$ nef and big. If every subvariety of dimension $e$ through $x_1$ or $x_2$ has $N_0$-degree large compared with $c_e^e$, and $\sum_e 2^{1/e} e/c_e \leq 1$, then some section of $M$ vanishes at exactly one of the two distinct points $x_1, x_2$. It is an input of [EveryCharacter from the literature](/step/every-character-of-literature/).

### Resolution of singularities

**Theorem (resolution of singularities).** Let $X$ be a reduced scheme of finite type, quasi-compact and separated over a field of characteristic $0$. Then a finite sequence of [[blow-ups|4SFS82N88K]] gives a smooth $X' \to X$. It is an isomorphism over the smooth locus of $X$, and the reduced preimage of the singular locus is an snc divisor (Hironaka, 1964).

**Theorem (principalisation).** Let $X$ be smooth, quasi-compact and separated over a field of characteristic $0$, $I$ an ideal sheaf whose support contains no component of $X$, and $E$ an snc divisor. Then a sequence of blow-ups in smooth centres with normal crossings with $E$ makes the pullback of $I$ an effective Cartier divisor with snc support. It is an isomorphism outside the support of $I$ (Hironaka, 1964).

[[Resolution of singularities|MB52NDA6WN]] and principalisation are the statements `ResolutionCharZero` and `PrincipalisationCharZero`, inputs of `deep_slim_use` in [the Weil bound](/proof/weil-bound/), and [the literature chapter](/proof/literature/) gives their sources.

## Complex manifolds

Let $X$ be a compact complex manifold of dimension $n$.

**Definition.** A smooth differential form on $X$ has *type $(p, q)$* if in local coordinates it is $\sum f_{IJ}\, dz_I \wedge d\bar z_J$ with $|I| = p$, $|J| = q$. The exterior derivative splits as $d = \partial + \bar\partial$. The *[[Dolbeault cohomology|6GWRCGBGWC]]* is

$$H^{p,q}(X) = \frac{\ker(\bar\partial : \mathcal{A}^{p,q} \to \mathcal{A}^{p,q+1})}{\operatorname{im}(\bar\partial : \mathcal{A}^{p,q-1} \to \mathcal{A}^{p,q})}.$$

**Theorem (Dolbeault).** $H^{p,q}(X) \cong H^q(X, \Omega^p_X)$, the [[sheaf cohomology|PQ6Q143ARJ]] of the sheaf of holomorphic $p$-forms.

**Theorem (Hodge decomposition).** If $X$ is compact Kähler, for example $X(\mathbb{C})$ for a smooth projective $X$, then $H^k(X, \mathbb{C}) = \bigoplus_{p+q = k} H^{p,q}(X)$ and $\overline{H^{p,q}} = H^{q,p}$.

The [[Lefschetz fixed-point theorem|G44NQXCWT9]] computes $\sum (-1)^i \operatorname{tr}(f^* \mid H^i(X, \mathbb{Q}))$ as a sum over the fixed points of $f$. The [[Atiyah-Bott fixed-point theorem|PKS8JE1PW1]] is a form for elliptic complexes, which include the Dolbeault complex.

**Theorem (Atiyah-Bott fixed-point theorem).** Let $X$ be a compact smooth manifold with an elliptic complex $\Gamma(E_0) \to \cdots \to \Gamma(E_m)$, and $f : X \to X$ a smooth map with $\det(1 - df_x) \neq 0$ at each fixed point. Let $\varphi_i : f^*E_i \to E_i$ be bundle maps that commute with the complex and give an endomorphism $T$ of its cohomology. Then

$$\sum_i (-1)^i \operatorname{tr}(T \mid H^i) = \sum_{f(x) = x} \frac{\sum_i (-1)^i \operatorname{tr}(\varphi_{i,x})}{|\det(1 - df_x)|}$$

(Atiyah and Bott, 1967 and 1968).

For a holomorphic $f$ on a compact complex manifold and the Dolbeault complex of $\Omega^p$, the contribution of a fixed point is $\operatorname{tr}(\wedge^p\, {}^t df_x)/\det(1 - df_x)$, with $df_x$ on the holomorphic tangent space. This is the *holomorphic Lefschetz formula*. The proof uses it for correspondences. Let $Z$ be smooth projective of dimension $d$ over $\mathbb{C}$, $c_1, c_2 : Y \to Z$ finite étale, $F$ the finite set of $y$ with $c_1(y) = c_2(y)$, and $A_y$ the $d \times d$ matrices at these points, with $\det(1 - A_y) \neq 0$. Then for each $a$,

$$\sum_{b=0}^{d} (-1)^b \operatorname{tr}\big(c_{1*} \circ c_2^* \mid H^{a,b}\big) = \sum_{y \in F} \frac{[X^a] \det(1 + X A_y)}{\det(1 - A_y)}.$$

The code proves this `HolomorphicLefschetzFormula`, and `GeoOne` takes it as input ([the Galois row](/proof/galois-row/), [GeoOne holds](/step/geo-one-holds/)).

**Definition.** Let $\pi : \mathcal{X} \to B$ be a proper submersion of complex manifolds with fibres $X_t$, and $\Theta$ the holomorphic tangent bundle. The *[[Kodaira-Spencer map|EWZ1G10MAY]]* $\kappa_t : T_t B \to H^1(X_t, \Theta_{X_t})$ is the connecting map of the exact sequence $0 \to \Theta_{X_t} \to \Theta_{\mathcal{X}}|_{X_t} \to \mathcal{O}_{X_t} \otimes T_t B \to 0$.

It measures how the complex structure of $X_t$ changes with $t$: $\kappa_t = 0$ near $t$ when the family is locally trivial. For a family of abelian varieties it becomes a map $T_t B \to \operatorname{Hom}(\omega_{A_t}, \operatorname{Lie}(A_t^\vee))$. In the proof the record `KSAll` has six Kodaira-Spencer statements, and the Lefschetz formula enters its field `KSHodge` ([the Galois row](/proof/galois-row/)).

**Theorem (projective bundle formula).** Let $E$ be a vector bundle of rank $r$ on $X$, $\pi : \mathbb{P}(E) \to X$ its projective bundle and $\xi = c_1(\mathcal{O}(1))$. Then $H^*(\mathbb{P}(E)) = \bigoplus_{i=0}^{r-1} \xi^i\, \pi^* H^{*-2i}(X)$, as a free module over $H^*(X)$ with basis $1, \xi, \dots, \xi^{r-1}$.

The same formula holds for étale cohomology, de Rham cohomology and Chow groups. The proof of `GeoOne` uses a projective bundle formula in its record `Steps` ([the Galois row](/proof/galois-row/)).

## Étale cohomology

**Definition.** A morphism is *[[finite|N9C4X7XKE4]] étale* if it is finite and étale. Over $\mathbb{C}$, a finite étale map of varieties is a finite covering map of the complex points. A *correspondence* from $X$ to itself is a pair of maps $c_1, c_2 : Y \to X$. When $c_1$ is finite étale, it acts on cohomology by $c_{1*} \circ c_2^*$.

**Example.** For a Shimura variety $\mathrm{Sh}_K$ and $g \in G(\mathbb{A}_f)$, the two maps $\mathrm{Sh}_{K \cap gKg^{-1}} \to \mathrm{Sh}_K$ given by $1$ and by $g$ form a Hecke correspondence. For small $K$ both maps are finite étale.

**Definition.** Let $X$ be a separated scheme of finite type over a field $k$ and $\ell$ a prime different from the characteristic. The *[[étale cohomology|7YX76G0838]]* with coefficients in $\mathbb{Q}_\ell$ is $H^i(X_{\bar k}, \mathbb{Q}_\ell) = (\varprojlim_n H^i_{\mathrm{et}}(X_{\bar k}, \mathbb{Z}/\ell^n)) \otimes \mathbb{Q}_\ell$. It is finite-dimensional, and $\mathrm{Gal}(\bar k/k)$ acts on it.

For $X$ over $\mathbb{C}$, Artin's comparison theorem gives $H^i(X, \mathbb{Q}_\ell) \cong H^i(X(\mathbb{C}), \mathbb{Q}) \otimes \mathbb{Q}_\ell$. [The Galois representations chapter](/learn/galois-representations/) uses these spaces as its main source of examples.

**Theorem (proper base change).** Let $f : X \to S$ be proper and $\mathcal{F}$ a torsion étale sheaf on $X$. For each geometric point $\bar s$ of $S$, $(R^i f_* \mathcal{F})_{\bar s} \cong H^i(X_{\bar s}, \mathcal{F}|_{X_{\bar s}})$ (SGA 4, XII).

With the smooth base change theorem it gives: if $X$ is smooth and proper over $\mathcal{O}_K[1/N]$, then $H^i(X_{\bar K}, \mathbb{Q}_\ell)$ is unramified at each place $v \nmid N\ell$, and $\operatorname{Frob}_v$ acts as on the cohomology of the reduction. The record `Steps` of `GeoOne` contains `UpperTheory.Et.proper_base_change` ([the Galois row](/proof/galois-row/), [GeoOne](/step/geo-one-def/)).

## De Rham cohomology and deformations

**Definition.** Let $f : X \to S$ be smooth. The *[[algebraic de Rham cohomology|13F5JZPDD0]]* is $H^i_{\mathrm{dR}}(X/S) = R^i f_* \Omega^\bullet_{X/S}$. The *Hodge filtration* $F^p$ comes from the truncations $\Omega^{\geq p}_{X/S}$.

When $f$ is smooth and proper over a base of characteristic $0$, the Hodge to de Rham spectral sequence degenerates and $F^p/F^{p+1} \cong R^{i-p} f_* \Omega^p_{X/S}$. For an abelian scheme $A \to S$ this gives the exact sequence $0 \to \omega_{A} \to H^1_{\mathrm{dR}}(A/S) \to \operatorname{Lie}(A^\vee) \to 0$, with $\omega_A$ the invariant differentials.

**Definition.** Let $f : X \to S$ be smooth and proper with $S$ smooth over a field of characteristic $0$. The *[[Gauss-Manin connection|72FWSE86X4]]* is an integrable connection $\nabla$ on $H^i_{\mathrm{dR}}(X/S)$. Over $\mathbb{C}$ its horizontal sections are the local system $R^i f_* \mathbb{C}$.

**Theorem (Griffiths transversality).** $\nabla(F^p) \subset F^{p-1} \otimes \Omega^1_S$. The induced map $F^p/F^{p+1} \to (F^{p-1}/F^p) \otimes \Omega^1_S$ is the cup product with the Kodaira-Spencer class.

**Definition.** A *[[deformation|3CEKYF05P1]]* of $X_0$ over a local Artin ring $R$ with residue field $k$ is a flat $X \to \mathrm{Spec}\, R$ with an isomorphism $X \otimes_R k \cong X_0$. For $X_0$ smooth over $k$, the first-order deformations over $k[\varepsilon]/(\varepsilon^2)$ are classified by $H^1(X_0, \Theta_{X_0})$, and obstructions lie in $H^2(X_0, \Theta_{X_0})$.

**Theorem (Grothendieck-Messing).** Let $S_0 \hookrightarrow S$ be a closed immersion of schemes on which $p$ is locally nilpotent, whose ideal has nilpotent divided powers. Then lifting an abelian scheme $A_0$ over $S_0$ to an abelian scheme over $S$ is the same as lifting the Hodge filtration $\omega_{A_0} \subset H^1_{\mathrm{dR}}(A_0/S_0)$ to a direct summand of the crystal of $A_0$ evaluated on $S$ (Messing, 1972).

The record of [CM and abelian inputs](/step/cm-abelian-inputs-from-literature/) has fields `GrothendieckDeformation`, `AbelianDeRham`, `PeriodComparison` and `GaussManinPeriods` on these objects, and `GrothendieckMessing` is a field of [the bundle of published arithmetic results](/step/published-results-arithmetic/).

## Shimura varieties and toroidal compactifications

**Definition.** A *Shimura datum* is a pair $(G, X)$ of a reductive group $G$ over $\mathbb{Q}$ and a $G(\mathbb{R})$-conjugacy class $X$ of homomorphisms $\mathrm{Res}_{\mathbb{C}/\mathbb{R}} \mathbb{G}_m \to G_{\mathbb{R}}$ that satisfies Deligne's axioms. For a compact open subgroup $K \subset G(\mathbb{A}_f)$, the *[[Shimura variety|QT4CF7ZKK5]]* is

$$\mathrm{Sh}_K(G, X) = G(\mathbb{Q}) \backslash X \times G(\mathbb{A}_f)/K.$$

For $K$ neat it is a smooth quasi-projective complex variety (Baily and Borel), and it has a canonical model over the reflex field $E(G, X)$ (Deligne). As $K$ shrinks the varieties form a *tower* with finite étale transition maps, and $G(\mathbb{A}_f)$ acts on the tower by Hecke correspondences.

**Example.** For $G = \mathrm{GL}_2$ and $X = \mathbb{C} \setminus \mathbb{R}$, $\mathrm{Sh}_K$ is a finite union of modular curves $\Gamma \backslash \mathbb{H}$. A *unitary Shimura variety of signature $(p, q)$* comes from a unitary group of a Hermitian space over a CM field with signature $(p, q)$ at the infinite places.

For a Shimura variety of PEL type, $\mathrm{Sh}_K$ is a moduli space of abelian varieties with polarization, endomorphisms and level structure. When $K = K^p K_p$ with $K_p$ hyperspecial and $p$ unramified, the same moduli problem over $\mathcal{O}_E \otimes \mathbb{Z}_{(p)}$ gives a smooth *integral model* (Kottwitz, 1992).

**Definition.** A *[[toric variety|YWB981MEF2]]* is a normal variety with an action of a torus $T$ that has a dense open orbit isomorphic to $T$. It is given by a fan of rational polyhedral cones.

**Theorem (toroidal compactification).** Let $\mathrm{Sh}_K$ be a Shimura variety with $K$ neat. For each admissible collection $\Sigma$ of rational polyhedral cone decompositions at the cusps there is a compactification $\mathrm{Sh}_K^\Sigma$ that contains $\mathrm{Sh}_K$ as a dense open subset and is near its boundary locally like a toric variety. For suitable smooth projective $\Sigma$ it is smooth and projective, with an snc boundary (Ash, Mumford, Rapoport and Tai, 1975).

The proof uses two integral or relative forms. `SiegelToroidalIntegral` (Faltings and Chai, 1990): for odd $n \geq 3$ the moduli space of principally polarized abelian schemes of dimension $g$ with level $n$ has a projective smooth compactification over $\mathbb{Z}[\zeta_n, 1/n]$ of relative dimension $g(g+1)/2$, the universal abelian scheme extends to a semi-abelian scheme, a power of the Hodge bundle is generated by global sections, and large powers of it twisted by minus the boundary are ample. `ToroidalForFanKS` (Lan, 2013): a unitary Shimura variety of signature $(p, q)$ over a CM field has a toroidal model over the coefficient field with snc boundary, a twist of the Hodge bundle by the boundary is ample, and the log Kodaira-Spencer map is an isomorphism.

Both are inputs of the volume branch in [the literature chapter](/proof/literature/), and `ToroidalCompactification` is a field of [the bundle of published arithmetic results](/step/published-results-arithmetic/). [The Weil bound](/proof/weil-bound/) builds a tower of integral models of unitary Shimura varieties on which it computes heights. Chapter 15 defines the arithmetic intersection numbers that it computes.

## Further reading

- R. Hartshorne, *Algebraic Geometry*, Chapters II and III.
- P. Griffiths and J. Harris, *Principles of Algebraic Geometry*, Chapters 0 and 3.
- R. Lazarsfeld, *Positivity in Algebraic Geometry I and II*, Sections 1.4, 4.3, 9.4 and 10.4.
- J. S. Milne, *Étale Cohomology*, Chapters I and VI.
- K.-W. Lan, *Arithmetic Compactifications of PEL-Type Shimura Varieties*, Chapters 1 and 6.
