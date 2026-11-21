---
id: rect-exists-def
title: The statement RecTExists
decl: UpperTheory.Zero.LLC.RecTExists
chapter: galois-row
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [is-rect-def]
concepts: [9E45NBX1G0, J85FZEQG38, WXGM3VWEK6]
routine: [Formalism.ConjugateSelfDual.IsPlaceOver]
open: []
---
## Statement

`RecTExists` is the following proposition. Let $E$ be a number field and let $\Omega$ be an algebraic closure of $E$. Let $A$ be a valuation subring of $\Omega$. Let $w$ be a finite place of $E$ (a height one prime of the ring of integers $\mathcal{O}_E$). Let `h : IsPlaceOver A w`, that is: for each $x \in \mathcal{O}_E$, the valuation of $A$ at $x$ is $< 1$ if and only if $x \in w$. Then there is a map $rc : \mathrm{Irr}(E_w) \to \mathrm{WD}(h)$ with `IsRecT h rc`.

Here $\mathrm{Irr}(E_w)$ and $\mathrm{WD}(h)$ are the sets of [the local condition IsRecT](/step/is-rect-def/).

## What it means

The statement says that at every finite place of every number field, some map satisfies the twelve laws of `IsRecT`. It is the existence half of a local Langlands correspondence for $\mathrm{GL}_n$, in the weak form that `IsRecT` gives. It says nothing about uniqueness.

The field $E$ is any number field here. It does not need to be a CM field.

## Notes

`RecTExists` is a field of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). The theorem [local Langlands existence](/step/rect-exists/) proves it, so that field is filled by a theorem of the code and not by a hypothesis.

The statement matters for [the statement Row0b](/step/row0b-def/). There, the local clauses hold "for each $rc$ with `IsRecT`". `RecTExists` shows that such an $rc$ exists, so those clauses are not empty.
