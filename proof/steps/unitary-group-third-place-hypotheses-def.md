---
id: unitary-group-third-place-hypotheses-def
title: The record UnitaryGroupThirdPlaceHypotheses
decl: GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [0R9R0Y1HDK, SV5EEBF861, QW17YJ6ZCT, 6WB6TKE70H, H3Q2703KKV, 9E45NBX1G0]
routine: [GlobalTheory.automorphicFormsFiniteGL, GlobalTheory.weilRepresentationUnitaryPair]
open: [GlobalTheory.Mem.LiteralAutomorphy.NonEndoscopicHypothesesAlt, GlobalTheory.NLink.Hypotheses₂, GlobalTheory.NRows.GeometricGaloisRepCompatibility, GlobalTheory.Published.AutomorphicFormsFiniteGL, GlobalTheory.Published.BaseChangeDefiniteUnitaryGroup, GlobalTheory.Published.BernsteinUnitaryProductIrreducible, GlobalTheory.Published.BernsteinZelevinskyFiniteness, GlobalTheory.Published.BhattScholzeCrystallineLattices, GlobalTheory.Published.CMCurveGoodOutsidePrimeSt, GlobalTheory.Published.CasselmanWallach, GlobalTheory.Published.ChebotarevDegreeOne, GlobalTheory.Published.ClozelCohomological, GlobalTheory.Published.CuspRapidDecay, GlobalTheory.Published.CuspTraceClass, GlobalTheory.Published.DeRhamPotSemistable, GlobalTheory.Published.DepthZeroJacquetInjective, GlobalTheory.Published.DepthZeroSupport, GlobalTheory.Published.DiscreteSeriesClassification, GlobalTheory.Published.DiscreteSeriesCover, GlobalTheory.Published.DiscreteSeriesCoverExists, GlobalTheory.Published.DiscreteSeriesExists, GlobalTheory.Published.DixmierMalliavinFactorisation, GlobalTheory.Published.DoublingMethodLocalZetaIntegrals, GlobalTheory.Published.FlathFactorisation, GlobalTheory.Published.FormalDegreeCompactDual, GlobalTheory.Published.GenericUnitaryDualGL, GlobalTheory.Published.GeometricLemmaFiltration, GlobalTheory.Published.GlobalArtinReciprocity, GlobalTheory.Published.GreenCuspidal, GlobalTheory.Published.GreenRegularCharacters, GlobalTheory.Published.HarishChandraAnalyticity, GlobalTheory.Published.HarishChandraFinite, GlobalTheory.Published.HarishChandraModules, GlobalTheory.Published.HeckeLAdicCharacter, GlobalTheory.Published.HeckeLAdicCharacterAbove, GlobalTheory.Published.HeckeLAdicParameterAboveAlt, GlobalTheory.Published.JacquetShalika, GlobalTheory.Published.RayCharacterArtin, GlobalTheory.Published.RayClassFieldSt, GlobalTheory.Published.RegularAlgebraicPurity, GlobalTheory.Published.SchurOrthogonalitySquareIntegrable, GlobalTheory.Published.SiegelEisensteinContinuation, GlobalTheory.Published.SiegelWeilUnitaryConvergent, GlobalTheory.Published.SiegelWeilUnitarySchrodinger, GlobalTheory.Published.StandardCosocleGL, GlobalTheory.Published.StrongApproxSU, GlobalTheory.Published.UnlinkedProductIrreducible, GlobalTheory.Published.UnramifiedDoublingGL, GlobalTheory.Published.UnusedSlot72, GlobalTheory.Published.WeberRayFieldSt, GlobalTheory.Published.WeilRepresentationUnitaryPair, GlobalTheory.Published.WeilSiegelFormulaUnitary, GlobalTheory.Published.ZelevinskyPolynomialRing, GlobalTheory.TwSys.Cheb, HeckeCharacterZeroLocus.SiegelWeilU.SiegelWeilUnitaryConvergent, ReciprocityTheory.Gal.LocalEulerChar, ReciprocityTheory.Gal.LocalFiniteness, ReciprocityTheory.Gal.LocalTateDuality, UpperTheory.GalS.CarUAlt, UpperTheory.GalS.CuspUAlt]
---
## Statement

