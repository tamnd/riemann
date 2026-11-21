---
id: base-change-n
title: Isobaric base change holds
decl: UpperTheory.BaseChangeIdentities.baseChangeN
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [base-change-isobaric-n-def]
concepts: [0R9R0Y1HDK, 68SJQEC11F]
routine: []
open: [UpperTheory.BaseChangeIdentities.baseChangeN_of, UpperTheory.HeckeLevelFrameExistence.candFin]
---
## Statement

[The statement BaseChangeIsobaricN](/step/base-change-isobaric-n-def/) holds. The theorem has no hypotheses.

In words: let $E$ be a CM field such that $E$ is unramified over its maximal real subfield $E^+$ at every finite place. Let $n \ge 1$, and let $\pi$ be an irreducible automorphic representation of the unitary group $U_n(\mathbb{A}_E)$. Then $\pi$ has an isobaric base change to $\mathrm{GL}_n$ over $E$, with pieces of sizes $N_1 + \dots + N_c = n$, in the sense of `IsBaseChangeN`.

## Proof

The proof applies `baseChangeN_of` to `candFin`.

1. `baseChangeN_of` has one hypothesis `hCF : CandFin` and proves `BaseChangeIsobaricN`. Its proof applies `PositivityTheory.Rg.BcB.Plug2.bci_of` to three theorems of the code: `frameEx_of_fin uSide hCF`, `frameBound` and `frameRead`.
2. `candFin` proves `CandFin`. Its proof applies `CF.candFin_of` to seven theorems of the code: `FinStrict_holds`, `StrictProd_holds`, `StrictJoin_holds`, `CandParts_holds`, `LevOpen_holds`, `IsoInv_holds` and `AdmProd_holds`.

`CandFin` is a finiteness statement on candidate data. For a CM field $E$ unramified over $E^+$, an automorphic representation $\pi$ of $U_n$ as above, a finite set $S$ of places and a "frame" `F₀` for $\pi$ and $S$, it says three things about the candidates `F₀.Cand`: for a set $T'$ of places that are not split over $E^+$ and lie outside the sets `F₀.d₀.S₀` and `F₀.d₀.Bad`, and for each $w \in T'$, the pairs $(\xi_a, \xi_b)$ with `JEig` (by its name, Jacquet eigenvalues) of the candidates lie in a finite set $Z$; at each place of `F₀.d₀.S₀`, the local products of the candidates fall into finitely many classes `Dl j` with the same subquotients and the same dimension of fixed vectors; and there is a uniform bound $m_0$ on a dimension of fixed vectors. This page does not unfold `Frame0`, `Cand` or the other names.

## Notes

`baseChangeN` is a theorem of the code, not a hypothesis. [VWin from Row0b](/step/vwin-of-row/) passes it as the argument `bc`. Three other theorems also use it, for example `UpperTheory.LiteratureTheorems.base_change_isobaric` and `UpperTheory.V.SmallClassNumbers.litN`.
