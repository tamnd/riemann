---
id: covolume-bound-of-x-def
title: The covolume bound CovolumeBoundOfX
decl: GlobalTheory.CovTop.CovolumeBoundOfX
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [closed-def]
concepts: []
routine: []
open: [GlobalTheory.BigTop.FamHyp, GlobalTheory.CovTop.EventuallyAtAllPoints]
---
## Statement

`CovolumeBoundOfX` is a definition of a proposition with no parameters. It says:

$$
\mathrm{Closed}\ \mathrm{FamHyp}\ \bigl( (F, C_H) \mapsto \exists C_0 \ge 0,\ \mathrm{EventuallyAtAllPoints}\ F\ (p \mapsto \forall C \ge C_0,\ (p.S\ \mathrm{false}).\mathrm{L3}\ (p.N\ C\ C_H)) \bigr).
$$

The symbols are these.

- `Closed 𝒞 P` is [the predicate Closed](/step/closed-def/): $P$ holds for all small $\varepsilon$, for each family in the class $\mathcal{C}$ whose constants are large enough.
- `FamHyp` is one fixed family class. A family $F$ is in `FamHyp` when a list of conditions holds: `PageFix`, `PageWin`, `SmallFirstModulusBelowScale`, `TameDistinctF`, `ChosenWall`, an eventual divisibility of `DGam` by a value of `minkM`, `BoxesF`, `QDRowsF`, the bound $F.\mathrm{CYL} \le 9$, `DGamSmooth`, `TwGood`, $\exists C_H$ with `ChosenE F 3 CH`, `TuSize` and `DGamSize`. This step does not unfold these conditions.
- A point $p$ of $F$ at $(x, i)$, with $x > x_1$ and $i \in I_x$, is an element of the type `Pt F x hx i`, which is `PtAt (F.ex x hx i) F.Csz`. It is a structure with a row side `P`, two natural numbers `Del` and `h0`, column data, a core `T`, real data `R` over a number field and many compatibility fields.
- `EventuallyAtAllPoints F Q` says: there is $x_0$ such that for each $x > x_1$ with $x_0 \le x$, each $i \in I_x$ and each point $p$ at $(x, i)$ with `RowsTAlt p`, the statement $Q(x, i, p)$ holds. Here `RowsTAlt p` is `p.PointConditions' ∧ RecTied D L`.
- `p.S false` is the data `(p.R.toCx3 p.F).data p.F.cr false` of the point (one of its two sides, chosen by a Boolean). `p.N C CH` is the numerical record `p.R.num p.F C CH`.
- `L3 N` for side data $S$ says: for each index $j$, $\mathrm{lcv}(S.\mathrm{XW}_j, S.M_j) / S.D \le N.\mathrm{l3}_j$. By its name, `lcv` is a log covolume, so this is an upper bound for a normalised log covolume of the lattice $M_j$.

So `CovolumeBoundOfX` says: for small $\varepsilon$ and for families in `FamHyp` with large constants, there is $C_0 \ge 0$ such that, at all large $x$ and at all points that satisfy `RowsTAlt`, the bound `L3` holds for the numbers `p.N C CH` with each $C \ge C_0$.

## Proof

There is no proof. This is a definition. It applies `Closed` to the class `FamHyp` and to a predicate built with `EventuallyAtAllPoints`.

## Notes

In the trunk, `CovolumeBoundOfX` is a hypothesis. [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/) takes it as its input $h_X$ and passes it to `linked_bundles_l3_of_open_alt`. The caller `every_character_of_theta_integrals_local_matching` takes it as a hypothesis too. The theorem `SelfIntersectionVolumeEstimates.topCovolSlim2_use_alt_alt` proves `CovolumeBoundOfX` from fifteen named hypotheses, among them resolution and principalisation in characteristic zero, Poincaré-Lelong, Fargues exactness, Zarhin, `ArDegree` and `PublishedHodgeBundleTheorems`.

The predicate `L3` also appears as the field `covol` of `CovolumeOntoIsometryConditions`, one of the side conditions of `DefiniteSideCondition`.
