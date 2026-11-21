[The unitary hypotheses chapter](/proof/unitary-hypotheses/) is the last node of the trunk. It takes seven inputs: two records of named results on [unitary groups](/learn/groups/#unitary-groups), the two theta inputs, a covolume bound, a map of local Langlands type and a "closed bound". From them it proves that the record HypsAlt (defined below) has an element.

## Read first

- [Limits and the O notation](/learn/analysis/#limits-and-the-o-notation). Nearly every row says "for all large" or "eventually".
- [Places and completions](/learn/number-fields/#places-and-completions): the places $w$, the fields $E_w$ and the valuation ring $A$ in RecTExists.
- [The splitting of primes](/learn/number-fields/#the-splitting-of-primes) gives the ramification index $e_w$ that weights the count in LinkN.
- Branch 1 builds its service row from Artin reciprocity, in [global class field theory](/learn/class-field-theory/#global-class-field-theory).
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields). One field of HypsAlt is a class number formula.
- [Strong approximation](/learn/groups/#strong-approximation) is a hypothesis of branch 3.
- [Generic representations and local factors](/learn/representations/#generic-representations-and-local-factors) states Bernstein-Zelevinsky finiteness.
- [Representations of real groups](/learn/representations/#representations-of-real-groups) and [discrete series](/learn/representations/#discrete-series): Harish-Chandra, Casselman-Wallach and formal degrees.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms). The one hypothesis the chapter unfolds is the rapid decay of cusp forms.
- [The Weil group](/learn/galois-representations/#the-weil-group), [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations), [local class field theory](/learn/class-field-theory/#local-class-field-theory) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence) are the language of RecTExists.
- [The local theta correspondence](/learn/theta/#the-local-theta-correspondence) gives Howe duality, used in the proof of FunctionalsSeparate.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) enters all three branches, and [the doubling method](/learn/theta/#the-doubling-method) two of them.

## The new objects

- [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) and [ThetaLocalInputs](/step/theta-local-inputs-def/) are records of sixty and fifty-three statements named after the literature. They are hypotheses, not proofs.
- A family has a parameter $\varepsilon$, a threshold, an index set $I_x$ for each $x$, data $D(x, i)$ and many constants. [Closed](/step/closed-def/) $\mathcal{C}$ $P$ means: for all small $\varepsilon$, $P$ holds for each family in the class $\mathcal{C}$ whose constants are large enough.
- [HypsAlt](/step/hyps-alt-def/) has forty-six fields: a family class, a selection of bundles and many rows of bounds, most of them closed. Its last field asks NL, the bound LinkN in the closed sense, on a weighted count of twisted places.
- [DefiniteSideCondition](/step/definite-side-condition-def/) is the predicate of the definite rows. It is a long implication that ends in a row statement and never mentions a definite form.
- [RecTExists](/step/rect-exists-def/) says that at each finite place of each number field some map satisfies the laws of [IsRecT](/step/is-rect-def/). It is the existence half of a local Langlands correspondence for $\mathrm{GL}_n$.
- [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) is a closed bound on a normalised log covolume, for one fixed class of families.
- The branches end in OpenParameterStatements (twelve row statements), SurjectiveOntoX with LambdaLowerBound₂, and AllRowsAlt (one row per field of HypsAlt).

## The path through the chapter

The whole chapter is the step [nonempty-hyps](/step/nonempty-hyps/).

1. The top node gets FunctionalsSeparate from Howe duality and a Siegel-Weil hypothesis. [The Bessel seesaw chapter](/proof/bessel-seesaw/) covers that proof.
2. Branch 3 proves the twelve open parameter statements. Its multiplicity row alone uses fourteen named hypotheses.
3. Branch 2 proves SurjectiveOntoX from twelve hypotheses, RecTExists among them, and LambdaLowerBound₂ from seven, among them the doubling method and formal degrees.
4. Branch 1 turns the closed bound into NL, builds one row per field of HypsAlt, and joins the rows into an element. The service row comes from Artin reciprocity, an $L^p$ row from a Siegel-Weil hypothesis.
