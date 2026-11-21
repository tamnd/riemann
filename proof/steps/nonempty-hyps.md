---
id: nonempty-hyps
title: HypsAlt is nonempty from the closed bound
decl: UpperTheory.Lit.nonempty_hyps_definite_side_of_closed_bound
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rect-exists-def]
concepts: [0R9R0Y1HDK, 6WB6TKE70H, H3Q2703KKV, 9E45NBX1G0, SV5EEBF861]
routine: [GlobalTheory.Mem.Top.Bl.SExt.none, GlobalTheory.Mem.Top.Bl.anyGeometry, GlobalTheory.Mem.Top.Bl.geoCl, GlobalTheory.Mem.Top.Bl.parametersOfDependence, GlobalTheory.HeightCounting.Up.extensionWithList, GlobalTheory.HeightCounting.Up.extensionWithOrigin, GlobalTheory.Mem.LiteralAutomorphy.extensionWithAtProperty]
open: [GlobalTheory.Fc.S0.UnitaryGroupThirdPlaceHypotheses, GlobalTheory.FunPr.ThetaLocalInputs, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching, GlobalTheory.CovTop.CovolumeBoundOfX, GlobalTheory.Fc.RL.LinkedAt, GlobalTheory.Fc.R1.SlotNormCondition, Formalism.MainNotions.Closed, GlobalTheory.NLink.BoundAtTwoThreeFamilyFonAlt, GlobalTheory.Fc.HypsAlt, GlobalTheory.Fc.S0.NL, GlobalTheory.Fc.DefiniteSideCondition, GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup.FunctionalsSeparate, UpperTheory.Lit.functionalsSeparate_of_howeUnram_of_siegelWeil, GlobalTheory.Hk3.howeUnram_holds, GlobalTheory.Fc.S0.RowRat, GlobalTheory.Mem.LiteralAutomorphy.rowRatW_of_rowTest, GlobalTheory.T.test_vector_assembly_holds, GlobalTheory.BigTop.Fun.ConstantFunctionFits, GlobalTheory.BigTop.Fun.Fld, GlobalTheory.BigTop.Fun.Close.fourier_coefficient_fit_of_join_alt, GlobalTheory.Fc.S0.ontoX_and_lamLow_of_unitaryGroupHypotheses', GlobalTheory.Mem.LiteralAutomorphy.evaluation_grid_of_join, GlobalTheory.WeilConv.twisted_weil_representation_convergence, GlobalTheory.T.twisted_local_factors_match, GlobalTheory.T.twisted_square_theta_integrals_eq, GlobalTheory.Fc.StageOne.rowFun_at_gridA_alt, GlobalTheory.Mem.Top.EvLgG, GlobalTheory.Mem.LiteralAutomorphy.GridA, GlobalTheory.Fc.S0.OpenParameterStatements, GlobalTheory.T.open0_of_unitary_group_hypotheses, GlobalTheory.Glob.open_and_linked_of_stronger_extension_alt, GlobalTheory.Glob.CovolRow.linked_bundles_l3_of_open_alt, GlobalTheory.Fc.S0.StageU.hypotheses_nonempty_of_unramified_exponents_alt]
---
## Statement

Assume seven inputs. The Lean local name of each input is in parentheses.

1. ($P$) A proof of `UnitaryGroupThirdPlaceHypotheses`, a structure of 60 propositions. Most have names of published results on [[unitary groups|0R9R0Y1HDK]], [[cusp forms|SV5EEBF861]] and representations. One field, `litN`, is a structure `NonEndoscopicHypothesesAlt` with the five fields `loc`, `aut`, `coh`, `join` and `fe`.
2. ($F$) A proof of `ThetaLocalInputs`, a structure of 53 named propositions.
3. ($h_A$) A proof of `ThetaIntegralsAgree`: matched global theta integrals are proportional with one nonzero constant, and the constants obey two recursion laws.
4. ($h_M$) A proof of `LocalMatching`: at each place, the two local [[Weil representations|H3Q2703KKV]] of a triple have matched quotients onto one irreducible representation.
5. ($h_X$) A proof of `CovolumeBoundOfX`, a "closed" bound `L3` for the families of the class `FamHyp`.
6. ($h_L$) A proof of [RecTExists](/step/rect-exists-def/), a local map of [[local Langlands|9E45NBX1G0]] type at each finite place of each number field.
7. ($h_N$) The closed bound. For each real $c_{\mathrm{Dep}}$:
   $$
   \mathrm{LinkedAt}\bigl(\mathrm{parametersOfDependence}(h_L, c_{\mathrm{Dep}}),\; (Q, L) \mapsto \mathrm{SlotNormCondition}\ Q\ L\ (\mathcal{C} \mapsto \mathrm{Closed}\ \mathcal{C}\ \mathrm{BoundAtTwoThreeFamilyFonAlt})\bigr).
   $$
   In words: along the parameters of dependence $c_{\mathrm{Dep}}$, for every admissible class $\mathcal{A}$ and selection, the derived class `D3 3 𝒜` satisfies `Closed` of the bound `BoundAtTwoThreeFamilyFonAlt`. That bound says that there are $C$ and $x_0$ such that `BoundAtTwoThree` holds at all large $x$ and all indices.

Then the type `HypsAlt S0.NL DefiniteSideCondition` is nonempty. Here `HypsAlt` is a record of 46 fields, `S0.NL 𝒞` is `Closed 𝒞 fun Fm _ => LinkN Fm`, and `DefiniteSideCondition` is a long implication that ends in the row statement `RowsU`. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) unfolds these objects.

