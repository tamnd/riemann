---
id: hyps-alt-def
title: The record HypsAlt
decl: GlobalTheory.Fc.HypsAlt
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [closed-def]
concepts: [WXGM3VWEK6]
routine: [GlobalTheory.Fc.familySelection, GlobalTheory.Fc.baseLevelChoiceOfRawSelection, GlobalTheory.Fc.selectionBundleOfRawSelection, GlobalTheory.Fc.spectralConditionOfRawSelection, GlobalTheory.Cp.d3_a]
open: [Formalism.IndefR.IndefiniteRealisationBoundedRows, Formalism.IndefR.Links.PrimRows3, Formalism.L2.DIV.TieTwRec, Formalism.L2.DIV.lPrj, Formalism.L2.G.Adm2InU.TwistedColumnBoundAtT, Formalism.L2.G.Adm2InU.TwistedPeriodAdmissible, Formalism.L2.G.Adm2InU.TwistedPointIntegral, Formalism.L2.G.Adm2InU.UsedTuplesBoundByConstant, Formalism.L2.GlobalTheoryTheory.AllJoin.AllJoinA, Formalism.L2.GlobalTheoryTheory.ConcN.CountAllRows, Formalism.L2.GlobalTheoryTheory.ConcN.epsC, Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.ClassItemsAt, Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.GenusMassAt, Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.VolSigIndep, Formalism.L2.Rows.RowsHoldLam3, Formalism.L2.SG.JoinSI.IndefiniteRealisationJoin, Formalism.L2.SG.Pf.WuDecayOfGap, Formalism.L2.SG.RowsDef.RowsFinDim, Formalism.L2.SG.RowsPos.RowMainEqP, Formalism.L2.SG.RowsPos.RowNGP, Formalism.L2.SG.RowsPos.TypeP, Formalism.L2.SG.ThmSOwn.LoopRowS, Formalism.L2.SG.ThmSOwn.PLevT', Formalism.L2.SG.ThmSOwn.TheoremSSelected, Formalism.MainNotions.ArithmeticCylinders.AllRows, Formalism.MainNotions.ArithmeticCylinders.LabelCountGoodInjective, Formalism.MainNotions.FamClass, Formalism.MainNotions.FamP, Formalism.MainNotions.LitThin, Formalism.MainNotions.MinkDiv, Formalism.MainNotions.PX.TFrame, Formalism.MainNotions.RT.MassRatioUnderVolume, Formalism.MainNotions.RealPlaceSecondLayerConditions, Formalism.MainNotions.S.CountE.CountAllPointsClass, Formalism.MainNotions.S.CountingConstants, Formalism.MainNotions.StandardLattice.ClassNumberFormula₂, Formalism.MainNotions.TuSize, Formalism.MainNotions.WeightDegreeSizes.FamilySecondComplementInputs, Formalism.MainNotions.WeightDegreeSizes.PeriodClassSumWeyl, Formalism.MainNotions.WeightDegreeSizes.familySizeBoundAtTypePrime, Formalism.MainNotions.WithSm, Formalism.MainNotions.WithTw, Formalism.MainNotions.product_first_zeroth_parts.Conclusion5Sharp, Formalism.MainNotions.product_first_zeroth_parts.Conclusion6, GlobalTheory.Cp.D3, GlobalTheory.Cp.DcPtG, GlobalTheory.Cp.DivRows3G, GlobalTheory.Cp.Duty, GlobalTheory.Cp.SelectionServed, GlobalTheory.Cp.WithChN, GlobalTheory.Fc.BundleCondition, GlobalTheory.Fc.R1.DefiniteSideType, GlobalTheory.Fc.R1.SelectionDefiniteRows, GlobalTheory.Fc.RawSel, UpperTheory.Top.ExS]
---
## Statement

`HypsAlt N DR` is a structure in `Type 1` with forty-six fields. It has two parameters. The first parameter $N$ is a property of family classes, of the type `FamClass → Prop`. The second parameter $DR$ is of the type `DefiniteSideType`, so $DR$ gives a relation on two reals for each bundle condition `BundleCondition D O c`. In the trunk, $N$ is `S0.NL` and $DR$ is [the predicate DefiniteSideCondition](/step/definite-side-condition-def/).

A value of the structure holds a family class $\mathcal{A}$, a selection $\sigma$ on it, some constants, and many rows (bounds and conditions) on them. Most rows have one of two forms.

- A row "per selection" is a statement for each $\varepsilon$, each family `Fm : FamP ε` with $\mathcal{A}(\mathrm{Fm})$ (the proof is $hc$), each real $x$ with $x_1 < x$ (the proof is $hx$, and $x_1$ is the field `Fm.x1`), each proof $h$ that the threshold of the selection is at most $x$, and each index `i : Fm.Ix x`.
- A row "closed on $\mathcal{C}$" is a statement `Closed 𝒞 P`, see [the predicate Closed](/step/closed-def/). It says that $P$ holds for each family in $\mathcal{C}$ whose constants are large, for all small $\varepsilon$.

Two family classes come from $\mathcal{A}$:

- $\mathcal{A}' = $ `WithTw (WithSm (WithChN 𝒜))`. This class adds to $\mathcal{A}$ the conditions `DGamDvdF`, `TameDistinctF`, `BoxesF`, `QDRowsF`, $C_{YL} \le 9$ (from `WithChN`), then `DGamSmooth` (from `WithSm`), then `TwGood` (from `WithTw`).
- $\mathcal{A}_3 = $ `D3 3 𝒜`, that is `Des (WithChN 𝒜) 3`. This class is $\mathcal{A}'$ with three more conditions: there is `CH` with `ChosenE Fm 3 CH`, then `TuSize`, then `DGamSize`. The theorem `d3_a` takes a proof of $\mathcal{A}_3(\mathrm{Fm})$ to the proof of $\mathcal{A}(\mathrm{Fm})$ inside it. It is a projection.

The selection gives these objects at a family, $x$ and $i$:

- `familySelection σ Fm hc` is the pair of the threshold `Fm.x1` and the map that takes $x, hx, h, i$ to the part `R` of the selected bundle condition.
- `spectralConditionOfRawSelection σ` gives the part `S`.
- `baseLevelChoiceOfRawSelection σ` gives the pair of the parts `P` and `pin`. The rows below use its first component `P`.
- `selectionBundleOfRawSelection σ` gives the part `B`.

The forty-six fields follow, in nine groups. The meaning of a row comes from the name of its predicate, by its name, except where this step unfolds the predicate.

**Data (5 fields).** These fields give the objects that the rows talk about.

- `𝒜 : FamClass`, the family class.
- `σ : RawSel BundleCondition 𝒜`. For each family in $\mathcal{A}$, each $x > x_1$ and each $i$, it gives a bundle condition `BundleCondition (Fm.D x i) (objAt Fm x hx i) Fm.Csz`. A bundle condition has the parts `R`, `S`, `P`, `pin`, `DH`, `C`, `B`.
- `cT : ℝ → ℝ → ℝ`, a constant that depends on $\varepsilon$ and $C_{YL}$.
- `c30 : List ℝ → CountingConstants`, a choice of counting constants $(C_{res}, n_0, A, C_b, C, c, c_b)$ for each list of reals.
- `cIc : ℝ`, one more constant.

**Facts on the constants (2 fields).**

- `hc30`: for each family, $0 \le C$ and $2(C_{YL} + 1) \le A$ for the constants `c30 Fm.cOut`.
- `hcI`: $0 < c_{Ic}$.

**Statements on the families of $\mathcal{A}$ (3 fields).**

- `hEx : MinkDiv → ExS 𝒜 cT`. If `MinkMult n (minkM n)` holds for each $n$, then for each $\lambda > 1$ and each host `G` with `HostExW λ G.req`, the class `WithTw (𝒜 ∧ G.cls λ)` has design choices with the constant 3 and `cT`.
- `hduty`: each family in $\mathcal{A}$ has `Duty Fm`. This is the conjunction of `PageFix`, `PageWin`, `SmallFirstModulusBelowScale`, `TameDistinctF`, `ChosenWall`, `TupUsedF` and `TwAllF`.
- `hMt`: for each family in $\mathcal{A}$ and each large $x$, each $i$, each tuple $\mu$ and each element $a$ of the ring of integers of the [[number field|WXGM3VWEK6]] `LL`, the image of $a$ under `embLL` maps the set `Mtilde μ` to itself.

**Rows per selection (8 fields).** For each family in $\mathcal{A}$, $x$, $h$ and $i$ as above:

- `hRB`: the part `B` gives `IndefiniteRealisationBoundedRows`.
- `hTw`: `TieTwRec (Fm.L x i)` holds for the field `S0.Tw` of the part `P`.
- `hPA`: `PrimRows3` holds for the fields `Q.Rl` and `Q.F` of `B`, and `TypesSep3` holds for `P.A3.fam3`.
- `hLamP`: `RowsHoldLam3 P`.
- `hDivG`: `DivRows3G P`.
- `hDcPtG`: `DcPtG P`.
- `hInstR`: `VolSigIndep (Fm.D x i)` (the volumes of the fundamental domains do not depend on the signature) and `ClassItemsAt (Fm.D x i) n`, where $n$ is the rank of the first space `sp.Y 0`. `ClassItemsAt` is the conjunction of `GenusMassAt`, `ClassFinAt` and `ClassMassAt`.
- `selJ`: `IndefiniteRealisationJoin` with the parts `R`, `S` and `B.Q`.

**Rows closed on $\mathcal{A}'$ (2 fields).**

- `hTu`: if $c_T(\varepsilon, C_{YL}) \le C_{Tu}$, then `TuSize Fm`. `TuSize` says that for large $x$, each `Fm.L x i` has `TuGe` and $\log T_u \le C_{Tu} \cdot m \cdot L$.
- `hn4`: for each $x > x_1$ and each $i$, `ClassNumberFormula₂ (Fm.D x i) (Fm.ex x hx i).lev`.

**Rows closed on $\mathcal{A}_3$ (14 fields).** In each of these rows, "for large $x$" means: there is $x_0$ such that the statement holds for each $x \ge x_0$ (with $x_1 < x$ where the row asks for it) and each $i$.

- `hTF`: `TFrame Fm (C_YL + 1) (1/4) 3 (1/2) C_Tu 3`.
- `sO`: for each proof of $\mathcal{A}_3(\mathrm{Fm})$, `TheoremSSelected Fm 3` for the selection with the threshold of `familySelection` and the map to `S.toSTies`.
- `h30`: `CountAllPointsClass PLevT' Fm n0 A C c cb` with the constants `c30 Fm.cOut`.
- `jOn`: for large $x$, the image of `V0 mu0` under `iota mu0` is the whole space ($\top$).
- `aPt0`: for large $x$, `Conclusion6 (Fm.D x i) u` for each $u$.
- `aPtTw`: for large $x$, `TwistedPointIntegral (Fm.D x i) (Fm.ex x hx i).tw`.
- `aPer0`: for large $x$, `PeriodClassSumWeyl (Fm.D x i)`.
- `aPerTw`: for large $x$, `TwistedPeriodAdmissible (Fm.D x i) (Fm.X x i) (Fm.ex x hx i).tw`.
- `aP10`: for large $x$ and each $u$, `Conclusion5Sharp (Fm.D x i) u` and `TwistedColumnBoundAtT (Fm.X x i) (Fm.ex x hx i).tw u`.
- `aAtG`: there is $C_1$ such that for large $x$, `UsedTuplesBoundByConstant (Fm.D x i) (Fm.L x i) (Fm.ex x hx i).errX C1`, and `familySizeBoundAtTypePrime Fm C1`.
- `aC2`: `FamilySecondComplementInputs Fm`.
- `irrC`: for large $x$, there is `A : AllRows (Fm.D x i)` with `LabelCountGoodInjective A`, `AllJoinA A` and `CountAllRows A (epsC cIc r f)`, where $r$ and $f$ are the fields `R.r` and `R.f` of `Fm.D x i`.
- `zL`: for each proof of $\mathcal{A}_3(\mathrm{Fm})$, there is $x_r$ such that for each $x \ge x_r$ with $x_1 < x$, each $i$ and each `k : Fin m`, the map `(lPrj (Fm.D x i) A P0 ψ0 Z k μ0).mulVec` is surjective. Here `A`, `P0`, `ψ0` and `μ0` are fields of `P` and of `P.A3`, and `Z` is `P.A3.fam3.toSub2 P.Zs`.
- `tie`: `RealPlaceSecondLayerConditions Fm`. This says that `RealTied` holds for large $x$ and that there is `ColsTiedSym C` with `ChiFin0`.

**Statements that do not depend on a family (8 fields).**

- `hLit : LitThin`. This is three existence statements of `ShortIntervalPrimes`, for the levels `adm6`, `adm7` and `adm11`, each for all data $D$.
- `hWu : WuDecayOfGap`. For each datum $D$ with `GapHyp` and each `HidaSetting` $X$, `WuDecay X` holds together with an integrability statement.
- `hRF : RowsFinDim`, a statement of finite dimension for operators on automorphic $L^2$ spaces.
- `sTy : TypeP`, `sNG : RowNGP`, `sM : RowMainEqP`. Each is a statement with uniform constants over all data of the type `D7`.
- `hU`: `MassRatioUnderVolume D` for each $D$. That is `VolTie D → VolumeRatio₂ D`.
- `hG`: `GenusMassAt D 2` for each $D$. That is: the mass of each positive definite hermitian space of rank 2 is `massI D 2`.

**Statements on the selection over $\mathcal{A}_3$ (3 fields).**

- `sLp : LoopRowS 3 𝒜₃ s`, where `s` takes a family to the threshold of `familySelection` and to the map to `S.toSTies`.
- `rRows : SelectionDefiniteRows DR 𝒜 σ`. This is a row closed on $\mathcal{A}_3$. For each proof $hc$, there is $C \ge 0$ such that, eventually along the selection, `IndefiniteRealisationConstantBounds` holds and $DR$ holds for the bundle condition of $\sigma$ and $C$.
- `hServ : SelectionServed 𝒜₃ (familySelection σ)`. This has two fields `twU` and `pdv`. Each is a row closed on $\mathcal{A}_3$.

**The class property (1 field).**

- `nRest : N 𝒜₃`.

The counts are $5 + 2 + 3 + 8 + 2 + 14 + 8 + 3 + 1 = 46$.

## Proof

There is no proof. This is a structure definition. It only lists the forty-six fields and their types.

## Notes

The threshold of `familySelection σ Fm hc` is `Fm.x1`. So in each row per selection, the hypothesis $h$ only says $x_1 \le x$, and $hx$ already gives $x_1 < x$. The hypothesis $h$ adds nothing.

The four selection maps `familySelection`, `spectralConditionOfRawSelection`, `baseLevelChoiceOfRawSelection` and `selectionBundleOfRawSelection` only read parts of the bundle condition that $\sigma$ gives. The theorem `d3_a` is a projection. This step explains them in the Statement and lists them as routine.

Each of the parameters is used by one field only: $N$ by `nRest` and $DR$ by `rRows`. In the trunk, [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/) builds a value of `HypsAlt S0.NL DefiniteSideCondition`. There `nRest` is a statement `Closed 𝒜₃ LinkN`.
