---
id: theta-local-inputs-def
title: The record ThetaLocalInputs
decl: GlobalTheory.FunPr.ThetaLocalInputs
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [6WB6TKE70H, H3Q2703KKV, 0R9R0Y1HDK, SV5EEBF861]
routine: [GlobalTheory.kudlaSplittingSplitUnitary, GlobalTheory.weilRepresentationUnitaryPair]
open: [GlobalTheory.Mem.An.LogDerOne, GlobalTheory.Published.BernsteinUnitaryProductIrreducible, GlobalTheory.Published.BernsteinZelevinskyFiniteness, GlobalTheory.Published.BorelCasselman, GlobalTheory.Published.CasselmanWallach, GlobalTheory.Published.ComplexMultiplicationJSt, GlobalTheory.Published.CuspBounded, GlobalTheory.Published.CuspDecayBound, GlobalTheory.Published.CuspDecaySobolev, GlobalTheory.Published.CuspRapidDecay, GlobalTheory.Published.CuspTraceClass, GlobalTheory.Published.CuspidalMirabolic, GlobalTheory.Published.DiscreteSeriesCover, GlobalTheory.Published.DiscreteSeriesCoverExists, GlobalTheory.Published.DiscreteSeriesExists, GlobalTheory.Published.DiscreteSeriesHermitianUnique, GlobalTheory.Published.DiscreteSeriesLowestKType, GlobalTheory.Published.DiscreteSeriesUpqExists, GlobalTheory.Published.DixmierMalliavinFactorisation, GlobalTheory.Published.DoublingMethodLocalZetaIntegrals, GlobalTheory.Published.FlathFactorisation, GlobalTheory.Published.FormalDegreeCompactDual, GlobalTheory.Published.GKGlobalisation, GlobalTheory.Published.GLHoweDuality, GlobalTheory.Published.GreenSeriesSt, GlobalTheory.Published.HarishChandraFinite, GlobalTheory.Published.HarishChandraModules, GlobalTheory.Published.HeckeLEntireAndNonzeroAtOne, GlobalTheory.Published.HeckeLPartialContinuation, GlobalTheory.Published.HermitianHassePrinciple, GlobalTheory.Published.HermitianLocalGlobal, GlobalTheory.Published.HolomorphicDiscreteSeries, GlobalTheory.Published.HoweDualityReal, GlobalTheory.Published.IdealInvariantsOneOrbitSt, GlobalTheory.Published.KFiniteVectorsUnitary, GlobalTheory.Published.KudlaSplittingSplitUnitary, GlobalTheory.Published.Linnik, GlobalTheory.Published.MetaplecticRepresentation, GlobalTheory.Published.QuadraticClassFieldTheory, GlobalTheory.Published.RadfordShufflePolynomial, GlobalTheory.Published.RallisInnerProductConvergent, GlobalTheory.Published.RealMetaplecticRepresentation, GlobalTheory.Published.SchurOrthogonalitySquareIntegrable, GlobalTheory.Published.SiegelSetUnitary, GlobalTheory.Published.StoneVonNeumann, GlobalTheory.Published.StrongApproxSU, GlobalTheory.Published.ThetaRationalInvariance, GlobalTheory.Published.UnramifiedDoublingGL, GlobalTheory.Published.WeilRepresentationExists, GlobalTheory.Published.WeilRepresentationUnitaryPair, GlobalTheory.Published.WeilSiegelFormulaUnitary, GlobalTheory.Published.WeylBranching, GlobalTheory.Published.ZelevinskyPolynomialRing]
---
## Statement

`ThetaLocalInputs` is a structure of the type `Prop` with fifty-three fields. Each field is a proof of one proposition, so a proof of the structure is the conjunction of fifty-three propositions. It has no parameters. All field types except one are in the namespace `GlobalTheory.Published`, the named statements of published results. The exception is `logDerOne`.

This step groups the fields by theme. The themes come from the names of the fields and of their types, by their names. This step does not unfold the field types, except `LogDerOne`.

**Theta correspondence and Weil representations (14 fields).** These fields give statements on the [[Weil representation|H3Q2703KKV]], the [[theta correspondence|6WB6TKE70H]] for [[unitary groups|0R9R0Y1HDK]], the Siegel-Weil formula and the doubling method.

- `weilSiegelFormulaUnitary : WeilSiegelFormulaUnitary`
- `rallisInnerProductConvergent : RallisInnerProductConvergent`
- `doublingMethod : DoublingMethodLocalZetaIntegrals`
- `unramifiedDoublingGL : UnramifiedDoublingGL`
- `realMetaplecticRepresentation : RealMetaplecticRepresentation`
- `gLHoweDuality : GLHoweDuality`
- `kudlaSplittingSplitUnitary : KudlaSplittingSplitUnitary`
- `metaplecticRepresentation : MetaplecticRepresentation`
- `stoneVonNeumann : StoneVonNeumann`
- `thetaRationalInvariance : ThetaRationalInvariance`
- `weilRepresentationUnitaryPair : WeilRepresentationUnitaryPair`
- `howeDualityReal : HoweDualityReal`
- `siegelSetUnitary : SiegelSetUnitary`
- `weilRepresentationExists : WeilRepresentationExists`

