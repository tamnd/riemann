---
id: every-character-of-row
title: EveryCharacter from Row0b
decl: UpperTheory.FinalTheorems.everyCharacter_of_row
chapter: trunk
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [every-character-of-literature, vwin-of-row, open-literature-statements-def, row0b-def, is-rect-def, rect-exists, every-character-def]
concepts: [DNKA4WBKDS, QW17YJ6ZCT, 9E45NBX1G0]
---
## Statement

Suppose that `Row0b` holds with the local condition `IsRecT`. That is, in short: for each CM field $E$, each prime $\ell$, each regular algebraic cuspidal representation $\pi$ of $\mathrm{GL}_a$ over $E$ with a polarization, there is a Galois representation $r : G_E \to \mathrm{GL}_a(\overline{\mathbb{Q}}_\ell)$ that matches $\pi$ at each place, and at each place the local match satisfies `IsRecT`. Then [EveryCharacter](/step/every-character-def/) is true.

The step [the statement Row0b](/step/row0b-def/) gives `Row0b` in full, and [the predicate IsRecT](/step/is-rect-def/) gives the local condition.

## Proof

Let $h$ be the proof of `Row0b`. The proof makes two things from $h$.

1. A value $O$ of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). The structure has three fields. The proof fills them with $h$, with the theorem [recTExists](/step/rect-exists/), and with $h$ again. In Lean it is the term `⟨h, recTExists, h⟩`.
2. A proof of the statement `VWin`, from the step [VWin from Row0b](/step/vwin-of-row/), applied to $h$.

Then the step [EveryCharacter from the literature and VWin](/step/every-character-of-literature/) takes $O$ and `VWin` and gives `EveryCharacter`.

## Notes

The name `OpenLiteratureStatements` suggests a list of open statements from the literature that the proof assumes. Here the proof builds the structure from $h$ and from a theorem of the code. So the structure adds no hypothesis. The [literature chapter](/proof/literature/) explains this, and it explains that most theorems with names that end in `_of_literature` do not read the structure at all.

The hypothesis $h$ is used three times: twice in $O$ and once for `VWin`.