`UnitaryGroupThirdPlaceHypotheses` is a structure of the type `Prop` with sixty fields. Each field is a proof of one proposition, so a proof of the structure is the conjunction of sixty propositions. It has no parameters. Most field types are in the namespace `GlobalTheory.Published`, the named statements of published results.

This step groups the fields by theme. The themes come from the names of the fields and of their types, by their names. This step does not unfold the field types, except where it says so.

**Galois representations, $\ell$-adic and $p$-adic Hodge theory (16 fields).** These fields give statements on [[Galois representations|QW17YJ6ZCT]] attached to automorphic objects and on local Galois cohomology.

- `clozelCohomological : ClozelCohomological`
- `heckeLAdicCharacter : HeckeLAdicCharacter`
- `chebotarevDegreeOne : ChebotarevDegreeOne`
- `galoisRepOfPolarizedCuspidal : UpperTheory.GalS.CuspUAlt`
- `bhattScholzeCrystallineLattices : BhattScholzeCrystallineLattices`
- `heckeLAdicCharacterAbove : HeckeLAdicCharacterAbove`
- `localGlobalAboveL : UpperTheory.GalS.CarUAlt`
- `regularAlgebraicPurity : RegularAlgebraicPurity`
- `heckeLAdicParameterAbove : HeckeLAdicParameterAboveAlt`
- `deRhamPotSemistable : DeRhamPotSemistable`
- `cheb : GlobalTheory.TwSys.Cheb`
- `toHypothesesX : GlobalTheory.NRows.GeometricGaloisRepCompatibility`
- `nLink : GlobalTheory.NLink.Hypotheses₂`, a structure of seven named results (Fontaine $B_{\mathrm{cris}}$, global Artin reciprocity, Bloch and Kato, local Tate duality, local Euler characteristic, local finiteness, Bhatt and Scholze)
- `localFiniteness : ReciprocityTheory.Gal.LocalFiniteness`
- `localTateDuality : ReciprocityTheory.Gal.LocalTateDuality`
- `localEulerChar : ReciprocityTheory.Gal.LocalEulerChar`

**Class field theory and complex multiplication (5 fields).**

- `globalArtinReciprocity : GlobalArtinReciprocity`
- `rayClassFieldSt : RayClassFieldSt`
- `rayCharacterArtin : RayCharacterArtin`
- `cMCurveGoodOutsidePrimeSt : CMCurveGoodOutsidePrimeSt`
- `weberRayFieldSt : WeberRayFieldSt`

**Representations of $\mathrm{GL}_n$ over local and finite fields (14 fields).** These fields give statements of Green, Bernstein and Zelevinsky type on induced, cuspidal and depth zero representations.

- `greenCuspidal : GreenCuspidal`
- `greenRegularCharacters : GreenRegularCharacters`
- `bernsteinZelevinskyFiniteness : BernsteinZelevinskyFiniteness`
- `bernsteinUnitaryProductIrreducible : BernsteinUnitaryProductIrreducible`
- `geometricLemmaFiltration : GeometricLemmaFiltration`
- `unlinkedProductIrreducible : UnlinkedProductIrreducible`
- `depthZeroJacquetInjective : DepthZeroJacquetInjective`
- `depthZeroSupport' : DepthZeroSupport`
- `zelevinskyPolynomialRing : ZelevinskyPolynomialRing`
- `genericUnitaryDualGL : GenericUnitaryDualGL`
- `standardCosocleGL : StandardCosocleGL`
- `jacquetShalika : JacquetShalika`
- `formalDegreeCompactDual : FormalDegreeCompactDual`
- `schurOrthogonalitySquareIntegrable : SchurOrthogonalitySquareIntegrable`

**Real groups and Harish-Chandra theory (8 fields).**

- `harishChandraFinite : HarishChandraFinite`
- `discreteSeriesCover : DiscreteSeriesCover`
- `harishChandraModules : HarishChandraModules`
- `casselmanWallach : CasselmanWallach`
- `discreteSeriesExists : DiscreteSeriesExists`
- `discreteSeriesClassification : DiscreteSeriesClassification`
- `harishChandraAnalyticity : HarishChandraAnalyticity`
- `discreteSeriesCoverExists : DiscreteSeriesCoverExists`

