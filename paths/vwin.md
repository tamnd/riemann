[The window bound](/proof/vwin/) proves VWin from the row hypothesis Row0b. For each primitive Dirichlet character $\psi$, VWin bounds a weighted sum of lengths of Tate-Shafarevich groups of $\mathbb{Q}_l/\mathbb{Z}_l(-e)$ over abelian fields cut out by $\psi$ and two auxiliary primes. The top of the proof packs named results into records. The bottom splits each length into three parts and bounds them case by case.

## Read first

- [Dirichlet characters](/learn/l-functions/#dirichlet-characters): primitive characters, conductors and parity.
- [Galois theory](/learn/algebra/#galois-theory), [kinds of number fields](/learn/number-fields/#kinds-of-number-fields) and [quadratic symbols](/learn/class-field-theory/#quadratic-symbols). A field with IsChiField is a CM fixed field inside a cyclotomic field, cut out by $\psi$ and two Jacobi symbols.
- [The cyclotomic character and Tate modules](/learn/galois-representations/#the-cyclotomic-character-and-tate-modules), for the twist by $\chi^{-e}$.
- [Continuous cohomology](/learn/galois-cohomology/#continuous-cohomology) and [Selmer and Tate-Shafarevich groups](/learn/galois-cohomology/#selmer-and-tate-shafarevich-groups) set up the Galois cohomology. The length of a module is in [rings, ideals and modules](/learn/algebra/#rings-ideals-and-modules).
- [Local fields](/learn/galois-cohomology/#local-fields) and [global fields](/learn/galois-cohomology/#global-fields), for local finiteness, local Tate duality and Poitou-Tate duality.
- [Plus and minus parts](/learn/galois-cohomology/#plus-and-minus-parts). Each length splits under complex conjugation.
- [Iwasawa theory](/learn/galois-cohomology/#iwasawa-theory) gives the Ferrero-Washington theorem, an input of ThmBab (below).
- [Modular forms](/learn/automorphic-forms/#modular-forms) and [Euler systems and Kato](/learn/galois-cohomology/#euler-systems-and-kato) cover case I: a newform, the Kato Euler system, and the vanishing of a Bloch-Kato Selmer group.
- [Unitary groups](/learn/groups/#unitary-groups), [isobaric sums](/learn/automorphic-forms/#isobaric-sums) and [base change](/learn/automorphic-forms/#base-change), for the base change input.
- [Modularity lifting](/learn/galois-representations/#modularity-lifting) and [Hida theory](/learn/galois-cohomology/#hida-theory) are behind the automorphy in dimensions 3 and 4 and the threshold case.

## The new objects

- [VWin](/step/vwin-def/) says: for each primitive character $\psi$, each small $\varepsilon$ and each pair of primes $q \equiv 3 \pmod 8$, $d \equiv 7 \pmod{16}$ of a given size, there is a window of $x$ in which, for each field with IsChiField, the sum $\sum_l \log l \sum_e \operatorname{len} \text{Ш}$ is finite and at most $\exp(\tfrac12 x^{\varepsilon})$.
- [OpenImageCondition](/step/open-image-condition-def/) is a record with one field, the row.
- [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) says: over a CM field $E$ with $E/E^+$ unramified at all finite places, each automorphic representation of the unitary group $U_n$ has a base change of automorphic representations to an isobaric sum on $\mathrm{GL}_n$. [baseChangeN](/step/base-change-n/) proves it.
- [LiteratureCMHypothesis](/step/cm-abelian-inputs-from-literature/), [LiteratureRankNHypothesis](/step/v-window-of-depth-zero-residual-bc-cm/) and HypothesesH' are records of named results. A theorem of the code fills each field.
- LemmaK bounds $\log \#H^2(L, \mathbb{Z}_l(e+1))$ in the degree and the discriminant of $L$, for $L$ totally complex with the $l$-th roots of unity (the 4th if $l = 2$).
- A host is a character, an exponent and two primes, with a modulus $N$. For each case of the odd prime $l$, a count bounds a Selmer-type length, by $(lNe)^C$ in cases II, III and V and by $0$ in case Z; case I bounds a weighted sum.

## The path through the chapter

1. [vwin_of_row](/step/vwin-of-row/) and [automorphic_window_of_inputs](/step/automorphic-window-of-inputs/) wrap the row and add base change.
2. [v_window_of_depth_zero_residual_bc_cm](/step/v-window-of-depth-zero-residual-bc-cm/) packs four records. Only here does the row enter the count.
3. The main fork proves LemmaK and the counts: case I by the Kato Euler system, cases II and III by symplectic automorphy in dimension 4, case V by unitary automorphy in dimension 3.
4. ThmBab bounds the part at $l = 2$ and the cyclotomic layers, from LemmaK, the two dualities and the Ferrero-Washington theorem. ThmBcFree bounds the minus part.
5. The counts give the bound ThmHV on the plus part. The last step adds the three parts and checks the bound $\exp(\tfrac12 x^{\varepsilon})$.
