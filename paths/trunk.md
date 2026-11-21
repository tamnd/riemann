The [overview](/proof/) gets the Riemann Hypothesis from one statement, [EveryCharacter](/step/every-character-def/): no Dirichlet L-function has a zero with $\operatorname{Re}(s) > \tfrac12$. The [trunk](/proof/trunk/) proves EveryCharacter from one hypothesis on Galois representations, `Row0b`, by a chain of five short theorems. To read the two chapters you need the language of the statements, not the deep theorems. Those have their own chapters.

## Read first

- [The Riemann Hypothesis](/learn/l-functions/#the-riemann-hypothesis), for the form of the statement in Mathlib.
- [The functional equation and the trivial zeros](/learn/l-functions/#the-functional-equation-and-the-trivial-zeros), for the functional equation of the zeta function that the overview reads at $1 - s$.
- [The Gamma function](/learn/complex-analysis/#the-gamma-function) and [the zeros of the cosine](/learn/complex-analysis/#the-zeros-of-the-cosine), for the two other factors of that equation. The Gamma function has no zeros, and the cosine vanishes only where $s$ is a trivial zero or $s = 0$.
- [Dirichlet characters](/learn/l-functions/#dirichlet-characters), [Dirichlet L-functions](/learn/l-functions/#dirichlet-l-functions) and [the Generalized Riemann Hypothesis](/learn/l-functions/#zeros-and-the-generalized-riemann-hypothesis), for EveryCharacter and for imprimitive characters in the last step.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields), for the CM field $E$ and its maximal real subfield $E^+$.
- [Places and completions](/learn/number-fields/#places-and-completions), for a finite place $w$, the local field $E_w$ and a valuation ring over $w$.
- [Hecke characters](/learn/class-field-theory/#hecke-characters), for the character $\chi$ of $E^+$.
- [Smooth representations of p-adic groups](/learn/representations/#smooth-representations-of-p-adic-groups), for the irreducible smooth representations of $\mathrm{GL}_n(E_w)$ that `IsRecT` takes, and their contragredients.
- [Cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments), for the Langlands classification by segments in the laws of `IsRecT`.
- [Depth zero representations and types](/learn/representations/#depth-zero-representations-and-types), for the law that sends depth zero to a tame class.
- [Automorphic representations](/learn/automorphic-forms/#automorphic-representations) and [regular algebraic and polarized representations](/learn/automorphic-forms/#regular-algebraic-cohomological-and-polarized-representations), for the input $\pi$ of `Row0b`.
- [Galois representations](/learn/galois-representations/#galois-representations), for the output $r$ of `Row0b`.
- [Local class field theory](/learn/class-field-theory/#local-class-field-theory), for the local Artin map in `IsRecT`.
- [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence), for the laws of `IsRecT`.
- [Galois theory](/learn/algebra/#galois-theory) and [quadratic symbols](/learn/class-field-theory/#quadratic-symbols), for the fields of `IsChiField`: fixed fields in $\mathbb{Q}(\zeta_M)$, cut out by Jacobi symbols.
- [Rings, ideals and modules](/learn/algebra/#rings-ideals-and-modules) and [Selmer and Tate-Shafarevich groups](/learn/galois-cohomology/#selmer-and-tate-shafarevich-groups), for the length of a module and the Tate-Shafarevich group in `VWin`.

## The new objects

- [EveryCharacter](/step/every-character-def/) says that $L(s, \chi) \neq 0$ for each Dirichlet character $\chi$ and each $s$ with $\operatorname{Re}(s) > \tfrac12$, except the pole of $\zeta$ at $s = 1$. It is the [Generalized Riemann Hypothesis](/learn/l-functions/#zeros-and-the-generalized-riemann-hypothesis) in the form "no zeros to the right of the line".
- [Row0b](/step/row0b-def/) attaches a Galois representation $r$ of $E$ to each regular algebraic automorphic representation $\pi$ of $\mathrm{GL}_a$ over a CM field that is a cuspidal automorphic representation and a polarized automorphic representation, with local conditions at each finite place. [Row](/step/row-def/) is `Row0b` with the local notion `IsRecT`.
- [IsRecT](/step/is-rect-def/) is a list of laws for a map from [irreducible representations](/learn/representations/#smooth-representations-of-p-adic-groups) of $\mathrm{GL}_n(E_w)$ to Weil-Deligne classes: the properties of a local Langlands map, without bijectivity and without $\varepsilon$-factors.
- [RecTExists](/step/rect-exists-def/) says that such a map exists at each finite place. The theorem [recTExists](/step/rect-exists/) proves it.
- [OpenLiteratureStatements](/step/open-literature-statements-def/) is a record of three fields: `Row` two times and `RecTExists`. The trunk fills all three with proofs.
- [VWin](/step/vwin-def/) bounds a weighted sum of lengths of Tate-Shafarevich groups over subfields of cyclotomic fields, for each primitive character.

## The path through the chapter

1. [rh_of_right](/step/rh-of-right/) gets the Riemann Hypothesis from $\zeta(s) \neq 0$ on $\operatorname{Re}(s) > \tfrac12$, by the functional equation, the Gamma function and the zeros of the cosine.
2. [rh_of_every](/step/rh-of-every/) applies EveryCharacter to the trivial character modulo $1$, whose L-function is $\zeta$.
3. [everyCharacter_of_row](/step/every-character-of-row/) builds the record and `VWin` from one proof of `Row`.
4. [every_character_of_green_v_win](/step/green-vwin/) proves the zero-free statement for primitive characters. [The literature layer](/proof/literature/) and the later chapters give its inputs.
5. [imprimitive](/step/imprimitive/) passes to all characters: the Euler factors of imprimitive characters do not vanish for $\operatorname{Re}(s) > 0$.
