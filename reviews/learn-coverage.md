# The plan of the Learn section

This file lists each concept that the proof uses, and the chapter of the Learn section that defines it. We made the list from a full read of the twelve chapters of `proof/`, the fifty step files and `links/literature.yaml`. Each concept has one home. Other chapters link to the home and do not define it again.

The Learn section has two parts.

- **Part I** has one chapter for each subject, in the order to read them. A chapter uses only the chapters above it.
- **Part II** has one short guide for each chapter of the proof. A guide says what the chapter needs and where Part I defines it. It defines only the concepts that belong to that chapter alone.

Each chapter is a file `paths/<id>.md`, with its list of concepts in `paths/<id>.yaml`. The rule P6 of `rh check` makes sure that the chapter names each concept of its list.

## Part I. The background

### 1. Algebra (`algebra`)

Divisibility, primes, congruences, gcd and the Bezout identity. The ring $\mathbb{Z}/N\mathbb{Z}$ and its unit group. Groups, homomorphisms, kernels, automorphism groups, cyclic groups and their characters. Multisets. Rings, ideals, quotients, modules, torsion, the length of a module, $\mathbb{Z}_\ell$-modules. Fields, extensions, degree, algebraic closure, finite fields $\mathbb{F}_q$ and the Frobenius map $x \mapsto x^q$. Roots of unity and primitive roots of unity. Galois extensions, the Galois correspondence and fixed fields. Polynomials, the minimal and the characteristic polynomial, formal power series. Matrices, transpose, determinant, trace, leading principal minors, nilpotent and block matrices, the Gram matrix. Bilinear, Hermitian and skew-Hermitian forms, nondegenerate, positive definite, signature, orthogonal complement, the hyperbolic plane. Tensor products, direct sums, pure tensors, coinvariants. Zorn's lemma.

### 2. Analysis (`analysis`)

Limits, lim sup, the notation $O(\cdot)$ and "for all large $x$". Continuity and smooth functions. Measures, integrals, integrability and the theorem of Fubini. $L^2$ spaces and the Cauchy-Schwarz inequality. The Fourier transform, the Gaussian, the Schwartz space and the Sobolev norms. Topological groups, locally compact groups, covering maps and double covers. Haar measure. Lie groups, Lie algebras, the exponential map and one-parameter subgroups.

### 3. Complex analysis (`complex-analysis`)

Complex numbers, the real part, the complex conjugate. Holomorphic functions, holomorphic families. Zeros and their multiplicity. Poles and meromorphic functions. Analytic continuation and the identity theorem. The logarithmic derivative. The zeros of the cosine. The Gamma function, the reflection formula and the fact that $\Gamma$ has no zeros. The Poisson summation formula. The Mellin transform. The theta function.

### 4. Number fields (`number-fields`)

Number fields, algebraic integers, the ring of integers, degree, discriminant, root discriminant. Dedekind domains, ideals, fractional ideals and the ideal norm. The ideal class group and the class number. The norm of an element and the Galois conjugates. Totally real and totally complex fields, imaginary quadratic fields, CM fields, the maximal real subfield, the complex conjugation, CM types. Abelian fields, cyclotomic fields and $\mathrm{Gal}(\mathbb{Q}(\zeta_N)/\mathbb{Q}) \cong (\mathbb{Z}/N\mathbb{Z})^\times$. Places, finite and infinite, real and complex. Ramification: unramified, split, inert and ramified primes, the ramification index. Valuations, completions, $p$-adic numbers $\mathbb{Q}_p$ and $\mathbb{Z}_p$, $\mathbb{Q}_\ell/\mathbb{Z}_\ell$, uniformizers and residue fields. Local fields. The algebraic closure $\overline{\mathbb{Q}}_\ell$ and an isomorphism $\overline{\mathbb{Q}}_\ell \cong \mathbb{C}$. A valuation ring over a place. The adele ring, the finite adeles, the ideles and the idele class group.

### 5. Class field theory (`class-field-theory`)

Additive characters of local fields and of the adeles. Hecke characters: unitary, ramified, unramified, the infinity type, algebraic Hecke characters and their $\ell$-adic forms. The quadratic character of a quadratic extension. The Jacobi symbol. Local class field theory and the local Artin map. Global class field theory and Artin reciprocity. The Hilbert class field and ray class fields. The Hasse norm theorem and the Hasse principle for Hermitian forms (Landherr). Tate's thesis, Hecke L-functions, their functional equation, epsilon factors and partial L-functions.

### 6. Zeta and L-functions (`l-functions`)

