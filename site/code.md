---
title: The Lean code
description: The layout of the Lean source in riemann-lean and the files at the top of the proof.
lead: The source is in tamnd/riemann-lean, at the commit that this site pins. It is the release of 2026-11-20 with no change, and its hashes match the archive of the author.
---
## The release

| Item | Value |
|---|---|
| Lean | `leanprover/lean4:v4.33.1` |
| Mathlib | commit `0df444a3` |
| Files | 175,190 entries in the archive |
| Archive | `lean.tar.gz`, SHA-256 `9631b4f0…49c7fc` |
| Repository | [tamnd/riemann-lean](https://github.com/tamnd/riemann-lean) |

The command `rh fetch -compare` downloads the 14 parts from the site of the author, checks each hash, and compares each file with the manifest of riemann-lean.

## The files at the top

| File | What it has |
|---|---|
| [Main.lean](lean:Main.lean) | the five main theorems |
| [Statements.lean](lean:Statements.lean) | the four statements, with only Mathlib |
| [Supplements/Kernels/MainTheorems.lean](lean:Supplements/Kernels/MainTheorems.lean) | `allChi`, `rhOfAll`, `critAll`, `claimAll` |
| [Formalism/GammaFactorNonvanishing/RhOfRight.lean](lean:Formalism/GammaFactorNonvanishing/RhOfRight.lean) | the Riemann Hypothesis from no zeros to the right of the line |
| [Formalism/GammaFactorNonvanishing/CritLine.lean](lean:Formalism/GammaFactorNonvanishing/CritLine.lean) | the critical line for primitive characters, and `rh_of_every` |
| [CharacterBoxes/MainConclusion.lean](lean:Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean) | `everyCharacter`, the start of the large part |

## The libraries

The source directory `src` has these top folders: `Development`, `Formalism`, `GroundTheory`, `Lemmata`, `PositivityTheory`, `ReciprocityTheory`, `CompanionTheory`, `Supplements` and `BuildAid`. Milestone M1 adds a page for each library and module on the path of the proof, with the graph of imports and uses.
