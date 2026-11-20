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

## The data

The numbers, the trunk and the branches above come from the records of `rh index` and `rh spine`. The summaries are in [records/](https://github.com/tamnd/riemann/tree/main/records) of the content repository, and the full records are the release [records-9110120](https://github.com/tamnd/riemann/releases/tag/records-9110120). Each declaration has a page. Search for its name above, or follow a link from the trunk.
