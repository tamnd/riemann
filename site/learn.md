---
title: Learn
description: The mathematics that the proof uses, written as a short book in two parts. Part I has one chapter for each subject. Part II has a guide to each chapter of the proof.
lead: This section is a short book. Part I defines each concept that the proof uses and states each theorem that it needs, one subject at a time. Part II gives, for each chapter of the proof, the concepts that the chapter needs and where Part I defines them.
---
## Where to start

To read [the top of the proof](/proof/), you need only chapters 5 and 8 of Part I: complex analysis, and the zeta function and Dirichlet L-functions. With them you can check the four steps between `EveryCharacter` and the Riemann hypothesis yourself.

To read a chapter further down, open its guide in Part II. The guide lists what the chapter needs, with a link to the section of Part I for each concept. Read those sections first.

To learn the whole background, read Part I in order. Each chapter uses only the chapters above it. Most sections link to a node of [Math 2.0](https://math2.tamnd.com), where you find proofs and exercises.

The Lean code uses long names. The [glossary](/glossary/) says what each one means, and the [concept map](/learn/map/) lists each concept by chapter of the proof.

## For a reader who knows Lean

You can read the top of the proof with only Mathlib. Read `Statements.lean` and `Main.lean` first, then `Supplements/Kernels/MainTheorems.lean`. The [code page](/code/) shows the trunk. Each declaration has a page that states it in words.
