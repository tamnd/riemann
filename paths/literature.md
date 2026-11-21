[The literature layer](/proof/literature/) is one theorem: a record of three statements, together with VWin, gives EveryCharacter. Its proof is one call with seven inputs, filled by 195 small theorems named after published results, and only 13 of them read the record. You need to know what the named results say, not how they are proved.

## Read first

- [Tate's thesis and Hecke L-functions](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions). One sample is the Tate thesis for a Hecke character with an infinity type, with its epsilon factor.
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields), for partial zeta functions and a second sample, a Deligne-Ribet congruence over a totally real field.
- [Primes and the explicit formula](/learn/l-functions/#primes-and-the-explicit-formula) and [the logarithmic derivative](/learn/complex-analysis/#the-logarithmic-derivative). The third sample bounds $L'(1,\chi)/L(1,\chi)$ minus a sum over zeros. Linnik and Chebotarev results appear too.
- [Cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments), [depth zero representations and types](/learn/representations/#depth-zero-representations-and-types) and [generic representations and local factors](/learn/representations/#generic-representations-and-local-factors) cover the local statements on $\mathrm{GL}_n$.
- [The local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence): one field of the record.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms), [automorphic representations](/learn/automorphic-forms/#automorphic-representations) and [the discrete spectrum](/learn/automorphic-forms/#the-discrete-spectrum): rapid decay of cusp forms, the Flath tensor product theorem, multiplicity one and strong multiplicity one.
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series). The input EisBL (below) is about a Siegel Eisenstein series on a doubled group.
- [The Stone-von Neumann theorem](/learn/theta/#the-stone-von-neumann-theorem), [the Weil representation](/learn/theta/#the-weil-representation) and [the local theta correspondence](/learn/theta/#the-local-theta-correspondence), for Howe duality.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) and [the doubling method](/learn/theta/#the-doubling-method), the core of the theta branch.
- [Local fields](/learn/galois-cohomology/#local-fields) and [global fields](/learn/galois-cohomology/#global-fields), for local Tate duality, Poitou-Tate duality and Euler characteristics.
- [Period rings](/learn/galois-representations/#period-rings) and [prismatic Dieudonné theory](/learn/formal-groups/#prismatic-dieudonn-theory): Fontaine period rings and an integral comparison of Bhatt and Scholze.
- [Vanishing theorems and resolution](/learn/geometry/#vanishing-theorems-and-resolution) and [toroidal compactifications](/learn/geometry/#shimura-varieties-and-toroidal-compactifications). The volume branch uses resolution of singularities, two vanishing theorems and a toroidal compactification.
- [Hermitian line bundles](/learn/arakelov/#hermitian-line-bundles), [heights](/learn/arakelov/#heights), [arithmetic volume](/learn/arakelov/#arithmetic-volume-and-bigness) and [the Hodge bundle](/learn/arakelov/#the-hodge-bundle-and-zarhins-trick) are the deepest: the Poincaré-Lelong formula, heights of cycles, the arithmetic Hilbert-Samuel theorem and Zarhin's trick.

## The new objects

- [OpenLiteratureStatements](/step/open-literature-statements-def/) has three fields: [Row](/step/row-def/) twice and [RecTExists](/step/rect-exists-def/). The caller fills all three with proofs, so "open" is only a label.
- Nine bundles are records of earlier results, with no new mathematics. The largest are [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) (60 fields, built by [published_results_eigen](/step/published-results-eigen/)), [ThetaLocalInputs](/step/theta-local-inputs-def/) (53 fields, [published_results_first](/step/published-results-first/)) and a bundle of 28 Hodge bundle theorems ([published_results_arithmetic](/step/published-results-arithmetic/)).
- EisBL says that the Eisenstein series converges for large $\operatorname{Re}(s)$ and continues, locally after a factor $(s - s_0)^k$, as a holomorphic family of moderate growth. SiegelWeilStd says that at $s = \tfrac{m-n}{2}$ it equals $1$ or $2$ times the average of a theta sum, for a Hermitian and a skew-Hermitian space: a Siegel-Weil formula by its shape.
- [LocalMatching](/step/local-matching-def/) gives matched local data for each admissible triple. [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) relates the constants of theta integrals for spaces of sizes $b+2$ and $b$ through a value of a partial L-function.
- [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) gives, for each family in a [closed](/step/closed-def/) class, a constant $C_0$ past which a bound holds at all large points.

## The path through the chapter

1. [every_character_of_literature_of_vWin](/step/every-character-of-literature/) passes the two large bundles, the outputs of steps 2 to 4, and VWin to [one theorem](/step/theta-local-matching/).
2. [The theta branch](/step/theta-integrals-agree-and-local-matching-of-literature/) gets ThetaIntegralsAgree and LocalMatching from EisBL and SiegelWeilStd.
3. The volume branch gets CovolumeBoundOfX from 15 inputs in the geometry above.
4. [The local Langlands input](/step/local-langlands-gl-rect-exists-of-literature/) gets RecTExists from a theorem whose inputs include RecTExists itself, the local converse theorem and Bernstein-Zelevinsky finiteness.
