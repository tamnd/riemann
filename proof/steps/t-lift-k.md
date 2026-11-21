---
id: t-lift-k
title: The theta lift statement holds
decl: UpperTheory.TP.K.tLiftK
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [tlift-k-def]
concepts: [6WB6TKE70H, 0R9R0Y1HDK]
routine: []
open: [UpperTheory.TP.tLift_holds_k]
---
## Statement

[The theta lift statement TLiftK](/step/tlift-k-def/) is true.

In words: let $E$ be a CM field with a base $B$ that satisfies `GoodK`, and let $X$ be a definite hermitian space of rank $n \geq 1$ with Gram matrix $1$. Then there is $d_0$ such that for each $d \geq d_0$, each definite skew-hermitian space $W$ of rank $d$ with Gram matrix $\delta \cdot 1$, each pair of Hecke characters $\chi_X, \chi_W$ with the stated conditions, and each automorphic representation $U$ of the unitary group in $n$ variables with dominant weights $\lambda_w$ that satisfy $d + m_{W,w} \leq 2 \lambda_{w,k}$, there is a space $U'$ of functions on the unitary group in $d$ variables with `IsLift`.

## Proof

The proof is the theorem `UpperTheory.TP.tLift_holds_k`. Its type is `TLift_k`. The definition `TLift_k` (in the module `GalTPDefs`) has the same text as `TLiftK`. So Lean accepts `tLift_holds_k` as a proof of `TLiftK` after it unfolds the two definitions. This is bookkeeping.

The proof of `tLift_holds_k` is `tLift_of_tools_k tools_holds_k (hgtEx_of_k stab2Cpt_k)`. The [Galois row chapter](/proof/galois-row/) gives the sizes of these parts. By its name, `tools_holds_k` contains a Siegel-Weil statement (`siegelWeilStd_k`).

## Notes

The code has the two definitions `TLiftK` and `TLift_k` with the same body. A third definition `TLift` in `SchurStep` also has the same body, except that its first hypothesis is `B.IsGood (cj E)` in place of `W.GoodK (cj E) B`.

The short namespace `UpperTheory.TP.K` does not say the role of the theorem. The theorem only renames `tLift_holds_k`.

The user of this step is [the Galois row holds](/step/galois-row-holds/).
