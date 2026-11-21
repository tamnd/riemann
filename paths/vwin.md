[The window bound](/proof/vwin/) proves `VWin` from the row hypothesis `Row0b`. For each primitive Dirichlet character $\psi$, `VWin` bounds a weighted sum of lengths of Tate-Shafarevich groups of $\mathbb{Q}_l/\mathbb{Z}_l(-e)$ over abelian fields cut out by $\psi$ and two auxiliary primes. The top of the proof packs named results into records. The bottom is a count: it splits each length into three parts and bounds each part case by case.

## Read first

- [Dirichlet characters](/learn/l-functions/#dirichlet-characters), for the primitive character $\psi$, its conductor and its parity.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields) and [Galois theory](/learn/algebra/#galois-theory), for `IsChiField`: a fixed field inside a cyclotomic field $\mathbb{Q}(\zeta_N)$, which is a CM field.
- [Quadratic symbols](/learn/class-field-theory/#quadratic-symbols), for the Jacobi symbols $\left(\tfrac{a}{q}\right)$ and $\left(\tfrac{a}{d}\right)$.
- [Number fields and their integers](/learn/number-fields/#number-fields-and-their-integers), for the degree and the discriminant in `LemmaK`.
- [The cyclotomic character and Tate modules](/learn/galois-representations/#the-cyclotomic-character-and-tate-modules), for the twist by $\chi^{-e}$.
- [Continuous cohomology](/learn/galois-cohomology/#continuous-cohomology) and [Rings, ideals and modules](/learn/algebra/#rings-ideals-and-modules), for the Galois cohomology groups $H^1$ and $H^2$, and the length of a module.
- [Selmer and Tate-Shafarevich groups](/learn/galois-cohomology/#selmer-and-tate-shafarevich-groups), for the Tate-Shafarevich group `Sha`, Selmer lengths and the Bloch-Kato Selmer group.
- [Local fields](/learn/galois-cohomology/#local-fields) and [global fields](/learn/galois-cohomology/#global-fields), for local finiteness, local Tate duality, Poitou-Tate duality and the Euler characteristics in `LitCoh`.
- [Plus and minus parts](/learn/galois-cohomology/#plus-and-minus-parts), for the split of each length under complex conjugation.
- [Iwasawa theory](/learn/galois-cohomology/#iwasawa-theory), for the cyclotomic layers and the Ferrero-Washington theorem in `ThmBab`.
- [Unitary groups](/learn/groups/#unitary-groups), for the unitary group $U_n$ of `BaseChangeIsobaricN`.
- [Generic representations and local factors](/learn/representations/#generic-representations-and-local-factors), for the local statements on $\mathrm{GL}_n$ in `LiteratureRankNHypothesis`, such as Bernstein-Zelevinsky finiteness and the local converse theorem.
- [Modular forms](/learn/automorphic-forms/#modular-forms) and [Euler systems and Kato](/learn/galois-cohomology/#euler-systems-and-kato), for the newform and the Kato Euler system behind `KatoTwoW`.
- [Isobaric sums](/learn/automorphic-forms/#isobaric-sums) and [base change](/learn/automorphic-forms/#base-change), for `BaseChangeIsobaricN`.
- [Modularity lifting](/learn/galois-representations/#modularity-lifting) and [Hida theory](/learn/galois-cohomology/#hida-theory), for the automorphy of the representations of dimensions 3 and 4 and the threshold case.
- [Complex multiplication](/learn/elliptic-curves/#complex-multiplication), [abelian schemes](/learn/elliptic-curves/#abelian-varieties-and-abelian-schemes), [zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields) and [Tate's thesis](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions), for the eleven fields of `LiteratureCMHypothesis`.

## The new objects

- [VWin](/step/vwin-def/) is built from four pieces. A `PChar` is a primitive character. `WinPair` picks primes $q \equiv 3 \pmod 8$ and $d \equiv 7 \pmod{16}$ of a given size. `IsChiField` is the subfield of $\mathbb{Q}(\zeta_N)$ cut out by $\psi$, by $\pm 1 \bmod 2^{e+2}$ and by two Jacobi symbols. `VVle` is the bound $\sum_l \log l \sum_e \operatorname{len} \text{Ш} \le B$.
- [OpenImageCondition](/step/open-image-condition-def/) is a record with one field, the row. Its name does not match its content.
- [BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) gives a base change of automorphic representations from the [unitary group](/learn/groups/#unitary-groups) $U_n$ over a CM field to an isobaric sum on $\mathrm{GL}_n$. [baseChangeN](/step/base-change-n/) proves it.
- [LiteratureCMHypothesis](/step/cm-abelian-inputs-from-literature/), [LiteratureRankNHypothesis](/step/v-window-of-depth-zero-residual-bc-cm/) and `HypothesesH'` are records of named results, each field proved by a theorem of the code.
- `LemmaK` bounds $\log \# H^2(L, \mathbb{Z}_l(e+1))$ by the degree and the discriminant of $L$.
- A `Host` is a datum $(\chi, \mathrm{ex}, q_1, d)$ with a modulus $N$. `CountI` to `CountZ` bound Selmer-type lengths by $(lNe)^C$, one for each case of the prime $l$.
- `ThmBab`, `ThmBcFree` and `ThmHV` bound the part at $l = 2$ with the cyclotomic layers, the minus part, and the plus part.

## The path through the chapter

1. [vwin_of_row](/step/vwin-of-row/) and [automorphic_window_of_inputs](/step/automorphic-window-of-inputs/) wrap the row and add base change.
2. [v_window_of_depth_zero_residual_bc_cm](/step/v-window-of-depth-zero-residual-bc-cm/) packs four records. The row enters the count only here, as the field `aut.gal`.
3. `vwin_of_hypotheses_H_E_alt` proves `LemmaK` and the counts: case I by the Kato Euler system, cases II and III by symplectic automorphy in dimension 4, case V by unitary automorphy in dimension 3.
4. `of_four_alt` gets `ThmBab` from Poitou-Tate duality, local Tate duality and the Ferrero-Washington theorem.
5. `vwin_of_counts` adds the three parts and checks the bound $\exp(\tfrac12 x^{\varepsilon})$.