## Proof

Let $C$ be the field `P.litN`. The proof makes nine facts and then calls one theorem.

1. **Functionals separate.** `functionalsSeparate_of_howeUnram_of_siegelWeil` takes $F$, the theorem `howeUnram_holds` and the field `P.siegelWeilUnitaryConvergent`. It gives `FunctionalsSeparate`. The theorem `howeUnram_holds` is proved in the code. It is not a hypothesis.
2. **The rational row.** `test_vector_assembly_holds` takes `F.siegelSetUnitary`, `F.howeDualityReal`, `P.greenCuspidal`, $F$, `C.join`, `C.fe`, $h_A$, $h_M$ and the fact of item 1. It gives a statement `RowTest` at each datum. `rowRatW_of_rowTest` turns this into `S0.RowRat`.
3. **Constant function fits.** `ontoX_and_lamLow_of_unitaryGroupHypotheses'` takes $P$ and gives `SurjectiveOntoX ∧ LambdaLowerBound₂`. The proof keeps only the second part. Then `fourier_coefficient_fit_of_join_alt` takes $F$, `C.join`, `C.fe`, $h_A$, $h_M$, the fact of item 1 and `LambdaLowerBound₂`. It gives `ConstantFunctionFits Fld`.
4. **The evaluation grid.** `evaluation_grid_of_join` takes `F.howeDualityReal`, $h_M$, $F$, `C.join`, `C.fe`, $h_A$, three "twisted square" facts and the fact of item 1. The three facts are `twisted_weil_representation_convergence` (from `F.siegelSetUnitary`), `twisted_local_factors_match` (from `F.howeDualityReal`, $F$, $h_A$, $h_M$) and `twisted_square_theta_integrals_eq` (from $F$, $h_A$, $h_M$). The result is a constant $C_{F1}$ such that `EvLgG (GridA CF)` holds for each $C_F \geq C_{F1}$.
5. **The functional row.** `rowFun_at_gridA_alt` takes the fields `discreteSeriesCover`, `harishChandraModules`, `cuspRapidDecay`, `casselmanWallach` and `rayClassFieldSt` of $P$, and the fact of item 3. It gives a constant $C_{F0}$. For each $C_F \geq C_{F0}$, the open parameter statements at a parameter set built with `GridA CF` imply the row `FunctionalCondition` there.
6. **The constant.** Let $c = \max(C_{F0}, C_{F1})$. Item 4 with $C_F = c$ gives `EvLgG (GridA c)`.
7. **Open statements.** `open0_of_unitary_group_hypotheses` takes $P$, $h_L$ and $c$. It gives `OpenParameterStatements` at `parametersOfDependence hL c`.
8. **Stronger parameters.** The parameters of dependence are built from the extension `extensionWithList hL c`. A stronger extension is `extensionWithAtProperty hL (extensionWithOrigin hL c) (GridA c)`. By definition, each element of the stronger extension is a tuple whose first part is an element of `extensionWithList hL c`, so a projection maps the stronger one to the weaker one. With this projection, `open_and_linked_of_stronger_extension_alt` moves the open statements of item 7 to the stronger parameters. The proof uses only the second half of that theorem.
9. **Two rows at the stronger parameters.** Item 5 at $C_F = c$, with a second projection and the result of item 8, gives `LinkedAt` of `FunctionalCondition` at the stronger parameters. `linked_bundles_l3_of_open_alt` takes the same five fields of $P$, the input $h_X$, $h_L$, a third projection and the result of item 8. It gives `LinkedAt` of `CovolumeBoundThirdPlaceSeries` at the stronger parameters.

Last, `hypotheses_nonempty_of_unramified_exponents_alt` takes $P$, the fact of item 2, $h_L$, $c$, `GridA c`, the fact of item 6, the closed bound $h_N$ at $c_{\mathrm{Dep}} = c$, and the two rows of item 9. Its conclusion is `Nonempty (HypsAlt S0.NL DefiniteSideCondition)`, the goal.

## Notes

Every input is used. The input $h_X$ is used once, in item 9. The theta inputs $h_A$ and $h_M$ are used in items 2, 3 and 4. The closed bound $h_N$ is used once, at the single value $c_{\mathrm{Dep}} = \max(C_{F0}, C_{F1})$, although the statement asks for it at every real $c_{\mathrm{Dep}}$.

The proof does no mathematics of its own. It passes the inputs, and fields of them, to other theorems. The only new terms are the constant $\max(C_{F0}, C_{F1})$ and three projections out of nested products.

Some parameter objects are almost empty. `SExt.none` is the constant family `PUnit`. `anyGeometry` is the predicate that is always `True`. The proof uses `geoCl anyGeometry` in every parameter set.

`twisted_weil_representation_convergence` takes $F$ as its second argument, but its proof (`fun hRT _ => weilConvergence_of_siegelSet hRT`) ignores it.

The phrases "definite side" and "closed bound" in the name refer to `DefiniteSideCondition` and to the hypothesis $h_N$. The caller [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) gets $h_N$ from `boundAtTwoThree_linked_of_recT` and the field `P.nLink`. The result goes to [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/).