The Riemann zeta function, its pole, the Euler product, the functional equation, the completed zeta function, the trivial zeros and the critical strip. The Riemann hypothesis. Dirichlet characters: the modulus, the trivial character, the order, the parity, primitive characters, the conductor and the induced character. Dirichlet L-functions, the extra Euler factors of a character that is not primitive, Gauss sums and the functional equation. The generalized Riemann hypothesis. The zeros of an L-function with multiplicity. The von Mangoldt function, the Euler constant and the explicit formula of Guinand and Weil. Dirichlet's theorem on primes in progressions, Linnik's theorem, primes in short intervals and the Chebotarev density theorem. Partial zeta functions, the class number formula, the Kronecker limit formula, and the Siegel-Klingen and Deligne-Ribet theorems.

### 7. Classical groups (`groups`)

The groups $\mathrm{GL}_n$, $\mathrm{Sp}_{2n}$ and the unitary groups $\mathrm{U}(V)$ and $\mathrm{U}(p, q)$, definite unitary groups. Symplectic spaces and Darboux coordinates. Flags, parabolic subgroups, the Siegel parabolic, Levi subgroups, unipotent radicals and Weyl elements. Reductive groups. Maximal compact subgroups and the Cartan involution. The points $G(\mathbb{A})$ over the adeles, compact open subgroups, the first congruence subgroup and the Iwahori subgroup. Strong approximation. The quotient $G(F) \backslash G(\mathbb{A})$, fundamental domains, Siegel sets and finite volume. Height functions on a group. Hermitian lattices, the genus, the mass, the Siegel mass formula and local densities. The Heisenberg group and the metaplectic group.

### 8. Representations (`representations`)

Representations of a group, irreducible and semisimple representations, the Schur lemma, intertwining maps. The dual, the twist, the tensor product, the character of a representation, class functions. Unitary representations, matrix coefficients and Schur orthogonality. Isotypic components, highest weights and dominant weights, the Weyl branching law. Smooth and admissible representations of $p$-adic groups, the central character, parabolic induction, the Jacquet module and the geometric lemma. Cuspidal and supercuspidal representations, the supercuspidal support, Zelevinsky segments and multisegments, the Langlands classification. Unramified (spherical) representations, Iwahori fixed vectors, Satake parameters. Depth zero representations, types, and the cuspidal characters of $\mathrm{GL}_n(\mathbb{F}_q)$ (Green, Deligne-Lusztig). Local L-factors and epsilon factors, the local converse theorem, Bernstein-Zelevinsky finiteness, generic representations and the unitary dual. Real groups: $K$-finite vectors, Harish-Chandra modules, the infinitesimal character, discrete series, holomorphic discrete series and lowest $K$-types, formal degree, the Plancherel measure, Casselman-Wallach globalization.

### 9. Automorphic forms (`automorphic-forms`)

Modular forms, cusp forms, newforms, Eisenstein series, Hecke operators and the Hecke algebra, the Dedekind eta function, the Petersson inner product. Automorphic forms on $G(F) \backslash G(\mathbb{A})$, moderate growth, rapid decay of cusp forms. Automorphic representations, local components, the Flath tensor product theorem and the restricted tensor product. Cuspidal automorphic representations, the discrete spectrum, residual (Speh) representations, isobaric sums, multiplicity one and strong multiplicity one. Regular algebraic and polarized representations, cohomological representations. Base change. Fourier coefficients, the constant term, Whittaker functions and Poincaré series. Siegel Eisenstein series, their sections and their continuation. Definite quaternion algebras.

### 10. Galois representations (`galois-representations`)

The absolute Galois group, profinite groups, decomposition and inertia groups, Frobenius elements, the group $G_S$ of a set of places. Galois representations, $\ell$-adic representations, unramified representations, Frobenius eigenvalues. The cyclotomic character and the Tate module. The Weil group and Weil-Deligne representations, the monodromy operator and $\mathrm{Sp}(m)$. The local Langlands correspondence for $\mathrm{GL}_n$. $p$-adic Hodge theory: period rings, $A_{\mathrm{inf}}$ and the tilt, Hodge-Tate weights, crystalline, de Rham and potentially semistable representations. The Galois representation of an automorphic representation, local-global compatibility, modularity lifting and patching, and the known cases of automorphy.

### 11. Galois cohomology (`galois-cohomology`)

