---
id: open-literature-statements-def
title: OpenLiteratureStatements
decl: UpperTheory.LiteratureTheorems.OpenLiteratureStatements
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rect-exists-def, row0b-def, is-rect-def]
concepts: [QW17YJ6ZCT, 9E45NBX1G0, WXGM3VWEK6]
routine: []
open: [UpperTheory.One.M.Row]
---
## Statement

`OpenLiteratureStatements` is a structure of type `Prop`. A proof of it is a list of proofs of three propositions. Its fields are these.

1. `caraianiLocalGlobalDual`, of type `UpperTheory.One.M.Row`.
2. `localLanglandsExists`, of type `UpperTheory.Zero.LLC.RecTExists`.
3. `galoisRepOfPolarizedPairLit`, of type `UpperTheory.One.M.Row`.

Let $\mathsf{Row}$ be the proposition `UpperTheory.One.M.Row` and let $\mathsf{Rec}$ be the proposition `RecTExists`. Then, as a proposition,

$$
\mathsf{OpenLiteratureStatements} \;\Longleftrightarrow\; \mathsf{Row} \wedge \mathsf{Rec} \wedge \mathsf{Row} \;\Longleftrightarrow\; \mathsf{Row} \wedge \mathsf{Rec}.
$$

## What it means

**The type `Row`.** By definition, `UpperTheory.One.M.Row` is [the statement Row0b](/step/row0b-def/) with [the local condition IsRecT](/step/is-rect-def/) put in. In short, `Row0b` says: for each CM field $E$, each prime $\ell$, each field isomorphism $\iota : \overline{\mathbb{Q}}_\ell \cong \mathbb{C}$, each $a \geq 1$, each regular algebraic cuspidal object $\pi$ of the type `CuspSub E a` and each Hecke character $\chi$ of the maximal real subfield of $E$ such that $(\pi, \chi)$ is a polarized pair, there is a continuous semisimple [[Galois representation|QW17YJ6ZCT]] $r : \operatorname{Gal}(\Omega/E) \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ with Hodge and Tate data. The representation $r$ matches $\pi$ at the places away from $\ell$, through each local map that satisfies `IsRecT`. The [Galois row chapter](/proof/galois-row/) unfolds this statement.

**The type `RecTExists`.** See [the statement RecTExists](/step/rect-exists-def/). It says: for each [[number field|WXGM3VWEK6]] $E$, each algebraic closure $\Omega$ of $E$, each valuation subring $A$ of $\Omega$ and each finite place $w$ of $E$ below $A$, there is a map `rc` with `IsRecT`. The map `rc` sends irreducible representations of $\mathrm{GL}_n(E_w)$, for all $n$, to Weil and Deligne parameters. The predicate `IsRecT` asks for a local Artin map and a list of laws: dimension, the case $n = 1$, segments, cuspidal to irreducible, twists, central characters, duals and more. This is an existence statement in the style of the [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$.

**The field names.** The names point to the literature. `caraianiLocalGlobalDual` suggests a local-global compatibility result. `localLanglandsExists` suggests the existence of the local Langlands correspondence. `galoisRepOfPolarizedPairLit` suggests the construction of Galois representations for polarized pairs. The Lean types do not follow these differences. Two of the three fields have the same type `Row`.

**How the trunk builds it.** The only place in the code that builds a value of this structure is the theorem `UpperTheory.FinalTheorems.everyCharacter_of_row`. It writes the value as $\langle h, \texttt{recTExists}, h \rangle$. Here $h$ is the hypothesis `Row0b` of that theorem, and `recTExists` is a theorem of the code that proves `RecTExists`. So both `Row` fields get the same proof $h$, and the field `localLanglandsExists` gets a proved theorem. See [EveryCharacter from Row0b](/step/every-character-of-row/).

**Where it is read.** Every theorem of the form `NAME_of_literature (O : OpenLiteratureStatements) : P` in the same file takes a value $O$ of this structure. Only three of them read a field of $O$ directly. `local_langlands_recT_exists_of_literature` returns `O.localLanglandsExists`. `pair_u_of_literature` reads the field `galoisRepOfPolarizedPairLit`. It also cites `local_langlands_recT_exists_of_literature O`, so it uses `localLanglandsExists` too. `carU_local_global_of_literature` reads `caraianiLocalGlobalDual`. The bundle `literature_automorphy` also reads `O.caraianiLocalGlobalDual` directly in its field `car`. See [EveryCharacter from the literature and VWin](/step/every-character-of-literature/).

## Notes

The word "open" in the name is a label. In the final proof, no field of this structure is left as an assumption. The field `localLanglandsExists` is a proved theorem, and the two `Row` fields come from the hypothesis `Row0b`, which the trunk proves in another chapter.

The structure has the same content as the conjunction of `Row` and `RecTExists`. The second `Row` field adds nothing as a proposition.

The Lean source sets the options `genInjectivity false` and `genSizeOfSpec false` for this structure. These options only stop Lean from making some helper lemmas. They do not change the statement.

The [literature chapter](/proof/literature/) gives the counts of the theorems that use this structure.
