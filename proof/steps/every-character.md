---
id: every-character
title: EveryCharacter from the Galois row
decl: UpperTheory.FinalTheorems.everyCharacter
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [every-character-of-row, galois-row-holds, every-character-def]
concepts: [DNKA4WBKDS, QW17YJ6ZCT]
---
## Statement

[EveryCharacter](/step/every-character-def/) is true.

## Proof

The step [EveryCharacter from Row0b](/step/every-character-of-row/) shows: if the statement `Row0b` holds with the local condition `IsRecT`, then `EveryCharacter` is true. The step [the Galois row holds](/step/galois-row-holds/) proves `Row0b` with `IsRecT`. Put the second into the first.

The Lean proof is `everyCharacter_of_row galoisLocalGlobalStrong_recParameter`.

## Notes

This is the place where the proof splits into its two large parts. The hypothesis `Row0b` says that certain automorphic representations have Galois representations with the right local properties. Its proof, `galoisLocalGlobalStrong_recParameter`, is [the Galois row](/proof/galois-row/) chapter. The rest of the argument, from `Row0b` to `EveryCharacter`, is in [everyCharacter_of_row](/step/every-character-of-row/) and the chapters after it.