**Representations of $\mathrm{GL}_n$ and of finite groups (11 fields).**

- `greenSeriesSt : GreenSeriesSt`
- `cuspidalMirabolic : CuspidalMirabolic`
- `weylBranching : WeylBranching`
- `bernsteinUnitaryProductIrreducible : BernsteinUnitaryProductIrreducible`
- `zelevinskyPolynomialRing : ZelevinskyPolynomialRing`
- `bernsteinZelevinskyFiniteness : BernsteinZelevinskyFiniteness`
- `borelCasselman : BorelCasselman`
- `radfordShufflePolynomial : RadfordShufflePolynomial`
- `idealInvariantsOneOrbitSt : IdealInvariantsOneOrbitSt`
- `formalDegreeCompactDual : FormalDegreeCompactDual`
- `schurOrthogonalitySquareIntegrable : SchurOrthogonalitySquareIntegrable`

**Real groups, discrete series and Harish-Chandra modules (12 fields).**

- `kFiniteVectorsUnitary : KFiniteVectorsUnitary`
- `discreteSeriesLowestKType : DiscreteSeriesLowestKType`
- `holomorphicDiscreteSeries : HolomorphicDiscreteSeries`
- `gKGlobalisation : GKGlobalisation`
- `harishChandraModules : HarishChandraModules`
- `discreteSeriesCover : DiscreteSeriesCover`
- `discreteSeriesUpqExists : DiscreteSeriesUpqExists`
- `discreteSeriesHermitianUnique : DiscreteSeriesHermitianUnique`
- `discreteSeriesExists : DiscreteSeriesExists`
- `harishChandraFinite : HarishChandraFinite`
- `discreteSeriesCoverExists : DiscreteSeriesCoverExists`
- `casselmanWallach : CasselmanWallach`

**Automorphic forms (8 fields).** These fields give statements on [[cusp forms|SV5EEBF861]] (boundedness, decay, trace class) and on factorisation and strong approximation.

- `cuspTraceClass : CuspTraceClass`
- `flathFactorisation : FlathFactorisation`
- `dixmierMalliavinFactorisation : DixmierMalliavinFactorisation`
- `cuspBounded : CuspBounded`
- `strongApproxSU : StrongApproxSU`
- `cuspDecayBound : CuspDecayBound`
- `cuspRapidDecay : CuspRapidDecay`
- `cuspDecaySobolev : CuspDecaySobolev`

**Number theory, $L$-functions and Hermitian forms (8 fields).**

- `linnik : Linnik`
- `complexMultiplicationJSt : ComplexMultiplicationJSt`
- `heckeLPartialContinuation : HeckeLPartialContinuation`
- `logDerOne : GlobalTheory.Mem.An.LogDerOne`
- `heckeLEntireAndNonzeroAtOne : HeckeLEntireAndNonzeroAtOne`
- `quadraticClassFieldTheory : QuadraticClassFieldTheory`
- `hermitianLocalGlobal : HermitianLocalGlobal`
- `hermitianHassePrinciple : HermitianHassePrinciple`

The counts are $14 + 11 + 12 + 8 + 8 = 53$.

The one field type outside `GlobalTheory.Published` is `LogDerOne`. It says: there is a real $C$ such that for each integer $q > 1$ and each primitive Dirichlet character $\chi$ modulo $q$,

$$
\Bigl| \frac{L'(1, \chi)}{L(1, \chi)} - Z(\chi) \Bigr| \le C \log(3q),
$$

where $Z(\chi) = \sum_\rho m_\rho/(1-\rho)$. The sum is a finite sum (`finsum`) over the zeros $\rho$ of $L(s, \chi)$ with $0 < \mathrm{Re}\,\rho < 1$ and $|\mathrm{Im}\,\rho| \le 1$, and $m_\rho$ is the order of the zero at $\rho$.

## Proof

There is no proof. This is a structure definition. It only lists the fifty-three field types.

## Notes

The type `KudlaSplittingSplitUnitary` of the field `kudlaSplittingSplitUnitary` is proved in the code by the theorem `GlobalTheory.kudlaSplittingSplitUnitary`, and the type `WeilRepresentationUnitaryPair` is proved by the theorem `GlobalTheory.weilRepresentationUnitaryPair`. The structure still asks for both as fields. The dependency list shows these two theorems because their names are the same as two field names in the namespace `GlobalTheory`. The structure does not use them, so this step lists them as routine.

Many fields have the same names and types as fields of [the record UnitaryGroupThirdPlaceHypotheses](/step/unitary-group-third-place-hypotheses-def/), for example `cuspRapidDecay`, `doublingMethod`, `strongApproxSU` and `casselmanWallach`. The trunk takes both records as hypotheses, so it asks for these statements twice.

In the trunk, `ThetaLocalInputs` is the input $F$ of [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/). That proof reads the fields `siegelSetUnitary` and `howeDualityReal` and passes $F$ as a whole to several theorems. The theorem `UpperTheory.LiteratureTheorems.published_results_first` builds a value of the structure from `OpenLiteratureStatements`, with one theorem of the form `..._of_literature O` for each field. That theorem does not read its argument `O`. The code also proves `LogDerOne` alone, in the theorem `PositivityTheory.Prw.logDerOne_holds`.
