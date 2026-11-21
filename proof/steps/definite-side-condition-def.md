---
id: definite-side-condition-def
title: The definite side condition
decl: GlobalTheory.Fc.DefiniteSideCondition
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: []
routine: [Formalism.BasicNotions.lam0, GlobalTheory.Fc.qRealOfBundle, Formalism.IndefR.faceT, Formalism.L2.DIV.letterOf, Formalism.L2.DIV.ofRecord]
open: [GlobalTheory.Fc.R1.DefiniteSideType, Formalism.IndefR.Links.CovolumeOntoIsometryConditions, Formalism.IndefR.Links.PassIn3, Formalism.IndefR.hkCan, Formalism.L2.DIV.Cons.nuOf, Formalism.L2.DIV.DivTied3, Formalism.L2.DIV.DivisionCompatibilityDataThreeSided, Formalism.L2.DIV.RecNums.ofNum, Formalism.L2.RowDataTransport.RowsU, Formalism.L2.RowDataTransport.packageOfPrimitiveLinks, GlobalTheory.Fc.zsc]
---
## Statement

`DefiniteSideCondition` is a definition of the type `DefiniteSideType`. A `DefiniteSideType` is a predicate on six arguments: a datum $D$ of the type `D7`, an object $O$ of the type `Obj D`, a real $c$, a bundle $b$ of the type `BundleCondition D O c`, and two reals $C$ and $C_H$.

A bundle $b$ is a structure with seven fields: a reciprocity record `R`, spectral ties `S`, a row side family `P`, a fact `pin` that the row side is determined, a pair of natural numbers `DH` $= (\Delta, h_0)$ with $D.s.\mathrm{Del} = \Delta$ and $O.L.\mathrm{etaSz} = m \cdot h_0$ (where $m = D.R.m$), square integrable columns `C`, and a real bundle `B`. The field `B` contains an indefinite realisation `B.Q`. Write $Q$ for `B.Q` (the abbreviation `qRealOfBundle b`) and $Z_c$ for the scale function `zsc b.P Δ h0 c`. The function `zsc` is the scale of `ZscOfNum3` with its `l6m` part shifted by $-c$ times its `l6u` part and its `l6u` part set to $0$.

Then `DefiniteSideCondition D O c b C CH` is this statement. Take the following data.

1. `hok1`: a proof of `b.P.A3.fam3.Ok3 1`.
2. `hsep`: a proof of `b.P.A3.fam3.TypesSep3`.
3. `hP`: a proof of `CovolumeOntoIsometryConditions Q.Rl F Q.sEE (hkCan b.P.A3) C CH`, where $F$ is the face `faceT b.P b.C.toS.c.face b.C.toS.Sp Zc`. This structure extends `PrimRows3` and has the fields `w1`, `covol` (the bound `L3`), `onto` (the bound `ON`), `lamLow` (the bound `L6`), `seeIso`, `miStar` and `fun0`, all at the numbers `Q.Rl.num F C CH`.
4. `hI`: a proof of `PassIn3 Q.Rl F C CH`. It says that there are a finite type $S$, finite dimensional representations $\tau_s$ of the group $G$ over the field `D.what₂.LL`, and a real $\bar n$ with the pass condition `CxPassIn3`.
5. Five reals $\lambda_0$, $C_0$, $c_e$, $S_w$, $C_1$.
6. `H`: for each word $u$, the numerical facts `NumFacts` of the record `ofRecord D O.L Δ h0` at the letter of $u$, with the constants $O.L.N_c$, $\lambda_0$, $C_0$, $c_e$, $c$, $S_w$, $C_1$.
7. `NuC`: for each member $w$ of the column face, a submodule over the ring of integers of `D.what₂.LL` of the space $\mathrm{LL}^{a(w)}$. Here $a(w)$ is read off the face at the subspace `Zs` of the package `Pk = packageOfPrimitiveLinks Q hok1 hsep C CH hP hI`.
8. `I`: division compatibility data `DivisionCompatibilityDataThreeSided` for the row side of $b$, the subspace `Pk.Zs`, the two indefinite data of the package (`Pk.core.base` and `Pk.core.cols`), the base level `O.ex.p0` and the column face at `Pk.Zs`.

If `DivTied3 ... Pk.core.cols.col NuC I` holds (the data $I$ are tied to the package and to `NuC`), and if $I$ is equal to the division data `b.P.I` of the bundle (as a heterogeneous equality `HEq I b.P.I`), then for each word $u$ the row statement

$$
\mathrm{RowsU}\ (b.C.\mathrm{toS}.c)\ \mathrm{Pk}\ R_u\ (I.\mathrm{wU}\ u)\ (\mathrm{nuOf}\ O.L\ u\ (I.\mathrm{eNu}\ u))
$$

holds. Here $R_u$ is the record of numbers `RecNums.ofNum (ofRecord D O.L Δ h0) (Equiv.refl _) (letterOf u) T O.L.Nc λ0 C0 ce c Sw C1 (H u)`, with $T = (D.\mathrm{mem}\ u).A.T$, and `nuOf O.L u e` is the pullback of the lattice `O.L.NuLat u` along the linear equivalence $e$.

`DivTied3` is a structure of ten fields: equal ranks, and the ties `grp`, `tup`, `mu1`, `sharp`, `base`, `mt`, `th`, `num` and `cols`. `RowsU` says that there are a column chain, a chain tie, a matrix family $X_0$ at the infinite places of `LL` with a Hermitian identity, height numbers, an operator norm bound and column bound data with logarithmic bounds, and that `Nu` is a lattice. This step does not unfold these objects further.

## Proof

There is no proof. This is a definition. It is one long universal implication. The abbreviations `qRealOfBundle`, `faceT`, `ofRecord` and `letterOf` only read fields of $b$ and $D$ or pack them into a tuple.

## Notes

The bound variable `lam0` of the definition has the same name as the global definition `Formalism.BasicNotions.lam0`. The dependency list contains the global name, but the definition does not use it. The name `lam0` in the text is the bound real $\lambda_0$.

The package `packageOfPrimitiveLinks Q hok1 hsep C CH hP hI` is written out in full ten times in the Lean text. Each time it is the same term.

The word "definite" is in the name only. The text does not mention a definite form. The predicate enters the record `HypsAlt` through the field `rRows : SelectionDefiniteRows DR 𝒜 σ`, with `DR = DefiniteSideCondition` in the trunk. See [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/).