**Automorphic forms and adelic groups (7 fields).** These fields give statements on [[cusp forms|SV5EEBF861]], factorisation and [[unitary groups|0R9R0Y1HDK]].

- `cuspRapidDecay : CuspRapidDecay`. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) unfolds it: for each datum and each admissible family of real embeddings, every automorphic, smooth, cuspidal function of uniform moderate growth on the group `GA D V` has rapid decay with respect to a height.
- `automorphicFormsFiniteGL : AutomorphicFormsFiniteGL`
- `cuspTraceClass : CuspTraceClass`
- `dixmierMalliavinFactorisation : DixmierMalliavinFactorisation`
- `flathFactorisation : FlathFactorisation`
- `strongApproxSU : StrongApproxSU`
- `baseChangeDefiniteUnitary : BaseChangeDefiniteUnitaryGroup`

**Theta correspondence, Siegel-Weil and the doubling method (9 fields).** These fields give statements on the [[Weil representation|H3Q2703KKV]], the [[theta correspondence|6WB6TKE70H]], Siegel Eisenstein series and local zeta integrals.

- `weilSiegelFormulaUnitary : WeilSiegelFormulaUnitary`
- `siegelWeilUnitaryConvergent : GlobalTheory.Published.SiegelWeilUnitaryConvergent`
- `siegelWeilUnitaryConvergent2 : HeckeCharacterZeroLocus.SiegelWeilU.SiegelWeilUnitaryConvergent`
- `doublingMethod : DoublingMethodLocalZetaIntegrals`
- `unramifiedDoublingGL : UnramifiedDoublingGL`
- `weilRepresentationUnitaryPair : WeilRepresentationUnitaryPair`
- `siegelWeilUnitarySchrodinger : SiegelWeilUnitarySchrodinger`
- `siegelEisensteinContinuation : SiegelEisensteinContinuation`
- `siegelEisensteinSimplePole : UnusedSlot72`

**One nested record (1 field).**

- `litN : GlobalTheory.Mem.LiteralAutomorphy.NonEndoscopicHypothesesAlt`. This is a structure of the type `Prop` with five fields: `loc` (local representation theory hypotheses, among them a [[local Langlands|9E45NBX1G0]] input `llc`), `aut` (global automorphic and Galois hypotheses), `coh` (`LitCoh`), `join` (`JoinOut`) and `fe` (`HeckeTateFunctionalEquation`).

The counts are $16 + 5 + 14 + 8 + 7 + 9 + 1 = 60$.

## Proof

There is no proof. This is a structure definition. It only lists the sixty field types.

## Notes

The field `siegelEisensteinSimplePole` has the type `UnusedSlot72`, which is defined as `True`. So this field asks for nothing, although its name refers to a simple pole of a Siegel Eisenstein series.

Two field types are proved theorems of the code. The theorem `GlobalTheory.automorphicFormsFiniteGL` proves `AutomorphicFormsFiniteGL`, and the theorem `GlobalTheory.weilRepresentationUnitaryPair` proves `WeilRepresentationUnitaryPair`. The structure still asks for them as fields. The dependency list shows these two theorems because their names are the same as two field names in the namespace `GlobalTheory`. The structure does not use them, so this step lists them as routine.

Two fields have types with the same last name `SiegelWeilUnitaryConvergent` in two namespaces: `GlobalTheory.Published` and `HeckeCharacterZeroLocus.SiegelWeilU`.

Some themes repeat in other records. [The record ThetaLocalInputs](/step/theta-local-inputs-def/) has fields with the same names and types, for example `cuspRapidDecay`, `doublingMethod` and `bernsteinZelevinskyFiniteness`.

The same file proves `UnitaryGroupThirdPlaceHypotheses.geometricLemma`, which gets `GeometricLemma` from the fields `bernsteinZelevinskyFiniteness` and `geometricLemmaFiltration`.

In the trunk, the structure is a hypothesis of [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/) (its input $P$). The theorem `UpperTheory.LiteratureTheorems.published_results_eigen` builds a value of it from `OpenLiteratureStatements`.
