[The unitary hypotheses chapter](/proof/unitary-hypotheses/) is the last node of the trunk. It assumes about sixty statements named after published results on [unitary groups](/learn/groups/#unitary-groups), the two theta inputs, a covolume bound, a local Langlands type map and a "closed bound". From them it proves that the record `HypsAlt` of forty-six fields has an element. Most of the chapter is about definitions of the project. The standard mathematics enters through the names of the hypotheses.

## Read first

- [Limits and the O notation](/learn/analysis/#limits-and-the-o-notation), for "for all large" and "eventually", the shape of nearly every row.
- [Places and completions](/learn/number-fields/#places-and-completions), for the finite places $w$, the completions $E_w$ and the valuation ring $A$ of `RecTExists`. The ramification index $e_w$ of `LinkN` is in [the splitting of primes](/learn/number-fields/#the-splitting-of-primes).
- [Local class field theory](/learn/class-field-theory/#local-class-field-theory), for the law of `RecTExists` in dimension $1$.
- [Global class field theory](/learn/class-field-theory/#global-class-field-theory), for Artin reciprocity, the source of the service row in branch 1.
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields), for the class number formula among the fields of `HypsAlt`.
- [Unitary groups](/learn/groups/#unitary-groups), for the groups of the named hypotheses.
- [Strong approximation](/learn/groups/#strong-approximation), one of the hypotheses of branch 3.
- [Hermitian lattices and the mass formula](/learn/groups/#hermitian-lattices-and-the-mass-formula), for the genus mass conditions among the rows of `HypsAlt`.
- [Generic representations and local factors](/learn/representations/#generic-representations-and-local-factors), for Bernstein-Zelevinsky finiteness, a hypothesis of branch 2.
- [Representations of real groups](/learn/representations/#representations-of-real-groups), for the Harish-Chandra and Casselman-Wallach hypotheses.
- [Discrete series](/learn/representations/#discrete-series), for the formal degrees of branch 2.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms), for the rapid decay of cusp forms. The chapter unfolds `CuspRapidDecay` as its one example of a hypothesis.
- [The Weil group](/learn/galois-representations/#the-weil-group), [Weil-Deligne representations](/learn/galois-representations/#weil-deligne-representations) and [the local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence), for `RecTExists`.
- [The local theta correspondence](/learn/theta/#the-local-theta-correspondence), for Howe duality, behind `howeUnram_holds` and `howeDualityReal`.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) and [the doubling method](/learn/theta/#the-doubling-method), for named hypotheses of branches 1, 2 and 3.

## The new objects

[UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) and [ThetaLocalInputs](/step/theta-local-inputs-def/) are records of sixty and fifty-three named statements. The names refer to the literature (Clozel, Green, Siegel-Weil, Harish-Chandra, Casselman-Wallach, Bernstein-Zelevinsky). They are hypotheses, not proofs.

A family `FamP ε` is a structure with a threshold, an index set for each $x$, data $D(x, i)$ and many constants. [Closed](/step/closed-def/) $\mathcal{C}$ $P$ means: for all small $\varepsilon$, $P$ holds for each family of the class $\mathcal{C}$ whose constants are large enough.

[HypsAlt](/step/hyps-alt-def/) is the target: a family class, a selection of bundles, and many rows of bounds, most of the form `Closed`. Its last field asks `NL`, a closed bound `LinkN` on a weighted count of twisted places. [DefiniteSideCondition](/step/definite-side-condition-def/) is the predicate that its definite rows use. It is a long implication, and it does not mention a definite form.

[RecTExists](/step/rect-exists-def/) is the existence half of a local Langlands correspondence for $\mathrm{GL}_n$, with the laws of [IsRecT](/step/is-rect-def/). [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) is a closed bound `L3` on the class `FamHyp`.

`OpenParameterStatements`, `SurjectiveOntoX`, `LambdaLowerBound₂` and `AllRowsAlt` are the conclusions of the three branches. The chapter names them and their shapes, and does not unfold them.

## The path through the chapter

The whole chapter is the step [nonempty-hyps](/step/nonempty-hyps/).

1. The top node gets `FunctionalsSeparate` from Howe duality and the Siegel-Weil formula. [The Bessel seesaw chapter](/proof/bessel-seesaw/) proves it.
2. Branch 3 proves twelve open parameter statements. Its multiplicity row uses fourteen named hypotheses, among them the rapid decay of cusp forms, the Siegel-Weil formula, the doubling method and [strong approximation](/learn/groups/#strong-approximation).
3. Branch 2 proves `SurjectiveOntoX` from twelve hypotheses, one of them `RecTExists`, and `LambdaLowerBound₂` from seven, among them the doubling method and [formal degrees](/learn/representations/#discrete-series).
4. Branch 1 turns the closed bound into `NL`, builds one row for each field of `HypsAlt` (the service row from Artin reciprocity, an $L^p$ row from the Siegel-Weil formula), and joins the rows into an element.
