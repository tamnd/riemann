The [overview](/proof/) gets the Riemann Hypothesis from one statement, [EveryCharacter](/step/every-character-def/): no Dirichlet L-function has a zero with $\operatorname{Re}(s) > \tfrac12$. The [trunk](/proof/trunk/) proves EveryCharacter from one hypothesis on Galois representations, Row0b, by a chain of five short theorems. Both chapters need the language of the statements, not the deep theorems.

## Read first

- [The Riemann Hypothesis](/learn/l-functions/#the-riemann-hypothesis), as Mathlib states it.
- [The functional equation and the trivial zeros](/learn/l-functions/#the-functional-equation-and-the-trivial-zeros). The overview reads the functional equation of the zeta function at $1 - s$.
- [The Gamma function](/learn/complex-analysis/#the-gamma-function) and [the zeros of the cosine](/learn/complex-analysis/#the-zeros-of-the-cosine). The Gamma function has no zeros, and when $\operatorname{Re}(s) < \tfrac12$ the cosine factor vanishes only at a trivial zero or at $s = 0$.
- [Dirichlet characters](/learn/l-functions/#dirichlet-characters), [Dirichlet L-functions](/learn/l-functions/#dirichlet-l-functions) and [the Generalized Riemann Hypothesis](/learn/l-functions/#zeros-and-the-generalized-riemann-hypothesis): the content of EveryCharacter. The last step also needs imprimitive characters.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields) and [places and completions](/learn/number-fields/#places-and-completions), for the CM field $E$, its real subfield $E^+$ and the local fields $E_w$.
- [Cuspidal automorphic representations](/learn/automorphic-forms/#automorphic-representations), [Hecke characters](/learn/class-field-theory/#hecke-characters) and [regular algebraic and polarized automorphic representations](/learn/automorphic-forms/#regular-algebraic-cohomological-and-polarized-representations) describe the input $(\pi, \chi)$ of Row0b, and [Galois representations](/learn/galois-representations/#galois-representations) its output.
- [Smooth representations of p-adic groups](/learn/representations/#smooth-representations-of-p-adic-groups), [cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments) and [depth zero representations and types](/learn/representations/#depth-zero-representations-and-types). IsRecT takes these representations, and its laws follow the Langlands classification and send depth zero to tame.
- [Local class field theory](/learn/class-field-theory/#local-class-field-theory), [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence): the other side of IsRecT.
- [Galois theory](/learn/algebra/#galois-theory) and [quadratic symbols](/learn/class-field-theory/#quadratic-symbols). The fields in VWin are fixed fields in $\mathbb{Q}(\zeta_M)$ cut out by Jacobi symbols.
- [Selmer and Tate-Shafarevich groups](/learn/galois-cohomology/#selmer-and-tate-shafarevich-groups), with the length of a module from [rings, ideals and modules](/learn/algebra/#rings-ideals-and-modules). VWin bounds these lengths.

## The new objects

- [Row0b](/step/row0b-def/) says: if $\pi$ is a regular algebraic automorphic representation of $\mathrm{GL}_a$ over a CM field $E$, cuspidal and polarized by a Hecke character of $E^+$, then there is a continuous semisimple $\ell$-adic Galois representation $r$ of $E$ with given Hodge-Tate weights and local conditions at each finite place. [Row](/step/row-def/) is Row0b with the local predicate IsRecT.
- [IsRecT](/step/is-rect-def/) is a list of laws for a map from irreducible smooth representations of $\mathrm{GL}_n(E_w)$ to Weil-Deligne classes: the properties of a local Langlands map, with no bijection and no $\varepsilon$-factors.
- [RecTExists](/step/rect-exists-def/) says that such a map exists at each finite place of each number field. The theorem [recTExists](/step/rect-exists/) proves it.
- [OpenLiteratureStatements](/step/open-literature-statements-def/) is a record of three fields: Row two times and RecTExists. The trunk fills all three with proofs.
- [VWin](/step/vwin-def/) bounds, for each primitive character, a sum of lengths of Tate-Shafarevich groups, weighted by $\log \ell$, over certain subfields of cyclotomic fields.

## The path through the chapter

1. [rh_of_right](/step/rh-of-right/) gets the Riemann Hypothesis from $\zeta(s) \neq 0$ on $\operatorname{Re}(s) > \tfrac12$, $s \neq 1$, by the functional equation.
2. [rh_of_every](/step/rh-of-every/) applies EveryCharacter to the trivial character modulo $1$, whose L-function is $\zeta$.
3. [everyCharacter_of_row](/step/every-character-of-row/) builds the record and VWin from one proof of Row.
4. [every_character_of_literature](/step/every-character-of-literature/) and [theta_local_matching](/step/theta-local-matching/) turn the record into seven inputs and then into a nonempty type of hypotheses.
5. [every_character_of_green_v_win](/step/green-vwin/) proves that $L(s, \psi) \neq 0$ for $\operatorname{Re}(s) > \tfrac12$ and each primitive $\psi$.
6. [imprimitive](/step/imprimitive/) passes to all characters: its extra Euler factors do not vanish for $\operatorname{Re}(s) > 0$.
