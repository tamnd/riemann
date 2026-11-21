---
id: row-def
title: The statement Row
decl: UpperTheory.One.M.Row
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [row0b-def, is-rect-def]
concepts: [QW17YJ6ZCT, 9E45NBX1G0, WXGM3VWEK6]
routine: []
open: []
---
## Statement

`Row` is a definition of a proposition with no parameters. By definition,

$$
\mathsf{Row} \;:=\; \mathsf{Row0b}\bigl(\lambda\, h\, rc.\ \mathsf{IsRecT}\ h\ rc\bigr).
$$

Here [the statement Row0b](/step/row0b-def/) takes a parameter `Rc` of the type `RecNotion`. For a finite place $w$ of a number field $E$, a valuation subring $A$ of an algebraic closure $\Omega$ of $E$ with a proof $h$ that $A$ lies over $w$, and a map $rc$ from irreducible representations of $\mathrm{GL}_n(E_w)$ to Weil-Deligne classes, `Rc h rc` is a proposition. `Row` puts in the parameter `Rc` the predicate [IsRecT](/step/is-rect-def/). So `Rc h rc` becomes `IsRecT h rc`: there is a local Artin map $a$ at $w$ such that $rc$ obeys the list of laws `LawsT` for $a$.

In words, `Row` says the following. For each CM field $E$, each prime $\ell$, each isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, each $a \geq 1$, each regular algebraic irreducible space $\pi$ of cusp forms on $\mathrm{GL}_a(\mathbb{A}_E)$ and each Hecke character $\chi$ of the maximal real subfield $E^+$ such that $(\pi, \chi)$ is a polarized pair, there is a continuous semisimple [[Galois representation|QW17YJ6ZCT]] $r : \mathrm{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$, an integer weight $wt$ and Hodge-Tate multisets $HT$ such that `PropsB` holds. The local clauses of `PropsB` hold for each map $rc$ with `IsRecT h rc`. The step [Row0b](/step/row0b-def/) lists the six fields of `PropsB`.

## Proof

There is no proof. `Row` is a definition, a short name for one instance of `Row0b`. Its value is `Row0b` applied to the lambda term `fun h rc => IsRecT h rc`. This lambda term is the eta expansion of `IsRecT` with its implicit arguments, so it is only bookkeeping.

## Notes

The same proposition has another name in the code. `UpperTheory.V.Z.Win.RowT` is defined as `Row0b fun h rc => IsRecT h rc`, the same term. So `Row` and `RowT` are equal by definition, and Lean accepts a proof of one as a proof of the other. In the same way, the glossary lists `UpperTheory.Gal.Int.recT` as a name for the notion `IsRecT` that `Row0b` uses on the trunk.

Two of the three fields of [OpenLiteratureStatements](/step/open-literature-statements-def/), `caraianiLocalGlobalDual` and `galoisRepOfPolarizedPairLit`, have the type `Row`. On the trunk both get the same proof, the hypothesis `Row0b` of `everyCharacter_of_row`. See [EveryCharacter from Row0b](/step/every-character-of-row/).
