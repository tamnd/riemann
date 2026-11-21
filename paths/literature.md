[The literature layer](/proof/literature/) is one theorem: a record `O` of three statements, together with `VWin`, gives EveryCharacter. Its proof is one call with seven inputs, filled by 195 small theorems named after published results, and only 13 of them read `O`. To read the chapter you need to know what the named results say, not how they are proved.

## Read first

- [Tate's thesis and Hecke L-functions](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions), for the sample `HeckeTateFunctionalEquation`: Tate thesis for a Hecke character with an infinity type, and its epsilon factor.
- [Zeta functions of number fields](/learn/l-functions/#zeta-functions-of-number-fields), for the partial zeta function and the sample `DeligneRibet`, a Deligne-Ribet congruence between values of partial zeta functions of a totally real field.
- [Primes and the explicit formula](/learn/l-functions/#primes-and-the-explicit-formula) and [the logarithmic derivative](/learn/complex-analysis/#the-logarithmic-derivative), for `Linnik`, `ChebotarevDegreeOne` and the sample `LogDerOne`, a bound on $L'(1,\chi)/L(1,\chi)$.
- [Global class field theory](/learn/class-field-theory/#global-class-field-theory), for Artin reciprocity, the Hilbert class field and the ray class field.
- [Cuspidal representations and segments](/learn/representations/#cuspidal-representations-and-segments), for `SegmentRepresentation` and `LanglandsExhaustionGL`.
- [Depth zero representations and types](/learn/representations/#depth-zero-representations-and-types), for `DepthZeroSupport`, `MoyPrasadJacquetIso` and `GreenRegularCharacters`.
- [Generic representations and local factors](/learn/representations/#generic-representations-and-local-factors), for `LocalConverseGL` and `BernsteinZelevinskyFiniteness`, two inputs of `llOf_alt`.
- [Representations of real groups](/learn/representations/#representations-of-real-groups), for Harish-Chandra modules and Casselman-Wallach (`HarishChandraFinite`, `CasselmanWallach`).
- [Discrete series](/learn/representations/#discrete-series), for `DiscreteSeriesExists`, `DiscreteSeriesClassification` and `HolomorphicDiscreteSeries`.
- [The local Langlands correspondence](/learn/galois-representations/#the-local-langlands-correspondence), for the field `localLanglandsExists` of `O`.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms), [automorphic representations](/learn/automorphic-forms/#automorphic-representations) and [the discrete spectrum](/learn/automorphic-forms/#the-discrete-spectrum), for rapid decay of cusp forms, the Flath tensor product theorem, multiplicity one and strong multiplicity one (`JacquetShalika`).
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series), for `EisBL`, which is about a Siegel Eisenstein series on a doubled group.
- [The Stone-von Neumann theorem](/learn/theta/#the-stone-von-neumann-theorem), [the Weil representation](/learn/theta/#the-weil-representation) and [the local theta correspondence](/learn/theta/#the-local-theta-correspondence), for `StoneVonNeumann`, `WeilRepresentationExists` and Howe duality.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) and [the doubling method](/learn/theta/#the-doubling-method), for `SiegelWeilStd` and `DoublingMethod`.
- [Local fields](/learn/galois-cohomology/#local-fields) and [global fields](/learn/galois-cohomology/#global-fields), for local Tate duality, Poitou-Tate duality and the Euler characteristic formulas in the bundle `LitCoh`.
- [Period rings](/learn/galois-representations/#period-rings) and [prismatic Dieudonné theory](/learn/formal-groups/#prismatic-dieudonn-theory), for `FontaineBcris` (Fontaine period rings) and `BhattScholzeIntegral`.
- [Vanishing theorems and resolution](/learn/geometry/#vanishing-theorems-and-resolution) and [toroidal compactifications](/learn/geometry/#shimura-varieties-and-toroidal-compactifications), for Kawamata-Viehweg vanishing, Nadel vanishing, resolution of singularities and the toroidal compactification in the volume branch.
- [Hermitian line bundles](/learn/arakelov/#hermitian-line-bundles), [heights](/learn/arakelov/#heights), [arithmetic volume](/learn/arakelov/#arithmetic-volume-and-bigness) and [the Hodge bundle](/learn/arakelov/#the-hodge-bundle-and-zarhins-trick), for the Poincaré-Lelong formula, the height of a cycle, the arithmetic Hilbert-Samuel theorem and Zarhin's trick.

## The new objects

- [OpenLiteratureStatements](/step/open-literature-statements-def/) has three fields: [Row](/step/row-def/) twice and [RecTExists](/step/rect-exists-def/). The caller fills all three with proofs, so "open" is only a label.
- The nine bundles are records of earlier results, with no new mathematics. The largest are [UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/) (60 fields, built by [published_results_eigen](/step/published-results-eigen/)), [ThetaLocalInputs](/step/theta-local-inputs-def/) (53 fields, [published_results_first](/step/published-results-first/)) and `PublishedHodgeBundleTheorems` (28 fields, [published_results_arithmetic](/step/published-results-arithmetic/)).
- `EisBL` says that the Eisenstein series converges for large $\operatorname{Re}(s)$ and continues with moderate growth. `SiegelWeilStd` says that at $s = \tfrac{m-n}{2}$ it equals $1$ or $2$ times the average of a theta function: a Siegel-Weil formula for a Hermitian and a skew-Hermitian space.
- [LocalMatching](/step/local-matching-def/) gives matched local data for each triple. [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) relates the constants of theta integrals for spaces of sizes $b+2$ and $b$ by a value of a partial L-function.
- [CovolumeBoundOfX](/step/covolume-bound-of-x-def/) gives, for each family in a [closed](/step/closed-def/) class, a constant $C_0$ past which a bound holds at all large points.

## The path through the chapter

1. [every_character_of_literature_of_vWin](/step/every-character-of-literature/) calls [one theorem](/step/theta-local-matching/) with the two large bundles, the three outputs below, `RecTExists` and `VWin`.
2. [The theta branch](/step/theta-integrals-agree-and-local-matching-of-literature/) gets `ThetaIntegralsAgree` and `LocalMatching` from `EisBL` and `SiegelWeilStd`.
3. The volume branch `topCovolSlim2_use_alt_alt` gets `CovolumeBoundOfX` from 15 inputs, among them resolution of singularities, the Poincaré-Lelong formula, Zarhin's trick and toroidal compactifications.
4. [The local Langlands input](/step/local-langlands-gl-rect-exists-of-literature/) gets `RecTExists` by `llOf_alt`, which takes `RecTExists` itself together with [the local converse theorem and Bernstein-Zelevinsky finiteness](/learn/representations/#generic-representations-and-local-factors).
