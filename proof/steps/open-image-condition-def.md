---
id: open-image-condition-def
title: The structure OpenImageCondition
decl: UpperTheory.LiteratureTheorems.OpenImageCondition
chapter: vwin
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [QW17YJ6ZCT, 9AZ164C298, 9E45NBX1G0]
routine: []
open: [UpperTheory.V.Z.Win.RowT]
---
## Statement

`OpenImageCondition` is a structure of type `Prop`. It has one field.

- `galoisRepOfPolarizedPairLit : RowT`.

The proposition `RowT` is defined as `Row0b fun h rc => IsRecT h rc`. This is [the statement Row0b](/step/row0b-def/) with the local condition [IsRecT](/step/is-rect-def/). In words: for each CM field $E$, each prime $\ell$, each isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$ and each regular algebraic cuspidal representation $\pi$ of $\mathrm{GL}_a(\mathbb{A}_E)$ that is part of a polarized pair, there is a continuous semisimple Galois representation $r$ with the Hodge-Tate weights and the local-global compatibility of `PropsB`, for every local map $rc$ that satisfies `IsRecT`.

So a term of `OpenImageCondition` is the same thing as a proof of `RowT`. The constructor is `OpenImageCondition.mk : RowT → OpenImageCondition`.

## Notes

The name does not match the content. The field states the existence of Galois representations attached to polarized cuspidal representations, not an open image condition.

The file `links/literature.yaml` lists this structure as a named result, with the papers of Chenevier-Harris, Shin, Caraiani and Barnet-Lamb-Gee-Geraghty-Taylor. On the trunk it is not an assumption: [VWin from Row0b](/step/vwin-of-row/) builds it as `OpenImageCondition.mk h` from the row hypothesis $h$, and [the Galois row holds](/step/galois-row-holds/) proves that hypothesis.

In the branch of [the window bound VWin](/step/vwin-def/), many theorems take a term `O` of this structure, for example [the CM and abelian variety inputs](/step/cm-abelian-inputs-from-literature/). No theorem in this branch reads the field `galoisRepOfPolarizedPairLit`. The row reaches the proof through the separate argument `gal : RowT`.