Continuous cohomology $H^1$ and $H^2$ of a profinite group. Local finiteness. Local Tate duality, the local and the global Euler characteristic formulas, Poitou-Tate duality. Selmer groups, the Bloch-Kato local conditions, the Greenberg-Wiles formula, the Tate-Shafarevich group. Plus and minus parts under complex conjugation. Iwasawa theory, cyclotomic layers, the Ferrero-Washington theorem, the Kato Euler system and Hida theory.

### 12. Elliptic curves and complex multiplication (`elliptic-curves`)

Lattices in $\mathbb{C}$, the Weierstrass function, $g_2$, $g_3$ and $\Delta$. Elliptic curves and the $j$-invariant. Reduction, good reduction, minimal models and the minimal discriminant. Quadratic twists. Periods. Complex multiplication, the main theorem of complex multiplication, $j(L)$ and the Hilbert class field, Shimura reciprocity, the Chowla-Selberg formula, Gross's curves, Eisenstein sums of lattices. Abelian varieties and abelian schemes, the dual, the polarization, the Serre-Tate theorem.

### 13. Formal groups and p-divisible groups (`formal-groups`)

Formal group laws, the invariant derivation, the logarithm and the height. $p$-divisible groups, the dual, connected groups, the Tate module and the Weil pairing. The Dieudonné module and its Frobenius, the Hodge filtration, the Hodge-Tate sequence. Prismatic Dieudonné theory and the crystalline lattices of Bhatt and Scholze. Grothendieck-Messing deformation theory.

### 14. Algebraic and complex geometry (`geometry`)

Schemes and varieties, smooth projective schemes, products of projective spaces, Zariski density. Line bundles and divisors: Cartier and $\mathbb{Q}$-divisors, ample, nef and big, snc and klt pairs. Asymptotic Riemann-Roch, Kawamata-Viehweg and Nadel vanishing, Angehrn-Siu, resolution of singularities. Dolbeault cohomology, the holomorphic Lefschetz formula of Atiyah and Bott, the Kodaira-Spencer map, the projective bundle formula. Étale cohomology, finite étale maps, correspondences and proper base change. De Rham cohomology, the Gauss-Manin connection, deformation theory. Shimura varieties, their integral models and towers, toroidal compactifications.

### 15. Arakelov geometry and heights (`arakelov`)

Hermitian line bundles, metrics, semipositivity, the Chern form, the Poincaré-Lelong formula. Arithmetic varieties, arithmetic intersection numbers, the arithmetic degree and the projection formula. Heights of points and of cycles, Zhang's successive minima. The arithmetic volume, bigness (Moriwaki and Yuan), the arithmetic Hilbert-Samuel theorem and the arithmetic Kleiman criterion. Euclidean and Hermitian lattices over a number field, degree and slope, the maximal slope, the absolute Siegel lemma and the slope inequality of Bost. The Hodge bundle of an abelian scheme and its semipositivity. Zarhin's trick.

### 16. The Weil representation and theta lifts (`theta`)

Reductive dual pairs. The Stone-von Neumann theorem and the Weil representation, the Schrödinger and the Fock models, the vacuum vector, splitting characters. Theta functions and theta kernels. The local theta correspondence and Howe duality. The global theta lift, the theta integral, theta towers. Seesaw pairs. The Siegel-Weil formula, the doubled group and the regularized forms. The doubling method, local zeta integrals and the Rallis inner product formula.

### 17. Periods (`periods`)

Generic characters, Bessel and Fourier-Jacobi periods, the Gan-Gross-Prasad conjectures, interlacing and the branching law for discrete series, local multiplicity one. The descent of Ginzburg, Rallis and Soudry. Orbit integrals and the relative trace formula.

## Part II. A guide to each chapter of the proof

| Guide | For the chapter | Concepts of its own |
|---|---|---|
| `trunk` | 00 and 01, the top and the trunk | none; it walks the trunk with links |
| `galois-row` | 02, the Galois row | the steps of the geometric argument |
| `vwin` | 03, the window bound | the counts of the window bound |
| `literature` | 04, the literature | each named result, with its source |
| `theta-matching` | 05, theta integrals and local matching | none |
| `unitary-hypotheses` | 06, the unitary hypotheses | none |
| `weil-bound` | 07, the Weil bound | none |
| `bessel-seesaw` | 08, the Bessel seesaw | none |
| `siegel-weil` | 09, the Siegel-Weil inputs | none |
| `cm-divisibility` | 10, CM divisibility | none |
| `determinants` | 11, block determinants | none |

The project definitions (for example `VWin`, `Row0b`, `WinPair`) are not in the Learn section. Their step pages and the glossary explain them.
