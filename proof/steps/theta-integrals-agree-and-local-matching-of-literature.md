---
id: theta-integrals-agree-and-local-matching-of-literature
title: Theta integrals agree and local matching
decl: UpperTheory.LiteratureTheorems.theta_integrals_agree_and_local_matching_of_literature
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [open-literature-statements-def, local-matching-def, theta-integrals-agree-def]
concepts: [6WB6TKE70H, H3Q2703KKV, 3NZBZXYWAJ, 0R9R0Y1HDK]
routine: []
open: [PositivityTheory.ThKR.theoremK_head2, UpperTheory.LiteratureTheorems.eis_bl_of_literature, UpperTheory.LiteratureTheorems.siegel_weil_std_of_literature]
---
## Statement

Let $O$ be a proof of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). Then the conjunction `ThetaIntegralsAgree ∧ LocalMatching` holds. Both names are in the namespace `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels`.

- `LocalMatching` says: for each admissible triple of geometric data, characters and test data for a unitary dual pair over a CM extension, there are matched local data. At each place, the two local [[Weil representations|H3Q2703KKV]] have matched quotient maps onto one common irreducible representation of the [[unitary group|0R9R0Y1HDK]] $U_W$.
- `ThetaIntegralsAgree` says three things for each admissible triple. The global theta integrals decay. When the test data match, the two theta integrals into $U_W$ are proportional with one nonzero constant, and a coinvariance law holds. Two recursion laws relate the constants for the signatures $(a, b+2)$ and $(a, b)$, or $(b+2, a')$ and $(b, a')$, by an explicit factor with a partial Hecke $L$-value.

The [theta matching chapter](/proof/theta-matching/) unfolds both statements.

## Proof

The proof is one application of the theorem `PositivityTheory.ThKR.theoremK_head2`. That theorem has the type `EisBL → SiegelWeilStd → ThetaIntegralsAgree ∧ LocalMatching`, with `EisBL` and `SiegelWeilStd` in the namespace `GlobalTheory.ThK.Dbl`. The proof gives it two inputs.

1. `eis_bl_of_literature O`, of type `EisBL`. Its proof is the term `PositivityTheory.RgEis.Hd.eisBL`. By its name, `EisBL` is a statement on [[Eisenstein series|3NZBZXYWAJ]].
2. `siegel_weil_std_of_literature O`, of type `SiegelWeilStd`. Its proof is the term `PositivityTheory.SiegelWeilFormula.Fin.siegelWeilStd`. By its name, `SiegelWeilStd` is a standard form of the Siegel-Weil formula.

The theorem `theoremK_head2` is `theoremK_head2_of_mod modSt2`. Its proof fills the extra hypothesis `ModSt` of `theoremK_head2_of_mod` with the theorem `PositivityTheory.Sph.modSt2`. Then `theoremK_head2_of_mod` applies `Tr.closeSph` to a list of theorems of the code and to the two inputs. This page does not follow that tree.

**Use of $O$.** Both inputs take $O$ as an argument and ignore it. They prove their statements with terms of other files. So the proof reads no field of $O$. This theorem is not one of the 13 theorems of the file that read $O$.

**Named result.** This theorem is itself a named result of `links/literature.yaml`. The entry says the result is "not identified": it is a statement of the project on theta integrals for unitary dual pairs with Siegel-Weil inputs, not a published theorem. The entry cites Kudla and Rallis (a regularized Siegel-Weil formula, 1994) and Ichino (a regularized Siegel-Weil formula for unitary groups, 2004) only as the probable sources of the two inputs. The entry marks it as `reads_hypothesis: true`, but its note says that $O$ is used in name only. The Lean text agrees with the note: no field of $O$ is read.

## Notes

The name suggests that the result comes from the literature with the open statements $O$. It does not. The argument $O$ has no effect, and the proof is a theorem of the code from two other theorems of the code.

The only caller is [EveryCharacter from the literature and VWin](/step/every-character-of-literature/). There the two parts of the conjunction are the inputs $h_A$ and $h_M$ of [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/).
